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
	<4.591474, 3.978246, 4.194627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.466171, 3.763372, 4.507882>,  <4.390990, 3.634448, 4.695835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.466171, 3.763372, 4.507882>,  <4.591474, 3.978246, 4.194627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.466171, 3.763372, 4.507882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879215, -0.475750, 0.025352,
		0.358958, 0.696488, 0.621332,
		-0.313256, -0.537184, 0.783137,
		4.372194, 3.602217, 4.742823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.231974, 4.036912, 3.551439>,  <4.591474, 3.978246, 4.194627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.231974, 4.036912, 3.551439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.508200, 4.008358, 3.263543>,  <4.673935, 3.991225, 3.090806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.508200, 4.008358, 3.263543>,  <4.231974, 4.036912, 3.551439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.508200, 4.008358, 3.263543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719732, -0.166150, -0.674077,
		-0.071465, 0.983513, -0.166115,
		0.690564, -0.071386, -0.719740,
		4.715369, 3.986942, 3.047621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.030136, 4.352365, 2.924538>,  <4.231974, 4.036912, 3.551439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.030136, 4.352365, 2.924538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.301323, 4.082619, 2.807513>,  <4.464035, 3.920771, 2.737298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.301323, 4.082619, 2.807513>,  <4.030136, 4.352365, 2.924538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.301323, 4.082619, 2.807513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641367, -0.348192, -0.683674,
		0.359178, 0.651149, -0.668578,
		0.677967, -0.674364, -0.292563,
		4.504713, 3.880309, 2.719744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.282754, 4.407552, 2.160652>,  <4.030136, 4.352365, 2.924538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.282754, 4.407552, 2.160652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.281240, 4.038448, 2.314795>,  <4.280332, 3.816986, 2.407282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.281240, 4.038448, 2.314795>,  <4.282754, 4.407552, 2.160652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.281240, 4.038448, 2.314795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631527, -0.296585, -0.716387,
		0.775344, -0.246077, -0.581625,
		-0.003785, -0.922759, 0.385360,
		4.280105, 3.761621, 2.430403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.631047, 4.762649, 1.618691>,  <4.282754, 4.407552, 2.160652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.631047, 4.762649, 1.618691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.434196, 4.570852, 1.328064>,  <4.316086, 4.455774, 1.153688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.434196, 4.570852, 1.328064>,  <4.631047, 4.762649, 1.618691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.434196, 4.570852, 1.328064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378185, 0.633995, -0.674556,
		0.784084, -0.606744, -0.130669,
		-0.492126, -0.479491, -0.726566,
		4.286558, 4.427005, 1.110094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.070616, 4.480569, 1.049801>,  <4.631047, 4.762649, 1.618691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.070616, 4.480569, 1.049801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.705048, 4.599026, 0.938771>,  <4.485706, 4.670100, 0.872153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.705048, 4.599026, 0.938771>,  <5.070616, 4.480569, 1.049801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.705048, 4.599026, 0.938771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405616, 0.641204, -0.651408,
		-0.014927, -0.707925, -0.706130,
		-0.913922, 0.296141, -0.277575,
		4.430871, 4.687868, 0.855498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.906900, 4.292417, 0.314043>,  <5.070616, 4.480569, 1.049801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.906900, 4.292417, 0.314043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.736046, 4.626757, 0.451977>,  <4.633533, 4.827360, 0.534738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.736046, 4.626757, 0.451977>,  <4.906900, 4.292417, 0.314043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.736046, 4.626757, 0.451977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492687, 0.534939, -0.686367,
		-0.758165, -0.123276, -0.640304,
		-0.427137, 0.835849, 0.344836,
		4.607905, 4.877511, 0.555428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.561625, 4.706311, -0.254727>,  <4.906900, 4.292417, 0.314043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.561625, 4.706311, -0.254727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.729542, 4.914730, 0.042536>,  <4.830292, 5.039782, 0.220894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.729542, 4.914730, 0.042536>,  <4.561625, 4.706311, -0.254727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.729542, 4.914730, 0.042536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605565, 0.449113, -0.656954,
		-0.676066, 0.725814, -0.126994,
		0.419792, 0.521048, 0.743158,
		4.855479, 5.071044, 0.265483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.020780, 2.429054, 4.272511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.247458, 2.623554, 4.006454>,  <3.383464, 2.740254, 3.846819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.247458, 2.623554, 4.006454>,  <3.020780, 2.429054, 4.272511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.247458, 2.623554, 4.006454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504214, -0.433804, -0.746714,
		-0.651633, 0.758534, -0.000659,
		0.566694, 0.486251, -0.665145,
		3.417466, 2.769430, 3.806910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.647229, 2.440417, 3.674853>,  <3.020780, 2.429054, 4.272511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.647229, 2.440417, 3.674853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.004799, 2.476896, 3.499317>,  <3.219341, 2.498784, 3.393995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.004799, 2.476896, 3.499317>,  <2.647229, 2.440417, 3.674853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.004799, 2.476896, 3.499317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367653, -0.410840, -0.834291,
		-0.256379, 0.907135, -0.333731,
		0.893925, 0.091197, -0.438841,
		3.272976, 2.504256, 3.367664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.460406, 2.449120, 2.946591>,  <2.647229, 2.440417, 3.674853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.460406, 2.449120, 2.946591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.855883, 2.412979, 2.898718>,  <3.093169, 2.391294, 2.869995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.855883, 2.412979, 2.898718>,  <2.460406, 2.449120, 2.946591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.855883, 2.412979, 2.898718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140016, -0.270453, -0.952497,
		0.053692, 0.958484, -0.280045,
		0.988692, -0.090352, -0.119682,
		3.152490, 2.385874, 2.862814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.727875, 2.889296, 2.470580>,  <2.460406, 2.449120, 2.946591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.727875, 2.889296, 2.470580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.968546, 2.570078, 2.457257>,  <3.112949, 2.378547, 2.449263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.968546, 2.570078, 2.457257>,  <2.727875, 2.889296, 2.470580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.968546, 2.570078, 2.457257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150033, -0.071961, -0.986059,
		0.784521, 0.598287, -0.163031,
		0.601678, -0.798044, -0.033308,
		3.149049, 2.330665, 2.447264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.450702, 2.900010, 2.078006>,  <2.727875, 2.889296, 2.470580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.450702, 2.900010, 2.078006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.309377, 2.525946, 2.088156>,  <3.224582, 2.301507, 2.094246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.309377, 2.525946, 2.088156>,  <3.450702, 2.900010, 2.078006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.309377, 2.525946, 2.088156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082733, -0.058251, -0.994868,
		0.931840, -0.349400, 0.097950,
		-0.353313, -0.935161, 0.025374,
		3.203383, 2.245397, 2.095768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.850527, 2.343186, 1.808668>,  <3.450702, 2.900010, 2.078006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.850527, 2.343186, 1.808668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.459058, 2.275877, 1.761538>,  <3.224176, 2.235491, 1.733259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.459058, 2.275877, 1.761538>,  <3.850527, 2.343186, 1.808668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.459058, 2.275877, 1.761538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116780, 0.016135, -0.993027,
		0.169001, -0.985608, 0.003860,
		-0.978673, -0.168273, -0.117826,
		3.165456, 2.225395, 1.726190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.757634, 1.709315, 1.414991>,  <3.850527, 2.343186, 1.808668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.757634, 1.709315, 1.414991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.436294, 1.941816, 1.363190>,  <3.243489, 2.081317, 1.332109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.436294, 1.941816, 1.363190>,  <3.757634, 1.709315, 1.414991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.436294, 1.941816, 1.363190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182531, 0.033345, -0.982634,
		-0.566841, -0.813040, -0.132884,
		-0.803352, 0.581252, -0.129503,
		3.195288, 2.116192, 1.324339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.280440, 1.409193, 0.918924>,  <3.757634, 1.709315, 1.414991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.280440, 1.409193, 0.918924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.337082, 1.805162, 0.919306>,  <3.371067, 2.042744, 0.919536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.337082, 1.805162, 0.919306>,  <3.280440, 1.409193, 0.918924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.337082, 1.805162, 0.919306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319805, -0.044833, -0.946422,
		-0.936842, 0.134324, -0.322931,
		0.141606, 0.989923, 0.000956,
		3.379564, 2.102139, 0.919593>
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
