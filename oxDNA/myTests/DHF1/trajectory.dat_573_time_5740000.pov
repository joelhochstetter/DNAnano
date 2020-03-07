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
	<0.574705, 0.842773, 2.338640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.619751, 1.164267, 2.572334>,  <0.646779, 1.357163, 2.712551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.619751, 1.164267, 2.572334>,  <0.574705, 0.842773, 2.338640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.619751, 1.164267, 2.572334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716450, -0.473087, 0.512726,
		0.688489, 0.360834, -0.629111,
		0.112615, 0.803733, 0.584235,
		0.653535, 1.405387, 2.747605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.307926, 1.013990, 2.378292>,  <0.574705, 0.842773, 2.338640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.307926, 1.013990, 2.378292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.150055, 1.191294, 2.700224>,  <1.055332, 1.297676, 2.893383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.150055, 1.191294, 2.700224>,  <1.307926, 1.013990, 2.378292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.150055, 1.191294, 2.700224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859895, -0.130445, 0.493523,
		0.323746, 0.886851, -0.329673,
		-0.394677, 0.443260, 0.804829,
		1.031652, 1.324272, 2.941673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.735496, 1.544984, 2.614166>,  <1.307926, 1.013990, 2.378292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.735496, 1.544984, 2.614166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.524845, 1.444239, 2.938938>,  <1.398455, 1.383792, 3.133801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.524845, 1.444239, 2.938938>,  <1.735496, 1.544984, 2.614166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.524845, 1.444239, 2.938938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849627, -0.124203, 0.512550,
		-0.028248, 0.959760, 0.279398,
		-0.526627, -0.251863, 0.811930,
		1.366857, 1.368680, 3.182517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.048575, 1.929737, 3.191953>,  <1.735496, 1.544984, 2.614166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.048575, 1.929737, 3.191953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.868389, 1.602947, 3.335971>,  <1.760278, 1.406873, 3.422382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.868389, 1.602947, 3.335971>,  <2.048575, 1.929737, 3.191953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.868389, 1.602947, 3.335971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688751, -0.061402, 0.722393,
		-0.568070, 0.573394, 0.590352,
		-0.450465, -0.816975, 0.360045,
		1.733250, 1.357855, 3.443985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.088184, 1.969656, 3.902859>,  <2.048575, 1.929737, 3.191953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.088184, 1.969656, 3.902859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.013279, 1.579079, 3.859978>,  <1.968336, 1.344732, 3.834249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.013279, 1.579079, 3.859978>,  <2.088184, 1.969656, 3.902859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.013279, 1.579079, 3.859978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713743, -0.210233, 0.668111,
		-0.674910, 0.048596, 0.736298,
		-0.187262, -0.976443, -0.107204,
		1.957100, 1.286146, 3.827817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.001943, 1.678374, 4.577296>,  <2.088184, 1.969656, 3.902859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.001943, 1.678374, 4.577296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.096386, 1.361238, 4.352562>,  <2.153052, 1.170957, 4.217721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.096386, 1.361238, 4.352562>,  <2.001943, 1.678374, 4.577296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.096386, 1.361238, 4.352562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689096, -0.271041, 0.672073,
		-0.685127, -0.545840, 0.482348,
		0.236108, -0.792840, -0.561834,
		2.167218, 1.123387, 4.184011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.872307, 1.158680, 5.036809>,  <2.001943, 1.678374, 4.577296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.872307, 1.158680, 5.036809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.122795, 1.024916, 4.755095>,  <2.273088, 0.944657, 4.586067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.122795, 1.024916, 4.755095>,  <1.872307, 1.158680, 5.036809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.122795, 1.024916, 4.755095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700975, -0.153944, 0.696373,
		-0.341296, -0.929769, 0.138011,
		0.626220, -0.334412, -0.704285,
		2.310661, 0.924592, 4.543810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.052970, 0.462623, 5.179482>,  <1.872307, 1.158680, 5.036809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.052970, 0.462623, 5.179482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.344643, 0.631598, 4.964134>,  <2.519646, 0.732982, 4.834926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.344643, 0.631598, 4.964134>,  <2.052970, 0.462623, 5.179482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.344643, 0.631598, 4.964134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654705, -0.201719, 0.728471,
		0.199134, -0.883661, -0.423662,
		0.729182, 0.422437, -0.538369,
		2.563397, 0.758328, 4.802624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.213664, 0.908014, 5.856437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.482407, 0.784325, 5.587219>,  <3.643652, 0.710111, 5.425688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.482407, 0.784325, 5.587219>,  <3.213664, 0.908014, 5.856437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.482407, 0.784325, 5.587219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600234, 0.305096, -0.739348,
		0.433968, 0.900720, 0.019374,
		0.671856, -0.309224, -0.673045,
		3.683964, 0.691557, 5.385306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.257832, 1.426730, 5.274026>,  <3.213664, 0.908014, 5.856437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.257832, 1.426730, 5.274026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.368530, 1.064487, 5.145472>,  <3.434949, 0.847142, 5.068338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.368530, 1.064487, 5.145472>,  <3.257832, 1.426730, 5.274026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.368530, 1.064487, 5.145472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598270, 0.099348, -0.795112,
		0.751987, 0.412320, -0.514303,
		0.276745, -0.905606, -0.321388,
		3.451554, 0.792806, 5.049055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.458517, 1.485684, 4.585004>,  <3.257832, 1.426730, 5.274026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.458517, 1.485684, 4.585004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.325386, 1.115528, 4.657534>,  <3.245507, 0.893434, 4.701052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.325386, 1.115528, 4.657534>,  <3.458517, 1.485684, 4.585004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.325386, 1.115528, 4.657534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670094, 0.096805, -0.735937,
		0.663476, -0.366445, -0.652318,
		-0.332828, -0.925390, 0.181324,
		3.225538, 0.837911, 4.711931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.436107, 1.134067, 3.952079>,  <3.458517, 1.485684, 4.585004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.436107, 1.134067, 3.952079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.161179, 0.994362, 4.206827>,  <2.996222, 0.910539, 4.359676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.161179, 0.994362, 4.206827>,  <3.436107, 1.134067, 3.952079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.161179, 0.994362, 4.206827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697585, 0.073081, -0.712765,
		0.202402, -0.934169, -0.293873,
		-0.687320, -0.349266, 0.636871,
		2.954983, 0.889583, 4.397889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.080218, 0.510873, 3.619593>,  <3.436107, 1.134067, 3.952079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.080218, 0.510873, 3.619593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.830948, 0.642384, 3.903440>,  <2.681386, 0.721290, 4.073749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.830948, 0.642384, 3.903440>,  <3.080218, 0.510873, 3.619593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.830948, 0.642384, 3.903440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778038, -0.168471, -0.605206,
		-0.079428, -0.929259, 0.360789,
		-0.623175, 0.328777, 0.709618,
		2.643995, 0.741016, 4.116326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.467186, 0.068300, 3.563924>,  <3.080218, 0.510873, 3.619593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.467186, 0.068300, 3.563924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.366417, 0.393028, 3.774630>,  <2.305955, 0.587865, 3.901053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.366417, 0.393028, 3.774630>,  <2.467186, 0.068300, 3.563924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.366417, 0.393028, 3.774630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817484, 0.112798, -0.564798,
		-0.517933, -0.572907, 0.635235,
		-0.251924, 0.811821, 0.526765,
		2.290840, 0.636575, 3.932659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.696451, 0.047550, 3.531215>,  <2.467186, 0.068300, 3.563924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.696451, 0.047550, 3.531215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.777489, 0.426712, 3.629547>,  <1.826111, 0.654209, 3.688546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.777489, 0.426712, 3.629547>,  <1.696451, 0.047550, 3.531215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.777489, 0.426712, 3.629547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808933, 0.303474, -0.503518,
		-0.551890, -0.096850, 0.828274,
		0.202593, 0.947905, 0.245830,
		1.838267, 0.711084, 3.703296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.017343, 0.349672, 3.751572>,  <1.696451, 0.047550, 3.531215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.017343, 0.349672, 3.751572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.279327, 0.623463, 3.623499>,  <1.436518, 0.787737, 3.546655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.279327, 0.623463, 3.623499>,  <1.017343, 0.349672, 3.751572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.279327, 0.623463, 3.623499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703935, 0.398583, -0.587884,
		-0.274774, 0.610429, 0.742883,
		0.654962, 0.684477, -0.320183,
		1.475816, 0.828806, 3.527444>
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
