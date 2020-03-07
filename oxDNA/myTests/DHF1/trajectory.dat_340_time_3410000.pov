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
	<2.092726, 2.300779, 4.676836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.776871, 2.055946, 4.693932>,  <1.587357, 1.909047, 4.704189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.776871, 2.055946, 4.693932>,  <2.092726, 2.300779, 4.676836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.776871, 2.055946, 4.693932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001895, -0.067222, -0.997736,
		0.613569, -0.787933, 0.051921,
		-0.789639, -0.612081, 0.042739,
		1.539979, 1.872322, 4.706753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.198265, 1.716617, 4.171560>,  <2.092726, 2.300779, 4.676836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.198265, 1.716617, 4.171560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.804802, 1.734825, 4.241241>,  <1.568724, 1.745750, 4.283050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.804802, 1.734825, 4.241241>,  <2.198265, 1.716617, 4.171560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.804802, 1.734825, 4.241241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180048, -0.242599, -0.953273,
		-0.001131, -0.969058, 0.246830,
		-0.983657, 0.045519, 0.174203,
		1.509705, 1.748481, 4.293502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.842441, 1.118278, 4.026744>,  <2.198265, 1.716617, 4.171560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.842441, 1.118278, 4.026744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.536541, 1.374466, 3.998581>,  <1.353001, 1.528179, 3.981683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.536541, 1.374466, 3.998581>,  <1.842441, 1.118278, 4.026744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.536541, 1.374466, 3.998581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286909, -0.436333, -0.852817,
		-0.576925, -0.631990, 0.517442,
		-0.764748, 0.640470, -0.070408,
		1.307116, 1.566607, 3.977459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.094366, 0.822191, 4.008318>,  <1.842441, 1.118278, 4.026744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.094366, 0.822191, 4.008318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.198277, 1.154228, 3.810951>,  <1.260623, 1.353451, 3.692531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.198277, 1.154228, 3.810951>,  <1.094366, 0.822191, 4.008318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.198277, 1.154228, 3.810951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021862, -0.505772, -0.862390,
		-0.965421, 0.234816, -0.113241,
		0.259777, 0.830094, -0.493417,
		1.276210, 1.403256, 3.662926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.576154, 1.005461, 3.504220>,  <1.094366, 0.822191, 4.008318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.576154, 1.005461, 3.504220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.946491, 1.121475, 3.407310>,  <1.168693, 1.191084, 3.349165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.946491, 1.121475, 3.407310>,  <0.576154, 1.005461, 3.504220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.946491, 1.121475, 3.407310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046984, -0.547773, -0.835307,
		-0.374979, 0.784745, -0.493524,
		0.925842, 0.290035, -0.242274,
		1.224244, 1.208486, 3.334628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.497209, 1.236858, 2.839581>,  <0.576154, 1.005461, 3.504220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.497209, 1.236858, 2.839581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.880154, 1.141068, 2.904213>,  <1.109921, 1.083593, 2.942992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.880154, 1.141068, 2.904213>,  <0.497209, 1.236858, 2.839581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.880154, 1.141068, 2.904213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012836, -0.523507, -0.851925,
		0.288604, 0.817675, -0.498112,
		0.957363, -0.239475, 0.161581,
		1.167362, 1.069225, 2.952687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.759360, 1.240165, 2.228226>,  <0.497209, 1.236858, 2.839581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.759360, 1.240165, 2.228226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.066360, 1.049759, 2.399971>,  <1.250561, 0.935515, 2.503018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.066360, 1.049759, 2.399971>,  <0.759360, 1.240165, 2.228226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.066360, 1.049759, 2.399971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114085, -0.557664, -0.822190,
		0.630813, 0.680016, -0.373702,
		0.767502, -0.476015, 0.429361,
		1.296611, 0.906955, 2.528779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.305428, 1.247918, 1.755291>,  <0.759360, 1.240165, 2.228226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.305428, 1.247918, 1.755291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.398567, 0.942795, 1.996590>,  <1.454451, 0.759721, 2.141369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.398567, 0.942795, 1.996590>,  <1.305428, 1.247918, 1.755291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.398567, 0.942795, 1.996590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077788, -0.603700, -0.793407,
		0.969397, 0.231669, -0.081233,
		0.232848, -0.762808, 0.603246,
		1.468422, 0.713952, 2.177563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.690344, 0.255062, 1.443199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.034327, 0.050919, 1.441917>,  <1.240716, -0.071567, 1.441148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.034327, 0.050919, 1.441917>,  <0.690344, 0.255062, 1.443199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.034327, 0.050919, 1.441917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009084, 0.009029, 0.999918,
		-0.510288, -0.859914, 0.012400,
		0.859956, -0.510358, -0.003204,
		1.292313, -0.102189, 1.440956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.691977, -0.297353, 1.968186>,  <0.690344, 0.255062, 1.443199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.691977, -0.297353, 1.968186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.047563, -0.128754, 1.896538>,  <1.260914, -0.027594, 1.853549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.047563, -0.128754, 1.896538>,  <0.691977, -0.297353, 1.968186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.047563, -0.128754, 1.896538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012968, 0.367785, 0.929820,
		0.457797, -0.828898, 0.321481,
		0.888962, 0.421500, -0.179120,
		1.314252, -0.002304, 1.842802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.144331, -0.451959, 2.420909>,  <0.691977, -0.297353, 1.968186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.144331, -0.451959, 2.420909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.307712, -0.112228, 2.287155>,  <1.405740, 0.091610, 2.206903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.307712, -0.112228, 2.287155>,  <1.144331, -0.451959, 2.420909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.307712, -0.112228, 2.287155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261542, 0.242079, 0.934341,
		0.874508, -0.469088, -0.123257,
		0.408450, 0.849326, -0.334386,
		1.430247, 0.142569, 2.186839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.720624, -0.370120, 2.879811>,  <1.144331, -0.451959, 2.420909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.720624, -0.370120, 2.879811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.629106, -0.036041, 2.679771>,  <1.574195, 0.164406, 2.559747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.629106, -0.036041, 2.679771>,  <1.720624, -0.370120, 2.879811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.629106, -0.036041, 2.679771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013968, 0.516490, 0.856179,
		0.973374, 0.188905, -0.129837,
		-0.228796, 0.835196, -0.500100,
		1.560467, 0.214518, 2.529742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.146960, 0.158764, 3.097082>,  <1.720624, -0.370120, 2.879811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.146960, 0.158764, 3.097082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.894552, 0.409302, 2.913994>,  <1.743107, 0.559624, 2.804141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.894552, 0.409302, 2.913994>,  <2.146960, 0.158764, 3.097082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.894552, 0.409302, 2.913994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205215, 0.703777, 0.680136,
		0.748131, 0.335249, -0.572633,
		-0.631021, 0.626343, -0.457719,
		1.705246, 0.597205, 2.776678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.487799, 0.786537, 3.108862>,  <2.146960, 0.158764, 3.097082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.487799, 0.786537, 3.108862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.093220, 0.843079, 3.075546>,  <1.856472, 0.877004, 3.055557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.093220, 0.843079, 3.075546>,  <2.487799, 0.786537, 3.108862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.093220, 0.843079, 3.075546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047555, 0.732199, 0.679428,
		0.157025, 0.666260, -0.729000,
		-0.986449, 0.141354, -0.083290,
		1.797285, 0.885485, 3.050559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.414993, 1.578948, 3.044132>,  <2.487799, 0.786537, 3.108862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.414993, 1.578948, 3.044132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.058910, 1.442520, 3.164932>,  <1.845261, 1.360664, 3.237412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.058910, 1.442520, 3.164932>,  <2.414993, 1.578948, 3.044132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.058910, 1.442520, 3.164932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122010, 0.817210, 0.563277,
		-0.438914, 0.464585, -0.769100,
		-0.890207, -0.341068, 0.302001,
		1.791848, 1.340200, 3.255533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.980933, 2.113817, 3.017259>,  <2.414993, 1.578948, 3.044132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.980933, 2.113817, 3.017259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.794591, 1.869370, 3.273232>,  <1.682786, 1.722701, 3.426815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.794591, 1.869370, 3.273232>,  <1.980933, 2.113817, 3.017259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.794591, 1.869370, 3.273232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235350, 0.782725, 0.576153,
		-0.852988, 0.117796, -0.508464,
		-0.465855, -0.611119, 0.639932,
		1.654834, 1.686034, 3.465211>
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
