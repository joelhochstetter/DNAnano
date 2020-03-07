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
	<1.863906, 3.660543, -0.737742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.622925, 3.639908, -0.419147>,  <1.478336, 3.627527, -0.227991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.622925, 3.639908, -0.419147>,  <1.863906, 3.660543, -0.737742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.622925, 3.639908, -0.419147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540306, -0.760855, 0.359400,
		0.587470, 0.646868, 0.486252,
		-0.602452, -0.051588, 0.796486,
		1.442189, 3.624431, -0.180202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.308445, 3.636499, -0.069503>,  <1.863906, 3.660543, -0.737742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.308445, 3.636499, -0.069503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.951172, 3.456749, -0.076275>,  <1.736808, 3.348899, -0.080338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.951172, 3.456749, -0.076275>,  <2.308445, 3.636499, -0.069503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.951172, 3.456749, -0.076275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401576, -0.813988, 0.419714,
		-0.202390, 0.368082, 0.907499,
		-0.893183, -0.449375, -0.016930,
		1.683217, 3.321936, -0.081354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.147068, 3.526598, 0.611887>,  <2.308445, 3.636499, -0.069503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.147068, 3.526598, 0.611887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.973808, 3.267868, 0.360809>,  <1.869852, 3.112630, 0.210163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.973808, 3.267868, 0.360809>,  <2.147068, 3.526598, 0.611887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.973808, 3.267868, 0.360809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408197, -0.761679, 0.503210,
		-0.803589, -0.038257, 0.593953,
		-0.433150, -0.646824, -0.627693,
		1.843863, 3.073821, 0.172501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.743964, 3.095331, 1.045430>,  <2.147068, 3.526598, 0.611887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.743964, 3.095331, 1.045430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.870552, 2.918716, 0.709599>,  <1.946505, 2.812748, 0.508100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.870552, 2.918716, 0.709599>,  <1.743964, 3.095331, 1.045430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.870552, 2.918716, 0.709599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459239, -0.703123, 0.542879,
		-0.830028, -0.557372, -0.019746,
		0.316469, -0.441537, -0.839579,
		1.965493, 2.786255, 0.457725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.585635, 2.349082, 1.044343>,  <1.743964, 3.095331, 1.045430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.585635, 2.349082, 1.044343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.926895, 2.437988, 0.855564>,  <2.131651, 2.491332, 0.742297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.926895, 2.437988, 0.855564>,  <1.585635, 2.349082, 1.044343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.926895, 2.437988, 0.855564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488875, -0.656344, 0.574643,
		-0.182037, -0.720979, -0.668619,
		0.853150, 0.222265, -0.471947,
		2.182840, 2.504668, 0.713980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.821329, 1.759422, 0.859841>,  <1.585635, 2.349082, 1.044343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.821329, 1.759422, 0.859841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.147217, 1.990997, 0.872883>,  <2.342749, 2.129943, 0.880708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.147217, 1.990997, 0.872883>,  <1.821329, 1.759422, 0.859841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.147217, 1.990997, 0.872883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469158, -0.691184, 0.549687,
		0.340770, -0.432544, -0.834734,
		0.814719, 0.578939, 0.032604,
		2.391633, 2.164679, 0.882664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.322913, 1.304478, 0.588435>,  <1.821329, 1.759422, 0.859841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.322913, 1.304478, 0.588435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.461807, 1.602661, 0.816021>,  <2.545144, 1.781571, 0.952572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.461807, 1.602661, 0.816021>,  <2.322913, 1.304478, 0.588435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.461807, 1.602661, 0.816021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504388, -0.659945, 0.556834,
		0.790582, 0.093626, -0.605157,
		0.347236, 0.745457, 0.568965,
		2.565978, 1.826298, 0.986710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.107912, 1.222856, 0.735261>,  <2.322913, 1.304478, 0.588435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.107912, 1.222856, 0.735261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.909126, 1.430740, 1.013233>,  <2.789855, 1.555471, 1.180016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.909126, 1.430740, 1.013233>,  <3.107912, 1.222856, 0.735261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.909126, 1.430740, 1.013233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333083, -0.625236, 0.705787,
		0.801300, 0.582220, 0.137613,
		-0.496964, 0.519711, 0.694930,
		2.760037, 1.586654, 1.221712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.314271, 1.087085, 2.513062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.180450, 1.375244, 2.756077>,  <4.100158, 1.548140, 2.901886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.180450, 1.375244, 2.756077>,  <4.314271, 1.087085, 2.513062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.180450, 1.375244, 2.756077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632914, 0.305885, -0.711235,
		-0.698208, -0.622464, 0.353615,
		-0.334553, 0.720398, 0.607538,
		4.080085, 1.591363, 2.938338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.502319, 1.100371, 2.730797>,  <4.314271, 1.087085, 2.513062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.502319, 1.100371, 2.730797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.660576, 1.465363, 2.689129>,  <3.755530, 1.684357, 2.664128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.660576, 1.465363, 2.689129>,  <3.502319, 1.100371, 2.730797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.660576, 1.465363, 2.689129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679623, 0.214598, -0.701470,
		-0.617721, 0.348327, 0.705045,
		0.395642, 0.912478, -0.104170,
		3.779269, 1.739106, 2.657878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.909069, 1.557300, 2.568820>,  <3.502319, 1.100371, 2.730797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.909069, 1.557300, 2.568820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.235447, 1.736191, 2.422276>,  <3.431274, 1.843525, 2.334348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.235447, 1.736191, 2.422276>,  <2.909069, 1.557300, 2.568820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.235447, 1.736191, 2.422276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513171, 0.268430, -0.815230,
		-0.266251, 0.853190, 0.448529,
		0.815945, 0.447228, -0.366363,
		3.480230, 1.870359, 2.312367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.640111, 2.087028, 2.370394>,  <2.909069, 1.557300, 2.568820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.640111, 2.087028, 2.370394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.970829, 2.024368, 2.154293>,  <3.169260, 1.986773, 2.024632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.970829, 2.024368, 2.154293>,  <2.640111, 2.087028, 2.370394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.970829, 2.024368, 2.154293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519953, 0.153616, -0.840268,
		0.214618, 0.975635, 0.045559,
		0.826794, -0.156648, -0.540253,
		3.218867, 1.977374, 1.992217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.722669, 2.724738, 1.880882>,  <2.640111, 2.087028, 2.370394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.722669, 2.724738, 1.880882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.886921, 2.397720, 1.719387>,  <2.985472, 2.201509, 1.622490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.886921, 2.397720, 1.719387>,  <2.722669, 2.724738, 1.880882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.886921, 2.397720, 1.719387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438107, 0.211422, -0.873706,
		0.799653, 0.535650, -0.271356,
		0.410630, -0.817545, -0.403736,
		3.010110, 2.152457, 1.598266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.344465, 2.799082, 1.534580>,  <2.722669, 2.724738, 1.880882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.344465, 2.799082, 1.534580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.116219, 2.510254, 1.378113>,  <2.979271, 2.336957, 1.284233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.116219, 2.510254, 1.378113>,  <3.344465, 2.799082, 1.534580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.116219, 2.510254, 1.378113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372145, 0.651974, -0.660634,
		0.732055, -0.231398, -0.640742,
		-0.570617, -0.722070, -0.391168,
		2.945034, 2.293633, 1.260762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.474439, 2.916514, 0.861009>,  <3.344465, 2.799082, 1.534580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.474439, 2.916514, 0.861009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.140385, 2.696503, 0.859337>,  <2.939952, 2.564496, 0.858334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.140385, 2.696503, 0.859337>,  <3.474439, 2.916514, 0.861009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.140385, 2.696503, 0.859337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292141, 0.449985, -0.843900,
		0.466041, -0.703556, -0.536484,
		-0.835141, -0.550021, -0.004174,
		2.889844, 2.531494, 0.858083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.300681, 2.852264, 0.124230>,  <3.474439, 2.916514, 0.861009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.300681, 2.852264, 0.124230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.973213, 2.770477, 0.338882>,  <2.776732, 2.721405, 0.467674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.973213, 2.770477, 0.338882>,  <3.300681, 2.852264, 0.124230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.973213, 2.770477, 0.338882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572814, 0.357142, -0.737790,
		-0.040800, -0.911396, -0.409502,
		-0.818669, -0.204466, 0.536632,
		2.727612, 2.709137, 0.499872>
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
