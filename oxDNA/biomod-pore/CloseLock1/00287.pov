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
	<24.005568, 34.859951, 35.084538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.246479, 35.157513, 35.200375>,  <24.391026, 35.336048, 35.269878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.246479, 35.157513, 35.200375>,  <24.005568, 34.859951, 35.084538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.246479, 35.157513, 35.200375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497728, -0.633560, 0.592342,
		0.624121, -0.212616, -0.751843,
		0.602279, 0.743906, 0.289593,
		24.427162, 35.380684, 35.287254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.748308, 34.690720, 34.996952>,  <24.005568, 34.859951, 35.084538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.748308, 34.690720, 34.996952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.698473, 34.922337, 35.319241>,  <24.668571, 35.061306, 35.512611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.698473, 34.922337, 35.319241>,  <24.748308, 34.690720, 34.996952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.698473, 34.922337, 35.319241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395431, -0.715793, 0.575565,
		0.910007, 0.390315, -0.139795,
		-0.124587, 0.579047, 0.805719,
		24.661097, 35.096050, 35.560955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.405392, 34.817879, 35.322132>,  <24.748308, 34.690720, 34.996952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.405392, 34.817879, 35.322132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104437, 34.821804, 35.585590>,  <24.923864, 34.824162, 35.743668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104437, 34.821804, 35.585590>,  <25.405392, 34.817879, 35.322132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.104437, 34.821804, 35.585590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409613, -0.776093, 0.479475,
		0.515880, 0.630542, 0.579901,
		-0.752386, 0.009816, 0.658649,
		24.878721, 34.824749, 35.783184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.688385, 34.564865, 36.072258>,  <25.405392, 34.817879, 35.322132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.688385, 34.564865, 36.072258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.289129, 34.542545, 36.082108>,  <25.049576, 34.529152, 36.088017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.289129, 34.542545, 36.082108>,  <25.688385, 34.564865, 36.072258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.289129, 34.542545, 36.082108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058386, -0.757315, 0.650434,
		-0.017643, 0.650661, 0.759163,
		-0.998138, -0.055801, 0.024628,
		24.989687, 34.525806, 36.089497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.471001, 34.353558, 36.783508>,  <25.688385, 34.564865, 36.072258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.471001, 34.353558, 36.783508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.168856, 34.282471, 36.531208>,  <24.987568, 34.239819, 36.379829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.168856, 34.282471, 36.531208>,  <25.471001, 34.353558, 36.783508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.168856, 34.282471, 36.531208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232558, -0.827172, 0.511569,
		-0.612654, 0.533106, 0.583484,
		-0.755362, -0.177721, -0.630748,
		24.942247, 34.229153, 36.341984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.127209, 34.107117, 36.491138>,  <25.471001, 34.353558, 36.783508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.127209, 34.107117, 36.491138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349819, 33.779171, 36.437325>,  <26.483385, 33.582405, 36.405037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349819, 33.779171, 36.437325>,  <26.127209, 34.107117, 36.491138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349819, 33.779171, 36.437325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768381, 0.446310, 0.458691,
		-0.316018, -0.358651, 0.878352,
		0.556527, -0.819864, -0.134539,
		26.516777, 33.533211, 36.396961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.437775, 33.855106, 37.146183>,  <26.127209, 34.107117, 36.491138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.437775, 33.855106, 37.146183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662395, 33.708443, 36.849476>,  <26.797167, 33.620445, 36.671452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662395, 33.708443, 36.849476>,  <26.437775, 33.855106, 37.146183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662395, 33.708443, 36.849476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827365, 0.261088, 0.497293,
		0.011330, -0.892969, 0.449975,
		0.561551, -0.366659, -0.741769,
		26.830860, 33.598446, 36.626945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.764795, 33.205044, 37.496525>,  <26.437775, 33.855106, 37.146183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.764795, 33.205044, 37.496525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948641, 33.383179, 37.189167>,  <27.058949, 33.490059, 37.004753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948641, 33.383179, 37.189167>,  <26.764795, 33.205044, 37.496525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948641, 33.383179, 37.189167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758752, 0.252760, 0.600340,
		0.461573, -0.858945, -0.221728,
		0.459616, 0.445338, -0.768393,
		27.086525, 33.516781, 36.958649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.499773, 33.014160, 37.525883>,  <26.764795, 33.205044, 37.496525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.499773, 33.014160, 37.525883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.512880, 33.351200, 37.310867>,  <27.520744, 33.553425, 37.181858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.512880, 33.351200, 37.310867>,  <27.499773, 33.014160, 37.525883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.512880, 33.351200, 37.310867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729013, 0.347765, 0.589575,
		0.683715, -0.411190, -0.602874,
		0.032769, 0.842604, -0.537536,
		27.522711, 33.603981, 37.149605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246908, 33.136124, 37.300198>,  <27.499773, 33.014160, 37.525883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246908, 33.136124, 37.300198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053293, 33.485592, 37.280602>,  <27.937124, 33.695274, 37.268845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.053293, 33.485592, 37.280602>,  <28.246908, 33.136124, 37.300198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.053293, 33.485592, 37.280602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743034, 0.439939, 0.504335,
		0.462176, 0.207719, -0.862117,
		-0.484039, 0.873674, -0.048987,
		27.908081, 33.747696, 37.265903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745796, 33.526043, 37.222065>,  <28.246908, 33.136124, 37.300198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745796, 33.526043, 37.222065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453932, 33.774895, 37.335590>,  <28.278814, 33.924206, 37.403706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.453932, 33.774895, 37.335590>,  <28.745796, 33.526043, 37.222065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453932, 33.774895, 37.335590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638418, 0.471078, 0.608693,
		0.244989, 0.625330, -0.740907,
		-0.729659, 0.622131, 0.283813,
		28.235035, 33.961533, 37.420734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988707, 34.219093, 37.145546>,  <28.745796, 33.526043, 37.222065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988707, 34.219093, 37.145546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670500, 34.223690, 37.387875>,  <28.479576, 34.226448, 37.533272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.670500, 34.223690, 37.387875>,  <28.988707, 34.219093, 37.145546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.670500, 34.223690, 37.387875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501471, 0.573701, 0.647606,
		-0.340117, 0.818984, -0.462153,
		-0.795517, 0.011495, 0.605822,
		28.431845, 34.227139, 37.569622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925970, 34.951378, 37.387341>,  <28.988707, 34.219093, 37.145546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925970, 34.951378, 37.387341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727911, 34.728386, 37.653889>,  <28.609076, 34.594593, 37.813816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727911, 34.728386, 37.653889>,  <28.925970, 34.951378, 37.387341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727911, 34.728386, 37.653889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510261, 0.434177, 0.742377,
		-0.703181, 0.707608, 0.069478,
		-0.495147, -0.557477, 0.666370,
		28.579367, 34.561142, 37.853798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759777, 35.371761, 37.987156>,  <28.925970, 34.951378, 37.387341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759777, 35.371761, 37.987156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783501, 34.993050, 38.113708>,  <28.797735, 34.765823, 38.189640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783501, 34.993050, 38.113708>,  <28.759777, 35.371761, 37.987156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783501, 34.993050, 38.113708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669798, 0.272748, 0.690637,
		-0.740171, 0.170953, 0.650324,
		0.059308, -0.946775, 0.316384,
		28.801292, 34.709019, 38.208622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.689882, 35.318600, 38.643188>,  <28.759777, 35.371761, 37.987156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.689882, 35.318600, 38.643188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894699, 34.977486, 38.602074>,  <29.017590, 34.772816, 38.577404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.894699, 34.977486, 38.602074>,  <28.689882, 35.318600, 38.643188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894699, 34.977486, 38.602074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732385, 0.370931, 0.570984,
		-0.448803, -0.367645, 0.814502,
		0.512044, -0.852788, -0.102783,
		29.048313, 34.721649, 38.571239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937037, 35.187073, 39.303299>,  <28.689882, 35.318600, 38.643188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937037, 35.187073, 39.303299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178474, 34.959183, 39.080200>,  <29.323338, 34.822449, 38.946339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178474, 34.959183, 39.080200>,  <28.937037, 35.187073, 39.303299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178474, 34.959183, 39.080200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794870, 0.375513, 0.476626,
		-0.062105, -0.731027, 0.679516,
		0.603593, -0.569727, -0.557751,
		29.359552, 34.788265, 38.912876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374014, 34.922104, 39.802177>,  <28.937037, 35.187073, 39.303299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374014, 34.922104, 39.802177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568426, 34.880520, 39.455082>,  <29.685074, 34.855568, 39.246826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568426, 34.880520, 39.455082>,  <29.374014, 34.922104, 39.802177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568426, 34.880520, 39.455082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855649, 0.258692, 0.448267,
		0.177875, -0.960349, 0.214685,
		0.486030, -0.103960, -0.867737,
		29.714235, 34.849331, 39.194759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000067, 34.598728, 40.028057>,  <29.374014, 34.922104, 39.802177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000067, 34.598728, 40.028057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031986, 34.753262, 39.660496>,  <30.051138, 34.845982, 39.439960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031986, 34.753262, 39.660496>,  <30.000067, 34.598728, 40.028057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031986, 34.753262, 39.660496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850318, 0.454679, 0.265003,
		0.520184, -0.802505, -0.292224,
		0.079798, 0.386334, -0.918901,
		30.055925, 34.869164, 39.384827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740517, 34.597710, 39.998531>,  <30.000067, 34.598728, 40.028057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740517, 34.597710, 39.998531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603359, 34.853733, 39.723503>,  <30.521065, 35.007347, 39.558487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603359, 34.853733, 39.723503>,  <30.740517, 34.597710, 39.998531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603359, 34.853733, 39.723503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797509, 0.585130, 0.146974,
		0.496389, -0.497945, -0.711090,
		-0.342895, 0.640057, -0.687568,
		30.500490, 35.045750, 39.517231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258055, 34.790539, 39.562256>,  <30.740517, 34.597710, 39.998531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258055, 34.790539, 39.562256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991684, 35.088913, 39.557884>,  <30.831861, 35.267937, 39.555264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991684, 35.088913, 39.557884>,  <31.258055, 34.790539, 39.562256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991684, 35.088913, 39.557884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703913, 0.633128, 0.321956,
		0.247075, 0.206710, -0.946692,
		-0.665928, 0.745936, -0.010924,
		30.791904, 35.312695, 39.554607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595034, 35.394859, 39.263203>,  <31.258055, 34.790539, 39.562256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595034, 35.394859, 39.263203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273233, 35.560760, 39.433266>,  <31.080154, 35.660301, 39.535305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273233, 35.560760, 39.433266>,  <31.595034, 35.394859, 39.263203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273233, 35.560760, 39.433266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592787, 0.605523, 0.530985,
		-0.037217, 0.679206, -0.733003,
		-0.804499, 0.414754, 0.425160,
		31.031883, 35.685188, 39.560814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830397, 36.021481, 39.443180>,  <31.595034, 35.394859, 39.263203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830397, 36.021481, 39.443180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496508, 36.037487, 39.662868>,  <31.296175, 36.047092, 39.794682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496508, 36.037487, 39.662868>,  <31.830397, 36.021481, 39.443180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496508, 36.037487, 39.662868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472319, 0.564798, 0.676696,
		-0.283117, 0.824259, -0.490350,
		-0.834721, 0.040017, 0.549217,
		31.246092, 36.049492, 39.827633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796892, 36.652580, 39.694427>,  <31.830397, 36.021481, 39.443180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796892, 36.652580, 39.694427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567345, 36.437859, 39.941822>,  <31.429617, 36.309025, 40.090260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.567345, 36.437859, 39.941822>,  <31.796892, 36.652580, 39.694427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567345, 36.437859, 39.941822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387817, 0.487036, 0.782556,
		-0.721300, 0.688942, -0.071313,
		-0.573867, -0.536802, 0.618482,
		31.395184, 36.276817, 40.127365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425089, 37.191971, 39.936256>,  <31.796892, 36.652580, 39.694427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425089, 37.191971, 39.936256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448542, 36.859116, 40.156837>,  <31.462614, 36.659401, 40.289185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448542, 36.859116, 40.156837>,  <31.425089, 37.191971, 39.936256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448542, 36.859116, 40.156837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536915, 0.491989, 0.685324,
		-0.841596, 0.255902, 0.475636,
		0.058632, -0.832142, 0.551454,
		31.466131, 36.609474, 40.322273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297901, 37.385235, 40.561516>,  <31.425089, 37.191971, 39.936256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297901, 37.385235, 40.561516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483374, 37.035931, 40.621403>,  <31.594656, 36.826347, 40.657337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483374, 37.035931, 40.621403>,  <31.297901, 37.385235, 40.561516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483374, 37.035931, 40.621403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537918, 0.411740, 0.735605,
		-0.704020, -0.260548, 0.660659,
		0.463680, -0.873261, 0.149720,
		31.622478, 36.773952, 40.666317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449558, 37.336506, 41.237282>,  <31.297901, 37.385235, 40.561516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449558, 37.336506, 41.237282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713842, 37.071953, 41.095280>,  <31.872412, 36.913219, 41.010078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713842, 37.071953, 41.095280>,  <31.449558, 37.336506, 41.237282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713842, 37.071953, 41.095280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667020, 0.300365, 0.681810,
		-0.344307, -0.687277, 0.639612,
		0.660709, -0.661386, -0.355010,
		31.912056, 36.873539, 40.988777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022114, 37.345718, 41.682713>,  <31.449558, 37.336506, 41.237282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022114, 37.345718, 41.682713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206226, 37.104462, 41.422138>,  <32.316692, 36.959709, 41.265793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206226, 37.104462, 41.422138>,  <32.022114, 37.345718, 41.682713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206226, 37.104462, 41.422138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883422, 0.238622, 0.403268,
		-0.087781, -0.761106, 0.642661,
		0.460282, -0.603140, -0.651431,
		32.344311, 36.923519, 41.226707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626625, 37.155628, 42.034878>,  <32.022114, 37.345718, 41.682713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626625, 37.155628, 42.034878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708881, 37.059532, 41.655407>,  <32.758236, 37.001873, 41.427723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708881, 37.059532, 41.655407>,  <32.626625, 37.155628, 42.034878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708881, 37.059532, 41.655407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946316, 0.295859, 0.130209,
		0.249393, -0.924527, 0.288189,
		0.205645, -0.240245, -0.948679,
		32.770576, 36.987457, 41.370804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191429, 37.593510, 41.898880>,  <32.626625, 37.155628, 42.034878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191429, 37.593510, 41.898880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525661, 37.474884, 41.713902>,  <33.726200, 37.403709, 41.602917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525661, 37.474884, 41.713902>,  <33.191429, 37.593510, 41.898880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525661, 37.474884, 41.713902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046246, 0.800820, -0.597117,
		0.547415, 0.520326, 0.655436,
		0.835582, -0.296560, -0.462444,
		33.776337, 37.385918, 41.575169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736656, 38.081127, 42.045860>,  <33.191429, 37.593510, 41.898880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736656, 38.081127, 42.045860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685200, 37.893723, 41.696243>,  <33.654327, 37.781281, 41.486473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685200, 37.893723, 41.696243>,  <33.736656, 38.081127, 42.045860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685200, 37.893723, 41.696243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066685, 0.883456, -0.463744,
		0.989447, -0.001370, -0.144889,
		-0.128639, -0.468512, -0.874042,
		33.646606, 37.753170, 41.434032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125912, 38.406269, 41.651417>,  <33.736656, 38.081127, 42.045860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125912, 38.406269, 41.651417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847435, 38.220097, 41.432804>,  <33.680347, 38.108395, 41.301636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847435, 38.220097, 41.432804>,  <34.125912, 38.406269, 41.651417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847435, 38.220097, 41.432804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226048, 0.864738, -0.448475,
		0.681337, -0.188683, -0.707233,
		-0.696191, -0.465431, -0.546527,
		33.638577, 38.080467, 41.268845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279404, 38.411488, 40.982964>,  <34.125912, 38.406269, 41.651417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279404, 38.411488, 40.982964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895874, 38.446995, 41.090870>,  <33.665756, 38.468300, 41.155613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895874, 38.446995, 41.090870>,  <34.279404, 38.411488, 40.982964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895874, 38.446995, 41.090870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041585, 0.983541, -0.175833,
		-0.280933, -0.157376, -0.946736,
		-0.958826, 0.088767, 0.269765,
		33.608227, 38.473625, 41.171799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283016, 37.827248, 40.559086>,  <34.279404, 38.411488, 40.982964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283016, 37.827248, 40.559086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580345, 37.828583, 40.291515>,  <34.758743, 37.829384, 40.130974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580345, 37.828583, 40.291515>,  <34.283016, 37.827248, 40.559086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580345, 37.828583, 40.291515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319656, -0.876654, -0.359581,
		-0.587617, 0.481111, -0.650568,
		0.743321, 0.003338, -0.668926,
		34.803341, 37.829586, 40.090836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960255, 37.768620, 39.900860>,  <34.283016, 37.827248, 40.559086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960255, 37.768620, 39.900860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331753, 37.621273, 39.884174>,  <34.554649, 37.532864, 39.874161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331753, 37.621273, 39.884174>,  <33.960255, 37.768620, 39.900860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331753, 37.621273, 39.884174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320077, -0.739988, -0.591581,
		0.187051, 0.562779, -0.805166,
		0.928742, -0.368371, -0.041717,
		34.610374, 37.510761, 39.871658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338097, 37.784576, 39.202854>,  <33.960255, 37.768620, 39.900860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338097, 37.784576, 39.202854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447903, 37.481167, 39.439255>,  <34.513786, 37.299122, 39.581093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447903, 37.481167, 39.439255>,  <34.338097, 37.784576, 39.202854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447903, 37.481167, 39.439255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422504, -0.647249, -0.634475,
		0.863790, -0.075527, -0.498159,
		0.274513, -0.758527, 0.590998,
		34.530258, 37.253609, 39.616554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703407, 37.094707, 38.915997>,  <34.338097, 37.784576, 39.202854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703407, 37.094707, 38.915997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524616, 36.992336, 39.258858>,  <34.417343, 36.930916, 39.464573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524616, 36.992336, 39.258858>,  <34.703407, 37.094707, 38.915997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524616, 36.992336, 39.258858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301375, -0.859101, -0.413664,
		0.842249, -0.443223, 0.306870,
		-0.446978, -0.255926, 0.857154,
		34.390522, 36.915558, 39.516003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890362, 36.440376, 39.145790>,  <34.703407, 37.094707, 38.915997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890362, 36.440376, 39.145790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519745, 36.529003, 39.267395>,  <34.297375, 36.582180, 39.340359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.519745, 36.529003, 39.267395>,  <34.890362, 36.440376, 39.145790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519745, 36.529003, 39.267395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364078, -0.731509, -0.576491,
		0.094654, -0.644828, 0.758444,
		-0.926546, 0.221566, 0.304008,
		34.241779, 36.595474, 39.358597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480572, 35.726387, 39.091278>,  <34.890362, 36.440376, 39.145790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480572, 35.726387, 39.091278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214375, 36.024414, 39.109146>,  <34.054657, 36.203228, 39.119869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214375, 36.024414, 39.109146>,  <34.480572, 35.726387, 39.091278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214375, 36.024414, 39.109146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588255, -0.486709, -0.645809,
		-0.459423, -0.456066, 0.762191,
		-0.665497, 0.745063, 0.044677,
		34.014725, 36.247932, 39.122547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790325, 35.483135, 39.083775>,  <34.480572, 35.726387, 39.091278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790325, 35.483135, 39.083775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721413, 35.861465, 38.973701>,  <33.680065, 36.088463, 38.907658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721413, 35.861465, 38.973701>,  <33.790325, 35.483135, 39.083775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721413, 35.861465, 38.973701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831683, -0.289362, -0.473891,
		-0.527848, 0.147227, 0.836481,
		-0.172276, 0.945830, -0.275186,
		33.669731, 36.145214, 38.891148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003414, 35.571041, 39.178295>,  <33.790325, 35.483135, 39.083775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003414, 35.571041, 39.178295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135757, 35.855400, 38.930050>,  <33.215164, 36.026016, 38.781101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135757, 35.855400, 38.930050>,  <33.003414, 35.571041, 39.178295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135757, 35.855400, 38.930050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842792, -0.073262, -0.533230,
		-0.424537, 0.699473, 0.574897,
		0.330862, 0.710895, -0.620612,
		33.235016, 36.068668, 38.743866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423744, 35.929813, 39.021797>,  <33.003414, 35.571041, 39.178295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423744, 35.929813, 39.021797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663609, 36.022053, 38.715275>,  <32.807526, 36.077396, 38.531361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663609, 36.022053, 38.715275>,  <32.423744, 35.929813, 39.021797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663609, 36.022053, 38.715275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768348, -0.101785, -0.631886,
		-0.223714, 0.967710, 0.116147,
		0.599661, 0.230603, -0.766309,
		32.843506, 36.091232, 38.485382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967304, 36.215611, 38.618885>,  <32.423744, 35.929813, 39.021797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967304, 36.215611, 38.618885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278210, 36.107147, 38.391788>,  <32.464752, 36.042068, 38.255531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278210, 36.107147, 38.391788>,  <31.967304, 36.215611, 38.618885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278210, 36.107147, 38.391788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624592, -0.223814, -0.748192,
		0.075812, 0.936151, -0.343328,
		0.777263, -0.271162, -0.567744,
		32.511387, 36.025799, 38.221466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791687, 36.532379, 37.931870>,  <31.967304, 36.215611, 38.618885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791687, 36.532379, 37.931870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063686, 36.239750, 37.912251>,  <32.226887, 36.064175, 37.900478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.063686, 36.239750, 37.912251>,  <31.791687, 36.532379, 37.931870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063686, 36.239750, 37.912251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456737, -0.370313, -0.808863,
		0.573577, 0.572429, -0.585948,
		0.680001, -0.731569, -0.049047,
		32.267685, 36.020279, 37.897537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978458, 36.563156, 37.217728>,  <31.791687, 36.532379, 37.931870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978458, 36.563156, 37.217728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078156, 36.205006, 37.365334>,  <32.137974, 35.990116, 37.453896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078156, 36.205006, 37.365334>,  <31.978458, 36.563156, 37.217728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078156, 36.205006, 37.365334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290725, -0.432643, -0.853404,
		0.923774, 0.105421, -0.368142,
		0.249240, -0.895380, 0.369016,
		32.152927, 35.936390, 37.476040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094257, 36.225525, 36.612476>,  <31.978458, 36.563156, 37.217728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094257, 36.225525, 36.612476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035667, 35.930794, 36.876488>,  <32.000515, 35.753956, 37.034893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035667, 35.930794, 36.876488>,  <32.094257, 36.225525, 36.612476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035667, 35.930794, 36.876488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663031, -0.422035, -0.618285,
		0.734122, -0.528180, -0.426721,
		-0.146474, -0.736826, 0.660025,
		31.991726, 35.709747, 37.074493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266529, 35.597626, 36.301704>,  <32.094257, 36.225525, 36.612476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266529, 35.597626, 36.301704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036602, 35.454361, 36.596001>,  <31.898645, 35.368404, 36.772579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036602, 35.454361, 36.596001>,  <32.266529, 35.597626, 36.301704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036602, 35.454361, 36.596001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505909, -0.551140, -0.663552,
		0.643151, -0.753636, 0.135608,
		-0.574815, -0.358159, 0.735737,
		31.864157, 35.346912, 36.816723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146721, 34.973774, 36.118309>,  <32.266529, 35.597626, 36.301704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146721, 34.973774, 36.118309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857456, 35.014114, 36.391621>,  <31.683897, 35.038319, 36.555607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857456, 35.014114, 36.391621>,  <32.146721, 34.973774, 36.118309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857456, 35.014114, 36.391621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557677, -0.668899, -0.491498,
		0.407472, -0.736480, 0.539967,
		-0.723161, 0.100855, 0.683276,
		31.640509, 35.044373, 36.596603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881704, 34.385326, 36.136772>,  <32.146721, 34.973774, 36.118309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881704, 34.385326, 36.136772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563885, 34.597458, 36.255054>,  <31.373194, 34.724735, 36.326023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563885, 34.597458, 36.255054>,  <31.881704, 34.385326, 36.136772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563885, 34.597458, 36.255054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603460, -0.635714, -0.481356,
		-0.067291, -0.560909, 0.825138,
		-0.794549, 0.530329, 0.295708,
		31.325520, 34.756557, 36.343765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323719, 33.976746, 36.487602>,  <31.881704, 34.385326, 36.136772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323719, 33.976746, 36.487602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135658, 34.300106, 36.345928>,  <31.022821, 34.494122, 36.260921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135658, 34.300106, 36.345928>,  <31.323719, 33.976746, 36.487602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135658, 34.300106, 36.345928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713753, -0.584309, -0.386185,
		-0.519147, 0.071237, 0.851711,
		-0.470152, 0.808398, -0.354188,
		30.994612, 34.542625, 36.239674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674835, 33.780117, 36.589523>,  <31.323719, 33.976746, 36.487602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674835, 33.780117, 36.589523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648342, 34.084949, 36.331886>,  <30.632446, 34.267849, 36.177303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648342, 34.084949, 36.331886>,  <30.674835, 33.780117, 36.589523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648342, 34.084949, 36.331886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886415, -0.341314, -0.312689,
		-0.458130, 0.550220, 0.698123,
		-0.066232, 0.762078, -0.644089,
		30.628473, 34.313572, 36.138660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.991983, 34.004219, 36.639835>,  <30.674835, 33.780117, 36.589523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.991983, 34.004219, 36.639835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115211, 34.156368, 36.291031>,  <30.189148, 34.247658, 36.081749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.115211, 34.156368, 36.291031>,  <29.991983, 34.004219, 36.639835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115211, 34.156368, 36.291031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871359, -0.255100, -0.419115,
		-0.381872, 0.888953, 0.252856,
		0.308070, 0.380377, -0.872013,
		30.207632, 34.270481, 36.029427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454947, 34.411900, 36.417259>,  <29.991983, 34.004219, 36.639835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454947, 34.411900, 36.417259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670090, 34.340000, 36.087799>,  <29.799175, 34.296860, 35.890125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670090, 34.340000, 36.087799>,  <29.454947, 34.411900, 36.417259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670090, 34.340000, 36.087799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822794, -0.324728, -0.466435,
		-0.183621, 0.928570, -0.322554,
		0.537860, -0.179748, -0.823649,
		29.831448, 34.286076, 35.840706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970888, 34.450348, 35.957970>,  <29.454947, 34.411900, 36.417259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970888, 34.450348, 35.957970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.270859, 34.262917, 35.771187>,  <29.450842, 34.150459, 35.659119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.270859, 34.262917, 35.771187>,  <28.970888, 34.450348, 35.957970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270859, 34.262917, 35.771187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658122, -0.599930, -0.454927,
		-0.066973, 0.648475, -0.758284,
		0.749927, -0.468576, -0.466955,
		29.495836, 34.122345, 35.631100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763477, 34.455441, 35.306393>,  <28.970888, 34.450348, 35.957970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763477, 34.455441, 35.306393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037037, 34.166286, 35.345840>,  <29.201172, 33.992794, 35.369511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037037, 34.166286, 35.345840>,  <28.763477, 34.455441, 35.306393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037037, 34.166286, 35.345840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606453, -0.638410, -0.473970,
		0.405584, 0.264338, -0.875001,
		0.683898, -0.722881, 0.098620,
		29.242207, 33.949421, 35.375427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975439, 34.253017, 34.592621>,  <28.763477, 34.455441, 35.306393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975439, 34.253017, 34.592621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044691, 33.958336, 34.854095>,  <29.086243, 33.781528, 35.010979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044691, 33.958336, 34.854095>,  <28.975439, 34.253017, 34.592621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044691, 33.958336, 34.854095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438004, -0.652051, -0.618856,
		0.882145, -0.179174, -0.435566,
		0.173128, -0.736700, 0.653682,
		29.096630, 33.737328, 35.050201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201612, 33.663269, 34.155018>,  <28.975439, 34.253017, 34.592621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201612, 33.663269, 34.155018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072836, 33.507885, 34.500378>,  <28.995571, 33.414654, 34.707592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072836, 33.507885, 34.500378>,  <29.201612, 33.663269, 34.155018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072836, 33.507885, 34.500378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316407, -0.815367, -0.484833,
		0.892324, -0.429272, 0.139587,
		-0.321940, -0.388462, 0.863396,
		28.976254, 33.391346, 34.759396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286730, 32.962254, 34.149231>,  <29.201612, 33.663269, 34.155018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286730, 32.962254, 34.149231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.027916, 32.991444, 34.452816>,  <28.872627, 33.008957, 34.634968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.027916, 32.991444, 34.452816>,  <29.286730, 32.962254, 34.149231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.027916, 32.991444, 34.452816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499326, -0.792813, -0.349459,
		0.576213, -0.605081, 0.549414,
		-0.647033, 0.072975, 0.758962,
		28.833805, 33.013336, 34.680504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176001, 32.296432, 34.228642>,  <29.286730, 32.962254, 34.149231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176001, 32.296432, 34.228642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.856922, 32.480591, 34.384445>,  <28.665474, 32.591087, 34.477928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.856922, 32.480591, 34.384445>,  <29.176001, 32.296432, 34.228642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856922, 32.480591, 34.384445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600917, -0.661188, -0.449143,
		0.050753, -0.592341, 0.804087,
		-0.797698, 0.460395, 0.389505,
		28.617613, 32.618710, 34.501297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758001, 31.756989, 34.097202>,  <29.176001, 32.296432, 34.228642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758001, 31.756989, 34.097202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528107, 32.042454, 34.257385>,  <28.390171, 32.213734, 34.353493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528107, 32.042454, 34.257385>,  <28.758001, 31.756989, 34.097202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528107, 32.042454, 34.257385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805739, -0.579045, -0.124467,
		0.143054, -0.394198, 0.907824,
		-0.574735, 0.713663, 0.400455,
		28.355686, 32.256554, 34.377522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817537, 31.799284, 34.852573>,  <28.758001, 31.756989, 34.097202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817537, 31.799284, 34.852573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648560, 31.436779, 34.858681>,  <28.547173, 31.219276, 34.862343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648560, 31.436779, 34.858681>,  <28.817537, 31.799284, 34.852573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648560, 31.436779, 34.858681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791048, -0.376857, -0.481894,
		0.442474, -0.191498, 0.876097,
		-0.422445, -0.906260, 0.015265,
		28.521826, 31.164902, 34.863258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279327, 31.271072, 35.139465>,  <28.817537, 31.799284, 34.852573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279327, 31.271072, 35.139465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034801, 31.111675, 34.865971>,  <28.888086, 31.016037, 34.701874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034801, 31.111675, 34.865971>,  <29.279327, 31.271072, 35.139465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034801, 31.111675, 34.865971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790723, -0.342947, -0.507094,
		-0.032413, -0.850641, 0.524746,
		-0.611315, -0.398492, -0.683738,
		28.851406, 30.992128, 34.660851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349289, 30.448223, 34.999664>,  <29.279327, 31.271072, 35.139465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349289, 30.448223, 34.999664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249563, 30.691677, 34.698360>,  <29.189728, 30.837749, 34.517578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249563, 30.691677, 34.698360>,  <29.349289, 30.448223, 34.999664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.249563, 30.691677, 34.698360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742263, -0.379489, -0.552299,
		-0.622004, -0.696814, -0.357157,
		-0.249312, 0.608637, -0.753263,
		29.174770, 30.874268, 34.472382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477310, 30.048470, 34.397610>,  <29.349289, 30.448223, 34.999664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477310, 30.048470, 34.397610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477224, 30.437849, 34.306049>,  <29.477173, 30.671476, 34.251114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477224, 30.437849, 34.306049>,  <29.477310, 30.048470, 34.397610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477224, 30.437849, 34.306049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879207, -0.108874, -0.463834,
		-0.476440, -0.201349, -0.855841,
		-0.000213, 0.973450, -0.228899,
		29.477160, 30.729883, 34.237381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952059, 30.616138, 34.039005>,  <29.477310, 30.048470, 34.397610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952059, 30.616138, 34.039005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635582, 30.429871, 33.880428>,  <29.445696, 30.318110, 33.785282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635582, 30.429871, 33.880428>,  <29.952059, 30.616138, 34.039005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635582, 30.429871, 33.880428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104471, -0.741624, 0.662631,
		-0.602582, 0.482850, 0.635414,
		-0.791190, -0.465672, -0.396445,
		29.398226, 30.290169, 33.761494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855469, 30.741056, 33.402134>,  <29.952059, 30.616138, 34.039005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855469, 30.741056, 33.402134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890867, 31.126188, 33.504211>,  <29.912106, 31.357267, 33.565456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890867, 31.126188, 33.504211>,  <29.855469, 30.741056, 33.402134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890867, 31.126188, 33.504211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339891, -0.270011, 0.900871,
		0.936292, 0.007016, -0.351152,
		0.088494, 0.962832, 0.255194,
		29.917416, 31.415037, 33.580769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617176, 30.806326, 33.464981>,  <29.855469, 30.741056, 33.402134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617176, 30.806326, 33.464981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708241, 30.741848, 33.080860>,  <30.762878, 30.703161, 32.850388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708241, 30.741848, 33.080860>,  <30.617176, 30.806326, 33.464981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708241, 30.741848, 33.080860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720658, -0.691118, -0.054838,
		-0.654845, 0.704537, -0.273507,
		0.227661, -0.161195, -0.960305,
		30.776539, 30.693489, 32.792767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352985, 30.655092, 33.492615>,  <30.617176, 30.806326, 33.464981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352985, 30.655092, 33.492615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721956, 30.790470, 33.418232>,  <31.943338, 30.871696, 33.373600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721956, 30.790470, 33.418232>,  <31.352985, 30.655092, 33.492615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721956, 30.790470, 33.418232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348309, -0.521238, 0.779096,
		0.166753, -0.783432, -0.598688,
		0.922428, 0.338445, -0.185959,
		31.998684, 30.892004, 33.362446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699619, 30.082737, 33.486870>,  <31.352985, 30.655092, 33.492615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699619, 30.082737, 33.486870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904247, 30.400591, 33.617626>,  <32.027023, 30.591303, 33.696079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.904247, 30.400591, 33.617626>,  <31.699619, 30.082737, 33.486870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.904247, 30.400591, 33.617626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184131, -0.472983, 0.861616,
		0.839281, -0.380586, -0.388280,
		0.511569, 0.794633, 0.326888,
		32.057716, 30.638981, 33.715694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289639, 29.788559, 33.845692>,  <31.699619, 30.082737, 33.486870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289639, 29.788559, 33.845692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267784, 30.162924, 33.984882>,  <32.254673, 30.387543, 34.068398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267784, 30.162924, 33.984882>,  <32.289639, 29.788559, 33.845692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267784, 30.162924, 33.984882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290467, -0.318526, 0.902314,
		0.955324, 0.150372, -0.254449,
		-0.054634, 0.935911, 0.347973,
		32.251392, 30.443697, 34.089275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869858, 29.935234, 34.271873>,  <32.289639, 29.788559, 33.845692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869858, 29.935234, 34.271873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647255, 30.249573, 34.379753>,  <32.513691, 30.438177, 34.444481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.647255, 30.249573, 34.379753>,  <32.869858, 29.935234, 34.271873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647255, 30.249573, 34.379753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255148, -0.147276, 0.955620,
		0.790693, 0.600626, -0.118547,
		-0.556511, 0.785849, 0.269698,
		32.480301, 30.485327, 34.460663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336712, 30.326540, 34.717834>,  <32.869858, 29.935234, 34.271873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336712, 30.326540, 34.717834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966381, 30.453465, 34.799957>,  <32.744183, 30.529619, 34.849232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966381, 30.453465, 34.799957>,  <33.336712, 30.326540, 34.717834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966381, 30.453465, 34.799957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239960, 0.073832, 0.967971,
		0.291990, 0.945443, -0.144498,
		-0.925830, 0.317312, 0.205310,
		32.688633, 30.548658, 34.861549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395840, 30.885250, 35.319294>,  <33.336712, 30.326540, 34.717834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395840, 30.885250, 35.319294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026859, 30.731674, 35.302940>,  <32.805470, 30.639528, 35.293129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026859, 30.731674, 35.302940>,  <33.395840, 30.885250, 35.319294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026859, 30.731674, 35.302940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003170, -0.098363, 0.995145,
		-0.386098, 0.918104, 0.089518,
		-0.922452, -0.383940, -0.040888,
		32.750122, 30.616491, 35.290672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064957, 31.160040, 35.936367>,  <33.395840, 30.885250, 35.319294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064957, 31.160040, 35.936367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839725, 30.852707, 35.814640>,  <32.704586, 30.668308, 35.741604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839725, 30.852707, 35.814640>,  <33.064957, 31.160040, 35.936367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839725, 30.852707, 35.814640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048651, -0.336787, 0.940323,
		-0.824970, 0.544282, 0.152258,
		-0.563079, -0.768331, -0.304319,
		32.670803, 30.622208, 35.723343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402485, 31.284910, 36.336147>,  <33.064957, 31.160040, 35.936367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402485, 31.284910, 36.336147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468613, 30.914087, 36.201546>,  <32.508289, 30.691593, 36.120785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468613, 30.914087, 36.201546>,  <32.402485, 31.284910, 36.336147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468613, 30.914087, 36.201546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057898, -0.331491, 0.941680,
		-0.984539, -0.175159, -0.001127,
		0.165318, -0.927056, -0.336508,
		32.518208, 30.635971, 36.100594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046047, 30.914043, 36.751385>,  <32.402485, 31.284910, 36.336147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046047, 30.914043, 36.751385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321587, 30.668791, 36.596699>,  <32.486912, 30.521639, 36.503887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321587, 30.668791, 36.596699>,  <32.046047, 30.914043, 36.751385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321587, 30.668791, 36.596699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103507, -0.444818, 0.889620,
		-0.717475, -0.652844, -0.242950,
		0.688851, -0.613133, -0.386720,
		32.528240, 30.484852, 36.480682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880209, 30.264572, 37.047592>,  <32.046047, 30.914043, 36.751385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880209, 30.264572, 37.047592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259552, 30.208937, 36.933559>,  <32.487160, 30.175554, 36.865139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259552, 30.208937, 36.933559>,  <31.880209, 30.264572, 37.047592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259552, 30.208937, 36.933559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166144, -0.547782, 0.819957,
		-0.270210, -0.824978, -0.496385,
		0.948358, -0.139089, -0.285082,
		32.544060, 30.167210, 36.848034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919552, 29.601145, 37.144958>,  <31.880209, 30.264572, 37.047592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919552, 29.601145, 37.144958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297226, 29.732098, 37.130325>,  <32.523830, 29.810669, 37.121548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297226, 29.732098, 37.130325>,  <31.919552, 29.601145, 37.144958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297226, 29.732098, 37.130325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218288, -0.538625, 0.813777,
		0.246712, -0.776341, -0.580024,
		0.944184, 0.327381, -0.036581,
		32.580482, 29.830313, 37.119350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273861, 29.024031, 37.154335>,  <31.919552, 29.601145, 37.144958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273861, 29.024031, 37.154335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479641, 29.326267, 37.316528>,  <32.603111, 29.507610, 37.413845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479641, 29.326267, 37.316528>,  <32.273861, 29.024031, 37.154335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479641, 29.326267, 37.316528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067948, -0.507288, 0.859094,
		0.854821, -0.414413, -0.312317,
		0.514454, 0.755593, 0.405482,
		32.633976, 29.552946, 37.438171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586163, 28.662889, 37.670479>,  <32.273861, 29.024031, 37.154335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586163, 28.662889, 37.670479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624237, 29.050795, 37.760368>,  <32.647083, 29.283537, 37.814301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624237, 29.050795, 37.760368>,  <32.586163, 28.662889, 37.670479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624237, 29.050795, 37.760368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032791, -0.228682, 0.972949,
		0.994919, -0.085242, -0.053567,
		0.095186, 0.969762, 0.224725,
		32.652794, 29.341722, 37.827785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066410, 28.672516, 38.290707>,  <32.586163, 28.662889, 37.670479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066410, 28.672516, 38.290707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886440, 29.028790, 38.264626>,  <32.778458, 29.242554, 38.248978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886440, 29.028790, 38.264626>,  <33.066410, 28.672516, 38.290707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886440, 29.028790, 38.264626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079556, 0.112688, 0.990440,
		0.889516, 0.440437, -0.121561,
		-0.449925, 0.890683, -0.065198,
		32.751461, 29.295994, 38.245068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415100, 29.012917, 38.851383>,  <33.066410, 28.672516, 38.290707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415100, 29.012917, 38.851383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058693, 29.176197, 38.771927>,  <32.844849, 29.274164, 38.724255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058693, 29.176197, 38.771927>,  <33.415100, 29.012917, 38.851383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058693, 29.176197, 38.771927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206237, 0.025824, 0.978161,
		0.404415, 0.912527, 0.061177,
		-0.891019, 0.408199, -0.198640,
		32.791386, 29.298656, 38.712334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363037, 29.585945, 39.247131>,  <33.415100, 29.012917, 38.851383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363037, 29.585945, 39.247131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984451, 29.495192, 39.155285>,  <32.757301, 29.440739, 39.100178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984451, 29.495192, 39.155285>,  <33.363037, 29.585945, 39.247131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984451, 29.495192, 39.155285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256040, 0.094454, 0.962040,
		-0.196584, 0.969330, -0.147489,
		-0.946466, -0.226885, -0.229619,
		32.700512, 29.427126, 39.086399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.006535, 30.037605, 39.626556>,  <33.363037, 29.585945, 39.247131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.006535, 30.037605, 39.626556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725582, 29.769125, 39.531773>,  <32.557011, 29.608036, 39.474903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725582, 29.769125, 39.531773>,  <33.006535, 30.037605, 39.626556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725582, 29.769125, 39.531773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290884, -0.033177, 0.956183,
		-0.649653, 0.740532, -0.171939,
		-0.702380, -0.671202, -0.236962,
		32.514870, 29.567764, 39.460686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400448, 30.219345, 39.875114>,  <33.006535, 30.037605, 39.626556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400448, 30.219345, 39.875114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317539, 29.830145, 39.834507>,  <32.267796, 29.596624, 39.810143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.317539, 29.830145, 39.834507>,  <32.400448, 30.219345, 39.875114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317539, 29.830145, 39.834507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215011, -0.055927, 0.975009,
		-0.954363, 0.223920, -0.197614,
		-0.207272, -0.973002, -0.101520,
		32.255360, 29.538244, 39.804050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750164, 30.107845, 40.227352>,  <32.400448, 30.219345, 39.875114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750164, 30.107845, 40.227352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933914, 29.752686, 40.217464>,  <32.044163, 29.539591, 40.211533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933914, 29.752686, 40.217464>,  <31.750164, 30.107845, 40.227352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933914, 29.752686, 40.217464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018489, -0.018269, 0.999662,
		-0.888050, -0.459677, 0.008024,
		0.459375, -0.887898, -0.024722,
		32.071728, 29.486317, 40.210049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448900, 29.744797, 40.731560>,  <31.750164, 30.107845, 40.227352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448900, 29.744797, 40.731560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773064, 29.520321, 40.664265>,  <31.967562, 29.385635, 40.623886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773064, 29.520321, 40.664265>,  <31.448900, 29.744797, 40.731560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773064, 29.520321, 40.664265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028186, -0.249482, 0.967969,
		-0.585188, -0.789191, -0.186364,
		0.810407, -0.561191, -0.168238,
		32.016186, 29.351963, 40.613792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271473, 29.031199, 41.108234>,  <31.448900, 29.744797, 40.731560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271473, 29.031199, 41.108234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668133, 29.080868, 41.094284>,  <31.906128, 29.110668, 41.085915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668133, 29.080868, 41.094284>,  <31.271473, 29.031199, 41.108234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668133, 29.080868, 41.094284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084584, -0.421988, 0.902647,
		0.097368, -0.898058, -0.428966,
		0.991648, 0.124172, -0.034873,
		31.965628, 29.118120, 41.083820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.530964, 28.392221, 41.197189>,  <31.271473, 29.031199, 41.108234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.530964, 28.392221, 41.197189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816553, 28.658669, 41.283470>,  <31.987907, 28.818537, 41.335239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816553, 28.658669, 41.283470>,  <31.530964, 28.392221, 41.197189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816553, 28.658669, 41.283470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193515, -0.483804, 0.853514,
		0.672899, -0.567645, -0.474327,
		0.713974, 0.666117, 0.215703,
		32.030746, 28.858503, 41.348183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962318, 27.964302, 41.565113>,  <31.530964, 28.392221, 41.197189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962318, 27.964302, 41.565113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071472, 28.338762, 41.653801>,  <32.136963, 28.563438, 41.707012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071472, 28.338762, 41.653801>,  <31.962318, 27.964302, 41.565113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071472, 28.338762, 41.653801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138546, -0.266302, 0.953881,
		0.952019, -0.229579, -0.202369,
		0.272882, 0.936150, 0.221717,
		32.153336, 28.619608, 41.720318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579086, 27.879810, 41.966389>,  <31.962318, 27.964302, 41.565113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579086, 27.879810, 41.966389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429966, 28.238579, 42.061504>,  <32.340492, 28.453840, 42.118576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.429966, 28.238579, 42.061504>,  <32.579086, 27.879810, 41.966389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429966, 28.238579, 42.061504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184246, -0.179613, 0.966330,
		0.909434, 0.404065, -0.098294,
		-0.372805, 0.896923, 0.237793,
		32.318123, 28.507656, 42.132843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081306, 28.115772, 42.380821>,  <32.579086, 27.879810, 41.966389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081306, 28.115772, 42.380821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748989, 28.324179, 42.459137>,  <32.549599, 28.449223, 42.506126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748989, 28.324179, 42.459137>,  <33.081306, 28.115772, 42.380821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748989, 28.324179, 42.459137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174573, -0.090087, 0.980514,
		0.528502, 0.848779, -0.016113,
		-0.830789, 0.521016, 0.195785,
		32.499752, 28.480484, 42.517872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267704, 28.451674, 42.994263>,  <33.081306, 28.115772, 42.380821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267704, 28.451674, 42.994263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872143, 28.509691, 42.981461>,  <32.634804, 28.544502, 42.973782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872143, 28.509691, 42.981461>,  <33.267704, 28.451674, 42.994263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872143, 28.509691, 42.981461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044014, -0.080372, 0.995793,
		0.141862, 0.986156, 0.085864,
		-0.988907, 0.145044, -0.032003,
		32.575470, 28.553204, 42.971859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118404, 29.009817, 43.477562>,  <33.267704, 28.451674, 42.994263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118404, 29.009817, 43.477562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794159, 28.780407, 43.430286>,  <32.599609, 28.642761, 43.401920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794159, 28.780407, 43.430286>,  <33.118404, 29.009817, 43.477562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794159, 28.780407, 43.430286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079682, -0.091915, 0.992574,
		-0.580129, 0.814015, 0.028809,
		-0.810618, -0.573525, -0.118185,
		32.550972, 28.608349, 43.394833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826839, 29.074661, 44.127945>,  <33.118404, 29.009817, 43.477562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826839, 29.074661, 44.127945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588161, 28.786678, 43.986176>,  <32.444954, 28.613888, 43.901115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588161, 28.786678, 43.986176>,  <32.826839, 29.074661, 44.127945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588161, 28.786678, 43.986176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253867, -0.249625, 0.934472,
		-0.761255, 0.647570, -0.033825,
		-0.596693, -0.719959, -0.354425,
		32.409153, 28.570690, 43.879848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126873, 29.126390, 44.364468>,  <32.826839, 29.074661, 44.127945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126873, 29.126390, 44.364468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214947, 28.744301, 44.285404>,  <32.267792, 28.515047, 44.237965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214947, 28.744301, 44.285404>,  <32.126873, 29.126390, 44.364468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214947, 28.744301, 44.285404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098870, -0.223443, 0.969689,
		-0.970435, -0.193965, -0.143641,
		0.220181, -0.955223, -0.197660,
		32.281002, 28.457733, 44.226105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814932, 28.740602, 44.864746>,  <32.126873, 29.126390, 44.364468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814932, 28.740602, 44.864746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073875, 28.460258, 44.744930>,  <32.229240, 28.292051, 44.673042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073875, 28.460258, 44.744930>,  <31.814932, 28.740602, 44.864746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073875, 28.460258, 44.744930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040468, -0.424046, 0.904736,
		-0.761112, -0.573565, -0.302871,
		0.647357, -0.700862, -0.299535,
		32.268082, 28.250000, 44.655071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533049, 28.058502, 45.094276>,  <31.814932, 28.740602, 44.864746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533049, 28.058502, 45.094276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913584, 27.989347, 44.992245>,  <32.141903, 27.947855, 44.931026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.913584, 27.989347, 44.992245>,  <31.533049, 28.058502, 45.094276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913584, 27.989347, 44.992245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136549, -0.505565, 0.851915,
		-0.276245, -0.845290, -0.457356,
		0.951338, -0.172886, -0.255083,
		32.198986, 27.937481, 44.915718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690327, 27.328951, 45.246624>,  <31.533049, 28.058502, 45.094276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690327, 27.328951, 45.246624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035236, 27.529192, 45.215961>,  <32.242184, 27.649336, 45.197563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035236, 27.529192, 45.215961>,  <31.690327, 27.328951, 45.246624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035236, 27.529192, 45.215961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285754, -0.355957, 0.889741,
		0.418120, -0.789108, -0.449982,
		0.862276, 0.500603, -0.076658,
		32.293919, 27.679373, 45.192963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249496, 26.828159, 45.203022>,  <31.690327, 27.328951, 45.246624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249496, 26.828159, 45.203022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417686, 27.165136, 45.337776>,  <32.518600, 27.367323, 45.418629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417686, 27.165136, 45.337776>,  <32.249496, 26.828159, 45.203022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417686, 27.165136, 45.337776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317875, -0.484553, 0.814963,
		0.849800, -0.235579, -0.471532,
		0.420470, 0.842443, 0.336888,
		32.543827, 27.417870, 45.438843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725971, 26.623035, 45.669727>,  <32.249496, 26.828159, 45.203022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725971, 26.623035, 45.669727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741135, 26.999752, 45.803349>,  <32.750233, 27.225782, 45.883522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.741135, 26.999752, 45.803349>,  <32.725971, 26.623035, 45.669727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741135, 26.999752, 45.803349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324851, -0.327746, 0.887161,
		0.945005, 0.074885, -0.318367,
		0.037909, 0.941793, 0.334048,
		32.752506, 27.282290, 45.903564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298164, 26.559515, 46.068874>,  <32.725971, 26.623035, 45.669727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298164, 26.559515, 46.068874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137028, 26.901833, 46.198700>,  <33.040348, 27.107224, 46.276596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137028, 26.901833, 46.198700>,  <33.298164, 26.559515, 46.068874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137028, 26.901833, 46.198700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324584, -0.197985, 0.924904,
		0.855784, 0.477935, -0.198020,
		-0.402839, 0.855792, 0.324562,
		33.016174, 27.158569, 46.296070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793884, 26.837500, 46.527740>,  <33.298164, 26.559515, 46.068874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793884, 26.837500, 46.527740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440510, 27.004190, 46.613419>,  <33.228485, 27.104204, 46.664825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440510, 27.004190, 46.613419>,  <33.793884, 26.837500, 46.527740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440510, 27.004190, 46.613419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218310, -0.038393, 0.975124,
		0.414582, 0.908221, -0.057057,
		-0.883438, 0.416725, 0.214191,
		33.175480, 27.129208, 46.677677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928795, 27.529823, 46.945087>,  <33.793884, 26.837500, 46.527740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928795, 27.529823, 46.945087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581314, 27.346331, 47.019840>,  <33.372826, 27.236235, 47.064690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581314, 27.346331, 47.019840>,  <33.928795, 27.529823, 46.945087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581314, 27.346331, 47.019840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302563, -0.192693, 0.933448,
		-0.392193, 0.867429, 0.306188,
		-0.868700, -0.458733, 0.186879,
		33.320705, 27.208712, 47.075905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678570, 27.735302, 47.644764>,  <33.928795, 27.529823, 46.945087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678570, 27.735302, 47.644764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416100, 27.439108, 47.586647>,  <33.258617, 27.261391, 47.551777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416100, 27.439108, 47.586647>,  <33.678570, 27.735302, 47.644764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416100, 27.439108, 47.586647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054336, -0.238410, 0.969643,
		-0.752646, 0.628365, 0.196675,
		-0.656179, -0.740485, -0.145296,
		33.219246, 27.216963, 47.543060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076843, 27.797197, 48.127529>,  <33.678570, 27.735302, 47.644764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076843, 27.797197, 48.127529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151878, 27.417341, 48.027130>,  <33.196899, 27.189428, 47.966892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.151878, 27.417341, 48.027130>,  <33.076843, 27.797197, 48.127529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151878, 27.417341, 48.027130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073996, -0.241141, 0.967665,
		-0.979457, -0.200091, 0.025035,
		0.187584, -0.949639, -0.250994,
		33.208153, 27.132450, 47.951832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604797, 27.332026, 48.473476>,  <33.076843, 27.797197, 48.127529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604797, 27.332026, 48.473476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970310, 27.169762, 48.465031>,  <33.189617, 27.072403, 48.459965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970310, 27.169762, 48.465031>,  <32.604797, 27.332026, 48.473476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970310, 27.169762, 48.465031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122441, -0.324614, 0.937888,
		-0.387319, -0.854438, -0.346295,
		0.913779, -0.405662, -0.021111,
		33.244446, 27.048063, 48.458698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576283, 26.750521, 49.058819>,  <32.604797, 27.332026, 48.473476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576283, 26.750521, 49.058819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956142, 26.809986, 48.948505>,  <33.184059, 26.845665, 48.882317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956142, 26.809986, 48.948505>,  <32.576283, 26.750521, 49.058819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956142, 26.809986, 48.948505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312616, -0.391495, 0.865450,
		0.020692, -0.908092, -0.418259,
		0.949654, 0.148663, -0.275783,
		33.241039, 26.854586, 48.865772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022503, 26.068422, 48.971394>,  <32.576283, 26.750521, 49.058819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022503, 26.068422, 48.971394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210232, 26.398966, 49.095890>,  <33.322868, 26.597292, 49.170589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210232, 26.398966, 49.095890>,  <33.022503, 26.068422, 48.971394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210232, 26.398966, 49.095890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308201, -0.483601, 0.819232,
		0.827497, -0.288556, -0.481648,
		0.469320, 0.826357, 0.311245,
		33.351028, 26.646873, 49.189262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652874, 25.862299, 49.137383>,  <33.022503, 26.068422, 48.971394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652874, 25.862299, 49.137383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554573, 26.192152, 49.341183>,  <33.495594, 26.390064, 49.463463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554573, 26.192152, 49.341183>,  <33.652874, 25.862299, 49.137383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554573, 26.192152, 49.341183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381950, -0.400715, 0.832792,
		0.890910, 0.399261, -0.216492,
		-0.245750, 0.824632, 0.509499,
		33.480846, 26.439541, 49.494034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191360, 26.071247, 49.536476>,  <33.652874, 25.862299, 49.137383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191360, 26.071247, 49.536476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874569, 26.171068, 49.759365>,  <33.684494, 26.230961, 49.893097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874569, 26.171068, 49.759365>,  <34.191360, 26.071247, 49.536476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874569, 26.171068, 49.759365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314255, -0.615857, 0.722471,
		0.523462, 0.747290, 0.409322,
		-0.791979, 0.249554, 0.557218,
		33.636974, 26.245935, 49.926529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491737, 25.821318, 48.908066>,  <34.191360, 26.071247, 49.536476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491737, 25.821318, 48.908066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634808, 25.822744, 48.534531>,  <34.720650, 25.823601, 48.310410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.634808, 25.822744, 48.534531>,  <34.491737, 25.821318, 48.908066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634808, 25.822744, 48.534531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466665, -0.865495, -0.182048,
		-0.808882, 0.500904, -0.307903,
		0.357678, 0.003568, -0.933838,
		34.742111, 25.823814, 48.254379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926754, 25.729168, 48.480663>,  <34.491737, 25.821318, 48.908066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926754, 25.729168, 48.480663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244034, 25.607410, 48.269695>,  <34.434402, 25.534355, 48.143112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244034, 25.607410, 48.269695>,  <33.926754, 25.729168, 48.480663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244034, 25.607410, 48.269695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470420, -0.856279, -0.213287,
		-0.386698, 0.417290, -0.822395,
		0.793202, -0.304393, -0.527423,
		34.481995, 25.516092, 48.111469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319191, 25.304365, 48.837852>,  <33.926754, 25.729168, 48.480663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319191, 25.304365, 48.837852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150124, 25.014847, 48.619690>,  <33.048683, 24.841135, 48.488792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150124, 25.014847, 48.619690>,  <33.319191, 25.304365, 48.837852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150124, 25.014847, 48.619690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573218, 0.252636, -0.779484,
		0.701978, -0.642101, 0.308112,
		-0.422667, -0.723796, -0.545409,
		33.023323, 24.797709, 48.456066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838974, 25.007599, 48.652737>,  <33.319191, 25.304365, 48.837852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838974, 25.007599, 48.652737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562481, 24.931303, 48.373936>,  <33.396584, 24.885525, 48.206654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562481, 24.931303, 48.373936>,  <33.838974, 25.007599, 48.652737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562481, 24.931303, 48.373936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610982, 0.360787, -0.704651,
		0.385875, -0.912936, -0.132850,
		-0.691232, -0.190738, -0.697006,
		33.355110, 24.874081, 48.164833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057663, 24.515818, 48.223095>,  <33.838974, 25.007599, 48.652737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057663, 24.515818, 48.223095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788757, 24.721514, 48.010075>,  <33.627415, 24.844931, 47.882263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.788757, 24.721514, 48.010075>,  <34.057663, 24.515818, 48.223095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788757, 24.721514, 48.010075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682405, 0.151547, -0.715093,
		-0.287022, -0.844151, -0.452800,
		-0.672266, 0.514241, -0.532555,
		33.587078, 24.875786, 47.850307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175610, 24.321707, 47.555038>,  <34.057663, 24.515818, 48.223095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175610, 24.321707, 47.555038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008919, 24.684717, 47.534115>,  <33.908905, 24.902523, 47.521561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008919, 24.684717, 47.534115>,  <34.175610, 24.321707, 47.555038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008919, 24.684717, 47.534115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678457, 0.272212, -0.682346,
		-0.605007, -0.319842, -0.729155,
		-0.416727, 0.907525, -0.052309,
		33.883900, 24.956974, 47.518421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948662, 24.445963, 46.788414>,  <34.175610, 24.321707, 47.555038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948662, 24.445963, 46.788414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986168, 24.801632, 46.967560>,  <34.008671, 25.015034, 47.075047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986168, 24.801632, 46.967560>,  <33.948662, 24.445963, 46.788414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986168, 24.801632, 46.967560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594267, 0.310932, -0.741733,
		-0.798783, 0.335697, -0.499252,
		0.093765, 0.889173, 0.447861,
		34.014297, 25.068384, 47.101917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769382, 24.944756, 46.246315>,  <33.948662, 24.445963, 46.788414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769382, 24.944756, 46.246315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000786, 25.129707, 46.515099>,  <34.139629, 25.240679, 46.676369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000786, 25.129707, 46.515099>,  <33.769382, 24.944756, 46.246315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000786, 25.129707, 46.515099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680435, 0.180730, -0.710172,
		-0.449813, 0.868067, -0.210065,
		0.578512, 0.462380, 0.671958,
		34.174339, 25.268421, 46.716686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916164, 25.620867, 45.934589>,  <33.769382, 24.944756, 46.246315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916164, 25.620867, 45.934589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191158, 25.546509, 46.215389>,  <34.356155, 25.501894, 46.383869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191158, 25.546509, 46.215389>,  <33.916164, 25.620867, 45.934589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191158, 25.546509, 46.215389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720385, 0.296638, -0.626938,
		-0.091695, 0.936722, 0.337852,
		0.687486, -0.185897, 0.702001,
		34.397404, 25.490740, 46.425991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236324, 26.155397, 45.855350>,  <33.916164, 25.620867, 45.934589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236324, 26.155397, 45.855350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514751, 25.960812, 46.066574>,  <34.681808, 25.844061, 46.193310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514751, 25.960812, 46.066574>,  <34.236324, 26.155397, 45.855350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514751, 25.960812, 46.066574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715972, 0.415323, -0.561151,
		0.053664, 0.768674, 0.637386,
		0.696063, -0.486464, 0.528061,
		34.723572, 25.814873, 46.224991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790775, 26.588047, 46.154896>,  <34.236324, 26.155397, 45.855350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790775, 26.588047, 46.154896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975060, 26.234764, 46.119816>,  <35.085632, 26.022795, 46.098770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975060, 26.234764, 46.119816>,  <34.790775, 26.588047, 46.154896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975060, 26.234764, 46.119816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729643, 0.433150, -0.529152,
		0.505335, 0.179801, 0.843983,
		0.460713, -0.883206, -0.087696,
		35.113274, 25.969803, 46.093506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547924, 26.721422, 46.195755>,  <34.790775, 26.588047, 46.154896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547924, 26.721422, 46.195755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514362, 26.353544, 46.042328>,  <35.494225, 26.132818, 45.950272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514362, 26.353544, 46.042328>,  <35.547924, 26.721422, 46.195755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514362, 26.353544, 46.042328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839274, 0.142287, -0.524760,
		0.537195, -0.365948, 0.759936,
		-0.083906, -0.919694, -0.383567,
		35.489189, 26.077637, 45.927258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232216, 26.385841, 46.235432>,  <35.547924, 26.721422, 46.195755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232216, 26.385841, 46.235432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028648, 26.179060, 45.960110>,  <35.906509, 26.054991, 45.794918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028648, 26.179060, 45.960110>,  <36.232216, 26.385841, 46.235432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028648, 26.179060, 45.960110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742070, 0.141782, -0.655156,
		0.436274, -0.844190, 0.311460,
		-0.508917, -0.516953, -0.688305,
		35.875973, 26.023973, 45.753616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728397, 25.947805, 45.796074>,  <36.232216, 26.385841, 46.235432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728397, 25.947805, 45.796074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419361, 25.924982, 45.543137>,  <36.233940, 25.911287, 45.391376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419361, 25.924982, 45.543137>,  <36.728397, 25.947805, 45.796074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419361, 25.924982, 45.543137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621505, 0.135614, -0.771583,
		0.129774, -0.989118, -0.069316,
		-0.772587, -0.057051, -0.632341,
		36.187584, 25.907864, 45.353436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049988, 25.670015, 45.230328>,  <36.728397, 25.947805, 45.796074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049988, 25.670015, 45.230328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713718, 25.843414, 45.100498>,  <36.511955, 25.947454, 45.022602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713718, 25.843414, 45.100498>,  <37.049988, 25.670015, 45.230328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713718, 25.843414, 45.100498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481556, 0.324229, -0.814236,
		-0.247735, -0.840806, -0.481324,
		-0.840674, 0.433499, -0.324572,
		36.461517, 25.973463, 45.003128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084343, 25.470581, 44.463078>,  <37.049988, 25.670015, 45.230328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084343, 25.470581, 44.463078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825821, 25.775227, 44.481964>,  <36.670708, 25.958014, 44.493294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825821, 25.775227, 44.481964>,  <37.084343, 25.470581, 44.463078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825821, 25.775227, 44.481964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243779, 0.264711, -0.933006,
		-0.723088, -0.591501, -0.356750,
		-0.646309, 0.761613, 0.047214,
		36.631927, 26.003710, 44.496128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659630, 25.451862, 43.902252>,  <37.084343, 25.470581, 44.463078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659630, 25.451862, 43.902252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599098, 25.832815, 44.008129>,  <36.562778, 26.061388, 44.071655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599098, 25.832815, 44.008129>,  <36.659630, 25.451862, 43.902252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599098, 25.832815, 44.008129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264690, 0.297043, -0.917445,
		-0.952385, -0.068776, -0.297038,
		-0.151331, 0.952384, 0.264695,
		36.553699, 26.118530, 44.087536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113464, 25.702858, 43.456638>,  <36.659630, 25.451862, 43.902252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113464, 25.702858, 43.456638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307190, 26.027336, 43.587723>,  <36.423428, 26.222023, 43.666374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307190, 26.027336, 43.587723>,  <36.113464, 25.702858, 43.456638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307190, 26.027336, 43.587723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055653, 0.402381, -0.913779,
		-0.873121, 0.424321, 0.240026,
		0.484317, 0.811198, 0.327713,
		36.452484, 26.270695, 43.686035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755417, 26.175554, 43.150932>,  <36.113464, 25.702858, 43.456638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755417, 26.175554, 43.150932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100372, 26.358622, 43.237484>,  <36.307346, 26.468462, 43.289413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100372, 26.358622, 43.237484>,  <35.755417, 26.175554, 43.150932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100372, 26.358622, 43.237484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154999, 0.645600, -0.747780,
		-0.481927, 0.611343, 0.627699,
		0.862393, 0.457668, 0.216375,
		36.359089, 26.495922, 43.302395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620617, 26.919279, 43.218376>,  <35.755417, 26.175554, 43.150932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620617, 26.919279, 43.218376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998283, 26.834610, 43.117393>,  <36.224884, 26.783808, 43.056805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998283, 26.834610, 43.117393>,  <35.620617, 26.919279, 43.218376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998283, 26.834610, 43.117393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065265, 0.630931, -0.773089,
		0.322927, 0.746405, 0.581892,
		0.944171, -0.211674, -0.252459,
		36.281536, 26.771109, 43.041656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753109, 27.411699, 42.803017>,  <35.620617, 26.919279, 43.218376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753109, 27.411699, 42.803017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056683, 27.164551, 42.720787>,  <36.238827, 27.016262, 42.671452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056683, 27.164551, 42.720787>,  <35.753109, 27.411699, 42.803017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056683, 27.164551, 42.720787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154621, 0.477659, -0.864832,
		0.632546, 0.624563, 0.458046,
		0.758932, -0.617870, -0.205571,
		36.284363, 26.979191, 42.659115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279274, 27.811136, 42.430923>,  <35.753109, 27.411699, 42.803017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279274, 27.811136, 42.430923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363564, 27.441160, 42.304379>,  <36.414135, 27.219175, 42.228451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363564, 27.441160, 42.304379>,  <36.279274, 27.811136, 42.430923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363564, 27.441160, 42.304379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129864, 0.294276, -0.946856,
		0.968882, 0.240606, -0.058107,
		0.210720, -0.924938, -0.316365,
		36.426781, 27.163679, 42.209469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656506, 27.935913, 41.941204>,  <36.279274, 27.811136, 42.430923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656506, 27.935913, 41.941204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575279, 27.548462, 41.883904>,  <36.526543, 27.315990, 41.849522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575279, 27.548462, 41.883904>,  <36.656506, 27.935913, 41.941204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575279, 27.548462, 41.883904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217202, 0.187219, -0.958004,
		0.954772, -0.163420, -0.248405,
		-0.203063, -0.968629, -0.143256,
		36.514359, 27.257874, 41.840927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103310, 27.824158, 41.413689>,  <36.656506, 27.935913, 41.941204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103310, 27.824158, 41.413689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811039, 27.551823, 41.433983>,  <36.635677, 27.388422, 41.446159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811039, 27.551823, 41.433983>,  <37.103310, 27.824158, 41.413689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811039, 27.551823, 41.433983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126299, 0.061769, -0.990067,
		0.670943, -0.729823, -0.131122,
		-0.730674, -0.680839, 0.050732,
		36.591835, 27.347570, 41.449203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171829, 27.441311, 40.802639>,  <37.103310, 27.824158, 41.413689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171829, 27.441311, 40.802639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815613, 27.318197, 40.936626>,  <36.601883, 27.244329, 41.017017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815613, 27.318197, 40.936626>,  <37.171829, 27.441311, 40.802639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815613, 27.318197, 40.936626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330387, -0.068556, -0.941352,
		0.312697, -0.948983, -0.040635,
		-0.890542, -0.307783, 0.334969,
		36.548450, 27.225863, 41.037117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061031, 26.865332, 40.311253>,  <37.171829, 27.441311, 40.802639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061031, 26.865332, 40.311253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705132, 26.975742, 40.456661>,  <36.491592, 27.041988, 40.543907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.705132, 26.975742, 40.456661>,  <37.061031, 26.865332, 40.311253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705132, 26.975742, 40.456661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356331, 0.077683, -0.931125,
		-0.285256, -0.958005, 0.029239,
		-0.889751, 0.276028, 0.363526,
		36.438206, 27.058550, 40.565720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509163, 26.364994, 40.188164>,  <37.061031, 26.865332, 40.311253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509163, 26.364994, 40.188164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345715, 26.729181, 40.213692>,  <36.247646, 26.947695, 40.229008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.345715, 26.729181, 40.213692>,  <36.509163, 26.364994, 40.188164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345715, 26.729181, 40.213692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316194, -0.075617, -0.945676,
		-0.856183, -0.406604, 0.318784,
		-0.408622, 0.910470, 0.063824,
		36.223129, 27.002321, 40.232838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861511, 26.351906, 39.769863>,  <36.509163, 26.364994, 40.188164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861511, 26.351906, 39.769863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914337, 26.746241, 39.811207>,  <35.946033, 26.982841, 39.836014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914337, 26.746241, 39.811207>,  <35.861511, 26.351906, 39.769863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914337, 26.746241, 39.811207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490938, 0.155640, -0.857179,
		-0.861127, 0.062458, 0.504539,
		0.132064, 0.985838, 0.103363,
		35.953957, 27.041992, 39.842216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255707, 26.600473, 39.551807>,  <35.861511, 26.351906, 39.769863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255707, 26.600473, 39.551807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511379, 26.907761, 39.537426>,  <35.664783, 27.092133, 39.528797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511379, 26.907761, 39.537426>,  <35.255707, 26.600473, 39.551807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511379, 26.907761, 39.537426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395558, 0.288303, -0.872018,
		-0.659535, 0.571595, 0.488152,
		0.639177, 0.768219, -0.035953,
		35.703133, 27.138226, 39.526642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856133, 27.264189, 39.454651>,  <35.255707, 26.600473, 39.551807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856133, 27.264189, 39.454651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223083, 27.321817, 39.306240>,  <35.443253, 27.356394, 39.217194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223083, 27.321817, 39.306240>,  <34.856133, 27.264189, 39.454651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223083, 27.321817, 39.306240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394048, 0.460041, -0.795668,
		0.056053, 0.876131, 0.478803,
		0.917379, 0.144072, -0.371025,
		35.498299, 27.365040, 39.194931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826412, 27.919739, 38.975697>,  <34.856133, 27.264189, 39.454651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826412, 27.919739, 38.975697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187191, 27.789175, 38.862598>,  <35.403660, 27.710836, 38.794739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187191, 27.789175, 38.862598>,  <34.826412, 27.919739, 38.975697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187191, 27.789175, 38.862598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167012, 0.340127, -0.925430,
		0.398237, 0.881913, 0.252263,
		0.901950, -0.326410, -0.282741,
		35.457775, 27.691252, 38.777775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141727, 28.499027, 38.667915>,  <34.826412, 27.919739, 38.975697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141727, 28.499027, 38.667915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312943, 28.171694, 38.514488>,  <35.415672, 27.975294, 38.422432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312943, 28.171694, 38.514488>,  <35.141727, 28.499027, 38.667915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312943, 28.171694, 38.514488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059067, 0.398170, -0.915408,
		0.901831, 0.414481, 0.122093,
		0.428033, -0.818331, -0.383564,
		35.441353, 27.926195, 38.399418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547981, 28.682076, 38.120163>,  <35.141727, 28.499027, 38.667915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547981, 28.682076, 38.120163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520725, 28.292343, 38.034344>,  <35.504372, 28.058502, 37.982853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520725, 28.292343, 38.034344>,  <35.547981, 28.682076, 38.120163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520725, 28.292343, 38.034344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117388, 0.205727, -0.971543,
		0.990746, -0.091383, 0.100358,
		-0.068137, -0.974333, -0.214551,
		35.500286, 28.000044, 37.969978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155670, 28.484589, 37.690529>,  <35.547981, 28.682076, 38.120163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155670, 28.484589, 37.690529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843060, 28.249092, 37.607964>,  <35.655495, 28.107796, 37.558422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843060, 28.249092, 37.607964>,  <36.155670, 28.484589, 37.690529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843060, 28.249092, 37.607964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104905, 0.202139, -0.973722,
		0.614993, -0.782640, -0.096215,
		-0.781523, -0.588739, -0.206417,
		35.608604, 28.072470, 37.546040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260708, 28.443594, 37.046139>,  <36.155670, 28.484589, 37.690529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260708, 28.443594, 37.046139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921070, 28.234409, 37.075932>,  <35.717285, 28.108898, 37.093807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.921070, 28.234409, 37.075932>,  <36.260708, 28.443594, 37.046139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921070, 28.234409, 37.075932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142811, 0.091510, -0.985510,
		0.508566, -0.847431, -0.152386,
		-0.849097, -0.522960, 0.074484,
		35.666340, 28.077522, 37.098278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420380, 27.892525, 36.651859>,  <36.260708, 28.443594, 37.046139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420380, 27.892525, 36.651859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027107, 27.960449, 36.678780>,  <35.791145, 28.001204, 36.694931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027107, 27.960449, 36.678780>,  <36.420380, 27.892525, 36.651859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027107, 27.960449, 36.678780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025021, 0.239754, -0.970511,
		-0.180936, -0.955868, -0.231472,
		-0.983177, 0.169809, 0.067297,
		35.732155, 28.011393, 36.698967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025936, 27.485901, 36.114323>,  <36.420380, 27.892525, 36.651859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025936, 27.485901, 36.114323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797787, 27.801006, 36.207359>,  <35.660896, 27.990070, 36.263184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797787, 27.801006, 36.207359>,  <36.025936, 27.485901, 36.114323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797787, 27.801006, 36.207359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262068, 0.093843, -0.960476,
		-0.778456, -0.608787, 0.152922,
		-0.570375, 0.787764, 0.232596,
		35.626675, 28.037336, 36.277138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301575, 27.398190, 35.787506>,  <36.025936, 27.485901, 36.114323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301575, 27.398190, 35.787506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360733, 27.786472, 35.863243>,  <35.396229, 28.019442, 35.908684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360733, 27.786472, 35.863243>,  <35.301575, 27.398190, 35.787506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360733, 27.786472, 35.863243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200698, 0.216924, -0.955335,
		-0.968424, 0.103293, 0.226902,
		0.147900, 0.970708, 0.189344,
		35.405102, 28.077684, 35.920048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824669, 27.657310, 35.207680>,  <35.301575, 27.398190, 35.787506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824669, 27.657310, 35.207680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017460, 27.972874, 35.360168>,  <35.133133, 28.162210, 35.451660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017460, 27.972874, 35.360168>,  <34.824669, 27.657310, 35.207680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017460, 27.972874, 35.360168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037013, 0.453032, -0.890726,
		-0.875403, 0.415198, 0.247550,
		0.481976, 0.788906, 0.381218,
		35.162052, 28.209545, 35.474533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543823, 28.210049, 34.795635>,  <34.824669, 27.657310, 35.207680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543823, 28.210049, 34.795635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884483, 28.352282, 34.949654>,  <35.088879, 28.437620, 35.042065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884483, 28.352282, 34.949654>,  <34.543823, 28.210049, 34.795635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884483, 28.352282, 34.949654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185058, 0.483331, -0.855655,
		-0.490359, 0.799971, 0.345824,
		0.851647, 0.355580, 0.385047,
		35.139977, 28.458956, 35.065166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528946, 28.877583, 34.596500>,  <34.543823, 28.210049, 34.795635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528946, 28.877583, 34.596500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907043, 28.782829, 34.686295>,  <35.133904, 28.725977, 34.740170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907043, 28.782829, 34.686295>,  <34.528946, 28.877583, 34.596500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907043, 28.782829, 34.686295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304536, 0.392944, -0.867671,
		0.117328, 0.888527, 0.443569,
		0.945247, -0.236885, 0.224485,
		35.190617, 28.711763, 34.753639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897995, 29.446644, 34.443787>,  <34.528946, 28.877583, 34.596500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897995, 29.446644, 34.443787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183334, 29.166798, 34.427433>,  <35.354538, 28.998890, 34.417622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183334, 29.166798, 34.427433>,  <34.897995, 29.446644, 34.443787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183334, 29.166798, 34.427433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303292, 0.360789, -0.881955,
		0.631784, 0.616739, 0.469556,
		0.713347, -0.699618, -0.040888,
		35.397339, 28.956913, 34.415165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444443, 29.679972, 34.117821>,  <34.897995, 29.446644, 34.443787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444443, 29.679972, 34.117821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509354, 29.289974, 34.057091>,  <35.548302, 29.055975, 34.020653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.509354, 29.289974, 34.057091>,  <35.444443, 29.679972, 34.117821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509354, 29.289974, 34.057091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215447, 0.185159, -0.958801,
		0.962937, 0.122887, 0.240108,
		0.162282, -0.974995, -0.151820,
		35.558037, 28.997477, 34.011543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970581, 29.580473, 33.648170>,  <35.444443, 29.679972, 34.117821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970581, 29.580473, 33.648170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862328, 29.196920, 33.613976>,  <35.797375, 28.966789, 33.593456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862328, 29.196920, 33.613976>,  <35.970581, 29.580473, 33.648170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862328, 29.196920, 33.613976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097738, 0.060979, -0.993342,
		0.957708, -0.277186, 0.077216,
		-0.270633, -0.958879, -0.085491,
		35.781139, 28.909256, 33.588329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454124, 29.290981, 33.176098>,  <35.970581, 29.580473, 33.648170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454124, 29.290981, 33.176098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114758, 29.083588, 33.133450>,  <35.911137, 28.959152, 33.107861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114758, 29.083588, 33.133450>,  <36.454124, 29.290981, 33.176098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114758, 29.083588, 33.133450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013540, 0.222611, -0.974813,
		0.529160, -0.825602, -0.195886,
		-0.848414, -0.518485, -0.106618,
		35.860233, 28.928041, 33.101463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026424, 28.848942, 33.504963>,  <36.454124, 29.290981, 33.176098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026424, 28.848942, 33.504963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336853, 29.098438, 33.467747>,  <37.523109, 29.248137, 33.445419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336853, 29.098438, 33.467747>,  <37.026424, 28.848942, 33.504963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336853, 29.098438, 33.467747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328612, -0.274054, 0.903830,
		0.538259, -0.732012, -0.417655,
		0.776074, 0.623741, -0.093036,
		37.569675, 29.285561, 33.439835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556622, 28.432217, 33.753277>,  <37.026424, 28.848942, 33.504963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556622, 28.432217, 33.753277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655964, 28.816010, 33.806515>,  <37.715569, 29.046286, 33.838459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655964, 28.816010, 33.806515>,  <37.556622, 28.432217, 33.753277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655964, 28.816010, 33.806515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242044, -0.194512, 0.950568,
		0.937942, -0.203859, -0.280545,
		0.248351, 0.959482, 0.133098,
		37.730469, 29.103855, 33.846443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193562, 28.345078, 34.081184>,  <37.556622, 28.432217, 33.753277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193562, 28.345078, 34.081184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072910, 28.718575, 34.158276>,  <38.000519, 28.942673, 34.204529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072910, 28.718575, 34.158276>,  <38.193562, 28.345078, 34.081184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072910, 28.718575, 34.158276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243656, -0.119937, 0.962417,
		0.921764, 0.337256, -0.191335,
		-0.301633, 0.933742, 0.192728,
		37.982422, 28.998697, 34.216095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770271, 28.617306, 34.294685>,  <38.193562, 28.345078, 34.081184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770271, 28.617306, 34.294685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460674, 28.826305, 34.437756>,  <38.274918, 28.951706, 34.523598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460674, 28.826305, 34.437756>,  <38.770271, 28.617306, 34.294685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460674, 28.826305, 34.437756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341542, -0.131160, 0.930670,
		0.533189, 0.842490, -0.076939,
		-0.773989, 0.522501, 0.357679,
		38.228477, 28.983055, 34.545059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040516, 29.116364, 34.862915>,  <38.770271, 28.617306, 34.294685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040516, 29.116364, 34.862915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646332, 29.087540, 34.924454>,  <38.409821, 29.070246, 34.961376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646332, 29.087540, 34.924454>,  <39.040516, 29.116364, 34.862915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646332, 29.087540, 34.924454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159993, -0.089059, 0.983092,
		-0.057141, 0.993416, 0.099293,
		-0.985463, -0.072061, 0.153850,
		38.350693, 29.065922, 34.970608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814693, 29.585840, 35.491875>,  <39.040516, 29.116364, 34.862915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814693, 29.585840, 35.491875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501350, 29.345264, 35.429108>,  <38.313343, 29.200920, 35.391449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501350, 29.345264, 35.429108>,  <38.814693, 29.585840, 35.491875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501350, 29.345264, 35.429108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102982, -0.123383, 0.987001,
		-0.612981, 0.789335, 0.034716,
		-0.783358, -0.601438, -0.156918,
		38.266342, 29.164833, 35.382030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306561, 29.854057, 35.957684>,  <38.814693, 29.585840, 35.491875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306561, 29.854057, 35.957684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195660, 29.477852, 35.879131>,  <38.129120, 29.252129, 35.832001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195660, 29.477852, 35.879131>,  <38.306561, 29.854057, 35.957684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195660, 29.477852, 35.879131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221954, -0.136166, 0.965503,
		-0.934808, 0.311278, -0.170998,
		-0.277256, -0.940513, -0.196378,
		38.112484, 29.195698, 35.820217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877201, 29.786036, 36.527294>,  <38.306561, 29.854057, 35.957684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877201, 29.786036, 36.527294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937672, 29.413776, 36.394001>,  <37.973953, 29.190422, 36.314026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937672, 29.413776, 36.394001>,  <37.877201, 29.786036, 36.527294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937672, 29.413776, 36.394001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003896, -0.337663, 0.941259,
		-0.988499, -0.140997, -0.054672,
		0.151176, -0.930647, -0.333230,
		37.983025, 29.134583, 36.294033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431164, 29.406492, 36.867577>,  <37.877201, 29.786036, 36.527294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431164, 29.406492, 36.867577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704575, 29.138170, 36.752468>,  <37.868622, 28.977177, 36.683403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704575, 29.138170, 36.752468>,  <37.431164, 29.406492, 36.867577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704575, 29.138170, 36.752468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095851, -0.308345, 0.946433,
		-0.723606, -0.674495, -0.146464,
		0.683526, -0.670806, -0.287772,
		37.909634, 28.936928, 36.666138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311153, 28.732950, 37.140907>,  <37.431164, 29.406492, 36.867577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311153, 28.732950, 37.140907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703777, 28.720957, 37.065388>,  <37.939350, 28.713760, 37.020077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703777, 28.720957, 37.065388>,  <37.311153, 28.732950, 37.140907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703777, 28.720957, 37.065388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159911, -0.412418, 0.896850,
		-0.104758, -0.910501, -0.400017,
		0.981557, -0.029985, -0.188803,
		37.998245, 28.711962, 37.008747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562222, 28.091993, 37.464550>,  <37.311153, 28.732950, 37.140907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562222, 28.091993, 37.464550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897984, 28.302185, 37.409027>,  <38.099442, 28.428301, 37.375713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897984, 28.302185, 37.409027>,  <37.562222, 28.091993, 37.464550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897984, 28.302185, 37.409027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275243, -0.190771, 0.942257,
		0.468657, -0.829142, -0.304769,
		0.839406, 0.525481, -0.138809,
		38.149807, 28.459829, 37.367386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105633, 27.601398, 37.690147>,  <37.562222, 28.091993, 37.464550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105633, 27.601398, 37.690147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251583, 27.973669, 37.700783>,  <38.339153, 28.197031, 37.707165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251583, 27.973669, 37.700783>,  <38.105633, 27.601398, 37.690147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251583, 27.973669, 37.700783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443516, -0.198847, 0.873930,
		0.818633, -0.307082, -0.485325,
		0.364874, 0.930677, 0.026587,
		38.361046, 28.252872, 37.708759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790230, 27.480408, 37.886387>,  <38.105633, 27.601398, 37.690147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790230, 27.480408, 37.886387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709106, 27.866344, 37.953262>,  <38.660431, 28.097906, 37.993385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.709106, 27.866344, 37.953262>,  <38.790230, 27.480408, 37.886387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709106, 27.866344, 37.953262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437455, -0.063477, 0.896997,
		0.876071, 0.255056, -0.409201,
		-0.202809, 0.964841, 0.167186,
		38.648262, 28.155796, 38.003418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306816, 27.693378, 38.255669>,  <38.790230, 27.480408, 37.886387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306816, 27.693378, 38.255669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007710, 27.945631, 38.338749>,  <38.828243, 28.096983, 38.388596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007710, 27.945631, 38.338749>,  <39.306816, 27.693378, 38.255669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007710, 27.945631, 38.338749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232734, -0.044020, 0.971544,
		0.621831, 0.774831, -0.113853,
		-0.747771, 0.630633, 0.207702,
		38.783379, 28.134821, 38.401058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710125, 28.064619, 38.627552>,  <39.306816, 27.693378, 38.255669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710125, 28.064619, 38.627552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322155, 28.134432, 38.695423>,  <39.089375, 28.176319, 38.736145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.322155, 28.134432, 38.695423>,  <39.710125, 28.064619, 38.627552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322155, 28.134432, 38.695423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161334, -0.061039, 0.985011,
		0.182275, 0.982757, 0.031045,
		-0.969921, 0.174534, 0.169678,
		39.031178, 28.186792, 38.746326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665573, 28.646446, 39.072186>,  <39.710125, 28.064619, 38.627552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665573, 28.646446, 39.072186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302128, 28.489521, 39.129478>,  <39.084061, 28.395367, 39.163857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302128, 28.489521, 39.129478>,  <39.665573, 28.646446, 39.072186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302128, 28.489521, 39.129478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190432, -0.083938, 0.978105,
		-0.371701, 0.915994, 0.150976,
		-0.908611, -0.392314, 0.143235,
		39.029545, 28.371826, 39.172447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298710, 28.961142, 39.684185>,  <39.665573, 28.646446, 39.072186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298710, 28.961142, 39.684185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128269, 28.603382, 39.629795>,  <39.026005, 28.388725, 39.597160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.128269, 28.603382, 39.629795>,  <39.298710, 28.961142, 39.684185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128269, 28.603382, 39.629795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032331, -0.135156, 0.990297,
		-0.904099, 0.426359, 0.028673,
		-0.426098, -0.894400, -0.135979,
		39.000439, 28.335062, 39.589001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739361, 28.901928, 40.177383>,  <39.298710, 28.961142, 39.684185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739361, 28.901928, 40.177383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837978, 28.529570, 40.069565>,  <38.897148, 28.306154, 40.004875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837978, 28.529570, 40.069565>,  <38.739361, 28.901928, 40.177383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837978, 28.529570, 40.069565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199746, -0.320966, 0.925787,
		-0.948325, -0.174403, -0.265074,
		0.246540, -0.930895, -0.269544,
		38.911942, 28.250301, 39.988701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263477, 28.565491, 40.530972>,  <38.739361, 28.901928, 40.177383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263477, 28.565491, 40.530972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511414, 28.279030, 40.402645>,  <38.660175, 28.107153, 40.325649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511414, 28.279030, 40.402645>,  <38.263477, 28.565491, 40.530972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511414, 28.279030, 40.402645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079040, -0.463727, 0.882445,
		-0.780738, -0.521616, -0.344041,
		0.619839, -0.716152, -0.320821,
		38.697365, 28.064184, 40.306400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.889931, 27.971867, 40.694931>,  <38.263477, 28.565491, 40.530972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.889931, 27.971867, 40.694931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279068, 27.879738, 40.685715>,  <38.512550, 27.824461, 40.680183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279068, 27.879738, 40.685715>,  <37.889931, 27.971867, 40.694931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279068, 27.879738, 40.685715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057885, -0.338462, 0.939198,
		-0.224118, -0.912357, -0.342602,
		0.972842, -0.230323, -0.023044,
		38.570919, 27.810640, 40.678802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961365, 27.303152, 40.978123>,  <37.889931, 27.971867, 40.694931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961365, 27.303152, 40.978123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333294, 27.447678, 41.006058>,  <38.556454, 27.534393, 41.022820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333294, 27.447678, 41.006058>,  <37.961365, 27.303152, 40.978123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333294, 27.447678, 41.006058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050936, -0.314303, 0.947955,
		0.364459, -0.877876, -0.310651,
		0.929825, 0.361314, 0.069835,
		38.612240, 27.556072, 41.027008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152557, 26.813011, 41.438416>,  <37.961365, 27.303152, 40.978123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152557, 26.813011, 41.438416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433144, 27.098080, 41.441322>,  <38.601494, 27.269121, 41.443066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433144, 27.098080, 41.441322>,  <38.152557, 26.813011, 41.438416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433144, 27.098080, 41.441322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224971, -0.231089, 0.946565,
		0.676268, -0.662345, -0.322430,
		0.701463, 0.712669, 0.007269,
		38.643581, 27.311880, 41.443504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687294, 26.532759, 41.856518>,  <38.152557, 26.813011, 41.438416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687294, 26.532759, 41.856518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715965, 26.930983, 41.880928>,  <38.733166, 27.169916, 41.895573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715965, 26.930983, 41.880928>,  <38.687294, 26.532759, 41.856518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715965, 26.930983, 41.880928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061994, -0.056618, 0.996469,
		0.995500, -0.075205, 0.057661,
		0.071675, 0.995560, 0.061025,
		38.737469, 27.229650, 41.899235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106724, 26.623173, 42.358051>,  <38.687294, 26.532759, 41.856518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106724, 26.623173, 42.358051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934528, 26.984114, 42.349640>,  <38.831211, 27.200678, 42.344593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934528, 26.984114, 42.349640>,  <39.106724, 26.623173, 42.358051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934528, 26.984114, 42.349640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012310, 0.029161, 0.999499,
		0.902513, 0.430011, -0.023662,
		-0.430486, 0.902352, -0.021025,
		38.805382, 27.254820, 42.343334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457615, 27.001743, 42.896507>,  <39.106724, 26.623173, 42.358051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457615, 27.001743, 42.896507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131535, 27.224375, 42.832424>,  <38.935886, 27.357954, 42.793976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131535, 27.224375, 42.832424>,  <39.457615, 27.001743, 42.896507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131535, 27.224375, 42.832424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066919, 0.184240, 0.980600,
		0.575297, 0.810109, -0.112947,
		-0.815203, 0.556578, -0.160204,
		38.886974, 27.391348, 42.784363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438248, 27.785765, 43.089020>,  <39.457615, 27.001743, 42.896507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438248, 27.785765, 43.089020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072159, 27.627348, 43.118752>,  <38.852505, 27.532299, 43.136589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072159, 27.627348, 43.118752>,  <39.438248, 27.785765, 43.089020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072159, 27.627348, 43.118752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016419, 0.220949, 0.975147,
		-0.402620, 0.891254, -0.208720,
		-0.915220, -0.396041, 0.074325,
		38.797592, 27.508535, 43.141048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053207, 28.273174, 43.360420>,  <39.438248, 27.785765, 43.089020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053207, 28.273174, 43.360420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867008, 27.930418, 43.449005>,  <38.755287, 27.724764, 43.502155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867008, 27.930418, 43.449005>,  <39.053207, 28.273174, 43.360420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867008, 27.930418, 43.449005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215879, 0.352603, 0.910531,
		-0.858316, 0.376042, -0.349122,
		-0.465499, -0.856892, 0.221466,
		38.727360, 27.673351, 43.515446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517517, 28.483839, 43.776386>,  <39.053207, 28.273174, 43.360420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517517, 28.483839, 43.776386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514282, 28.088947, 43.840023>,  <38.512341, 27.852013, 43.878204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.514282, 28.088947, 43.840023>,  <38.517517, 28.483839, 43.776386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514282, 28.088947, 43.840023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413291, 0.148174, 0.898463,
		-0.910563, -0.058488, -0.409211,
		-0.008086, -0.987230, 0.159095,
		38.511856, 27.792778, 43.887753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831127, 28.331003, 43.954872>,  <38.517517, 28.483839, 43.776386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831127, 28.331003, 43.954872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059532, 28.029680, 44.085388>,  <38.196575, 27.848886, 44.163700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059532, 28.029680, 44.085388>,  <37.831127, 28.331003, 43.954872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059532, 28.029680, 44.085388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490696, 0.005455, 0.871314,
		-0.658148, -0.657644, -0.366531,
		0.571015, -0.753309, 0.326294,
		38.230835, 27.803688, 44.183277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390610, 27.972412, 44.399082>,  <37.831127, 28.331003, 43.954872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390610, 27.972412, 44.399082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759224, 27.866663, 44.512840>,  <37.980392, 27.803213, 44.581093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759224, 27.866663, 44.512840>,  <37.390610, 27.972412, 44.399082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759224, 27.866663, 44.512840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271406, 0.085223, 0.958684,
		-0.277689, -0.960647, 0.006783,
		0.921535, -0.264375, 0.284391,
		38.035686, 27.787352, 44.598156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355145, 27.445219, 44.824955>,  <37.390610, 27.972412, 44.399082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355145, 27.445219, 44.824955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708427, 27.598705, 44.932808>,  <37.920399, 27.690798, 44.997520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708427, 27.598705, 44.932808>,  <37.355145, 27.445219, 44.824955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708427, 27.598705, 44.932808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258753, -0.080806, 0.962558,
		0.391137, -0.919909, 0.027919,
		0.883209, 0.383716, 0.269635,
		37.973389, 27.713820, 45.013699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504253, 27.101200, 45.461327>,  <37.355145, 27.445219, 44.824955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504253, 27.101200, 45.461327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754169, 27.411163, 45.423050>,  <37.904118, 27.597141, 45.400082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.754169, 27.411163, 45.423050>,  <37.504253, 27.101200, 45.461327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754169, 27.411163, 45.423050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069823, 0.177523, 0.981637,
		0.777665, -0.606634, 0.165021,
		0.624789, 0.774907, -0.095696,
		37.941605, 27.643635, 45.394341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869370, 27.058353, 46.088306>,  <37.504253, 27.101200, 45.461327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869370, 27.058353, 46.088306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929447, 27.431269, 45.956680>,  <37.965496, 27.655018, 45.877705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929447, 27.431269, 45.956680>,  <37.869370, 27.058353, 46.088306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929447, 27.431269, 45.956680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157838, 0.351181, 0.922908,
		0.975976, -0.086678, 0.199896,
		0.150196, 0.932287, -0.329063,
		37.974506, 27.710955, 45.857960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417095, 27.387081, 46.507286>,  <37.869370, 27.058353, 46.088306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417095, 27.387081, 46.507286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176151, 27.670036, 46.359356>,  <38.031586, 27.839809, 46.270599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176151, 27.670036, 46.359356>,  <38.417095, 27.387081, 46.507286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176151, 27.670036, 46.359356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095893, 0.395827, 0.913305,
		0.792447, 0.585598, -0.170596,
		-0.602356, 0.707387, -0.369826,
		37.995445, 27.882252, 46.248409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617359, 28.010031, 46.882946>,  <38.417095, 27.387081, 46.507286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617359, 28.010031, 46.882946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258060, 28.117090, 46.743511>,  <38.042480, 28.181326, 46.659851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258060, 28.117090, 46.743511>,  <38.617359, 28.010031, 46.882946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258060, 28.117090, 46.743511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255045, 0.328492, 0.909420,
		0.357915, 0.905791, -0.226804,
		-0.898248, 0.267650, -0.348589,
		37.988586, 28.197386, 46.638935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482964, 28.839050, 47.137577>,  <38.617359, 28.010031, 46.882946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482964, 28.839050, 47.137577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138908, 28.651474, 47.057327>,  <37.932476, 28.538927, 47.009178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138908, 28.651474, 47.057327>,  <38.482964, 28.839050, 47.137577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138908, 28.651474, 47.057327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392544, 0.357457, 0.847428,
		-0.325679, 0.807662, -0.491544,
		-0.860141, -0.468942, -0.200626,
		37.880867, 28.510792, 46.997139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954067, 29.339016, 47.214081>,  <38.482964, 28.839050, 47.137577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954067, 29.339016, 47.214081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793961, 28.976803, 47.270359>,  <37.697895, 28.759474, 47.304127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793961, 28.976803, 47.270359>,  <37.954067, 29.339016, 47.214081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793961, 28.976803, 47.270359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466332, 0.333434, 0.819363,
		-0.788874, 0.262353, -0.555742,
		-0.400265, -0.905535, 0.140694,
		37.673882, 28.705143, 47.312569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316536, 29.449970, 47.454288>,  <37.954067, 29.339016, 47.214081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316536, 29.449970, 47.454288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427982, 29.091471, 47.592339>,  <37.494850, 28.876371, 47.675167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427982, 29.091471, 47.592339>,  <37.316536, 29.449970, 47.454288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427982, 29.091471, 47.592339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439768, 0.200412, 0.875465,
		-0.853801, -0.395694, -0.338304,
		0.278617, -0.896248, 0.345126,
		37.511566, 28.822596, 47.695877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889599, 30.041004, 47.605297>,  <37.316536, 29.449970, 47.454288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889599, 30.041004, 47.605297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039314, 30.296928, 47.873787>,  <37.129143, 30.450483, 48.034882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039314, 30.296928, 47.873787>,  <36.889599, 30.041004, 47.605297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039314, 30.296928, 47.873787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484361, 0.482363, -0.729877,
		-0.790759, 0.598304, -0.129355,
		0.374292, 0.639811, 0.671228,
		37.151604, 30.488873, 48.075153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805653, 30.691196, 47.251392>,  <36.889599, 30.041004, 47.605297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805653, 30.691196, 47.251392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087982, 30.723848, 47.532860>,  <37.257381, 30.743441, 47.701740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087982, 30.723848, 47.532860>,  <36.805653, 30.691196, 47.251392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087982, 30.723848, 47.532860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595848, 0.468813, -0.652058,
		-0.383117, 0.879517, 0.282259,
		0.705823, 0.081631, 0.703669,
		37.299728, 30.748337, 47.743961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977764, 31.456684, 47.276363>,  <36.805653, 30.691196, 47.251392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977764, 31.456684, 47.276363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277504, 31.204714, 47.358017>,  <37.457348, 31.053532, 47.407009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277504, 31.204714, 47.358017>,  <36.977764, 31.456684, 47.276363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277504, 31.204714, 47.358017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559772, 0.437929, -0.703472,
		0.353739, 0.641415, 0.680776,
		0.749349, -0.629925, 0.204134,
		37.502308, 31.015736, 47.419258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526909, 31.836710, 47.084103>,  <36.977764, 31.456684, 47.276363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526909, 31.836710, 47.084103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662849, 31.464920, 47.141487>,  <37.744411, 31.241846, 47.175919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662849, 31.464920, 47.141487>,  <37.526909, 31.836710, 47.084103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662849, 31.464920, 47.141487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713550, 0.155461, -0.683138,
		0.612657, 0.334528, 0.716060,
		0.339848, -0.929474, 0.143459,
		37.764805, 31.186077, 47.184525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200474, 31.958124, 47.010605>,  <37.526909, 31.836710, 47.084103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200474, 31.958124, 47.010605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132439, 31.566536, 46.965553>,  <38.091618, 31.331583, 46.938522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132439, 31.566536, 46.965553>,  <38.200474, 31.958124, 47.010605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132439, 31.566536, 46.965553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523895, 0.006972, -0.851754,
		0.834629, -0.203875, 0.511693,
		-0.170084, -0.978972, -0.112629,
		38.081413, 31.272844, 46.931767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792107, 31.698202, 46.722038>,  <38.200474, 31.958124, 47.010605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792107, 31.698202, 46.722038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496696, 31.443096, 46.634552>,  <38.319450, 31.290031, 46.582062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496696, 31.443096, 46.634552>,  <38.792107, 31.698202, 46.722038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496696, 31.443096, 46.634552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362422, -0.101981, -0.926418,
		0.568534, -0.763449, 0.306457,
		-0.738526, -0.637767, -0.218711,
		38.275139, 31.251766, 46.568939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188980, 31.206640, 46.182671>,  <38.792107, 31.698202, 46.722038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188980, 31.206640, 46.182671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802479, 31.105009, 46.165745>,  <38.570576, 31.044029, 46.155590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802479, 31.105009, 46.165745>,  <39.188980, 31.206640, 46.182671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802479, 31.105009, 46.165745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108350, -0.251912, -0.961665,
		0.233681, -0.933801, 0.270942,
		-0.966257, -0.254079, -0.042310,
		38.512600, 31.028786, 46.153053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156593, 30.554789, 45.788334>,  <39.188980, 31.206640, 46.182671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156593, 30.554789, 45.788334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808250, 30.749237, 45.759254>,  <38.599243, 30.865906, 45.741806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808250, 30.749237, 45.759254>,  <39.156593, 30.554789, 45.788334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808250, 30.749237, 45.759254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101394, -0.322398, -0.941158,
		-0.480956, -0.812247, 0.330054,
		-0.870862, 0.486121, -0.072702,
		38.546993, 30.895073, 45.737442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809296, 30.136305, 45.336132>,  <39.156593, 30.554789, 45.788334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809296, 30.136305, 45.336132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608051, 30.481577, 45.319160>,  <38.487305, 30.688740, 45.308975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608051, 30.481577, 45.319160>,  <38.809296, 30.136305, 45.336132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608051, 30.481577, 45.319160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196374, -0.161998, -0.967054,
		-0.841616, -0.478201, 0.251009,
		-0.503109, 0.863181, -0.042434,
		38.457119, 30.740532, 45.306431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218922, 30.040335, 45.023670>,  <38.809296, 30.136305, 45.336132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218922, 30.040335, 45.023670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257103, 30.432949, 44.957371>,  <38.280010, 30.668518, 44.917591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257103, 30.432949, 44.957371>,  <38.218922, 30.040335, 45.023670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257103, 30.432949, 44.957371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113766, -0.154664, -0.981395,
		-0.988912, 0.112530, 0.096903,
		0.095449, 0.981538, -0.165751,
		38.285736, 30.727411, 44.907646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787556, 30.201086, 44.504143>,  <38.218922, 30.040335, 45.023670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787556, 30.201086, 44.504143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013489, 30.530613, 44.485020>,  <38.149048, 30.728329, 44.473545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.013489, 30.530613, 44.485020>,  <37.787556, 30.201086, 44.504143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.013489, 30.530613, 44.485020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172219, 0.061029, -0.983166,
		-0.807031, 0.563561, 0.176348,
		0.564837, 0.823817, -0.047804,
		38.182941, 30.777758, 44.470680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382465, 30.689699, 44.074608>,  <37.787556, 30.201086, 44.504143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382465, 30.689699, 44.074608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758671, 30.823618, 44.051445>,  <37.984394, 30.903969, 44.037548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.758671, 30.823618, 44.051445>,  <37.382465, 30.689699, 44.074608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758671, 30.823618, 44.051445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089649, 0.080147, -0.992743,
		-0.327727, 0.938876, 0.105393,
		0.940510, 0.334797, -0.057903,
		38.040825, 30.924057, 44.034073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325729, 31.228443, 43.552055>,  <37.382465, 30.689699, 44.074608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325729, 31.228443, 43.552055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717220, 31.150290, 43.577068>,  <37.952114, 31.103397, 43.592075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717220, 31.150290, 43.577068>,  <37.325729, 31.228443, 43.552055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717220, 31.150290, 43.577068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086096, 0.114514, -0.989684,
		0.186207, 0.974018, 0.128900,
		0.978731, -0.195384, 0.062536,
		38.010841, 31.091675, 43.595829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633648, 31.780947, 43.159115>,  <37.325729, 31.228443, 43.552055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633648, 31.780947, 43.159115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910152, 31.491985, 43.165894>,  <38.076057, 31.318607, 43.169960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910152, 31.491985, 43.165894>,  <37.633648, 31.780947, 43.159115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910152, 31.491985, 43.165894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201978, 0.170650, -0.964409,
		0.693801, 0.670083, 0.263874,
		0.691263, -0.722404, 0.016945,
		38.117531, 31.275265, 43.170979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120094, 32.014668, 42.693455>,  <37.633648, 31.780947, 43.159115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120094, 32.014668, 42.693455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213440, 31.628672, 42.741341>,  <38.269447, 31.397074, 42.770073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213440, 31.628672, 42.741341>,  <38.120094, 32.014668, 42.693455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213440, 31.628672, 42.741341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167226, -0.081453, -0.982548,
		0.957902, 0.249313, 0.142364,
		0.233366, -0.964991, 0.119716,
		38.283451, 31.339174, 42.777256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821728, 31.965435, 42.495480>,  <38.120094, 32.014668, 42.693455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821728, 31.965435, 42.495480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648647, 31.606056, 42.465649>,  <38.544800, 31.390429, 42.447750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648647, 31.606056, 42.465649>,  <38.821728, 31.965435, 42.495480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648647, 31.606056, 42.465649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133084, 0.018162, -0.990938,
		0.891660, -0.438707, 0.111710,
		-0.432702, -0.898447, -0.074579,
		38.518837, 31.336523, 42.443275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309792, 31.511696, 42.159023>,  <38.821728, 31.965435, 42.495480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309792, 31.511696, 42.159023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941116, 31.359591, 42.128330>,  <38.719910, 31.268328, 42.109913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941116, 31.359591, 42.128330>,  <39.309792, 31.511696, 42.159023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941116, 31.359591, 42.128330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223823, -0.359715, -0.905819,
		0.316845, -0.852060, 0.416658,
		-0.921690, -0.380262, -0.076736,
		38.664608, 31.245512, 42.105309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427685, 30.785816, 41.938435>,  <39.309792, 31.511696, 42.159023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427685, 30.785816, 41.938435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051186, 30.885046, 41.846779>,  <38.825287, 30.944584, 41.791786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051186, 30.885046, 41.846779>,  <39.427685, 30.785816, 41.938435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051186, 30.885046, 41.846779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085990, -0.480098, -0.872990,
		-0.326575, -0.841407, 0.430561,
		-0.941251, 0.248072, -0.229141,
		38.768810, 30.959469, 41.778038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266865, 30.212671, 41.645664>,  <39.427685, 30.785816, 41.938435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266865, 30.212671, 41.645664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000721, 30.482063, 41.516838>,  <38.841034, 30.643698, 41.439545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000721, 30.482063, 41.516838>,  <39.266865, 30.212671, 41.645664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000721, 30.482063, 41.516838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064189, -0.378207, -0.923493,
		-0.743760, -0.635127, 0.208413,
		-0.665358, 0.673479, -0.322063,
		38.801113, 30.684107, 41.420219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752190, 29.838800, 41.138893>,  <39.266865, 30.212671, 41.645664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752190, 29.838800, 41.138893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691765, 30.222097, 41.041775>,  <38.655510, 30.452076, 40.983501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691765, 30.222097, 41.041775>,  <38.752190, 29.838800, 41.138893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691765, 30.222097, 41.041775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218528, -0.207170, -0.953586,
		-0.964067, -0.197111, -0.178106,
		-0.151063, 0.958242, -0.242800,
		38.646446, 30.509569, 40.968933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469234, 29.727261, 40.435448>,  <38.752190, 29.838800, 41.138893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469234, 29.727261, 40.435448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559414, 30.115431, 40.469978>,  <38.613522, 30.348333, 40.490696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559414, 30.115431, 40.469978>,  <38.469234, 29.727261, 40.435448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559414, 30.115431, 40.469978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276674, 0.021187, -0.960730,
		-0.934144, 0.240478, -0.263715,
		0.225447, 0.970423, 0.086325,
		38.627048, 30.406557, 40.495876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123878, 30.031889, 39.861271>,  <38.469234, 29.727261, 40.435448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123878, 30.031889, 39.861271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425484, 30.270409, 39.971462>,  <38.606449, 30.413521, 40.037579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.425484, 30.270409, 39.971462>,  <38.123878, 30.031889, 39.861271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425484, 30.270409, 39.971462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150967, 0.250841, -0.956184,
		-0.639273, 0.762565, 0.099116,
		0.754015, 0.596300, 0.275478,
		38.651688, 30.449299, 40.054108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005299, 30.707457, 39.582512>,  <38.123878, 30.031889, 39.861271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005299, 30.707457, 39.582512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401947, 30.691488, 39.631641>,  <38.639938, 30.681908, 39.661118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401947, 30.691488, 39.631641>,  <38.005299, 30.707457, 39.582512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401947, 30.691488, 39.631641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126717, 0.484399, -0.865621,
		-0.024937, 0.873936, 0.485401,
		0.991625, -0.039922, 0.122822,
		38.699436, 30.679512, 39.668488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307526, 31.355019, 39.269806>,  <38.005299, 30.707457, 39.582512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307526, 31.355019, 39.269806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617207, 31.105043, 39.309925>,  <38.803017, 30.955059, 39.333996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617207, 31.105043, 39.309925>,  <38.307526, 31.355019, 39.269806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617207, 31.105043, 39.309925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435679, 0.411235, -0.800668,
		0.459120, 0.663580, 0.590652,
		0.774204, -0.624938, 0.100302,
		38.849468, 30.917562, 39.340015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895462, 31.689898, 39.094170>,  <38.307526, 31.355019, 39.269806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895462, 31.689898, 39.094170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013859, 31.309042, 39.063648>,  <39.084896, 31.080528, 39.045338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013859, 31.309042, 39.063648>,  <38.895462, 31.689898, 39.094170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013859, 31.309042, 39.063648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410606, 0.198954, -0.889843,
		0.862432, 0.232061, 0.449843,
		0.295996, -0.952137, -0.076299,
		39.102657, 31.023401, 39.040760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346638, 31.683132, 38.632023>,  <38.895462, 31.689898, 39.094170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346638, 31.683132, 38.632023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311737, 31.284662, 38.633724>,  <39.290794, 31.045580, 38.634747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311737, 31.284662, 38.633724>,  <39.346638, 31.683132, 38.632023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311737, 31.284662, 38.633724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420690, -0.040717, -0.906290,
		0.902999, -0.077291, 0.422634,
		-0.087256, -0.996177, 0.004252,
		39.285561, 30.985809, 38.634998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012833, 31.441359, 38.392967>,  <39.346638, 31.683132, 38.632023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012833, 31.441359, 38.392967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704468, 31.193787, 38.332806>,  <39.519447, 31.045244, 38.296711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704468, 31.193787, 38.332806>,  <40.012833, 31.441359, 38.392967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704468, 31.193787, 38.332806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190130, 0.001751, -0.981757,
		0.607902, -0.785444, 0.116328,
		-0.770912, -0.618930, -0.150401,
		39.473194, 31.008108, 38.287685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261887, 31.050619, 37.805946>,  <40.012833, 31.441359, 38.392967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261887, 31.050619, 37.805946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869209, 30.974487, 37.809074>,  <39.633602, 30.928808, 37.810951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869209, 30.974487, 37.809074>,  <40.261887, 31.050619, 37.805946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869209, 30.974487, 37.809074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020654, -0.147165, -0.988896,
		0.189367, -0.970628, 0.148401,
		-0.981689, -0.190329, 0.007821,
		39.574703, 30.917389, 37.811420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239895, 30.634848, 37.252800>,  <40.261887, 31.050619, 37.805946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239895, 30.634848, 37.252800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863647, 30.756094, 37.313934>,  <39.637897, 30.828842, 37.350613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.863647, 30.756094, 37.313934>,  <40.239895, 30.634848, 37.252800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863647, 30.756094, 37.313934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158101, 0.007234, -0.987396,
		-0.300403, -0.952926, 0.041119,
		-0.940618, 0.303117, 0.152832,
		39.581463, 30.847029, 37.359783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906406, 30.311085, 36.736862>,  <40.239895, 30.634848, 37.252800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906406, 30.311085, 36.736862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661526, 30.608212, 36.845261>,  <39.514599, 30.786488, 36.910301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661526, 30.608212, 36.845261>,  <39.906406, 30.311085, 36.736862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661526, 30.608212, 36.845261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184286, 0.199252, -0.962464,
		-0.768930, -0.639159, 0.014909,
		-0.612197, 0.742815, 0.270999,
		39.477867, 30.831057, 36.926559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303410, 30.207527, 36.433357>,  <39.906406, 30.311085, 36.736862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303410, 30.207527, 36.433357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305447, 30.601902, 36.500175>,  <39.306671, 30.838526, 36.540268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305447, 30.601902, 36.500175>,  <39.303410, 30.207527, 36.433357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305447, 30.601902, 36.500175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187194, 0.165040, -0.968360,
		-0.982310, -0.026337, 0.185402,
		0.005095, 0.985935, 0.167050,
		39.306976, 30.897682, 36.550289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819046, 30.474228, 35.961475>,  <39.303410, 30.207527, 36.433357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819046, 30.474228, 35.961475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036747, 30.797560, 36.051262>,  <39.167370, 30.991560, 36.105133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036747, 30.797560, 36.051262>,  <38.819046, 30.474228, 35.961475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036747, 30.797560, 36.051262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027107, 0.284375, -0.958330,
		-0.838482, 0.515491, 0.176684,
		0.544255, 0.808332, 0.224470,
		39.200024, 31.040060, 36.118603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407562, 31.030342, 35.681011>,  <38.819046, 30.474228, 35.961475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407562, 31.030342, 35.681011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784683, 31.152531, 35.734402>,  <39.010956, 31.225843, 35.766434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784683, 31.152531, 35.734402>,  <38.407562, 31.030342, 35.681011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784683, 31.152531, 35.734402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035219, 0.489426, -0.871333,
		-0.331493, 0.816792, 0.472190,
		0.942800, 0.305471, 0.133475,
		39.067524, 31.244171, 35.774445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448978, 31.786211, 35.624107>,  <38.407562, 31.030342, 35.681011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448978, 31.786211, 35.624107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800968, 31.622620, 35.527466>,  <39.012161, 31.524466, 35.469479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800968, 31.622620, 35.527466>,  <38.448978, 31.786211, 35.624107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800968, 31.622620, 35.527466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016002, 0.482823, -0.875572,
		0.474744, 0.774350, 0.418330,
		0.879978, -0.408978, -0.241609,
		39.064960, 31.499926, 35.454983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724781, 32.265369, 35.256176>,  <38.448978, 31.786211, 35.624107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724781, 32.265369, 35.256176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002834, 31.990250, 35.172535>,  <39.169666, 31.825178, 35.122349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002834, 31.990250, 35.172535>,  <38.724781, 32.265369, 35.256176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002834, 31.990250, 35.172535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064867, 0.349697, -0.934615,
		0.715949, 0.636117, 0.287701,
		0.695132, -0.687799, -0.209102,
		39.211372, 31.783911, 35.109806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298065, 32.640423, 34.877945>,  <38.724781, 32.265369, 35.256176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298065, 32.640423, 34.877945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375259, 32.257660, 34.791149>,  <39.421574, 32.028000, 34.739071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375259, 32.257660, 34.791149>,  <39.298065, 32.640423, 34.877945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375259, 32.257660, 34.791149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282891, 0.266014, -0.921526,
		0.939537, 0.116456, 0.322037,
		0.192983, -0.956909, -0.216985,
		39.433155, 31.970587, 34.726055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917072, 32.571758, 34.566784>,  <39.298065, 32.640423, 34.877945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917072, 32.571758, 34.566784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758343, 32.230759, 34.430676>,  <39.663105, 32.026161, 34.349010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758343, 32.230759, 34.430676>,  <39.917072, 32.571758, 34.566784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758343, 32.230759, 34.430676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344095, 0.205515, -0.916167,
		0.850959, -0.480640, 0.211786,
		-0.396821, -0.852496, -0.340271,
		39.639297, 31.975010, 34.328594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445198, 32.234562, 34.332054>,  <39.917072, 32.571758, 34.566784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445198, 32.234562, 34.332054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131981, 32.057533, 34.157253>,  <39.944050, 31.951315, 34.052372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.131981, 32.057533, 34.157253>,  <40.445198, 32.234562, 34.332054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131981, 32.057533, 34.157253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350149, 0.267012, -0.897831,
		0.514042, -0.856057, -0.054115,
		-0.783043, -0.442574, -0.437003,
		39.897068, 31.924761, 34.026154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744804, 31.799484, 33.852062>,  <40.445198, 32.234562, 34.332054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744804, 31.799484, 33.852062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368710, 31.864456, 33.732346>,  <40.143055, 31.903440, 33.660515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368710, 31.864456, 33.732346>,  <40.744804, 31.799484, 33.852062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368710, 31.864456, 33.732346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330031, 0.218158, -0.918415,
		-0.083888, -0.962301, -0.258728,
		-0.940235, 0.162432, -0.299289,
		40.086639, 31.913185, 33.642559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755081, 31.545481, 33.165165>,  <40.744804, 31.799484, 33.852062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755081, 31.545481, 33.165165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433216, 31.781584, 33.190823>,  <40.240097, 31.923246, 33.206215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433216, 31.781584, 33.190823>,  <40.755081, 31.545481, 33.165165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433216, 31.781584, 33.190823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361271, 0.572483, -0.736034,
		-0.471170, -0.569087, -0.673898,
		-0.804662, 0.590258, 0.064142,
		40.191818, 31.958660, 33.210064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356850, 31.704363, 32.479012>,  <40.755081, 31.545481, 33.165165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356850, 31.704363, 32.479012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333042, 32.013046, 32.732285>,  <40.318760, 32.198257, 32.884251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333042, 32.013046, 32.732285>,  <40.356850, 31.704363, 32.479012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333042, 32.013046, 32.732285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405631, 0.598276, -0.691035,
		-0.912097, 0.215712, -0.348636,
		-0.059516, 0.771709, 0.633185,
		40.315186, 32.244560, 32.922241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162628, 32.377235, 32.083603>,  <40.356850, 31.704363, 32.479012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162628, 32.377235, 32.083603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352303, 32.472313, 32.422695>,  <40.466106, 32.529362, 32.626152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352303, 32.472313, 32.422695>,  <40.162628, 32.377235, 32.083603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352303, 32.472313, 32.422695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626302, 0.585657, -0.514541,
		-0.618785, 0.774923, 0.128838,
		0.474185, 0.237698, 0.847731,
		40.494556, 32.543621, 32.677013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243095, 33.076633, 32.182423>,  <40.162628, 32.377235, 32.083603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243095, 33.076633, 32.182423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538177, 32.886761, 32.374451>,  <40.715229, 32.772839, 32.489666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538177, 32.886761, 32.374451>,  <40.243095, 33.076633, 32.182423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538177, 32.886761, 32.374451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674504, 0.548545, -0.494107,
		-0.028798, 0.688316, 0.724839,
		0.737709, -0.474678, 0.480069,
		40.759491, 32.744358, 32.518471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741680, 33.667397, 32.328606>,  <40.243095, 33.076633, 32.182423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741680, 33.667397, 32.328606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931309, 33.318943, 32.277409>,  <41.045086, 33.109871, 32.246689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931309, 33.318943, 32.277409>,  <40.741680, 33.667397, 32.328606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931309, 33.318943, 32.277409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493003, 0.383066, -0.781158,
		0.729526, 0.307219, 0.611072,
		0.474067, -0.871135, -0.127997,
		41.073528, 33.057602, 32.239010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317917, 33.742470, 32.097580>,  <40.741680, 33.667397, 32.328606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317917, 33.742470, 32.097580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298298, 33.358200, 31.988256>,  <41.286526, 33.127640, 31.922663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298298, 33.358200, 31.988256>,  <41.317917, 33.742470, 32.097580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298298, 33.358200, 31.988256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487462, 0.215812, -0.846053,
		0.871766, -0.174721, 0.457709,
		-0.049044, -0.960676, -0.273307,
		41.283585, 33.069996, 31.906263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032291, 33.512981, 32.089352>,  <41.317917, 33.742470, 32.097580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032291, 33.512981, 32.089352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788731, 33.318817, 31.838398>,  <41.642593, 33.202320, 31.687826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.788731, 33.318817, 31.838398>,  <42.032291, 33.512981, 32.089352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788731, 33.318817, 31.838398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691397, 0.062942, -0.719728,
		0.388853, -0.872017, 0.297287,
		-0.608903, -0.485412, -0.627385,
		41.606060, 33.173195, 31.650183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251484, 32.873672, 31.898449>,  <42.032291, 33.512981, 32.089352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251484, 32.873672, 31.898449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092613, 33.084015, 31.597589>,  <41.997292, 33.210220, 31.417074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.092613, 33.084015, 31.597589>,  <42.251484, 32.873672, 31.898449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.092613, 33.084015, 31.597589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827952, -0.148251, -0.540849,
		-0.395915, -0.837555, -0.376500,
		-0.397175, 0.525854, -0.752150,
		41.973461, 33.241772, 31.371944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858791, 33.042091, 32.033253>,  <42.251484, 32.873672, 31.898449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858791, 33.042091, 32.033253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003349, 33.394901, 32.154198>,  <43.090084, 33.606586, 32.226765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.003349, 33.394901, 32.154198>,  <42.858791, 33.042091, 32.033253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003349, 33.394901, 32.154198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244333, 0.223362, -0.943616,
		-0.899830, 0.414896, -0.134786,
		0.361396, 0.882027, 0.302361,
		43.111767, 33.659508, 32.244907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632305, 33.594204, 31.567822>,  <42.858791, 33.042091, 32.033253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.632305, 33.594204, 31.567822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.939083, 33.785896, 31.738527>,  <43.123150, 33.900913, 31.840950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.939083, 33.785896, 31.738527>,  <42.632305, 33.594204, 31.567822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.939083, 33.785896, 31.738527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377729, 0.200477, -0.903952,
		-0.518761, 0.854484, -0.027265,
		0.766947, 0.479234, 0.426763,
		43.169167, 33.929668, 31.866556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.719250, 34.250465, 31.154634>,  <42.632305, 33.594204, 31.567822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.719250, 34.250465, 31.154634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060646, 34.138760, 31.330618>,  <43.265484, 34.071735, 31.436209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060646, 34.138760, 31.330618>,  <42.719250, 34.250465, 31.154634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.060646, 34.138760, 31.330618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474305, 0.066620, -0.877836,
		0.215840, 0.957900, 0.189317,
		0.853492, -0.279266, 0.439958,
		43.316692, 34.054981, 31.462605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.170734, 34.661743, 30.784124>,  <42.719250, 34.250465, 31.154634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.170734, 34.661743, 30.784124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.438293, 34.426384, 30.965834>,  <43.598827, 34.285168, 31.074860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.438293, 34.426384, 30.965834>,  <43.170734, 34.661743, 30.784124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.438293, 34.426384, 30.965834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643390, 0.152170, -0.750262,
		0.372325, 0.794125, 0.480354,
		0.668897, -0.588397, 0.454275,
		43.638962, 34.249866, 31.102116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.919521, 34.925430, 30.719135>,  <43.170734, 34.661743, 30.784124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.919521, 34.925430, 30.719135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.934734, 34.531437, 30.786507>,  <43.943863, 34.295040, 30.826929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.934734, 34.531437, 30.786507>,  <43.919521, 34.925430, 30.719135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.934734, 34.531437, 30.786507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530753, -0.122900, -0.838568,
		0.846673, 0.121284, 0.518108,
		0.038029, -0.984980, 0.168428,
		43.946144, 34.235943, 30.837034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.573902, 34.747490, 30.556124>,  <43.919521, 34.925430, 30.719135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.573902, 34.747490, 30.556124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392632, 34.390949, 30.551640>,  <44.283871, 34.177025, 30.548948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392632, 34.390949, 30.551640>,  <44.573902, 34.747490, 30.556124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392632, 34.390949, 30.551640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544061, -0.266600, -0.795564,
		0.706139, -0.366628, 0.605766,
		-0.453173, -0.891352, -0.011211,
		44.256680, 34.123543, 30.548277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.116364, 34.299030, 30.482218>,  <44.573902, 34.747490, 30.556124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.116364, 34.299030, 30.482218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.798832, 34.077698, 30.381296>,  <44.608311, 33.944897, 30.320744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.798832, 34.077698, 30.381296>,  <45.116364, 34.299030, 30.482218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.798832, 34.077698, 30.381296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484736, -0.325188, -0.811963,
		0.367238, -0.766863, 0.526363,
		-0.793831, -0.553330, -0.252305,
		44.560684, 33.911697, 30.305605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.353832, 33.650902, 30.426598>,  <45.116364, 34.299030, 30.482218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.353832, 33.650902, 30.426598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.017967, 33.659210, 30.209517>,  <44.816448, 33.664196, 30.079268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.017967, 33.659210, 30.209517>,  <45.353832, 33.650902, 30.426598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.017967, 33.659210, 30.209517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509629, -0.315251, -0.800559,
		-0.187716, -0.948781, 0.254120,
		-0.839667, 0.020771, -0.542704,
		44.766068, 33.665443, 30.046705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.291370, 32.942917, 30.031755>,  <45.353832, 33.650902, 30.426598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.291370, 32.942917, 30.031755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082737, 33.200188, 29.807514>,  <44.957558, 33.354549, 29.672970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.082737, 33.200188, 29.807514>,  <45.291370, 32.942917, 30.031755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.082737, 33.200188, 29.807514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360243, -0.429601, -0.828051,
		-0.773419, -0.633849, -0.007629,
		-0.521582, 0.643178, -0.560601,
		44.926262, 33.393143, 29.639334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.039345, 32.482548, 29.529224>,  <45.291370, 32.942917, 30.031755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.039345, 32.482548, 29.529224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.012726, 32.858971, 29.396570>,  <44.996754, 33.084824, 29.316978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.012726, 32.858971, 29.396570>,  <45.039345, 32.482548, 29.529224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.012726, 32.858971, 29.396570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301251, -0.297911, -0.905813,
		-0.951220, -0.160188, -0.263668,
		-0.066551, 0.941057, -0.331636,
		44.992760, 33.141289, 29.297079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.820492, 32.448128, 28.791758>,  <45.039345, 32.482548, 29.529224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.820492, 32.448128, 28.791758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.988213, 32.810024, 28.821787>,  <45.088844, 33.027161, 28.839804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.988213, 32.810024, 28.821787>,  <44.820492, 32.448128, 28.791758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.988213, 32.810024, 28.821787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285166, -0.052749, -0.957026,
		-0.861896, 0.422692, -0.280118,
		0.419303, 0.904737, 0.075073,
		45.114002, 33.081444, 28.844309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.900539, 32.676399, 28.005081>,  <44.820492, 32.448128, 28.791758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.900539, 32.676399, 28.005081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.085567, 32.968014, 28.206886>,  <45.196587, 33.142982, 28.327969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.085567, 32.968014, 28.206886>,  <44.900539, 32.676399, 28.005081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.085567, 32.968014, 28.206886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336794, 0.381897, -0.860654,
		-0.820120, 0.568031, -0.068881,
		0.462572, 0.729038, 0.504511,
		45.224339, 33.186726, 28.358240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.641018, 33.327957, 27.696337>,  <44.900539, 32.676399, 28.005081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.641018, 33.327957, 27.696337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.998295, 33.333099, 27.876135>,  <45.212662, 33.336185, 27.984013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.998295, 33.333099, 27.876135>,  <44.641018, 33.327957, 27.696337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.998295, 33.333099, 27.876135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435046, 0.228223, -0.871005,
		-0.113779, 0.973524, 0.198256,
		0.893191, 0.012852, 0.449494,
		45.266251, 33.336956, 28.010983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.922913, 33.983681, 27.444880>,  <44.641018, 33.327957, 27.696337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.922913, 33.983681, 27.444880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.229347, 33.749737, 27.551500>,  <45.413208, 33.609371, 27.615473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.229347, 33.749737, 27.551500>,  <44.922913, 33.983681, 27.444880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.229347, 33.749737, 27.551500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498192, 0.278304, -0.821189,
		0.406100, 0.761895, 0.504578,
		0.766086, -0.584861, 0.266550,
		45.459171, 33.574280, 27.631466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.559978, 34.312553, 27.294968>,  <44.922913, 33.983681, 27.444880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.559978, 34.312553, 27.294968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.702785, 33.940075, 27.324379>,  <45.788471, 33.716587, 27.342026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.702785, 33.940075, 27.324379>,  <45.559978, 34.312553, 27.294968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.702785, 33.940075, 27.324379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455719, 0.104927, -0.883918,
		0.815389, 0.349080, 0.461826,
		0.357016, -0.931200, 0.073526,
		45.809891, 33.660713, 27.346437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.209366, 34.387386, 27.175938>,  <45.559978, 34.312553, 27.294968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.209366, 34.387386, 27.175938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.158432, 33.997322, 27.103436>,  <46.127872, 33.763283, 27.059935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.158432, 33.997322, 27.103436>,  <46.209366, 34.387386, 27.175938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.158432, 33.997322, 27.103436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457689, 0.104355, -0.882967,
		0.879947, -0.195396, 0.433030,
		-0.127339, -0.975157, -0.181257,
		46.120232, 33.704777, 27.049059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.823002, 34.125137, 26.858051>,  <46.209366, 34.387386, 27.175938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.823002, 34.125137, 26.858051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.537231, 33.864628, 26.755726>,  <46.365768, 33.708321, 26.694330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.537231, 33.864628, 26.755726>,  <46.823002, 34.125137, 26.858051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.537231, 33.864628, 26.755726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380631, -0.054960, -0.923092,
		0.587130, -0.756847, 0.287161,
		-0.714422, -0.651277, -0.255811,
		46.322906, 33.669243, 26.678982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.181099, 33.534782, 26.586147>,  <46.823002, 34.125137, 26.858051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.181099, 33.534782, 26.586147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.808826, 33.542297, 26.440004>,  <46.585464, 33.546806, 26.352318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.808826, 33.542297, 26.440004>,  <47.181099, 33.534782, 26.586147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.808826, 33.542297, 26.440004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365757, 0.026519, -0.930332,
		-0.007797, -0.999472, -0.031555,
		-0.930678, 0.018795, -0.365357,
		46.529625, 33.547935, 26.330397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.186638, 32.959705, 25.959118>,  <47.181099, 33.534782, 26.586147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.186638, 32.959705, 25.959118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.858212, 33.183147, 25.912119>,  <46.661156, 33.317211, 25.883919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.858212, 33.183147, 25.912119>,  <47.186638, 32.959705, 25.959118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.858212, 33.183147, 25.912119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207814, 0.100803, -0.972960,
		-0.531657, -0.823285, -0.198852,
		-0.821069, 0.558605, -0.117498,
		46.611893, 33.350731, 25.876869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.145447, 32.982746, 25.274141>,  <47.186638, 32.959705, 25.959118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.145447, 32.982746, 25.274141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.856995, 33.254604, 25.327881>,  <46.683922, 33.417721, 25.360125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.856995, 33.254604, 25.327881>,  <47.145447, 32.982746, 25.274141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.856995, 33.254604, 25.327881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079422, 0.273745, -0.958517,
		-0.688232, -0.680545, -0.251385,
		-0.721130, 0.679648, 0.134350,
		46.640656, 33.458500, 25.368185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.596634, 32.686256, 24.953083>,  <47.145447, 32.982746, 25.274141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.596634, 32.686256, 24.953083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.608154, 33.084995, 24.982662>,  <46.615067, 33.324238, 25.000410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.608154, 33.084995, 24.982662>,  <46.596634, 32.686256, 24.953083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.608154, 33.084995, 24.982662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004740, 0.074116, -0.997238,
		-0.999574, 0.028369, 0.006859,
		0.028799, 0.996846, 0.073950,
		46.616795, 33.384048, 25.004847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.843014, 33.202320, 24.811888>,  <46.596634, 32.686256, 24.953083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.843014, 33.202320, 24.811888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.217026, 33.310791, 24.720514>,  <46.441433, 33.375874, 24.665689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.217026, 33.310791, 24.720514>,  <45.843014, 33.202320, 24.811888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.217026, 33.310791, 24.720514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239691, 0.008673, -0.970810,
		-0.261284, 0.962489, 0.073110,
		0.935029, 0.271181, -0.228434,
		46.497536, 33.392147, 24.651983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.880768, 33.895386, 24.451805>,  <45.843014, 33.202320, 24.811888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.880768, 33.895386, 24.451805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.216084, 33.709110, 24.338379>,  <46.417271, 33.597343, 24.270323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.216084, 33.709110, 24.338379>,  <45.880768, 33.895386, 24.451805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.216084, 33.709110, 24.338379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214534, 0.196403, -0.956766,
		0.501250, 0.862878, 0.064735,
		0.838286, -0.465691, -0.283563,
		46.467571, 33.569405, 24.253309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.301243, 34.380939, 24.186090>,  <45.880768, 33.895386, 24.451805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.301243, 34.380939, 24.186090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.331192, 34.019287, 24.017830>,  <46.349163, 33.802296, 23.916874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.331192, 34.019287, 24.017830>,  <46.301243, 34.380939, 24.186090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.331192, 34.019287, 24.017830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344416, 0.372427, -0.861786,
		0.935826, 0.209407, -0.283510,
		0.074877, -0.904128, -0.420650,
		46.353657, 33.748051, 23.891634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.218811, 34.574093, 23.472151>,  <46.301243, 34.380939, 24.186090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.218811, 34.574093, 23.472151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.302208, 34.183067, 23.460142>,  <46.352245, 33.948452, 23.452936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.302208, 34.183067, 23.460142>,  <46.218811, 34.574093, 23.472151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.302208, 34.183067, 23.460142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239571, -0.021285, -0.970645,
		0.948228, 0.209566, -0.238634,
		0.208494, -0.977563, -0.030023,
		46.364758, 33.889797, 23.451136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.018902, 35.294258, 23.440195>,  <46.218811, 34.574093, 23.472151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.018902, 35.294258, 23.440195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.395618, 35.259270, 23.310343>,  <46.621647, 35.238277, 23.232431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.395618, 35.259270, 23.310343>,  <46.018902, 35.294258, 23.440195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.395618, 35.259270, 23.310343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276094, 0.349789, -0.895220,
		0.191857, 0.932736, 0.305277,
		0.941787, -0.087469, -0.324632,
		46.678154, 35.233028, 23.212954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.139896, 35.913563, 23.096945>,  <46.018902, 35.294258, 23.440195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.139896, 35.913563, 23.096945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.400639, 35.641815, 22.962162>,  <46.557083, 35.478767, 22.881292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.400639, 35.641815, 22.962162>,  <46.139896, 35.913563, 23.096945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.400639, 35.641815, 22.962162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132106, 0.335808, -0.932621,
		0.746751, 0.652445, 0.129147,
		0.651852, -0.679374, -0.336957,
		46.596195, 35.438004, 22.861074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.581154, 36.076092, 23.606619>,  <46.139896, 35.913563, 23.096945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.581154, 36.076092, 23.606619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.762188, 36.413422, 23.722527>,  <45.870808, 36.615822, 23.792070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.762188, 36.413422, 23.722527>,  <45.581154, 36.076092, 23.606619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.762188, 36.413422, 23.722527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032904, -0.340527, 0.939659,
		0.891114, -0.415741, -0.181866,
		0.452585, 0.843327, 0.289769,
		45.897964, 36.666420, 23.809458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.438610, 36.631462, 24.096510>,  <45.581154, 36.076092, 23.606619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.438610, 36.631462, 24.096510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.682583, 36.920048, 24.227650>,  <45.828964, 37.093197, 24.306334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.682583, 36.920048, 24.227650>,  <45.438610, 36.631462, 24.096510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.682583, 36.920048, 24.227650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265737, -0.203552, 0.942311,
		0.746574, -0.661862, 0.067567,
		0.609927, 0.721460, 0.327848,
		45.865562, 37.136486, 24.326004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.965290, 36.376122, 24.540047>,  <45.438610, 36.631462, 24.096510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.965290, 36.376122, 24.540047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.861591, 36.747570, 24.646217>,  <45.799374, 36.970440, 24.709921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.861591, 36.747570, 24.646217>,  <45.965290, 36.376122, 24.540047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.861591, 36.747570, 24.646217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072143, -0.292676, 0.953486,
		0.963113, 0.228039, 0.142869,
		-0.259246, 0.928622, 0.265429,
		45.783817, 37.026157, 24.725845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.439793, 36.662178, 25.047546>,  <45.965290, 36.376122, 24.540047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.439793, 36.662178, 25.047546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.083569, 36.833973, 25.107468>,  <45.869835, 36.937050, 25.143421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.083569, 36.833973, 25.107468>,  <46.439793, 36.662178, 25.047546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.083569, 36.833973, 25.107468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097519, -0.141401, 0.985137,
		0.444287, 0.891934, 0.084043,
		-0.890561, 0.429488, 0.149803,
		45.816399, 36.962818, 25.152409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.649834, 37.019142, 25.669163>,  <46.439793, 36.662178, 25.047546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.649834, 37.019142, 25.669163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.259129, 36.951355, 25.616695>,  <46.024704, 36.910683, 25.585215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.259129, 36.951355, 25.616695>,  <46.649834, 37.019142, 25.669163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.259129, 36.951355, 25.616695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086934, -0.246102, 0.965337,
		-0.195878, 0.954313, 0.225652,
		-0.976767, -0.169471, -0.131168,
		45.966099, 36.900513, 25.577345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.370754, 37.364235, 26.194975>,  <46.649834, 37.019142, 25.669163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.370754, 37.364235, 26.194975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082199, 37.109978, 26.085028>,  <45.909065, 36.957424, 26.019060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082199, 37.109978, 26.085028>,  <46.370754, 37.364235, 26.194975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.082199, 37.109978, 26.085028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214738, -0.172025, 0.961402,
		-0.658393, 0.752572, -0.012399,
		-0.721392, -0.635643, -0.274866,
		45.865780, 36.919285, 26.002567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.631554, 37.692513, 26.270807>,  <46.370754, 37.364235, 26.194975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.631554, 37.692513, 26.270807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653141, 37.293480, 26.288338>,  <45.666096, 37.054062, 26.298857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.653141, 37.293480, 26.288338>,  <45.631554, 37.692513, 26.270807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.653141, 37.293480, 26.288338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206908, 0.031767, 0.977845,
		-0.976871, -0.061843, -0.204693,
		0.053970, -0.997580, 0.043828,
		45.669331, 36.994205, 26.301487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.000004, 37.423058, 26.759094>,  <45.631554, 37.692513, 26.270807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.000004, 37.423058, 26.759094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.244423, 37.107128, 26.737904>,  <45.391075, 36.917572, 26.725189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.244423, 37.107128, 26.737904>,  <45.000004, 37.423058, 26.759094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.244423, 37.107128, 26.737904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141963, -0.175175, 0.974249,
		-0.778762, -0.587789, -0.219165,
		0.611045, -0.789821, -0.052975,
		45.427738, 36.870182, 26.722012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.640579, 36.870766, 27.062065>,  <45.000004, 37.423058, 26.759094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.640579, 36.870766, 27.062065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.016701, 36.735893, 27.080563>,  <45.242374, 36.654968, 27.091661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.016701, 36.735893, 27.080563>,  <44.640579, 36.870766, 27.062065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.016701, 36.735893, 27.080563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154913, -0.303040, 0.940302,
		-0.303040, -0.891333, -0.337183,
		-0.940302, 0.337183, -0.046246,
		45.298790, 36.634739, 27.094437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.643707, 36.203400, 27.368589>,  <44.640579, 36.870766, 27.062065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.643707, 36.203400, 27.368589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.020702, 36.326294, 27.421240>,  <45.246899, 36.400032, 27.452831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.020702, 36.326294, 27.421240>,  <44.643707, 36.203400, 27.368589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.020702, 36.326294, 27.421240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040407, -0.286188, 0.957321,
		0.331798, -0.907579, -0.257313,
		0.942485, 0.307240, 0.131629,
		45.303448, 36.418465, 27.460728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.985397, 35.660515, 27.756680>,  <44.643707, 36.203400, 27.368589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.985397, 35.660515, 27.756680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.217339, 35.982792, 27.805058>,  <45.356503, 36.176159, 27.834085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.217339, 35.982792, 27.805058>,  <44.985397, 35.660515, 27.756680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.217339, 35.982792, 27.805058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066597, -0.194828, 0.978574,
		0.811997, -0.559370, -0.166628,
		0.579849, 0.805696, 0.120947,
		45.391293, 36.224503, 27.841341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.620522, 35.305717, 28.056631>,  <44.985397, 35.660515, 27.756680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.620522, 35.305717, 28.056631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.572708, 35.693001, 28.144526>,  <45.544022, 35.925369, 28.197262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.572708, 35.693001, 28.144526>,  <45.620522, 35.305717, 28.056631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.572708, 35.693001, 28.144526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235245, -0.187400, 0.953699,
		0.964558, 0.165688, -0.205366,
		-0.119531, 0.968209, 0.219736,
		45.536850, 35.983463, 28.210445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.146908, 35.446835, 28.524328>,  <45.620522, 35.305717, 28.056631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.146908, 35.446835, 28.524328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.884201, 35.745590, 28.565916>,  <45.726578, 35.924843, 28.590868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.884201, 35.745590, 28.565916>,  <46.146908, 35.446835, 28.524328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.884201, 35.745590, 28.565916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068117, -0.078549, 0.994580,
		0.751009, 0.660292, 0.000712,
		-0.656769, 0.746890, 0.103968,
		45.687172, 35.969658, 28.597107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.525394, 35.984554, 28.758362>,  <46.146908, 35.446835, 28.524328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.525394, 35.984554, 28.758362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.148712, 36.043823, 28.879179>,  <45.922703, 36.079384, 28.951670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.148712, 36.043823, 28.879179>,  <46.525394, 35.984554, 28.758362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.148712, 36.043823, 28.879179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314721, 0.070707, 0.946547,
		0.118893, 0.986431, -0.113217,
		-0.941709, 0.148170, 0.302044,
		45.866199, 36.088276, 28.969791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.641552, 36.434452, 29.283108>,  <46.525394, 35.984554, 28.758362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.641552, 36.434452, 29.283108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.273815, 36.287834, 29.340324>,  <46.053173, 36.199863, 29.374655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.273815, 36.287834, 29.340324>,  <46.641552, 36.434452, 29.283108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.273815, 36.287834, 29.340324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111110, 0.106894, 0.988043,
		-0.377454, 0.924239, -0.057544,
		-0.919338, -0.366547, 0.143040,
		45.998013, 36.177872, 29.383236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.406235, 36.773228, 29.993515>,  <46.641552, 36.434452, 29.283108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.406235, 36.773228, 29.993515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.140297, 36.484581, 29.916315>,  <45.980736, 36.311394, 29.869995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.140297, 36.484581, 29.916315>,  <46.406235, 36.773228, 29.993515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.140297, 36.484581, 29.916315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193047, -0.083608, 0.977621,
		-0.721606, 0.687224, -0.083720,
		-0.664845, -0.721619, -0.192998,
		45.940842, 36.268097, 29.858416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.622639, 36.871624, 30.446611>,  <46.406235, 36.773228, 29.993515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.622639, 36.871624, 30.446611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.726120, 36.505390, 30.323473>,  <45.788208, 36.285648, 30.249590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.726120, 36.505390, 30.323473>,  <45.622639, 36.871624, 30.446611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.726120, 36.505390, 30.323473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152068, -0.353325, 0.923058,
		-0.953912, -0.191986, -0.230638,
		0.258704, -0.915589, -0.307846,
		45.803730, 36.230713, 30.231119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.272701, 36.460617, 30.906572>,  <45.622639, 36.871624, 30.446611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.272701, 36.460617, 30.906572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.539417, 36.215912, 30.736334>,  <45.699448, 36.069088, 30.634192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.539417, 36.215912, 30.736334>,  <45.272701, 36.460617, 30.906572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.539417, 36.215912, 30.736334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150716, -0.448585, 0.880940,
		-0.729845, -0.651548, -0.206910,
		0.666792, -0.611766, -0.425596,
		45.739456, 36.032383, 30.608654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.139713, 35.899235, 31.236250>,  <45.272701, 36.460617, 30.906572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.139713, 35.899235, 31.236250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.497692, 35.807796, 31.082987>,  <45.712479, 35.752934, 30.991030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.497692, 35.807796, 31.082987>,  <45.139713, 35.899235, 31.236250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.497692, 35.807796, 31.082987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246962, -0.461407, 0.852123,
		-0.371585, -0.857232, -0.356480,
		0.894949, -0.228599, -0.383156,
		45.766178, 35.739216, 30.968040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.267036, 35.203045, 31.276052>,  <45.139713, 35.899235, 31.236250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.267036, 35.203045, 31.276052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.635498, 35.354706, 31.240917>,  <45.856575, 35.445702, 31.219837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.635498, 35.354706, 31.240917>,  <45.267036, 35.203045, 31.276052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.635498, 35.354706, 31.240917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275584, -0.476063, 0.835115,
		0.274822, -0.793477, -0.543017,
		0.921155, 0.379154, -0.087837,
		45.911846, 35.468452, 31.214565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.685677, 34.696346, 31.310341>,  <45.267036, 35.203045, 31.276052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.685677, 34.696346, 31.310341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.888626, 35.025093, 31.413965>,  <46.010395, 35.222340, 31.476141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.888626, 35.025093, 31.413965>,  <45.685677, 34.696346, 31.310341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.888626, 35.025093, 31.413965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177338, -0.393781, 0.901936,
		0.843282, -0.411676, -0.345541,
		0.507372, 0.821864, 0.259063,
		46.040836, 35.271652, 31.491684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.303024, 34.436295, 31.620693>,  <45.685677, 34.696346, 31.310341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.303024, 34.436295, 31.620693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.260460, 34.809032, 31.759457>,  <46.234921, 35.032677, 31.842714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.260460, 34.809032, 31.759457>,  <46.303024, 34.436295, 31.620693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.260460, 34.809032, 31.759457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309120, -0.300596, 0.902267,
		0.945051, 0.203247, -0.256065,
		-0.106411, 0.931844, 0.346907,
		46.228539, 35.088585, 31.863529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.720913, 34.407024, 32.240276>,  <46.303024, 34.436295, 31.620693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.720913, 34.407024, 32.240276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.527950, 34.746090, 32.328594>,  <46.412174, 34.949528, 32.381584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.527950, 34.746090, 32.328594>,  <46.720913, 34.407024, 32.240276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.527950, 34.746090, 32.328594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110369, -0.191239, 0.975319,
		0.868967, 0.494869, -0.001300,
		-0.482407, 0.847663, 0.220799,
		46.383228, 35.000389, 32.394833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.073597, 34.835308, 32.721802>,  <46.720913, 34.407024, 32.240276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.073597, 34.835308, 32.721802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.680622, 34.906387, 32.744583>,  <46.444839, 34.949036, 32.758251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.680622, 34.906387, 32.744583>,  <47.073597, 34.835308, 32.721802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.680622, 34.906387, 32.744583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013274, -0.237903, 0.971198,
		0.186134, 0.954895, 0.231365,
		-0.982435, 0.177701, 0.056957,
		46.385891, 34.959698, 32.761669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.062061, 35.308212, 33.304844>,  <47.073597, 34.835308, 32.721802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.062061, 35.308212, 33.304844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.731258, 35.090847, 33.247211>,  <46.532776, 34.960426, 33.212631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.731258, 35.090847, 33.247211>,  <47.062061, 35.308212, 33.304844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.731258, 35.090847, 33.247211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144042, -0.042909, 0.988641,
		-0.543422, 0.838368, -0.042788,
		-0.827009, -0.543413, -0.144078,
		46.483154, 34.927822, 33.203987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.590897, 35.387737, 33.889862>,  <47.062061, 35.308212, 33.304844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.590897, 35.387737, 33.889862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430859, 35.046715, 33.755356>,  <46.334835, 34.842102, 33.674652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.430859, 35.046715, 33.755356>,  <46.590897, 35.387737, 33.889862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.430859, 35.046715, 33.755356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087728, -0.329596, 0.940037,
		-0.912267, 0.405601, 0.057076,
		-0.400092, -0.852558, -0.336262,
		46.310833, 34.790947, 33.654476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.670208, 35.474426, 34.645325>,  <46.590897, 35.387737, 33.889862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.670208, 35.474426, 34.645325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.375877, 35.303768, 34.855671>,  <46.199280, 35.201374, 34.981880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.375877, 35.303768, 34.855671>,  <46.670208, 35.474426, 34.645325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.375877, 35.303768, 34.855671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094741, -0.833788, -0.543895,
		0.670511, -0.350391, 0.653942,
		-0.735825, -0.426643, 0.525868,
		46.155128, 35.175774, 35.013432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.048801, 34.866280, 34.579887>,  <46.670208, 35.474426, 34.645325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.048801, 34.866280, 34.579887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.969570, 35.020351, 34.940422>,  <46.922031, 35.112797, 35.156742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.969570, 35.020351, 34.940422>,  <47.048801, 34.866280, 34.579887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.969570, 35.020351, 34.940422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190584, 0.917137, -0.350054,
		-0.961480, 0.102442, -0.255071,
		-0.198074, 0.385182, 0.901333,
		46.910149, 35.135906, 35.210823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.708275, 35.147739, 34.844463>,  <47.048801, 34.866280, 34.579887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.708275, 35.147739, 34.844463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.883408, 35.156158, 35.203987>,  <47.988487, 35.161209, 35.419701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.883408, 35.156158, 35.203987>,  <47.708275, 35.147739, 34.844463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.883408, 35.156158, 35.203987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525838, 0.804904, -0.274997,
		-0.729245, 0.593031, 0.341343,
		0.437831, 0.021049, 0.898811,
		48.014755, 35.162472, 35.473629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.898663, 32.524738, 41.538403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.709274, 32.173080, 41.516735>,  <33.595642, 31.962086, 41.503735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.709274, 32.173080, 41.516735>,  <33.898663, 32.524738, 41.538403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709274, 32.173080, 41.516735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080681, 0.017953, -0.996578,
		0.877105, -0.476224, 0.062430,
		-0.473474, -0.879141, -0.054169,
		33.567234, 31.909338, 41.500484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368725, 32.085907, 41.131485>,  <33.898663, 32.524738, 41.538403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368725, 32.085907, 41.131485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.015930, 31.899349, 41.104439>,  <33.804253, 31.787415, 41.088211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.015930, 31.899349, 41.104439>,  <34.368725, 32.085907, 41.131485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015930, 31.899349, 41.104439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194918, -0.230380, -0.953379,
		0.429076, -0.854048, 0.294102,
		-0.881987, -0.466397, -0.067619,
		33.751335, 31.759430, 41.084152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511288, 31.517397, 40.745697>,  <34.368725, 32.085907, 41.131485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511288, 31.517397, 40.745697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.117542, 31.581678, 40.716831>,  <33.881294, 31.620247, 40.699512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.117542, 31.581678, 40.716831>,  <34.511288, 31.517397, 40.745697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117542, 31.581678, 40.716831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042341, -0.181809, -0.982422,
		-0.170982, -0.970116, 0.172162,
		-0.984364, 0.160687, -0.072162,
		33.822235, 31.629889, 40.695183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159126, 30.903742, 40.388538>,  <34.511288, 31.517397, 40.745697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159126, 30.903742, 40.388538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.923637, 31.225433, 40.356003>,  <33.782345, 31.418449, 40.336483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.923637, 31.225433, 40.356003>,  <34.159126, 30.903742, 40.388538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923637, 31.225433, 40.356003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141805, -0.201818, -0.969103,
		-0.795798, -0.559001, 0.232860,
		-0.588724, 0.804231, -0.081337,
		33.747021, 31.466703, 40.331600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666016, 30.659325, 39.885582>,  <34.159126, 30.903742, 40.388538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666016, 30.659325, 39.885582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.625797, 31.057243, 39.878994>,  <33.601665, 31.295994, 39.875042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.625797, 31.057243, 39.878994>,  <33.666016, 30.659325, 39.885582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625797, 31.057243, 39.878994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014433, -0.018011, -0.999734,
		-0.994827, -0.100285, 0.016169,
		-0.100549, 0.994796, -0.016470,
		33.595631, 31.355682, 39.874054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086178, 30.742743, 39.472782>,  <33.666016, 30.659325, 39.885582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086178, 30.742743, 39.472782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.320805, 31.066704, 39.473213>,  <33.461578, 31.261080, 39.473473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.320805, 31.066704, 39.473213>,  <33.086178, 30.742743, 39.472782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320805, 31.066704, 39.473213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007387, -0.004015, -0.999965,
		-0.809870, 0.586551, -0.008338,
		0.586564, 0.809902, 0.001082,
		33.496773, 31.309675, 39.473537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818020, 31.167362, 38.889488>,  <33.086178, 30.742743, 39.472782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818020, 31.167362, 38.889488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.186630, 31.303835, 38.963654>,  <33.407799, 31.385719, 39.008152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.186630, 31.303835, 38.963654>,  <32.818020, 31.167362, 38.889488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186630, 31.303835, 38.963654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158744, 0.104772, -0.981745,
		-0.354381, 0.934140, 0.042390,
		0.921528, 0.341182, 0.185418,
		33.463089, 31.406189, 39.019279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843967, 31.786760, 38.539551>,  <32.818020, 31.167362, 38.889488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843967, 31.786760, 38.539551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.224861, 31.681688, 38.601845>,  <33.453396, 31.618645, 38.639221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.224861, 31.681688, 38.601845>,  <32.843967, 31.786760, 38.539551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224861, 31.681688, 38.601845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232926, 0.294952, -0.926687,
		0.197485, 0.918696, 0.342047,
		0.952232, -0.262679, 0.155740,
		33.510532, 31.602884, 38.648567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225163, 32.341629, 38.397827>,  <32.843967, 31.786760, 38.539551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225163, 32.341629, 38.397827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.477337, 32.032513, 38.368587>,  <33.628643, 31.847042, 38.351044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.477337, 32.032513, 38.368587>,  <33.225163, 32.341629, 38.397827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477337, 32.032513, 38.368587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361052, 0.375291, -0.853697,
		0.687162, 0.511810, 0.515615,
		0.630437, -0.772791, -0.073096,
		33.666470, 31.800674, 38.346661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786499, 32.687473, 37.951046>,  <33.225163, 32.341629, 38.397827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786499, 32.687473, 37.951046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.883488, 32.299477, 37.958206>,  <33.941681, 32.066677, 37.962502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.883488, 32.299477, 37.958206>,  <33.786499, 32.687473, 37.951046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883488, 32.299477, 37.958206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618028, 0.140215, -0.773551,
		0.747829, 0.198628, 0.633482,
		0.242473, -0.969993, 0.017900,
		33.956230, 32.008480, 37.963577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525383, 32.648968, 37.857018>,  <33.786499, 32.687473, 37.951046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525383, 32.648968, 37.857018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.379086, 32.288364, 37.764484>,  <34.291309, 32.072002, 37.708965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.379086, 32.288364, 37.764484>,  <34.525383, 32.648968, 37.857018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379086, 32.288364, 37.764484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532760, 0.001021, -0.846266,
		0.763152, -0.432760, 0.479914,
		-0.365740, -0.901509, -0.231337,
		34.269363, 32.017914, 37.695084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099854, 32.096848, 37.717422>,  <34.525383, 32.648968, 37.857018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099854, 32.096848, 37.717422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.774635, 31.975550, 37.518627>,  <34.579506, 31.902771, 37.399349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.774635, 31.975550, 37.518627>,  <35.099854, 32.096848, 37.717422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774635, 31.975550, 37.518627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526658, -0.019205, -0.849860,
		0.248174, -0.952718, 0.175323,
		-0.813044, -0.303248, -0.496991,
		34.530724, 31.884575, 37.369530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364033, 31.581526, 37.216873>,  <35.099854, 32.096848, 37.717422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364033, 31.581526, 37.216873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.008984, 31.687237, 37.065990>,  <34.795956, 31.750664, 36.975460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.008984, 31.687237, 37.065990>,  <35.364033, 31.581526, 37.216873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008984, 31.687237, 37.065990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417889, 0.117776, -0.900832,
		-0.193643, -0.957229, -0.214979,
		-0.887621, 0.264277, -0.377209,
		34.742699, 31.766520, 36.952827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276802, 31.222712, 36.599144>,  <35.364033, 31.581526, 37.216873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276802, 31.222712, 36.599144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.020638, 31.528469, 36.569263>,  <34.866940, 31.711924, 36.551334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.020638, 31.528469, 36.569263>,  <35.276802, 31.222712, 36.599144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020638, 31.528469, 36.569263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303773, 0.162760, -0.938739,
		-0.705407, -0.623869, -0.336435,
		-0.640408, 0.764393, -0.074702,
		34.828514, 31.757788, 36.546852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891308, 31.104183, 35.862091>,  <35.276802, 31.222712, 36.599144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891308, 31.104183, 35.862091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.885746, 31.487978, 35.974659>,  <34.882408, 31.718254, 36.042198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.885746, 31.487978, 35.974659>,  <34.891308, 31.104183, 35.862091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885746, 31.487978, 35.974659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317701, 0.271097, -0.908610,
		-0.948089, 0.076774, -0.308598,
		-0.013903, 0.959486, 0.281415,
		34.881577, 31.775824, 36.059082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586800, 31.479357, 35.264462>,  <34.891308, 31.104183, 35.862091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586800, 31.479357, 35.264462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.746677, 31.789196, 35.460518>,  <34.842606, 31.975100, 35.578152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.746677, 31.789196, 35.460518>,  <34.586800, 31.479357, 35.264462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746677, 31.789196, 35.460518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285313, 0.403016, -0.869583,
		-0.871113, 0.487414, -0.059919,
		0.399698, 0.774600, 0.490138,
		34.866589, 32.021576, 35.607559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337002, 32.061874, 34.932045>,  <34.586800, 31.479357, 35.264462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337002, 32.061874, 34.932045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.678799, 32.179741, 35.103165>,  <34.883877, 32.250462, 35.205837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.678799, 32.179741, 35.103165>,  <34.337002, 32.061874, 34.932045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678799, 32.179741, 35.103165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272284, 0.447269, -0.851946,
		-0.442377, 0.844467, 0.301957,
		0.854496, 0.294663, 0.427797,
		34.935146, 32.268139, 35.231503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363682, 32.782982, 34.743484>,  <34.337002, 32.061874, 34.932045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363682, 32.782982, 34.743484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.733837, 32.676460, 34.851368>,  <34.955929, 32.612545, 34.916100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.733837, 32.676460, 34.851368>,  <34.363682, 32.782982, 34.743484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733837, 32.676460, 34.851368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370129, 0.481614, -0.794388,
		0.081656, 0.834942, 0.544246,
		0.925385, -0.266308, 0.269710,
		35.011452, 32.596569, 34.932281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798538, 33.376743, 34.794781>,  <34.363682, 32.782982, 34.743484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798538, 33.376743, 34.794781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.046185, 33.069962, 34.727276>,  <35.194771, 32.885895, 34.686771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.046185, 33.069962, 34.727276>,  <34.798538, 33.376743, 34.794781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046185, 33.069962, 34.727276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336720, 0.453405, -0.825254,
		0.709447, 0.454103, 0.538958,
		0.619116, -0.766951, -0.168761,
		35.231918, 32.839874, 34.676647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367043, 33.676102, 34.375801>,  <34.798538, 33.376743, 34.794781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367043, 33.676102, 34.375801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.471230, 33.290279, 34.358849>,  <35.533741, 33.058788, 34.348679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.471230, 33.290279, 34.358849>,  <35.367043, 33.676102, 34.375801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471230, 33.290279, 34.358849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480219, 0.167511, -0.861005,
		0.837583, 0.203911, 0.506828,
		0.260468, -0.964552, -0.042383,
		35.549370, 33.000916, 34.346134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182465, 33.641781, 34.221031>,  <35.367043, 33.676102, 34.375801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182465, 33.641781, 34.221031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.997883, 33.301052, 34.121864>,  <35.887135, 33.096615, 34.062366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.997883, 33.301052, 34.121864>,  <36.182465, 33.641781, 34.221031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997883, 33.301052, 34.121864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306382, 0.109237, -0.945620,
		0.832581, -0.512314, 0.210575,
		-0.461452, -0.851822, -0.247913,
		35.859447, 33.045506, 34.047489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622040, 33.281193, 33.781799>,  <36.182465, 33.641781, 34.221031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622040, 33.281193, 33.781799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.258736, 33.127018, 33.716679>,  <36.040752, 33.034515, 33.677605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.258736, 33.127018, 33.716679>,  <36.622040, 33.281193, 33.781799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258736, 33.127018, 33.716679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090471, 0.198980, -0.975819,
		0.408510, -0.901025, -0.145854,
		-0.908259, -0.385436, -0.162802,
		35.986259, 33.011387, 33.667839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255497, 33.071983, 33.858055>,  <36.622040, 33.281193, 33.781799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255497, 33.071983, 33.858055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.583656, 33.288799, 33.930874>,  <37.780552, 33.418888, 33.974564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.583656, 33.288799, 33.930874>,  <37.255497, 33.071983, 33.858055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583656, 33.288799, 33.930874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248723, 0.051621, 0.967198,
		0.514861, -0.838767, 0.177167,
		0.820399, 0.542038, 0.182043,
		37.829777, 33.451412, 33.985485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488274, 32.888771, 34.448292>,  <37.255497, 33.071983, 33.858055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488274, 32.888771, 34.448292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.653576, 33.250519, 34.405712>,  <37.752758, 33.467567, 34.380165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.653576, 33.250519, 34.405712>,  <37.488274, 32.888771, 34.448292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653576, 33.250519, 34.405712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145578, 0.181010, 0.972647,
		0.898904, -0.386452, 0.206460,
		0.413253, 0.904373, -0.106451,
		37.777554, 33.521832, 34.373775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149563, 32.929256, 34.939529>,  <37.488274, 32.888771, 34.448292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149563, 32.929256, 34.939529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.023918, 33.301945, 34.866619>,  <37.948532, 33.525558, 34.822872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.023918, 33.301945, 34.866619>,  <38.149563, 32.929256, 34.939529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023918, 33.301945, 34.866619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265941, 0.270656, 0.925214,
		0.911377, 0.242148, -0.332800,
		-0.314113, 0.931724, -0.182273,
		37.929684, 33.581463, 34.811935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576908, 33.333927, 35.357555>,  <38.149563, 32.929256, 34.939529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576908, 33.333927, 35.357555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.296940, 33.605747, 35.269623>,  <38.128960, 33.768841, 35.216866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.296940, 33.605747, 35.269623>,  <38.576908, 33.333927, 35.357555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296940, 33.605747, 35.269623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110511, 0.407123, 0.906663,
		0.705620, 0.610298, -0.360051,
		-0.699920, 0.679550, -0.219829,
		38.086964, 33.809612, 35.203674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797798, 34.015312, 35.692966>,  <38.576908, 33.333927, 35.357555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797798, 34.015312, 35.692966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.400368, 33.993477, 35.653297>,  <38.161911, 33.980377, 35.629498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.400368, 33.993477, 35.653297>,  <38.797798, 34.015312, 35.692966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400368, 33.993477, 35.653297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108977, 0.224119, 0.968450,
		-0.030636, 0.973032, -0.228627,
		-0.993572, -0.054585, -0.099172,
		38.102295, 33.977100, 35.623547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650181, 34.406643, 36.172062>,  <38.797798, 34.015312, 35.692966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650181, 34.406643, 36.172062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.287285, 34.252590, 36.104431>,  <38.069546, 34.160160, 36.063854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.287285, 34.252590, 36.104431>,  <38.650181, 34.406643, 36.172062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287285, 34.252590, 36.104431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284794, 0.266667, 0.920750,
		-0.309519, 0.883496, -0.351614,
		-0.907243, -0.385128, -0.169076,
		38.015114, 34.137051, 36.053707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134190, 34.949844, 36.407635>,  <38.650181, 34.406643, 36.172062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134190, 34.949844, 36.407635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.944485, 34.597698, 36.405281>,  <37.830662, 34.386410, 36.403870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.944485, 34.597698, 36.405281>,  <38.134190, 34.949844, 36.407635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944485, 34.597698, 36.405281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387713, 0.202852, 0.899183,
		-0.790415, 0.428729, -0.437533,
		-0.474261, -0.880365, -0.005886,
		37.802208, 34.333588, 36.403515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633572, 35.065773, 36.854259>,  <38.134190, 34.949844, 36.407635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633572, 35.065773, 36.854259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.640045, 34.666077, 36.840034>,  <37.643929, 34.426258, 36.831501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.640045, 34.666077, 36.840034>,  <37.633572, 35.065773, 36.854259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640045, 34.666077, 36.840034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170699, -0.037804, 0.984598,
		-0.985190, -0.009866, -0.171180,
		0.016185, -0.999236, -0.035560,
		37.644901, 34.366306, 36.829365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973709, 34.823997, 37.119389>,  <37.633572, 35.065773, 36.854259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973709, 34.823997, 37.119389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248829, 34.537899, 37.168964>,  <37.413902, 34.366241, 37.198708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248829, 34.537899, 37.168964>,  <36.973709, 34.823997, 37.119389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248829, 34.537899, 37.168964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218107, -0.040781, 0.975073,
		-0.692360, -0.697685, -0.184048,
		0.687799, -0.715243, 0.123935,
		37.455170, 34.323326, 37.206146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697350, 34.513756, 37.815384>,  <36.973709, 34.823997, 37.119389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697350, 34.513756, 37.815384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.010849, 34.271034, 37.762417>,  <37.198948, 34.125401, 37.730637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.010849, 34.271034, 37.762417>,  <36.697350, 34.513756, 37.815384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010849, 34.271034, 37.762417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041443, -0.263828, 0.963679,
		-0.619698, -0.749792, -0.231922,
		0.783746, -0.606801, -0.132420,
		37.245972, 34.088993, 37.722691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541462, 33.743176, 38.022270>,  <36.697350, 34.513756, 37.815384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541462, 33.743176, 38.022270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.935947, 33.801052, 38.054367>,  <37.172638, 33.835777, 38.073624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.935947, 33.801052, 38.054367>,  <36.541462, 33.743176, 38.022270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935947, 33.801052, 38.054367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026420, -0.341034, 0.939680,
		0.163334, -0.928848, -0.332511,
		0.986217, 0.144697, 0.080242,
		37.231812, 33.844460, 38.078438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715088, 33.139523, 38.364491>,  <36.541462, 33.743176, 38.022270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715088, 33.139523, 38.364491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.018425, 33.395176, 38.415771>,  <37.200428, 33.548569, 38.446541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.018425, 33.395176, 38.415771>,  <36.715088, 33.139523, 38.364491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018425, 33.395176, 38.415771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095537, -0.085569, 0.991741,
		0.644822, -0.764323, -0.003830,
		0.758338, 0.639131, 0.128198,
		37.245926, 33.586914, 38.454231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295414, 32.752472, 38.663139>,  <36.715088, 33.139523, 38.364491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295414, 32.752472, 38.663139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.315624, 33.142052, 38.751556>,  <37.327751, 33.375801, 38.804607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.315624, 33.142052, 38.751556>,  <37.295414, 32.752472, 38.663139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315624, 33.142052, 38.751556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196985, -0.207260, 0.958248,
		0.979104, -0.091960, 0.181382,
		0.050527, 0.973954, 0.221044,
		37.330784, 33.434238, 38.817871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877705, 32.870281, 39.201485>,  <37.295414, 32.752472, 38.663139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877705, 32.870281, 39.201485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.564537, 33.119083, 39.196758>,  <37.376637, 33.268364, 39.193920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.564537, 33.119083, 39.196758>,  <37.877705, 32.870281, 39.201485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564537, 33.119083, 39.196758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188813, -0.219470, 0.957174,
		0.592774, 0.751626, 0.289271,
		-0.782923, 0.622006, -0.011820,
		37.329659, 33.305687, 39.193211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940296, 33.217335, 39.766636>,  <37.877705, 32.870281, 39.201485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940296, 33.217335, 39.766636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.553108, 33.275982, 39.685104>,  <37.320797, 33.311169, 39.636185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.553108, 33.275982, 39.685104>,  <37.940296, 33.217335, 39.766636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553108, 33.275982, 39.685104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225130, -0.147404, 0.963114,
		0.111162, 0.978149, 0.175690,
		-0.967967, 0.146615, -0.203825,
		37.262718, 33.319965, 39.623959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684780, 33.632858, 40.240280>,  <37.940296, 33.217335, 39.766636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684780, 33.632858, 40.240280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.340755, 33.479046, 40.106155>,  <37.134342, 33.386761, 40.025681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.340755, 33.479046, 40.106155>,  <37.684780, 33.632858, 40.240280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340755, 33.479046, 40.106155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348362, -0.037569, 0.936607,
		-0.372749, 0.922348, -0.101644,
		-0.860059, -0.384528, -0.335315,
		37.082737, 33.363686, 40.005562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138237, 34.108391, 40.485569>,  <37.684780, 33.632858, 40.240280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138237, 34.108391, 40.485569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.998005, 33.743420, 40.401131>,  <36.913864, 33.524437, 40.350468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.998005, 33.743420, 40.401131>,  <37.138237, 34.108391, 40.485569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998005, 33.743420, 40.401131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401549, -0.057182, 0.914051,
		-0.846079, 0.405217, -0.346338,
		-0.350584, -0.912431, -0.211095,
		36.892830, 33.469692, 40.337803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452045, 34.067970, 40.735828>,  <37.138237, 34.108391, 40.485569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452045, 34.067970, 40.735828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.573845, 33.687256, 40.720974>,  <36.646923, 33.458828, 40.712059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.573845, 33.687256, 40.720974>,  <36.452045, 34.067970, 40.735828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573845, 33.687256, 40.720974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533064, -0.202591, 0.821462,
		-0.789383, -0.230334, -0.569053,
		0.304496, -0.951789, -0.037139,
		36.665195, 33.401718, 40.709831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.808994, 33.723373, 40.678196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.073051, 33.443687, 40.787964>,  <36.231487, 33.275875, 40.853825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.073051, 33.443687, 40.787964>,  <35.808994, 33.723373, 40.678196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073051, 33.443687, 40.787964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581841, -0.244955, 0.775538,
		-0.475050, -0.671633, -0.568539,
		0.660143, -0.699218, 0.274418,
		36.271095, 33.233921, 40.870289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421688, 33.183437, 40.886738>,  <35.808994, 33.723373, 40.678196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421688, 33.183437, 40.886738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.763382, 33.093563, 41.074265>,  <35.968399, 33.039639, 41.186783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.763382, 33.093563, 41.074265>,  <35.421688, 33.183437, 40.886738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763382, 33.093563, 41.074265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517685, -0.284803, 0.806777,
		-0.047750, -0.931882, -0.359606,
		0.854238, -0.224687, 0.468822,
		36.019653, 33.026157, 41.214912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288383, 32.520550, 41.199875>,  <35.421688, 33.183437, 40.886738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288383, 32.520550, 41.199875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.583801, 32.694706, 41.405785>,  <35.761051, 32.799198, 41.529331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.583801, 32.694706, 41.405785>,  <35.288383, 32.520550, 41.199875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583801, 32.694706, 41.405785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443072, -0.262067, 0.857326,
		0.508177, -0.861252, -0.000637,
		0.738541, 0.435391, 0.514773,
		35.805363, 32.825325, 41.560215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457436, 32.080799, 41.721745>,  <35.288383, 32.520550, 41.199875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457436, 32.080799, 41.721745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.613380, 32.425659, 41.851173>,  <35.706947, 32.632576, 41.928833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.613380, 32.425659, 41.851173>,  <35.457436, 32.080799, 41.721745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613380, 32.425659, 41.851173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361958, -0.179630, 0.914724,
		0.846753, -0.473741, 0.242030,
		0.389866, 0.862150, 0.323576,
		35.730339, 32.684303, 41.948246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801765, 31.923210, 42.339230>,  <35.457436, 32.080799, 41.721745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801765, 31.923210, 42.339230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.731121, 32.316883, 42.344753>,  <35.688736, 32.553089, 42.348068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.731121, 32.316883, 42.344753>,  <35.801765, 31.923210, 42.339230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731121, 32.316883, 42.344753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192025, -0.048211, 0.980205,
		0.965368, 0.170461, 0.197503,
		-0.176608, 0.984184, 0.013809,
		35.678139, 32.612137, 42.348896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219902, 32.219578, 42.938374>,  <35.801765, 31.923210, 42.339230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219902, 32.219578, 42.938374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.915222, 32.465321, 42.856026>,  <35.732414, 32.612766, 42.806618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.915222, 32.465321, 42.856026>,  <36.219902, 32.219578, 42.938374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915222, 32.465321, 42.856026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320436, -0.081029, 0.943798,
		0.563146, 0.784858, 0.258582,
		-0.761700, 0.614355, -0.205865,
		35.686710, 32.649628, 42.794266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305721, 32.803066, 43.490005>,  <36.219902, 32.219578, 42.938374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305721, 32.803066, 43.490005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.924267, 32.802341, 43.369617>,  <35.695396, 32.801907, 43.297386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.924267, 32.802341, 43.369617>,  <36.305721, 32.803066, 43.490005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924267, 32.802341, 43.369617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300203, 0.077118, 0.950753,
		0.021489, 0.997020, -0.074085,
		-0.953633, -0.001810, -0.300965,
		35.638176, 32.801800, 43.279327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950760, 33.184681, 44.021847>,  <36.305721, 32.803066, 43.490005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950760, 33.184681, 44.021847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.646389, 33.011318, 43.828701>,  <35.463768, 32.907299, 43.712814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.646389, 33.011318, 43.828701>,  <35.950760, 33.184681, 44.021847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646389, 33.011318, 43.828701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571878, 0.096423, 0.814653,
		-0.306516, 0.896026, -0.321225,
		-0.760923, -0.433406, -0.482862,
		35.418114, 32.881298, 43.683842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358952, 33.621082, 44.186569>,  <35.950760, 33.184681, 44.021847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358952, 33.621082, 44.186569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.216614, 33.261189, 44.085495>,  <35.131210, 33.045254, 44.024849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.216614, 33.261189, 44.085495>,  <35.358952, 33.621082, 44.186569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216614, 33.261189, 44.085495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561835, -0.010104, 0.827188,
		-0.746803, 0.436319, -0.501908,
		-0.355847, -0.899735, -0.252685,
		35.109859, 32.991268, 44.009689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701714, 33.680592, 44.189369>,  <35.358952, 33.621082, 44.186569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701714, 33.680592, 44.189369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.768345, 33.288101, 44.228241>,  <34.808323, 33.052605, 44.251564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.768345, 33.288101, 44.228241>,  <34.701714, 33.680592, 44.189369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768345, 33.288101, 44.228241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477509, 0.005949, 0.878607,
		-0.862692, -0.192760, -0.467554,
		0.166579, -0.981228, 0.097176,
		34.818317, 32.993732, 44.257393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246998, 33.503326, 44.668056>,  <34.701714, 33.680592, 44.189369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246998, 33.503326, 44.668056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.489525, 33.185432, 44.679176>,  <34.635040, 32.994694, 44.685848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.489525, 33.185432, 44.679176>,  <34.246998, 33.503326, 44.668056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489525, 33.185432, 44.679176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350023, -0.235325, 0.906701,
		-0.714047, -0.559478, -0.420858,
		0.606317, -0.794737, 0.027797,
		34.671421, 32.947010, 44.687515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931583, 33.056862, 45.041733>,  <34.246998, 33.503326, 44.668056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931583, 33.056862, 45.041733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.307892, 32.921257, 45.039845>,  <34.533676, 32.839893, 45.038712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.307892, 32.921257, 45.039845>,  <33.931583, 33.056862, 45.041733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307892, 32.921257, 45.039845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094531, -0.275652, 0.956598,
		-0.325607, -0.899490, -0.291372,
		0.940768, -0.339019, -0.004724,
		34.590122, 32.819553, 45.038429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971878, 32.393211, 45.254974>,  <33.931583, 33.056862, 45.041733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971878, 32.393211, 45.254974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.348984, 32.501678, 45.332600>,  <34.575249, 32.566761, 45.379173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.348984, 32.501678, 45.332600>,  <33.971878, 32.393211, 45.254974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348984, 32.501678, 45.332600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073012, -0.399981, 0.913611,
		0.325365, -0.875490, -0.357289,
		0.942766, 0.271171, 0.194060,
		34.631813, 32.583031, 45.390820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299625, 31.804649, 45.636726>,  <33.971878, 32.393211, 45.254974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299625, 31.804649, 45.636726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.531754, 32.121773, 45.711224>,  <34.671028, 32.312046, 45.755920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.531754, 32.121773, 45.711224>,  <34.299625, 31.804649, 45.636726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531754, 32.121773, 45.711224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016508, -0.240091, 0.970610,
		0.814223, -0.560187, -0.152417,
		0.580317, 0.792810, 0.186240,
		34.705849, 32.359615, 45.767094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836674, 31.597820, 46.038635>,  <34.299625, 31.804649, 45.636726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836674, 31.597820, 46.038635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.864643, 31.990776, 46.107944>,  <34.881424, 32.226551, 46.149529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.864643, 31.990776, 46.107944>,  <34.836674, 31.597820, 46.038635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864643, 31.990776, 46.107944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258221, -0.185601, 0.948090,
		0.963552, -0.021553, -0.266651,
		0.069925, 0.982389, 0.173271,
		34.885620, 32.285492, 46.159927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473999, 31.718384, 46.431282>,  <34.836674, 31.597820, 46.038635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473999, 31.718384, 46.431282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.244572, 32.036163, 46.511147>,  <35.106915, 32.226830, 46.559067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.244572, 32.036163, 46.511147>,  <35.473999, 31.718384, 46.431282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244572, 32.036163, 46.511147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231947, -0.076256, 0.969735,
		0.785631, 0.602523, -0.140532,
		-0.573571, 0.794450, 0.199663,
		35.072502, 32.274498, 46.571045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903954, 31.932743, 46.894314>,  <35.473999, 31.718384, 46.431282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903954, 31.932743, 46.894314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.553158, 32.124760, 46.902782>,  <35.342682, 32.239971, 46.907864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.553158, 32.124760, 46.902782>,  <35.903954, 31.932743, 46.894314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553158, 32.124760, 46.902782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077090, 0.097081, 0.992286,
		0.474283, 0.871858, -0.122146,
		-0.876991, 0.480041, 0.021168,
		35.290062, 32.268772, 46.909134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010254, 32.489609, 47.240211>,  <35.903954, 31.932743, 46.894314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010254, 32.489609, 47.240211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.623604, 32.390270, 47.265377>,  <35.391613, 32.330669, 47.280476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.623604, 32.390270, 47.265377>,  <36.010254, 32.489609, 47.240211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623604, 32.390270, 47.265377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067377, -0.009514, 0.997682,
		-0.247169, 0.968625, 0.025929,
		-0.966627, -0.248343, 0.062912,
		35.333614, 32.315765, 47.284252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850639, 32.768517, 47.864864>,  <36.010254, 32.489609, 47.240211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850639, 32.768517, 47.864864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.550270, 32.511124, 47.805477>,  <35.370049, 32.356689, 47.769844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.550270, 32.511124, 47.805477>,  <35.850639, 32.768517, 47.864864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550270, 32.511124, 47.805477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106657, -0.340045, 0.934341,
		-0.651714, 0.685787, 0.323981,
		-0.750928, -0.643478, -0.148468,
		35.324993, 32.318081, 47.760937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333160, 32.815331, 48.341793>,  <35.850639, 32.768517, 47.864864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333160, 32.815331, 48.341793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.331783, 32.438370, 48.208004>,  <35.330959, 32.212193, 48.127731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.331783, 32.438370, 48.208004>,  <35.333160, 32.815331, 48.341793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331783, 32.438370, 48.208004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321186, -0.317797, 0.892101,
		-0.947010, -0.104359, 0.303778,
		-0.003441, -0.942398, -0.334476,
		35.330750, 32.155651, 48.107662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120300, 32.472610, 48.936119>,  <35.333160, 32.815331, 48.341793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120300, 32.472610, 48.936119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.247292, 32.171024, 48.706078>,  <35.323486, 31.990072, 48.568054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.247292, 32.171024, 48.706078>,  <35.120300, 32.472610, 48.936119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247292, 32.171024, 48.706078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141973, -0.561848, 0.814967,
		-0.937578, -0.340380, -0.071329,
		0.317475, -0.753969, -0.575101,
		35.342533, 31.944834, 48.533546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724598, 31.885878, 49.071690>,  <35.120300, 32.472610, 48.936119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724598, 31.885878, 49.071690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.093460, 31.766363, 48.973415>,  <35.314777, 31.694654, 48.914452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.093460, 31.766363, 48.973415>,  <34.724598, 31.885878, 49.071690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093460, 31.766363, 48.973415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093359, -0.444461, 0.890920,
		-0.375389, -0.844502, -0.381968,
		0.922154, -0.298781, -0.245688,
		35.370106, 31.676727, 48.899708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704781, 31.135513, 49.158112>,  <34.724598, 31.885878, 49.071690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704781, 31.135513, 49.158112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.071144, 31.293655, 49.185829>,  <35.290962, 31.388540, 49.202457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.071144, 31.293655, 49.185829>,  <34.704781, 31.135513, 49.158112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071144, 31.293655, 49.185829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142057, -0.480744, 0.865277,
		0.375405, -0.782673, -0.496482,
		0.915910, 0.395358, 0.069290,
		35.345917, 31.412262, 49.206615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119007, 30.678862, 49.367733>,  <34.704781, 31.135513, 49.158112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119007, 30.678862, 49.367733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.054680, 30.285276, 49.398602>,  <34.016083, 30.049126, 49.417122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.054680, 30.285276, 49.398602>,  <34.119007, 30.678862, 49.367733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054680, 30.285276, 49.398602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172076, -0.049040, -0.983862,
		0.971868, -0.171500, -0.161430,
		-0.160816, -0.983963, 0.077171,
		34.006435, 29.990088, 49.421753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287880, 30.395741, 48.701485>,  <34.119007, 30.678862, 49.367733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287880, 30.395741, 48.701485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.025833, 30.140810, 48.863789>,  <33.868607, 29.987852, 48.961170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.025833, 30.140810, 48.863789>,  <34.287880, 30.395741, 48.701485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025833, 30.140810, 48.863789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399610, -0.163502, -0.901986,
		0.641201, -0.753050, -0.147569,
		-0.655113, -0.637325, 0.405764,
		33.829300, 29.949612, 48.985519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342575, 29.866364, 48.308571>,  <34.287880, 30.395741, 48.701485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342575, 29.866364, 48.308571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.984116, 29.817591, 48.479240>,  <33.769039, 29.788326, 48.581642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.984116, 29.817591, 48.479240>,  <34.342575, 29.866364, 48.308571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984116, 29.817591, 48.479240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425604, -0.036006, -0.904193,
		0.125616, -0.991885, -0.019630,
		-0.896148, -0.121936, 0.426673,
		33.715271, 29.781010, 48.607243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134041, 29.202070, 48.187691>,  <34.342575, 29.866364, 48.308571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134041, 29.202070, 48.187691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.788799, 29.397831, 48.237545>,  <33.581654, 29.515287, 48.267456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.788799, 29.397831, 48.237545>,  <34.134041, 29.202070, 48.187691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788799, 29.397831, 48.237545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246991, -0.193804, -0.949440,
		-0.440506, -0.850249, 0.288151,
		-0.863105, 0.489405, 0.124632,
		33.529869, 29.544653, 48.274933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629017, 28.718851, 47.933933>,  <34.134041, 29.202070, 48.187691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629017, 28.718851, 47.933933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.481110, 29.090210, 47.919197>,  <33.392365, 29.313025, 47.910355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.481110, 29.090210, 47.919197>,  <33.629017, 28.718851, 47.933933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481110, 29.090210, 47.919197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148243, -0.098090, -0.984074,
		-0.917223, -0.358414, 0.173898,
		-0.369764, 0.928395, -0.036838,
		33.370182, 29.368729, 47.908146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028046, 28.724140, 47.530468>,  <33.629017, 28.718851, 47.933933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028046, 28.724140, 47.530468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.106251, 29.116241, 47.542336>,  <33.153175, 29.351501, 47.549458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.106251, 29.116241, 47.542336>,  <33.028046, 28.724140, 47.530468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106251, 29.116241, 47.542336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229038, 0.075058, -0.970519,
		-0.953581, 0.182952, 0.239189,
		0.195512, 0.980252, 0.029671,
		33.164906, 29.410316, 47.551235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.417961, 29.026834, 47.035118>,  <33.028046, 28.724140, 47.530468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.417961, 29.026834, 47.035118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.705307, 29.303890, 47.061058>,  <32.877712, 29.470123, 47.076622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.705307, 29.303890, 47.061058>,  <32.417961, 29.026834, 47.035118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705307, 29.303890, 47.061058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077776, 0.172603, -0.981916,
		-0.691308, 0.700327, 0.177862,
		0.718362, 0.692640, 0.064853,
		32.920815, 29.511683, 47.080513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107952, 29.657696, 46.800240>,  <32.417961, 29.026834, 47.035118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107952, 29.657696, 46.800240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.506428, 29.676256, 46.770691>,  <32.745514, 29.687393, 46.752964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.506428, 29.676256, 46.770691>,  <32.107952, 29.657696, 46.800240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506428, 29.676256, 46.770691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079779, 0.142142, -0.986626,
		-0.035281, 0.988758, 0.145302,
		0.996188, 0.046401, -0.073867,
		32.805283, 29.690176, 46.748531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222015, 30.274891, 46.281342>,  <32.107952, 29.657696, 46.800240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222015, 30.274891, 46.281342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.588093, 30.114101, 46.292961>,  <32.807739, 30.017628, 46.299934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.588093, 30.114101, 46.292961>,  <32.222015, 30.274891, 46.281342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588093, 30.114101, 46.292961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151031, 0.275246, -0.949436,
		0.373651, 0.873303, 0.312613,
		0.915191, -0.401972, 0.029050,
		32.862652, 29.993509, 46.301678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737274, 30.753235, 46.165985>,  <32.222015, 30.274891, 46.281342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737274, 30.753235, 46.165985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.928844, 30.410624, 46.089058>,  <33.043789, 30.205057, 46.042900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.928844, 30.410624, 46.089058>,  <32.737274, 30.753235, 46.165985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928844, 30.410624, 46.089058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272325, 0.353237, -0.895021,
		0.834545, 0.376279, 0.402429,
		0.478930, -0.856527, -0.192322,
		33.072525, 30.153666, 46.031361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172440, 30.937283, 45.709377>,  <32.737274, 30.753235, 46.165985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172440, 30.937283, 45.709377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.191311, 30.538507, 45.684429>,  <33.202633, 30.299242, 45.669460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.191311, 30.538507, 45.684429>,  <33.172440, 30.937283, 45.709377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191311, 30.538507, 45.684429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323787, 0.074331, -0.943206,
		0.944953, 0.024303, 0.326302,
		0.047178, -0.996937, -0.062370,
		33.205463, 30.239426, 45.665718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876671, 30.786835, 45.533939>,  <33.172440, 30.937283, 45.709377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876671, 30.786835, 45.533939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.606087, 30.527096, 45.394939>,  <33.443737, 30.371252, 45.311539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.606087, 30.527096, 45.394939>,  <33.876671, 30.786835, 45.533939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606087, 30.527096, 45.394939> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388127, 0.086682, -0.917520,
		0.625911, -0.755536, 0.193392,
		-0.676455, -0.649347, -0.347500,
		33.403149, 30.332293, 45.290691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208679, 30.454540, 45.037231>,  <33.876671, 30.786835, 45.533939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208679, 30.454540, 45.037231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.827061, 30.375629, 44.946999>,  <33.598091, 30.328283, 44.892860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.827061, 30.375629, 44.946999>,  <34.208679, 30.454540, 45.037231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827061, 30.375629, 44.946999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167017, 0.274963, -0.946837,
		0.248805, -0.941000, -0.229380,
		-0.954045, -0.197268, -0.225576,
		33.540848, 30.316446, 44.879326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152042, 29.971884, 44.449978>,  <34.208679, 30.454540, 45.037231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152042, 29.971884, 44.449978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.839058, 30.219400, 44.477856>,  <33.651268, 30.367910, 44.494583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.839058, 30.219400, 44.477856>,  <34.152042, 29.971884, 44.449978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839058, 30.219400, 44.477856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164489, 0.313334, -0.935289,
		-0.600586, -0.720360, -0.346955,
		-0.782458, 0.618792, 0.069692,
		33.604321, 30.405037, 44.498764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021164, 29.999851, 43.756908>,  <34.152042, 29.971884, 44.449978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021164, 29.999851, 43.756908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.794250, 30.282320, 43.926384>,  <33.658104, 30.451801, 44.028069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.794250, 30.282320, 43.926384>,  <34.021164, 29.999851, 43.756908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794250, 30.282320, 43.926384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124786, 0.434829, -0.891825,
		-0.814012, -0.558789, -0.158551,
		-0.567285, 0.706172, 0.423685,
		33.624065, 30.494171, 44.053490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605446, 30.129881, 43.247585>,  <34.021164, 29.999851, 43.756908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605446, 30.129881, 43.247585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.530106, 30.450140, 43.475090>,  <33.484901, 30.642296, 43.611591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.530106, 30.450140, 43.475090>,  <33.605446, 30.129881, 43.247585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530106, 30.450140, 43.475090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324480, 0.495872, -0.805496,
		-0.926950, -0.336267, 0.166396,
		-0.188350, 0.800647, 0.568761,
		33.473602, 30.690334, 43.645718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900852, 30.306664, 43.074661>,  <33.605446, 30.129881, 43.247585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900852, 30.306664, 43.074661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.113846, 30.613211, 43.218407>,  <33.241642, 30.797138, 43.304653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.113846, 30.613211, 43.218407>,  <32.900852, 30.306664, 43.074661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113846, 30.613211, 43.218407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085498, 0.471089, -0.877932,
		-0.842111, 0.436759, 0.316370,
		0.532483, 0.766366, 0.359368,
		33.273590, 30.843121, 43.326218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453297, 30.826622, 43.060898>,  <32.900852, 30.306664, 43.074661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453297, 30.826622, 43.060898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.829861, 30.961344, 43.053955>,  <33.055801, 31.042177, 43.049789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.829861, 30.961344, 43.053955>,  <32.453297, 30.826622, 43.060898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829861, 30.961344, 43.053955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165315, 0.415992, -0.894215,
		-0.293955, 0.844697, 0.447300,
		0.941415, 0.336804, -0.017358,
		33.112286, 31.062386, 43.048748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526882, 31.632010, 42.864769>,  <32.453297, 30.826622, 43.060898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526882, 31.632010, 42.864769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.877033, 31.464535, 42.768085>,  <33.087124, 31.364050, 42.710075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.877033, 31.464535, 42.768085>,  <32.526882, 31.632010, 42.864769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877033, 31.464535, 42.768085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034556, 0.552873, -0.832549,
		0.482208, 0.720440, 0.498439,
		0.875375, -0.418686, -0.241704,
		33.139645, 31.338928, 42.695576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739223, 32.138733, 42.476444>,  <32.526882, 31.632010, 42.864769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739223, 32.138733, 42.476444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.004322, 31.856432, 42.376297>,  <33.163380, 31.687052, 42.316208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.004322, 31.856432, 42.376297>,  <32.739223, 32.138733, 42.476444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004322, 31.856432, 42.376297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171607, 0.468576, -0.866596,
		0.728918, 0.531367, 0.431658,
		0.662744, -0.705752, -0.250367,
		33.203144, 31.644707, 42.301186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271187, 32.477512, 42.174309>,  <32.739223, 32.138733, 42.476444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271187, 32.477512, 42.174309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.326065, 32.098213, 42.059769>,  <33.358990, 31.870632, 41.991043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.326065, 32.098213, 42.059769>,  <33.271187, 32.477512, 42.174309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326065, 32.098213, 42.059769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207719, 0.310199, -0.927701,
		0.968520, 0.067793, 0.239527,
		0.137193, -0.948251, -0.286352,
		33.367222, 31.813738, 41.973862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.329201, 34.203857, 25.938095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.210506, 34.387169, 26.273220>,  <46.139290, 34.497158, 26.474295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.210506, 34.387169, 26.273220>,  <46.329201, 34.203857, 25.938095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.210506, 34.387169, 26.273220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499453, 0.822245, -0.272872,
		-0.813938, 0.337477, -0.472878,
		-0.296734, 0.458282, 0.837811,
		46.121487, 34.524654, 26.524563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.762085, 34.411335, 25.543177>,  <46.329201, 34.203857, 25.938095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.762085, 34.411335, 25.543177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.030430, 34.117783, 25.500547>,  <46.191437, 33.941650, 25.474970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.030430, 34.117783, 25.500547>,  <45.762085, 34.411335, 25.543177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.030430, 34.117783, 25.500547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299196, -0.399350, 0.866603,
		-0.678548, -0.549483, -0.487484,
		0.670861, -0.733885, -0.106575,
		46.231689, 33.897617, 25.468575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.446140, 33.827831, 25.641380>,  <45.762085, 34.411335, 25.543177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.446140, 33.827831, 25.641380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.812916, 33.695454, 25.730551>,  <46.032982, 33.616028, 25.784052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.812916, 33.695454, 25.730551>,  <45.446140, 33.827831, 25.641380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.812916, 33.695454, 25.730551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316882, -0.264421, 0.910861,
		-0.242494, -0.905848, -0.347328,
		0.916941, -0.330940, 0.222927,
		46.087997, 33.596169, 25.797428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.332924, 33.243546, 25.946669>,  <45.446140, 33.827831, 25.641380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.332924, 33.243546, 25.946669> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.704212, 33.333591, 26.065147>,  <45.926987, 33.387619, 26.136234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.704212, 33.333591, 26.065147>,  <45.332924, 33.243546, 25.946669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.704212, 33.333591, 26.065147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218907, -0.313257, 0.924094,
		0.300812, -0.922602, -0.241493,
		0.928220, 0.225114, 0.296195,
		45.982677, 33.401127, 26.154007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.567951, 32.606754, 26.339527>,  <45.332924, 33.243546, 25.946669>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.567951, 32.606754, 26.339527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.796276, 32.909653, 26.466496>,  <45.933273, 33.091393, 26.542677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.796276, 32.909653, 26.466496>,  <45.567951, 32.606754, 26.339527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.796276, 32.909653, 26.466496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307017, -0.161702, 0.937866,
		0.761520, -0.632800, 0.140184,
		0.570814, 0.757243, 0.317420,
		45.967522, 33.136826, 26.561722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.851227, 32.476254, 27.010912>,  <45.567951, 32.606754, 26.339527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.851227, 32.476254, 27.010912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.928944, 32.868473, 26.999769>,  <45.975574, 33.103806, 26.993084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.928944, 32.868473, 26.999769>,  <45.851227, 32.476254, 27.010912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.928944, 32.868473, 26.999769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313484, 0.088975, 0.945416,
		0.929504, -0.174956, 0.324673,
		0.194294, 0.980548, -0.027857,
		45.987232, 33.162636, 26.991411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.286354, 32.479885, 27.507797>,  <45.851227, 32.476254, 27.010912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.286354, 32.479885, 27.507797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.125927, 32.842934, 27.458220>,  <46.029671, 33.060764, 27.428473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.125927, 32.842934, 27.458220>,  <46.286354, 32.479885, 27.507797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.125927, 32.842934, 27.458220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268878, 0.012707, 0.963090,
		0.875699, 0.419591, 0.238944,
		-0.401067, 0.907624, -0.123947,
		46.005608, 33.115219, 27.421036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.425079, 32.845840, 28.037418>,  <46.286354, 32.479885, 27.507797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.425079, 32.845840, 28.037418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.115410, 33.059517, 27.901602>,  <45.929607, 33.187721, 27.820112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.115410, 33.059517, 27.901602>,  <46.425079, 32.845840, 28.037418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.115410, 33.059517, 27.901602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362082, 0.066245, 0.929789,
		0.519179, 0.842764, 0.142136,
		-0.774177, 0.534192, -0.339543,
		45.883156, 33.219776, 27.799740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.457615, 33.375034, 28.535749>,  <46.425079, 32.845840, 28.037418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.457615, 33.375034, 28.535749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.096024, 33.362946, 28.365145>,  <45.879070, 33.355690, 28.262781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.096024, 33.362946, 28.365145>,  <46.457615, 33.375034, 28.535749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.096024, 33.362946, 28.365145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423744, 0.196695, 0.884167,
		0.057168, 0.979999, -0.190616,
		-0.903976, -0.030226, -0.426514,
		45.824829, 33.353878, 28.237190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.180710, 33.882614, 28.942440>,  <46.457615, 33.375034, 28.535749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.180710, 33.882614, 28.942440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.888817, 33.668587, 28.772173>,  <45.713680, 33.540169, 28.670013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.888817, 33.668587, 28.772173>,  <46.180710, 33.882614, 28.942440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.888817, 33.668587, 28.772173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583034, 0.161746, 0.796184,
		-0.357166, 0.829177, -0.429996,
		-0.729728, -0.535073, -0.425668,
		45.669899, 33.508064, 28.644472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.530529, 34.280605, 29.043001>,  <46.180710, 33.882614, 28.942440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.530529, 34.280605, 29.043001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.404274, 33.911572, 28.954275>,  <45.328522, 33.690151, 28.901039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.404274, 33.911572, 28.954275>,  <45.530529, 34.280605, 29.043001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.404274, 33.911572, 28.954275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635146, 0.031752, 0.771739,
		-0.704954, 0.384479, -0.596000,
		-0.315641, -0.922588, -0.221817,
		45.309582, 33.634796, 28.887730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874214, 34.383636, 28.952011>,  <45.530529, 34.280605, 29.043001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874214, 34.383636, 28.952011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.895256, 33.994869, 29.043762>,  <44.907883, 33.761608, 29.098814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.895256, 33.994869, 29.043762>,  <44.874214, 34.383636, 28.952011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.895256, 33.994869, 29.043762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633387, 0.145106, 0.760109,
		-0.772045, -0.185274, -0.607964,
		0.052609, -0.971915, 0.229379,
		44.911037, 33.703297, 29.112576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.185925, 34.214104, 28.977655>,  <44.874214, 34.383636, 28.952011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.185925, 34.214104, 28.977655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.405022, 33.956562, 29.191359>,  <44.536480, 33.802036, 29.319580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.405022, 33.956562, 29.191359>,  <44.185925, 34.214104, 28.977655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.405022, 33.956562, 29.191359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668901, 0.046561, 0.741892,
		-0.502544, -0.763732, -0.405170,
		0.547742, -0.643853, 0.534260,
		44.569344, 33.763405, 29.351637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.722713, 33.827175, 29.292950>,  <44.185925, 34.214104, 28.977655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.722713, 33.827175, 29.292950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.050091, 33.776627, 29.517160>,  <44.246517, 33.746300, 29.651686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.050091, 33.776627, 29.517160>,  <43.722713, 33.827175, 29.292950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.050091, 33.776627, 29.517160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560383, 0.040057, 0.827264,
		-0.126995, -0.991174, -0.038031,
		0.818439, -0.126370, 0.560524,
		44.295624, 33.738716, 29.685318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.408295, 33.468113, 29.895744>,  <43.722713, 33.827175, 29.292950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.408295, 33.468113, 29.895744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.772511, 33.588486, 30.009138>,  <43.991039, 33.660709, 30.077173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.772511, 33.588486, 30.009138>,  <43.408295, 33.468113, 29.895744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772511, 33.588486, 30.009138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313824, 0.056714, 0.947786,
		0.269143, -0.951957, 0.146080,
		0.910536, 0.300934, 0.283483,
		44.045670, 33.678764, 30.094183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.626163, 33.034832, 30.455063>,  <43.408295, 33.468113, 29.895744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.626163, 33.034832, 30.455063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.835716, 33.375240, 30.469517>,  <43.961449, 33.579487, 30.478189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.835716, 33.375240, 30.469517>,  <43.626163, 33.034832, 30.455063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.835716, 33.375240, 30.469517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384515, 0.198428, 0.901540,
		0.760061, -0.486196, 0.431184,
		0.523884, 0.851022, 0.036133,
		43.992882, 33.630547, 30.480356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.023293, 32.973694, 30.987202>,  <43.626163, 33.034832, 30.455063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.023293, 32.973694, 30.987202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.994232, 33.367691, 30.924578>,  <43.976795, 33.604088, 30.887003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.994232, 33.367691, 30.924578>,  <44.023293, 32.973694, 30.987202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.994232, 33.367691, 30.924578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270086, 0.131680, 0.953789,
		0.960091, 0.111582, 0.256466,
		-0.072655, 0.984992, -0.156561,
		43.972435, 33.663189, 30.877609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266495, 33.229904, 31.538904>,  <44.023293, 32.973694, 30.987202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266495, 33.229904, 31.538904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.075836, 33.560593, 31.419346>,  <43.961441, 33.759007, 31.347610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.075836, 33.560593, 31.419346>,  <44.266495, 33.229904, 31.538904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.075836, 33.560593, 31.419346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141076, 0.263663, 0.954243,
		0.867700, 0.497005, -0.009044,
		-0.476648, 0.826721, -0.298897,
		43.932842, 33.808609, 31.329678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.502087, 33.861027, 31.909372>,  <44.266495, 33.229904, 31.538904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.502087, 33.861027, 31.909372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.120087, 33.910881, 31.801712>,  <43.890888, 33.940796, 31.737116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.120087, 33.910881, 31.801712>,  <44.502087, 33.861027, 31.909372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.120087, 33.910881, 31.801712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258247, 0.096939, 0.961203,
		0.145895, 0.987455, -0.060389,
		-0.954999, 0.124639, -0.269151,
		43.833588, 33.948273, 31.720966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266239, 34.419441, 32.354500>,  <44.502087, 33.861027, 31.909372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266239, 34.419441, 32.354500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.919094, 34.278397, 32.214512>,  <43.710808, 34.193771, 32.130520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.919094, 34.278397, 32.214512>,  <44.266239, 34.419441, 32.354500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.919094, 34.278397, 32.214512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414256, 0.124780, 0.901566,
		-0.274234, 0.927413, -0.254364,
		-0.867864, -0.352612, -0.349968,
		43.658733, 34.172611, 32.109520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824165, 34.824169, 32.587631>,  <44.266239, 34.419441, 32.354500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824165, 34.824169, 32.587631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.609940, 34.505085, 32.476761>,  <43.481403, 34.313637, 32.410236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.609940, 34.505085, 32.476761>,  <43.824165, 34.824169, 32.587631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.609940, 34.505085, 32.476761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571288, 0.100515, 0.814572,
		-0.621930, 0.594608, -0.509554,
		-0.535568, -0.797708, -0.277179,
		43.449268, 34.265774, 32.393608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.551647, 35.034462, 33.039349>,  <43.824165, 34.824169, 32.587631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.551647, 35.034462, 33.039349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.914455, 34.875717, 33.095654>,  <45.132141, 34.780468, 33.129436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.914455, 34.875717, 33.095654>,  <44.551647, 35.034462, 33.039349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.914455, 34.875717, 33.095654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301792, 0.379531, -0.874573,
		0.293664, 0.835735, 0.464013,
		0.907019, -0.396866, 0.140763,
		45.186562, 34.756657, 33.137882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.248158, 35.378738, 32.987572>,  <44.551647, 35.034462, 33.039349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.248158, 35.378738, 32.987572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.630196, 35.287228, 32.912266>,  <45.859421, 35.232319, 32.867081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.630196, 35.287228, 32.912266>,  <45.248158, 35.378738, 32.987572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.630196, 35.287228, 32.912266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077775, 0.419551, -0.904394,
		0.285895, 0.878429, 0.382919,
		0.955100, -0.228780, -0.188267,
		45.916725, 35.218594, 32.855785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.570782, 35.951851, 32.628063>,  <45.248158, 35.378738, 32.987572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.570782, 35.951851, 32.628063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.846024, 35.672985, 32.547600>,  <46.011169, 35.505665, 32.499321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.846024, 35.672985, 32.547600>,  <45.570782, 35.951851, 32.628063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.846024, 35.672985, 32.547600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102624, 0.367949, -0.924165,
		0.718317, 0.615279, 0.324734,
		0.688105, -0.697169, -0.201162,
		46.052456, 35.463833, 32.487251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.077274, 36.310719, 32.297794>,  <45.570782, 35.951851, 32.628063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.077274, 36.310719, 32.297794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.163460, 35.945988, 32.157997>,  <46.215172, 35.727150, 32.074120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.163460, 35.945988, 32.157997>,  <46.077274, 36.310719, 32.297794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.163460, 35.945988, 32.157997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203381, 0.391953, -0.897223,
		0.955099, 0.122235, 0.269899,
		0.215459, -0.911829, -0.349493,
		46.228096, 35.672440, 32.053150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.626228, 36.393314, 31.788534>,  <46.077274, 36.310719, 32.297794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.626228, 36.393314, 31.788534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.479042, 36.026836, 31.725042>,  <46.390728, 35.806950, 31.686947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.479042, 36.026836, 31.725042>,  <46.626228, 36.393314, 31.788534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.479042, 36.026836, 31.725042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055243, 0.191944, -0.979850,
		0.928196, -0.351785, -0.121242,
		-0.367968, -0.916190, -0.158728,
		46.368652, 35.751980, 31.677423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.012310, 36.084625, 31.172434>,  <46.626228, 36.393314, 31.788534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.012310, 36.084625, 31.172434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.663979, 35.887993, 31.173058>,  <46.454979, 35.770012, 31.173431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.663979, 35.887993, 31.173058>,  <47.012310, 36.084625, 31.172434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.663979, 35.887993, 31.173058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141571, 0.247752, -0.958424,
		0.470758, -0.834845, -0.285343,
		-0.870830, -0.491583, 0.001558,
		46.402729, 35.740517, 31.173525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.988140, 35.710423, 30.601871>,  <47.012310, 36.084625, 31.172434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.988140, 35.710423, 30.601871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.601471, 35.693604, 30.702883>,  <46.369469, 35.683514, 30.763491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.601471, 35.693604, 30.702883>,  <46.988140, 35.710423, 30.601871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.601471, 35.693604, 30.702883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255463, 0.094241, -0.962215,
		0.016655, -0.994661, -0.101840,
		-0.966675, -0.042042, 0.252529,
		46.311470, 35.680988, 30.778641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.596104, 35.203438, 30.063854>,  <46.988140, 35.710423, 30.601871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.596104, 35.203438, 30.063854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.347874, 35.463669, 30.238956>,  <46.198936, 35.619808, 30.344017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.347874, 35.463669, 30.238956>,  <46.596104, 35.203438, 30.063854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.347874, 35.463669, 30.238956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553896, 0.031472, -0.831991,
		-0.555055, -0.758784, 0.340824,
		-0.620575, 0.650581, 0.437757,
		46.161701, 35.658844, 30.370283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.936035, 34.993294, 29.905453>,  <46.596104, 35.203438, 30.063854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.936035, 34.993294, 29.905453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.884380, 35.377106, 30.005550>,  <45.853386, 35.607395, 30.065609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.884380, 35.377106, 30.005550>,  <45.936035, 34.993294, 29.905453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.884380, 35.377106, 30.005550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535923, 0.144794, -0.831758,
		-0.834332, -0.241523, 0.495536,
		-0.129138, 0.959532, 0.250244,
		45.845638, 35.664967, 30.080624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269428, 35.126022, 29.788544>,  <45.936035, 34.993294, 29.905453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269428, 35.126022, 29.788544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.456600, 35.479439, 29.796583>,  <45.568901, 35.691486, 29.801407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.456600, 35.479439, 29.796583>,  <45.269428, 35.126022, 29.788544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.456600, 35.479439, 29.796583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421643, 0.243175, -0.873546,
		-0.776698, 0.400283, 0.486326,
		0.467928, 0.883538, 0.020097,
		45.596977, 35.744499, 29.802612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786118, 35.726280, 29.678242>,  <45.269428, 35.126022, 29.788544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786118, 35.726280, 29.678242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.151047, 35.853725, 29.575357>,  <45.370003, 35.930191, 29.513628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.151047, 35.853725, 29.575357>,  <44.786118, 35.726280, 29.678242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.151047, 35.853725, 29.575357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332707, 0.210621, -0.919209,
		-0.238699, 0.924188, 0.298158,
		0.912321, 0.318614, -0.257209,
		45.424744, 35.949310, 29.498196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.650532, 36.259457, 29.339718>,  <44.786118, 35.726280, 29.678242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.650532, 36.259457, 29.339718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.027664, 36.210575, 29.215693>,  <45.253944, 36.181244, 29.141277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.027664, 36.210575, 29.215693>,  <44.650532, 36.259457, 29.339718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.027664, 36.210575, 29.215693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208935, 0.508083, -0.835582,
		0.259651, 0.852594, 0.453502,
		0.942830, -0.122207, -0.310061,
		45.310513, 36.173912, 29.122675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.841404, 36.892303, 28.908051>,  <44.650532, 36.259457, 29.339718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.841404, 36.892303, 28.908051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.119144, 36.623875, 28.804102>,  <45.285789, 36.462818, 28.741734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.119144, 36.623875, 28.804102>,  <44.841404, 36.892303, 28.908051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.119144, 36.623875, 28.804102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061628, 0.415237, -0.907623,
		0.716990, 0.614197, 0.329678,
		0.694354, -0.671074, -0.259869,
		45.327450, 36.422554, 28.726141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.448441, 37.243546, 28.525753>,  <44.841404, 36.892303, 28.908051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.448441, 37.243546, 28.525753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.494705, 36.856323, 28.436764>,  <45.522465, 36.623989, 28.383369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.494705, 36.856323, 28.436764>,  <45.448441, 37.243546, 28.525753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.494705, 36.856323, 28.436764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269459, 0.246157, -0.931020,
		0.956041, 0.047732, 0.289321,
		0.115658, -0.968054, -0.222474,
		45.529404, 36.565907, 28.370022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.202003, 37.154015, 28.210104>,  <45.448441, 37.243546, 28.525753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.202003, 37.154015, 28.210104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.916447, 36.906841, 28.078333>,  <45.745113, 36.758537, 27.999271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.916447, 36.906841, 28.078333>,  <46.202003, 37.154015, 28.210104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.916447, 36.906841, 28.078333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267183, 0.194486, -0.943816,
		0.647284, -0.761797, 0.026260,
		-0.713889, -0.617933, -0.329427,
		45.702278, 36.721462, 27.979506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.523689, 36.773853, 27.716833>,  <46.202003, 37.154015, 28.210104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.523689, 36.773853, 27.716833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.141926, 36.680927, 27.641851>,  <45.912868, 36.625172, 27.596863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.141926, 36.680927, 27.641851>,  <46.523689, 36.773853, 27.716833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.141926, 36.680927, 27.641851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204819, -0.052797, -0.977375,
		0.217166, -0.971206, 0.097973,
		-0.954404, -0.232320, -0.187455,
		45.855606, 36.611233, 27.585615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.570961, 36.368679, 27.197557>,  <46.523689, 36.773853, 27.716833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.570961, 36.368679, 27.197557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.179024, 36.445236, 27.174656>,  <45.943863, 36.491173, 27.160915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.179024, 36.445236, 27.174656>,  <46.570961, 36.368679, 27.197557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.179024, 36.445236, 27.174656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033772, -0.123759, -0.991737,
		-0.196903, -0.973679, 0.114800,
		-0.979841, 0.191399, -0.057252,
		45.885071, 36.502655, 27.157480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.270824, 35.850765, 26.674431>,  <46.570961, 36.368679, 27.197557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.270824, 35.850765, 26.674431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.030239, 36.169979, 26.689291>,  <45.885887, 36.361507, 26.698208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.030239, 36.169979, 26.689291>,  <46.270824, 35.850765, 26.674431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.030239, 36.169979, 26.689291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108498, 0.127669, -0.985864,
		-0.791497, -0.588933, -0.163373,
		-0.601466, 0.798034, 0.037152,
		45.849800, 36.409389, 26.700436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.667950, 35.695122, 26.251148>,  <46.270824, 35.850765, 26.674431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.667950, 35.695122, 26.251148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.708797, 36.092499, 26.271708>,  <45.733307, 36.330925, 26.284044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.708797, 36.092499, 26.271708>,  <45.667950, 35.695122, 26.251148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.708797, 36.092499, 26.271708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062054, 0.057932, -0.996390,
		-0.992835, 0.098563, 0.067564,
		0.102121, 0.993443, 0.051401,
		45.739433, 36.390533, 26.287128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.225048, 35.855217, 25.714100>,  <45.667950, 35.695122, 26.251148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.225048, 35.855217, 25.714100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.393272, 36.206394, 25.805607>,  <45.494209, 36.417103, 25.860512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.393272, 36.206394, 25.805607>,  <45.225048, 35.855217, 25.714100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.393272, 36.206394, 25.805607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078980, 0.286624, -0.954782,
		-0.903819, 0.383478, 0.189883,
		0.420563, 0.877947, 0.228769,
		45.519440, 36.469780, 25.874237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.715908, 36.414486, 25.675604>,  <45.225048, 35.855217, 25.714100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.715908, 36.414486, 25.675604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.077400, 36.567276, 25.598286>,  <45.294296, 36.658951, 25.551895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.077400, 36.567276, 25.598286>,  <44.715908, 36.414486, 25.675604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.077400, 36.567276, 25.598286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318960, 0.299621, -0.899162,
		-0.285544, 0.874254, 0.392613,
		0.903731, 0.381978, -0.193297,
		45.348518, 36.681870, 25.540297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.241810, 34.376118, 38.749981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937286, 34.132126, 38.662033>,  <37.754574, 33.985733, 38.609264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937286, 34.132126, 38.662033>,  <38.241810, 34.376118, 38.749981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937286, 34.132126, 38.662033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249721, 0.037104, -0.967607,
		0.598377, -0.791549, 0.124077,
		-0.761305, -0.609978, -0.219868,
		37.708897, 33.949131, 38.596073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542984, 34.108334, 38.124176>,  <38.241810, 34.376118, 38.749981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542984, 34.108334, 38.124176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155193, 34.010300, 38.121387>,  <37.922520, 33.951477, 38.119717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155193, 34.010300, 38.121387>,  <38.542984, 34.108334, 38.124176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155193, 34.010300, 38.121387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007755, 0.059053, -0.998225,
		0.245066, -0.967700, -0.059151,
		-0.969476, -0.245089, -0.006967,
		37.864349, 33.936771, 38.119297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474564, 33.703152, 37.613754>,  <38.542984, 34.108334, 38.124176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474564, 33.703152, 37.613754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099262, 33.837669, 37.646210>,  <37.874081, 33.918381, 37.665684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099262, 33.837669, 37.646210>,  <38.474564, 33.703152, 37.613754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099262, 33.837669, 37.646210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046893, 0.108755, -0.992962,
		-0.342748, -0.935458, -0.086270,
		-0.938256, 0.336291, 0.081142,
		37.817787, 33.938557, 37.670551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035931, 33.182652, 37.443142>,  <38.474564, 33.703152, 37.613754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035931, 33.182652, 37.443142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880165, 33.540508, 37.355530>,  <37.786705, 33.755222, 37.302963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880165, 33.540508, 37.355530>,  <38.035931, 33.182652, 37.443142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880165, 33.540508, 37.355530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082130, -0.203124, -0.975703,
		-0.917393, -0.397942, 0.005622,
		-0.389415, 0.894641, -0.219027,
		37.763340, 33.808899, 37.289822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694813, 33.062935, 36.850254>,  <38.035931, 33.182652, 37.443142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694813, 33.062935, 36.850254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689262, 33.462524, 36.833031>,  <37.685932, 33.702278, 36.822697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689262, 33.462524, 36.833031>,  <37.694813, 33.062935, 36.850254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689262, 33.462524, 36.833031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040068, -0.042469, -0.998294,
		-0.999101, -0.015578, -0.039437,
		-0.013877, 0.998976, -0.043055,
		37.685101, 33.762218, 36.820114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135082, 33.195869, 36.390209>,  <37.694813, 33.062935, 36.850254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135082, 33.195869, 36.390209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352837, 33.531311, 36.398052>,  <37.483490, 33.732574, 36.402756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352837, 33.531311, 36.398052>,  <37.135082, 33.195869, 36.390209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352837, 33.531311, 36.398052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075402, -0.025646, -0.996823,
		-0.835437, 0.544138, -0.077194,
		0.544389, 0.838604, 0.019604,
		37.516155, 33.782890, 36.403934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862339, 33.584023, 35.785954>,  <37.135082, 33.195869, 36.390209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862339, 33.584023, 35.785954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203766, 33.785282, 35.840012>,  <37.408623, 33.906040, 35.872448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203766, 33.785282, 35.840012>,  <36.862339, 33.584023, 35.785954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203766, 33.785282, 35.840012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042681, 0.191003, -0.980661,
		-0.519237, 0.842825, 0.141558,
		0.853564, 0.503153, 0.135149,
		37.459835, 33.936230, 35.880558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839676, 34.066402, 35.265709>,  <36.862339, 33.584023, 35.785954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839676, 34.066402, 35.265709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222763, 34.074070, 35.380535>,  <37.452618, 34.078671, 35.449429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222763, 34.074070, 35.380535>,  <36.839676, 34.066402, 35.265709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222763, 34.074070, 35.380535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280550, 0.158857, -0.946602,
		-0.063752, 0.987115, 0.146762,
		0.957720, 0.019173, 0.287063,
		37.510078, 34.079823, 35.466656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167114, 34.661263, 35.011948>,  <36.839676, 34.066402, 35.265709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167114, 34.661263, 35.011948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458328, 34.390385, 35.054607>,  <37.633057, 34.227859, 35.080204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458328, 34.390385, 35.054607>,  <37.167114, 34.661263, 35.011948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458328, 34.390385, 35.054607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138321, -0.007271, -0.990361,
		0.671444, 0.735767, 0.088377,
		0.728032, -0.677196, 0.106654,
		37.676739, 34.187225, 35.086605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658833, 34.824631, 34.415680>,  <37.167114, 34.661263, 35.011948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658833, 34.824631, 34.415680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779152, 34.463737, 34.539295>,  <37.851345, 34.247204, 34.613464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779152, 34.463737, 34.539295>,  <37.658833, 34.824631, 34.415680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779152, 34.463737, 34.539295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329099, -0.205937, -0.921566,
		0.895105, 0.378911, 0.234976,
		0.300801, -0.902229, 0.309034,
		37.869392, 34.193069, 34.632004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354122, 34.654472, 34.215675>,  <37.658833, 34.824631, 34.415680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354122, 34.654472, 34.215675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159801, 34.308319, 34.264847>,  <38.043209, 34.100628, 34.294350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159801, 34.308319, 34.264847>,  <38.354122, 34.654472, 34.215675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159801, 34.308319, 34.264847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257092, -0.275892, -0.926168,
		0.835403, -0.418332, 0.356512,
		-0.485805, -0.865379, 0.122932,
		38.014061, 34.048706, 34.301727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821198, 34.165333, 34.253590>,  <38.354122, 34.654472, 34.215675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821198, 34.165333, 34.253590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492180, 33.968521, 34.139515>,  <38.294769, 33.850433, 34.071072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492180, 33.968521, 34.139515>,  <38.821198, 34.165333, 34.253590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492180, 33.968521, 34.139515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474146, -0.316431, -0.821619,
		0.314016, -0.811038, 0.493571,
		-0.822545, -0.492026, -0.285186,
		38.245415, 33.820915, 34.053959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013233, 33.486153, 33.928162>,  <38.821198, 34.165333, 34.253590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013233, 33.486153, 33.928162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636169, 33.532158, 33.802837>,  <38.409931, 33.559761, 33.727642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636169, 33.532158, 33.802837>,  <39.013233, 33.486153, 33.928162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636169, 33.532158, 33.802837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232470, -0.447329, -0.863628,
		-0.239479, -0.886944, 0.394943,
		-0.942660, 0.115009, -0.313314,
		38.353371, 33.566662, 33.708843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719902, 32.863182, 33.863304>,  <39.013233, 33.486153, 33.928162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719902, 32.863182, 33.863304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557381, 33.120529, 33.603767>,  <38.459869, 33.274937, 33.448044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557381, 33.120529, 33.603767>,  <38.719902, 32.863182, 33.863304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557381, 33.120529, 33.603767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171008, -0.644008, -0.745661,
		-0.897593, -0.413922, 0.151643,
		-0.406305, 0.643367, -0.648841,
		38.435490, 33.313538, 33.409115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232288, 32.840183, 33.264896>,  <38.719902, 32.863182, 33.863304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232288, 32.840183, 33.264896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515537, 32.558365, 33.246250>,  <39.685486, 32.389275, 33.235062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515537, 32.558365, 33.246250>,  <39.232288, 32.840183, 33.264896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515537, 32.558365, 33.246250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451464, -0.502543, 0.737313,
		-0.542902, -0.501060, -0.673940,
		0.708122, -0.704549, -0.046621,
		39.727974, 32.347000, 33.232265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894215, 32.191868, 33.168163>,  <39.232288, 32.840183, 33.264896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894215, 32.191868, 33.168163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254814, 32.104614, 33.317677>,  <39.471176, 32.052261, 33.407383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254814, 32.104614, 33.317677>,  <38.894215, 32.191868, 33.168163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254814, 32.104614, 33.317677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432416, -0.489066, 0.757516,
		0.017566, -0.844531, -0.535218,
		0.901503, -0.218130, 0.373780,
		39.525265, 32.039173, 33.429810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753254, 31.570232, 33.541981>,  <38.894215, 32.191868, 33.168163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753254, 31.570232, 33.541981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124599, 31.668575, 33.653481>,  <39.347404, 31.727581, 33.720383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124599, 31.668575, 33.653481>,  <38.753254, 31.570232, 33.541981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124599, 31.668575, 33.653481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133146, -0.480225, 0.866981,
		0.347017, -0.841985, -0.413087,
		0.928360, 0.245856, 0.278753,
		39.403107, 31.742332, 33.737106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035568, 30.885855, 33.890503>,  <38.753254, 31.570232, 33.541981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035568, 30.885855, 33.890503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240471, 31.201605, 34.025845>,  <39.363411, 31.391054, 34.107048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240471, 31.201605, 34.025845>,  <39.035568, 30.885855, 33.890503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240471, 31.201605, 34.025845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120834, -0.456292, 0.881588,
		0.850292, -0.410710, -0.329120,
		0.512252, 0.789376, 0.338354,
		39.394146, 31.438417, 34.127350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505165, 30.655577, 34.408253>,  <39.035568, 30.885855, 33.890503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505165, 30.655577, 34.408253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513767, 31.042042, 34.511063>,  <39.518929, 31.273922, 34.572750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513767, 31.042042, 34.511063>,  <39.505165, 30.655577, 34.408253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513767, 31.042042, 34.511063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206561, -0.247247, 0.946679,
		0.978197, -0.073447, 0.194256,
		0.021502, 0.966165, 0.257028,
		39.520218, 31.331892, 34.588169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059521, 30.846472, 34.907238>,  <39.505165, 30.655577, 34.408253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059521, 30.846472, 34.907238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795124, 31.137888, 34.979153>,  <39.636486, 31.312738, 35.022301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795124, 31.137888, 34.979153>,  <40.059521, 30.846472, 34.907238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795124, 31.137888, 34.979153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054851, -0.192037, 0.979854,
		0.748390, 0.657532, 0.086973,
		-0.660987, 0.728542, 0.179785,
		39.596828, 31.356451, 35.033089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334221, 31.119709, 35.466801>,  <40.059521, 30.846472, 34.907238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334221, 31.119709, 35.466801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951805, 31.236990, 35.468170>,  <39.722355, 31.307360, 35.468990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951805, 31.236990, 35.468170>,  <40.334221, 31.119709, 35.466801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951805, 31.236990, 35.468170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014692, -0.059560, 0.998117,
		0.292856, 0.954193, 0.061250,
		-0.956044, 0.293204, 0.003423,
		39.664993, 31.324951, 35.469196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310154, 31.566486, 36.018616>,  <40.334221, 31.119709, 35.466801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310154, 31.566486, 36.018616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925426, 31.484715, 35.945820>,  <39.694592, 31.435652, 35.902142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925426, 31.484715, 35.945820>,  <40.310154, 31.566486, 36.018616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925426, 31.484715, 35.945820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154447, -0.143563, 0.977515,
		-0.225960, 0.968297, 0.106507,
		-0.961815, -0.204429, -0.181990,
		39.636883, 31.423386, 35.891224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.940437, 32.045044, 36.478622>,  <40.310154, 31.566486, 36.018616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.940437, 32.045044, 36.478622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697876, 31.743448, 36.377613>,  <39.552338, 31.562490, 36.317009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697876, 31.743448, 36.377613>,  <39.940437, 32.045044, 36.478622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697876, 31.743448, 36.377613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388385, 0.003748, 0.921490,
		-0.693849, 0.656873, -0.295112,
		-0.606408, -0.753992, -0.252519,
		39.515953, 31.517250, 36.301857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330776, 32.147858, 36.824375>,  <39.940437, 32.045044, 36.478622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330776, 32.147858, 36.824375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313553, 31.758545, 36.734165>,  <39.303219, 31.524956, 36.680038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313553, 31.758545, 36.734165>,  <39.330776, 32.147858, 36.824375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313553, 31.758545, 36.734165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396049, -0.190616, 0.898226,
		-0.917219, 0.127992, -0.377262,
		-0.043054, -0.973285, -0.225528,
		39.300636, 31.466560, 36.666508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745193, 31.881338, 37.257755>,  <39.330776, 32.147858, 36.824375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745193, 31.881338, 37.257755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963997, 31.561354, 37.159088>,  <39.095280, 31.369364, 37.099888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963997, 31.561354, 37.159088>,  <38.745193, 31.881338, 37.257755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963997, 31.561354, 37.159088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088131, -0.348050, 0.933324,
		-0.832475, -0.488797, -0.260888,
		0.547008, -0.799961, -0.246665,
		39.128101, 31.321365, 37.085087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404789, 31.340460, 37.642479>,  <38.745193, 31.881338, 37.257755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404789, 31.340460, 37.642479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760723, 31.184225, 37.548130>,  <38.974285, 31.090485, 37.491520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760723, 31.184225, 37.548130>,  <38.404789, 31.340460, 37.642479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760723, 31.184225, 37.548130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009378, -0.501177, 0.865294,
		-0.456182, -0.772183, -0.442303,
		0.889837, -0.390584, -0.235869,
		39.027676, 31.067049, 37.477367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293789, 30.620710, 37.720425>,  <38.404789, 31.340460, 37.642479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293789, 30.620710, 37.720425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680191, 30.711935, 37.769131>,  <38.912033, 30.766670, 37.798355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680191, 30.711935, 37.769131>,  <38.293789, 30.620710, 37.720425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680191, 30.711935, 37.769131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045423, -0.313957, 0.948350,
		0.254512, -0.921640, -0.292924,
		0.966002, 0.228060, 0.121770,
		38.969994, 30.780354, 37.805660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598156, 30.051205, 38.093658>,  <38.293789, 30.620710, 37.720425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598156, 30.051205, 38.093658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890533, 30.319580, 38.143562>,  <39.065960, 30.480606, 38.173504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890533, 30.319580, 38.143562>,  <38.598156, 30.051205, 38.093658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890533, 30.319580, 38.143562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001907, -0.184816, 0.982771,
		0.682436, -0.718112, -0.136370,
		0.730943, 0.670938, 0.124756,
		39.109818, 30.520861, 38.180988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959759, 29.458412, 37.779636>,  <38.598156, 30.051205, 38.093658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959759, 29.458412, 37.779636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779697, 29.102489, 37.749676>,  <38.671661, 28.888935, 37.731701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779697, 29.102489, 37.749676>,  <38.959759, 29.458412, 37.779636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779697, 29.102489, 37.749676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094988, 0.131121, -0.986805,
		0.887887, -0.437095, -0.143545,
		-0.450150, -0.889806, -0.074902,
		38.644653, 28.835548, 37.727203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244251, 29.146643, 37.216007>,  <38.959759, 29.458412, 37.779636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244251, 29.146643, 37.216007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903175, 28.940283, 37.248894>,  <38.698528, 28.816467, 37.268627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903175, 28.940283, 37.248894>,  <39.244251, 29.146643, 37.216007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903175, 28.940283, 37.248894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063816, -0.053342, -0.996535,
		0.518498, -0.854987, 0.012562,
		-0.852694, -0.515900, 0.082219,
		38.647366, 28.785513, 37.273560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261600, 28.595209, 36.650055>,  <39.244251, 29.146643, 37.216007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261600, 28.595209, 36.650055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886288, 28.608631, 36.787746>,  <38.661098, 28.616684, 36.870361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886288, 28.608631, 36.787746>,  <39.261600, 28.595209, 36.650055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886288, 28.608631, 36.787746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341983, 0.058699, -0.937871,
		-0.051682, -0.997711, -0.043599,
		-0.938284, 0.033561, 0.344234,
		38.604801, 28.618698, 36.891018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871803, 28.130943, 36.231976>,  <39.261600, 28.595209, 36.650055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871803, 28.130943, 36.231976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584381, 28.372124, 36.370613>,  <38.411926, 28.516832, 36.453796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584381, 28.372124, 36.370613>,  <38.871803, 28.130943, 36.231976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584381, 28.372124, 36.370613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319390, 0.156597, -0.934595,
		-0.617790, -0.782257, 0.080053,
		-0.718558, 0.602952, 0.346590,
		38.368813, 28.553009, 36.474590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291534, 27.925800, 35.941448>,  <38.871803, 28.130943, 36.231976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291534, 27.925800, 35.941448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218479, 28.308193, 36.033310>,  <38.174644, 28.537628, 36.088428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218479, 28.308193, 36.033310>,  <38.291534, 27.925800, 35.941448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218479, 28.308193, 36.033310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219619, 0.188014, -0.957297,
		-0.958337, -0.225278, 0.175612,
		-0.182640, 0.955981, 0.229656,
		38.163689, 28.594988, 36.102207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774082, 28.012165, 35.474770>,  <38.291534, 27.925800, 35.941448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774082, 28.012165, 35.474770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882103, 28.376234, 35.600410>,  <37.946915, 28.594675, 35.675797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882103, 28.376234, 35.600410>,  <37.774082, 28.012165, 35.474770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882103, 28.376234, 35.600410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082834, 0.346977, -0.934208,
		-0.959277, 0.226264, 0.169094,
		0.270050, 0.910171, 0.314105,
		37.963120, 28.649286, 35.694641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249420, 28.376749, 35.174603>,  <37.774082, 28.012165, 35.474770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249420, 28.376749, 35.174603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561115, 28.613476, 35.257103>,  <37.748131, 28.755512, 35.306602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561115, 28.613476, 35.257103>,  <37.249420, 28.376749, 35.174603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561115, 28.613476, 35.257103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140285, 0.485445, -0.862939,
		-0.610824, 0.643502, 0.461301,
		0.779239, 0.591818, 0.206248,
		37.794888, 28.791021, 35.318977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001160, 29.112640, 35.142731>,  <37.249420, 28.376749, 35.174603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001160, 29.112640, 35.142731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397095, 29.149441, 35.099361>,  <37.634655, 29.171522, 35.073341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397095, 29.149441, 35.099361>,  <37.001160, 29.112640, 35.142731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397095, 29.149441, 35.099361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140230, 0.505191, -0.851538,
		-0.023569, 0.858090, 0.512959,
		0.989838, 0.092002, -0.108423,
		37.694046, 29.177042, 35.066833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181580, 29.707308, 34.826668>,  <37.001160, 29.112640, 35.142731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181580, 29.707308, 34.826668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510529, 29.492775, 34.750717>,  <37.707897, 29.364056, 34.705147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510529, 29.492775, 34.750717>,  <37.181580, 29.707308, 34.826668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510529, 29.492775, 34.750717> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075536, 0.433697, -0.897887,
		0.563914, 0.724055, 0.397173,
		0.822372, -0.536332, -0.189876,
		37.757240, 29.331875, 34.693756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705612, 30.243662, 34.483845>,  <37.181580, 29.707308, 34.826668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705612, 30.243662, 34.483845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788410, 29.860823, 34.402733>,  <37.838089, 29.631119, 34.354065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788410, 29.860823, 34.402733>,  <37.705612, 30.243662, 34.483845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788410, 29.860823, 34.402733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134947, 0.233215, -0.963016,
		0.968991, 0.171973, 0.177431,
		0.206993, -0.957098, -0.202776,
		37.850510, 29.573694, 34.341900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.236237, 30.277855, 34.023174>,  <37.705612, 30.243662, 34.483845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.236237, 30.277855, 34.023174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047642, 29.928844, 33.971951>,  <37.934486, 29.719439, 33.941216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047642, 29.928844, 33.971951>,  <38.236237, 30.277855, 34.023174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047642, 29.928844, 33.971951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079958, 0.186908, -0.979118,
		0.878243, -0.451398, -0.157889,
		-0.471483, -0.872528, -0.128058,
		37.906197, 29.667086, 33.933533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586037, 30.051817, 33.419437>,  <38.236237, 30.277855, 34.023174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586037, 30.051817, 33.419437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247238, 29.840815, 33.445786>,  <38.043961, 29.714212, 33.461594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247238, 29.840815, 33.445786>,  <38.586037, 30.051817, 33.419437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247238, 29.840815, 33.445786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140924, 0.103333, -0.984613,
		0.512583, -0.843243, -0.161861,
		-0.846994, -0.527506, 0.065866,
		37.993141, 29.682562, 33.465546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.869381, 27.968248, 41.016495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.489540, 27.844044, 41.033653>,  <39.261635, 27.769522, 41.043949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.489540, 27.844044, 41.033653>,  <39.869381, 27.968248, 41.016495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489540, 27.844044, 41.033653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069144, 0.074004, -0.994858,
		0.305740, -0.947685, -0.091745,
		-0.949601, -0.310511, 0.042901,
		39.204659, 27.750891, 41.046524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818813, 27.529793, 40.607597>,  <39.869381, 27.968248, 41.016495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818813, 27.529793, 40.607597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.428875, 27.617844, 40.621605>,  <39.194912, 27.670675, 40.630009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.428875, 27.617844, 40.621605>,  <39.818813, 27.529793, 40.607597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428875, 27.617844, 40.621605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033285, 0.011600, -0.999379,
		-0.220398, -0.975402, -0.003981,
		-0.974842, 0.220129, 0.035023,
		39.136421, 27.683882, 40.632111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609413, 27.126699, 40.120975>,  <39.818813, 27.529793, 40.607597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609413, 27.126699, 40.120975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.306702, 27.383873, 40.168163>,  <39.125072, 27.538177, 40.196476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.306702, 27.383873, 40.168163>,  <39.609413, 27.126699, 40.120975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306702, 27.383873, 40.168163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059109, 0.112424, -0.991901,
		-0.650991, -0.757625, -0.047078,
		-0.756781, 0.642935, 0.117969,
		39.079666, 27.576754, 40.203552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013809, 27.010210, 39.660007>,  <39.609413, 27.126699, 40.120975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013809, 27.010210, 39.660007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.986927, 27.398262, 39.753242>,  <38.970798, 27.631094, 39.809181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.986927, 27.398262, 39.753242>,  <39.013809, 27.010210, 39.660007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986927, 27.398262, 39.753242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151172, 0.221015, -0.963483,
		-0.986220, -0.099990, 0.131803,
		-0.067208, 0.970131, 0.233085,
		38.966766, 27.689301, 39.823170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428059, 27.209736, 39.337696>,  <39.013809, 27.010210, 39.660007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428059, 27.209736, 39.337696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.596008, 27.556498, 39.445168>,  <38.696777, 27.764555, 39.509651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.596008, 27.556498, 39.445168>,  <38.428059, 27.209736, 39.337696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596008, 27.556498, 39.445168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301317, 0.412390, -0.859734,
		-0.856105, 0.280022, 0.434364,
		0.419872, 0.866904, 0.268674,
		38.721970, 27.816568, 39.525768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909222, 27.736130, 39.283680>,  <38.428059, 27.209736, 39.337696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909222, 27.736130, 39.283680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.265656, 27.914705, 39.251026>,  <38.479515, 28.021851, 39.231434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.265656, 27.914705, 39.251026>,  <37.909222, 27.736130, 39.283680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265656, 27.914705, 39.251026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236006, 0.302174, -0.923576,
		-0.387653, 0.842248, 0.374624,
		0.891082, 0.446440, -0.081637,
		38.532982, 28.048637, 39.226536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699051, 28.342844, 38.878601>,  <37.909222, 27.736130, 39.283680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699051, 28.342844, 38.878601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.093559, 28.279091, 38.861294>,  <38.330265, 28.240839, 38.850910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.093559, 28.279091, 38.861294>,  <37.699051, 28.342844, 38.878601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093559, 28.279091, 38.861294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030993, 0.435961, -0.899432,
		0.162217, 0.885740, 0.434914,
		0.986268, -0.159382, -0.043269,
		38.389439, 28.231276, 38.848312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.911476, 28.979528, 38.630566>,  <37.699051, 28.342844, 38.878601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.911476, 28.979528, 38.630566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.173710, 28.686993, 38.555355>,  <38.331051, 28.511471, 38.510227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.173710, 28.686993, 38.555355>,  <37.911476, 28.979528, 38.630566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173710, 28.686993, 38.555355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099977, 0.330875, -0.938364,
		0.748477, 0.596375, 0.290032,
		0.655581, -0.731341, -0.188029,
		38.370384, 28.467590, 38.498947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492607, 29.388573, 38.457783>,  <37.911476, 28.979528, 38.630566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492607, 29.388573, 38.457783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.477062, 29.021130, 38.300480>,  <38.467735, 28.800665, 38.206097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.477062, 29.021130, 38.300480>,  <38.492607, 29.388573, 38.457783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477062, 29.021130, 38.300480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105764, 0.395127, -0.912518,
		0.993631, 0.006127, -0.112512,
		-0.038865, -0.918606, -0.393259,
		38.465401, 28.745548, 38.182503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141174, 29.756388, 38.491707>,  <38.492607, 29.388573, 38.457783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141174, 29.756388, 38.491707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.201401, 30.148678, 38.541527>,  <39.237537, 30.384052, 38.571419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.201401, 30.148678, 38.541527>,  <39.141174, 29.756388, 38.491707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201401, 30.148678, 38.541527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081493, -0.137867, 0.987093,
		0.985236, -0.138469, -0.100680,
		0.150562, 0.980724, 0.124548,
		39.246571, 30.442896, 38.578892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781616, 29.954380, 38.908272>,  <39.141174, 29.756388, 38.491707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781616, 29.954380, 38.908272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.541660, 30.270456, 38.958447>,  <39.397686, 30.460102, 38.988552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.541660, 30.270456, 38.958447>,  <39.781616, 29.954380, 38.908272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541660, 30.270456, 38.958447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062694, -0.109876, 0.991966,
		0.797623, 0.602934, 0.016373,
		-0.599889, 0.790189, 0.125440,
		39.361694, 30.507513, 38.996078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003975, 30.292606, 39.468750>,  <39.781616, 29.954380, 38.908272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003975, 30.292606, 39.468750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.649059, 30.472033, 39.425831>,  <39.436111, 30.579687, 39.400078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.649059, 30.472033, 39.425831>,  <40.003975, 30.292606, 39.468750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649059, 30.472033, 39.425831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170982, -0.103836, 0.979787,
		0.428355, 0.887698, 0.168828,
		-0.887286, 0.448564, -0.107302,
		39.382874, 30.606602, 39.393639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944275, 30.615643, 40.060570>,  <40.003975, 30.292606, 39.468750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944275, 30.615643, 40.060570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.568829, 30.661583, 39.930454>,  <39.343559, 30.689148, 39.852386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.568829, 30.661583, 39.930454>,  <39.944275, 30.615643, 40.060570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568829, 30.661583, 39.930454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324626, 0.024916, 0.945514,
		0.116699, 0.993070, 0.013898,
		-0.938616, 0.114852, -0.325284,
		39.287243, 30.696039, 39.832870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616859, 31.224791, 40.477074>,  <39.944275, 30.615643, 40.060570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616859, 31.224791, 40.477074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.322704, 30.990931, 40.340027>,  <39.146210, 30.850615, 40.257797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.322704, 30.990931, 40.340027>,  <39.616859, 31.224791, 40.477074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322704, 30.990931, 40.340027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496138, 0.120146, 0.859890,
		-0.461571, 0.802340, -0.378422,
		-0.735390, -0.584650, -0.342615,
		39.102089, 30.815535, 40.237244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078331, 31.631687, 40.454094>,  <39.616859, 31.224791, 40.477074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078331, 31.631687, 40.454094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.943855, 31.255564, 40.475246>,  <38.863171, 31.029890, 40.487938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.943855, 31.255564, 40.475246>,  <39.078331, 31.631687, 40.454094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943855, 31.255564, 40.475246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277730, 0.152639, 0.948455,
		-0.899912, 0.304175, -0.312467,
		-0.336191, -0.940308, 0.052883,
		38.842999, 30.973471, 40.491112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490246, 31.746830, 40.784966>,  <39.078331, 31.631687, 40.454094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490246, 31.746830, 40.784966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.529251, 31.351784, 40.834133>,  <38.552654, 31.114756, 40.863632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.529251, 31.351784, 40.834133>,  <38.490246, 31.746830, 40.784966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529251, 31.351784, 40.834133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440569, 0.067908, 0.895147,
		-0.892406, -0.141447, -0.428490,
		0.097518, -0.987614, 0.122919,
		38.558506, 31.055500, 40.871010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901073, 31.606371, 41.098316>,  <38.490246, 31.746830, 40.784966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901073, 31.606371, 41.098316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.153709, 31.311398, 41.194061>,  <38.305290, 31.134415, 41.251507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.153709, 31.311398, 41.194061>,  <37.901073, 31.606371, 41.098316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.153709, 31.311398, 41.194061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145904, 0.190161, 0.970851,
		-0.761453, -0.648099, 0.012509,
		0.631586, -0.737432, 0.239359,
		38.343185, 31.090168, 41.265869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546242, 31.323877, 41.667263>,  <37.901073, 31.606371, 41.098316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546242, 31.323877, 41.667263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.925362, 31.197105, 41.681290>,  <38.152832, 31.121042, 41.689705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.925362, 31.197105, 41.681290>,  <37.546242, 31.323877, 41.667263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925362, 31.197105, 41.681290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081944, -0.135826, 0.987338,
		-0.308154, -0.938673, -0.154707,
		0.947801, -0.316929, 0.035063,
		38.209702, 31.102026, 41.691807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526382, 30.560591, 41.871830>,  <37.546242, 31.323877, 41.667263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526382, 30.560591, 41.871830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.842388, 30.786861, 41.966396>,  <38.031990, 30.922623, 42.023136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.842388, 30.786861, 41.966396>,  <37.526382, 30.560591, 41.871830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842388, 30.786861, 41.966396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169898, -0.168520, 0.970946,
		0.589081, -0.807226, -0.037026,
		0.790012, 0.565675, 0.236418,
		38.079391, 30.956564, 42.037323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029694, 30.160131, 42.260555>,  <37.526382, 30.560591, 41.871830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029694, 30.160131, 42.260555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.169971, 30.530190, 42.318680>,  <38.254139, 30.752224, 42.353554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.169971, 30.530190, 42.318680>,  <38.029694, 30.160131, 42.260555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169971, 30.530190, 42.318680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078566, -0.183683, 0.979841,
		0.933187, -0.332211, -0.137102,
		0.350697, 0.925147, 0.145310,
		38.275181, 30.807734, 42.362274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481766, 30.059692, 42.769833>,  <38.029694, 30.160131, 42.260555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481766, 30.059692, 42.769833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.418774, 30.454630, 42.777328>,  <38.380978, 30.691593, 42.781826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.418774, 30.454630, 42.777328>,  <38.481766, 30.059692, 42.769833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418774, 30.454630, 42.777328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002473, -0.019371, 0.999810,
		0.987519, 0.157405, 0.005492,
		-0.157482, 0.987344, 0.018740,
		38.371529, 30.750834, 42.782951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020958, 30.351393, 43.181900>,  <38.481766, 30.059692, 42.769833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020958, 30.351393, 43.181900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.728615, 30.624098, 43.194881>,  <38.553211, 30.787720, 43.202671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.728615, 30.624098, 43.194881>,  <39.020958, 30.351393, 43.181900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728615, 30.624098, 43.194881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129704, 0.092042, 0.987272,
		0.670096, 0.725762, -0.155696,
		-0.730855, 0.681761, 0.032458,
		38.509357, 30.828627, 43.204620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316483, 30.855844, 43.489101>,  <39.020958, 30.351393, 43.181900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316483, 30.855844, 43.489101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.926136, 30.930820, 43.533932>,  <38.691929, 30.975805, 43.560829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.926136, 30.930820, 43.533932>,  <39.316483, 30.855844, 43.489101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926136, 30.930820, 43.533932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146293, 0.180045, 0.972719,
		0.162147, 0.965635, -0.203120,
		-0.975862, 0.187439, 0.112072,
		38.633377, 30.987053, 43.567554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.357822, 29.093346, 42.817047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.713560, 28.935127, 42.725304>,  <31.927004, 28.840197, 42.670258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.713560, 28.935127, 42.725304>,  <31.357822, 29.093346, 42.817047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713560, 28.935127, 42.725304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005773, 0.511301, -0.859382,
		0.457197, 0.762964, 0.457007,
		0.889346, -0.395546, -0.229361,
		31.980364, 28.816463, 42.656494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800411, 29.607075, 42.530701>,  <31.357822, 29.093346, 42.817047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800411, 29.607075, 42.530701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.957928, 29.263474, 42.399830>,  <32.052437, 29.057314, 42.321308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.957928, 29.263474, 42.399830>,  <31.800411, 29.607075, 42.530701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957928, 29.263474, 42.399830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079092, 0.322949, -0.943106,
		0.915790, 0.397266, 0.059235,
		0.393794, -0.859002, -0.327174,
		32.076065, 29.005774, 42.301678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385208, 29.835789, 42.093250>,  <31.800411, 29.607075, 42.530701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385208, 29.835789, 42.093250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.328190, 29.461859, 41.963154>,  <32.293980, 29.237501, 41.885098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.328190, 29.461859, 41.963154>,  <32.385208, 29.835789, 42.093250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328190, 29.461859, 41.963154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147785, 0.304810, -0.940877,
		0.978693, -0.182183, 0.094704,
		-0.142545, -0.934826, -0.325239,
		32.285427, 29.181412, 41.865582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929298, 29.790844, 41.608765>,  <32.385208, 29.835789, 42.093250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929298, 29.790844, 41.608765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.690228, 29.479103, 41.533504>,  <32.546787, 29.292059, 41.488350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.690228, 29.479103, 41.533504>,  <32.929298, 29.790844, 41.608765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.690228, 29.479103, 41.533504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117366, 0.147096, -0.982134,
		0.793103, -0.609077, 0.003554,
		-0.597673, -0.779351, -0.188147,
		32.510925, 29.245298, 41.477062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243355, 29.337763, 41.010117>,  <32.929298, 29.790844, 41.608765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243355, 29.337763, 41.010117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.851433, 29.257816, 41.012619>,  <32.616280, 29.209848, 41.014118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.851433, 29.257816, 41.012619>,  <33.243355, 29.337763, 41.010117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851433, 29.257816, 41.012619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066873, 0.298043, -0.952207,
		0.188452, -0.933394, -0.305389,
		-0.979803, -0.199867, 0.006252,
		32.557491, 29.197857, 41.014496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140312, 28.756624, 40.440014>,  <33.243355, 29.337763, 41.010117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140312, 28.756624, 40.440014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.782074, 28.923410, 40.502033>,  <32.567131, 29.023483, 40.539246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.782074, 28.923410, 40.502033>,  <33.140312, 28.756624, 40.440014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782074, 28.923410, 40.502033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238524, -0.155896, -0.958542,
		-0.375510, -0.895452, 0.239077,
		-0.895600, 0.416968, 0.155047,
		32.513393, 29.048500, 40.548546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605309, 28.346405, 39.967491>,  <33.140312, 28.756624, 40.440014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605309, 28.346405, 39.967491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.462135, 28.706299, 40.067379>,  <32.376232, 28.922235, 40.127312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.462135, 28.706299, 40.067379>,  <32.605309, 28.346405, 39.967491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462135, 28.706299, 40.067379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354085, 0.116672, -0.927907,
		-0.864007, -0.420549, 0.276822,
		-0.357933, 0.899736, 0.249716,
		32.354755, 28.976219, 40.142292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034546, 28.257414, 39.578842>,  <32.605309, 28.346405, 39.967491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034546, 28.257414, 39.578842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.086468, 28.649307, 39.639866>,  <32.117622, 28.884443, 39.676479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.086468, 28.649307, 39.639866>,  <32.034546, 28.257414, 39.578842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086468, 28.649307, 39.639866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160203, 0.172565, -0.971883,
		-0.978512, 0.101712, 0.179356,
		0.129803, 0.979732, 0.152563,
		32.125408, 28.943228, 39.685635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610054, 28.604172, 39.146145>,  <32.034546, 28.257414, 39.578842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610054, 28.604172, 39.146145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.875446, 28.886524, 39.245365>,  <32.034683, 29.055935, 39.304897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.875446, 28.886524, 39.245365>,  <31.610054, 28.604172, 39.146145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875446, 28.886524, 39.245365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030680, 0.305585, -0.951670,
		-0.747565, 0.639024, 0.181093,
		0.663479, 0.705880, 0.248050,
		32.074490, 29.098288, 39.319778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438679, 29.169498, 38.832577>,  <31.610054, 28.604172, 39.146145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438679, 29.169498, 38.832577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.823158, 29.252439, 38.905350>,  <32.053844, 29.302204, 38.949013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.823158, 29.252439, 38.905350>,  <31.438679, 29.169498, 38.832577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823158, 29.252439, 38.905350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145835, 0.177864, -0.973189,
		-0.234154, 0.961961, 0.140723,
		0.961199, 0.207354, 0.181935,
		32.111519, 29.314646, 38.959930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615671, 29.856194, 38.546700>,  <31.438679, 29.169498, 38.832577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615671, 29.856194, 38.546700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.981512, 29.700611, 38.590916>,  <32.201015, 29.607262, 38.617443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.981512, 29.700611, 38.590916>,  <31.615671, 29.856194, 38.546700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981512, 29.700611, 38.590916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266647, 0.374644, -0.887998,
		0.303980, 0.841639, 0.446364,
		0.914601, -0.388955, 0.110536,
		32.255894, 29.583925, 38.624077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007896, 30.345564, 38.330250>,  <31.615671, 29.856194, 38.546700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007896, 30.345564, 38.330250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.254723, 30.031122, 38.316006>,  <32.402817, 29.842457, 38.307457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.254723, 30.031122, 38.316006>,  <32.007896, 30.345564, 38.330250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254723, 30.031122, 38.316006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449977, 0.389622, -0.803564,
		0.645562, 0.479826, 0.594152,
		0.617066, -0.786105, -0.035614,
		32.439842, 29.795290, 38.305321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712032, 30.593725, 38.257435>,  <32.007896, 30.345564, 38.330250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712032, 30.593725, 38.257435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.683128, 30.218718, 38.121300>,  <32.665787, 29.993713, 38.039619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.683128, 30.218718, 38.121300>,  <32.712032, 30.593725, 38.257435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683128, 30.218718, 38.121300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261097, 0.311552, -0.913654,
		0.962604, -0.154885, 0.222271,
		-0.072263, -0.937521, -0.340342,
		32.661449, 29.937462, 38.019196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305756, 30.522198, 37.909977>,  <32.712032, 30.593725, 38.257435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305756, 30.522198, 37.909977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.073078, 30.232418, 37.762024>,  <32.933472, 30.058550, 37.673252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.073078, 30.232418, 37.762024>,  <33.305756, 30.522198, 37.909977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073078, 30.232418, 37.762024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257838, 0.267055, -0.928548,
		0.771463, -0.635497, 0.031447,
		-0.581691, -0.724448, -0.369879,
		32.898571, 30.015083, 37.651062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056171, 30.720306, 37.959339>,  <33.305756, 30.522198, 37.909977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056171, 30.720306, 37.959339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.035526, 31.119663, 37.968693>,  <34.023140, 31.359278, 37.974304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.035526, 31.119663, 37.968693>,  <34.056171, 30.720306, 37.959339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035526, 31.119663, 37.968693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218551, -0.034138, 0.975228,
		0.974460, 0.045227, 0.219962,
		-0.051616, 0.998393, 0.023382,
		34.020042, 31.419182, 37.975708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586796, 30.912575, 38.358410>,  <34.056171, 30.720306, 37.959339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586796, 30.912575, 38.358410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.321907, 31.211914, 38.373589>,  <34.162975, 31.391518, 38.382694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.321907, 31.211914, 38.373589>,  <34.586796, 30.912575, 38.358410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321907, 31.211914, 38.373589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072137, -0.114079, 0.990849,
		0.745828, 0.653423, 0.129529,
		-0.662220, 0.748348, 0.037947,
		34.123241, 31.436419, 38.384972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768505, 31.348282, 38.867935>,  <34.586796, 30.912575, 38.358410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768505, 31.348282, 38.867935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.382492, 31.432026, 38.804832>,  <34.150887, 31.482271, 38.766972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.382492, 31.432026, 38.804832>,  <34.768505, 31.348282, 38.867935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382492, 31.432026, 38.804832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190660, -0.147535, 0.970506,
		0.179909, 0.966645, 0.182292,
		-0.965029, 0.209359, -0.157757,
		34.092983, 31.494833, 38.757504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587532, 31.906670, 39.354034>,  <34.768505, 31.348282, 38.867935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587532, 31.906670, 39.354034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.232807, 31.756454, 39.246300>,  <34.019974, 31.666327, 39.181660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.232807, 31.756454, 39.246300>,  <34.587532, 31.906670, 39.354034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232807, 31.756454, 39.246300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343367, 0.145368, 0.927883,
		-0.309301, 0.915336, -0.257860,
		-0.886810, -0.375536, -0.269334,
		33.966763, 31.643793, 39.165501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188976, 32.473969, 39.578800>,  <34.587532, 31.906670, 39.354034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188976, 32.473969, 39.578800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.962624, 32.146679, 39.538223>,  <33.826813, 31.950304, 39.513878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.962624, 32.146679, 39.538223>,  <34.188976, 32.473969, 39.578800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962624, 32.146679, 39.538223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368374, 0.140833, 0.918949,
		-0.737620, 0.557382, -0.381107,
		-0.565878, -0.818225, -0.101444,
		33.792862, 31.901211, 39.507790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505093, 32.649426, 39.759323>,  <34.188976, 32.473969, 39.578800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505093, 32.649426, 39.759323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.523533, 32.253109, 39.810242>,  <33.534595, 32.015320, 39.840794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.523533, 32.253109, 39.810242>,  <33.505093, 32.649426, 39.759323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523533, 32.253109, 39.810242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374319, 0.101015, 0.921781,
		-0.926153, -0.090143, -0.366216,
		0.046099, -0.990793, 0.127298,
		33.537361, 31.955872, 39.848431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917244, 32.469505, 40.224873>,  <33.505093, 32.649426, 39.759323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917244, 32.469505, 40.224873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.169811, 32.159985, 40.245064>,  <33.321350, 31.974272, 40.257179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.169811, 32.159985, 40.245064>,  <32.917244, 32.469505, 40.224873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169811, 32.159985, 40.245064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226278, -0.121596, 0.966443,
		-0.741698, -0.621647, -0.251872,
		0.631414, -0.773802, 0.050478,
		33.359234, 31.927845, 40.260208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567963, 31.934923, 40.573528>,  <32.917244, 32.469505, 40.224873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567963, 31.934923, 40.573528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.948231, 31.819771, 40.619747>,  <33.176392, 31.750679, 40.647480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.948231, 31.819771, 40.619747>,  <32.567963, 31.934923, 40.573528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948231, 31.819771, 40.619747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111501, 0.030476, 0.993297,
		-0.289474, -0.957181, -0.003126,
		0.950669, -0.287882, 0.115548,
		33.233433, 31.733406, 40.654411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546848, 31.301220, 41.027599>,  <32.567963, 31.934923, 40.573528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546848, 31.301220, 41.027599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.919113, 31.445824, 41.050121>,  <33.142471, 31.532587, 41.063633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.919113, 31.445824, 41.050121>,  <32.546848, 31.301220, 41.027599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919113, 31.445824, 41.050121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075790, -0.341037, 0.936990,
		0.357933, -0.867757, -0.344791,
		0.930666, 0.361512, 0.056301,
		33.198315, 31.554277, 41.067013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873646, 30.806667, 41.438126>,  <32.546848, 31.301220, 41.027599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873646, 30.806667, 41.438126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.120037, 31.120996, 41.460232>,  <33.267872, 31.309593, 41.473495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.120037, 31.120996, 41.460232>,  <32.873646, 30.806667, 41.438126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120037, 31.120996, 41.460232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202833, -0.225996, 0.952777,
		0.761203, -0.575681, -0.298599,
		0.615978, 0.785823, 0.055262,
		33.304832, 31.356743, 41.476810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503563, 30.562298, 41.585323>,  <32.873646, 30.806667, 41.438126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503563, 30.562298, 41.585323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.483421, 30.941992, 41.709526>,  <33.471336, 31.169809, 41.784046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.483421, 30.941992, 41.709526>,  <33.503563, 30.562298, 41.585323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483421, 30.941992, 41.709526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306896, -0.281154, 0.909267,
		0.950410, 0.141075, -0.277161,
		-0.050350, 0.949237, 0.310507,
		33.468315, 31.226763, 41.802677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053593, 30.644751, 42.059750>,  <33.503563, 30.562298, 41.585323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053593, 30.644751, 42.059750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.825932, 30.963896, 42.139236>,  <33.689335, 31.155382, 42.186928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.825932, 30.963896, 42.139236>,  <34.053593, 30.644751, 42.059750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825932, 30.963896, 42.139236> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088397, -0.180902, 0.979520,
		0.817469, 0.575058, 0.032431,
		-0.569148, 0.797861, 0.198716,
		33.655186, 31.203255, 42.198853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399231, 31.131868, 42.424568>,  <34.053593, 30.644751, 42.059750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399231, 31.131868, 42.424568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.010933, 31.171831, 42.511906>,  <33.777954, 31.195808, 42.564308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.010933, 31.171831, 42.511906>,  <34.399231, 31.131868, 42.424568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010933, 31.171831, 42.511906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194784, -0.204096, 0.959377,
		0.140410, 0.973840, 0.178665,
		-0.970744, 0.099905, 0.218346,
		33.719711, 31.201803, 42.577408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371933, 31.498156, 43.077366>,  <34.399231, 31.131868, 42.424568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371933, 31.498156, 43.077366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.993412, 31.368853, 43.078453>,  <33.766300, 31.291271, 43.079105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.993412, 31.368853, 43.078453>,  <34.371933, 31.498156, 43.077366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993412, 31.368853, 43.078453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085307, -0.241591, 0.966621,
		-0.311811, 0.914953, 0.256195,
		-0.946307, -0.323258, 0.002721,
		33.709518, 31.271875, 43.079269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542217, 32.234604, 42.970383>,  <34.371933, 31.498156, 43.077366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542217, 32.234604, 42.970383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.798233, 32.462254, 43.176857>,  <34.951843, 32.598843, 43.300739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.798233, 32.462254, 43.176857>,  <34.542217, 32.234604, 42.970383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798233, 32.462254, 43.176857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367344, 0.363395, -0.856156,
		-0.674837, 0.737592, 0.023524,
		0.640042, 0.569124, 0.516182,
		34.990246, 32.632992, 43.331711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455467, 32.908199, 42.761696>,  <34.542217, 32.234604, 42.970383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455467, 32.908199, 42.761696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.820580, 32.881084, 42.922813>,  <35.039646, 32.864815, 43.019482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.820580, 32.881084, 42.922813>,  <34.455467, 32.908199, 42.761696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820580, 32.881084, 42.922813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400276, 0.344786, -0.849060,
		-0.081323, 0.936231, 0.341846,
		0.912779, -0.067785, 0.402790,
		35.094414, 32.860748, 43.043652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799995, 33.539890, 42.588329>,  <34.455467, 32.908199, 42.761696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799995, 33.539890, 42.588329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.083988, 33.266235, 42.655121>,  <35.254383, 33.102043, 42.695194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.083988, 33.266235, 42.655121>,  <34.799995, 33.539890, 42.588329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083988, 33.266235, 42.655121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399767, 0.196342, -0.895341,
		0.579753, 0.702427, 0.412895,
		0.709981, -0.684138, 0.166977,
		35.296982, 33.060993, 42.705215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414619, 33.866436, 42.457661>,  <34.799995, 33.539890, 42.588329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414619, 33.866436, 42.457661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.485664, 33.475208, 42.414165>,  <35.528294, 33.240471, 42.388069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.485664, 33.475208, 42.414165>,  <35.414619, 33.866436, 42.457661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485664, 33.475208, 42.414165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399102, 0.172595, -0.900516,
		0.899539, 0.116546, 0.421006,
		0.177615, -0.978074, -0.108742,
		35.538948, 33.181786, 42.381542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151218, 33.777935, 42.369019>,  <35.414619, 33.866436, 42.457661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151218, 33.777935, 42.369019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.002110, 33.441643, 42.211937>,  <35.912643, 33.239868, 42.117687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.002110, 33.441643, 42.211937>,  <36.151218, 33.777935, 42.369019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002110, 33.441643, 42.211937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590690, 0.111381, -0.799174,
		0.715629, -0.529876, 0.455090,
		-0.372775, -0.840730, -0.392700,
		35.890278, 33.189423, 42.094128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759369, 33.463490, 42.208538>,  <36.151218, 33.777935, 42.369019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759369, 33.463490, 42.208538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.473560, 33.256844, 42.019829>,  <36.302074, 33.132858, 41.906601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.473560, 33.256844, 42.019829>,  <36.759369, 33.463490, 42.208538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473560, 33.256844, 42.019829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530434, 0.039669, -0.846798,
		0.456179, -0.855301, 0.245684,
		-0.714521, -0.516611, -0.471777,
		36.259205, 33.101860, 41.878296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128639, 32.887299, 41.848473>,  <36.759369, 33.463490, 42.208538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128639, 32.887299, 41.848473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.785519, 32.921242, 41.645702>,  <36.579647, 32.941608, 41.524040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.785519, 32.921242, 41.645702>,  <37.128639, 32.887299, 41.848473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785519, 32.921242, 41.645702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480673, -0.216831, -0.849669,
		-0.182014, -0.972514, 0.145212,
		-0.857802, 0.084852, -0.506928,
		36.528179, 32.946701, 41.493622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138847, 32.345909, 41.271164>,  <37.128639, 32.887299, 41.848473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138847, 32.345909, 41.271164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.878765, 32.621387, 41.142830>,  <36.722717, 32.786674, 41.065830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.878765, 32.621387, 41.142830>,  <37.138847, 32.345909, 41.271164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878765, 32.621387, 41.142830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465495, 0.027370, -0.884627,
		-0.600460, -0.724531, -0.338381,
		-0.650202, 0.688698, -0.320831,
		36.683704, 32.827995, 41.046581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815022, 32.152908, 40.655510>,  <37.138847, 32.345909, 41.271164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815022, 32.152908, 40.655510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.754906, 32.548344, 40.659767>,  <36.718838, 32.785603, 40.662323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.754906, 32.548344, 40.659767>,  <36.815022, 32.152908, 40.655510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754906, 32.548344, 40.659767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301894, 0.056142, -0.951687,
		-0.941421, -0.139817, -0.306885,
		-0.150291, 0.988585, 0.010644,
		36.709820, 32.844917, 40.662960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365086, 32.311321, 40.116268>,  <36.815022, 32.152908, 40.655510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365086, 32.311321, 40.116268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.514389, 32.675068, 40.189724>,  <36.603973, 32.893318, 40.233799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.514389, 32.675068, 40.189724>,  <36.365086, 32.311321, 40.116268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514389, 32.675068, 40.189724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056492, 0.175304, -0.982892,
		-0.926004, 0.377251, 0.014062,
		0.373262, 0.909368, 0.183644,
		36.626369, 32.947880, 40.244816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095299, 32.686668, 39.571991>,  <36.365086, 32.311321, 40.116268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095299, 32.686668, 39.571991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.395164, 32.917843, 39.700985>,  <36.575085, 33.056545, 39.778381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.395164, 32.917843, 39.700985>,  <36.095299, 32.686668, 39.571991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395164, 32.917843, 39.700985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179248, 0.291751, -0.939549,
		-0.637081, 0.762152, 0.115122,
		0.749666, 0.577933, 0.322483,
		36.620064, 33.091221, 39.797729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972797, 33.353733, 39.348442>,  <36.095299, 32.686668, 39.571991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972797, 33.353733, 39.348442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.364182, 33.324814, 39.425789>,  <36.599010, 33.307461, 39.472195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.364182, 33.324814, 39.425789>,  <35.972797, 33.353733, 39.348442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364182, 33.324814, 39.425789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206418, 0.329152, -0.921439,
		0.002972, 0.941505, 0.336986,
		0.978459, -0.072298, 0.193365,
		36.657719, 33.303123, 39.483799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292793, 34.118633, 39.291153>,  <35.972797, 33.353733, 39.348442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292793, 34.118633, 39.291153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.605770, 33.872055, 39.255886>,  <36.793556, 33.724106, 39.234726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.605770, 33.872055, 39.255886>,  <36.292793, 34.118633, 39.291153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605770, 33.872055, 39.255886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054494, 0.208830, -0.976433,
		0.620332, 0.759199, 0.196991,
		0.782444, -0.616447, -0.088172,
		36.840504, 33.687122, 39.229435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944344, 34.421825, 39.033890>,  <36.292793, 34.118633, 39.291153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944344, 34.421825, 39.033890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.918442, 34.031616, 38.949825>,  <36.902901, 33.797493, 38.899387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.918442, 34.031616, 38.949825>,  <36.944344, 34.421825, 39.033890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918442, 34.031616, 38.949825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108185, 0.202500, -0.973288,
		0.992020, -0.085759, 0.092424,
		-0.064752, -0.975520, -0.210161,
		36.899017, 33.738960, 38.886776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.005127, 35.552982, 40.753998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.840710, 35.908028, 40.837112>,  <31.742058, 36.121056, 40.886982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.840710, 35.908028, 40.837112>,  <32.005127, 35.552982, 40.753998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840710, 35.908028, 40.837112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743415, -0.194459, -0.639938,
		-0.527613, -0.417518, 0.739799,
		-0.411046, 0.887617, 0.207789,
		31.717396, 36.174313, 40.899448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321066, 35.542545, 41.189724>,  <32.005127, 35.552982, 40.753998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321066, 35.542545, 41.189724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.351593, 35.850834, 40.936691>,  <31.369909, 36.035809, 40.784870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.351593, 35.850834, 40.936691>,  <31.321066, 35.542545, 41.189724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351593, 35.850834, 40.936691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689789, -0.417302, -0.591651,
		-0.719977, 0.481503, 0.499787,
		0.076320, 0.770722, -0.632583,
		31.374489, 36.082050, 40.746918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634672, 35.723377, 41.004570>,  <31.321066, 35.542545, 41.189724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634672, 35.723377, 41.004570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.867186, 35.900299, 40.731373>,  <31.006693, 36.006451, 40.567455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.867186, 35.900299, 40.731373>,  <30.634672, 35.723377, 41.004570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867186, 35.900299, 40.731373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630986, -0.284964, -0.721562,
		-0.513776, 0.850391, 0.113442,
		0.581283, 0.442302, -0.682993,
		31.041571, 36.032990, 40.526474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136591, 36.036922, 40.609417>,  <30.634672, 35.723377, 41.004570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136591, 36.036922, 40.609417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.472084, 36.027153, 40.391819>,  <30.673380, 36.021290, 40.261261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.472084, 36.027153, 40.391819>,  <30.136591, 36.036922, 40.609417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472084, 36.027153, 40.391819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522019, -0.320401, -0.790467,
		-0.154989, 0.946967, -0.281482,
		0.838734, -0.024425, -0.543994,
		30.723703, 36.019825, 40.228622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946306, 36.298420, 39.954052>,  <30.136591, 36.036922, 40.609417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946306, 36.298420, 39.954052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.283438, 36.104847, 39.859867>,  <30.485718, 35.988701, 39.803356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.283438, 36.104847, 39.859867>,  <29.946306, 36.298420, 39.954052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283438, 36.104847, 39.859867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468486, -0.444404, -0.763562,
		0.264874, 0.753864, -0.601274,
		0.842830, -0.483936, -0.235463,
		30.536287, 35.959667, 39.789227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147537, 36.402348, 39.222164>,  <29.946306, 36.298420, 39.954052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147537, 36.402348, 39.222164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.321760, 36.061501, 39.338226>,  <30.426294, 35.856995, 39.407864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.321760, 36.061501, 39.338226>,  <30.147537, 36.402348, 39.222164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321760, 36.061501, 39.338226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532852, -0.503863, -0.679846,
		0.725506, 0.141500, -0.673512,
		0.435556, -0.852115, 0.290158,
		30.452427, 35.805866, 39.425274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291952, 35.958054, 38.664539>,  <30.147537, 36.402348, 39.222164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291952, 35.958054, 38.664539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.316381, 35.666359, 38.937153>,  <30.331039, 35.491344, 39.100719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.316381, 35.666359, 38.937153>,  <30.291952, 35.958054, 38.664539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316381, 35.666359, 38.937153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605461, -0.569907, -0.555539,
		0.793528, -0.378713, -0.476330,
		0.061074, -0.729235, 0.681533,
		30.334703, 35.447590, 39.141613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209072, 35.374130, 38.151718>,  <30.291952, 35.958054, 38.664539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209072, 35.374130, 38.151718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.167416, 35.234501, 38.524235>,  <30.142422, 35.150723, 38.747746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.167416, 35.234501, 38.524235>,  <30.209072, 35.374130, 38.151718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167416, 35.234501, 38.524235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588005, -0.733590, -0.340728,
		0.802125, -0.583087, -0.128863,
		-0.104141, -0.349078, 0.931289,
		30.136173, 35.129776, 38.803623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.409525, 34.688148, 38.099953>,  <30.209072, 35.374130, 38.151718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.409525, 34.688148, 38.099953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.203650, 34.707050, 38.442383>,  <30.080124, 34.718391, 38.647842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.203650, 34.707050, 38.442383>,  <30.409525, 34.688148, 38.099953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203650, 34.707050, 38.442383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685687, -0.622108, -0.377910,
		0.514714, -0.781504, 0.352591,
		-0.514687, 0.047251, 0.856075,
		30.049244, 34.721226, 38.699203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115940, 34.048458, 38.161213>,  <30.409525, 34.688148, 38.099953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115940, 34.048458, 38.161213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.890312, 34.293415, 38.382771>,  <29.754934, 34.440388, 38.515705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.890312, 34.293415, 38.382771>,  <30.115940, 34.048458, 38.161213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890312, 34.293415, 38.382771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823121, -0.470255, -0.318327,
		0.065531, -0.635481, 0.769330,
		-0.564072, 0.612392, 0.553894,
		29.721090, 34.477131, 38.548939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584902, 33.567654, 38.334114>,  <30.115940, 34.048458, 38.161213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584902, 33.567654, 38.334114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.441174, 33.934044, 38.405537>,  <29.354937, 34.153877, 38.448391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.441174, 33.934044, 38.405537>,  <29.584902, 33.567654, 38.334114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441174, 33.934044, 38.405537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904196, -0.294377, -0.309471,
		-0.230905, -0.272648, 0.933995,
		-0.359323, 0.915972, 0.178554,
		29.333376, 34.208836, 38.459103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.778948, 33.466843, 38.663109>,  <29.584902, 33.567654, 38.334114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.778948, 33.466843, 38.663109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.803787, 33.839756, 38.520565>,  <28.818691, 34.063503, 38.435040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.803787, 33.839756, 38.520565>,  <28.778948, 33.466843, 38.663109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803787, 33.839756, 38.520565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936461, -0.069077, -0.343904,
		-0.345231, 0.355074, 0.868756,
		0.062101, 0.932283, -0.356361,
		28.822418, 34.119442, 38.413658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064222, 33.852989, 38.807983>,  <28.778948, 33.466843, 38.663109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.064222, 33.852989, 38.807983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.229982, 34.051113, 38.502579>,  <28.329439, 34.169987, 38.319336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.229982, 34.051113, 38.502579>,  <28.064222, 33.852989, 38.807983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229982, 34.051113, 38.502579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803585, -0.194684, -0.562450,
		-0.427227, 0.846623, 0.317342,
		0.414402, 0.495305, -0.763508,
		28.354303, 34.199703, 38.273525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528706, 34.391018, 38.535061>,  <28.064222, 33.852989, 38.807983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528706, 34.391018, 38.535061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.793289, 34.322876, 38.242908>,  <27.952040, 34.281990, 38.067619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.793289, 34.322876, 38.242908>,  <27.528706, 34.391018, 38.535061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793289, 34.322876, 38.242908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748504, -0.088847, -0.657152,
		0.047058, 0.981369, -0.186280,
		0.661459, -0.170355, -0.730378,
		27.991726, 34.271770, 38.023796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260080, 34.693203, 37.974270>,  <27.528706, 34.391018, 38.535061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260080, 34.693203, 37.974270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.549103, 34.460091, 37.825523>,  <27.722517, 34.320225, 37.736275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.549103, 34.460091, 37.825523>,  <27.260080, 34.693203, 37.974270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.549103, 34.460091, 37.825523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487995, -0.048966, -0.871472,
		0.489667, 0.811154, -0.319774,
		0.722556, -0.582779, -0.371862,
		27.765869, 34.285255, 37.713966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309019, 34.899540, 37.285500>,  <27.260080, 34.693203, 37.974270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309019, 34.899540, 37.285500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.479113, 34.537575, 37.292419>,  <27.581169, 34.320396, 37.296574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.479113, 34.537575, 37.292419>,  <27.309019, 34.899540, 37.285500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479113, 34.537575, 37.292419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492938, -0.247587, -0.834094,
		0.759070, 0.346158, -0.551351,
		0.425236, -0.904917, 0.017302,
		27.606684, 34.266098, 37.297611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369268, 34.760162, 36.605198>,  <27.309019, 34.899540, 37.285500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369268, 34.760162, 36.605198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.430435, 34.398811, 36.765461>,  <27.467134, 34.181999, 36.861618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.430435, 34.398811, 36.765461>,  <27.369268, 34.760162, 36.605198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.430435, 34.398811, 36.765461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448989, -0.424673, -0.786169,
		0.880355, -0.059671, -0.470546,
		0.152917, -0.903378, 0.400655,
		27.476311, 34.127796, 36.885658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.666559, 34.310570, 36.097317>,  <27.369268, 34.760162, 36.605198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.666559, 34.310570, 36.097317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.470854, 34.073589, 36.353321>,  <27.353430, 33.931400, 36.506924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.470854, 34.073589, 36.353321>,  <27.666559, 34.310570, 36.097317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470854, 34.073589, 36.353321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404278, -0.496174, -0.768356,
		0.772774, -0.634674, 0.003245,
		-0.489265, -0.592453, 0.640015,
		27.324074, 33.895855, 36.545326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772202, 33.694622, 35.838383>,  <27.666559, 34.310570, 36.097317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772202, 33.694622, 35.838383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.434952, 33.695347, 36.053471>,  <27.232601, 33.695782, 36.182522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.434952, 33.695347, 36.053471>,  <27.772202, 33.694622, 35.838383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434952, 33.695347, 36.053471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419598, -0.627584, -0.655802,
		0.336274, -0.778547, 0.529891,
		-0.843123, 0.001812, 0.537717,
		27.182014, 33.695892, 36.214787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.363110, 33.082439, 35.653652>,  <27.772202, 33.694622, 35.838383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.363110, 33.082439, 35.653652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.094049, 33.338055, 35.802876>,  <26.932613, 33.491425, 35.892410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.094049, 33.338055, 35.802876>,  <27.363110, 33.082439, 35.653652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094049, 33.338055, 35.802876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691642, -0.363774, -0.623939,
		-0.263007, -0.677719, 0.686676,
		-0.672650, 0.639034, 0.373064,
		26.892254, 33.529766, 35.914795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154087, 32.991543, 35.759354>,  <27.363110, 33.082439, 35.653652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154087, 32.991543, 35.759354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.385004, 32.971867, 35.433331>,  <28.523554, 32.960060, 35.237717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.385004, 32.971867, 35.433331>,  <28.154087, 32.991543, 35.759354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385004, 32.971867, 35.433331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711369, 0.520333, 0.472448,
		0.400862, -0.852545, 0.335375,
		0.577290, -0.049189, -0.815056,
		28.558191, 32.957111, 35.188812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759363, 33.021542, 36.013741>,  <28.154087, 32.991543, 35.759354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759363, 33.021542, 36.013741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.836477, 33.099636, 35.629093>,  <28.882746, 33.146492, 35.398304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.836477, 33.099636, 35.629093>,  <28.759363, 33.021542, 36.013741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836477, 33.099636, 35.629093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752785, 0.599183, 0.272569,
		0.629403, -0.776442, -0.031457,
		0.192785, 0.195236, -0.961622,
		28.894314, 33.158207, 35.340607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403597, 32.756153, 35.843102>,  <28.759363, 33.021542, 36.013741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403597, 32.756153, 35.843102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.298203, 33.050335, 35.593403>,  <29.234966, 33.226845, 35.443584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.298203, 33.050335, 35.593403>,  <29.403597, 32.756153, 35.843102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298203, 33.050335, 35.593403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739832, 0.569331, 0.358484,
		0.619049, -0.367378, -0.694126,
		-0.263488, 0.735456, -0.624242,
		29.219156, 33.270973, 35.406132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018002, 32.928726, 35.435852>,  <29.403597, 32.756153, 35.843102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018002, 32.928726, 35.435852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.779482, 33.249790, 35.440994>,  <29.636370, 33.442429, 35.444080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.779482, 33.249790, 35.440994>,  <30.018002, 32.928726, 35.435852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779482, 33.249790, 35.440994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749290, 0.550761, 0.367730,
		0.288079, 0.228914, -0.929843,
		-0.596301, 0.802658, 0.012860,
		29.600592, 33.490589, 35.444851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433468, 33.377346, 35.053696>,  <30.018002, 32.928726, 35.435852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433468, 33.377346, 35.053696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.155245, 33.622536, 35.203606>,  <29.988310, 33.769650, 35.293552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.155245, 33.622536, 35.203606>,  <30.433468, 33.377346, 35.053696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155245, 33.622536, 35.203606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716680, 0.628741, 0.301754,
		-0.050671, 0.478484, -0.876633,
		-0.695559, 0.612975, 0.374778,
		29.946577, 33.806427, 35.316040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476225, 34.041447, 34.766445>,  <30.433468, 33.377346, 35.053696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476225, 34.041447, 34.766445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.281565, 34.112152, 35.108654>,  <30.164768, 34.154575, 35.313980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.281565, 34.112152, 35.108654>,  <30.476225, 34.041447, 34.766445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281565, 34.112152, 35.108654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708836, 0.652301, 0.268430,
		-0.510611, 0.737060, -0.442741,
		-0.486649, 0.176768, 0.855527,
		30.135571, 34.165184, 35.365311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448462, 34.802727, 34.893608>,  <30.476225, 34.041447, 34.766445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448462, 34.802727, 34.893608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.364780, 34.672840, 35.262562>,  <30.314571, 34.594910, 35.483932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.364780, 34.672840, 35.262562>,  <30.448462, 34.802727, 34.893608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364780, 34.672840, 35.262562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618128, 0.686994, 0.382043,
		-0.757727, 0.650078, 0.056991,
		-0.209205, -0.324712, 0.922386,
		30.302019, 34.575428, 35.539276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352016, 35.411869, 35.336506>,  <30.448462, 34.802727, 34.893608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352016, 35.411869, 35.336506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.431503, 35.100903, 35.575214>,  <30.479195, 34.914322, 35.718441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.431503, 35.100903, 35.575214>,  <30.352016, 35.411869, 35.336506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431503, 35.100903, 35.575214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546763, 0.593289, 0.590811,
		-0.813365, 0.208891, 0.542957,
		0.198715, -0.777414, 0.596774,
		30.491117, 34.867680, 35.754246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268515, 35.567825, 36.014854>,  <30.352016, 35.411869, 35.336506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268515, 35.567825, 36.014854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.485191, 35.235359, 36.065033>,  <30.615198, 35.035881, 36.095139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.485191, 35.235359, 36.065033>,  <30.268515, 35.567825, 36.014854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485191, 35.235359, 36.065033> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400758, 0.386553, 0.830644,
		-0.738893, -0.399679, 0.542488,
		0.541692, -0.831164, 0.125447,
		30.647699, 34.986012, 36.102669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363213, 35.548233, 36.736912>,  <30.268515, 35.567825, 36.014854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363213, 35.548233, 36.736912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.647524, 35.289684, 36.625923>,  <30.818111, 35.134556, 36.559330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.647524, 35.289684, 36.625923>,  <30.363213, 35.548233, 36.736912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647524, 35.289684, 36.625923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583218, 0.321007, 0.746198,
		-0.393253, -0.692209, 0.605143,
		0.710781, -0.646375, -0.277472,
		30.860758, 35.095772, 36.542683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592417, 35.218456, 37.363464>,  <30.363213, 35.548233, 36.736912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592417, 35.218456, 37.363464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.915442, 35.160099, 37.134884>,  <31.109257, 35.125084, 36.997734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.915442, 35.160099, 37.134884>,  <30.592417, 35.218456, 37.363464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915442, 35.160099, 37.134884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557024, 0.507087, 0.657713,
		0.193821, -0.849458, 0.490771,
		0.807563, -0.145893, -0.571452,
		31.157711, 35.116333, 36.963448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131166, 34.900047, 37.801609>,  <30.592417, 35.218456, 37.363464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131166, 34.900047, 37.801609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.353266, 35.050060, 37.504677>,  <31.486525, 35.140068, 37.326519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.353266, 35.050060, 37.504677>,  <31.131166, 34.900047, 37.801609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353266, 35.050060, 37.504677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713406, 0.244021, 0.656891,
		0.427498, -0.894319, -0.132056,
		0.555246, 0.375029, -0.742331,
		31.519840, 35.162567, 37.281979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742250, 34.658691, 37.908722>,  <31.131166, 34.900047, 37.801609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742250, 34.658691, 37.908722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.825871, 34.969372, 37.671055>,  <31.876041, 35.155781, 37.528454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.825871, 34.969372, 37.671055>,  <31.742250, 34.658691, 37.908722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825871, 34.969372, 37.671055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890080, 0.100532, 0.444579,
		0.405039, -0.621793, -0.670311,
		0.209048, 0.776703, -0.594165,
		31.888584, 35.202381, 37.492805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456818, 34.699917, 37.887360>,  <31.742250, 34.658691, 37.908722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456818, 34.699917, 37.887360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.350517, 35.061855, 37.754314>,  <32.286739, 35.279018, 37.674488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.350517, 35.061855, 37.754314>,  <32.456818, 34.699917, 37.887360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350517, 35.061855, 37.754314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807855, 0.397293, 0.435349,
		0.526069, -0.153013, -0.836564,
		-0.265747, 0.904846, -0.332615,
		32.270794, 35.333309, 37.654530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142662, 35.091530, 37.703968>,  <32.456818, 34.699917, 37.887360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142662, 35.091530, 37.703968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.877155, 35.380257, 37.782341>,  <32.717850, 35.553493, 37.829365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.877155, 35.380257, 37.782341>,  <33.142662, 35.091530, 37.703968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877155, 35.380257, 37.782341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700219, 0.507648, 0.501982,
		0.262873, 0.470398, -0.842391,
		-0.663770, 0.721817, 0.195935,
		32.678024, 35.596802, 37.841122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537407, 35.601013, 37.516396>,  <33.142662, 35.091530, 37.703968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537407, 35.601013, 37.516396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.222450, 35.741356, 37.719143>,  <33.033478, 35.825562, 37.840794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.222450, 35.741356, 37.719143>,  <33.537407, 35.601013, 37.516396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222450, 35.741356, 37.719143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614419, 0.513499, 0.599006,
		-0.050110, 0.783080, -0.619898,
		-0.787387, 0.350861, 0.506871,
		32.986233, 35.846615, 37.871204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707348, 36.314510, 37.563694>,  <33.537407, 35.601013, 37.516396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707348, 36.314510, 37.563694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.451477, 36.199272, 37.848740>,  <33.297955, 36.130131, 38.019768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.451477, 36.199272, 37.848740>,  <33.707348, 36.314510, 37.563694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451477, 36.199272, 37.848740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584761, 0.419318, 0.694426,
		-0.498870, 0.860916, -0.099763,
		-0.639675, -0.288091, 0.712615,
		33.259575, 36.112846, 38.062523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683559, 36.960739, 37.921375>,  <33.707348, 36.314510, 37.563694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683559, 36.960739, 37.921375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.560883, 36.651905, 38.144024>,  <33.487274, 36.466606, 38.277615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.560883, 36.651905, 38.144024>,  <33.683559, 36.960739, 37.921375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560883, 36.651905, 38.144024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576265, 0.314817, 0.754194,
		-0.757534, 0.552069, 0.348371,
		-0.306695, -0.772082, 0.556623,
		33.468876, 36.420280, 38.311012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356903, 37.326591, 38.521450>,  <33.683559, 36.960739, 37.921375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356903, 37.326591, 38.521450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.457561, 36.956879, 38.636250>,  <33.517956, 36.735050, 38.705132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.457561, 36.956879, 38.636250>,  <33.356903, 37.326591, 38.521450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457561, 36.956879, 38.636250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244013, 0.347560, 0.905351,
		-0.936552, -0.157799, 0.313001,
		0.251650, -0.924284, 0.287003,
		33.533058, 36.679592, 38.722351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147339, 37.226006, 39.153168>,  <33.356903, 37.326591, 38.521450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147339, 37.226006, 39.153168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.390297, 36.908440, 39.164318>,  <33.536072, 36.717899, 39.171009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.390297, 36.908440, 39.164318>,  <33.147339, 37.226006, 39.153168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390297, 36.908440, 39.164318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360702, 0.306885, 0.880748,
		-0.707789, -0.524907, 0.472765,
		0.607395, -0.793911, 0.027875,
		33.572517, 36.670265, 39.172680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098701, 37.002155, 39.872208>,  <33.147339, 37.226006, 39.153168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098701, 37.002155, 39.872208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.438774, 36.863865, 39.713379>,  <33.642818, 36.780891, 39.618084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.438774, 36.863865, 39.713379>,  <33.098701, 37.002155, 39.872208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438774, 36.863865, 39.713379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502224, 0.306231, 0.808699,
		-0.157998, -0.886957, 0.433986,
		0.850181, -0.345731, -0.397067,
		33.693829, 36.760147, 39.594257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448635, 36.659779, 40.480209>,  <33.098701, 37.002155, 39.872208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448635, 36.659779, 40.480209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.712524, 36.776878, 40.203350>,  <33.870857, 36.847137, 40.037235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.712524, 36.776878, 40.203350>,  <33.448635, 36.659779, 40.480209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712524, 36.776878, 40.203350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576156, 0.394304, 0.715939,
		0.482505, -0.871105, 0.091463,
		0.659722, 0.292747, -0.692145,
		33.910442, 36.864704, 39.995705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.243286, 31.390900, 43.971764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.870239, 31.248693, 43.996544>,  <38.646412, 31.163370, 44.011414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.870239, 31.248693, 43.996544>,  <39.243286, 31.390900, 43.971764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870239, 31.248693, 43.996544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040432, 0.273536, 0.961012,
		-0.358599, 0.893749, -0.269478,
		-0.932616, -0.355514, 0.061953,
		38.590454, 31.142040, 44.015129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970146, 31.872391, 44.433666>,  <39.243286, 31.390900, 43.971764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970146, 31.872391, 44.433666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.721905, 31.559261, 44.451721>,  <38.572960, 31.371384, 44.462555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.721905, 31.559261, 44.451721>,  <38.970146, 31.872391, 44.433666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721905, 31.559261, 44.451721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264361, 0.263075, 0.927850,
		-0.738218, 0.563894, -0.370213,
		-0.620603, -0.782825, 0.045135,
		38.535725, 31.324413, 44.465263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383095, 32.028400, 44.989033>,  <38.970146, 31.872391, 44.433666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383095, 32.028400, 44.989033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.335163, 31.635130, 44.933876>,  <38.306404, 31.399168, 44.900784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.335163, 31.635130, 44.933876>,  <38.383095, 32.028400, 44.989033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335163, 31.635130, 44.933876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244262, -0.105424, 0.963961,
		-0.962277, 0.149188, -0.227520,
		-0.119826, -0.983173, -0.137888,
		38.299217, 31.340178, 44.892509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794868, 31.878544, 45.247982>,  <38.383095, 32.028400, 44.989033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794868, 31.878544, 45.247982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.997768, 31.533825, 45.246967>,  <38.119507, 31.326994, 45.246361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.997768, 31.533825, 45.246967>,  <37.794868, 31.878544, 45.247982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997768, 31.533825, 45.246967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232233, -0.139521, 0.962602,
		-0.829921, -0.487688, -0.270910,
		0.507247, -0.861797, -0.002534,
		38.149944, 31.275286, 45.246208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460480, 31.502026, 45.798370>,  <37.794868, 31.878544, 45.247982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460480, 31.502026, 45.798370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.798500, 31.291405, 45.761208>,  <38.001312, 31.165033, 45.738911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.798500, 31.291405, 45.761208>,  <37.460480, 31.502026, 45.798370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798500, 31.291405, 45.761208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020798, -0.141252, 0.989755,
		-0.534278, -0.838328, -0.108414,
		0.845053, -0.526550, -0.092904,
		38.052017, 31.133440, 45.733337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247177, 30.775280, 45.991615>,  <37.460480, 31.502026, 45.798370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247177, 30.775280, 45.991615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.634262, 30.855270, 46.053001>,  <37.866512, 30.903265, 46.089832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.634262, 30.855270, 46.053001>,  <37.247177, 30.775280, 45.991615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634262, 30.855270, 46.053001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131417, -0.119273, 0.984126,
		0.215107, -0.972514, -0.089141,
		0.967708, 0.199978, 0.153461,
		37.924576, 30.915264, 46.099041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493450, 30.264502, 46.323074>,  <37.247177, 30.775280, 45.991615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493450, 30.264502, 46.323074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.742760, 30.566828, 46.403343>,  <37.892345, 30.748224, 46.451504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.742760, 30.566828, 46.403343>,  <37.493450, 30.264502, 46.323074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742760, 30.566828, 46.403343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037363, -0.227537, 0.973052,
		0.781108, -0.613978, -0.113579,
		0.623276, 0.755816, 0.200671,
		37.929741, 30.793573, 46.463543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916576, 29.946964, 46.697308>,  <37.493450, 30.264502, 46.323074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916576, 29.946964, 46.697308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.948597, 30.335361, 46.787426>,  <37.967808, 30.568399, 46.841499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.948597, 30.335361, 46.787426>,  <37.916576, 29.946964, 46.697308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948597, 30.335361, 46.787426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149798, -0.211740, 0.965778,
		0.985471, -0.111060, 0.128503,
		0.080050, 0.970995, 0.225300,
		37.972610, 30.626659, 46.855015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356033, 30.024225, 47.267601>,  <37.916576, 29.946964, 46.697308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356033, 30.024225, 47.267601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.170918, 30.378721, 47.275719>,  <38.059849, 30.591419, 47.280590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.170918, 30.378721, 47.275719>,  <38.356033, 30.024225, 47.267601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170918, 30.378721, 47.275719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294313, -0.175199, 0.939513,
		0.836188, 0.428820, 0.341911,
		-0.462785, 0.886238, 0.020292,
		38.032082, 30.644592, 47.281807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504101, 30.286743, 47.928207>,  <38.356033, 30.024225, 47.267601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504101, 30.286743, 47.928207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.197174, 30.507404, 47.797428>,  <38.013016, 30.639801, 47.718960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.197174, 30.507404, 47.797428>,  <38.504101, 30.286743, 47.928207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197174, 30.507404, 47.797428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426993, -0.059142, 0.902319,
		0.478432, 0.831973, 0.280934,
		-0.767320, 0.551655, -0.326951,
		37.966980, 30.672901, 47.699341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360901, 30.836533, 48.513683>,  <38.504101, 30.286743, 47.928207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360901, 30.836533, 48.513683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.039387, 30.797192, 48.278988>,  <37.846478, 30.773586, 48.138172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.039387, 30.797192, 48.278988>,  <38.360901, 30.836533, 48.513683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039387, 30.797192, 48.278988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561209, -0.201936, 0.802662,
		-0.197428, 0.974448, 0.107115,
		-0.803782, -0.098354, -0.586737,
		37.798252, 30.767685, 48.102966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850399, 31.306211, 48.743820>,  <38.360901, 30.836533, 48.513683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850399, 31.306211, 48.743820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.646938, 31.019247, 48.553413>,  <37.524864, 30.847069, 48.439167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.646938, 31.019247, 48.553413>,  <37.850399, 31.306211, 48.743820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646938, 31.019247, 48.553413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603231, -0.097537, 0.791580,
		-0.614319, 0.689786, -0.383154,
		-0.508649, -0.717413, -0.476020,
		37.494343, 30.804024, 48.410606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217445, 31.349365, 49.130604>,  <37.850399, 31.306211, 48.743820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217445, 31.349365, 49.130604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.263069, 31.003784, 48.934410>,  <37.290443, 30.796434, 48.816696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.263069, 31.003784, 48.934410>,  <37.217445, 31.349365, 49.130604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263069, 31.003784, 48.934410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641038, -0.441179, 0.628037,
		-0.758986, 0.242782, -0.604150,
		0.114062, -0.863955, -0.490481,
		37.297287, 30.744598, 48.787266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467224, 31.280823, 49.117195>,  <37.217445, 31.349365, 49.130604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467224, 31.280823, 49.117195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.068905, 31.246826, 49.130814>,  <35.829914, 31.226429, 49.138985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.068905, 31.246826, 49.130814>,  <36.467224, 31.280823, 49.117195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068905, 31.246826, 49.130814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064371, 0.385440, -0.920485,
		0.065109, -0.918810, -0.389292,
		-0.995800, -0.084991, 0.034049,
		35.770164, 31.221329, 49.141029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354176, 31.338467, 48.422382>,  <36.467224, 31.280823, 49.117195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354176, 31.338467, 48.422382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.970825, 31.354488, 48.535454>,  <35.740814, 31.364101, 48.603294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.970825, 31.354488, 48.535454>,  <36.354176, 31.338467, 48.422382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970825, 31.354488, 48.535454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231609, 0.469852, -0.851819,
		-0.166936, -0.881836, -0.441019,
		-0.958379, 0.040055, 0.282677,
		35.683311, 31.366505, 48.620258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832664, 30.909168, 47.924660>,  <36.354176, 31.338467, 48.422382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832664, 30.909168, 47.924660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.642094, 31.211403, 48.104485>,  <35.527752, 31.392744, 48.212379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.642094, 31.211403, 48.104485>,  <35.832664, 30.909168, 47.924660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642094, 31.211403, 48.104485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340053, 0.313170, -0.886729,
		-0.810789, -0.575338, 0.107737,
		-0.476429, 0.755587, 0.449561,
		35.499165, 31.438078, 48.239353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088917, 30.954168, 47.659374>,  <35.832664, 30.909168, 47.924660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088917, 30.954168, 47.659374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.167118, 31.320179, 47.800518>,  <35.214039, 31.539785, 47.885204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.167118, 31.320179, 47.800518>,  <35.088917, 30.954168, 47.659374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167118, 31.320179, 47.800518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503116, 0.402425, -0.764806,
		-0.841814, -0.028003, 0.539040,
		0.195506, 0.915025, 0.352856,
		35.225769, 31.594687, 47.906376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543526, 31.362617, 47.562466>,  <35.088917, 30.954168, 47.659374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543526, 31.362617, 47.562466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.787033, 31.677092, 47.605003>,  <34.933140, 31.865776, 47.630524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.787033, 31.677092, 47.605003>,  <34.543526, 31.362617, 47.562466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787033, 31.677092, 47.605003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382625, 0.408379, -0.828749,
		-0.694979, 0.463830, 0.549424,
		0.608772, 0.786186, 0.106342,
		34.969666, 31.912947, 47.636906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118481, 32.014187, 47.346184>,  <34.543526, 31.362617, 47.562466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118481, 32.014187, 47.346184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.505749, 32.110317, 47.318203>,  <34.738110, 32.167995, 47.301414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.505749, 32.110317, 47.318203>,  <34.118481, 32.014187, 47.346184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505749, 32.110317, 47.318203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170231, 0.427326, -0.887926,
		-0.183498, 0.871571, 0.454635,
		0.968168, 0.240325, -0.069955,
		34.796200, 32.182415, 47.297218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103539, 32.708557, 47.161919>,  <34.118481, 32.014187, 47.346184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103539, 32.708557, 47.161919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455620, 32.559990, 47.043739>,  <34.666870, 32.470852, 46.972832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455620, 32.559990, 47.043739>,  <34.103539, 32.708557, 47.161919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455620, 32.559990, 47.043739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121376, 0.425662, -0.896705,
		0.458812, 0.825144, 0.329588,
		0.880204, -0.371415, -0.295452,
		34.719681, 32.448566, 46.955105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417519, 33.251526, 46.902473>,  <34.103539, 32.708557, 47.161919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417519, 33.251526, 46.902473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.581120, 32.929440, 46.730736>,  <34.679279, 32.736187, 46.627693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.581120, 32.929440, 46.730736>,  <34.417519, 33.251526, 46.902473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581120, 32.929440, 46.730736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011822, 0.475136, -0.879833,
		0.912456, 0.354779, 0.203851,
		0.409003, -0.805219, -0.429347,
		34.703819, 32.687874, 46.601933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884808, 33.552536, 46.400253>,  <34.417519, 33.251526, 46.902473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884808, 33.552536, 46.400253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.875641, 33.161335, 46.317318>,  <34.870140, 32.926613, 46.267559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.875641, 33.161335, 46.317318>,  <34.884808, 33.552536, 46.400253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875641, 33.161335, 46.317318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121665, 0.203121, -0.971566,
		0.992307, -0.047489, 0.114334,
		-0.022915, -0.978001, -0.207336,
		34.868767, 32.867935, 46.255116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296249, 33.556107, 45.797794>,  <34.884808, 33.552536, 46.400253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296249, 33.556107, 45.797794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.114059, 33.200684, 45.819729>,  <35.004745, 32.987431, 45.832890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.114059, 33.200684, 45.819729>,  <35.296249, 33.556107, 45.797794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114059, 33.200684, 45.819729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014400, -0.068940, -0.997517,
		0.890134, -0.453551, 0.044196,
		-0.455472, -0.888560, 0.054834,
		34.977417, 32.934116, 45.836178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761803, 33.101818, 45.467445>,  <35.296249, 33.556107, 45.797794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761803, 33.101818, 45.467445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.396820, 32.938549, 45.455978>,  <35.177830, 32.840588, 45.449100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.396820, 32.938549, 45.455978>,  <35.761803, 33.101818, 45.467445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396820, 32.938549, 45.455978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072540, -0.092423, -0.993074,
		0.402693, -0.908216, 0.113941,
		-0.912456, -0.408169, -0.028664,
		35.123085, 32.816097, 45.447380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799259, 32.400806, 45.063122>,  <35.761803, 33.101818, 45.467445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799259, 32.400806, 45.063122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.416656, 32.517220, 45.055229>,  <35.187096, 32.587067, 45.050495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.416656, 32.517220, 45.055229>,  <35.799259, 32.400806, 45.063122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416656, 32.517220, 45.055229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030385, -0.166683, -0.985542,
		-0.290112, -0.942082, 0.168277,
		-0.956510, 0.291031, -0.019732,
		35.129704, 32.604527, 45.049309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.397785, 31.836250, 44.767956>,  <35.799259, 32.400806, 45.063122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.397785, 31.836250, 44.767956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.170055, 32.162487, 44.726631>,  <35.033417, 32.358231, 44.701836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.170055, 32.162487, 44.726631>,  <35.397785, 31.836250, 44.767956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170055, 32.162487, 44.726631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111901, -0.201381, -0.973100,
		-0.814459, -0.542452, 0.205918,
		-0.569328, 0.815593, -0.103316,
		34.999256, 32.407166, 44.695637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848003, 31.671606, 44.338516>,  <35.397785, 31.836250, 44.767956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848003, 31.671606, 44.338516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.866718, 32.070572, 44.316700>,  <34.877949, 32.309952, 44.303612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.866718, 32.070572, 44.316700>,  <34.848003, 31.671606, 44.338516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866718, 32.070572, 44.316700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116696, -0.048769, -0.991970,
		-0.992065, 0.052778, 0.114112,
		0.046789, 0.997415, -0.054541,
		34.880756, 32.369797, 44.300339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662174, 31.782782, 43.714527>,  <34.848003, 31.671606, 44.338516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662174, 31.782782, 43.714527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.796951, 32.153103, 43.783058>,  <34.877819, 32.375298, 43.824177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.796951, 32.153103, 43.783058>,  <34.662174, 31.782782, 43.714527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796951, 32.153103, 43.783058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132730, 0.133448, -0.982128,
		-0.932123, 0.353662, -0.077918,
		0.336943, 0.925805, 0.171332,
		34.898033, 32.430843, 43.834457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968426, 31.779020, 43.813538>,  <34.662174, 31.782782, 43.714527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968426, 31.779020, 43.813538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716621, 31.506191, 43.664677>,  <33.565540, 31.342495, 43.575359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.716621, 31.506191, 43.664677>,  <33.968426, 31.779020, 43.813538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716621, 31.506191, 43.664677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226114, -0.297418, 0.927585,
		-0.743363, 0.668073, 0.033002,
		-0.629510, -0.682071, -0.372151,
		33.527767, 31.301571, 43.553032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495575, 31.730135, 44.371796>,  <33.968426, 31.779020, 43.813538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495575, 31.730135, 44.371796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.443630, 31.409506, 44.138344>,  <33.412464, 31.217129, 43.998272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.443630, 31.409506, 44.138344>,  <33.495575, 31.730135, 44.371796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443630, 31.409506, 44.138344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276925, -0.535867, 0.797596,
		-0.952076, 0.265194, -0.152389,
		-0.129858, -0.801572, -0.583625,
		33.404675, 31.169035, 43.963257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853539, 31.413958, 44.586800>,  <33.495575, 31.730135, 44.371796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853539, 31.413958, 44.586800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.078808, 31.141352, 44.399879>,  <33.213970, 30.977789, 44.287727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.078808, 31.141352, 44.399879>,  <32.853539, 31.413958, 44.586800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078808, 31.141352, 44.399879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267308, -0.685355, 0.677374,
		-0.781906, -0.256569, -0.568151,
		0.563178, -0.681514, -0.467300,
		33.247761, 30.936897, 44.259689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418201, 30.794573, 44.337868>,  <32.853539, 31.413958, 44.586800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418201, 30.794573, 44.337868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.795273, 30.689394, 44.420052>,  <33.021515, 30.626287, 44.469360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.795273, 30.689394, 44.420052>,  <32.418201, 30.794573, 44.337868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795273, 30.689394, 44.420052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328644, -0.624812, 0.708239,
		-0.057856, -0.735165, -0.675414,
		0.942680, -0.262947, 0.205459,
		33.078075, 30.610510, 44.481689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278473, 30.129715, 44.626270>,  <32.418201, 30.794573, 44.337868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278473, 30.129715, 44.626270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.668396, 30.199749, 44.681534>,  <32.902351, 30.241770, 44.714691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.668396, 30.199749, 44.681534>,  <32.278473, 30.129715, 44.626270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668396, 30.199749, 44.681534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006563, -0.596673, 0.802457,
		0.222936, -0.783151, -0.580495,
		0.974811, 0.175087, 0.138159,
		32.960838, 30.252275, 44.722980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570889, 29.480553, 44.845493>,  <32.278473, 30.129715, 44.626270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570889, 29.480553, 44.845493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.821930, 29.748171, 45.004738>,  <32.972553, 29.908743, 45.100285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.821930, 29.748171, 45.004738>,  <32.570889, 29.480553, 44.845493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821930, 29.748171, 45.004738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050350, -0.475405, 0.878325,
		0.776903, -0.571285, -0.264679,
		0.627604, 0.669047, 0.398108,
		33.010212, 29.948885, 45.124168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.964001, 29.049858, 45.279179>,  <32.570889, 29.480553, 44.845493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.964001, 29.049858, 45.279179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.060661, 29.413597, 45.414642>,  <33.118660, 29.631840, 45.495922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.060661, 29.413597, 45.414642>,  <32.964001, 29.049858, 45.279179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060661, 29.413597, 45.414642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081459, -0.366784, 0.926733,
		0.966937, -0.196362, -0.162709,
		0.241654, 0.909346, 0.338662,
		33.133156, 29.686401, 45.516239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357521, 28.469391, 45.126518>,  <32.964001, 29.049858, 45.279179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357521, 28.469391, 45.126518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.042645, 28.224264, 45.154194>,  <32.853718, 28.077188, 45.170799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.042645, 28.224264, 45.154194>,  <33.357521, 28.469391, 45.126518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042645, 28.224264, 45.154194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101348, 0.017876, -0.994690,
		0.608326, -0.790022, -0.076180,
		-0.787190, -0.612817, 0.069193,
		32.806488, 28.040419, 45.174953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498589, 27.939430, 44.687897>,  <33.357521, 28.469391, 45.126518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498589, 27.939430, 44.687897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.103668, 27.944242, 44.751270>,  <32.866718, 27.947130, 44.789295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.103668, 27.944242, 44.751270>,  <33.498589, 27.939430, 44.687897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103668, 27.944242, 44.751270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157836, 0.040235, -0.986645,
		-0.018249, -0.999118, -0.037824,
		-0.987297, 0.012035, 0.158431,
		32.807480, 27.947851, 44.798801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193565, 27.431257, 44.195713>,  <33.498589, 27.939430, 44.687897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193565, 27.431257, 44.195713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.926655, 27.705080, 44.313107>,  <32.766510, 27.869373, 44.383541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.926655, 27.705080, 44.313107>,  <33.193565, 27.431257, 44.195713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926655, 27.705080, 44.313107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299358, 0.114312, -0.947268,
		-0.682006, -0.719942, 0.128649,
		-0.667273, 0.684555, 0.293482,
		32.726475, 27.910446, 44.401150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518700, 27.205702, 44.008057>,  <33.193565, 27.431257, 44.195713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518700, 27.205702, 44.008057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.464264, 27.598814, 44.058048>,  <32.431602, 27.834682, 44.088043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.464264, 27.598814, 44.058048>,  <32.518700, 27.205702, 44.008057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464264, 27.598814, 44.058048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553866, 0.029118, -0.832096,
		-0.821408, -0.182463, 0.540367,
		-0.136093, 0.982781, 0.124977,
		32.423435, 27.893648, 44.095543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114300, 27.395559, 43.384502>,  <32.518700, 27.205702, 44.008057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114300, 27.395559, 43.384502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.173904, 27.764387, 43.527378>,  <32.209667, 27.985683, 43.613102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.173904, 27.764387, 43.527378>,  <32.114300, 27.395559, 43.384502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173904, 27.764387, 43.527378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382864, 0.386842, -0.838909,
		-0.911708, -0.011750, 0.410671,
		0.149008, 0.922071, 0.357186,
		32.218605, 28.041008, 43.634533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570507, 27.786547, 43.348103>,  <32.114300, 27.395559, 43.384502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570507, 27.786547, 43.348103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.860149, 28.062405, 43.344982>,  <32.033936, 28.227919, 43.343109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.860149, 28.062405, 43.344982>,  <31.570507, 27.786547, 43.348103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860149, 28.062405, 43.344982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363342, 0.371838, -0.854236,
		-0.586217, 0.621393, 0.519827,
		0.724108, 0.689643, -0.007800,
		32.077381, 28.269297, 43.342644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323372, 28.423586, 43.180340>,  <31.570507, 27.786547, 43.348103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323372, 28.423586, 43.180340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.707697, 28.467461, 43.078510>,  <31.938292, 28.493786, 43.017414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.707697, 28.467461, 43.078510>,  <31.323372, 28.423586, 43.180340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707697, 28.467461, 43.078510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274797, 0.497543, -0.822762,
		0.036414, 0.860476, 0.508187,
		0.960812, 0.109688, -0.254574,
		31.995941, 28.500366, 43.002140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.094856, 27.854681, 48.114594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.136120, 28.191090, 47.902164>,  <37.160877, 28.392935, 47.774708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.136120, 28.191090, 47.902164>,  <37.094856, 27.854681, 48.114594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136120, 28.191090, 47.902164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210068, -0.540299, -0.814830,
		-0.972229, -0.027500, -0.232412,
		0.103164, 0.841023, -0.531071,
		37.167068, 28.443398, 47.742844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927555, 27.719418, 47.369072>,  <37.094856, 27.854681, 48.114594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927555, 27.719418, 47.369072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.111603, 28.071646, 47.323650>,  <37.222031, 28.282982, 47.296398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.111603, 28.071646, 47.323650>,  <36.927555, 27.719418, 47.369072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111603, 28.071646, 47.323650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157258, -0.206697, -0.965684,
		-0.873821, 0.426470, -0.233581,
		0.460115, 0.880568, -0.113551,
		37.249638, 28.335815, 47.289585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695930, 28.023525, 46.648010>,  <36.927555, 27.719418, 47.369072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695930, 28.023525, 46.648010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.051624, 28.184668, 46.734703>,  <37.265041, 28.281353, 46.786716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.051624, 28.184668, 46.734703>,  <36.695930, 28.023525, 46.648010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051624, 28.184668, 46.734703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276449, -0.095766, -0.956245,
		-0.364475, 0.910239, -0.196528,
		0.889232, 0.402857, 0.216730,
		37.318394, 28.305525, 46.799721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794369, 28.382299, 46.118641>,  <36.695930, 28.023525, 46.648010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794369, 28.382299, 46.118641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.156139, 28.330647, 46.281288>,  <37.373203, 28.299654, 46.378876>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.156139, 28.330647, 46.281288>,  <36.794369, 28.382299, 46.118641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156139, 28.330647, 46.281288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388249, -0.145950, -0.909924,
		0.176846, 0.980828, -0.081866,
		0.904427, -0.129132, 0.406616,
		37.427467, 28.291906, 46.403275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311401, 28.831940, 45.741859>,  <36.794369, 28.382299, 46.118641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311401, 28.831940, 45.741859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.527184, 28.540581, 45.910820>,  <37.656654, 28.365765, 46.012196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.527184, 28.540581, 45.910820>,  <37.311401, 28.831940, 45.741859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527184, 28.540581, 45.910820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543605, -0.081815, -0.835344,
		0.643022, 0.680251, 0.351825,
		0.539459, -0.728399, 0.422397,
		37.689022, 28.322062, 46.037540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986427, 28.913385, 45.439919>,  <37.311401, 28.831940, 45.741859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986427, 28.913385, 45.439919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.983986, 28.533140, 45.564049>,  <37.982521, 28.304993, 45.638527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.983986, 28.533140, 45.564049>,  <37.986427, 28.913385, 45.439919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983986, 28.533140, 45.564049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479813, -0.275060, -0.833139,
		0.877349, 0.143810, 0.457796,
		-0.006108, -0.950611, 0.310325,
		37.982155, 28.247957, 45.657146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757172, 28.660952, 45.462452>,  <37.986427, 28.913385, 45.439919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757172, 28.660952, 45.462452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.496719, 28.358797, 45.433022>,  <38.340446, 28.177504, 45.415363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.496719, 28.358797, 45.433022>,  <38.757172, 28.660952, 45.462452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496719, 28.358797, 45.433022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406196, -0.264961, -0.874529,
		0.641115, -0.599320, 0.479361,
		-0.651134, -0.755388, -0.073571,
		38.301380, 28.132181, 45.410950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167435, 28.068327, 45.330635>,  <38.757172, 28.660952, 45.462452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167435, 28.068327, 45.330635> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.792805, 27.990389, 45.214111>,  <38.568027, 27.943626, 45.144199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.792805, 27.990389, 45.214111>,  <39.167435, 28.068327, 45.330635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792805, 27.990389, 45.214111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332225, -0.228978, -0.914984,
		0.111578, -0.953732, 0.279188,
		-0.936577, -0.194845, -0.291305,
		38.511833, 27.931936, 45.126720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178116, 27.354490, 45.037815>,  <39.167435, 28.068327, 45.330635>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178116, 27.354490, 45.037815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.834335, 27.493488, 44.887833>,  <38.628067, 27.576887, 44.797844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.834335, 27.493488, 44.887833>,  <39.178116, 27.354490, 45.037815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834335, 27.493488, 44.887833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289045, -0.274663, -0.917068,
		-0.421664, -0.896553, 0.135617,
		-0.859449, 0.347495, -0.374960,
		38.576500, 27.597736, 44.775345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996841, 26.855528, 44.565762>,  <39.178116, 27.354490, 45.037815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996841, 26.855528, 44.565762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.755936, 27.156719, 44.459705>,  <38.611393, 27.337435, 44.396072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.755936, 27.156719, 44.459705>,  <38.996841, 26.855528, 44.565762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755936, 27.156719, 44.459705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225012, -0.158550, -0.961369,
		-0.765931, -0.638656, -0.073941,
		-0.602261, 0.752981, -0.265144,
		38.575256, 27.382614, 44.380161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367062, 26.550411, 44.202934>,  <38.996841, 26.855528, 44.565762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367062, 26.550411, 44.202934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.433205, 26.930540, 44.097446>,  <38.472889, 27.158617, 44.034153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.433205, 26.930540, 44.097446>,  <38.367062, 26.550411, 44.202934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433205, 26.930540, 44.097446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152975, -0.288878, -0.945065,
		-0.974298, 0.115930, -0.193144,
		0.165357, 0.950321, -0.263719,
		38.482811, 27.215637, 44.018330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107365, 26.535686, 43.592197>,  <38.367062, 26.550411, 44.202934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107365, 26.535686, 43.592197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.317200, 26.876223, 43.594124>,  <38.443100, 27.080545, 43.595280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.317200, 26.876223, 43.594124>,  <38.107365, 26.535686, 43.592197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317200, 26.876223, 43.594124> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241624, -0.143460, -0.959707,
		-0.816348, 0.504615, -0.280962,
		0.524589, 0.851342, 0.004814,
		38.474575, 27.131626, 43.595570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467148, 26.975157, 43.693569>,  <38.107365, 26.535686, 43.592197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467148, 26.975157, 43.693569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.109787, 26.858536, 43.556850>,  <36.895370, 26.788563, 43.474819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.109787, 26.858536, 43.556850>,  <37.467148, 26.975157, 43.693569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109787, 26.858536, 43.556850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188434, -0.447467, 0.874223,
		-0.407825, 0.845441, 0.344830,
		-0.893404, -0.291552, -0.341798,
		36.841766, 26.771070, 43.454311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016582, 27.350529, 44.084042>,  <37.467148, 26.975157, 43.693569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016582, 27.350529, 44.084042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.831932, 27.014318, 43.970608>,  <36.721142, 26.812592, 43.902546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.831932, 27.014318, 43.970608>,  <37.016582, 27.350529, 44.084042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831932, 27.014318, 43.970608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082746, -0.277490, 0.957158,
		-0.883208, 0.465312, 0.058546,
		-0.461624, -0.840526, -0.283584,
		36.693443, 26.762161, 43.885532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505493, 27.375845, 44.498180>,  <37.016582, 27.350529, 44.084042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505493, 27.375845, 44.498180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.507008, 26.996967, 44.369923>,  <36.507915, 26.769640, 44.292969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.507008, 26.996967, 44.369923>,  <36.505493, 27.375845, 44.498180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507008, 26.996967, 44.369923> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280132, -0.308808, 0.908935,
		-0.959954, 0.086383, -0.266508,
		0.003783, -0.947193, -0.320640,
		36.508144, 26.712809, 44.273731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866409, 27.068375, 44.467045>,  <36.505493, 27.375845, 44.498180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866409, 27.068375, 44.467045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.119164, 26.760117, 44.500103>,  <36.270817, 26.575163, 44.519936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.119164, 26.760117, 44.500103>,  <35.866409, 27.068375, 44.467045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119164, 26.760117, 44.500103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622492, -0.441079, 0.646492,
		-0.461767, -0.459949, -0.758432,
		0.631882, -0.770647, 0.082639,
		36.308727, 26.528923, 44.524895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432808, 26.510843, 44.472157>,  <35.866409, 27.068375, 44.467045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432808, 26.510843, 44.472157> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.742657, 26.329584, 44.648613>,  <35.928566, 26.220829, 44.754486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.742657, 26.329584, 44.648613>,  <35.432808, 26.510843, 44.472157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742657, 26.329584, 44.648613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624415, -0.437393, 0.647143,
		-0.100299, -0.776752, -0.621769,
		0.774627, -0.453149, 0.441145,
		35.975044, 26.193640, 44.780956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119984, 25.832413, 44.658005>,  <35.432808, 26.510843, 44.472157>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119984, 25.832413, 44.658005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.455395, 25.869387, 44.872787>,  <35.656643, 25.891571, 45.001656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.455395, 25.869387, 44.872787>,  <35.119984, 25.832413, 44.658005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455395, 25.869387, 44.872787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494941, -0.282834, 0.821607,
		0.227814, -0.954704, -0.191416,
		0.838531, 0.092434, 0.536956,
		35.706955, 25.897116, 45.033875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169682, 25.197563, 44.926914>,  <35.119984, 25.832413, 44.658005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169682, 25.197563, 44.926914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.399647, 25.440123, 45.146645>,  <35.537624, 25.585659, 45.278484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.399647, 25.440123, 45.146645>,  <35.169682, 25.197563, 44.926914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399647, 25.440123, 45.146645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447576, -0.328952, 0.831545,
		0.684950, -0.723928, 0.082292,
		0.574908, 0.606398, 0.549328,
		35.572121, 25.622042, 45.311443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498337, 24.798040, 45.556824>,  <35.169682, 25.197563, 44.926914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498337, 24.798040, 45.556824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.464939, 25.184816, 45.653206>,  <35.444901, 25.416882, 45.711037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.464939, 25.184816, 45.653206>,  <35.498337, 24.798040, 45.556824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464939, 25.184816, 45.653206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519286, -0.248594, 0.817645,
		0.850512, -0.056855, 0.522873,
		-0.083496, 0.966937, 0.240956,
		35.439892, 25.474897, 45.725494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597626, 24.809425, 46.253910>,  <35.498337, 24.798040, 45.556824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597626, 24.809425, 46.253910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.423294, 25.158689, 46.166595>,  <35.318695, 25.368248, 46.114208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.423294, 25.158689, 46.166595>,  <35.597626, 24.809425, 46.253910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423294, 25.158689, 46.166595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612601, -0.110108, 0.782685,
		0.659374, 0.474836, 0.582887,
		-0.435828, 0.873159, -0.218282,
		35.292545, 25.420637, 46.101112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571712, 25.104530, 46.849346>,  <35.597626, 24.809425, 46.253910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571712, 25.104530, 46.849346> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.314205, 25.346107, 46.661381>,  <35.159702, 25.491055, 46.548603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.314205, 25.346107, 46.661381>,  <35.571712, 25.104530, 46.849346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314205, 25.346107, 46.661381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568325, 0.033862, 0.822107,
		0.512418, 0.796308, 0.321436,
		-0.643767, 0.603942, -0.469913,
		35.121075, 25.527290, 46.520409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395702, 25.547277, 47.305653>,  <35.571712, 25.104530, 46.849346>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395702, 25.547277, 47.305653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.094540, 25.536272, 47.042629>,  <34.913841, 25.529669, 46.884815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.094540, 25.536272, 47.042629>,  <35.395702, 25.547277, 47.305653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094540, 25.536272, 47.042629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655346, -0.060496, 0.752903,
		-0.060496, 0.997789, 0.027515,
		-0.752903, -0.027515, -0.657557,
		34.868668, 25.528017, 46.845364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863468, 26.007290, 47.558048>,  <35.395702, 25.547277, 47.305653>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863468, 26.007290, 47.558048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.658913, 25.784309, 47.296444>,  <34.536179, 25.650520, 47.139481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.658913, 25.784309, 47.296444>,  <34.863468, 26.007290, 47.558048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658913, 25.784309, 47.296444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828317, 0.117090, 0.547888,
		-0.228842, 0.821912, -0.521625,
		-0.511393, -0.557451, -0.654008,
		34.505493, 25.617075, 47.100243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136829, 26.216755, 47.679848>,  <34.863468, 26.007290, 47.558048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136829, 26.216755, 47.679848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.073463, 25.872948, 47.485474>,  <34.035442, 25.666664, 47.368847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.073463, 25.872948, 47.485474>,  <34.136829, 26.216755, 47.679848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073463, 25.872948, 47.485474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895667, -0.082039, 0.437092,
		-0.415554, 0.504482, -0.756844,
		-0.158415, -0.859516, -0.485939,
		34.025940, 25.615093, 47.339691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381920, 26.159410, 47.482887>,  <34.136829, 26.216755, 47.679848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381920, 26.159410, 47.482887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.531887, 25.788614, 47.487392>,  <33.621868, 25.566137, 47.490097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.531887, 25.788614, 47.487392>,  <33.381920, 26.159410, 47.482887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531887, 25.788614, 47.487392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899127, -0.360632, 0.248021,
		-0.225851, -0.103114, -0.968689,
		0.374915, -0.926991, 0.011263,
		33.644360, 25.510517, 47.490772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952194, 25.650755, 47.014351>,  <33.381920, 26.159410, 47.482887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952194, 25.650755, 47.014351> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.151745, 25.504042, 47.328445>,  <33.271477, 25.416014, 47.516903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.151745, 25.504042, 47.328445>,  <32.952194, 25.650755, 47.014351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151745, 25.504042, 47.328445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854335, -0.360455, 0.374411,
		0.145714, -0.857637, -0.493179,
		0.498877, -0.366783, 0.785233,
		33.301407, 25.394007, 47.564014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408752, 26.216349, 47.302116>,  <32.952194, 25.650755, 47.014351>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408752, 26.216349, 47.302116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.637177, 26.534100, 47.384922>,  <32.774231, 26.724751, 47.434605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.637177, 26.534100, 47.384922>,  <32.408752, 26.216349, 47.302116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637177, 26.534100, 47.384922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349255, 0.463321, -0.814466,
		-0.742907, 0.392809, 0.542024,
		0.571061, 0.794377, 0.207014,
		32.808495, 26.772413, 47.447025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979643, 26.765728, 47.335705>,  <32.408752, 26.216349, 47.302116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979643, 26.765728, 47.335705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.347389, 26.908262, 47.269028>,  <32.568039, 26.993782, 47.229023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.347389, 26.908262, 47.269028>,  <31.979643, 26.765728, 47.335705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347389, 26.908262, 47.269028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331108, 0.472082, -0.817010,
		-0.212437, 0.806327, 0.552003,
		0.919368, 0.356336, -0.166694,
		32.623199, 27.015163, 47.219021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920795, 27.555422, 47.100052>,  <31.979643, 26.765728, 47.335705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920795, 27.555422, 47.100052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.273552, 27.403971, 46.987690>,  <32.485207, 27.313099, 46.920273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.273552, 27.403971, 46.987690>,  <31.920795, 27.555422, 47.100052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273552, 27.403971, 46.987690> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091687, 0.446713, -0.889967,
		0.462452, 0.810609, 0.359237,
		0.881891, -0.378629, -0.280905,
		32.538120, 27.290382, 46.903419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376167, 28.161995, 46.801498>,  <31.920795, 27.555422, 47.100052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376167, 28.161995, 46.801498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.598366, 27.874430, 46.634365>,  <32.731686, 27.701891, 46.534084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.598366, 27.874430, 46.634365>,  <32.376167, 28.161995, 46.801498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598366, 27.874430, 46.634365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185143, 0.382944, -0.905028,
		0.810644, 0.580100, 0.079623,
		0.555498, -0.718915, -0.417832,
		32.765015, 27.658754, 46.509014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658493, 28.503002, 46.325363>,  <32.376167, 28.161995, 46.801498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658493, 28.503002, 46.325363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.706451, 28.133884, 46.178898>,  <32.735226, 27.912415, 46.091019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.706451, 28.133884, 46.178898>,  <32.658493, 28.503002, 46.325363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706451, 28.133884, 46.178898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098985, 0.355873, -0.929277,
		0.987839, 0.147665, -0.048674,
		0.119900, -0.922794, -0.366162,
		32.742420, 27.857046, 46.069050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124928, 28.539885, 45.799591>,  <32.658493, 28.503002, 46.325363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124928, 28.539885, 45.799591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.943718, 28.193531, 45.714729>,  <32.834991, 27.985718, 45.663811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.943718, 28.193531, 45.714729>,  <33.124928, 28.539885, 45.799591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943718, 28.193531, 45.714729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170260, 0.317629, -0.932804,
		0.875088, -0.386462, -0.291319,
		-0.453025, -0.865886, -0.212155,
		32.807812, 27.933765, 45.651081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596729, 29.026520, 45.728943>,  <33.124928, 28.539885, 45.799591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596729, 29.026520, 45.728943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.441471, 29.383045, 45.822670>,  <33.348316, 29.596960, 45.878906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.441471, 29.383045, 45.822670>,  <33.596729, 29.026520, 45.728943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441471, 29.383045, 45.822670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082800, -0.219499, 0.972093,
		0.917871, 0.396716, 0.011397,
		-0.388146, 0.891312, 0.234320,
		33.325027, 29.650438, 45.892967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910221, 29.217287, 46.296669>,  <33.596729, 29.026520, 45.728943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910221, 29.217287, 46.296669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.595009, 29.463243, 46.308758>,  <33.405880, 29.610817, 46.316013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.595009, 29.463243, 46.308758>,  <33.910221, 29.217287, 46.296669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595009, 29.463243, 46.308758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058485, 0.025898, 0.997952,
		0.612848, 0.788188, -0.056370,
		-0.788033, 0.614890, 0.030226,
		33.358601, 29.647711, 46.317825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095135, 29.721371, 46.741978>,  <33.910221, 29.217287, 46.296669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095135, 29.721371, 46.741978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.695408, 29.729467, 46.729664>,  <33.455570, 29.734325, 46.722275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.695408, 29.729467, 46.729664>,  <34.095135, 29.721371, 46.741978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695408, 29.729467, 46.729664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029467, 0.062540, 0.997607,
		0.022118, 0.997837, -0.061901,
		-0.999321, 0.020241, -0.030787,
		33.395611, 29.735540, 46.720428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001579, 30.223354, 47.175026>,  <34.095135, 29.721371, 46.741978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001579, 30.223354, 47.175026> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.663074, 30.012148, 47.146629>,  <33.459972, 29.885424, 47.129589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.663074, 30.012148, 47.146629>,  <34.001579, 30.223354, 47.175026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663074, 30.012148, 47.146629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062503, -0.033937, 0.997468,
		-0.529090, 0.848555, -0.004283,
		-0.846261, -0.528018, -0.070993,
		33.409195, 29.853743, 47.125332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553963, 30.629087, 47.516773>,  <34.001579, 30.223354, 47.175026>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553963, 30.629087, 47.516773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.416203, 30.253607, 47.522758>,  <33.333546, 30.028318, 47.526352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.416203, 30.253607, 47.522758>,  <33.553963, 30.629087, 47.516773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416203, 30.253607, 47.522758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042280, 0.031435, 0.998611,
		-0.937870, 0.343290, -0.050515,
		-0.344401, -0.938703, 0.014968,
		33.312881, 29.971996, 47.527248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864758, 30.559837, 47.841125>,  <33.553963, 30.629087, 47.516773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864758, 30.559837, 47.841125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.026764, 30.196045, 47.878666>,  <33.123970, 29.977770, 47.901188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.026764, 30.196045, 47.878666>,  <32.864758, 30.559837, 47.841125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026764, 30.196045, 47.878666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115757, 0.050809, 0.991977,
		-0.906951, -0.412634, -0.084700,
		0.405020, -0.909479, 0.093847,
		33.148270, 29.923201, 47.906818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430702, 30.181223, 48.333923>,  <32.864758, 30.559837, 47.841125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430702, 30.181223, 48.333923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.776958, 29.980965, 48.335541>,  <32.984715, 29.860809, 48.336510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.776958, 29.980965, 48.335541>,  <32.430702, 30.181223, 48.333923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776958, 29.980965, 48.335541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056031, 0.104899, 0.992903,
		-0.497518, -0.859272, 0.118857,
		0.865642, -0.500647, 0.004044,
		33.036652, 29.830770, 48.336754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498638, 29.879150, 48.983860>,  <32.430702, 30.181223, 48.333923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498638, 29.879150, 48.983860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.882847, 29.838463, 48.880287>,  <33.113373, 29.814051, 48.818142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.882847, 29.838463, 48.880287>,  <32.498638, 29.879150, 48.983860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882847, 29.838463, 48.880287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253685, -0.061738, 0.965315,
		-0.114181, -0.992895, -0.033495,
		0.960524, -0.101724, -0.258932,
		33.171005, 29.807947, 48.802608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786961, 29.407480, 49.482422>,  <32.498638, 29.879150, 48.983860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786961, 29.407480, 49.482422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.124489, 29.555784, 49.327244>,  <33.327007, 29.644766, 49.234138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.124489, 29.555784, 49.327244>,  <32.786961, 29.407480, 49.482422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124489, 29.555784, 49.327244> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464239, -0.141770, 0.874290,
		0.269152, -0.917845, -0.291750,
		0.843824, 0.370759, -0.387942,
		33.377636, 29.667011, 49.210861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.868866, 32.452618, 33.462421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228790, 32.617271, 33.520252>,  <35.444744, 32.716064, 33.554951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228790, 32.617271, 33.520252>,  <34.868866, 32.452618, 33.462421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228790, 32.617271, 33.520252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039656, -0.252837, 0.966696,
		0.434484, -0.875572, -0.211180,
		0.899806, 0.411639, 0.144575,
		35.498734, 32.740765, 33.563625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307293, 31.917952, 33.645592>,  <34.868866, 32.452618, 33.462421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307293, 31.917952, 33.645592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471931, 32.259060, 33.774197>,  <35.570713, 32.463726, 33.851360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471931, 32.259060, 33.774197>,  <35.307293, 31.917952, 33.645592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471931, 32.259060, 33.774197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103667, -0.306683, 0.946149,
		0.905452, -0.422761, -0.037825,
		0.411595, 0.852771, 0.321513,
		35.595409, 32.514893, 33.870651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824440, 31.732231, 34.142151>,  <35.307293, 31.917952, 33.645592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824440, 31.732231, 34.142151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734215, 32.117172, 34.202808>,  <35.680080, 32.348137, 34.239201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734215, 32.117172, 34.202808>,  <35.824440, 31.732231, 34.142151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734215, 32.117172, 34.202808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199936, -0.198067, 0.959581,
		0.953492, 0.186128, 0.237086,
		-0.225563, 0.962354, 0.151642,
		35.666546, 32.405880, 34.248302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127926, 31.897583, 34.706528>,  <35.824440, 31.732231, 34.142151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127926, 31.897583, 34.706528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860607, 32.194473, 34.686588>,  <35.700218, 32.372608, 34.674625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860607, 32.194473, 34.686588>,  <36.127926, 31.897583, 34.706528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860607, 32.194473, 34.686588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245631, -0.156918, 0.956578,
		0.702176, 0.651518, 0.287181,
		-0.668292, 0.742227, -0.049849,
		35.660118, 32.417141, 34.671635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241291, 32.223846, 35.305805>,  <36.127926, 31.897583, 34.706528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241291, 32.223846, 35.305805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874878, 32.338577, 35.193649>,  <35.655029, 32.407417, 35.126354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874878, 32.338577, 35.193649>,  <36.241291, 32.223846, 35.305805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874878, 32.338577, 35.193649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331742, -0.148823, 0.931557,
		0.225471, 0.946351, 0.231480,
		-0.916029, 0.286831, -0.280389,
		35.600071, 32.424625, 35.109531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957981, 32.633205, 35.909058>,  <36.241291, 32.223846, 35.305805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957981, 32.633205, 35.909058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639549, 32.525230, 35.692394>,  <35.448490, 32.460445, 35.562397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639549, 32.525230, 35.692394>,  <35.957981, 32.633205, 35.909058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639549, 32.525230, 35.692394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494034, -0.227090, 0.839262,
		-0.349555, 0.935715, 0.047422,
		-0.796079, -0.269940, -0.541656,
		35.400726, 32.444248, 35.529896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360458, 33.012772, 36.261551>,  <35.957981, 32.633205, 35.909058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360458, 33.012772, 36.261551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187389, 32.720970, 36.049656>,  <35.083549, 32.545891, 35.922520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187389, 32.720970, 36.049656>,  <35.360458, 33.012772, 36.261551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187389, 32.720970, 36.049656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472281, -0.317106, 0.822432,
		-0.767948, 0.606029, -0.207326,
		-0.432673, -0.729502, -0.529737,
		35.057587, 32.502121, 35.890736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668102, 32.983414, 36.515049>,  <35.360458, 33.012772, 36.261551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668102, 32.983414, 36.515049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718132, 32.619499, 36.356735>,  <34.748150, 32.401150, 36.261745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718132, 32.619499, 36.356735>,  <34.668102, 32.983414, 36.515049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718132, 32.619499, 36.356735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442439, -0.408204, 0.798509,
		-0.888033, 0.075235, -0.453582,
		0.125078, -0.909785, -0.395786,
		34.755657, 32.346565, 36.237999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938595, 32.641899, 36.296665>,  <34.668102, 32.983414, 36.515049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938595, 32.641899, 36.296665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220291, 32.369709, 36.377659>,  <34.389309, 32.206394, 36.426254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220291, 32.369709, 36.377659>,  <33.938595, 32.641899, 36.296665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220291, 32.369709, 36.377659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587562, -0.398522, 0.704238,
		-0.398522, -0.614924, -0.680477,
		-0.704238, 0.680477, -0.202486,
		34.431564, 32.165565, 36.438404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578575, 31.977571, 36.427921>,  <33.938595, 32.641899, 36.296665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578575, 31.977571, 36.427921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933395, 31.934828, 36.607574>,  <34.146290, 31.909182, 36.715366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933395, 31.934828, 36.607574>,  <33.578575, 31.977571, 36.427921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933395, 31.934828, 36.607574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457752, -0.330025, 0.825558,
		0.060003, -0.937904, -0.341665,
		0.887053, -0.106862, 0.449130,
		34.199512, 31.902769, 36.742313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429939, 31.407688, 36.861134>,  <33.578575, 31.977571, 36.427921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429939, 31.407688, 36.861134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770889, 31.566599, 36.997150>,  <33.975460, 31.661945, 37.078762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770889, 31.566599, 36.997150>,  <33.429939, 31.407688, 36.861134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770889, 31.566599, 36.997150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256468, -0.249094, 0.933904,
		0.455721, -0.883246, -0.110433,
		0.852375, 0.397277, 0.340041,
		34.026604, 31.685781, 37.099163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744167, 30.917952, 37.277302>,  <33.429939, 31.407688, 36.861134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744167, 30.917952, 37.277302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906555, 31.255886, 37.416698>,  <34.003986, 31.458647, 37.500336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906555, 31.255886, 37.416698>,  <33.744167, 30.917952, 37.277302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906555, 31.255886, 37.416698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275144, -0.250644, 0.928156,
		0.871486, -0.472683, 0.130699,
		0.405965, 0.844836, 0.348489,
		34.028343, 31.509336, 37.521244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808289, 30.095266, 37.241886>,  <33.744167, 30.917952, 37.277302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808289, 30.095266, 37.241886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413540, 30.056541, 37.190166>,  <33.176693, 30.033306, 37.159134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.413540, 30.056541, 37.190166>,  <33.808289, 30.095266, 37.241886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413540, 30.056541, 37.190166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107803, 0.201375, -0.973564,
		0.120289, -0.974719, -0.188294,
		-0.986869, -0.096810, -0.129301,
		33.117481, 30.027498, 37.151375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803764, 30.054394, 36.522926>,  <33.808289, 30.095266, 37.241886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803764, 30.054394, 36.522926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417717, 30.092651, 36.620407>,  <33.186089, 30.115606, 36.678894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417717, 30.092651, 36.620407>,  <33.803764, 30.054394, 36.522926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417717, 30.092651, 36.620407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234344, 0.099357, -0.967063,
		-0.116708, -0.990444, -0.073478,
		-0.965123, 0.095645, 0.243700,
		33.128181, 30.121344, 36.693516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419716, 29.663141, 36.015182>,  <33.803764, 30.054394, 36.522926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419716, 29.663141, 36.015182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128460, 29.894760, 36.161892>,  <32.953709, 30.033731, 36.249916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128460, 29.894760, 36.161892>,  <33.419716, 29.663141, 36.015182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128460, 29.894760, 36.161892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276424, 0.241582, -0.930176,
		-0.627222, -0.778679, -0.015842,
		-0.728136, 0.579048, 0.366771,
		32.910019, 30.068474, 36.271923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751080, 29.374620, 35.826160>,  <33.419716, 29.663141, 36.015182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751080, 29.374620, 35.826160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686600, 29.763386, 35.894745>,  <32.647911, 29.996645, 35.935898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686600, 29.763386, 35.894745>,  <32.751080, 29.374620, 35.826160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686600, 29.763386, 35.894745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304964, 0.116178, -0.945251,
		-0.938622, -0.204668, 0.277670,
		-0.161203, 0.971912, 0.171463,
		32.638237, 30.054960, 35.946182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058483, 29.529465, 35.436237>,  <32.751080, 29.374620, 35.826160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058483, 29.529465, 35.436237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243980, 29.872559, 35.524990>,  <32.355278, 30.078415, 35.578243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243980, 29.872559, 35.524990>,  <32.058483, 29.529465, 35.436237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243980, 29.872559, 35.524990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314090, 0.393339, -0.864078,
		-0.828428, 0.331016, 0.451814,
		0.463740, 0.857737, 0.221884,
		32.383102, 30.129879, 35.591557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585426, 30.057789, 35.464035>,  <32.058483, 29.529465, 35.436237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585426, 30.057789, 35.464035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934547, 30.239424, 35.392460>,  <32.144020, 30.348404, 35.349514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.934547, 30.239424, 35.392460>,  <31.585426, 30.057789, 35.464035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934547, 30.239424, 35.392460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385190, 0.415699, -0.823907,
		-0.299739, 0.788035, 0.537733,
		0.872803, 0.454087, -0.178942,
		32.196388, 30.375650, 35.338776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488014, 30.822159, 35.261909>,  <31.585426, 30.057789, 35.464035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488014, 30.822159, 35.261909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862869, 30.756454, 35.138756>,  <32.087784, 30.717031, 35.064865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862869, 30.756454, 35.138756>,  <31.488014, 30.822159, 35.261909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862869, 30.756454, 35.138756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255509, 0.277928, -0.925997,
		0.237674, 0.946454, 0.218487,
		0.937137, -0.164260, -0.307884,
		32.144009, 30.707176, 35.046391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664484, 31.438795, 34.699345>,  <31.488014, 30.822159, 35.261909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664484, 31.438795, 34.699345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929352, 31.142197, 34.656044>,  <32.088272, 30.964237, 34.630066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.929352, 31.142197, 34.656044>,  <31.664484, 31.438795, 34.699345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929352, 31.142197, 34.656044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132313, 0.257880, -0.957074,
		0.737581, 0.619422, 0.268869,
		0.662169, -0.741494, -0.108250,
		32.128002, 30.919748, 34.623569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295101, 31.720221, 34.317848>,  <31.664484, 31.438795, 34.699345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295101, 31.720221, 34.317848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296322, 31.324867, 34.257072>,  <32.297054, 31.087654, 34.220608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296322, 31.324867, 34.257072>,  <32.295101, 31.720221, 34.317848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296322, 31.324867, 34.257072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035796, 0.151738, -0.987772,
		0.999354, 0.008451, -0.034918,
		0.003049, -0.988385, -0.151942,
		32.297237, 31.028353, 34.211491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892456, 31.657824, 33.941238>,  <32.295101, 31.720221, 34.317848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892456, 31.657824, 33.941238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678825, 31.328478, 33.864471>,  <32.550648, 31.130871, 33.818413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678825, 31.328478, 33.864471>,  <32.892456, 31.657824, 33.941238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678825, 31.328478, 33.864471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045109, 0.254433, -0.966038,
		0.844231, -0.507282, -0.173028,
		-0.534078, -0.823365, -0.191917,
		32.518600, 31.081469, 33.806896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120308, 31.416862, 33.339417>,  <32.892456, 31.657824, 33.941238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120308, 31.416862, 33.339417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753590, 31.259811, 33.368645>,  <32.533558, 31.165581, 33.386181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753590, 31.259811, 33.368645>,  <33.120308, 31.416862, 33.339417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753590, 31.259811, 33.368645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179996, 0.242900, -0.953206,
		0.356503, -0.887043, -0.293360,
		-0.916792, -0.392625, 0.073070,
		32.478554, 31.142023, 33.390564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097218, 30.784534, 32.955845>,  <33.120308, 31.416862, 33.339417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097218, 30.784534, 32.955845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728313, 30.938118, 32.973785>,  <32.506969, 31.030268, 32.984550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728313, 30.938118, 32.973785>,  <33.097218, 30.784534, 32.955845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728313, 30.938118, 32.973785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041812, 0.214428, -0.975844,
		-0.384304, -0.898106, -0.213813,
		-0.922259, 0.383961, 0.044854,
		32.451637, 31.053307, 32.987240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445461, 30.215662, 33.332237>,  <33.097218, 30.784534, 32.955845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445461, 30.215662, 33.332237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716980, 30.506428, 33.373871>,  <33.879890, 30.680887, 33.398853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716980, 30.506428, 33.373871>,  <33.445461, 30.215662, 33.332237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716980, 30.506428, 33.373871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611174, 0.480674, 0.628823,
		0.407067, -0.490459, 0.770550,
		0.678795, 0.726913, 0.104089,
		33.920620, 30.724503, 33.405098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222294, 29.549171, 33.065365>,  <33.445461, 30.215662, 33.332237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222294, 29.549171, 33.065365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254509, 29.175035, 32.927582>,  <33.273838, 28.950554, 32.844913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254509, 29.175035, 32.927582>,  <33.222294, 29.549171, 33.065365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254509, 29.175035, 32.927582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995070, 0.055377, 0.082279,
		-0.057884, -0.349383, 0.935190,
		0.080534, -0.935342, -0.344455,
		33.278667, 28.894432, 32.824245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678284, 29.144287, 33.378723>,  <33.222294, 29.549171, 33.065365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678284, 29.144287, 33.378723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692127, 28.924711, 33.044666>,  <33.700432, 28.792965, 32.844231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692127, 28.924711, 33.044666>,  <33.678284, 29.144287, 33.378723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692127, 28.924711, 33.044666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914187, -0.320260, 0.248387,
		-0.403813, -0.772074, 0.490751,
		0.034606, -0.548940, -0.835145,
		33.702507, 28.760029, 32.794125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919758, 28.391439, 33.452610>,  <33.678284, 29.144287, 33.378723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919758, 28.391439, 33.452610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018673, 28.544724, 33.096634>,  <34.078022, 28.636694, 32.883049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018673, 28.544724, 33.096634>,  <33.919758, 28.391439, 33.452610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018673, 28.544724, 33.096634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968502, -0.125445, 0.215099,
		-0.029211, -0.915102, -0.402163,
		0.247287, 0.383212, -0.889942,
		34.092857, 28.659687, 32.829651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668072, 28.316568, 33.164268>,  <33.919758, 28.391439, 33.452610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668072, 28.316568, 33.164268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030613, 28.483513, 33.137920>,  <35.248138, 28.583679, 33.122112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030613, 28.483513, 33.137920>,  <34.668072, 28.316568, 33.164268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030613, 28.483513, 33.137920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133238, -0.134359, 0.981935,
		0.400971, -0.898753, -0.177384,
		0.906350, 0.417361, -0.065874,
		35.302517, 28.608721, 33.118156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965752, 27.936922, 33.582619>,  <34.668072, 28.316568, 33.164268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965752, 27.936922, 33.582619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230625, 28.236301, 33.597256>,  <35.389549, 28.415930, 33.606037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230625, 28.236301, 33.597256>,  <34.965752, 27.936922, 33.582619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230625, 28.236301, 33.597256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104716, -0.140778, 0.984488,
		0.741990, -0.648079, -0.171596,
		0.662183, 0.748448, 0.036592,
		35.429279, 28.460836, 33.608234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615154, 27.703655, 33.896049>,  <34.965752, 27.936922, 33.582619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615154, 27.703655, 33.896049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621574, 28.102060, 33.931160>,  <35.625427, 28.341103, 33.952225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621574, 28.102060, 33.931160>,  <35.615154, 27.703655, 33.896049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621574, 28.102060, 33.931160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127064, -0.089106, 0.987884,
		0.991765, -0.004706, -0.127988,
		0.016053, 0.996011, 0.087775,
		35.626389, 28.400864, 33.957493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082645, 27.812027, 34.417061>,  <35.615154, 27.703655, 33.896049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082645, 27.812027, 34.417061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894459, 28.164280, 34.394615>,  <35.781548, 28.375631, 34.381145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894459, 28.164280, 34.394615>,  <36.082645, 27.812027, 34.417061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894459, 28.164280, 34.394615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079893, 0.105842, 0.991168,
		0.878793, 0.461829, -0.120152,
		-0.470467, 0.880631, -0.056116,
		35.753319, 28.428469, 34.377781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435596, 28.319881, 34.833981>,  <36.082645, 27.812027, 34.417061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435596, 28.319881, 34.833981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057533, 28.450214, 34.824993>,  <35.830696, 28.528414, 34.819599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057533, 28.450214, 34.824993>,  <36.435596, 28.319881, 34.833981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057533, 28.450214, 34.824993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022808, 0.002790, 0.999736,
		0.325811, 0.945423, 0.004795,
		-0.945160, 0.325835, -0.022472,
		35.773987, 28.547964, 34.818253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311253, 28.864410, 35.389263>,  <36.435596, 28.319881, 34.833981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311253, 28.864410, 35.389263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938042, 28.747066, 35.305931>,  <35.714115, 28.676661, 35.255932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938042, 28.747066, 35.305931>,  <36.311253, 28.864410, 35.389263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938042, 28.747066, 35.305931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242201, 0.083898, 0.966592,
		-0.266081, 0.952314, -0.149331,
		-0.933027, -0.293360, -0.208328,
		35.658134, 28.659060, 35.243431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806587, 29.281311, 35.797123>,  <36.311253, 28.864410, 35.389263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806587, 29.281311, 35.797123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606640, 28.945826, 35.710690>,  <35.486671, 28.744534, 35.658829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606640, 28.945826, 35.710690>,  <35.806587, 29.281311, 35.797123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606640, 28.945826, 35.710690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239148, -0.106130, 0.965166,
		-0.832432, 0.534129, -0.147527,
		-0.499866, -0.838715, -0.216082,
		35.456680, 28.694210, 35.645866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196400, 29.304302, 36.145943>,  <35.806587, 29.281311, 35.797123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196400, 29.304302, 36.145943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267815, 28.917797, 36.071686>,  <35.310665, 28.685894, 36.027134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267815, 28.917797, 36.071686>,  <35.196400, 29.304302, 36.145943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267815, 28.917797, 36.071686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076650, -0.201755, 0.976432,
		-0.980943, -0.160103, -0.110085,
		0.178540, -0.966262, -0.185639,
		35.321377, 28.627918, 36.015995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737461, 28.926832, 36.576809>,  <35.196400, 29.304302, 36.145943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737461, 28.926832, 36.576809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025593, 28.663399, 36.489735>,  <35.198471, 28.505339, 36.437489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025593, 28.663399, 36.489735>,  <34.737461, 28.926832, 36.576809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025593, 28.663399, 36.489735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017060, -0.330561, 0.943630,
		-0.693418, -0.676015, -0.249350,
		0.720333, -0.658584, -0.217684,
		35.241692, 28.465824, 36.424431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463753, 28.326050, 36.736969>,  <34.737461, 28.926832, 36.576809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463753, 28.326050, 36.736969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857925, 28.260202, 36.754101>,  <35.094429, 28.220694, 36.764381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857925, 28.260202, 36.754101>,  <34.463753, 28.326050, 36.736969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857925, 28.260202, 36.754101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125757, -0.535531, 0.835100,
		-0.114535, -0.828316, -0.548429,
		0.985427, -0.164617, 0.042830,
		35.153553, 28.210817, 36.766949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433193, 27.682722, 37.020332>,  <34.463753, 28.326050, 36.736969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433193, 27.682722, 37.020332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802090, 27.827494, 37.074703>,  <35.023430, 27.914356, 37.107327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802090, 27.827494, 37.074703>,  <34.433193, 27.682722, 37.020332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802090, 27.827494, 37.074703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087862, -0.538593, 0.837973,
		0.376494, -0.760872, -0.528513,
		0.922243, 0.361928, 0.135925,
		35.078762, 27.936071, 37.115482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785351, 27.097078, 37.226131>,  <34.433193, 27.682722, 37.020332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785351, 27.097078, 37.226131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016792, 27.406992, 37.328056>,  <35.155659, 27.592939, 37.389214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016792, 27.406992, 37.328056>,  <34.785351, 27.097078, 37.226131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016792, 27.406992, 37.328056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349479, -0.517804, 0.780861,
		0.736942, -0.362756, -0.570373,
		0.578603, 0.774782, 0.254816,
		35.190372, 27.639427, 37.404503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336201, 26.755865, 37.669037>,  <34.785351, 27.097078, 37.226131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336201, 26.755865, 37.669037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401608, 27.140602, 37.756779>,  <35.440853, 27.371445, 37.809425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401608, 27.140602, 37.756779>,  <35.336201, 26.755865, 37.669037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401608, 27.140602, 37.756779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195108, -0.249486, 0.948520,
		0.967055, -0.112301, -0.228459,
		0.163517, 0.961845, 0.219356,
		35.450661, 27.429155, 37.822586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995392, 26.767376, 38.003796>,  <35.336201, 26.755865, 37.669037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995392, 26.767376, 38.003796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843693, 27.108839, 38.146591>,  <35.752674, 27.313717, 38.232269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843693, 27.108839, 38.146591>,  <35.995392, 26.767376, 38.003796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843693, 27.108839, 38.146591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373616, -0.211679, 0.903107,
		0.846512, 0.475877, -0.238662,
		-0.379248, 0.853659, 0.356984,
		35.729919, 27.364937, 38.253685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536713, 27.121185, 38.372047>,  <35.995392, 26.767376, 38.003796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536713, 27.121185, 38.372047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204739, 27.305141, 38.498356>,  <36.005554, 27.415516, 38.574142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204739, 27.305141, 38.498356>,  <36.536713, 27.121185, 38.372047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204739, 27.305141, 38.498356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358517, 0.006028, 0.933504,
		0.427406, 0.887955, -0.169882,
		-0.829934, 0.459891, 0.315770,
		35.955757, 27.443110, 38.593086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743862, 27.594667, 38.811478>,  <36.536713, 27.121185, 38.372047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743862, 27.594667, 38.811478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366787, 27.520786, 38.922630>,  <36.140541, 27.476458, 38.989323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366787, 27.520786, 38.922630>,  <36.743862, 27.594667, 38.811478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366787, 27.520786, 38.922630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290970, -0.047430, 0.955556,
		-0.163314, 0.981649, 0.098455,
		-0.942690, -0.184703, 0.277885,
		36.083981, 27.465376, 39.005997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629192, 28.005011, 39.447918>,  <36.743862, 27.594667, 38.811478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629192, 28.005011, 39.447918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353771, 27.714962, 39.451790>,  <36.188519, 27.540932, 39.454113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353771, 27.714962, 39.451790>,  <36.629192, 28.005011, 39.447918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353771, 27.714962, 39.451790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063484, -0.046979, 0.996877,
		-0.722403, 0.687015, 0.078381,
		-0.688552, -0.725123, 0.009676,
		36.147205, 27.497425, 39.454693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182617, 28.310177, 39.862831>,  <36.629192, 28.005011, 39.447918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182617, 28.310177, 39.862831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092987, 27.920355, 39.860542>,  <36.039207, 27.686462, 39.859169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092987, 27.920355, 39.860542>,  <36.182617, 28.310177, 39.862831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092987, 27.920355, 39.860542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042184, -0.015563, 0.998989,
		-0.973658, 0.223609, 0.044598,
		-0.224077, -0.974555, -0.005721,
		36.025764, 27.627989, 39.858826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564491, 28.113575, 40.371456>,  <36.182617, 28.310177, 39.862831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564491, 28.113575, 40.371456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779198, 27.780527, 40.316868>,  <35.908024, 27.580698, 40.284115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779198, 27.780527, 40.316868>,  <35.564491, 28.113575, 40.371456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779198, 27.780527, 40.316868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099183, -0.098355, 0.990196,
		-0.837880, -0.545041, 0.029788,
		0.536768, -0.832620, -0.136468,
		35.940228, 27.530741, 40.275928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243938, 27.622795, 40.932590>,  <35.564491, 28.113575, 40.371456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243938, 27.622795, 40.932590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606220, 27.472750, 40.853611>,  <35.823589, 27.382723, 40.806225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606220, 27.472750, 40.853611>,  <35.243938, 27.622795, 40.932590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606220, 27.472750, 40.853611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119476, -0.221003, 0.967927,
		-0.406717, -0.900249, -0.155347,
		0.905708, -0.375112, -0.197444,
		35.877934, 27.360216, 40.794376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337051, 26.909327, 41.325886>,  <35.243938, 27.622795, 40.932590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337051, 26.909327, 41.325886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714779, 27.006161, 41.236752>,  <35.941414, 27.064260, 41.183270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714779, 27.006161, 41.236752>,  <35.337051, 26.909327, 41.325886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714779, 27.006161, 41.236752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290879, -0.297664, 0.909277,
		0.153792, -0.923467, -0.351507,
		0.944319, 0.242085, -0.222839,
		35.998074, 27.078787, 41.169899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731998, 26.356842, 41.568321>,  <35.337051, 26.909327, 41.325886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731998, 26.356842, 41.568321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001423, 26.647114, 41.512173>,  <36.163078, 26.821278, 41.478481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.001423, 26.647114, 41.512173>,  <35.731998, 26.356842, 41.568321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001423, 26.647114, 41.512173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548006, -0.362855, 0.753674,
		0.495991, -0.584571, -0.642082,
		0.673559, 0.725681, -0.140376,
		36.203491, 26.864819, 41.470058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424347, 26.058109, 41.497063>,  <35.731998, 26.356842, 41.568321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424347, 26.058109, 41.497063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463238, 26.438894, 41.613213>,  <36.486572, 26.667364, 41.682903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463238, 26.438894, 41.613213>,  <36.424347, 26.058109, 41.497063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463238, 26.438894, 41.613213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519553, -0.297395, 0.801012,
		0.848888, 0.072983, -0.523509,
		0.097228, 0.951961, 0.290374,
		36.492405, 26.724483, 41.700325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906166, 25.998718, 41.972775>,  <36.424347, 26.058109, 41.497063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906166, 25.998718, 41.972775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741848, 26.354982, 42.050720>,  <36.643257, 26.568741, 42.097488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741848, 26.354982, 42.050720>,  <36.906166, 25.998718, 41.972775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741848, 26.354982, 42.050720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267384, -0.086645, 0.959687,
		0.871638, 0.446339, -0.202554,
		-0.410795, 0.890659, 0.194867,
		36.618610, 26.622181, 42.109180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381706, 26.332388, 42.314690>,  <36.906166, 25.998718, 41.972775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381706, 26.332388, 42.314690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030064, 26.491531, 42.419670>,  <36.819077, 26.587017, 42.482658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030064, 26.491531, 42.419670>,  <37.381706, 26.332388, 42.314690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030064, 26.491531, 42.419670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228712, -0.130978, 0.964643,
		0.418166, 0.908049, 0.024149,
		-0.879106, 0.397858, 0.262453,
		36.766331, 26.610889, 42.498405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592815, 26.706141, 42.833958>,  <37.381706, 26.332388, 42.314690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592815, 26.706141, 42.833958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194626, 26.699610, 42.871410>,  <36.955711, 26.695692, 42.893883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194626, 26.699610, 42.871410>,  <37.592815, 26.706141, 42.833958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194626, 26.699610, 42.871410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093166, -0.362318, 0.927387,
		0.018781, 0.931911, 0.362199,
		-0.995473, -0.016328, 0.093627,
		36.895985, 26.694712, 42.899498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607841, 27.305487, 42.700985>,  <37.592815, 26.706141, 42.833958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607841, 27.305487, 42.700985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923153, 27.489006, 42.864998>,  <38.112339, 27.599117, 42.963406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923153, 27.489006, 42.864998>,  <37.607841, 27.305487, 42.700985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923153, 27.489006, 42.864998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455862, 0.012151, -0.889968,
		-0.413297, 0.888458, -0.199570,
		0.788274, 0.458797, 0.410036,
		38.159634, 27.626646, 42.988010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711369, 27.926706, 42.478874>,  <37.607841, 27.305487, 42.700985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711369, 27.926706, 42.478874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068378, 27.776583, 42.578907>,  <38.282585, 27.686508, 42.638927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068378, 27.776583, 42.578907>,  <37.711369, 27.926706, 42.478874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068378, 27.776583, 42.578907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350612, 0.228649, -0.908180,
		0.283666, 0.898256, 0.335663,
		0.892527, -0.375307, 0.250079,
		38.336136, 27.663990, 42.653931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116428, 28.343636, 42.151833>,  <37.711369, 27.926706, 42.478874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116428, 28.343636, 42.151833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346779, 28.023512, 42.218605>,  <38.484989, 27.831438, 42.258671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346779, 28.023512, 42.218605>,  <38.116428, 28.343636, 42.151833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346779, 28.023512, 42.218605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381726, 0.082662, -0.920572,
		0.722943, 0.593862, 0.353102,
		0.575881, -0.800309, 0.166933,
		38.519543, 27.783419, 42.268684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825012, 28.512186, 41.931957>,  <38.116428, 28.343636, 42.151833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825012, 28.512186, 41.931957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814934, 28.112488, 41.920120>,  <38.808887, 27.872669, 41.913017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814934, 28.112488, 41.920120>,  <38.825012, 28.512186, 41.931957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814934, 28.112488, 41.920120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302138, 0.020607, -0.953042,
		0.952931, -0.032950, 0.301390,
		-0.025192, -0.999245, -0.029593,
		38.807377, 27.812714, 41.911243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575836, 28.296299, 41.592148>,  <38.825012, 28.512186, 41.931957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575836, 28.296299, 41.592148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288380, 28.020662, 41.554813>,  <39.115906, 27.855280, 41.532413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288380, 28.020662, 41.554813>,  <39.575836, 28.296299, 41.592148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288380, 28.020662, 41.554813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164044, -0.037567, -0.985737,
		0.675757, -0.723700, 0.140039,
		-0.718639, -0.689091, -0.093333,
		39.072788, 27.813934, 41.526814>
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
