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
	<1.380417, 2.246505, 2.897043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.256699, 2.021965, 3.204086>,  <1.182468, 1.887241, 3.388312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.256699, 2.021965, 3.204086>,  <1.380417, 2.246505, 2.897043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.256699, 2.021965, 3.204086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668437, -0.445808, -0.595355,
		0.676408, -0.697239, -0.237340,
		-0.309296, -0.561350, 0.767608,
		1.163910, 1.853560, 3.434369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.477068, 1.653479, 2.665361>,  <1.380417, 2.246505, 2.897043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.477068, 1.653479, 2.665361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.199123, 1.608536, 2.949486>,  <1.032357, 1.581570, 3.119961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.199123, 1.608536, 2.949486>,  <1.477068, 1.653479, 2.665361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.199123, 1.608536, 2.949486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624166, -0.396360, -0.673287,
		0.357188, -0.911194, 0.205285,
		-0.694862, -0.112358, 0.710312,
		0.990665, 1.574828, 3.162579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.075377, 2.033664, 2.566937>,  <1.477068, 1.653479, 2.665361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.075377, 2.033664, 2.566937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.019707, 2.427345, 2.610703>,  <1.986304, 2.663554, 2.636962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.019707, 2.427345, 2.610703>,  <2.075377, 2.033664, 2.566937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.019707, 2.427345, 2.610703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594036, 0.171378, -0.785971,
		-0.792307, -0.044394, -0.608505,
		-0.139177, 0.984205, 0.109413,
		1.977954, 2.722607, 2.643526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.902672, 2.369376, 1.897704>,  <2.075377, 2.033664, 2.566937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.902672, 2.369376, 1.897704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.085346, 2.644699, 2.123154>,  <2.194951, 2.809893, 2.258423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.085346, 2.644699, 2.123154>,  <1.902672, 2.369376, 1.897704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.085346, 2.644699, 2.123154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645123, 0.180023, -0.742568,
		-0.612581, 0.702726, -0.361830,
		0.456685, 0.688308, 0.563623,
		2.222352, 2.851192, 2.292241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.022332, 2.924631, 1.495143>,  <1.902672, 2.369376, 1.897704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.022332, 2.924631, 1.495143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.299255, 2.955513, 1.782127>,  <2.465409, 2.974042, 1.954318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.299255, 2.955513, 1.782127>,  <2.022332, 2.924631, 1.495143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.299255, 2.955513, 1.782127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688853, 0.225422, -0.688960,
		-0.214923, 0.971197, 0.102878,
		0.692308, 0.077205, 0.717461,
		2.506948, 2.978674, 1.997366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.459653, 3.525764, 1.404778>,  <2.022332, 2.924631, 1.495143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.459653, 3.525764, 1.404778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.703739, 3.297234, 1.624313>,  <2.850191, 3.160115, 1.756035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.703739, 3.297234, 1.624313>,  <2.459653, 3.525764, 1.404778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.703739, 3.297234, 1.624313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744741, 0.177416, -0.643339,
		0.270183, 0.801318, 0.533751,
		0.610215, -0.571326, 0.548839,
		2.886804, 3.125836, 1.788965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.031266, 3.923310, 1.638342>,  <2.459653, 3.525764, 1.404778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.031266, 3.923310, 1.638342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.146469, 3.540344, 1.630226>,  <3.215591, 3.310565, 1.625356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.146469, 3.540344, 1.630226>,  <3.031266, 3.923310, 1.638342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.146469, 3.540344, 1.630226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811353, 0.255215, -0.525900,
		0.508682, 0.135000, 0.850304,
		0.288007, -0.957413, -0.020291,
		3.232871, 3.253120, 1.624139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.801762, 3.999082, 1.791845>,  <3.031266, 3.923310, 1.638342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.801762, 3.999082, 1.791845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.711246, 3.646744, 1.625519>,  <3.656937, 3.435341, 1.525723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.711246, 3.646744, 1.625519>,  <3.801762, 3.999082, 1.791845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.711246, 3.646744, 1.625519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862870, 0.016790, -0.505147,
		0.451938, -0.473104, 0.756257,
		-0.226289, -0.880846, -0.415816,
		3.643360, 3.382490, 1.500774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.150049, 3.855593, 0.297594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.279485, 3.478302, 0.327560>,  <4.357146, 3.251928, 0.345540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.279485, 3.478302, 0.327560>,  <4.150049, 3.855593, 0.297594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.279485, 3.478302, 0.327560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769987, -0.216485, 0.600213,
		-0.549919, -0.251907, -0.796324,
		0.323590, -0.943227, 0.074916,
		4.376562, 3.195334, 0.350035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.610757, 3.304278, 0.136009>,  <4.150049, 3.855593, 0.297594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.610757, 3.304278, 0.136009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.868279, 3.157402, 0.404541>,  <4.022793, 3.069276, 0.565660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.868279, 3.157402, 0.404541>,  <3.610757, 3.304278, 0.136009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.868279, 3.157402, 0.404541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741620, -0.083357, 0.665621,
		-0.188451, -0.926402, -0.325983,
		0.643806, -0.367193, 0.671330,
		4.061421, 3.047245, 0.605940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.370089, 2.610148, 0.507636>,  <3.610757, 3.304278, 0.136009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.370089, 2.610148, 0.507636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.611619, 2.782784, 0.775703>,  <3.756537, 2.886365, 0.936544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.611619, 2.782784, 0.775703>,  <3.370089, 2.610148, 0.507636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.611619, 2.782784, 0.775703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594248, -0.316633, 0.739333,
		0.531285, -0.844674, 0.065279,
		0.603826, 0.431588, 0.670168,
		3.792767, 2.912260, 0.976754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.352425, 2.123785, 1.074021>,  <3.370089, 2.610148, 0.507636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.352425, 2.123785, 1.074021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.473437, 2.482033, 1.204460>,  <3.546045, 2.696981, 1.282724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.473437, 2.482033, 1.204460>,  <3.352425, 2.123785, 1.074021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.473437, 2.482033, 1.204460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596199, -0.089119, 0.797875,
		0.743654, -0.435802, 0.507006,
		0.302532, 0.895619, 0.326099,
		3.564197, 2.750719, 1.302290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.682200, 2.054893, 1.789448>,  <3.352425, 2.123785, 1.074021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.682200, 2.054893, 1.789448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.538468, 2.422501, 1.724594>,  <3.452229, 2.643065, 1.685682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.538468, 2.422501, 1.724594>,  <3.682200, 2.054893, 1.789448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.538468, 2.422501, 1.724594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659633, -0.127229, 0.740742,
		0.660127, 0.373118, 0.651932,
		-0.359329, 0.919019, -0.162134,
		3.430670, 2.698206, 1.675954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.702365, 2.378159, 2.410604>,  <3.682200, 2.054893, 1.789448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.702365, 2.378159, 2.410604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.424245, 2.579636, 2.205528>,  <3.257373, 2.700522, 2.082483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.424245, 2.579636, 2.205528>,  <3.702365, 2.378159, 2.410604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.424245, 2.579636, 2.205528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595811, -0.005008, 0.803109,
		0.401952, 0.863869, 0.303587,
		-0.695301, 0.503691, -0.512690,
		3.215655, 2.730743, 2.051721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.414418, 2.864380, 2.908830>,  <3.702365, 2.378159, 2.410604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.414418, 2.864380, 2.908830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.147685, 2.872101, 2.610847>,  <2.987645, 2.876733, 2.432058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.147685, 2.872101, 2.610847>,  <3.414418, 2.864380, 2.908830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.147685, 2.872101, 2.610847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726913, 0.203295, 0.655949,
		0.164107, 0.978927, -0.121532,
		-0.666833, 0.019302, -0.744957,
		2.947635, 2.877892, 2.387360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.113305, 3.523930, 2.918136>,  <3.414418, 2.864380, 2.908830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.113305, 3.523930, 2.918136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.828725, 3.288048, 2.765251>,  <2.657977, 3.146518, 2.673520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.828725, 3.288048, 2.765251>,  <3.113305, 3.523930, 2.918136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.828725, 3.288048, 2.765251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658330, 0.369015, 0.656071,
		-0.245846, 0.718384, -0.650757,
		-0.711450, -0.589705, -0.382213,
		2.615290, 3.111136, 2.650587>
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
