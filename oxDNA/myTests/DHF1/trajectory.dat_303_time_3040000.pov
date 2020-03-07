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
	<3.221079, 1.570824, -1.185994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.615646, 1.507523, -1.168396>,  <3.852387, 1.469542, -1.157837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.615646, 1.507523, -1.168396>,  <3.221079, 1.570824, -1.185994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.615646, 1.507523, -1.168396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015949, 0.358866, 0.933253,
		-0.163480, -0.919875, 0.356516,
		0.986417, -0.158255, 0.043996,
		3.911572, 1.460046, -1.155197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.578483, 1.253983, -0.503790>,  <3.221079, 1.570824, -1.185994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.578483, 1.253983, -0.503790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.845116, 1.485367, -0.691856>,  <4.005095, 1.624197, -0.804696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.845116, 1.485367, -0.691856>,  <3.578483, 1.253983, -0.503790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.845116, 1.485367, -0.691856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185280, 0.482365, 0.856151,
		0.722040, -0.657806, 0.214358,
		0.666581, 0.578459, -0.470165,
		4.045090, 1.658904, -0.832906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.248325, 1.265029, -0.071044>,  <3.578483, 1.253983, -0.503790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.248325, 1.265029, -0.071044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.186405, 1.604431, -0.273460>,  <4.149253, 1.808072, -0.394910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.186405, 1.604431, -0.273460>,  <4.248325, 1.265029, -0.071044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.186405, 1.604431, -0.273460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289395, 0.528691, 0.797957,
		0.944610, -0.022923, -0.327394,
		-0.154799, 0.848505, -0.506041,
		4.139966, 1.858983, -0.425273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.744617, 1.750747, 0.028863>,  <4.248325, 1.265029, -0.071044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.744617, 1.750747, 0.028863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.436993, 1.989243, -0.063263>,  <4.252418, 2.132340, -0.118539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.436993, 1.989243, -0.063263>,  <4.744617, 1.750747, 0.028863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.436993, 1.989243, -0.063263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163057, 0.531421, 0.831267,
		0.618028, 0.601740, -0.505916,
		-0.769060, 0.596240, -0.230315,
		4.206275, 2.168114, -0.132357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.962116, 2.508569, 0.050747>,  <4.744617, 1.750747, 0.028863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.962116, 2.508569, 0.050747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.571487, 2.462708, 0.123589>,  <4.337110, 2.435191, 0.167293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.571487, 2.462708, 0.123589>,  <4.962116, 2.508569, 0.050747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.571487, 2.462708, 0.123589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079447, 0.594361, 0.800264,
		-0.199987, 0.795984, -0.571328,
		-0.976572, -0.114652, 0.182103,
		4.278516, 2.428312, 0.178219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.738705, 3.160209, 0.216819>,  <4.962116, 2.508569, 0.050747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.738705, 3.160209, 0.216819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.475231, 2.916382, 0.393257>,  <4.317147, 2.770086, 0.499120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.475231, 2.916382, 0.393257>,  <4.738705, 3.160209, 0.216819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.475231, 2.916382, 0.393257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070478, 0.533672, 0.842749,
		-0.749112, 0.586192, -0.308560,
		-0.658683, -0.609567, 0.441094,
		4.277626, 2.733512, 0.525585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.335511, 3.520892, 0.598987>,  <4.738705, 3.160209, 0.216819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.335511, 3.520892, 0.598987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.252594, 3.173065, 0.778267>,  <4.202844, 2.964369, 0.885835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.252594, 3.173065, 0.778267>,  <4.335511, 3.520892, 0.598987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.252594, 3.173065, 0.778267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051716, 0.467251, 0.882611,
		-0.976911, 0.159780, -0.141828,
		-0.207292, -0.869567, 0.448200,
		4.190406, 2.912195, 0.912727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.599812, 3.439321, 0.903027>,  <4.335511, 3.520892, 0.598987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.599812, 3.439321, 0.903027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.893097, 3.227570, 1.073746>,  <4.069068, 3.100519, 1.176177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.893097, 3.227570, 1.073746>,  <3.599812, 3.439321, 0.903027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.893097, 3.227570, 1.073746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152966, 0.483155, 0.862069,
		-0.662571, -0.697365, 0.273279,
		0.733213, -0.529379, 0.426798,
		4.113061, 3.068756, 1.201785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.811421, 3.557353, 2.652165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.167184, 3.407410, 2.756805>,  <4.380642, 3.317444, 2.819590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.167184, 3.407410, 2.756805>,  <3.811421, 3.557353, 2.652165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.167184, 3.407410, 2.756805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045432, -0.496964, -0.866581,
		0.454851, 0.782629, -0.424973,
		0.889408, -0.374858, 0.261601,
		4.434006, 3.294952, 2.835286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.365190, 3.803453, 2.190073>,  <3.811421, 3.557353, 2.652165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.365190, 3.803453, 2.190073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.393517, 3.441376, 2.357697>,  <4.410514, 3.224129, 2.458271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.393517, 3.441376, 2.357697>,  <4.365190, 3.803453, 2.190073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.393517, 3.441376, 2.357697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229089, -0.423644, -0.876381,
		0.970826, -0.033937, -0.237372,
		0.070820, -0.905193, 0.419060,
		4.414763, 3.169818, 2.483414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.853812, 3.441962, 1.862671>,  <4.365190, 3.803453, 2.190073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.853812, 3.441962, 1.862671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.597798, 3.177872, 2.019875>,  <4.444190, 3.019417, 2.114197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.597798, 3.177872, 2.019875>,  <4.853812, 3.441962, 1.862671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.597798, 3.177872, 2.019875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097695, -0.437419, -0.893935,
		0.762110, -0.610545, 0.215462,
		-0.640035, -0.660227, 0.393009,
		4.405788, 2.979804, 2.137777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.908763, 2.745779, 1.684521>,  <4.853812, 3.441962, 1.862671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.908763, 2.745779, 1.684521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.520782, 2.819458, 1.748093>,  <4.287992, 2.863665, 1.786235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.520782, 2.819458, 1.748093>,  <4.908763, 2.745779, 1.684521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.520782, 2.819458, 1.748093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217723, -0.365739, -0.904893,
		-0.108553, -0.912308, 0.394854,
		-0.969955, 0.184198, 0.158929,
		4.229795, 2.874717, 1.795771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.462453, 2.130232, 1.750965>,  <4.908763, 2.745779, 1.684521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.462453, 2.130232, 1.750965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.263972, 2.439331, 1.592651>,  <4.144884, 2.624791, 1.497663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.263972, 2.439331, 1.592651>,  <4.462453, 2.130232, 1.750965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.263972, 2.439331, 1.592651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005481, -0.458641, -0.888605,
		-0.868190, -0.438757, 0.231814,
		-0.496201, 0.772748, -0.395783,
		4.115112, 2.671155, 1.473916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.952721, 1.756371, 1.402831>,  <4.462453, 2.130232, 1.750965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.952721, 1.756371, 1.402831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.980994, 2.130524, 1.264229>,  <3.997958, 2.355015, 1.181068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.980994, 2.130524, 1.264229>,  <3.952721, 1.756371, 1.402831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.980994, 2.130524, 1.264229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255429, -0.318819, -0.912749,
		-0.964241, 0.153022, 0.216389,
		0.070682, 0.935381, -0.346504,
		4.002199, 2.411138, 1.160277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.411033, 1.980422, 1.081874>,  <3.952721, 1.756371, 1.402831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.411033, 1.980422, 1.081874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.689878, 2.204605, 0.903023>,  <3.857184, 2.339115, 0.795712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.689878, 2.204605, 0.903023>,  <3.411033, 1.980422, 1.081874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.689878, 2.204605, 0.903023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330106, -0.302703, -0.894092,
		-0.636448, 0.770881, -0.026007,
		0.697111, 0.560458, -0.447127,
		3.899011, 2.372743, 0.768885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.041878, 2.251499, 0.469947>,  <3.411033, 1.980422, 1.081874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.041878, 2.251499, 0.469947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.428441, 2.306885, 0.383339>,  <3.660379, 2.340117, 0.331374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.428441, 2.306885, 0.383339>,  <3.041878, 2.251499, 0.469947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.428441, 2.306885, 0.383339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197046, -0.141697, -0.970100,
		-0.165006, 0.980178, -0.109654,
		0.966409, 0.138465, -0.216521,
		3.718364, 2.348424, 0.318383>
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
