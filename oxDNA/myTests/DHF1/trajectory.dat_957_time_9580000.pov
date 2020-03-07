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
	<0.313836, 3.716465, 4.667437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.280182, 4.088308, 4.523911>,  <0.259990, 4.311414, 4.437795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.280182, 4.088308, 4.523911>,  <0.313836, 3.716465, 4.667437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.280182, 4.088308, 4.523911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517231, -0.267041, -0.813118,
		-0.851700, -0.254002, -0.458355,
		-0.084134, 0.929609, -0.358817,
		0.254942, 4.367191, 4.416265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.109114, 3.593678, 4.024017>,  <0.313836, 3.716465, 4.667437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.109114, 3.593678, 4.024017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.262390, 3.963097, 4.030060>,  <0.354356, 4.184748, 4.033685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.262390, 3.963097, 4.030060>,  <0.109114, 3.593678, 4.024017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.262390, 3.963097, 4.030060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599515, -0.236238, -0.764704,
		-0.702671, 0.302083, -0.644204,
		0.383189, 0.923546, 0.015106,
		0.377347, 4.240160, 4.034592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.024773, 3.811767, 3.405979>,  <0.109114, 3.593678, 4.024017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.024773, 3.811767, 3.405979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.323227, 4.030121, 3.558449>,  <0.502299, 4.161133, 3.649930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.323227, 4.030121, 3.558449>,  <0.024773, 3.811767, 3.405979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.323227, 4.030121, 3.558449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491192, -0.064839, -0.868635,
		-0.449460, 0.835348, -0.316513,
		0.746134, 0.545885, 0.381174,
		0.547067, 4.193886, 3.672801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.099656, 4.423498, 2.909512>,  <0.024773, 3.811767, 3.405979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.099656, 4.423498, 2.909512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.432953, 4.326225, 3.108135>,  <0.632931, 4.267862, 3.227309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.432953, 4.326225, 3.108135>,  <0.099656, 4.423498, 2.909512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.432953, 4.326225, 3.108135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503245, -0.038439, -0.863288,
		0.229022, 0.969219, 0.090351,
		0.833243, -0.243181, 0.496558,
		0.682926, 4.253271, 3.257103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.636510, 4.777106, 2.597308>,  <0.099656, 4.423498, 2.909512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.636510, 4.777106, 2.597308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.820137, 4.468319, 2.773182>,  <0.930313, 4.283047, 2.878706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.820137, 4.468319, 2.773182>,  <0.636510, 4.777106, 2.597308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.820137, 4.468319, 2.773182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615221, -0.080800, -0.784203,
		0.640906, 0.630506, 0.437838,
		0.459067, -0.771967, 0.439686,
		0.957857, 4.236729, 2.905088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.289344, 4.844734, 2.324511>,  <0.636510, 4.777106, 2.597308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.289344, 4.844734, 2.324511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.308945, 4.488401, 2.505184>,  <1.320705, 4.274601, 2.613588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.308945, 4.488401, 2.505184>,  <1.289344, 4.844734, 2.324511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.308945, 4.488401, 2.505184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554159, -0.351988, -0.754329,
		0.830967, 0.287267, 0.476415,
		0.049001, -0.890832, 0.451682,
		1.323645, 4.221152, 2.640689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.999864, 4.637743, 2.386632>,  <1.289344, 4.844734, 2.324511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.999864, 4.637743, 2.386632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.772118, 4.309090, 2.375727>,  <1.635470, 4.111898, 2.369184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.772118, 4.309090, 2.375727>,  <1.999864, 4.637743, 2.386632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.772118, 4.309090, 2.375727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485999, -0.309664, -0.817259,
		0.663045, -0.478569, 0.575625,
		-0.569365, -0.821633, -0.027263,
		1.601308, 4.062600, 2.367548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.484619, 4.091137, 2.069078>,  <1.999864, 4.637743, 2.386632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.484619, 4.091137, 2.069078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.102921, 3.982592, 2.018837>,  <1.873901, 3.917464, 1.988693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.102921, 3.982592, 2.018837>,  <2.484619, 4.091137, 2.069078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.102921, 3.982592, 2.018837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210355, -0.310665, -0.926951,
		0.212521, -0.910960, 0.353533,
		-0.954246, -0.271365, -0.125602,
		1.816647, 3.901182, 1.981156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.470498, 3.507086, 0.252321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.738731, 3.371010, 0.516014>,  <1.899672, 3.289364, 0.674230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.738731, 3.371010, 0.516014>,  <1.470498, 3.507086, 0.252321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.738731, 3.371010, 0.516014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469855, 0.492911, 0.732308,
		-0.574067, -0.800818, 0.170698,
		0.670584, -0.340191, 0.659233,
		1.939906, 3.268953, 0.713784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.203863, 3.865903, 0.829754>,  <1.470498, 3.507086, 0.252321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.203863, 3.865903, 0.829754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.477272, 3.610909, 0.971970>,  <1.641317, 3.457912, 1.057299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.477272, 3.610909, 0.971970>,  <1.203863, 3.865903, 0.829754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.477272, 3.610909, 0.971970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123238, 0.379306, 0.917028,
		-0.719451, -0.670625, 0.180702,
		0.683523, -0.637487, 0.355538,
		1.682329, 3.419662, 1.078631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.779861, 3.974738, 1.432280>,  <1.203863, 3.865903, 0.829754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.779861, 3.974738, 1.432280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.124710, 3.784966, 1.503452>,  <1.331619, 3.671102, 1.546156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.124710, 3.784966, 1.503452>,  <0.779861, 3.974738, 1.432280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.124710, 3.784966, 1.503452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189926, 0.022987, 0.981529,
		-0.469759, -0.879992, -0.070290,
		0.862122, -0.474432, 0.177932,
		1.383347, 3.642636, 1.556832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.678088, 3.355683, 1.834194>,  <0.779861, 3.974738, 1.432280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.678088, 3.355683, 1.834194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.050133, 3.484657, 1.904537>,  <1.273360, 3.562042, 1.946743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.050133, 3.484657, 1.904537>,  <0.678088, 3.355683, 1.834194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.050133, 3.484657, 1.904537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189310, 0.010585, 0.981860,
		0.314725, -0.946532, 0.070885,
		0.930113, 0.322435, 0.175857,
		1.329167, 3.581388, 1.957294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.919226, 2.988834, 2.441415>,  <0.678088, 3.355683, 1.834194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.919226, 2.988834, 2.441415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.145821, 3.316128, 2.402252>,  <1.281777, 3.512504, 2.378754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.145821, 3.316128, 2.402252>,  <0.919226, 2.988834, 2.441415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.145821, 3.316128, 2.402252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086599, 0.177260, 0.980347,
		0.819509, -0.546874, 0.171274,
		0.566486, 0.818234, -0.097908,
		1.315767, 3.561598, 2.372880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.360168, 3.018825, 3.015363>,  <0.919226, 2.988834, 2.441415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.360168, 3.018825, 3.015363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.352821, 3.404312, 2.908848>,  <1.348413, 3.635605, 2.844939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.352821, 3.404312, 2.908848>,  <1.360168, 3.018825, 3.015363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.352821, 3.404312, 2.908848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158036, 0.260187, 0.952537,
		0.987262, 0.059578, 0.147524,
		-0.018366, 0.963719, -0.266288,
		1.347311, 3.693428, 2.828961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.757312, 3.395478, 3.429491>,  <1.360168, 3.018825, 3.015363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.757312, 3.395478, 3.429491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.490601, 3.659153, 3.290421>,  <1.330574, 3.817358, 3.206979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.490601, 3.659153, 3.290421>,  <1.757312, 3.395478, 3.429491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.490601, 3.659153, 3.290421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298792, 0.190927, 0.935024,
		0.682736, 0.727337, 0.069654,
		-0.666779, 0.659187, -0.347675,
		1.290567, 3.856909, 3.186118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.790882, 3.878879, 3.908488>,  <1.757312, 3.395478, 3.429491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.790882, 3.878879, 3.908488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.454384, 3.982300, 3.718557>,  <1.252485, 4.044352, 3.604599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.454384, 3.982300, 3.718557>,  <1.790882, 3.878879, 3.908488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.454384, 3.982300, 3.718557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422072, 0.234792, 0.875630,
		0.337881, 0.937029, -0.088390,
		-0.841244, 0.258552, -0.474826,
		1.202011, 4.059865, 3.576110>
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
