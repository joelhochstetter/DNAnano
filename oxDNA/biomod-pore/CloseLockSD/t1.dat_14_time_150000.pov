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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<3.756659, 14.970847, 15.028522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.107363, 15.156159, 14.976889>,  <4.317786, 15.267346, 14.945910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.107363, 15.156159, 14.976889>,  <3.756659, 14.970847, 15.028522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.107363, 15.156159, 14.976889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413606, 0.589410, -0.693921,
		-0.245398, 0.661792, 0.708387,
		0.876761, 0.463280, -0.129081,
		4.370391, 15.295143, 14.938165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.234629, 14.518721, 14.608397>,  <3.756659, 14.970847, 15.028522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.234629, 14.518721, 14.608397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.844463, 14.433796, 14.584763>,  <3.610364, 14.382841, 14.570582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.844463, 14.433796, 14.584763>,  <4.234629, 14.518721, 14.608397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.844463, 14.433796, 14.584763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220359, -0.936051, -0.274317,
		0.002935, -0.280593, 0.959823,
		-0.975414, -0.212311, -0.059084,
		3.551839, 14.370103, 14.567038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.121819, 13.981442, 15.132367>,  <4.234629, 14.518721, 14.608397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.121819, 13.981442, 15.132367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.908684, 13.969852, 14.794079>,  <3.780802, 13.962898, 14.591105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.908684, 13.969852, 14.794079>,  <4.121819, 13.981442, 15.132367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.908684, 13.969852, 14.794079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239650, -0.963665, -0.117974,
		-0.811574, -0.265538, 0.520421,
		-0.532838, -0.028974, -0.845721,
		3.748832, 13.961160, 14.540362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.762864, 13.398855, 15.240890>,  <4.121819, 13.981442, 15.132367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.762864, 13.398855, 15.240890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.787472, 13.494486, 14.853270>,  <3.802237, 13.551864, 14.620698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.787472, 13.494486, 14.853270>,  <3.762864, 13.398855, 15.240890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.787472, 13.494486, 14.853270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322124, -0.923692, -0.207435,
		-0.944697, -0.299392, -0.133839,
		0.061522, 0.239076, -0.969050,
		3.805929, 13.566209, 14.562554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.433959, 12.951295, 14.718802>,  <3.762864, 13.398855, 15.240890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.433959, 12.951295, 14.718802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.735718, 13.093914, 14.498345>,  <3.916773, 13.179485, 14.366071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.735718, 13.093914, 14.498345>,  <3.433959, 12.951295, 14.718802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.735718, 13.093914, 14.498345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234408, -0.930591, -0.281165,
		-0.613137, 0.082918, -0.785613,
		0.754397, 0.356547, -0.551143,
		3.962037, 13.200878, 14.333002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.306571, 12.809367, 13.919822>,  <3.433959, 12.951295, 14.718802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.306571, 12.809367, 13.919822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.696385, 12.840677, 14.003873>,  <3.930274, 12.859464, 14.054303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.696385, 12.840677, 14.003873>,  <3.306571, 12.809367, 13.919822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.696385, 12.840677, 14.003873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148094, -0.928316, -0.341025,
		0.168370, 0.363459, -0.916269,
		0.974536, 0.078276, 0.210127,
		3.988746, 12.864160, 14.066911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.620099, 12.584315, 13.213619>,  <3.306571, 12.809367, 13.919822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.620099, 12.584315, 13.213619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.895177, 12.569544, 13.503644>,  <4.060223, 12.560681, 13.677659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.895177, 12.569544, 13.503644>,  <3.620099, 12.584315, 13.213619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.895177, 12.569544, 13.503644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334195, -0.870501, -0.361305,
		0.644509, 0.490779, -0.586297,
		0.687693, -0.036928, 0.725062,
		4.101485, 12.558466, 13.721163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.250927, 12.548599, 12.918083>,  <3.620099, 12.584315, 13.213619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.250927, 12.548599, 12.918083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.334660, 12.426318, 13.289616>,  <4.384899, 12.352950, 13.512535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.334660, 12.426318, 13.289616>,  <4.250927, 12.548599, 12.918083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.334660, 12.426318, 13.289616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449879, -0.813268, -0.369058,
		0.868210, 0.495117, -0.032714,
		0.209332, -0.305702, 0.928831,
		4.397459, 12.334607, 13.568265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.925862, 12.161434, 12.826478>,  <4.250927, 12.548599, 12.918083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.925862, 12.161434, 12.826478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.756826, 12.072586, 13.177950>,  <4.655404, 12.019278, 13.388833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.756826, 12.072586, 13.177950>,  <4.925862, 12.161434, 12.826478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.756826, 12.072586, 13.177950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372285, -0.926478, -0.055157,
		0.826330, 0.303810, 0.474214,
		-0.422591, -0.222120, 0.878680,
		4.630048, 12.005950, 13.441554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.411858, 11.705143, 13.060890>,  <4.925862, 12.161434, 12.826478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.411858, 11.705143, 13.060890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.085308, 11.612821, 13.272650>,  <4.889379, 11.557427, 13.399706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.085308, 11.612821, 13.272650>,  <5.411858, 11.705143, 13.060890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.085308, 11.612821, 13.272650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203137, -0.972851, -0.110888,
		0.540620, 0.017014, 0.841095,
		-0.816373, -0.230805, 0.529399,
		4.840396, 11.543579, 13.431469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.648489, 11.193497, 13.625848>,  <5.411858, 11.705143, 13.060890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.648489, 11.193497, 13.625848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.263003, 11.174366, 13.520802>,  <5.031712, 11.162888, 13.457775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.263003, 11.174366, 13.520802>,  <5.648489, 11.193497, 13.625848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.263003, 11.174366, 13.520802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101987, -0.975151, -0.196668,
		-0.246682, -0.216315, 0.944646,
		-0.963715, -0.047827, -0.262614,
		4.973889, 11.160018, 13.442019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.541278, 10.531790, 13.833526>,  <5.648489, 11.193497, 13.625848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.541278, 10.531790, 13.833526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.223858, 10.641098, 13.616049>,  <5.033406, 10.706683, 13.485562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.223858, 10.641098, 13.616049>,  <5.541278, 10.531790, 13.833526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.223858, 10.641098, 13.616049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134509, -0.950162, -0.281248,
		-0.593453, -0.150052, 0.790758,
		-0.793549, 0.273271, -0.543693,
		4.985794, 10.723080, 13.452941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.000868, 10.040711, 13.929104>,  <5.541278, 10.531790, 13.833526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.000868, 10.040711, 13.929104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.878709, 10.204762, 13.585353>,  <4.805414, 10.303193, 13.379103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.878709, 10.204762, 13.585353>,  <5.000868, 10.040711, 13.929104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.878709, 10.204762, 13.585353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336760, -0.890688, -0.305396,
		-0.890688, 0.196138, 0.410127,
		0.305396, -0.410127, 0.859377,
		4.787090, 10.327801, 13.327539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.226750, 9.848248, 13.851186>,  <5.000868, 10.040711, 13.929104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.226750, 9.848248, 13.851186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.390216, 9.941561, 13.498239>,  <4.488296, 9.997548, 13.286470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.390216, 9.941561, 13.498239>,  <4.226750, 9.848248, 13.851186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.390216, 9.941561, 13.498239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291833, -0.882628, -0.368511,
		-0.864769, 0.408102, -0.292620,
		0.408665, 0.233281, -0.882368,
		4.512815, 10.011545, 13.233528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.708953, 9.577647, 13.323879>,  <4.226750, 9.848248, 13.851186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.708953, 9.577647, 13.323879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.046260, 9.649855, 13.121370>,  <4.248645, 9.693179, 12.999866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.046260, 9.649855, 13.121370>,  <3.708953, 9.577647, 13.323879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.046260, 9.649855, 13.121370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088544, -0.882390, -0.462112,
		-0.530149, 0.434512, -0.728108,
		0.843269, 0.180519, -0.506272,
		4.299241, 9.704010, 12.969489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.607310, 9.245885, 12.646186>,  <3.708953, 9.577647, 13.323879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.607310, 9.245885, 12.646186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.997036, 9.334087, 12.627910>,  <4.230871, 9.387009, 12.616944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.997036, 9.334087, 12.627910>,  <3.607310, 9.245885, 12.646186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.997036, 9.334087, 12.627910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125332, -0.699556, -0.703501,
		-0.187089, 0.679705, -0.709224,
		0.974315, 0.220506, -0.045690,
		4.289330, 9.400239, 12.614202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.854470, 9.267241, 11.898374>,  <3.607310, 9.245885, 12.646186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.854470, 9.267241, 11.898374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.172686, 9.191759, 12.128680>,  <4.363616, 9.146470, 12.266864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.172686, 9.191759, 12.128680>,  <3.854470, 9.267241, 11.898374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.172686, 9.191759, 12.128680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209878, -0.805611, -0.554023,
		0.568389, 0.561588, -0.601292,
		0.795540, -0.188703, 0.575766,
		4.411348, 9.135148, 12.301410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.372943, 8.992790, 11.436566>,  <3.854470, 9.267241, 11.898374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.372943, 8.992790, 11.436566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.493984, 8.875976, 11.799476>,  <4.566609, 8.805887, 12.017221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.493984, 8.875976, 11.799476>,  <4.372943, 8.992790, 11.436566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.493984, 8.875976, 11.799476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553139, -0.721391, -0.416692,
		0.776189, 0.627940, -0.056758,
		0.302602, -0.292037, 0.907274,
		4.584765, 8.788364, 12.071658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.028149, 8.853762, 11.332532>,  <4.372943, 8.992790, 11.436566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.028149, 8.853762, 11.332532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.945387, 8.649051, 11.666064>,  <4.895730, 8.526224, 11.866183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.945387, 8.649051, 11.666064>,  <5.028149, 8.853762, 11.332532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.945387, 8.649051, 11.666064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493616, -0.790452, -0.362669,
		0.844710, 0.336555, 0.416169,
		-0.206903, -0.511778, 0.833831,
		4.883317, 8.495518, 11.916214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.612522, 8.469156, 11.498242>,  <5.028149, 8.853762, 11.332532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.612522, 8.469156, 11.498242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.327843, 8.290299, 11.714963>,  <5.157035, 8.182985, 11.844995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.327843, 8.290299, 11.714963>,  <5.612522, 8.469156, 11.498242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.327843, 8.290299, 11.714963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420518, -0.888987, -0.181290,
		0.562718, 0.098814, 0.820722,
		-0.711697, -0.447143, 0.541802,
		5.114334, 8.156157, 11.877503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.989572, 8.165457, 11.971326>,  <5.612522, 8.469156, 11.498242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.989572, 8.165457, 11.971326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.639721, 7.971597, 11.966574>,  <5.429811, 7.855280, 11.963722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.639721, 7.971597, 11.966574>,  <5.989572, 8.165457, 11.971326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.639721, 7.971597, 11.966574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483799, -0.874137, 0.042709,
		-0.031085, 0.031607, 0.999017,
		-0.874627, -0.484650, -0.011881,
		5.377333, 7.826201, 11.963010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.977767, 7.599301, 12.470842>,  <5.989572, 8.165457, 11.971326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.977767, 7.599301, 12.470842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.697977, 7.483927, 12.209296>,  <5.530103, 7.414703, 12.052368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.697977, 7.483927, 12.209296>,  <5.977767, 7.599301, 12.470842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.697977, 7.483927, 12.209296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450734, -0.888066, -0.090428,
		-0.554594, -0.357971, 0.751188,
		-0.699475, -0.288436, -0.653866,
		5.488134, 7.397397, 12.013137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.006907, 6.861885, 12.542512>,  <5.977767, 7.599301, 12.470842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.006907, 6.861885, 12.542512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.781069, 6.914237, 12.216542>,  <5.645566, 6.945648, 12.020961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.781069, 6.914237, 12.216542>,  <6.006907, 6.861885, 12.542512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.781069, 6.914237, 12.216542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398652, -0.821299, -0.408098,
		-0.722707, -0.555282, 0.411528,
		-0.564598, 0.130879, -0.814923,
		5.611690, 6.953500, 11.972065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.640999, 6.268399, 12.447030>,  <6.006907, 6.861885, 12.542512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.640999, 6.268399, 12.447030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.675656, 6.461085, 12.098217>,  <5.696450, 6.576697, 11.888929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.675656, 6.461085, 12.098217>,  <5.640999, 6.268399, 12.447030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.675656, 6.461085, 12.098217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438409, -0.804449, -0.400824,
		-0.894590, -0.347579, -0.280888,
		0.086642, 0.481717, -0.872033,
		5.701648, 6.605600, 11.836607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.545903, 5.776761, 11.844538>,  <5.640999, 6.268399, 12.447030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.545903, 5.776761, 11.844538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.757993, 6.077428, 11.687639>,  <5.885248, 6.257828, 11.593500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.757993, 6.077428, 11.687639>,  <5.545903, 5.776761, 11.844538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.757993, 6.077428, 11.687639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497590, -0.650458, -0.573854,
		-0.686486, 0.109095, -0.718912,
		0.530227, 0.751666, -0.392246,
		5.917061, 6.302928, 11.569965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.477304, 5.840919, 11.076972>,  <5.545903, 5.776761, 11.844538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.477304, 5.840919, 11.076972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.841379, 5.968584, 11.182573>,  <6.059823, 6.045183, 11.245934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.841379, 5.968584, 11.182573>,  <5.477304, 5.840919, 11.076972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.841379, 5.968584, 11.182573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413327, -0.741260, -0.528861,
		0.026903, 0.590482, -0.806602,
		0.910185, 0.319162, 0.264004,
		6.114434, 6.064333, 11.261774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.836763, 5.937085, 10.413900>,  <5.477304, 5.840919, 11.076972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.836763, 5.937085, 10.413900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.086965, 5.837980, 10.709835>,  <6.237086, 5.778517, 10.887396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.086965, 5.837980, 10.709835>,  <5.836763, 5.937085, 10.413900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.086965, 5.837980, 10.709835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371461, -0.739307, -0.561642,
		0.686119, 0.626130, -0.370407,
		0.625505, -0.247762, 0.739836,
		6.274617, 5.763652, 10.931786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.592813, 5.876633, 10.256311>,  <5.836763, 5.937085, 10.413900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.592813, 5.876633, 10.256311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.446850, 5.616536, 10.522853>,  <6.359272, 5.460477, 10.682777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.446850, 5.616536, 10.522853>,  <6.592813, 5.876633, 10.256311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.446850, 5.616536, 10.522853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466182, -0.747132, -0.473781,
		0.805926, 0.137757, 0.575765,
		-0.364906, -0.650244, 0.666353,
		6.337378, 5.421463, 10.722759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.185483, 6.535039, 10.189794>,  <6.592813, 5.876633, 10.256311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.185483, 6.535039, 10.189794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.194313, 6.445395, 10.579519>,  <6.199610, 6.391609, 10.813354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.194313, 6.445395, 10.579519>,  <6.185483, 6.535039, 10.189794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.194313, 6.445395, 10.579519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352132, 0.910357, 0.217376,
		-0.935690, -0.347886, -0.058822,
		0.022074, -0.224110, 0.974314,
		6.200934, 6.378162, 10.871814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.179208, 6.754840, 9.441945>,  <6.185483, 6.535039, 10.189794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.179208, 6.754840, 9.441945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.963100, 6.605845, 9.140121>,  <5.833436, 6.516448, 8.959026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.963100, 6.605845, 9.140121>,  <6.179208, 6.754840, 9.441945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.963100, 6.605845, 9.140121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674766, -0.344006, 0.652955,
		-0.502792, 0.861923, -0.065487,
		-0.540269, -0.372489, -0.754560,
		5.801020, 6.494098, 8.913753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.510674, 7.135783, 9.506309>,  <6.179208, 6.754840, 9.441945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.510674, 7.135783, 9.506309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.447434, 6.788772, 9.317672>,  <5.409490, 6.580565, 9.204490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.447434, 6.788772, 9.317672>,  <5.510674, 7.135783, 9.506309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.447434, 6.788772, 9.317672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757453, -0.199841, 0.621553,
		-0.633458, 0.455476, -0.625517,
		-0.158099, -0.867528, -0.471593,
		5.400004, 6.528513, 9.176194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.722424, 7.367085, 8.783778>,  <5.510674, 7.135783, 9.506309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.722424, 7.367085, 8.783778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.103456, 7.474770, 8.727050>,  <6.332076, 7.539381, 8.693013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.103456, 7.474770, 8.727050>,  <5.722424, 7.367085, 8.783778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.103456, 7.474770, 8.727050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230783, 0.942972, 0.239882,
		0.198311, -0.195777, 0.960387,
		0.952582, 0.269213, -0.141820,
		6.389231, 7.555534, 8.684504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.990874, 7.785336, 9.310762>,  <5.722424, 7.367085, 8.783778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.990874, 7.785336, 9.310762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.245197, 7.953683, 9.051959>,  <6.397790, 8.054692, 8.896677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.245197, 7.953683, 9.051959>,  <5.990874, 7.785336, 9.310762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.245197, 7.953683, 9.051959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019704, 0.829134, 0.558703,
		0.771596, -0.367976, 0.518877,
		0.635808, 0.420869, -0.647007,
		6.435939, 8.079945, 8.857857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.580142, 8.054930, 9.677482>,  <5.990874, 7.785336, 9.310762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.580142, 8.054930, 9.677482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.564411, 8.255950, 9.332021>,  <6.554973, 8.376562, 9.124744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.564411, 8.255950, 9.332021>,  <6.580142, 8.054930, 9.677482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.564411, 8.255950, 9.332021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174693, 0.854467, 0.489252,
		0.983837, -0.131632, -0.121396,
		-0.039328, 0.502552, -0.863652,
		6.552613, 8.406715, 9.072926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.241272, 8.501671, 9.642368>,  <6.580142, 8.054930, 9.677482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.241272, 8.501671, 9.642368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.918559, 8.641383, 9.451748>,  <6.724930, 8.725211, 9.337376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.918559, 8.641383, 9.451748>,  <7.241272, 8.501671, 9.642368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.918559, 8.641383, 9.451748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219145, 0.925923, 0.307638,
		0.548702, 0.143764, -0.823564,
		-0.806785, 0.349282, -0.476551,
		6.676523, 8.746168, 9.308783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.428151, 8.862649, 9.077629>,  <7.241272, 8.501671, 9.642368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.428151, 8.862649, 9.077629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.120100, 8.987168, 9.300339>,  <6.935269, 9.061880, 9.433965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.120100, 8.987168, 9.300339>,  <7.428151, 8.862649, 9.077629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.120100, 8.987168, 9.300339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439808, 0.891332, 0.109987,
		-0.462032, 0.329578, -0.823350,
		-0.770127, 0.311298, 0.556774,
		6.889061, 9.080558, 9.467371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.389915, 9.549402, 8.903980>,  <7.428151, 8.862649, 9.077629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.389915, 9.549402, 8.903980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.212550, 9.496428, 9.258573>,  <7.106132, 9.464643, 9.471328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.212550, 9.496428, 9.258573>,  <7.389915, 9.549402, 8.903980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.212550, 9.496428, 9.258573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333077, 0.893854, 0.300142,
		-0.832133, 0.428352, -0.352233,
		-0.443412, -0.132437, 0.886480,
		7.079527, 9.456697, 9.524516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.083952, 10.152758, 9.016821>,  <7.389915, 9.549402, 8.903980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.083952, 10.152758, 9.016821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.140212, 9.980530, 9.373433>,  <7.173967, 9.877193, 9.587400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.140212, 9.980530, 9.373433>,  <7.083952, 10.152758, 9.016821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.140212, 9.980530, 9.373433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246211, 0.887405, 0.389733,
		-0.958957, 0.164689, 0.230823,
		0.140649, -0.430569, 0.891532,
		7.182406, 9.851359, 9.640893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.581861, 10.400663, 9.481565>,  <7.083952, 10.152758, 9.016821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.581861, 10.400663, 9.481565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.881176, 10.286777, 9.721231>,  <7.060765, 10.218446, 9.865032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.881176, 10.286777, 9.721231>,  <6.581861, 10.400663, 9.481565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.881176, 10.286777, 9.721231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132325, 0.820999, 0.555384,
		-0.650042, -0.494872, 0.576669,
		0.748288, -0.284715, 0.599168,
		7.105662, 10.201363, 9.900982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.406488, 10.605437, 10.128527>,  <6.581861, 10.400663, 9.481565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.406488, 10.605437, 10.128527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.789127, 10.547541, 10.229697>,  <7.018711, 10.512803, 10.290400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.789127, 10.547541, 10.229697>,  <6.406488, 10.605437, 10.128527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.789127, 10.547541, 10.229697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048580, 0.776578, 0.628146,
		-0.287335, -0.613170, 0.735840,
		0.956597, -0.144741, 0.252926,
		7.076107, 10.504118, 10.305575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.437202, 10.662633, 10.854125>,  <6.406488, 10.605437, 10.128527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.437202, 10.662633, 10.854125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.820770, 10.704687, 10.748734>,  <7.050911, 10.729919, 10.685499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.820770, 10.704687, 10.748734>,  <6.437202, 10.662633, 10.854125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.820770, 10.704687, 10.748734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107827, 0.723992, 0.681329,
		0.262388, -0.681749, 0.682913,
		0.958919, 0.105136, -0.263477,
		7.108446, 10.736228, 10.669690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.827778, 10.693450, 11.423395>,  <6.437202, 10.662633, 10.854125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.827778, 10.693450, 11.423395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.095951, 10.838144, 11.164268>,  <7.256854, 10.924961, 11.008791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.095951, 10.838144, 11.164268>,  <6.827778, 10.693450, 11.423395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.095951, 10.838144, 11.164268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193962, 0.757299, 0.623600,
		0.716171, -0.543733, 0.437553,
		0.670431, 0.361736, -0.647819,
		7.297080, 10.946665, 10.969922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.358057, 10.845417, 11.903998>,  <6.827778, 10.693450, 11.423395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.358057, 10.845417, 11.903998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.404030, 11.058795, 11.568802>,  <7.431613, 11.186822, 11.367684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.404030, 11.058795, 11.568802>,  <7.358057, 10.845417, 11.903998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.404030, 11.058795, 11.568802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288088, 0.789427, 0.542042,
		0.950682, -0.303712, -0.062949,
		0.114931, 0.533445, -0.837990,
		7.438509, 11.218828, 11.317405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.880169, 11.286057, 12.063180>,  <7.358057, 10.845417, 11.903998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.880169, 11.286057, 12.063180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.737788, 11.476450, 11.741500>,  <7.652359, 11.590686, 11.548491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.737788, 11.476450, 11.741500>,  <7.880169, 11.286057, 12.063180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.737788, 11.476450, 11.741500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221532, 0.879014, 0.422207,
		0.907866, -0.027869, -0.418334,
		-0.355954, 0.475981, -0.804200,
		7.631001, 11.619245, 11.500239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.387298, 11.744856, 11.796080>,  <7.880169, 11.286057, 12.063180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.387298, 11.744856, 11.796080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.026776, 11.892963, 11.706142>,  <7.810463, 11.981828, 11.652180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.026776, 11.892963, 11.706142>,  <8.387298, 11.744856, 11.796080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.026776, 11.892963, 11.706142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262042, 0.879326, 0.397642,
		0.344945, 0.299478, -0.889565,
		-0.901303, 0.370269, -0.224844,
		7.756385, 12.004044, 11.638689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.502528, 12.484645, 11.674712>,  <8.387298, 11.744856, 11.796080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.502528, 12.484645, 11.674712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.103222, 12.473685, 11.695555>,  <7.863638, 12.467110, 11.708060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.103222, 12.473685, 11.695555>,  <8.502528, 12.484645, 11.674712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.103222, 12.473685, 11.695555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001035, 0.893127, 0.449803,
		-0.058863, 0.448969, -0.891606,
		-0.998266, -0.027400, 0.052107,
		7.803742, 12.465466, 11.711186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.254888, 13.132727, 11.507944>,  <8.502528, 12.484645, 11.674712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.254888, 13.132727, 11.507944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.967453, 12.946022, 11.714154>,  <7.794991, 12.834000, 11.837880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.967453, 12.946022, 11.714154>,  <8.254888, 13.132727, 11.507944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.967453, 12.946022, 11.714154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152312, 0.828931, 0.538214,
		-0.678551, 0.308234, -0.666754,
		-0.718588, -0.466761, 0.515524,
		7.751876, 12.805994, 11.868812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.758900, 13.648428, 11.634324>,  <8.254888, 13.132727, 11.507944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.758900, 13.648428, 11.634324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.691811, 13.382898, 11.925860>,  <7.651557, 13.223580, 12.100782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.691811, 13.382898, 11.925860>,  <7.758900, 13.648428, 11.634324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.691811, 13.382898, 11.925860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395473, 0.722524, 0.567063,
		-0.903034, -0.193127, -0.383708,
		-0.167723, -0.663823, 0.728840,
		7.641494, 13.183751, 12.144512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.142395, 13.775999, 11.918334>,  <7.758900, 13.648428, 11.634324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.142395, 13.775999, 11.918334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.304936, 13.569448, 12.219858>,  <7.402462, 13.445517, 12.400772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.304936, 13.569448, 12.219858>,  <7.142395, 13.775999, 11.918334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.304936, 13.569448, 12.219858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472797, 0.587132, 0.657069,
		-0.781882, -0.623402, -0.005558,
		0.406355, -0.516378, 0.753810,
		7.426843, 13.414535, 12.446001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.736740, 13.957606, 12.490510>,  <7.142395, 13.775999, 11.918334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.736740, 13.957606, 12.490510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.024576, 13.763133, 12.688830>,  <7.197277, 13.646449, 12.807822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.024576, 13.763133, 12.688830>,  <6.736740, 13.957606, 12.490510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.024576, 13.763133, 12.688830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274652, 0.456502, 0.846269,
		-0.637776, -0.745139, 0.194962,
		0.719589, -0.486183, 0.495800,
		7.240452, 13.617278, 12.837570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.366028, 13.672381, 13.060555>,  <6.736740, 13.957606, 12.490510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.366028, 13.672381, 13.060555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.751959, 13.673958, 13.165698>,  <6.983517, 13.674904, 13.228784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.751959, 13.673958, 13.165698>,  <6.366028, 13.672381, 13.060555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.751959, 13.673958, 13.165698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237291, 0.443417, 0.864335,
		-0.113150, -0.896307, 0.428756,
		0.964827, 0.003940, 0.262858,
		7.041407, 13.675140, 13.244555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.434237, 13.306811, 13.697211>,  <6.366028, 13.672381, 13.060555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.434237, 13.306811, 13.697211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.763244, 13.532956, 13.672453>,  <6.960648, 13.668643, 13.657598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.763244, 13.532956, 13.672453>,  <6.434237, 13.306811, 13.697211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.763244, 13.532956, 13.672453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145187, 0.313949, 0.938273,
		0.549898, -0.762758, 0.340312,
		0.822516, 0.565363, -0.061897,
		7.009999, 13.702565, 13.653884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.640949, 13.187181, 14.395777>,  <6.434237, 13.306811, 13.697211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.640949, 13.187181, 14.395777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.763520, 13.525932, 14.221926>,  <6.837062, 13.729183, 14.117615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.763520, 13.525932, 14.221926>,  <6.640949, 13.187181, 14.395777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.763520, 13.525932, 14.221926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307988, 0.520240, 0.796551,
		0.900692, -0.110224, 0.420244,
		0.306427, 0.846877, -0.434628,
		6.855448, 13.779996, 14.091537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.938665, 13.527417, 14.865335>,  <6.640949, 13.187181, 14.395777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.938665, 13.527417, 14.865335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.854512, 13.824623, 14.611196>,  <6.804020, 14.002947, 14.458712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.854512, 13.824623, 14.611196>,  <6.938665, 13.527417, 14.865335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.854512, 13.824623, 14.611196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416152, 0.520008, 0.745928,
		0.884622, 0.421332, 0.199806,
		-0.210383, 0.743015, -0.635349,
		6.791398, 14.047527, 14.420590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.116494, 14.129046, 15.255096>,  <6.938665, 13.527417, 14.865335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.116494, 14.129046, 15.255096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.865661, 14.248368, 14.967268>,  <6.715161, 14.319962, 14.794571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.865661, 14.248368, 14.967268>,  <7.116494, 14.129046, 15.255096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.865661, 14.248368, 14.967268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480424, 0.579036, 0.658719,
		0.613157, 0.758770, -0.219790,
		-0.627082, 0.298305, -0.719571,
		6.677536, 14.337860, 14.751397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.983419, 14.853681, 15.411438>,  <7.116494, 14.129046, 15.255096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.983419, 14.853681, 15.411438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.673605, 14.765531, 15.174277>,  <6.487717, 14.712641, 15.031981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.673605, 14.765531, 15.174277>,  <6.983419, 14.853681, 15.411438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.673605, 14.765531, 15.174277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586216, 0.602169, 0.541980,
		0.237587, 0.767350, -0.595588,
		-0.774534, -0.220376, -0.592901,
		6.441245, 14.699418, 14.996407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.072300, 15.698256, 15.341615>,  <6.983419, 14.853681, 15.411438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.072300, 15.698256, 15.341615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.254625, 16.035276, 15.456396>,  <7.364020, 16.237490, 15.525265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.254625, 16.035276, 15.456396>,  <7.072300, 15.698256, 15.341615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.254625, 16.035276, 15.456396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871917, -0.487462, 0.046285,
		0.178876, 0.229102, -0.956826,
		0.455812, 0.842552, 0.286953,
		7.391369, 16.288042, 15.542482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.680023, 15.874748, 14.858341>,  <7.072300, 15.698256, 15.341615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.680023, 15.874748, 14.858341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.708780, 15.985707, 15.241566>,  <7.726034, 16.052282, 15.471500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.708780, 15.985707, 15.241566>,  <7.680023, 15.874748, 14.858341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.708780, 15.985707, 15.241566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874579, -0.479333, 0.073158,
		0.479524, 0.832640, -0.277068,
		0.071893, 0.277399, 0.958061,
		7.730348, 16.068928, 15.528984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.454915, 15.976933, 15.029568>,  <7.680023, 15.874748, 14.858341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.454915, 15.976933, 15.029568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.277546, 15.982080, 15.388056>,  <8.171124, 15.985168, 15.603148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.277546, 15.982080, 15.388056>,  <8.454915, 15.976933, 15.029568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.277546, 15.982080, 15.388056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864957, -0.256018, 0.431630,
		0.235003, 0.966586, 0.102394,
		-0.443422, 0.012868, 0.896221,
		8.144519, 15.985941, 15.656922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.871782, 15.983295, 15.605388>,  <8.454915, 15.976933, 15.029568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.871782, 15.983295, 15.605388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.602012, 15.814472, 15.847714>,  <8.440149, 15.713179, 15.993111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.602012, 15.814472, 15.847714>,  <8.871782, 15.983295, 15.605388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.602012, 15.814472, 15.847714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737696, -0.419478, 0.529002,
		0.030858, 0.803682, 0.594258,
		-0.674428, -0.422058, 0.605817,
		8.399683, 15.687855, 16.029459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.195516, 15.961951, 16.299835>,  <8.871782, 15.983295, 15.605388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.195516, 15.961951, 16.299835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.887623, 15.708126, 16.272003>,  <8.702887, 15.555831, 16.255304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.887623, 15.708126, 16.272003>,  <9.195516, 15.961951, 16.299835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.887623, 15.708126, 16.272003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354983, -0.516070, 0.779525,
		-0.530565, 0.575326, 0.622495,
		-0.769732, -0.634564, -0.069578,
		8.656703, 15.517757, 16.251129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.868977, 15.600858, 16.887955>,  <9.195516, 15.961951, 16.299835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.868977, 15.600858, 16.887955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.579283, 15.334061, 16.817976>,  <8.405466, 15.173983, 16.775990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.579283, 15.334061, 16.817976>,  <8.868977, 15.600858, 16.887955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.579283, 15.334061, 16.817976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582286, 0.455663, 0.673286,
		-0.369360, 0.589485, -0.718387,
		-0.724235, -0.666992, -0.174945,
		8.362012, 15.133963, 16.765493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.769866, 14.830038, 16.878595>,  <8.868977, 15.600858, 16.887955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.769866, 14.830038, 16.878595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.853580, 14.488688, 17.069572>,  <8.903808, 14.283877, 17.184158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.853580, 14.488688, 17.069572>,  <8.769866, 14.830038, 16.878595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.853580, 14.488688, 17.069572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049029, 0.478482, 0.876728,
		-0.976625, -0.206893, 0.058299,
		0.209284, -0.853376, 0.477441,
		8.916365, 14.232675, 17.212805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.197622, 14.666510, 17.261423>,  <8.769866, 14.830038, 16.878595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.197622, 14.666510, 17.261423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.525016, 14.510593, 17.430254>,  <8.721452, 14.417044, 17.531553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.525016, 14.510593, 17.430254>,  <8.197622, 14.666510, 17.261423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.525016, 14.510593, 17.430254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182879, 0.519677, 0.834561,
		-0.544647, -0.760263, 0.354062,
		0.818483, -0.389791, 0.422077,
		8.770561, 14.393656, 17.556877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.006616, 14.477373, 18.031361>,  <8.197622, 14.666510, 17.261423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.006616, 14.477373, 18.031361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.405890, 14.496486, 18.016733>,  <8.645455, 14.507953, 18.007956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.405890, 14.496486, 18.016733>,  <8.006616, 14.477373, 18.031361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.405890, 14.496486, 18.016733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016693, 0.364013, 0.931244,
		0.057807, -0.930168, 0.362556,
		0.998188, 0.047780, -0.036570,
		8.705347, 14.510820, 18.005762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.306472, 14.247937, 18.657574>,  <8.006616, 14.477373, 18.031361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.306472, 14.247937, 18.657574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.608702, 14.446865, 18.487030>,  <8.790039, 14.566221, 18.384705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.608702, 14.446865, 18.487030>,  <8.306472, 14.247937, 18.657574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.608702, 14.446865, 18.487030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265133, 0.363000, 0.893272,
		0.599010, -0.787975, 0.142418,
		0.755574, 0.497320, -0.426359,
		8.835374, 14.596061, 18.359123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.873821, 14.046093, 19.073957>,  <8.306472, 14.247937, 18.657574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.873821, 14.046093, 19.073957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.980599, 14.384483, 18.889322>,  <9.044666, 14.587518, 18.778542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.980599, 14.384483, 18.889322>,  <8.873821, 14.046093, 19.073957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.980599, 14.384483, 18.889322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265931, 0.395711, 0.879030,
		0.926294, -0.357404, -0.119339,
		0.266945, 0.845976, -0.461589,
		9.060683, 14.638276, 18.750845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.592484, 14.078540, 19.166443>,  <8.873821, 14.046093, 19.073957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.592484, 14.078540, 19.166443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.446607, 14.438478, 19.070715>,  <9.359080, 14.654442, 19.013277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.446607, 14.438478, 19.070715>,  <9.592484, 14.078540, 19.166443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.446607, 14.438478, 19.070715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538455, 0.413499, 0.734224,
		0.759648, 0.138903, -0.635328,
		-0.364693, 0.899847, -0.239321,
		9.337199, 14.708432, 18.998919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.170126, 14.570764, 19.264364>,  <9.592484, 14.078540, 19.166443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.170126, 14.570764, 19.264364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.844731, 14.803264, 19.272259>,  <9.649495, 14.942763, 19.276995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.844731, 14.803264, 19.272259>,  <10.170126, 14.570764, 19.264364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.844731, 14.803264, 19.272259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404641, 0.541286, 0.737072,
		0.417740, 0.607583, -0.675526,
		-0.813485, 0.581250, 0.019736,
		9.600686, 14.977639, 19.278179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.415190, 15.233378, 19.344358>,  <10.170126, 14.570764, 19.264364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.415190, 15.233378, 19.344358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.037021, 15.254067, 19.473043>,  <9.810119, 15.266480, 19.550255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.037021, 15.254067, 19.473043>,  <10.415190, 15.233378, 19.344358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.037021, 15.254067, 19.473043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298016, 0.536493, 0.789533,
		-0.131760, 0.842318, -0.522627,
		-0.945424, 0.051722, 0.321712,
		9.753393, 15.269584, 19.569557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.283652, 15.922145, 19.421385>,  <10.415190, 15.233378, 19.344358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.283652, 15.922145, 19.421385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.010707, 15.738550, 19.648968>,  <9.846940, 15.628393, 19.785517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.010707, 15.738550, 19.648968>,  <10.283652, 15.922145, 19.421385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.010707, 15.738550, 19.648968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295483, 0.538716, 0.788971,
		-0.668634, 0.706481, -0.231976,
		-0.682362, -0.458987, 0.568957,
		9.805998, 15.600854, 19.819654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.952169, 16.486095, 19.742044>,  <10.283652, 15.922145, 19.421385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.952169, 16.486095, 19.742044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.908794, 16.149525, 19.953798>,  <9.882770, 15.947583, 20.080851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.908794, 16.149525, 19.953798>,  <9.952169, 16.486095, 19.742044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.908794, 16.149525, 19.953798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354204, 0.464870, 0.811440,
		-0.928860, 0.275500, 0.247627,
		-0.108437, -0.841425, 0.529382,
		9.876264, 15.897098, 20.112614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.651494, 16.768368, 20.326536>,  <9.952169, 16.486095, 19.742044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.651494, 16.768368, 20.326536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.775800, 16.402246, 20.429020>,  <9.850384, 16.182573, 20.490511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.775800, 16.402246, 20.429020>,  <9.651494, 16.768368, 20.326536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.775800, 16.402246, 20.429020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188755, 0.323617, 0.927170,
		-0.931556, -0.239771, 0.273337,
		0.310765, -0.915304, 0.256209,
		9.869029, 16.127655, 20.505882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.232231, 16.509022, 20.994627>,  <9.651494, 16.768368, 20.326536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.232231, 16.509022, 20.994627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.581546, 16.314161, 20.997662>,  <9.791135, 16.197245, 20.999481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.581546, 16.314161, 20.997662>,  <9.232231, 16.509022, 20.994627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.581546, 16.314161, 20.997662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251704, 0.464436, 0.849085,
		-0.417154, -0.739585, 0.528202,
		0.873286, -0.487149, 0.007585,
		9.843532, 16.168016, 20.999937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.358522, 16.377241, 21.607126>,  <9.232231, 16.509022, 20.994627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.358522, 16.377241, 21.607126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.731047, 16.272024, 21.506353>,  <9.954561, 16.208895, 21.445890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.731047, 16.272024, 21.506353>,  <9.358522, 16.377241, 21.607126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.731047, 16.272024, 21.506353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307068, 0.195043, 0.931487,
		-0.195884, -0.944863, 0.262418,
		0.931310, -0.263043, -0.251932,
		10.010440, 16.193111, 21.430775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.604899, 16.089884, 22.195272>,  <9.358522, 16.377241, 21.607126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.604899, 16.089884, 22.195272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.928629, 16.184841, 21.980371>,  <10.122867, 16.241816, 21.851431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.928629, 16.184841, 21.980371>,  <9.604899, 16.089884, 22.195272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.928629, 16.184841, 21.980371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524991, 0.117815, 0.842914,
		0.263398, -0.964243, -0.029279,
		0.809324, 0.237393, -0.537251,
		10.171426, 16.256060, 21.819197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.140916, 15.678841, 22.552691>,  <9.604899, 16.089884, 22.195272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.140916, 15.678841, 22.552691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.305635, 15.982979, 22.351772>,  <10.404467, 16.165461, 22.231222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.305635, 15.982979, 22.351772>,  <10.140916, 15.678841, 22.552691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.305635, 15.982979, 22.351772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597805, 0.190619, 0.778649,
		0.687788, -0.620919, -0.376041,
		0.411798, 0.760345, -0.502294,
		10.429174, 16.211082, 22.201084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.840402, 15.679851, 22.756889>,  <10.140916, 15.678841, 22.552691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.840402, 15.679851, 22.756889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.777952, 16.036345, 22.586559>,  <10.740482, 16.250240, 22.484362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.777952, 16.036345, 22.586559>,  <10.840402, 15.679851, 22.756889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.777952, 16.036345, 22.586559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574632, 0.432600, 0.694734,
		0.803383, -0.136227, -0.579671,
		-0.156124, 0.891235, -0.425823,
		10.731115, 16.303715, 22.458813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.515414, 15.964993, 22.720797>,  <10.840402, 15.679851, 22.756889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.515414, 15.964993, 22.720797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.262754, 16.273148, 22.686092>,  <11.111158, 16.458040, 22.665270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.262754, 16.273148, 22.686092>,  <11.515414, 15.964993, 22.720797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.262754, 16.273148, 22.686092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596864, 0.554667, 0.579740,
		0.494745, 0.314408, -0.810169,
		-0.631649, 0.770384, -0.086760,
		11.073259, 16.504263, 22.660065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.958660, 16.521261, 22.698732>,  <11.515414, 15.964993, 22.720797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.958660, 16.521261, 22.698732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.600403, 16.669769, 22.796698>,  <11.385448, 16.758875, 22.855476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.600403, 16.669769, 22.796698>,  <11.958660, 16.521261, 22.698732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.600403, 16.669769, 22.796698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434144, 0.610099, 0.662796,
		0.096657, 0.699955, -0.707616,
		-0.895643, 0.371271, 0.244911,
		11.331710, 16.781151, 22.870171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.112110, 17.206562, 23.060223>,  <11.958660, 16.521261, 22.698732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.112110, 17.206562, 23.060223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.747027, 17.079969, 23.163609>,  <11.527977, 17.004015, 23.225639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.747027, 17.079969, 23.163609>,  <12.112110, 17.206562, 23.060223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.747027, 17.079969, 23.163609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121915, 0.392815, 0.911500,
		-0.390001, 0.863445, -0.319942,
		-0.912708, -0.316481, 0.258465,
		11.473215, 16.985025, 23.241148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.864878, 17.704037, 23.541433>,  <12.112110, 17.206562, 23.060223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.864878, 17.704037, 23.541433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.623870, 17.391762, 23.607758>,  <11.479265, 17.204397, 23.647552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.623870, 17.391762, 23.607758>,  <11.864878, 17.704037, 23.541433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.623870, 17.391762, 23.607758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096805, 0.277711, 0.955775,
		-0.792211, 0.559822, -0.242901,
		-0.602520, -0.780689, 0.165812,
		11.443114, 17.157555, 23.657501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.400539, 17.935497, 24.062708>,  <11.864878, 17.704037, 23.541433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.400539, 17.935497, 24.062708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.398664, 17.535522, 24.066853>,  <11.397538, 17.295538, 24.069340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.398664, 17.535522, 24.066853>,  <11.400539, 17.935497, 24.062708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.398664, 17.535522, 24.066853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085371, 0.010726, 0.996292,
		-0.996338, 0.003788, -0.085416,
		-0.004690, -0.999936, 0.010363,
		11.397257, 17.235542, 24.069962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.891694, 17.850260, 24.570103>,  <11.400539, 17.935497, 24.062708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.891694, 17.850260, 24.570103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.078260, 17.500032, 24.519762>,  <11.190200, 17.289896, 24.489557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.078260, 17.500032, 24.519762>,  <10.891694, 17.850260, 24.570103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.078260, 17.500032, 24.519762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019132, -0.132254, 0.991031,
		-0.884359, -0.464640, -0.044934,
		0.466416, -0.875568, -0.125850,
		11.218185, 17.237362, 24.482008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.503050, 17.454834, 25.047611>,  <10.891694, 17.850260, 24.570103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.503050, 17.454834, 25.047611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.848218, 17.278631, 24.948557>,  <11.055319, 17.172911, 24.889124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.848218, 17.278631, 24.948557>,  <10.503050, 17.454834, 25.047611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.848218, 17.278631, 24.948557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163370, -0.220548, 0.961597,
		-0.478205, -0.870237, -0.118350,
		0.862919, -0.440506, -0.247638,
		11.107094, 17.146479, 24.874266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.614734, 16.815226, 25.428766>,  <10.503050, 17.454834, 25.047611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.614734, 16.815226, 25.428766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.988557, 16.883190, 25.303719>,  <11.212851, 16.923969, 25.228691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.988557, 16.883190, 25.303719>,  <10.614734, 16.815226, 25.428766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.988557, 16.883190, 25.303719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339321, -0.161239, 0.926749,
		0.107059, -0.972179, -0.208342,
		0.934559, 0.169912, -0.312618,
		11.268925, 16.934164, 25.209932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.055689, 16.187477, 25.605515>,  <10.614734, 16.815226, 25.428766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.055689, 16.187477, 25.605515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.304781, 16.498585, 25.571390>,  <11.454236, 16.685249, 25.550915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.304781, 16.498585, 25.571390>,  <11.055689, 16.187477, 25.605515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.304781, 16.498585, 25.571390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387783, -0.212092, 0.897018,
		0.679581, -0.591683, -0.433682,
		0.622731, 0.777771, -0.085311,
		11.491600, 16.731916, 25.545797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.716914, 15.929143, 25.901920>,  <11.055689, 16.187477, 25.605515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.716914, 15.929143, 25.901920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.726997, 16.328915, 25.910929>,  <11.733047, 16.568777, 25.916334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.726997, 16.328915, 25.910929>,  <11.716914, 15.929143, 25.901920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.726997, 16.328915, 25.910929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516136, -0.032303, 0.855897,
		0.856136, -0.009953, -0.516655,
		0.025209, 0.999429, 0.022519,
		11.734560, 16.628744, 25.917685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.350195, 16.139990, 26.100609>,  <11.716914, 15.929143, 25.901920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.350195, 16.139990, 26.100609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.149657, 16.470739, 26.202534>,  <12.029334, 16.669189, 26.263689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.149657, 16.470739, 26.202534>,  <12.350195, 16.139990, 26.100609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.149657, 16.470739, 26.202534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442440, -0.008091, 0.896762,
		0.743572, 0.562326, -0.361787,
		-0.501345, 0.826876, 0.254812,
		11.999253, 16.718801, 26.278976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.810073, 16.400976, 26.673187>,  <12.350195, 16.139990, 26.100609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.810073, 16.400976, 26.673187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.489270, 16.636532, 26.713184>,  <12.296789, 16.777864, 26.737183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.489270, 16.636532, 26.713184>,  <12.810073, 16.400976, 26.673187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.489270, 16.636532, 26.713184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278090, 0.219966, 0.935030,
		0.528632, 0.777706, -0.340178,
		-0.802006, 0.588887, 0.099991,
		12.248669, 16.813198, 26.743181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.074476, 17.002951, 26.899569>,  <12.810073, 16.400976, 26.673187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.074476, 17.002951, 26.899569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.690093, 17.003222, 27.010244>,  <12.459463, 17.003384, 27.076651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.690093, 17.003222, 27.010244>,  <13.074476, 17.002951, 26.899569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.690093, 17.003222, 27.010244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263589, 0.306324, 0.914706,
		-0.084136, 0.951927, -0.294544,
		-0.960959, 0.000679, 0.276690,
		12.401805, 17.003426, 27.093252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.857139, 17.639898, 27.113373>,  <13.074476, 17.002951, 26.899569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.857139, 17.639898, 27.113373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.601294, 17.382706, 27.281881>,  <12.447786, 17.228390, 27.382986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.601294, 17.382706, 27.281881>,  <12.857139, 17.639898, 27.113373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.601294, 17.382706, 27.281881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148356, 0.434476, 0.888381,
		-0.754245, 0.630719, -0.182506,
		-0.639613, -0.642981, 0.421272,
		12.409410, 17.189812, 27.408262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.562373, 18.006285, 27.558897>,  <12.857139, 17.639898, 27.113373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.562373, 18.006285, 27.558897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.481158, 17.634495, 27.682087>,  <12.432429, 17.411421, 27.756001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.481158, 17.634495, 27.682087>,  <12.562373, 18.006285, 27.558897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.481158, 17.634495, 27.682087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112069, 0.290400, 0.950320,
		-0.972736, 0.227465, 0.045204,
		-0.203037, -0.929477, 0.307975,
		12.420247, 17.355652, 27.774479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.065995, 18.084320, 28.065268>,  <12.562373, 18.006285, 27.558897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.065995, 18.084320, 28.065268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.243914, 17.733374, 28.137251>,  <12.350664, 17.522806, 28.180441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.243914, 17.733374, 28.137251>,  <12.065995, 18.084320, 28.065268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.243914, 17.733374, 28.137251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313908, 0.340898, 0.886143,
		-0.838820, -0.337663, 0.427043,
		0.444795, -0.877367, 0.179957,
		12.377353, 17.470163, 28.191238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.847440, 17.744274, 28.692604>,  <12.065995, 18.084320, 28.065268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.847440, 17.744274, 28.692604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.214626, 17.600296, 28.625938>,  <12.434938, 17.513908, 28.585939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.214626, 17.600296, 28.625938>,  <11.847440, 17.744274, 28.692604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.214626, 17.600296, 28.625938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245782, 0.186373, 0.951239,
		-0.311334, -0.914168, 0.259553,
		0.917967, -0.359947, -0.166662,
		12.490016, 17.492311, 28.575939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.997297, 17.509159, 29.473410>,  <11.847440, 17.744274, 28.692604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.997297, 17.509159, 29.473410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.330976, 17.475676, 29.255379>,  <12.531183, 17.455585, 29.124559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.330976, 17.475676, 29.255379>,  <11.997297, 17.509159, 29.473410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.330976, 17.475676, 29.255379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533895, -0.124933, 0.836270,
		-0.138104, -0.988627, -0.059525,
		0.834196, -0.083712, -0.545077,
		12.581235, 17.450563, 29.091856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.313579, 16.900331, 29.757671>,  <11.997297, 17.509159, 29.473410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.313579, 16.900331, 29.757671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.568223, 17.141344, 29.565138>,  <12.721010, 17.285952, 29.449617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.568223, 17.141344, 29.565138>,  <12.313579, 16.900331, 29.757671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.568223, 17.141344, 29.565138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652406, -0.087975, 0.752746,
		0.411208, -0.793232, -0.449101,
		0.636612, 0.602531, -0.481333,
		12.759207, 17.322104, 29.420738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.982372, 16.769129, 30.064728>,  <12.313579, 16.900331, 29.757671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.982372, 16.769129, 30.064728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.072554, 17.102654, 29.863161>,  <13.126662, 17.302769, 29.742222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.072554, 17.102654, 29.863161>,  <12.982372, 16.769129, 30.064728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.072554, 17.102654, 29.863161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727802, 0.199706, 0.656065,
		0.647669, -0.514664, -0.561824,
		0.225454, 0.833810, -0.503917,
		13.140190, 17.352797, 29.711987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.697682, 16.787325, 29.989964>,  <12.982372, 16.769129, 30.064728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.697682, 16.787325, 29.989964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.562703, 17.163637, 29.976946>,  <13.481716, 17.389425, 29.969135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.562703, 17.163637, 29.976946>,  <13.697682, 16.787325, 29.989964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.562703, 17.163637, 29.976946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521185, 0.215508, 0.825786,
		0.783897, 0.261699, -0.563044,
		-0.337448, 0.940782, -0.032543,
		13.461469, 17.445871, 29.967182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.341000, 17.223841, 30.068329>,  <13.697682, 16.787325, 29.989964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.341000, 17.223841, 30.068329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.044757, 17.481018, 30.146435>,  <13.867011, 17.635324, 30.193298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.044757, 17.481018, 30.146435>,  <14.341000, 17.223841, 30.068329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.044757, 17.481018, 30.146435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523397, 0.369753, 0.767684,
		0.421376, 0.670752, -0.610355,
		-0.740606, 0.642942, 0.195264,
		13.822575, 17.673901, 30.205013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.689753, 17.801113, 30.229326>,  <14.341000, 17.223841, 30.068329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.689753, 17.801113, 30.229326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.328986, 17.821140, 30.400925>,  <14.112526, 17.833157, 30.503883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.328986, 17.821140, 30.400925>,  <14.689753, 17.801113, 30.229326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.328986, 17.821140, 30.400925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422879, 0.304415, 0.853525,
		-0.087859, 0.951223, -0.295730,
		-0.901917, 0.050068, 0.428998,
		14.058411, 17.836161, 30.529623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.730989, 18.367701, 30.617640>,  <14.689753, 17.801113, 30.229326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.730989, 18.367701, 30.617640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.414359, 18.197140, 30.792725>,  <14.224381, 18.094803, 30.897776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.414359, 18.197140, 30.792725>,  <14.730989, 18.367701, 30.617640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.414359, 18.197140, 30.792725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446251, 0.085975, 0.890768,
		-0.417457, 0.900439, 0.122226,
		-0.791574, -0.426401, 0.437713,
		14.176887, 18.069220, 30.924038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.662467, 18.672421, 31.298588>,  <14.730989, 18.367701, 30.617640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.662467, 18.672421, 31.298588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.455003, 18.332247, 31.333807>,  <14.330524, 18.128143, 31.354939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.455003, 18.332247, 31.333807>,  <14.662467, 18.672421, 31.298588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.455003, 18.332247, 31.333807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175417, -0.005054, 0.984481,
		-0.836792, 0.526057, 0.151802,
		-0.518660, -0.850434, 0.088050,
		14.299405, 18.077116, 31.360222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.191773, 18.766405, 31.875027>,  <14.662467, 18.672421, 31.298588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.191773, 18.766405, 31.875027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.230108, 18.374561, 31.804390>,  <14.253109, 18.139456, 31.762009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.230108, 18.374561, 31.804390>,  <14.191773, 18.766405, 31.875027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.230108, 18.374561, 31.804390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238272, -0.149673, 0.959596,
		-0.966458, -0.134042, 0.219069,
		0.095837, -0.979608, -0.176591,
		14.258860, 18.080679, 31.751413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.608667, 18.451593, 32.215546>,  <14.191773, 18.766405, 31.875027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.608667, 18.451593, 32.215546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.920688, 18.203259, 32.184353>,  <14.107900, 18.054256, 32.165638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.920688, 18.203259, 32.184353>,  <13.608667, 18.451593, 32.215546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.920688, 18.203259, 32.184353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065868, -0.205408, 0.976457,
		-0.622241, -0.756549, -0.201122,
		0.780050, -0.620839, -0.077981,
		14.154703, 18.017008, 32.160957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.006107, 18.382088, 32.839851>,  <13.608667, 18.451593, 32.215546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.006107, 18.382088, 32.839851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.190392, 18.400557, 33.194389>,  <14.300963, 18.411638, 33.407112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.190392, 18.400557, 33.194389>,  <14.006107, 18.382088, 32.839851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.190392, 18.400557, 33.194389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778807, -0.457933, 0.428668,
		0.425680, -0.887787, -0.175018,
		0.460712, 0.046171, 0.886348,
		14.328607, 18.414408, 33.460293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.731110, 18.293737, 32.822594>,  <14.006107, 18.382088, 32.839851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.731110, 18.293737, 32.822594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.909502, 18.614494, 32.663563>,  <15.016538, 18.806950, 32.568146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.909502, 18.614494, 32.663563>,  <14.731110, 18.293737, 32.822594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.909502, 18.614494, 32.663563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889695, -0.348692, 0.294715,
		0.097699, -0.485159, -0.868951,
		0.445980, 0.801895, -0.397576,
		15.043296, 18.855062, 32.544289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.982877, 18.262955, 32.154663>,  <14.731110, 18.293737, 32.822594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.982877, 18.262955, 32.154663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.197711, 18.514013, 32.380089>,  <15.326612, 18.664648, 32.515343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.197711, 18.514013, 32.380089>,  <14.982877, 18.262955, 32.154663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.197711, 18.514013, 32.380089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779979, -0.623927, -0.048462,
		0.321203, 0.465593, -0.824652,
		0.537086, 0.627645, 0.563560,
		15.358837, 18.702307, 32.549156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.646773, 18.151197, 32.063656>,  <14.982877, 18.262955, 32.154663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.646773, 18.151197, 32.063656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.693726, 18.357351, 32.403210>,  <15.721897, 18.481043, 32.606941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.693726, 18.357351, 32.403210>,  <15.646773, 18.151197, 32.063656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.693726, 18.357351, 32.403210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959920, -0.277949, 0.036016,
		0.254508, 0.810632, -0.527353,
		0.117381, 0.515384, 0.848882,
		15.728940, 18.511967, 32.657875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.339310, 18.504429, 32.107502>,  <15.646773, 18.151197, 32.063656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.339310, 18.504429, 32.107502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.195238, 18.459576, 32.477951>,  <16.108795, 18.432663, 32.700218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.195238, 18.459576, 32.477951>,  <16.339310, 18.504429, 32.107502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.195238, 18.459576, 32.477951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754148, -0.619356, 0.218308,
		0.549117, 0.777062, 0.307645,
		-0.360181, -0.112133, 0.926119,
		16.087183, 18.425936, 32.755787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.825148, 18.722353, 32.517086>,  <16.339310, 18.504429, 32.107502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.825148, 18.722353, 32.517086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.579840, 18.445547, 32.669411>,  <16.432655, 18.279463, 32.760803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.579840, 18.445547, 32.669411>,  <16.825148, 18.722353, 32.517086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.579840, 18.445547, 32.669411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788799, -0.561703, 0.249572,
		0.041194, 0.453436, 0.890336,
		-0.613269, -0.692015, 0.380809,
		16.395859, 18.237942, 32.783653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.926834, 18.582172, 33.299461>,  <16.825148, 18.722353, 32.517086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.926834, 18.582172, 33.299461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.833162, 18.302929, 33.028816>,  <16.776958, 18.135384, 32.866428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.833162, 18.302929, 33.028816>,  <16.926834, 18.582172, 33.299461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.833162, 18.302929, 33.028816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895806, -0.425363, 0.128833,
		-0.377745, -0.575943, 0.724981,
		-0.234180, -0.698109, -0.676612,
		16.762909, 18.093496, 32.825832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.916437, 17.822161, 33.537323>,  <16.926834, 18.582172, 33.299461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.916437, 17.822161, 33.537323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.007288, 17.866035, 33.150257>,  <17.061798, 17.892361, 32.918018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.007288, 17.866035, 33.150257>,  <16.916437, 17.822161, 33.537323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.007288, 17.866035, 33.150257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904854, -0.391151, 0.168047,
		-0.360071, -0.913767, -0.188094,
		0.227128, 0.109689, -0.967668,
		17.075426, 17.898943, 32.859955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.129454, 17.179941, 33.313923>,  <16.916437, 17.822161, 33.537323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.129454, 17.179941, 33.313923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.302027, 17.478613, 33.111404>,  <17.405571, 17.657816, 32.989895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.302027, 17.478613, 33.111404>,  <17.129454, 17.179941, 33.313923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.302027, 17.478613, 33.111404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902103, -0.351655, 0.250097,
		0.008701, -0.564630, -0.825298,
		0.431433, 0.746680, -0.506295,
		17.431458, 17.702618, 32.959515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.695072, 17.038872, 32.800987>,  <17.129454, 17.179941, 33.313923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.695072, 17.038872, 32.800987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.757891, 17.406509, 32.945545>,  <17.795582, 17.627092, 33.032280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.757891, 17.406509, 32.945545>,  <17.695072, 17.038872, 32.800987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.757891, 17.406509, 32.945545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898763, -0.284681, 0.333440,
		0.409344, 0.272440, -0.870755,
		0.157045, 0.919094, 0.361391,
		17.805004, 17.682238, 33.053963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.878555, 16.968479, 32.578087>,  <17.695072, 17.038872, 32.800987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.878555, 16.968479, 32.578087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.560266, 17.077864, 32.361923>,  <16.369293, 17.143494, 32.232224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.560266, 17.077864, 32.361923>,  <16.878555, 16.968479, 32.578087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.560266, 17.077864, 32.361923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353118, -0.515451, -0.780780,
		-0.492064, -0.812115, 0.313595,
		-0.795727, 0.273458, -0.540407,
		16.321548, 17.159903, 32.199802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.725887, 16.339436, 32.120007>,  <16.878555, 16.968479, 32.578087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.725887, 16.339436, 32.120007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.541330, 16.644215, 31.938213>,  <16.430597, 16.827082, 31.829138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.541330, 16.644215, 31.938213>,  <16.725887, 16.339436, 32.120007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.541330, 16.644215, 31.938213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284421, -0.358196, -0.889270,
		-0.840371, -0.539564, -0.051446,
		-0.461390, 0.761949, -0.454481,
		16.402914, 16.872799, 31.801868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.333620, 16.098377, 31.639425>,  <16.725887, 16.339436, 32.120007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.333620, 16.098377, 31.639425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.348637, 16.468513, 31.488516>,  <16.357647, 16.690596, 31.397970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.348637, 16.468513, 31.488516>,  <16.333620, 16.098377, 31.639425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.348637, 16.468513, 31.488516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274291, -0.372581, -0.886537,
		-0.960914, -0.070202, -0.267799,
		0.037540, 0.925341, -0.377274,
		16.359900, 16.746117, 31.375334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.008080, 16.063675, 31.097183>,  <16.333620, 16.098377, 31.639425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.008080, 16.063675, 31.097183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.205841, 16.405581, 31.034014>,  <16.324499, 16.610723, 30.996113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.205841, 16.405581, 31.034014>,  <16.008080, 16.063675, 31.097183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.205841, 16.405581, 31.034014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077970, -0.224560, -0.971336,
		-0.865728, 0.467920, -0.177670,
		0.494405, 0.854765, -0.157924,
		16.354162, 16.662010, 30.986637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.718105, 16.257267, 30.504557>,  <16.008080, 16.063675, 31.097183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.718105, 16.257267, 30.504557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.070532, 16.445900, 30.519175>,  <16.281988, 16.559080, 30.527945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.070532, 16.445900, 30.519175>,  <15.718105, 16.257267, 30.504557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.070532, 16.445900, 30.519175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023646, 0.033250, -0.999167,
		-0.472403, 0.881196, 0.018145,
		0.881066, 0.471580, 0.036544,
		16.334852, 16.587374, 30.530138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.685659, 16.849140, 30.104342>,  <15.718105, 16.257267, 30.504557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.685659, 16.849140, 30.104342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.084335, 16.821165, 30.120922>,  <16.323542, 16.804380, 30.130871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.084335, 16.821165, 30.120922>,  <15.685659, 16.849140, 30.104342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.084335, 16.821165, 30.120922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058710, 0.266484, -0.962050,
		0.056235, 0.961299, 0.269707,
		0.996690, -0.069935, 0.041452,
		16.383343, 16.800184, 30.133358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.949563, 17.389708, 29.658155>,  <15.685659, 16.849140, 30.104342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.949563, 17.389708, 29.658155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.220984, 17.100969, 29.712574>,  <16.383837, 16.927727, 29.745226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.220984, 17.100969, 29.712574>,  <15.949563, 17.389708, 29.658155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.220984, 17.100969, 29.712574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089647, -0.102449, -0.990690,
		0.729061, 0.684431, -0.004806,
		0.678552, -0.721843, 0.136049,
		16.424549, 16.884417, 29.753389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.443512, 17.605108, 29.236061>,  <15.949563, 17.389708, 29.658155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.443512, 17.605108, 29.236061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.513073, 17.217985, 29.308844>,  <16.554810, 16.985712, 29.352512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.513073, 17.217985, 29.308844>,  <16.443512, 17.605108, 29.236061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.513073, 17.217985, 29.308844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140313, -0.158532, -0.977333,
		0.974715, 0.195491, 0.108227,
		0.173902, -0.967807, 0.181954,
		16.565243, 16.927643, 29.363430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.989363, 17.579561, 28.881826>,  <16.443512, 17.605108, 29.236061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.989363, 17.579561, 28.881826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.863277, 17.203928, 28.936615>,  <16.787626, 16.978548, 28.969488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.863277, 17.203928, 28.936615>,  <16.989363, 17.579561, 28.881826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.863277, 17.203928, 28.936615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148876, -0.191474, -0.970141,
		0.937270, -0.285411, 0.200163,
		-0.315215, -0.939084, 0.136972,
		16.768713, 16.922203, 28.977707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.436323, 17.167984, 28.395084>,  <16.989363, 17.579561, 28.881826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.436323, 17.167984, 28.395084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.131678, 16.924595, 28.484262>,  <16.948891, 16.778561, 28.537769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.131678, 16.924595, 28.484262>,  <17.436323, 17.167984, 28.395084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.131678, 16.924595, 28.484262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074830, -0.424309, -0.902420,
		0.643695, -0.670614, 0.368692,
		-0.761615, -0.608473, 0.222944,
		16.903193, 16.742054, 28.551146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.631134, 16.482481, 28.127069>,  <17.436323, 17.167984, 28.395084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.631134, 16.482481, 28.127069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.236641, 16.491837, 28.192549>,  <16.999945, 16.497450, 28.231836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.236641, 16.491837, 28.192549>,  <17.631134, 16.482481, 28.127069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.236641, 16.491837, 28.192549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162401, -0.323405, -0.932221,
		0.031139, -0.945971, 0.322751,
		-0.986233, 0.023387, 0.163697,
		16.940771, 16.498854, 28.241657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.327862, 15.765665, 27.892742>,  <17.631134, 16.482481, 28.127069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.327862, 15.765665, 27.892742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.041401, 16.044571, 27.905043>,  <16.869524, 16.211914, 27.912424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.041401, 16.044571, 27.905043>,  <17.327862, 15.765665, 27.892742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.041401, 16.044571, 27.905043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308692, -0.276922, -0.909958,
		-0.625967, -0.661162, 0.413559,
		-0.716153, 0.697266, 0.030752,
		16.826555, 16.253750, 27.914268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.774038, 15.410036, 27.785456>,  <17.327862, 15.765665, 27.892742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.774038, 15.410036, 27.785456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.656092, 15.779712, 27.688354>,  <16.585323, 16.001516, 27.630095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.656092, 15.779712, 27.688354>,  <16.774038, 15.410036, 27.785456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.656092, 15.779712, 27.688354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385380, -0.347491, -0.854829,
		-0.874378, -0.158507, 0.458627,
		-0.294865, 0.924189, -0.242754,
		16.567633, 16.056969, 27.615528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.055950, 15.233776, 27.679972>,  <16.774038, 15.410036, 27.785456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.055950, 15.233776, 27.679972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.123671, 15.582140, 27.495426>,  <16.164303, 15.791158, 27.384699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.123671, 15.582140, 27.495426>,  <16.055950, 15.233776, 27.679972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.123671, 15.582140, 27.495426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491468, -0.331161, -0.805476,
		-0.854281, 0.363111, 0.371959,
		0.169299, 0.870909, -0.461362,
		16.174459, 15.843412, 27.357018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.330074, 15.467998, 27.466358>,  <16.055950, 15.233776, 27.679972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.330074, 15.467998, 27.466358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.608310, 15.638437, 27.234982>,  <15.775251, 15.740702, 27.096155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.608310, 15.638437, 27.234982>,  <15.330074, 15.467998, 27.466358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.608310, 15.638437, 27.234982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555713, -0.191188, -0.809092,
		-0.455345, 0.884243, 0.103801,
		0.695589, 0.426100, -0.578442,
		15.816986, 15.766267, 27.061449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.942673, 15.984340, 27.081558>,  <15.330074, 15.467998, 27.466358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.942673, 15.984340, 27.081558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.263921, 15.850981, 26.884035>,  <15.456670, 15.770966, 26.765522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.263921, 15.850981, 26.884035>,  <14.942673, 15.984340, 27.081558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.263921, 15.850981, 26.884035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556830, -0.125108, -0.821151,
		0.211990, 0.934449, -0.286123,
		0.803119, -0.333397, -0.493807,
		15.504856, 15.750961, 26.735893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.791692, 16.298038, 26.535484>,  <14.942673, 15.984340, 27.081558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.791692, 16.298038, 26.535484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.112391, 16.110313, 26.387457>,  <15.304810, 15.997679, 26.298641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.112391, 16.110313, 26.387457>,  <14.791692, 16.298038, 26.535484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.112391, 16.110313, 26.387457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472461, -0.118457, -0.873354,
		0.366038, 0.875051, -0.316704,
		0.801746, -0.469311, -0.370068,
		15.352914, 15.969520, 26.276436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.936246, 16.601345, 25.836178>,  <14.791692, 16.298038, 26.535484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.936246, 16.601345, 25.836178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.112137, 16.242147, 25.842434>,  <15.217671, 16.026628, 25.846188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.112137, 16.242147, 25.842434>,  <14.936246, 16.601345, 25.836178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.112137, 16.242147, 25.842434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245546, -0.136953, -0.959662,
		0.863914, 0.418149, -0.280721,
		0.439727, -0.897995, 0.015640,
		15.244055, 15.972749, 25.847126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.353803, 16.537876, 25.249117>,  <14.936246, 16.601345, 25.836178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.353803, 16.537876, 25.249117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.221295, 16.186497, 25.386862>,  <15.141790, 15.975669, 25.469509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.221295, 16.186497, 25.386862>,  <15.353803, 16.537876, 25.249117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.221295, 16.186497, 25.386862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151238, -0.310816, -0.938361,
		0.931337, -0.362930, -0.029891,
		-0.331269, -0.878450, 0.344363,
		15.121915, 15.922961, 25.490171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.387411, 16.202232, 24.596561>,  <15.353803, 16.537876, 25.249117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.387411, 16.202232, 24.596561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.208076, 15.940958, 24.840641>,  <15.100476, 15.784193, 24.987089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.208076, 15.940958, 24.840641>,  <15.387411, 16.202232, 24.596561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.208076, 15.940958, 24.840641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488931, -0.392272, -0.779146,
		0.748293, -0.647663, -0.143495,
		-0.448335, -0.653188, 0.610197,
		15.073576, 15.745002, 25.023701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.388984, 15.557786, 24.297810>,  <15.387411, 16.202232, 24.596561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.388984, 15.557786, 24.297810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.086730, 15.519370, 24.556976>,  <14.905378, 15.496321, 24.712477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.086730, 15.519370, 24.556976>,  <15.388984, 15.557786, 24.297810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.086730, 15.519370, 24.556976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568728, -0.394488, -0.721754,
		0.324911, -0.913869, 0.243468,
		-0.755634, -0.096039, 0.647916,
		14.860040, 15.490559, 24.751350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.187953, 14.859922, 24.330118>,  <15.388984, 15.557786, 24.297810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.187953, 14.859922, 24.330118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.866054, 15.049882, 24.472582>,  <14.672914, 15.163857, 24.558060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.866054, 15.049882, 24.472582>,  <15.187953, 14.859922, 24.330118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.866054, 15.049882, 24.472582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581613, -0.510755, -0.633132,
		-0.118765, -0.716659, 0.687237,
		-0.804749, 0.474900, 0.356158,
		14.624629, 15.192352, 24.579430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.701967, 14.346385, 24.388607>,  <15.187953, 14.859922, 24.330118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.701967, 14.346385, 24.388607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.487354, 14.681961, 24.352137>,  <14.358586, 14.883307, 24.330254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.487354, 14.681961, 24.352137>,  <14.701967, 14.346385, 24.388607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.487354, 14.681961, 24.352137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595695, -0.453050, -0.663245,
		-0.597730, -0.301539, 0.742828,
		-0.536532, 0.838940, -0.091176,
		14.326394, 14.933643, 24.324783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.950491, 14.146564, 24.458469>,  <14.701967, 14.346385, 24.388607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.950491, 14.146564, 24.458469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.939352, 14.503512, 24.278294>,  <13.932669, 14.717682, 24.170189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.939352, 14.503512, 24.278294>,  <13.950491, 14.146564, 24.458469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.939352, 14.503512, 24.278294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715851, -0.332317, -0.614104,
		-0.697698, 0.305347, 0.648059,
		-0.027846, 0.892373, -0.450439,
		13.930998, 14.771224, 24.143162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.264045, 14.139424, 24.224276>,  <13.950491, 14.146564, 24.458469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.264045, 14.139424, 24.224276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.455420, 14.434253, 24.033354>,  <13.570246, 14.611150, 23.918800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.455420, 14.434253, 24.033354>,  <13.264045, 14.139424, 24.224276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.455420, 14.434253, 24.033354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596881, -0.125707, -0.792421,
		-0.644072, 0.664021, 0.379801,
		0.478440, 0.737072, -0.477306,
		13.598952, 14.655375, 23.890162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.766351, 14.464211, 23.829309>,  <13.264045, 14.139424, 24.224276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.766351, 14.464211, 23.829309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.114186, 14.576157, 23.666586>,  <13.322887, 14.643324, 23.568953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.114186, 14.576157, 23.666586>,  <12.766351, 14.464211, 23.829309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.114186, 14.576157, 23.666586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344449, -0.246495, -0.905867,
		-0.353794, 0.927856, -0.117951,
		0.869589, 0.279862, -0.406808,
		13.375063, 14.660115, 23.544544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.540664, 14.749930, 23.196543>,  <12.766351, 14.464211, 23.829309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.540664, 14.749930, 23.196543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.930035, 14.662361, 23.169682>,  <13.163657, 14.609819, 23.153564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.930035, 14.662361, 23.169682>,  <12.540664, 14.749930, 23.196543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.930035, 14.662361, 23.169682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108990, -0.185033, -0.976670,
		0.201391, 0.958037, -0.203977,
		0.973428, -0.218924, -0.067153,
		13.222063, 14.596684, 23.149536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.829434, 15.272367, 22.756922>,  <12.540664, 14.749930, 23.196543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.829434, 15.272367, 22.756922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.044179, 14.934898, 22.756981>,  <13.173025, 14.732417, 22.757015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.044179, 14.934898, 22.756981>,  <12.829434, 15.272367, 22.756922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.044179, 14.934898, 22.756981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177842, -0.113336, -0.977511,
		0.824714, 0.524761, -0.210886,
		0.536861, -0.843671, 0.000146,
		13.205237, 14.681797, 22.757025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.114239, 15.227195, 22.128616>,  <12.829434, 15.272367, 22.756922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.114239, 15.227195, 22.128616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.210868, 14.849677, 22.218855>,  <13.268846, 14.623166, 22.272999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.210868, 14.849677, 22.218855>,  <13.114239, 15.227195, 22.128616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.210868, 14.849677, 22.218855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019467, -0.237151, -0.971278,
		0.970187, 0.230243, -0.075662,
		0.241574, -0.943794, 0.225598,
		13.283340, 14.566539, 22.286535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.578025, 15.092318, 21.610277>,  <13.114239, 15.227195, 22.128616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.578025, 15.092318, 21.610277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.427210, 14.753057, 21.759130>,  <13.336721, 14.549501, 21.848442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.427210, 14.753057, 21.759130>,  <13.578025, 15.092318, 21.610277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.427210, 14.753057, 21.759130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053311, -0.381247, -0.922935,
		0.924663, -0.367819, 0.098528,
		-0.377036, -0.848151, 0.372133,
		13.314099, 14.498612, 21.870771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.962559, 14.560370, 21.307383>,  <13.578025, 15.092318, 21.610277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.962559, 14.560370, 21.307383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.611535, 14.407377, 21.423033>,  <13.400921, 14.315581, 21.492424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.611535, 14.407377, 21.423033>,  <13.962559, 14.560370, 21.307383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.611535, 14.407377, 21.423033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186061, -0.284101, -0.940568,
		0.441894, -0.879200, 0.178151,
		-0.877560, -0.382484, 0.289128,
		13.348267, 14.292632, 21.509771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.876333, 13.916880, 20.845551>,  <13.962559, 14.560370, 21.307383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.876333, 13.916880, 20.845551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.511502, 14.000486, 20.986647>,  <13.292603, 14.050651, 21.071304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.511502, 14.000486, 20.986647>,  <13.876333, 13.916880, 20.845551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.511502, 14.000486, 20.986647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388849, -0.168105, -0.905835,
		-0.130030, -0.963357, 0.234597,
		-0.912080, 0.209008, 0.352741,
		13.237879, 14.063191, 21.092468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.498431, 13.230167, 20.716137>,  <13.876333, 13.916880, 20.845551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.498431, 13.230167, 20.716137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.279265, 13.561094, 20.765667>,  <13.147766, 13.759651, 20.795385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.279265, 13.561094, 20.765667>,  <13.498431, 13.230167, 20.716137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.279265, 13.561094, 20.765667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394754, -0.125205, -0.910216,
		-0.737535, -0.547602, 0.395189,
		-0.547916, 0.827318, 0.123825,
		13.114891, 13.809290, 20.802814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.861115, 13.096377, 20.628887>,  <13.498431, 13.230167, 20.716137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.861115, 13.096377, 20.628887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.838604, 13.489452, 20.558279>,  <12.825097, 13.725297, 20.515913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.838604, 13.489452, 20.558279>,  <12.861115, 13.096377, 20.628887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.838604, 13.489452, 20.558279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496431, -0.180939, -0.849010,
		-0.866250, 0.039851, 0.498019,
		-0.056277, 0.982687, -0.176521,
		12.821721, 13.784259, 20.505323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.128271, 13.307405, 20.290192>,  <12.861115, 13.096377, 20.628887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.128271, 13.307405, 20.290192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.366333, 13.613995, 20.193604>,  <12.509171, 13.797949, 20.135651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.366333, 13.613995, 20.193604>,  <12.128271, 13.307405, 20.290192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.366333, 13.613995, 20.193604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461334, 0.079841, -0.883627,
		-0.657998, 0.637293, 0.401118,
		0.595155, 0.766474, -0.241470,
		12.544880, 13.843937, 20.121162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.708499, 13.824428, 20.159744>,  <12.128271, 13.307405, 20.290192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.708499, 13.824428, 20.159744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.048938, 13.904490, 19.965601>,  <12.253201, 13.952528, 19.849115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.048938, 13.904490, 19.965601>,  <11.708499, 13.824428, 20.159744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.048938, 13.904490, 19.965601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507092, 0.073950, -0.858714,
		-0.135986, 0.976969, 0.164437,
		0.851097, 0.200158, -0.485357,
		12.304267, 13.964538, 19.819994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.458860, 14.301586, 19.782520>,  <11.708499, 13.824428, 20.159744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.458860, 14.301586, 19.782520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.802136, 14.165465, 19.628792>,  <12.008102, 14.083793, 19.536554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.802136, 14.165465, 19.628792>,  <11.458860, 14.301586, 19.782520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.802136, 14.165465, 19.628792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389482, 0.056036, -0.919328,
		0.334386, 0.938645, -0.084452,
		0.858190, -0.340303, -0.384323,
		12.059593, 14.063375, 19.513494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.584560, 14.748706, 19.201065>,  <11.458860, 14.301586, 19.782520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.584560, 14.748706, 19.201065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.820839, 14.436380, 19.119667>,  <11.962606, 14.248985, 19.070829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.820839, 14.436380, 19.119667>,  <11.584560, 14.748706, 19.201065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.820839, 14.436380, 19.119667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355693, -0.025605, -0.934252,
		0.724265, 0.624240, -0.292854,
		0.590696, -0.780813, -0.203493,
		11.998048, 14.202137, 19.058619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.578361, 14.823741, 18.535221>,  <11.584560, 14.748706, 19.201065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.578361, 14.823741, 18.535221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.756925, 14.467930, 18.574121>,  <11.864063, 14.254443, 18.597462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.756925, 14.467930, 18.574121>,  <11.578361, 14.823741, 18.535221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.756925, 14.467930, 18.574121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321553, -0.260886, -0.910243,
		0.835059, 0.375069, -0.402492,
		0.446409, -0.889529, 0.097251,
		11.890847, 14.201071, 18.603296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.089135, 14.777868, 17.912148>,  <11.578361, 14.823741, 18.535221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.089135, 14.777868, 17.912148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.965605, 14.434361, 18.075680>,  <11.891486, 14.228256, 18.173800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.965605, 14.434361, 18.075680>,  <12.089135, 14.777868, 17.912148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.965605, 14.434361, 18.075680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406435, -0.269463, -0.873041,
		0.859905, -0.435781, -0.265816,
		-0.308827, -0.858770, 0.408829,
		11.872956, 14.176729, 18.198328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.617668, 15.286581, 17.952667>,  <12.089135, 14.777868, 17.912148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.617668, 15.286581, 17.952667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.966866, 15.308331, 17.758793>,  <13.176386, 15.321381, 17.642467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.966866, 15.308331, 17.758793>,  <12.617668, 15.286581, 17.952667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.966866, 15.308331, 17.758793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451979, 0.283245, 0.845864,
		0.183276, -0.957505, 0.222697,
		0.872997, 0.054372, -0.484685,
		13.228765, 15.324643, 17.613388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.190072, 14.935237, 18.382980>,  <12.617668, 15.286581, 17.952667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.190072, 14.935237, 18.382980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.357696, 15.206141, 18.141085>,  <13.458270, 15.368683, 17.995947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.357696, 15.206141, 18.141085>,  <13.190072, 14.935237, 18.382980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.357696, 15.206141, 18.141085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456410, 0.418649, 0.785126,
		0.784907, -0.605023, -0.133669,
		0.419059, 0.677259, -0.604740,
		13.483414, 15.409318, 17.959663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.951001, 14.985892, 18.550816>,  <13.190072, 14.935237, 18.382980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.951001, 14.985892, 18.550816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.826005, 15.322261, 18.374088>,  <13.751007, 15.524082, 18.268051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.826005, 15.322261, 18.374088>,  <13.951001, 14.985892, 18.550816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.826005, 15.322261, 18.374088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422272, 0.539600, 0.728366,
		0.850903, 0.041040, -0.523717,
		-0.312490, 0.840921, -0.441817,
		13.732258, 15.574537, 18.241543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.600759, 15.366318, 18.537777>,  <13.951001, 14.985892, 18.550816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.600759, 15.366318, 18.537777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.282008, 15.602695, 18.487541>,  <14.090758, 15.744522, 18.457399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.282008, 15.602695, 18.487541>,  <14.600759, 15.366318, 18.537777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.282008, 15.602695, 18.487541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308125, 0.576357, 0.756883,
		0.519661, 0.564444, -0.641370,
		-0.796876, 0.590945, -0.125591,
		14.042946, 15.779979, 18.449863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.864850, 15.990451, 18.487619>,  <14.600759, 15.366318, 18.537777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.864850, 15.990451, 18.487619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.484097, 16.038332, 18.600470>,  <14.255646, 16.067060, 18.668179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.484097, 16.038332, 18.600470>,  <14.864850, 15.990451, 18.487619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.484097, 16.038332, 18.600470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281349, 0.706318, 0.649583,
		-0.121513, 0.697701, -0.706008,
		-0.951881, 0.119702, 0.282124,
		14.198533, 16.074242, 18.685106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.752131, 16.670374, 18.479347>,  <14.864850, 15.990451, 18.487619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.752131, 16.670374, 18.479347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.491309, 16.503437, 18.732536>,  <14.334817, 16.403275, 18.884449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.491309, 16.503437, 18.732536>,  <14.752131, 16.670374, 18.479347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.491309, 16.503437, 18.732536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443979, 0.466561, 0.764986,
		-0.614582, 0.779836, -0.118930,
		-0.652052, -0.417344, 0.632971,
		14.295693, 16.378233, 18.922428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.654320, 17.207756, 18.887217>,  <14.752131, 16.670374, 18.479347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.654320, 17.207756, 18.887217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.509810, 16.894138, 19.089109>,  <14.423104, 16.705967, 19.210245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.509810, 16.894138, 19.089109>,  <14.654320, 17.207756, 18.887217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.509810, 16.894138, 19.089109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505888, 0.289898, 0.812426,
		-0.783300, 0.548846, 0.291906,
		-0.361274, -0.784045, 0.504732,
		14.401428, 16.658924, 19.240528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.335793, 17.544024, 19.348461>,  <14.654320, 17.207756, 18.887217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.335793, 17.544024, 19.348461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.378219, 17.176672, 19.500950>,  <14.403674, 16.956261, 19.592443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.378219, 17.176672, 19.500950>,  <14.335793, 17.544024, 19.348461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.378219, 17.176672, 19.500950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558886, 0.372155, 0.741045,
		-0.822433, 0.134460, 0.552742,
		0.106065, -0.918380, 0.381220,
		14.410038, 16.901157, 19.615316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.198610, 17.538551, 20.064751>,  <14.335793, 17.544024, 19.348461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.198610, 17.538551, 20.064751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.397327, 17.191673, 20.051081>,  <14.516558, 16.983545, 20.042879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.397327, 17.191673, 20.051081>,  <14.198610, 17.538551, 20.064751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.397327, 17.191673, 20.051081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429077, 0.211196, 0.878231,
		-0.754381, -0.450962, 0.477015,
		0.496792, -0.867196, -0.034175,
		14.546365, 16.931515, 20.040829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.020048, 17.174156, 20.666485>,  <14.198610, 17.538551, 20.064751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.020048, 17.174156, 20.666485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.364298, 17.018320, 20.535309>,  <14.570848, 16.924818, 20.456604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.364298, 17.018320, 20.535309>,  <14.020048, 17.174156, 20.666485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.364298, 17.018320, 20.535309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396522, 0.108614, 0.911577,
		-0.319522, -0.914562, 0.247957,
		0.860625, -0.389590, -0.327939,
		14.622485, 16.901443, 20.436928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.266703, 16.639801, 21.173519>,  <14.020048, 17.174156, 20.666485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.266703, 16.639801, 21.173519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.611250, 16.717527, 20.985781>,  <14.817979, 16.764164, 20.873138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.611250, 16.717527, 20.985781>,  <14.266703, 16.639801, 21.173519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.611250, 16.717527, 20.985781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453558, 0.121875, 0.882855,
		0.228755, -0.973338, 0.016845,
		0.861369, 0.194318, -0.469344,
		14.869660, 16.775822, 20.844978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.790383, 16.326403, 21.519100>,  <14.266703, 16.639801, 21.173519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.790383, 16.326403, 21.519100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.008565, 16.603277, 21.330059>,  <15.139474, 16.769402, 21.216635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.008565, 16.603277, 21.330059>,  <14.790383, 16.326403, 21.519100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.008565, 16.603277, 21.330059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549793, 0.130111, 0.825105,
		0.632619, -0.709892, -0.309591,
		0.545455, 0.692188, -0.472604,
		15.172201, 16.810934, 21.188278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.470097, 16.211250, 21.700933>,  <14.790383, 16.326403, 21.519100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.470097, 16.211250, 21.700933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.529703, 16.572521, 21.539904>,  <15.565467, 16.789284, 21.443285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.529703, 16.572521, 21.539904>,  <15.470097, 16.211250, 21.700933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.529703, 16.572521, 21.539904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669049, 0.207691, 0.713610,
		0.728127, -0.375681, -0.573320,
		0.149016, 0.903177, -0.402574,
		15.574408, 16.843473, 21.419132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.219494, 16.383595, 21.535587>,  <15.470097, 16.211250, 21.700933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.219494, 16.383595, 21.535587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.046150, 16.742659, 21.567610>,  <15.942144, 16.958097, 21.586823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.046150, 16.742659, 21.567610>,  <16.219494, 16.383595, 21.535587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.046150, 16.742659, 21.567610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702421, 0.280775, 0.654041,
		0.564628, 0.339667, -0.752211,
		-0.433358, 0.897659, 0.080056,
		15.916142, 17.011957, 21.591627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.735138, 16.932049, 21.483408>,  <16.219494, 16.383595, 21.535587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.735138, 16.932049, 21.483408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.422224, 17.090563, 21.675653>,  <16.234476, 17.185671, 21.791000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.422224, 17.090563, 21.675653>,  <16.735138, 16.932049, 21.483408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.422224, 17.090563, 21.675653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593046, 0.237714, 0.769278,
		0.190606, 0.886819, -0.420976,
		-0.782283, 0.396287, 0.480615,
		16.187540, 17.209450, 21.819838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.981178, 17.501814, 21.720142>,  <16.735138, 16.932049, 21.483408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.981178, 17.501814, 21.720142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.646858, 17.476257, 21.938265>,  <16.446266, 17.460924, 22.069138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.646858, 17.476257, 21.938265>,  <16.981178, 17.501814, 21.720142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.646858, 17.476257, 21.938265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510820, 0.273575, 0.814997,
		-0.201253, 0.959726, -0.196017,
		-0.835799, -0.063891, 0.545305,
		16.396118, 17.457090, 22.101856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.848063, 18.122868, 22.054688>,  <16.981178, 17.501814, 21.720142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.848063, 18.122868, 22.054688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.633501, 17.878120, 22.287199>,  <16.504765, 17.731272, 22.426706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.633501, 17.878120, 22.287199>,  <16.848063, 18.122868, 22.054688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.633501, 17.878120, 22.287199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428625, 0.395806, 0.812169,
		-0.727015, 0.684803, 0.049950,
		-0.536405, -0.611868, 0.581280,
		16.472580, 17.694559, 22.461582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.717325, 18.532129, 22.586777>,  <16.848063, 18.122868, 22.054688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.717325, 18.532129, 22.586777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.621645, 18.183710, 22.758385>,  <16.564236, 17.974659, 22.861349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.621645, 18.183710, 22.758385>,  <16.717325, 18.532129, 22.586777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.621645, 18.183710, 22.758385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395738, 0.316025, 0.862276,
		-0.886664, 0.376038, 0.269113,
		-0.239202, -0.871047, 0.429021,
		16.549885, 17.922396, 22.887091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.377647, 18.765877, 23.191387>,  <16.717325, 18.532129, 22.586777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.377647, 18.765877, 23.191387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.508301, 18.389648, 23.228571>,  <16.586693, 18.163912, 23.250881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.508301, 18.389648, 23.228571>,  <16.377647, 18.765877, 23.191387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.508301, 18.389648, 23.228571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308581, 0.199089, 0.930130,
		-0.893358, -0.275125, 0.355271,
		0.326633, -0.940569, 0.092959,
		16.606291, 18.107477, 23.256458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.036068, 18.573652, 23.772680>,  <16.377647, 18.765877, 23.191387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.036068, 18.573652, 23.772680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.334097, 18.312603, 23.717623>,  <16.512915, 18.155973, 23.684587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.334097, 18.312603, 23.717623>,  <16.036068, 18.573652, 23.772680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.334097, 18.312603, 23.717623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194479, 0.015171, 0.980789,
		-0.637999, -0.757529, 0.138225,
		0.745074, -0.652625, -0.137644,
		16.557619, 18.116816, 23.676329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.933251, 18.012014, 24.236710>,  <16.036068, 18.573652, 23.772680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.933251, 18.012014, 24.236710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.318388, 17.997971, 24.129599>,  <16.549469, 17.989544, 24.065332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.318388, 17.997971, 24.129599>,  <15.933251, 18.012014, 24.236710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.318388, 17.997971, 24.129599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262335, -0.114016, 0.958218,
		-0.064172, -0.992859, -0.100569,
		0.962840, -0.035108, -0.267778,
		16.607241, 17.987438, 24.049265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.203714, 17.377224, 24.560732>,  <15.933251, 18.012014, 24.236710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.203714, 17.377224, 24.560732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.531748, 17.600300, 24.509432>,  <16.728567, 17.734144, 24.478653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.531748, 17.600300, 24.509432>,  <16.203714, 17.377224, 24.560732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.531748, 17.600300, 24.509432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286112, -0.205507, 0.935899,
		0.495585, -0.804208, -0.328094,
		0.820083, 0.557689, -0.128248,
		16.777773, 17.767607, 24.470957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.801571, 16.993126, 24.887014>,  <16.203714, 17.377224, 24.560732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.801571, 16.993126, 24.887014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.894136, 17.381832, 24.868584>,  <16.949677, 17.615055, 24.857525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.894136, 17.381832, 24.868584>,  <16.801571, 16.993126, 24.887014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.894136, 17.381832, 24.868584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409571, -0.054353, 0.910658,
		0.882440, -0.229610, -0.410584,
		0.231413, 0.971764, -0.046078,
		16.963560, 17.673361, 24.854761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.414158, 17.011549, 25.237053>,  <16.801571, 16.993126, 24.887014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.414158, 17.011549, 25.237053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.313320, 17.398245, 25.254305>,  <17.252817, 17.630262, 25.264656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.313320, 17.398245, 25.254305>,  <17.414158, 17.011549, 25.237053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.313320, 17.398245, 25.254305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566018, 0.111157, 0.816864,
		0.784903, 0.230338, -0.575215,
		-0.252094, 0.966741, 0.043128,
		17.237692, 17.688267, 25.267242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.993004, 17.329439, 25.472570>,  <17.414158, 17.011549, 25.237053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.993004, 17.329439, 25.472570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.705559, 17.599463, 25.539377>,  <17.533092, 17.761477, 25.579462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.705559, 17.599463, 25.539377>,  <17.993004, 17.329439, 25.472570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.705559, 17.599463, 25.539377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482924, 0.311612, 0.818341,
		0.500382, 0.668727, -0.549929,
		-0.718612, 0.675057, 0.167019,
		17.489975, 17.801979, 25.589483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.363474, 17.994329, 25.660437>,  <17.993004, 17.329439, 25.472570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.363474, 17.994329, 25.660437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.994427, 18.020033, 25.812565>,  <17.772999, 18.035456, 25.903841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.994427, 18.020033, 25.812565>,  <18.363474, 17.994329, 25.660437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.994427, 18.020033, 25.812565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382106, 0.017784, 0.923947,
		0.052608, 0.997775, -0.040962,
		-0.922620, 0.064258, 0.380320,
		17.717640, 18.039310, 25.926661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.408554, 18.464355, 26.130487>,  <18.363474, 17.994329, 25.660437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.408554, 18.464355, 26.130487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.056658, 18.314440, 26.247509>,  <17.845520, 18.224491, 26.317722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.056658, 18.314440, 26.247509>,  <18.408554, 18.464355, 26.130487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.056658, 18.314440, 26.247509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276236, 0.097895, 0.956091,
		-0.386971, 0.921927, 0.017407,
		-0.879742, -0.374788, 0.292552,
		17.792734, 18.202003, 26.335276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.030212, 18.987883, 26.596066>,  <18.408554, 18.464355, 26.130487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.030212, 18.987883, 26.596066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.887505, 18.621298, 26.668520>,  <17.801880, 18.401346, 26.711992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.887505, 18.621298, 26.668520>,  <18.030212, 18.987883, 26.596066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.887505, 18.621298, 26.668520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382707, 0.033495, 0.923262,
		-0.852203, 0.398713, 0.338787,
		-0.356770, -0.916464, 0.181135,
		17.780474, 18.346359, 26.722860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.576468, 18.979414, 27.161293>,  <18.030212, 18.987883, 26.596066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.576468, 18.979414, 27.161293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.684950, 18.595263, 27.135612>,  <17.750040, 18.364773, 27.120203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.684950, 18.595263, 27.135612>,  <17.576468, 18.979414, 27.161293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.684950, 18.595263, 27.135612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313354, 0.025027, 0.949306,
		-0.910086, -0.277576, 0.307726,
		0.271206, -0.960377, -0.064203,
		17.766312, 18.307150, 27.116352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.300108, 18.637621, 27.782183>,  <17.576468, 18.979414, 27.161293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.300108, 18.637621, 27.782183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.606829, 18.407742, 27.667824>,  <17.790861, 18.269814, 27.599209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.606829, 18.407742, 27.667824>,  <17.300108, 18.637621, 27.782183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.606829, 18.407742, 27.667824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405627, 0.088645, 0.909730,
		-0.497478, -0.813549, 0.301087,
		0.766800, -0.574700, -0.285899,
		17.836868, 18.235332, 27.582054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.337074, 18.171883, 28.362467>,  <17.300108, 18.637621, 27.782183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.337074, 18.171883, 28.362467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.677576, 18.123087, 28.158316>,  <17.881878, 18.093809, 28.035826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.677576, 18.123087, 28.158316>,  <17.337074, 18.171883, 28.362467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.677576, 18.123087, 28.158316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517453, 0.033472, 0.855057,
		-0.087224, -0.991967, 0.091616,
		0.851254, -0.121989, -0.510377,
		17.932953, 18.086491, 28.005203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.759912, 17.755611, 28.821560>,  <17.337074, 18.171883, 28.362467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.759912, 17.755611, 28.821560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.000422, 17.915131, 28.544596>,  <18.144726, 18.010841, 28.378416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.000422, 17.915131, 28.544596>,  <17.759912, 17.755611, 28.821560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.000422, 17.915131, 28.544596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777958, -0.094407, 0.621183,
		0.182358, -0.912166, -0.367013,
		0.601271, 0.398798, -0.692411,
		18.180803, 18.034769, 28.336872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.694828, 18.263178, 29.440626>,  <17.759912, 17.755611, 28.821560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.694828, 18.263178, 29.440626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.975718, 18.542681, 29.495209>,  <18.144251, 18.710382, 29.527958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.975718, 18.542681, 29.495209>,  <17.694828, 18.263178, 29.440626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.975718, 18.542681, 29.495209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709085, 0.669236, 0.222085,
		0.063863, -0.252713, 0.965432,
		0.702225, 0.698756, 0.136456,
		18.186384, 18.752308, 29.536146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.617523, 18.636641, 30.117411>,  <17.694828, 18.263178, 29.440626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.617523, 18.636641, 30.117411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.796780, 18.896421, 29.871685>,  <17.904333, 19.052290, 29.724249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.796780, 18.896421, 29.871685>,  <17.617523, 18.636641, 30.117411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.796780, 18.896421, 29.871685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692036, 0.687041, 0.221496,
		0.565909, 0.325866, 0.757336,
		0.448143, 0.649451, -0.614314,
		17.931223, 19.091257, 29.687391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.877962, 19.338984, 30.462711>,  <17.617523, 18.636641, 30.117411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.877962, 19.338984, 30.462711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.744907, 19.345285, 30.085541>,  <17.665075, 19.349066, 29.859240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.744907, 19.345285, 30.085541>,  <17.877962, 19.338984, 30.462711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.744907, 19.345285, 30.085541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638672, 0.731900, 0.237531,
		0.693868, 0.681230, -0.233395,
		-0.332635, 0.015752, -0.942924,
		17.645117, 19.350012, 29.802664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.867426, 19.989342, 30.195715>,  <17.877962, 19.338984, 30.462711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.867426, 19.989342, 30.195715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.569532, 19.778988, 30.031366>,  <17.390797, 19.652775, 29.932756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.569532, 19.778988, 30.031366>,  <17.867426, 19.989342, 30.195715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.569532, 19.778988, 30.031366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641930, 0.732829, 0.225582,
		0.182469, 0.431749, -0.883345,
		-0.744735, -0.525884, -0.410871,
		17.346111, 19.621223, 29.908106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.454939, 20.360041, 29.664549>,  <17.867426, 19.989342, 30.195715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.454939, 20.360041, 29.664549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.262871, 20.105949, 29.906515>,  <17.147629, 19.953495, 30.051695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.262871, 20.105949, 29.906515>,  <17.454939, 20.360041, 29.664549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.262871, 20.105949, 29.906515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635450, 0.727292, 0.259327,
		-0.604681, -0.259872, -0.752879,
		-0.480171, -0.635227, 0.604915,
		17.118820, 19.915380, 30.087990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.497288, 21.183405, 29.551464>,  <17.454939, 20.360041, 29.664549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.497288, 21.183405, 29.551464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.215837, 21.441603, 29.670290>,  <17.046967, 21.596521, 29.741587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.215837, 21.441603, 29.670290>,  <17.497288, 21.183405, 29.551464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.215837, 21.441603, 29.670290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170557, 0.252423, -0.952467,
		-0.689797, -0.720848, -0.067518,
		-0.703627, 0.645492, 0.297066,
		17.004749, 21.635250, 29.759411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.770546, 21.057549, 29.312101>,  <17.497288, 21.183405, 29.551464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.770546, 21.057549, 29.312101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.823145, 21.450569, 29.364717>,  <16.854704, 21.686380, 29.396288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.823145, 21.450569, 29.364717>,  <16.770546, 21.057549, 29.312101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.823145, 21.450569, 29.364717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247836, 0.161065, -0.955320,
		-0.959836, 0.093022, 0.264691,
		0.131498, 0.982550, 0.131542,
		16.862595, 21.745335, 29.404181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.121286, 21.390095, 29.142483>,  <16.770546, 21.057549, 29.312101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.121286, 21.390095, 29.142483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.392391, 21.673607, 29.064228>,  <16.555054, 21.843714, 29.017275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.392391, 21.673607, 29.064228>,  <16.121286, 21.390095, 29.142483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.392391, 21.673607, 29.064228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227469, -0.050899, -0.972454,
		-0.699212, 0.703593, 0.126727,
		0.677761, 0.708778, -0.195635,
		16.595720, 21.886240, 29.005537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.857121, 21.894312, 28.701519>,  <16.121286, 21.390095, 29.142483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.857121, 21.894312, 28.701519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.242907, 21.978298, 28.637362>,  <16.474379, 22.028690, 28.598867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.242907, 21.978298, 28.637362>,  <15.857121, 21.894312, 28.701519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.242907, 21.978298, 28.637362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165745, 0.008026, -0.986136,
		-0.205768, 0.977676, 0.042542,
		0.964463, 0.209966, -0.160393,
		16.532246, 22.041288, 28.589243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.901618, 22.514956, 28.205210>,  <15.857121, 21.894312, 28.701519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.901618, 22.514956, 28.205210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.243471, 22.308687, 28.180923>,  <16.448584, 22.184927, 28.166351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.243471, 22.308687, 28.180923>,  <15.901618, 22.514956, 28.205210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.243471, 22.308687, 28.180923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065353, 0.009171, -0.997820,
		0.515103, 0.856738, -0.025863,
		0.854633, -0.515670, -0.060714,
		16.499861, 22.153986, 28.162708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.143032, 22.788382, 27.649565>,  <15.901618, 22.514956, 28.205210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.143032, 22.788382, 27.649565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.341818, 22.445225, 27.701792>,  <16.461090, 22.239330, 27.733128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.341818, 22.445225, 27.701792>,  <16.143032, 22.788382, 27.649565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.341818, 22.445225, 27.701792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064080, -0.186336, -0.980394,
		0.865401, 0.478856, -0.147576,
		0.496967, -0.857890, 0.130570,
		16.490908, 22.187859, 27.740963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.652197, 22.784908, 27.203285>,  <16.143032, 22.788382, 27.649565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.652197, 22.784908, 27.203285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.607155, 22.396154, 27.286003>,  <16.580130, 22.162903, 27.335634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.607155, 22.396154, 27.286003>,  <16.652197, 22.784908, 27.203285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.607155, 22.396154, 27.286003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071108, -0.215467, -0.973919,
		0.991092, -0.094964, 0.093372,
		-0.112606, -0.971883, 0.206795,
		16.573374, 22.104589, 27.348042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.146303, 22.490282, 26.762341>,  <16.652197, 22.784908, 27.203285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.146303, 22.490282, 26.762341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.893122, 22.201691, 26.874655>,  <16.741213, 22.028536, 26.942043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.893122, 22.201691, 26.874655>,  <17.146303, 22.490282, 26.762341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.893122, 22.201691, 26.874655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001443, -0.361582, -0.932339,
		0.774188, -0.590533, 0.227824,
		-0.632955, -0.721477, 0.280784,
		16.703236, 21.985249, 26.958891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.404854, 21.855103, 26.379423>,  <17.146303, 22.490282, 26.762341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.404854, 21.855103, 26.379423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.033445, 21.737593, 26.470238>,  <16.810600, 21.667086, 26.524727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.033445, 21.737593, 26.470238>,  <17.404854, 21.855103, 26.379423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.033445, 21.737593, 26.470238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152982, -0.254455, -0.954908,
		0.338301, -0.921384, 0.191324,
		-0.928520, -0.293777, 0.227037,
		16.754889, 21.649460, 26.538349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.329468, 21.132586, 26.148733>,  <17.404854, 21.855103, 26.379423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.329468, 21.132586, 26.148733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.973944, 21.313318, 26.179356>,  <16.760630, 21.421759, 26.197729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.973944, 21.313318, 26.179356>,  <17.329468, 21.132586, 26.148733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.973944, 21.313318, 26.179356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189828, -0.210948, -0.958888,
		-0.417109, -0.866803, 0.273264,
		-0.888811, 0.451834, 0.076556,
		16.707300, 21.448868, 26.202322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.942490, 20.724642, 25.816164>,  <17.329468, 21.132586, 26.148733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.942490, 20.724642, 25.816164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.708374, 21.048546, 25.799557>,  <16.567905, 21.242889, 25.789593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.708374, 21.048546, 25.799557>,  <16.942490, 20.724642, 25.816164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.708374, 21.048546, 25.799557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128431, -0.143145, -0.981333,
		-0.800589, -0.569031, 0.187779,
		-0.585289, 0.809761, -0.041519,
		16.532787, 21.291473, 25.787102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.365654, 20.460421, 25.573212>,  <16.942490, 20.724642, 25.816164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.365654, 20.460421, 25.573212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.395483, 20.851995, 25.497189>,  <16.413380, 21.086941, 25.451574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.395483, 20.851995, 25.497189>,  <16.365654, 20.460421, 25.573212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.395483, 20.851995, 25.497189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113587, -0.181008, -0.976900,
		-0.990726, 0.094436, 0.097696,
		0.074570, 0.978937, -0.190056,
		16.417854, 21.145678, 25.440172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.688227, 20.549896, 25.242588>,  <16.365654, 20.460421, 25.573212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.688227, 20.549896, 25.242588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.950936, 20.825766, 25.120607>,  <16.108562, 20.991287, 25.047419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.950936, 20.825766, 25.120607>,  <15.688227, 20.549896, 25.242588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.950936, 20.825766, 25.120607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097961, -0.322943, -0.941335,
		-0.747697, 0.648119, -0.144540,
		0.656775, 0.689674, -0.304954,
		16.147968, 21.032667, 25.029121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.293182, 20.899698, 24.738907>,  <15.688227, 20.549896, 25.242588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.293182, 20.899698, 24.738907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.683688, 20.964272, 24.681152>,  <15.917992, 21.003016, 24.646500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.683688, 20.964272, 24.681152>,  <15.293182, 20.899698, 24.738907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.683688, 20.964272, 24.681152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106260, -0.223889, -0.968805,
		-0.188721, 0.961152, -0.201422,
		0.976265, 0.161431, -0.144385,
		15.976567, 21.012701, 24.637836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.391903, 21.197477, 24.053951>,  <15.293182, 20.899698, 24.738907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.391903, 21.197477, 24.053951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.756731, 21.059900, 24.143244>,  <15.975628, 20.977354, 24.196819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.756731, 21.059900, 24.143244>,  <15.391903, 21.197477, 24.053951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.756731, 21.059900, 24.143244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143224, -0.242900, -0.959420,
		0.384207, 0.907030, -0.172281,
		0.912070, -0.343941, 0.223233,
		16.030352, 20.956718, 24.210215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.862249, 21.567974, 23.674498>,  <15.391903, 21.197477, 24.053951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.862249, 21.567974, 23.674498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.043024, 21.219772, 23.752445>,  <16.151489, 21.010851, 23.799213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.043024, 21.219772, 23.752445>,  <15.862249, 21.567974, 23.674498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.043024, 21.219772, 23.752445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185310, -0.305302, -0.934051,
		0.872590, 0.386021, -0.299290,
		0.451937, -0.870505, 0.194870,
		16.178606, 20.958620, 23.810905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.248201, 21.496864, 23.071486>,  <15.862249, 21.567974, 23.674498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.248201, 21.496864, 23.071486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.266260, 21.129026, 23.227592>,  <16.277096, 20.908323, 23.321257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.266260, 21.129026, 23.227592>,  <16.248201, 21.496864, 23.071486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.266260, 21.129026, 23.227592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047154, -0.392194, -0.918673,
		0.997867, 0.023074, -0.061070,
		0.045149, -0.919593, 0.390269,
		16.279804, 20.853148, 23.344673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.648375, 21.083496, 22.690817>,  <16.248201, 21.496864, 23.071486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.648375, 21.083496, 22.690817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.435434, 20.795113, 22.868275>,  <16.307671, 20.622082, 22.974749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.435434, 20.795113, 22.868275>,  <16.648375, 21.083496, 22.690817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.435434, 20.795113, 22.868275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039777, -0.544801, -0.837621,
		0.845588, -0.428262, 0.318703,
		-0.532352, -0.720959, 0.443643,
		16.275728, 20.578825, 23.001368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.788715, 20.516983, 22.383087>,  <16.648375, 21.083496, 22.690817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.788715, 20.516983, 22.383087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.428261, 20.410309, 22.519810>,  <16.211988, 20.346304, 22.601843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.428261, 20.410309, 22.519810>,  <16.788715, 20.516983, 22.383087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.428261, 20.410309, 22.519810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155427, -0.537275, -0.828962,
		0.404719, -0.800133, 0.442707,
		-0.901136, -0.266688, 0.341808,
		16.157921, 20.330303, 22.622353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.759119, 19.775183, 22.131472>,  <16.788715, 20.516983, 22.383087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.759119, 19.775183, 22.131472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.394533, 19.904390, 22.233370>,  <16.175781, 19.981915, 22.294508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.394533, 19.904390, 22.233370>,  <16.759119, 19.775183, 22.131472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.394533, 19.904390, 22.233370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372241, -0.383955, -0.844994,
		-0.175137, -0.865007, 0.470201,
		-0.911462, 0.323017, 0.254746,
		16.121094, 20.001295, 22.309793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.327492, 19.228910, 22.007816>,  <16.759119, 19.775183, 22.131472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.327492, 19.228910, 22.007816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.073332, 19.537756, 22.003599>,  <15.920836, 19.723063, 22.001068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.073332, 19.537756, 22.003599>,  <16.327492, 19.228910, 22.007816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.073332, 19.537756, 22.003599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385277, -0.328831, -0.862225,
		-0.669202, -0.543794, 0.506416,
		-0.635398, 0.772113, -0.010543,
		15.882712, 19.769390, 22.000437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.711298, 18.987310, 21.911179>,  <16.327492, 19.228910, 22.007816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.711298, 18.987310, 21.911179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.723417, 19.362902, 21.774122>,  <15.730689, 19.588257, 21.691889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.723417, 19.362902, 21.774122>,  <15.711298, 18.987310, 21.911179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.723417, 19.362902, 21.774122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305207, -0.317734, -0.897716,
		-0.951804, 0.131774, 0.276957,
		0.030297, 0.938978, -0.342639,
		15.732507, 19.644596, 21.671331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.175347, 19.054365, 21.403688>,  <15.711298, 18.987310, 21.911179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.175347, 19.054365, 21.403688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.407269, 19.375687, 21.349236>,  <15.546421, 19.568480, 21.316565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.407269, 19.375687, 21.349236>,  <15.175347, 19.054365, 21.403688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.407269, 19.375687, 21.349236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138927, -0.067162, -0.988022,
		-0.802825, 0.591770, 0.072660,
		0.579803, 0.803304, -0.136132,
		15.581209, 19.616678, 21.308395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.904256, 19.414183, 20.901920>,  <15.175347, 19.054365, 21.403688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.904256, 19.414183, 20.901920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.278913, 19.553036, 20.883156>,  <15.503707, 19.636347, 20.871897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.278913, 19.553036, 20.883156>,  <14.904256, 19.414183, 20.901920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.278913, 19.553036, 20.883156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035698, -0.227823, -0.973048,
		-0.348464, 0.909723, -0.225780,
		0.936642, 0.347132, -0.046913,
		15.559905, 19.657175, 20.869081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.843150, 19.756180, 20.336983>,  <14.904256, 19.414183, 20.901920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.843150, 19.756180, 20.336983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.231240, 19.692715, 20.410183>,  <15.464094, 19.654636, 20.454103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.231240, 19.692715, 20.410183>,  <14.843150, 19.756180, 20.336983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.231240, 19.692715, 20.410183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114972, -0.363312, -0.924546,
		0.213177, 0.918058, -0.334253,
		0.970225, -0.158662, 0.183001,
		15.522307, 19.645117, 20.465084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.080241, 19.832462, 19.652857>,  <14.843150, 19.756180, 20.336983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.080241, 19.832462, 19.652857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.394434, 19.656727, 19.827213>,  <15.582950, 19.551287, 19.931828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.394434, 19.656727, 19.827213>,  <15.080241, 19.832462, 19.652857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.394434, 19.656727, 19.827213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206875, -0.477416, -0.853977,
		0.583286, 0.760958, -0.284114,
		0.785481, -0.439337, 0.435893,
		15.630078, 19.524925, 19.957981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.612257, 19.831110, 19.138123>,  <15.080241, 19.832462, 19.652857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.612257, 19.831110, 19.138123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.696279, 19.550507, 19.410522>,  <15.746692, 19.382145, 19.573963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.696279, 19.550507, 19.410522>,  <15.612257, 19.831110, 19.138123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.696279, 19.550507, 19.410522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304097, -0.615113, -0.727434,
		0.929194, 0.359892, 0.084119,
		0.210055, -0.701508, 0.681002,
		15.759295, 19.340054, 19.614822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.270624, 19.610119, 18.955021>,  <15.612257, 19.831110, 19.138123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.270624, 19.610119, 18.955021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.121944, 19.316620, 19.182514>,  <16.032738, 19.140520, 19.319010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.121944, 19.316620, 19.182514>,  <16.270624, 19.610119, 18.955021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.121944, 19.316620, 19.182514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033305, -0.622770, -0.781696,
		0.927756, -0.271613, 0.255920,
		-0.371698, -0.733747, 0.568732,
		16.010435, 19.096497, 19.353134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.557146, 19.055527, 18.725138>,  <16.270624, 19.610119, 18.955021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.557146, 19.055527, 18.725138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.278919, 18.860493, 18.936211>,  <16.111982, 18.743473, 19.062855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.278919, 18.860493, 18.936211>,  <16.557146, 19.055527, 18.725138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.278919, 18.860493, 18.936211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005763, -0.730650, -0.682728,
		0.718438, -0.477924, 0.505406,
		-0.695567, -0.487585, 0.527681,
		16.070250, 18.714218, 19.094515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.777969, 18.301683, 18.959635>,  <16.557146, 19.055527, 18.725138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.777969, 18.301683, 18.959635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.381540, 18.349051, 18.935123>,  <16.143682, 18.377470, 18.920416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.381540, 18.349051, 18.935123>,  <16.777969, 18.301683, 18.959635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.381540, 18.349051, 18.935123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041320, -0.709741, -0.703250,
		-0.126767, -0.694439, 0.708297,
		-0.991072, 0.118416, -0.061278,
		16.084219, 18.384575, 18.916740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.405220, 17.569618, 19.048769>,  <16.777969, 18.301683, 18.959635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.405220, 17.569618, 19.048769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.173414, 17.835962, 18.860815>,  <16.034330, 17.995770, 18.748043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.173414, 17.835962, 18.860815>,  <16.405220, 17.569618, 19.048769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.173414, 17.835962, 18.860815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175234, -0.664899, -0.726087,
		-0.795899, -0.338438, 0.502000,
		-0.579515, 0.665860, -0.469887,
		15.999559, 18.035721, 18.719849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.015995, 17.203333, 18.612007>,  <16.405220, 17.569618, 19.048769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.015995, 17.203333, 18.612007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.950411, 17.561018, 18.445395>,  <15.911060, 17.775629, 18.345427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.950411, 17.561018, 18.445395>,  <16.015995, 17.203333, 18.612007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.950411, 17.561018, 18.445395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076353, -0.432482, -0.898404,
		-0.983508, -0.115498, 0.139185,
		-0.163959, 0.894214, -0.416531,
		15.901223, 17.829283, 18.320435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.549244, 16.990746, 18.254139>,  <16.015995, 17.203333, 18.612007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.549244, 16.990746, 18.254139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.660537, 17.340185, 18.094431>,  <15.727312, 17.549849, 17.998606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.660537, 17.340185, 18.094431>,  <15.549244, 16.990746, 18.254139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.660537, 17.340185, 18.094431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024213, -0.409172, -0.912136,
		-0.960209, 0.263453, -0.092692,
		0.278232, 0.873597, -0.399269,
		15.744006, 17.602264, 17.974649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.119702, 17.038557, 17.675713>,  <15.549244, 16.990746, 18.254139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.119702, 17.038557, 17.675713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.423306, 17.290495, 17.609745>,  <15.605469, 17.441658, 17.570166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.423306, 17.290495, 17.609745>,  <15.119702, 17.038557, 17.675713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.423306, 17.290495, 17.609745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028511, -0.285209, -0.958041,
		-0.650453, 0.722462, -0.234434,
		0.759012, 0.629844, -0.164917,
		15.651010, 17.479448, 17.560270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.881797, 17.461929, 17.089037>,  <15.119702, 17.038557, 17.675713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.881797, 17.461929, 17.089037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.277958, 17.506151, 17.122211>,  <15.515655, 17.532684, 17.142117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.277958, 17.506151, 17.122211>,  <14.881797, 17.461929, 17.089037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.277958, 17.506151, 17.122211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088331, -0.044832, -0.995082,
		-0.106292, 0.992858, -0.054167,
		0.990404, 0.110554, 0.082935,
		15.575079, 17.539318, 17.147093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.204011, 18.054525, 16.607101>,  <14.881797, 17.461929, 17.089037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.204011, 18.054525, 16.607101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.489770, 17.787359, 16.690552>,  <15.661225, 17.627060, 16.740622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.489770, 17.787359, 16.690552>,  <15.204011, 18.054525, 16.607101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.489770, 17.787359, 16.690552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168309, -0.125377, -0.977728,
		0.679196, 0.733601, 0.022847,
		0.714398, -0.667914, 0.208628,
		15.704089, 17.586985, 16.753139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.708828, 18.193045, 16.167982>,  <15.204011, 18.054525, 16.607101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.708828, 18.193045, 16.167982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.825203, 17.833248, 16.298378>,  <15.895028, 17.617371, 16.376616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.825203, 17.833248, 16.298378>,  <15.708828, 18.193045, 16.167982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.825203, 17.833248, 16.298378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390761, -0.199297, -0.898658,
		0.873305, 0.388837, 0.293504,
		0.290937, -0.899493, 0.325989,
		15.912484, 17.563400, 16.396175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.463837, 18.057259, 16.139763>,  <15.708828, 18.193045, 16.167982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.463837, 18.057259, 16.139763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.276968, 17.703758, 16.128906>,  <16.164846, 17.491659, 16.122393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.276968, 17.703758, 16.128906>,  <16.463837, 18.057259, 16.139763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.276968, 17.703758, 16.128906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395317, -0.181318, -0.900471,
		0.790869, -0.431407, 0.434067,
		-0.467173, -0.883749, -0.027144,
		16.136816, 17.438633, 16.120764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.965057, 17.585604, 15.744008>,  <16.463837, 18.057259, 16.139763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.965057, 17.585604, 15.744008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.601856, 17.420820, 15.774519>,  <16.383936, 17.321949, 15.792826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.601856, 17.420820, 15.774519>,  <16.965057, 17.585604, 15.744008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.601856, 17.420820, 15.774519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014295, -0.212421, -0.977074,
		0.418719, -0.886096, 0.198767,
		-0.908003, -0.411961, 0.076278,
		16.329454, 17.297232, 15.797402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.028774, 17.183315, 15.190837>,  <16.965057, 17.585604, 15.744008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.028774, 17.183315, 15.190837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.637770, 17.167267, 15.273651>,  <16.403168, 17.157639, 15.323339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.637770, 17.167267, 15.273651>,  <17.028774, 17.183315, 15.190837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.637770, 17.167267, 15.273651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204384, -0.061674, -0.976946,
		0.051966, -0.997290, 0.052087,
		-0.977510, -0.040122, 0.207035,
		16.344517, 17.155231, 15.335762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.752724, 16.601988, 14.858674>,  <17.028774, 17.183315, 15.190837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.752724, 16.601988, 14.858674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.452902, 16.858358, 14.924869>,  <16.273008, 17.012180, 14.964585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.452902, 16.858358, 14.924869>,  <16.752724, 16.601988, 14.858674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.452902, 16.858358, 14.924869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358515, -0.182914, -0.915429,
		-0.556452, -0.745491, 0.366885,
		-0.749552, 0.640925, 0.165486,
		16.228037, 17.050636, 14.974515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.138424, 16.324743, 14.684293>,  <16.752724, 16.601988, 14.858674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.138424, 16.324743, 14.684293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.070112, 16.718344, 14.663994>,  <16.029125, 16.954504, 14.651814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.070112, 16.718344, 14.663994>,  <16.138424, 16.324743, 14.684293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.070112, 16.718344, 14.663994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549016, -0.137799, -0.824374,
		-0.818179, -0.112923, 0.563766,
		-0.170777, 0.984002, -0.050748,
		16.018879, 17.013544, 14.648769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.378233, 16.427736, 14.735536>,  <16.138424, 16.324743, 14.684293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.378233, 16.427736, 14.735536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.574358, 16.721739, 14.548191>,  <15.692033, 16.898140, 14.435784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.574358, 16.721739, 14.548191>,  <15.378233, 16.427736, 14.735536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.574358, 16.721739, 14.548191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688416, -0.002951, -0.725310,
		-0.534488, 0.678056, 0.504542,
		0.490312, 0.735004, -0.468362,
		15.721452, 16.942240, 14.407682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.747766, 15.699803, 14.650470>,  <15.378233, 16.427736, 14.735536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.747766, 15.699803, 14.650470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.020533, 15.450124, 14.497963>,  <16.184193, 15.300316, 14.406459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.020533, 15.450124, 14.497963>,  <15.747766, 15.699803, 14.650470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.020533, 15.450124, 14.497963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731427, 0.580540, 0.357755,
		-0.001969, -0.522828, 0.852436,
		0.681917, -0.624199, -0.381267,
		16.225107, 15.262864, 14.383583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.237848, 15.525343, 15.153388>,  <15.747766, 15.699803, 14.650470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.237848, 15.525343, 15.153388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.397451, 15.563293, 14.788578>,  <16.493214, 15.586062, 14.569692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.397451, 15.563293, 14.788578>,  <16.237848, 15.525343, 15.153388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.397451, 15.563293, 14.788578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619785, 0.705112, 0.344505,
		0.675765, -0.702721, 0.222544,
		0.399010, 0.094875, -0.912025,
		16.517155, 15.591755, 14.514971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.973942, 15.452929, 15.169236>,  <16.237848, 15.525343, 15.153388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.973942, 15.452929, 15.169236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.064861, 15.842371, 15.177474>,  <17.119413, 16.076036, 15.182417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.064861, 15.842371, 15.177474>,  <16.973942, 15.452929, 15.169236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.064861, 15.842371, 15.177474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866029, -0.211766, 0.452933,
		0.445340, -0.085117, -0.891306,
		0.227301, 0.973607, 0.020594,
		17.133051, 16.134453, 15.183652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.624920, 15.730833, 14.829819>,  <16.973942, 15.452929, 15.169236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.624920, 15.730833, 14.829819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.537607, 15.953081, 15.150727>,  <17.485220, 16.086430, 15.343272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.537607, 15.953081, 15.150727>,  <17.624920, 15.730833, 14.829819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.537607, 15.953081, 15.150727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868505, -0.264295, 0.419340,
		0.445031, 0.788311, -0.424869,
		-0.218280, 0.555620, 0.802272,
		17.472124, 16.119768, 15.391409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.286787, 16.124073, 15.042114>,  <17.624920, 15.730833, 14.829819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.286787, 16.124073, 15.042114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.070404, 16.024742, 15.363536>,  <17.940575, 15.965143, 15.556389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.070404, 16.024742, 15.363536>,  <18.286787, 16.124073, 15.042114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.070404, 16.024742, 15.363536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829174, -0.317459, 0.460098,
		0.140840, 0.915179, 0.377638,
		-0.540957, -0.248327, 0.803554,
		17.908117, 15.950244, 15.604602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.555191, 16.309723, 15.820197>,  <18.286787, 16.124073, 15.042114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.555191, 16.309723, 15.820197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.338493, 15.975484, 15.783767>,  <18.208475, 15.774940, 15.761909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.338493, 15.975484, 15.783767>,  <18.555191, 16.309723, 15.820197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.338493, 15.975484, 15.783767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642884, -0.481712, 0.595528,
		-0.541494, 0.264071, 0.798155,
		-0.541743, -0.835596, -0.091077,
		18.175970, 15.724805, 15.756444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.862694, 16.516075, 15.155791>,  <18.555191, 16.309723, 15.820197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.862694, 16.516075, 15.155791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.049414, 16.164501, 15.116662>,  <19.161446, 15.953557, 15.093184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.049414, 16.164501, 15.116662>,  <18.862694, 16.516075, 15.155791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.049414, 16.164501, 15.116662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152171, 0.188793, -0.970155,
		0.871172, 0.437983, 0.221877,
		0.466800, -0.878936, -0.097823,
		19.189453, 15.900821, 15.087315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.565619, 16.626591, 15.048862>,  <18.862694, 16.516075, 15.155791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.565619, 16.626591, 15.048862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.514360, 16.254190, 14.912147>,  <19.483606, 16.030750, 14.830117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.514360, 16.254190, 14.912147>,  <19.565619, 16.626591, 15.048862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.514360, 16.254190, 14.912147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369623, 0.274968, -0.887565,
		0.920303, -0.240069, 0.308883,
		-0.128143, -0.930999, -0.341789,
		19.475918, 15.974891, 14.809609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.135794, 16.372366, 14.683171>,  <19.565619, 16.626591, 15.048862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.135794, 16.372366, 14.683171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.819849, 16.177307, 14.534406>,  <19.630281, 16.060272, 14.445147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.819849, 16.177307, 14.534406>,  <20.135794, 16.372366, 14.683171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.819849, 16.177307, 14.534406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280120, 0.252611, -0.926132,
		0.545576, -0.835696, -0.062927,
		-0.789861, -0.487648, -0.371913,
		19.582891, 16.031013, 14.422832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.338734, 16.189205, 14.065221>,  <20.135794, 16.372366, 14.683171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.338734, 16.189205, 14.065221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.945726, 16.122023, 14.033094>,  <19.709923, 16.081713, 14.013819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.945726, 16.122023, 14.033094>,  <20.338734, 16.189205, 14.065221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.945726, 16.122023, 14.033094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049644, 0.179431, -0.982517,
		0.179431, -0.969327, -0.167956,
		0.982517, 0.167956, 0.080317,
		19.650970, 16.071636, 14.009000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.281528, 15.697108, 13.589165>,  <20.338734, 16.189205, 14.065221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.281528, 15.697108, 13.589165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.923109, 15.873089, 13.565358>,  <19.708057, 15.978677, 13.551074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.923109, 15.873089, 13.565358>,  <20.281528, 15.697108, 13.589165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.923109, 15.873089, 13.565358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076528, 0.021010, -0.996846,
		-0.437313, -0.897776, -0.052495,
		-0.896047, 0.439952, -0.059517,
		19.654295, 16.005074, 13.547503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.878099, 15.299124, 13.059587>,  <20.281528, 15.697108, 13.589165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.878099, 15.299124, 13.059587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.697351, 15.654819, 13.088060>,  <19.588902, 15.868237, 13.105144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.697351, 15.654819, 13.088060>,  <19.878099, 15.299124, 13.059587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.697351, 15.654819, 13.088060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015813, 0.071795, -0.997294,
		-0.891943, -0.451774, -0.018381,
		-0.451871, 0.889239, 0.071181,
		19.561790, 15.921591, 13.109415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.329859, 15.349138, 12.602708>,  <19.878099, 15.299124, 13.059587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.329859, 15.349138, 12.602708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.387300, 15.733363, 12.697951>,  <19.421766, 15.963899, 12.755097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.387300, 15.733363, 12.697951>,  <19.329859, 15.349138, 12.602708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.387300, 15.733363, 12.697951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103252, 0.253832, -0.961722,
		-0.984234, 0.113523, 0.135632,
		0.143605, 0.960563, 0.238109,
		19.430382, 16.021532, 12.769383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.841797, 15.747011, 12.280630>,  <19.329859, 15.349138, 12.602708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.841797, 15.747011, 12.280630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.135178, 16.011911, 12.341919>,  <19.311205, 16.170851, 12.378693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.135178, 16.011911, 12.341919>,  <18.841797, 15.747011, 12.280630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.135178, 16.011911, 12.341919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082757, 0.310732, -0.946888,
		-0.674687, 0.681814, 0.282713,
		0.733450, 0.662250, 0.153222,
		19.355213, 16.210587, 12.387885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.662098, 16.271667, 11.853185>,  <18.841797, 15.747011, 12.280630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.662098, 16.271667, 11.853185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.041998, 16.358150, 11.943718>,  <19.269938, 16.410040, 11.998038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.041998, 16.358150, 11.943718>,  <18.662098, 16.271667, 11.853185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.041998, 16.358150, 11.943718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160056, 0.285944, -0.944784,
		-0.268986, 0.933537, 0.236971,
		0.949752, 0.216205, 0.226334,
		19.326923, 16.423012, 12.011618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.737289, 16.937084, 11.656797>,  <18.662098, 16.271667, 11.853185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.737289, 16.937084, 11.656797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.110273, 16.795118, 11.683804>,  <19.334063, 16.709940, 11.700007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.110273, 16.795118, 11.683804>,  <18.737289, 16.937084, 11.656797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.110273, 16.795118, 11.683804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159043, 0.235465, -0.958781,
		0.324387, 0.904761, 0.276008,
		0.932458, -0.354914, 0.067514,
		19.390011, 16.688644, 11.704058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.096848, 17.326593, 11.239347>,  <18.737289, 16.937084, 11.656797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.096848, 17.326593, 11.239347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.359781, 17.026403, 11.266772>,  <19.517542, 16.846291, 11.283228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.359781, 17.026403, 11.266772>,  <19.096848, 17.326593, 11.239347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.359781, 17.026403, 11.266772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265361, 0.145349, -0.953130,
		0.705333, 0.644720, 0.294689,
		0.657335, -0.750473, 0.068564,
		19.556982, 16.801262, 11.287341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.730598, 17.566286, 10.918727>,  <19.096848, 17.326593, 11.239347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.730598, 17.566286, 10.918727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.767302, 17.168074, 10.927626>,  <19.789324, 16.929146, 10.932965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.767302, 17.168074, 10.927626>,  <19.730598, 17.566286, 10.918727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.767302, 17.168074, 10.927626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277078, 0.004066, -0.960839,
		0.956456, 0.094329, 0.276213,
		0.091758, -0.995533, 0.022247,
		19.794828, 16.869413, 10.934299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.386753, 17.407187, 10.580984>,  <19.730598, 17.566286, 10.918727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.386753, 17.407187, 10.580984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.181055, 17.064135, 10.579041>,  <20.057636, 16.858303, 10.577876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.181055, 17.064135, 10.579041>,  <20.386753, 17.407187, 10.580984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.181055, 17.064135, 10.579041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206317, -0.118210, -0.971319,
		0.832457, -0.500498, 0.237733,
		-0.514246, -0.857629, -0.004857,
		20.026781, 16.806847, 10.577584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.913298, 16.905636, 10.236706>,  <20.386753, 17.407187, 10.580984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.913298, 16.905636, 10.236706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.543951, 16.754274, 10.210757>,  <20.322344, 16.663458, 10.195188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.543951, 16.754274, 10.210757>,  <20.913298, 16.905636, 10.236706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.543951, 16.754274, 10.210757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135283, -0.162552, -0.977382,
		0.359301, -0.911255, 0.201287,
		-0.923364, -0.378405, -0.064872,
		20.266941, 16.640753, 10.191296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.969461, 16.311207, 9.800837>,  <20.913298, 16.905636, 10.236706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.969461, 16.311207, 9.800837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.597168, 16.457371, 9.795104>,  <20.373791, 16.545069, 9.791665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.597168, 16.457371, 9.795104>,  <20.969461, 16.311207, 9.800837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.597168, 16.457371, 9.795104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021797, 0.016315, -0.999629,
		-0.365043, -0.930703, -0.023149,
		-0.930736, 0.365412, -0.014331,
		20.317947, 16.566994, 9.790805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.728928, 15.918401, 9.237468>,  <20.969461, 16.311207, 9.800837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.728928, 15.918401, 9.237468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.459824, 16.209074, 9.293073>,  <20.298361, 16.383478, 9.326436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.459824, 16.209074, 9.293073>,  <20.728928, 15.918401, 9.237468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.459824, 16.209074, 9.293073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104289, 0.279157, -0.954566,
		-0.732474, -0.627696, -0.263590,
		-0.672760, 0.726684, 0.139013,
		20.257996, 16.427080, 9.334777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.258732, 15.834979, 8.771250>,  <20.728928, 15.918401, 9.237468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.258732, 15.834979, 8.771250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.219145, 16.221672, 8.865597>,  <20.195393, 16.453688, 8.922205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.219145, 16.221672, 8.865597>,  <20.258732, 15.834979, 8.771250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.219145, 16.221672, 8.865597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025192, 0.234521, -0.971785,
		-0.994771, -0.102119, 0.001143,
		-0.098970, 0.966732, 0.235867,
		20.189453, 16.511692, 8.936357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.815641, 16.129625, 8.336993>,  <20.258732, 15.834979, 8.771250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.815641, 16.129625, 8.336993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.005243, 16.460325, 8.458193>,  <20.119003, 16.658745, 8.530912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.005243, 16.460325, 8.458193>,  <19.815641, 16.129625, 8.336993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.005243, 16.460325, 8.458193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074929, 0.380738, -0.921642,
		-0.877329, 0.414158, 0.242418,
		0.474003, 0.826748, 0.303000,
		20.147444, 16.708349, 8.549093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.427195, 16.721767, 8.081584>,  <19.815641, 16.129625, 8.336993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.427195, 16.721767, 8.081584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.796713, 16.850399, 8.164708>,  <20.018425, 16.927578, 8.214582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.796713, 16.850399, 8.164708>,  <19.427195, 16.721767, 8.081584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.796713, 16.850399, 8.164708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069730, 0.392375, -0.917159,
		-0.376477, 0.861760, 0.340051,
		0.923798, 0.321578, 0.207811,
		20.073853, 16.946873, 8.227052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.446009, 17.480900, 7.953728>,  <19.427195, 16.721767, 8.081584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.446009, 17.480900, 7.953728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.833029, 17.380329, 7.943694>,  <20.065241, 17.319986, 7.937674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.833029, 17.380329, 7.943694>,  <19.446009, 17.480900, 7.953728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.833029, 17.380329, 7.943694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147507, 0.642654, -0.751823,
		0.205148, 0.723727, 0.658888,
		0.967552, -0.251425, -0.025084,
		20.123295, 17.304901, 7.936169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.831553, 18.078215, 7.927845>,  <19.446009, 17.480900, 7.953728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.831553, 18.078215, 7.927845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.103895, 17.815580, 7.798027>,  <20.267302, 17.657999, 7.720137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.103895, 17.815580, 7.798027>,  <19.831553, 18.078215, 7.927845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.103895, 17.815580, 7.798027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292744, 0.650140, -0.701156,
		0.671368, 0.382378, 0.634863,
		0.680857, -0.656586, -0.324544,
		20.308151, 17.618605, 7.700664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.233271, 18.445866, 7.505315>,  <19.831553, 18.078215, 7.927845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.233271, 18.445866, 7.505315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.163979, 18.812450, 7.649587>,  <20.122402, 19.032402, 7.736149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.163979, 18.812450, 7.649587>,  <20.233271, 18.445866, 7.505315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.163979, 18.812450, 7.649587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984756, 0.167007, 0.048619,
		-0.015678, 0.363603, -0.931422,
		-0.173232, 0.916461, 0.360679,
		20.112009, 19.087389, 7.757790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.547514, 18.941771, 7.068446>,  <20.233271, 18.445866, 7.505315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.547514, 18.941771, 7.068446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.500500, 19.070101, 7.444373>,  <20.472292, 19.147099, 7.669929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.500500, 19.070101, 7.444373>,  <20.547514, 18.941771, 7.068446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.500500, 19.070101, 7.444373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983874, 0.166107, 0.066341,
		-0.134826, 0.932459, -0.335176,
		-0.117535, 0.320826, 0.939817,
		20.465239, 19.166349, 7.726318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.981083, 19.710825, 7.138843>,  <20.547514, 18.941771, 7.068446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.981083, 19.710825, 7.138843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.948969, 19.513561, 7.485333>,  <20.929701, 19.395203, 7.693228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.948969, 19.513561, 7.485333>,  <20.981083, 19.710825, 7.138843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.948969, 19.513561, 7.485333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976514, 0.135399, 0.167593,
		-0.199936, 0.859337, 0.470708,
		-0.080285, -0.493161, 0.866226,
		20.924883, 19.365614, 7.745201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.319263, 20.124378, 7.565919>,  <20.981083, 19.710825, 7.138843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.319263, 20.124378, 7.565919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.304571, 19.760454, 7.731279>,  <21.295755, 19.542101, 7.830495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.304571, 19.760454, 7.731279>,  <21.319263, 20.124378, 7.565919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.304571, 19.760454, 7.731279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914581, 0.136110, 0.380808,
		-0.402730, 0.392074, 0.827095,
		-0.036729, -0.909809, 0.413399,
		21.293552, 19.487511, 7.855299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.453259, 20.102324, 8.314652>,  <21.319263, 20.124378, 7.565919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.453259, 20.102324, 8.314652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.556448, 19.749660, 8.156598>,  <21.618362, 19.538063, 8.061766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.556448, 19.749660, 8.156598>,  <21.453259, 20.102324, 8.314652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.556448, 19.749660, 8.156598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912119, 0.087393, 0.400501,
		-0.318572, -0.463730, 0.826720,
		0.257974, -0.881656, -0.395136,
		21.633841, 19.485165, 8.038057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.381887, 19.614050, 8.709171>,  <21.453259, 20.102324, 8.314652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.381887, 19.614050, 8.709171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.696777, 19.502241, 8.489300>,  <21.885712, 19.435156, 8.357377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.696777, 19.502241, 8.489300>,  <21.381887, 19.614050, 8.709171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.696777, 19.502241, 8.489300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601053, 0.148479, 0.785296,
		-0.137893, -0.948588, 0.284894,
		0.787224, -0.279524, -0.549678,
		21.932945, 19.418385, 8.324396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.745281, 18.966084, 8.933404>,  <21.381887, 19.614050, 8.709171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.745281, 18.966084, 8.933404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.997860, 19.206657, 8.737628>,  <22.149406, 19.351002, 8.620162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.997860, 19.206657, 8.737628>,  <21.745281, 18.966084, 8.933404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.997860, 19.206657, 8.737628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662109, -0.089670, 0.744023,
		0.403595, -0.793872, -0.454839,
		0.631445, 0.601437, -0.489440,
		22.187294, 19.387089, 8.590796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.469368, 18.639441, 8.669044>,  <21.745281, 18.966084, 8.933404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.469368, 18.639441, 8.669044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.474871, 19.016783, 8.801641>,  <22.478172, 19.243189, 8.881200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.474871, 19.016783, 8.801641>,  <22.469368, 18.639441, 8.669044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.474871, 19.016783, 8.801641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599873, -0.273024, 0.752070,
		0.799977, 0.188507, -0.569651,
		0.013758, 0.943357, 0.331493,
		22.478998, 19.299789, 8.901090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.190504, 18.905014, 8.682096>,  <22.469368, 18.639441, 8.669044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.190504, 18.905014, 8.682096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.980412, 19.112137, 8.952209>,  <22.854355, 19.236410, 9.114277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.980412, 19.112137, 8.952209>,  <23.190504, 18.905014, 8.682096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.980412, 19.112137, 8.952209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674172, -0.231021, 0.701514,
		0.519253, 0.823715, -0.227750,
		-0.525232, 0.517806, 0.675283,
		22.822842, 19.267479, 9.154794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.671434, 19.196768, 9.119133>,  <23.190504, 18.905014, 8.682096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.671434, 19.196768, 9.119133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.334202, 19.250921, 9.327320>,  <23.131863, 19.283413, 9.452232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.334202, 19.250921, 9.327320>,  <23.671434, 19.196768, 9.119133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.334202, 19.250921, 9.327320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476656, -0.260037, 0.839750,
		0.249028, 0.956061, 0.154701,
		-0.843080, 0.135382, 0.520469,
		23.081278, 19.291536, 9.483460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.902838, 19.418489, 9.789476>,  <23.671434, 19.196768, 9.119133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.902838, 19.418489, 9.789476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.538435, 19.259401, 9.833084>,  <23.319794, 19.163948, 9.859248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.538435, 19.259401, 9.833084>,  <23.902838, 19.418489, 9.789476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.538435, 19.259401, 9.833084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255008, -0.335538, 0.906855,
		-0.324095, 0.853951, 0.407099,
		-0.911007, -0.397721, 0.109018,
		23.265133, 19.140085, 9.865789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.734837, 19.632338, 10.386930>,  <23.902838, 19.418489, 9.789476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.734837, 19.632338, 10.386930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.476658, 19.328577, 10.354175>,  <23.321751, 19.146320, 10.334521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.476658, 19.328577, 10.354175>,  <23.734837, 19.632338, 10.386930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.476658, 19.328577, 10.354175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076948, -0.171317, 0.982206,
		-0.759919, 0.627661, 0.169010,
		-0.645447, -0.759402, -0.081890,
		23.283024, 19.100756, 10.329608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.341534, 19.656057, 11.128197>,  <23.734837, 19.632338, 10.386930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.341534, 19.656057, 11.128197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.239092, 19.314659, 10.946668>,  <23.177626, 19.109819, 10.837750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.239092, 19.314659, 10.946668>,  <23.341534, 19.656057, 11.128197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.239092, 19.314659, 10.946668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088898, -0.446695, 0.890259,
		-0.962552, 0.268345, 0.038527,
		-0.256106, -0.853495, -0.453822,
		23.162260, 19.058611, 10.810521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.708481, 19.397427, 11.384645>,  <23.341534, 19.656057, 11.128197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.708481, 19.397427, 11.384645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.875599, 19.071095, 11.224714>,  <22.975870, 18.875294, 11.128756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.875599, 19.071095, 11.224714>,  <22.708481, 19.397427, 11.384645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.875599, 19.071095, 11.224714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104232, -0.480213, 0.870937,
		-0.902542, -0.322200, -0.285667,
		0.417797, -0.815833, -0.399829,
		23.000938, 18.826345, 11.104766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.379183, 18.947309, 11.782421>,  <22.708481, 19.397427, 11.384645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.379183, 18.947309, 11.782421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.687435, 18.749580, 11.621534>,  <22.872387, 18.630943, 11.525002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.687435, 18.749580, 11.621534>,  <22.379183, 18.947309, 11.782421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.687435, 18.749580, 11.621534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024153, -0.653342, 0.756678,
		-0.636824, -0.573405, -0.515425,
		0.770631, -0.494319, -0.402214,
		22.918623, 18.601284, 11.500870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.133358, 18.301332, 11.727740>,  <22.379183, 18.947309, 11.782421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.133358, 18.301332, 11.727740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.532797, 18.295382, 11.748085>,  <22.772459, 18.291811, 11.760292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.532797, 18.295382, 11.748085>,  <22.133358, 18.301332, 11.727740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.532797, 18.295382, 11.748085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048697, -0.636144, 0.770032,
		0.020902, -0.771427, -0.635975,
		0.998595, -0.014875, 0.050863,
		22.832375, 18.290918, 11.763344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.367689, 17.675299, 11.969553>,  <22.133358, 18.301332, 11.727740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.367689, 17.675299, 11.969553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.687822, 17.894299, 12.067297>,  <22.879902, 18.025700, 12.125943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.687822, 17.894299, 12.067297>,  <22.367689, 17.675299, 11.969553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.687822, 17.894299, 12.067297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115428, -0.540646, 0.833294,
		0.588342, -0.638704, -0.495893,
		0.800331, 0.547502, 0.244361,
		22.927921, 18.058550, 12.140605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.743753, 17.234419, 12.382029>,  <22.367689, 17.675299, 11.969553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.743753, 17.234419, 12.382029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.927227, 17.574127, 12.486599>,  <23.037312, 17.777952, 12.549341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.927227, 17.574127, 12.486599>,  <22.743753, 17.234419, 12.382029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.927227, 17.574127, 12.486599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267205, -0.412408, 0.870931,
		0.847472, -0.329630, -0.416095,
		0.458686, 0.849273, 0.261426,
		23.064833, 17.828909, 12.565026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.350771, 16.968021, 12.758103>,  <22.743753, 17.234419, 12.382029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.350771, 16.968021, 12.758103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.252155, 17.338116, 12.873454>,  <23.192986, 17.560171, 12.942664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.252155, 17.338116, 12.873454>,  <23.350771, 16.968021, 12.758103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.252155, 17.338116, 12.873454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110598, -0.268756, 0.956838,
		0.962801, 0.267793, -0.036070,
		-0.246541, 0.925233, 0.288376,
		23.178194, 17.615686, 12.959967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.799755, 17.130054, 13.246307>,  <23.350771, 16.968021, 12.758103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.799755, 17.130054, 13.246307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.502918, 17.383390, 13.334109>,  <23.324816, 17.535393, 13.386790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.502918, 17.383390, 13.334109>,  <23.799755, 17.130054, 13.246307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.502918, 17.383390, 13.334109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028231, -0.297652, 0.954257,
		0.669705, 0.714342, 0.203005,
		-0.742091, 0.633339, 0.219505,
		23.280291, 17.573393, 13.399961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.087376, 17.500860, 13.726414>,  <23.799755, 17.130054, 13.246307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.087376, 17.500860, 13.726414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.703558, 17.578720, 13.807788>,  <23.473267, 17.625435, 13.856612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.703558, 17.578720, 13.807788>,  <24.087376, 17.500860, 13.726414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.703558, 17.578720, 13.807788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162260, -0.208196, 0.964534,
		0.230099, 0.958523, 0.168189,
		-0.959545, 0.194648, 0.203436,
		23.415695, 17.637114, 13.868818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.032349, 17.908775, 14.272701>,  <24.087376, 17.500860, 13.726414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.032349, 17.908775, 14.272701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.682468, 17.715698, 14.290154>,  <23.472540, 17.599852, 14.300625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.682468, 17.715698, 14.290154>,  <24.032349, 17.908775, 14.272701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.682468, 17.715698, 14.290154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180368, -0.240643, 0.953708,
		-0.449850, 0.842079, 0.297553,
		-0.874701, -0.482695, 0.043631,
		23.420057, 17.570890, 14.303243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.791269, 18.046593, 14.915899>,  <24.032349, 17.908775, 14.272701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.791269, 18.046593, 14.915899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.520250, 17.763819, 14.834735>,  <23.357639, 17.594154, 14.786036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.520250, 17.763819, 14.834735>,  <23.791269, 18.046593, 14.915899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.520250, 17.763819, 14.834735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040171, -0.311047, 0.949545,
		-0.734383, 0.635209, 0.239147,
		-0.677546, -0.706936, -0.202911,
		23.316986, 17.551739, 14.773862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.276983, 18.057138, 15.477324>,  <23.791269, 18.046593, 14.915899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.276983, 18.057138, 15.477324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.309362, 17.707245, 15.286204>,  <23.328789, 17.497309, 15.171533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.309362, 17.707245, 15.286204>,  <23.276983, 18.057138, 15.477324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.309362, 17.707245, 15.286204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242427, -0.447696, 0.860696,
		-0.966787, -0.185501, 0.175820,
		0.080946, -0.874733, -0.477797,
		23.333647, 17.444824, 15.142865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.775518, 17.562305, 15.748595>,  <23.276983, 18.057138, 15.477324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.775518, 17.562305, 15.748595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.096003, 17.367512, 15.609510>,  <23.288294, 17.250635, 15.526059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.096003, 17.367512, 15.609510>,  <22.775518, 17.562305, 15.748595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.096003, 17.367512, 15.609510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046473, -0.528691, 0.847541,
		-0.596575, -0.695218, -0.400961,
		0.801211, -0.486988, -0.347713,
		23.336367, 17.221416, 15.505197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.709923, 16.860683, 15.790405>,  <22.775518, 17.562305, 15.748595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.709923, 16.860683, 15.790405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.100990, 16.943707, 15.803559>,  <23.335630, 16.993521, 15.811452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.100990, 16.943707, 15.803559>,  <22.709923, 16.860683, 15.790405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.100990, 16.943707, 15.803559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078209, -0.504619, 0.859792,
		0.195052, -0.838021, -0.509583,
		0.977670, 0.207559, 0.032886,
		23.394291, 17.005974, 15.813425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.122009, 16.209612, 16.083588>,  <22.709923, 16.860683, 15.790405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.122009, 16.209612, 16.083588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.330151, 16.547686, 16.132401>,  <23.455036, 16.750530, 16.161688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.330151, 16.547686, 16.132401>,  <23.122009, 16.209612, 16.083588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.330151, 16.547686, 16.132401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331607, -0.331681, 0.883190,
		0.786935, -0.419105, -0.452861,
		0.520355, 0.845185, 0.122034,
		23.486258, 16.801241, 16.169010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.816038, 15.974681, 16.266718>,  <23.122009, 16.209612, 16.083588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.816038, 15.974681, 16.266718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.707788, 16.328476, 16.418741>,  <23.642839, 16.540752, 16.509956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.707788, 16.328476, 16.418741>,  <23.816038, 15.974681, 16.266718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.707788, 16.328476, 16.418741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148851, -0.351598, 0.924242,
		0.951108, 0.306694, -0.036506,
		-0.270624, 0.884487, 0.380059,
		23.626602, 16.593822, 16.532759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.332983, 15.753161, 15.713319>,  <23.816038, 15.974681, 16.266718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.332983, 15.753161, 15.713319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.164701, 15.549953, 15.412673>,  <24.063732, 15.428027, 15.232285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.164701, 15.549953, 15.412673>,  <24.332983, 15.753161, 15.713319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.164701, 15.549953, 15.412673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158317, 0.774674, -0.612222,
		0.893278, -0.376556, -0.245478,
		-0.420701, -0.508022, -0.751615,
		24.038490, 15.397546, 15.187189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.700397, 15.805454, 15.176483>,  <24.332983, 15.753161, 15.713319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.700397, 15.805454, 15.176483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.335432, 15.725456, 15.033651>,  <24.116453, 15.677458, 14.947952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.335432, 15.725456, 15.033651>,  <24.700397, 15.805454, 15.176483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.335432, 15.725456, 15.033651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128757, 0.687905, -0.714288,
		0.388490, -0.697702, -0.601903,
		-0.912413, -0.199994, -0.357079,
		24.061708, 15.665458, 14.926528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.522249, 15.682884, 15.058605>,  <24.700397, 15.805454, 15.176483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.522249, 15.682884, 15.058605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882589, 15.812001, 15.174723>,  <26.098793, 15.889471, 15.244393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882589, 15.812001, 15.174723>,  <25.522249, 15.682884, 15.058605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.882589, 15.812001, 15.174723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415667, -0.834258, -0.362263,
		0.125245, 0.447012, -0.885717,
		0.900852, 0.322791, 0.290295,
		26.152845, 15.908838, 15.261811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.977240, 15.601897, 14.399039>,  <25.522249, 15.682884, 15.058605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.977240, 15.601897, 14.399039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115747, 15.608662, 14.774232>,  <26.198853, 15.612720, 14.999348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115747, 15.608662, 14.774232>,  <25.977240, 15.601897, 14.399039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.115747, 15.608662, 14.774232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333130, -0.936894, -0.106089,
		0.876996, 0.349206, -0.330051,
		0.346269, 0.016911, 0.937983,
		26.219627, 15.613735, 15.055627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.688534, 15.577472, 14.399107>,  <25.977240, 15.601897, 14.399039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.688534, 15.577472, 14.399107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.502182, 15.394334, 14.701983>,  <26.390371, 15.284451, 14.883709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.502182, 15.394334, 14.701983>,  <26.688534, 15.577472, 14.399107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.502182, 15.394334, 14.701983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442364, -0.861628, -0.248819,
		0.766337, 0.219035, 0.603946,
		-0.465877, -0.457844, 0.757191,
		26.362419, 15.256981, 14.929141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.098148, 15.108238, 14.795243>,  <26.688534, 15.577472, 14.399107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.098148, 15.108238, 14.795243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733923, 14.961829, 14.872086>,  <26.515388, 14.873983, 14.918191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.733923, 14.961829, 14.872086>,  <27.098148, 15.108238, 14.795243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733923, 14.961829, 14.872086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369542, -0.929030, -0.018509,
		0.185246, 0.054138, 0.981200,
		-0.910562, -0.366023, 0.192105,
		26.460754, 14.852022, 14.929717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<11.690569, 20.687174, 24.403847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.653263, 20.331881, 24.583776>,  <11.630879, 20.118704, 24.691734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.653263, 20.331881, 24.583776>,  <11.690569, 20.687174, 24.403847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.653263, 20.331881, 24.583776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032854, -0.454295, -0.890245,
		0.995099, -0.068250, 0.071551,
		-0.093265, -0.888233, 0.449826,
		11.625283, 20.065411, 24.718723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.262057, 20.180923, 24.319794>,  <11.690569, 20.687174, 24.403847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.262057, 20.180923, 24.319794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.901993, 20.017157, 24.379240>,  <11.685954, 19.918896, 24.414907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.901993, 20.017157, 24.379240>,  <12.262057, 20.180923, 24.319794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.901993, 20.017157, 24.379240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037369, -0.267357, -0.962873,
		0.433952, -0.872294, 0.225365,
		-0.900160, -0.409419, 0.148617,
		11.631945, 19.894331, 24.423824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.261564, 19.603323, 23.881748>,  <12.262057, 20.180923, 24.319794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.261564, 19.603323, 23.881748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.869971, 19.593899, 23.962778>,  <11.635015, 19.588243, 24.011396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.869971, 19.593899, 23.962778>,  <12.261564, 19.603323, 23.881748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.869971, 19.593899, 23.962778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180098, -0.366186, -0.912947,
		0.095691, -0.930243, 0.354246,
		-0.978983, -0.023562, 0.202575,
		11.576277, 19.586830, 24.023550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.998763, 18.964443, 23.579611>,  <12.261564, 19.603323, 23.881748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.998763, 18.964443, 23.579611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.663324, 19.170931, 23.649208>,  <11.462061, 19.294825, 23.690966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.663324, 19.170931, 23.649208>,  <11.998763, 18.964443, 23.579611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.663324, 19.170931, 23.649208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425150, -0.420501, -0.801515,
		-0.340592, -0.746122, 0.572101,
		-0.838597, 0.516218, 0.173994,
		11.411745, 19.325796, 23.701406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.490873, 18.441076, 23.466166>,  <11.998763, 18.964443, 23.579611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.490873, 18.441076, 23.466166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.288883, 18.785694, 23.445232>,  <11.167689, 18.992466, 23.432673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.288883, 18.785694, 23.445232>,  <11.490873, 18.441076, 23.466166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.288883, 18.785694, 23.445232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556879, -0.371525, -0.742870,
		-0.659460, -0.345987, 0.667387,
		-0.504975, 0.861547, -0.052333,
		11.137391, 19.044159, 23.429533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.774393, 18.293941, 23.384506>,  <11.490873, 18.441076, 23.466166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.774393, 18.293941, 23.384506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.846025, 18.655680, 23.229540>,  <10.889004, 18.872723, 23.136559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.846025, 18.655680, 23.229540>,  <10.774393, 18.293941, 23.384506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.846025, 18.655680, 23.229540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434532, -0.280590, -0.855834,
		-0.882673, 0.321608, 0.342718,
		0.179079, 0.904344, -0.387418,
		10.899748, 18.926983, 23.113314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.094926, 18.409925, 23.022755>,  <10.774393, 18.293941, 23.384506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.094926, 18.409925, 23.022755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.367640, 18.651787, 22.858042>,  <10.531268, 18.796904, 22.759214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.367640, 18.651787, 22.858042>,  <10.094926, 18.409925, 23.022755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.367640, 18.651787, 22.858042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319766, -0.259949, -0.911140,
		-0.657966, 0.752875, 0.016118,
		0.681785, 0.604653, -0.411782,
		10.572175, 18.833183, 22.734507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.676219, 18.795797, 22.602577>,  <10.094926, 18.409925, 23.022755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.676219, 18.795797, 22.602577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.048515, 18.850502, 22.466921>,  <10.271894, 18.883324, 22.385527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.048515, 18.850502, 22.466921>,  <9.676219, 18.795797, 22.602577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.048515, 18.850502, 22.466921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283049, -0.317757, -0.904939,
		-0.231524, 0.938258, -0.257039,
		0.930742, 0.136760, -0.339141,
		10.327738, 18.891531, 22.365179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.658736, 19.324810, 22.050209>,  <9.676219, 18.795797, 22.602577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.658736, 19.324810, 22.050209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.978150, 19.107725, 21.946053>,  <10.169799, 18.977474, 21.883558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.978150, 19.107725, 21.946053>,  <9.658736, 19.324810, 22.050209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.978150, 19.107725, 21.946053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264868, 0.071659, -0.961618,
		0.540542, 0.836856, -0.086524,
		0.798536, -0.542712, -0.260391,
		10.217711, 18.944912, 21.867935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.679461, 19.427349, 21.368671>,  <9.658736, 19.324810, 22.050209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.679461, 19.427349, 21.368671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.975907, 19.159536, 21.388578>,  <10.153775, 18.998850, 21.400522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.975907, 19.159536, 21.388578>,  <9.679461, 19.427349, 21.368671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.975907, 19.159536, 21.388578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007479, -0.065893, -0.997799,
		0.671336, 0.739856, -0.043827,
		0.741116, -0.669530, 0.049770,
		10.198242, 18.958677, 21.403509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.157263, 19.681307, 20.919346>,  <9.679461, 19.427349, 21.368671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.157263, 19.681307, 20.919346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.239865, 19.292253, 20.961933>,  <10.289427, 19.058821, 20.987486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.239865, 19.292253, 20.961933>,  <10.157263, 19.681307, 20.919346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.239865, 19.292253, 20.961933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075652, -0.092614, -0.992824,
		0.975516, 0.213080, 0.054456,
		0.206507, -0.972635, 0.106467,
		10.301818, 19.000463, 20.993874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.814270, 19.577244, 20.506989>,  <10.157263, 19.681307, 20.919346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.814270, 19.577244, 20.506989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.624585, 19.228077, 20.552839>,  <10.510775, 19.018578, 20.580351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.624585, 19.228077, 20.552839>,  <10.814270, 19.577244, 20.506989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.624585, 19.228077, 20.552839> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116998, -0.191525, -0.974489,
		0.872602, -0.448703, 0.192953,
		-0.474212, -0.872917, 0.114628,
		10.482322, 18.966202, 20.587227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.228509, 18.999676, 20.233732>,  <10.814270, 19.577244, 20.506989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.228509, 18.999676, 20.233732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.842823, 18.893854, 20.226765>,  <10.611412, 18.830362, 20.222584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.842823, 18.893854, 20.226765>,  <11.228509, 18.999676, 20.233732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.842823, 18.893854, 20.226765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079130, -0.224452, -0.971267,
		0.253040, -0.937888, 0.237353,
		-0.964214, -0.264552, -0.017420,
		10.553558, 18.814489, 20.221539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.254484, 18.434162, 19.873278>,  <11.228509, 18.999676, 20.233732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.254484, 18.434162, 19.873278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.863316, 18.516323, 19.857906>,  <10.628614, 18.565620, 19.848684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.863316, 18.516323, 19.857906>,  <11.254484, 18.434162, 19.873278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.863316, 18.516323, 19.857906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001978, -0.192981, -0.981201,
		-0.208972, -0.959459, 0.189126,
		-0.977920, 0.205418, -0.038430,
		10.569939, 18.577944, 19.846378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.086345, 17.817137, 19.545206>,  <11.254484, 18.434162, 19.873278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.086345, 17.817137, 19.545206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.821679, 18.111897, 19.489803>,  <10.662880, 18.288752, 19.456562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.821679, 18.111897, 19.489803>,  <11.086345, 17.817137, 19.545206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.821679, 18.111897, 19.489803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146222, -0.054363, -0.987757,
		-0.735405, -0.673815, -0.071781,
		-0.661663, 0.736898, -0.138505,
		10.623180, 18.332966, 19.448252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.912559, 17.662539, 18.986429>,  <11.086345, 17.817137, 19.545206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.912559, 17.662539, 18.986429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.749787, 18.027637, 19.000872>,  <10.652124, 18.246696, 19.009537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.749787, 18.027637, 19.000872>,  <10.912559, 17.662539, 18.986429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.749787, 18.027637, 19.000872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070014, 0.070578, -0.995046,
		-0.910773, -0.402383, -0.092625,
		-0.406927, 0.912747, 0.036108,
		10.627709, 18.301462, 19.011703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.357351, 17.675587, 18.452625>,  <10.912559, 17.662539, 18.986429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.357351, 17.675587, 18.452625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.460770, 18.056028, 18.520224>,  <10.522820, 18.284292, 18.560781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.460770, 18.056028, 18.520224>,  <10.357351, 17.675587, 18.452625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.460770, 18.056028, 18.520224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122992, 0.141108, -0.982325,
		-0.958138, 0.274760, -0.080495,
		0.258545, 0.951102, 0.168994,
		10.538333, 18.341358, 18.570921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.963527, 18.122768, 18.043535>,  <10.357351, 17.675587, 18.452625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.963527, 18.122768, 18.043535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.303739, 18.316668, 18.125137>,  <10.507866, 18.433006, 18.174099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.303739, 18.316668, 18.125137>,  <9.963527, 18.122768, 18.043535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.303739, 18.316668, 18.125137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134081, 0.175225, -0.975356,
		-0.508547, 0.856923, 0.084038,
		0.850530, 0.484746, 0.204007,
		10.558898, 18.462091, 18.186340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.946087, 18.676353, 17.593136>,  <9.963527, 18.122768, 18.043535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.946087, 18.676353, 17.593136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.330853, 18.657127, 17.700775>,  <10.561711, 18.645592, 17.765358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.330853, 18.657127, 17.700775>,  <9.946087, 18.676353, 17.593136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.330853, 18.657127, 17.700775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273163, 0.206074, -0.939636,
		-0.010289, 0.977355, 0.211355,
		0.961913, -0.048067, 0.269097,
		10.619427, 18.642708, 17.781504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.200186, 19.201082, 17.201342>,  <9.946087, 18.676353, 17.593136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.200186, 19.201082, 17.201342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.532072, 19.008434, 17.314205>,  <10.731204, 18.892845, 17.381924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.532072, 19.008434, 17.314205>,  <10.200186, 19.201082, 17.201342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.532072, 19.008434, 17.314205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344473, 0.044052, -0.937762,
		0.439214, 0.875274, 0.202455,
		0.829717, -0.481618, 0.282160,
		10.780987, 18.863949, 17.398853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.825039, 19.647388, 16.993851>,  <10.200186, 19.201082, 17.201342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.825039, 19.647388, 16.993851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.924150, 19.260632, 17.018276>,  <10.983617, 19.028578, 17.032930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.924150, 19.260632, 17.018276>,  <10.825039, 19.647388, 16.993851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.924150, 19.260632, 17.018276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377163, 0.038213, -0.925358,
		0.892387, 0.252314, 0.374143,
		0.247778, -0.966891, 0.061062,
		10.998484, 18.970564, 17.036594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.521660, 19.636471, 16.791677>,  <10.825039, 19.647388, 16.993851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.521660, 19.636471, 16.791677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.369721, 19.267941, 16.758520>,  <11.278559, 19.046822, 16.738626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.369721, 19.267941, 16.758520>,  <11.521660, 19.636471, 16.791677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.369721, 19.267941, 16.758520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330671, -0.051546, -0.942337,
		0.863929, -0.385354, 0.324237,
		-0.379846, -0.921328, -0.082893,
		11.255768, 18.991543, 16.733652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.057121, 19.070024, 16.505081>,  <11.521660, 19.636471, 16.791677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.057121, 19.070024, 16.505081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.444761, 19.063595, 16.406626>,  <12.677345, 19.059738, 16.347551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.444761, 19.063595, 16.406626>,  <12.057121, 19.070024, 16.505081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.444761, 19.063595, 16.406626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233354, 0.383098, 0.893746,
		0.079930, -0.923568, 0.375011,
		0.969101, -0.016073, -0.246139,
		12.735492, 19.058773, 16.332785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.331047, 18.923540, 17.126875>,  <12.057121, 19.070024, 16.505081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.331047, 18.923540, 17.126875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.630502, 19.065617, 16.902952>,  <12.810174, 19.150864, 16.768599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.630502, 19.065617, 16.902952>,  <12.331047, 18.923540, 17.126875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.630502, 19.065617, 16.902952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397688, 0.435010, 0.807844,
		0.530462, -0.827408, 0.184407,
		0.748635, 0.355194, -0.559806,
		12.855093, 19.172174, 16.735010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.007983, 18.869957, 17.444748>,  <12.331047, 18.923540, 17.126875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.007983, 18.869957, 17.444748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.102001, 19.157640, 17.183216>,  <13.158412, 19.330250, 17.026297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.102001, 19.157640, 17.183216>,  <13.007983, 18.869957, 17.444748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.102001, 19.157640, 17.183216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298501, 0.586759, 0.752736,
		0.925014, -0.372095, -0.076770,
		0.235044, 0.719207, -0.653831,
		13.172515, 19.373402, 16.987066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.696944, 19.110168, 17.571045>,  <13.007983, 18.869957, 17.444748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.696944, 19.110168, 17.571045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.503486, 19.420073, 17.408154>,  <13.387410, 19.606014, 17.310419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.503486, 19.420073, 17.408154>,  <13.696944, 19.110168, 17.571045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.503486, 19.420073, 17.408154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206514, 0.553138, 0.807087,
		0.850551, 0.306247, -0.427522,
		-0.483647, 0.774758, -0.407228,
		13.358392, 19.652500, 17.285986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.171410, 19.630157, 17.781061>,  <13.696944, 19.110168, 17.571045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.171410, 19.630157, 17.781061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.830815, 19.813873, 17.679850>,  <13.626459, 19.924103, 17.619123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.830815, 19.813873, 17.679850>,  <14.171410, 19.630157, 17.781061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.830815, 19.813873, 17.679850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108357, 0.626227, 0.772074,
		0.513060, 0.629992, -0.582992,
		-0.851486, 0.459291, -0.253028,
		13.575370, 19.951660, 17.603941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.278682, 20.356575, 17.690039>,  <14.171410, 19.630157, 17.781061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.278682, 20.356575, 17.690039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.884409, 20.324875, 17.749571>,  <13.647845, 20.305855, 17.785290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.884409, 20.324875, 17.749571>,  <14.278682, 20.356575, 17.690039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.884409, 20.324875, 17.749571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043844, 0.731841, 0.680064,
		-0.162814, 0.676852, -0.717887,
		-0.985682, -0.079249, 0.148830,
		13.588704, 20.301100, 17.794220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.149936, 21.009769, 17.862862>,  <14.278682, 20.356575, 17.690039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.149936, 21.009769, 17.862862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.839365, 20.791264, 17.988565>,  <13.653023, 20.660160, 18.063988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.839365, 20.791264, 17.988565>,  <14.149936, 21.009769, 17.862862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.839365, 20.791264, 17.988565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107912, 0.606533, 0.787701,
		-0.620901, 0.577679, -0.529876,
		-0.776426, -0.546264, 0.314258,
		13.606437, 20.627384, 18.082842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.666947, 21.449648, 18.108202>,  <14.149936, 21.009769, 17.862862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.666947, 21.449648, 18.108202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.571384, 21.100300, 18.277975>,  <13.514047, 20.890690, 18.379839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.571384, 21.100300, 18.277975>,  <13.666947, 21.449648, 18.108202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.571384, 21.100300, 18.277975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089822, 0.415341, 0.905220,
		-0.966879, 0.254387, -0.020780,
		-0.238907, -0.873372, 0.424434,
		13.499712, 20.838287, 18.405306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.336732, 21.701256, 18.696941>,  <13.666947, 21.449648, 18.108202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.336732, 21.701256, 18.696941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.372026, 21.315668, 18.797321>,  <13.393203, 21.084314, 18.857550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.372026, 21.315668, 18.797321>,  <13.336732, 21.701256, 18.696941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.372026, 21.315668, 18.797321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187513, 0.263503, 0.946258,
		-0.978291, -0.036437, 0.204008,
		0.088236, -0.963970, 0.250950,
		13.398498, 21.026478, 18.872606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.900061, 21.456974, 19.342730>,  <13.336732, 21.701256, 18.696941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.900061, 21.456974, 19.342730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.166767, 21.159864, 19.318375>,  <13.326791, 20.981598, 19.303762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.166767, 21.159864, 19.318375>,  <12.900061, 21.456974, 19.342730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.166767, 21.159864, 19.318375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113603, 0.020555, 0.993313,
		-0.736557, -0.669225, 0.098087,
		0.666766, -0.742775, -0.060886,
		13.366797, 20.937033, 19.300108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.664703, 20.960073, 19.794613>,  <12.900061, 21.456974, 19.342730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.664703, 20.960073, 19.794613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.063430, 20.935139, 19.774733>,  <13.302666, 20.920177, 19.762804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.063430, 20.935139, 19.774733>,  <12.664703, 20.960073, 19.794613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.063430, 20.935139, 19.774733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045093, -0.073244, 0.996294,
		-0.065716, -0.995366, -0.070202,
		0.996819, -0.062307, -0.049697,
		13.362474, 20.916437, 19.759823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.958735, 20.297001, 20.195595>,  <12.664703, 20.960073, 19.794613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.958735, 20.297001, 20.195595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.284195, 20.528851, 20.177687>,  <13.479471, 20.667961, 20.166943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.284195, 20.528851, 20.177687>,  <12.958735, 20.297001, 20.195595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.284195, 20.528851, 20.177687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100711, -0.064692, 0.992810,
		0.572563, -0.812310, -0.111012,
		0.813652, 0.579627, -0.044768,
		13.528291, 20.702738, 20.164257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.352909, 19.985876, 20.734148>,  <12.958735, 20.297001, 20.195595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.352909, 19.985876, 20.734148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.447346, 20.363777, 20.643192>,  <13.504007, 20.590517, 20.588619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.447346, 20.363777, 20.643192>,  <13.352909, 19.985876, 20.734148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.447346, 20.363777, 20.643192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069124, 0.217085, 0.973702,
		0.969269, -0.245601, -0.014053,
		0.236091, 0.944751, -0.227391,
		13.518173, 20.647202, 20.574974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.049692, 20.163635, 21.052650>,  <13.352909, 19.985876, 20.734148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.049692, 20.163635, 21.052650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.861204, 20.509703, 20.984022>,  <13.748112, 20.717342, 20.942844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.861204, 20.509703, 20.984022>,  <14.049692, 20.163635, 21.052650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.861204, 20.509703, 20.984022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262707, 0.323366, 0.909076,
		0.841984, 0.383301, -0.379662,
		-0.471220, 0.865167, -0.171573,
		13.719838, 20.769253, 20.932550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.487530, 20.745981, 21.198589>,  <14.049692, 20.163635, 21.052650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.487530, 20.745981, 21.198589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.121423, 20.906137, 21.216351>,  <13.901758, 21.002232, 21.227007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.121423, 20.906137, 21.216351>,  <14.487530, 20.745981, 21.198589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.121423, 20.906137, 21.216351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153311, 0.244276, 0.957510,
		0.372531, 0.883186, -0.284963,
		-0.915268, 0.400390, 0.044402,
		13.846842, 21.026255, 21.229671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.498391, 21.481445, 21.466434>,  <14.487530, 20.745981, 21.198589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.498391, 21.481445, 21.466434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.122046, 21.369270, 21.542463>,  <13.896238, 21.301966, 21.588081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.122046, 21.369270, 21.542463>,  <14.498391, 21.481445, 21.466434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.122046, 21.369270, 21.542463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031123, 0.487127, 0.872776,
		-0.337349, 0.827080, -0.449593,
		-0.940865, -0.280438, 0.190073,
		13.839786, 21.285139, 21.599485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.090558, 22.058731, 21.794291>,  <14.498391, 21.481445, 21.466434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.090558, 22.058731, 21.794291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.876111, 21.731739, 21.878487>,  <13.747442, 21.535543, 21.929005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.876111, 21.731739, 21.878487>,  <14.090558, 22.058731, 21.794291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.876111, 21.731739, 21.878487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051243, 0.280410, 0.958512,
		-0.842586, 0.503089, -0.192223,
		-0.536118, -0.817479, 0.210490,
		13.715276, 21.486496, 21.941633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.575695, 22.395899, 22.177740>,  <14.090558, 22.058731, 21.794291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.575695, 22.395899, 22.177740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.583195, 21.998812, 22.225344>,  <13.587694, 21.760559, 22.253906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.583195, 21.998812, 22.225344>,  <13.575695, 22.395899, 22.177740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.583195, 21.998812, 22.225344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011191, 0.119230, 0.992804,
		-0.999762, -0.017281, 0.013345,
		0.018748, -0.992716, 0.119008,
		13.588820, 21.700996, 22.261045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<12.292135, 21.552271, 22.847292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.671421, 21.426641, 22.828342>,  <12.898993, 21.351263, 22.816973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.671421, 21.426641, 22.828342>,  <12.292135, 21.552271, 22.847292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.671421, 21.426641, 22.828342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001351, -0.145165, 0.989407,
		-0.317625, -0.938235, -0.137223,
		0.948215, -0.314075, -0.047375,
		12.955886, 21.332418, 22.814131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.232213, 20.976824, 23.277264>,  <12.292135, 21.552271, 22.847292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.232213, 20.976824, 23.277264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.612573, 21.093800, 23.236731>,  <12.840789, 21.163984, 23.212410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.612573, 21.093800, 23.236731>,  <12.232213, 20.976824, 23.277264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.612573, 21.093800, 23.236731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153230, -0.160371, 0.975091,
		0.268905, -0.942741, -0.197307,
		0.950900, 0.292440, -0.101332,
		12.897842, 21.181532, 23.206331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.534495, 20.633263, 23.852360>,  <12.232213, 20.976824, 23.277264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.534495, 20.633263, 23.852360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.846526, 20.848907, 23.725340>,  <13.033745, 20.978294, 23.649128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.846526, 20.848907, 23.725340>,  <12.534495, 20.633263, 23.852360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.846526, 20.848907, 23.725340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343595, 0.055039, 0.937504,
		0.522898, -0.840433, -0.142301,
		0.780077, 0.539113, -0.317549,
		13.080549, 21.010641, 23.630075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.183155, 20.303520, 23.985294>,  <12.534495, 20.633263, 23.852360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.183155, 20.303520, 23.985294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.216281, 20.702122, 23.989697>,  <13.236156, 20.941282, 23.992338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.216281, 20.702122, 23.989697>,  <13.183155, 20.303520, 23.985294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.216281, 20.702122, 23.989697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158127, -0.024045, 0.987126,
		0.983940, -0.080008, -0.159566,
		0.082814, 0.996504, 0.011008,
		13.241125, 21.001074, 23.992998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.815110, 20.432951, 24.209909>,  <13.183155, 20.303520, 23.985294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.815110, 20.432951, 24.209909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.659628, 20.790911, 24.297600>,  <13.566339, 21.005688, 24.350214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.659628, 20.790911, 24.297600>,  <13.815110, 20.432951, 24.209909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.659628, 20.790911, 24.297600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183413, -0.158018, 0.970253,
		0.902922, 0.417351, -0.102714,
		-0.388706, 0.894901, 0.219225,
		13.543016, 21.059381, 24.363367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.286846, 20.792904, 24.703047>,  <13.815110, 20.432951, 24.209909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.286846, 20.792904, 24.703047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.960286, 21.017254, 24.758057>,  <13.764350, 21.151863, 24.791061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.960286, 21.017254, 24.758057>,  <14.286846, 20.792904, 24.703047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.960286, 21.017254, 24.758057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276791, 0.171042, 0.945585,
		0.506832, 0.810041, -0.294883,
		-0.816400, 0.560873, 0.137522,
		13.715366, 21.185516, 24.799313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.509429, 21.431923, 24.897648>,  <14.286846, 20.792904, 24.703047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.509429, 21.431923, 24.897648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.136772, 21.432173, 25.042999>,  <13.913178, 21.432322, 25.130209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.136772, 21.432173, 25.042999>,  <14.509429, 21.431923, 24.897648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.136772, 21.432173, 25.042999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341918, 0.340068, 0.876040,
		-0.123027, 0.940400, -0.317035,
		-0.931642, 0.000624, 0.363378,
		13.857280, 21.432360, 25.152012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.482669, 22.030674, 25.290876>,  <14.509429, 21.431923, 24.897648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.482669, 22.030674, 25.290876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.174323, 21.816786, 25.429350>,  <13.989316, 21.688454, 25.512434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.174323, 21.816786, 25.429350>,  <14.482669, 22.030674, 25.290876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.174323, 21.816786, 25.429350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114314, 0.418512, 0.900988,
		-0.626659, 0.734113, -0.261489,
		-0.770863, -0.534721, 0.346184,
		13.943064, 21.656370, 25.533205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.971246, 22.488340, 25.547874>,  <14.482669, 22.030674, 25.290876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.971246, 22.488340, 25.547874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.889824, 22.136549, 25.719957>,  <13.840971, 21.925474, 25.823208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.889824, 22.136549, 25.719957>,  <13.971246, 22.488340, 25.547874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.889824, 22.136549, 25.719957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141071, 0.461170, 0.876026,
		-0.968847, 0.117630, -0.217943,
		-0.203556, -0.879480, 0.430209,
		13.828757, 21.872705, 25.849020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.368756, 22.685635, 25.966490>,  <13.971246, 22.488340, 25.547874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.368756, 22.685635, 25.966490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.529794, 22.346090, 26.103516>,  <13.626416, 22.142363, 26.185732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.529794, 22.346090, 26.103516>,  <13.368756, 22.685635, 25.966490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.529794, 22.346090, 26.103516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139233, 0.313094, 0.939460,
		-0.904728, -0.425916, 0.007860,
		0.402592, -0.848862, 0.342567,
		13.650572, 22.091431, 26.206285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.839092, 22.440973, 26.415823>,  <13.368756, 22.685635, 25.966490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.839092, 22.440973, 26.415823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.151200, 22.226133, 26.544010>,  <13.338466, 22.097229, 26.620922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.151200, 22.226133, 26.544010>,  <12.839092, 22.440973, 26.415823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.151200, 22.226133, 26.544010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190885, 0.283434, 0.939802,
		-0.595601, -0.794473, 0.118630,
		0.780271, -0.537102, 0.320466,
		13.385282, 22.065002, 26.640150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.649088, 21.928604, 27.003874>,  <12.839092, 22.440973, 26.415823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.649088, 21.928604, 27.003874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.043160, 21.987558, 27.038963>,  <13.279604, 22.022930, 27.060017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.043160, 21.987558, 27.038963>,  <12.649088, 21.928604, 27.003874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.043160, 21.987558, 27.038963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107696, 0.133491, 0.985181,
		0.133491, -0.980030, 0.147385,
		-0.985181, -0.147385, -0.087725,
		13.338715, 22.031775, 27.065281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.976241, 21.569223, 27.676752>,  <12.649088, 21.928604, 27.003874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.976241, 21.569223, 27.676752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.261057, 21.843391, 27.615829>,  <13.431947, 22.007893, 27.579275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.261057, 21.843391, 27.615829>,  <12.976241, 21.569223, 27.676752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.261057, 21.843391, 27.615829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004222, 0.212738, 0.977100,
		0.702126, -0.696377, 0.148584,
		0.712040, 0.685420, -0.152309,
		13.474669, 22.049017, 27.570137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.491574, 21.442541, 28.238487>,  <12.976241, 21.569223, 27.676752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.491574, 21.442541, 28.238487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.536028, 21.812584, 28.093256>,  <13.562700, 22.034611, 28.006117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.536028, 21.812584, 28.093256>,  <13.491574, 21.442541, 28.238487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.536028, 21.812584, 28.093256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295015, 0.318161, 0.900966,
		0.949008, -0.207240, -0.237562,
		0.111133, 0.925108, -0.363077,
		13.569367, 22.090117, 27.984333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.063490, 21.668308, 28.613495>,  <13.491574, 21.442541, 28.238487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.063490, 21.668308, 28.613495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.930666, 22.012119, 28.458088>,  <13.850971, 22.218407, 28.364843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.930666, 22.012119, 28.458088>,  <14.063490, 21.668308, 28.613495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.930666, 22.012119, 28.458088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298402, 0.486457, 0.821168,
		0.894814, 0.156743, -0.418018,
		-0.332060, 0.859530, -0.388516,
		13.831048, 22.269978, 28.341534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.576280, 22.098070, 28.560091>,  <14.063490, 21.668308, 28.613495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.576280, 22.098070, 28.560091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.270414, 22.352461, 28.601711>,  <14.086895, 22.505095, 28.626684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.270414, 22.352461, 28.601711>,  <14.576280, 22.098070, 28.560091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.270414, 22.352461, 28.601711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481710, 0.456826, 0.747841,
		0.428074, 0.621969, -0.655673,
		-0.764662, 0.635975, 0.104053,
		14.041016, 22.543253, 28.632927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.902553, 22.736036, 28.781200>,  <14.576280, 22.098070, 28.560091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.902553, 22.736036, 28.781200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.513876, 22.789312, 28.859253>,  <14.280670, 22.821278, 28.906084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.513876, 22.789312, 28.859253>,  <14.902553, 22.736036, 28.781200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.513876, 22.789312, 28.859253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235988, 0.586193, 0.775040,
		-0.011156, 0.799148, -0.601031,
		-0.971692, 0.133190, 0.195129,
		14.222368, 22.829269, 28.917791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.753015, 23.447491, 28.798534>,  <14.902553, 22.736036, 28.781200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.753015, 23.447491, 28.798534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.486896, 23.248392, 29.021111>,  <14.327224, 23.128933, 29.154655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.486896, 23.248392, 29.021111>,  <14.753015, 23.447491, 28.798534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.486896, 23.248392, 29.021111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272096, 0.532400, 0.801570,
		-0.695228, 0.684688, -0.218769,
		-0.665298, -0.497748, 0.556440,
		14.287306, 23.099068, 29.188042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.628074, 23.977840, 29.435549>,  <14.753015, 23.447491, 28.798534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.628074, 23.977840, 29.435549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.466457, 23.624567, 29.530830>,  <14.369488, 23.412603, 29.587999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.466457, 23.624567, 29.530830>,  <14.628074, 23.977840, 29.435549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.466457, 23.624567, 29.530830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188749, 0.174306, 0.966432,
		-0.895056, 0.435439, 0.096273,
		-0.404041, -0.883182, 0.238203,
		14.345245, 23.359612, 29.602291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.438562, 24.041067, 30.049587>,  <14.628074, 23.977840, 29.435549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.438562, 24.041067, 30.049587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.406988, 23.642323, 30.047071>,  <14.388043, 23.403076, 30.045563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.406988, 23.642323, 30.047071>,  <14.438562, 24.041067, 30.049587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.406988, 23.642323, 30.047071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385381, -0.036332, 0.922042,
		-0.919375, 0.070359, 0.387039,
		-0.078935, -0.996860, -0.006288,
		14.383307, 23.343264, 30.045185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.080760, 23.863306, 30.645046>,  <14.438562, 24.041067, 30.049587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.080760, 23.863306, 30.645046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.261762, 23.529989, 30.518009>,  <14.370362, 23.330000, 30.441786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.261762, 23.529989, 30.518009>,  <14.080760, 23.863306, 30.645046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.261762, 23.529989, 30.518009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303089, -0.191230, 0.933578,
		-0.838676, -0.518707, 0.166029,
		0.452504, -0.833291, -0.317594,
		14.397512, 23.280003, 30.422731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.856134, 23.256052, 31.010660>,  <14.080760, 23.863306, 30.645046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.856134, 23.256052, 31.010660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.232449, 23.194534, 30.889818>,  <14.458238, 23.157623, 30.817312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.232449, 23.194534, 30.889818>,  <13.856134, 23.256052, 31.010660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.232449, 23.194534, 30.889818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254753, -0.267206, 0.929356,
		-0.223647, -0.951289, -0.212207,
		0.940788, -0.153787, -0.302103,
		14.514685, 23.148396, 30.799187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.127548, 22.748451, 31.369606>,  <13.856134, 23.256052, 31.010660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.127548, 22.748451, 31.369606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.456238, 22.932724, 31.235416>,  <14.653452, 23.043287, 31.154903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.456238, 22.932724, 31.235416>,  <14.127548, 22.748451, 31.369606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.456238, 22.932724, 31.235416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341094, 0.074003, 0.937112,
		0.456535, -0.884476, -0.096325,
		0.821724, 0.460680, -0.335474,
		14.702755, 23.070929, 31.134773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.626666, 22.293961, 31.429369>,  <14.127548, 22.748451, 31.369606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.626666, 22.293961, 31.429369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.727219, 21.926607, 31.551600>,  <14.787550, 21.706194, 31.624937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.727219, 21.926607, 31.551600>,  <14.626666, 22.293961, 31.429369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.727219, 21.926607, 31.551600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740236, -0.385827, -0.550625,
		0.623585, -0.087781, -0.776812,
		0.251381, -0.918386, 0.305575,
		14.802633, 21.651091, 31.643272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.776835, 21.757610, 30.914865>,  <14.626666, 22.293961, 31.429369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.776835, 21.757610, 30.914865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.643307, 21.573635, 31.243990>,  <14.563190, 21.463249, 31.441465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.643307, 21.573635, 31.243990>,  <14.776835, 21.757610, 30.914865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.643307, 21.573635, 31.243990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732964, -0.422216, -0.533383,
		0.592728, -0.781146, -0.196174,
		-0.333822, -0.459940, 0.822811,
		14.543160, 21.435654, 31.490833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.724118, 21.100315, 30.752701>,  <14.776835, 21.757610, 30.914865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.724118, 21.100315, 30.752701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.481269, 21.102890, 31.070534>,  <14.335559, 21.104435, 31.261232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.481269, 21.102890, 31.070534>,  <14.724118, 21.100315, 30.752701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.481269, 21.102890, 31.070534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680037, -0.521473, -0.515380,
		0.411036, -0.853244, 0.320975,
		-0.607125, 0.006435, 0.794581,
		14.299131, 21.104820, 31.308908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.598266, 20.395172, 30.838551>,  <14.724118, 21.100315, 30.752701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.598266, 20.395172, 30.838551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.316551, 20.618965, 31.013348>,  <14.147523, 20.753241, 31.118225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.316551, 20.618965, 31.013348>,  <14.598266, 20.395172, 30.838551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.316551, 20.618965, 31.013348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698003, -0.433435, -0.570022,
		-0.129509, -0.706480, 0.695782,
		-0.704286, 0.559481, 0.436992,
		14.105266, 20.786810, 31.144445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.163620, 20.006424, 31.063976>,  <14.598266, 20.395172, 30.838551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.163620, 20.006424, 31.063976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.957294, 20.346386, 31.020908>,  <13.833497, 20.550364, 30.995068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.957294, 20.346386, 31.020908>,  <14.163620, 20.006424, 31.063976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.957294, 20.346386, 31.020908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623033, -0.458417, -0.633785,
		-0.588015, -0.259834, 0.765979,
		-0.515817, 0.849905, -0.107671,
		13.802548, 20.601358, 30.988607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.495678, 19.803591, 31.030783>,  <14.163620, 20.006424, 31.063976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.495678, 19.803591, 31.030783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.437141, 20.173552, 30.890419>,  <13.402020, 20.395529, 30.806200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.437141, 20.173552, 30.890419>,  <13.495678, 19.803591, 31.030783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.437141, 20.173552, 30.890419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593869, -0.365834, -0.716579,
		-0.791141, 0.103529, 0.602808,
		-0.146341, 0.924904, -0.350909,
		13.393239, 20.451023, 30.785147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.862984, 19.775288, 30.750496>,  <13.495678, 19.803591, 31.030783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.862984, 19.775288, 30.750496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.059242, 20.075207, 30.572927>,  <13.176997, 20.255159, 30.466387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.059242, 20.075207, 30.572927>,  <12.862984, 19.775288, 30.750496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.059242, 20.075207, 30.572927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363477, -0.286904, -0.886325,
		-0.791929, 0.596227, 0.131767,
		0.490646, 0.749800, -0.443922,
		13.206436, 20.300146, 30.439751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.269073, 20.225277, 30.489912>,  <12.862984, 19.775288, 30.750496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.269073, 20.225277, 30.489912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.606702, 20.314943, 30.295063>,  <12.809279, 20.368744, 30.178154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.606702, 20.314943, 30.295063>,  <12.269073, 20.225277, 30.489912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.606702, 20.314943, 30.295063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423539, -0.278431, -0.862027,
		-0.328867, 0.933931, -0.140073,
		0.844074, 0.224165, -0.487123,
		12.859924, 20.382193, 30.148926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.102714, 20.456644, 29.884996>,  <12.269073, 20.225277, 30.489912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.102714, 20.456644, 29.884996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.485830, 20.361782, 29.820013>,  <12.715700, 20.304865, 29.781023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.485830, 20.361782, 29.820013>,  <12.102714, 20.456644, 29.884996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.485830, 20.361782, 29.820013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238336, -0.339167, -0.910034,
		0.160719, 0.910342, -0.381374,
		0.957792, -0.237155, -0.162457,
		12.773168, 20.290636, 29.771276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.361875, 21.006641, 29.228220>,  <12.102714, 20.456644, 29.884996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.361875, 21.006641, 29.228220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.585495, 20.678537, 29.276608>,  <12.719667, 20.481674, 29.305641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.585495, 20.678537, 29.276608>,  <12.361875, 21.006641, 29.228220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.585495, 20.678537, 29.276608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151723, -0.244643, -0.957669,
		0.815133, 0.517033, -0.261220,
		0.559052, -0.820261, 0.120970,
		12.753210, 20.432459, 29.312899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.847575, 20.945227, 28.643391>,  <12.361875, 21.006641, 29.228220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.847575, 20.945227, 28.643391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.797607, 20.585117, 28.810200>,  <12.767627, 20.369053, 28.910284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.797607, 20.585117, 28.810200>,  <12.847575, 20.945227, 28.643391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.797607, 20.585117, 28.810200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278728, -0.371543, -0.885588,
		0.952211, -0.226862, -0.204519,
		-0.124918, -0.900272, 0.417020,
		12.760132, 20.315035, 28.935307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.285164, 20.514702, 28.239632>,  <12.847575, 20.945227, 28.643391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.285164, 20.514702, 28.239632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.994239, 20.301952, 28.413126>,  <12.819684, 20.174303, 28.517223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.994239, 20.301952, 28.413126>,  <13.285164, 20.514702, 28.239632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.994239, 20.301952, 28.413126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273983, -0.354424, -0.894045,
		0.629247, -0.769086, 0.112052,
		-0.727311, -0.531875, 0.433736,
		12.776046, 20.142389, 28.543247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.455711, 19.902622, 28.018663>,  <13.285164, 20.514702, 28.239632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.455711, 19.902622, 28.018663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.079519, 19.877090, 28.152185>,  <12.853805, 19.861771, 28.232298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.079519, 19.877090, 28.152185>,  <13.455711, 19.902622, 28.018663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.079519, 19.877090, 28.152185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267937, -0.464960, -0.843814,
		0.209065, -0.883028, 0.420183,
		-0.940479, -0.063829, 0.333803,
		12.797376, 19.857943, 28.252327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.218580, 19.290754, 27.821939>,  <13.455711, 19.902622, 28.018663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.218580, 19.290754, 27.821939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.880897, 19.493475, 27.891754>,  <12.678287, 19.615108, 27.933643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.880897, 19.493475, 27.891754>,  <13.218580, 19.290754, 27.821939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.880897, 19.493475, 27.891754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333521, -0.241752, -0.911219,
		-0.419614, -0.827470, 0.373119,
		-0.844208, 0.506803, 0.174535,
		12.627634, 19.645515, 27.944115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.649629, 18.767279, 27.571703>,  <13.218580, 19.290754, 27.821939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.649629, 18.767279, 27.571703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.520835, 19.145193, 27.596064>,  <12.443559, 19.371941, 27.610680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.520835, 19.145193, 27.596064>,  <12.649629, 18.767279, 27.571703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.520835, 19.145193, 27.596064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376889, -0.068904, -0.923692,
		-0.868493, -0.320367, 0.378265,
		-0.321984, 0.944785, 0.060900,
		12.424239, 19.428629, 27.614334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.076952, 18.796888, 27.138067>,  <12.649629, 18.767279, 27.571703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.076952, 18.796888, 27.138067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.149111, 19.189882, 27.156750>,  <12.192407, 19.425678, 27.167959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.149111, 19.189882, 27.156750>,  <12.076952, 18.796888, 27.138067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.149111, 19.189882, 27.156750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296181, 0.099540, -0.949931,
		-0.937941, 0.157533, 0.308950,
		0.180398, 0.982484, 0.046704,
		12.203230, 19.484627, 27.170761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.491425, 19.105991, 26.793463>,  <12.076952, 18.796888, 27.138067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.491425, 19.105991, 26.793463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.761139, 19.401314, 26.787209>,  <11.922968, 19.578506, 26.783457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.761139, 19.401314, 26.787209>,  <11.491425, 19.105991, 26.793463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.761139, 19.401314, 26.787209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307284, 0.261259, -0.915052,
		-0.671503, 0.621811, 0.403033,
		0.674286, 0.738305, -0.015636,
		11.963425, 19.622805, 26.782518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.095849, 19.624918, 26.554592>,  <11.491425, 19.105991, 26.793463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.095849, 19.624918, 26.554592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.473370, 19.751318, 26.515848>,  <11.699882, 19.827158, 26.492601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.473370, 19.751318, 26.515848>,  <11.095849, 19.624918, 26.554592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.473370, 19.751318, 26.515848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180056, 0.245838, -0.952441,
		-0.277161, 0.916355, 0.288920,
		0.943801, 0.316002, -0.096859,
		11.756510, 19.846119, 26.486790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.024555, 20.324232, 26.317509>,  <11.095849, 19.624918, 26.554592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.024555, 20.324232, 26.317509> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.374229, 20.180883, 26.186441>,  <11.584034, 20.094873, 26.107801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.374229, 20.180883, 26.186441>,  <11.024555, 20.324232, 26.317509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.374229, 20.180883, 26.186441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237137, 0.273789, -0.932097,
		0.423750, 0.892529, 0.154360,
		0.874186, -0.358372, -0.327670,
		11.636485, 20.073372, 26.088140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.186236, 20.801792, 25.772705>,  <11.024555, 20.324232, 26.317509>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.186236, 20.801792, 25.772705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.425240, 20.489672, 25.698828>,  <11.568642, 20.302399, 25.654501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.425240, 20.489672, 25.698828>,  <11.186236, 20.801792, 25.772705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.425240, 20.489672, 25.698828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210455, 0.069649, -0.975119,
		0.773752, 0.621511, -0.122603,
		0.597508, -0.780303, -0.184692,
		11.604492, 20.255581, 25.643421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.453135, 20.919001, 25.113150>,  <11.186236, 20.801792, 25.772705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.453135, 20.919001, 25.113150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.516577, 20.525501, 25.146805>,  <11.554642, 20.289402, 25.166998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.516577, 20.525501, 25.146805>,  <11.453135, 20.919001, 25.113150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.516577, 20.525501, 25.146805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021491, -0.088637, -0.995832,
		0.987108, 0.156136, -0.035201,
		0.158605, -0.983750, 0.084139,
		11.564158, 20.230375, 25.172047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<20.350420, 15.323994, 7.533608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.954866, 15.350411, 7.586897>,  <19.717535, 15.366262, 7.618871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.954866, 15.350411, 7.586897>,  <20.350420, 15.323994, 7.533608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.954866, 15.350411, 7.586897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013180, 0.931352, -0.363883,
		-0.148109, -0.358082, -0.921868,
		-0.988883, 0.066044, 0.133222,
		19.658201, 15.370225, 7.626864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.020306, 15.499931, 6.880507>,  <20.350420, 15.323994, 7.533608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.020306, 15.499931, 6.880507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.776381, 15.621342, 7.173356>,  <19.630026, 15.694188, 7.349064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.776381, 15.621342, 7.173356>,  <20.020306, 15.499931, 6.880507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.776381, 15.621342, 7.173356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060777, 0.903129, -0.425047,
		-0.790212, -0.303695, -0.532292,
		-0.609813, 0.303526, 0.732121,
		19.593437, 15.712399, 7.392992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.263346, 15.706406, 6.757082>,  <20.020306, 15.499931, 6.880507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.263346, 15.706406, 6.757082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.504883, 15.895332, 7.013921>,  <19.649805, 16.008688, 7.168025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.504883, 15.895332, 7.013921>,  <19.263346, 15.706406, 6.757082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.504883, 15.895332, 7.013921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024770, 0.794031, -0.607372,
		-0.796718, 0.382663, 0.467771,
		0.603844, 0.472317, 0.642098,
		19.686035, 16.037027, 7.206551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.939081, 16.390348, 6.736249>,  <19.263346, 15.706406, 6.757082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.939081, 16.390348, 6.736249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.325050, 16.389271, 6.841258>,  <19.556631, 16.388624, 6.904263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.325050, 16.389271, 6.841258>,  <18.939081, 16.390348, 6.736249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.325050, 16.389271, 6.841258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142226, 0.845865, -0.514086,
		-0.220675, 0.533391, 0.816576,
		0.964922, -0.002693, 0.262523,
		19.614527, 16.388462, 6.920015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.206032, 16.974407, 7.149081>,  <18.939081, 16.390348, 6.736249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.206032, 16.974407, 7.149081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.498636, 16.851839, 6.905444>,  <19.674200, 16.778297, 6.759261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.498636, 16.851839, 6.905444>,  <19.206032, 16.974407, 7.149081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.498636, 16.851839, 6.905444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096378, 0.837886, -0.537269,
		0.674983, 0.451722, 0.583392,
		0.731512, -0.306421, -0.609094,
		19.718090, 16.759912, 6.722715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.537748, 17.511116, 7.079435>,  <19.206032, 16.974407, 7.149081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.537748, 17.511116, 7.079435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.600798, 17.289846, 6.752228>,  <19.638628, 17.157085, 6.555904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.600798, 17.289846, 6.752228>,  <19.537748, 17.511116, 7.079435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.600798, 17.289846, 6.752228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019899, 0.829984, -0.557433,
		0.987298, 0.071588, 0.141834,
		0.157626, -0.553175, -0.818017,
		19.648085, 17.123894, 6.506823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.188929, 17.575823, 6.837150>,  <19.537748, 17.511116, 7.079435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.188929, 17.575823, 6.837150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.941381, 17.505291, 6.530971>,  <19.792852, 17.462973, 6.347264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.941381, 17.505291, 6.530971>,  <20.188929, 17.575823, 6.837150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.941381, 17.505291, 6.530971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117001, 0.942915, -0.311805,
		0.776731, -0.282524, -0.562911,
		-0.618869, -0.176328, -0.765447,
		19.755720, 17.452393, 6.301337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.351109, 17.253525, 6.321288>,  <20.188929, 17.575823, 6.837150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.351109, 17.253525, 6.321288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.570101, 17.480244, 6.567542>,  <20.701496, 17.616274, 6.715294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.570101, 17.480244, 6.567542>,  <20.351109, 17.253525, 6.321288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.570101, 17.480244, 6.567542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161898, -0.650043, 0.742451,
		0.821007, -0.506148, -0.264124,
		0.547482, 0.566796, 0.615635,
		20.734344, 17.650282, 6.752232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.712749, 16.891544, 6.670854>,  <20.351109, 17.253525, 6.321288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.712749, 16.891544, 6.670854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.694532, 17.191404, 6.934959>,  <20.683601, 17.371321, 7.093423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.694532, 17.191404, 6.934959>,  <20.712749, 16.891544, 6.670854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.694532, 17.191404, 6.934959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129796, -0.659788, 0.740157,
		0.990494, -0.051990, 0.127351,
		-0.045544, 0.749651, 0.660264,
		20.680870, 17.416300, 7.133039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.250534, 16.846788, 7.256263>,  <20.712749, 16.891544, 6.670854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.250534, 16.846788, 7.256263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.994162, 17.113056, 7.409153>,  <20.840338, 17.272816, 7.500886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.994162, 17.113056, 7.409153>,  <21.250534, 16.846788, 7.256263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.994162, 17.113056, 7.409153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040266, -0.468105, 0.882755,
		0.766543, 0.581174, 0.273219,
		-0.640929, 0.665668, 0.382225,
		20.801884, 17.312757, 7.523820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.410843, 16.951778, 7.990145>,  <21.250534, 16.846788, 7.256263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.410843, 16.951778, 7.990145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.033234, 17.080248, 7.960025>,  <20.806667, 17.157330, 7.941953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.033234, 17.080248, 7.960025>,  <21.410843, 16.951778, 7.990145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.033234, 17.080248, 7.960025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158969, -0.242901, 0.956937,
		0.289051, 0.915340, 0.280360,
		-0.944023, 0.321172, -0.075300,
		20.750027, 17.176600, 7.937435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.234320, 17.390553, 8.513478>,  <21.410843, 16.951778, 7.990145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.234320, 17.390553, 8.513478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.858978, 17.285751, 8.423279>,  <20.633774, 17.222870, 8.369160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.858978, 17.285751, 8.423279>,  <21.234320, 17.390553, 8.513478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.858978, 17.285751, 8.423279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176279, -0.198458, 0.964126,
		-0.297356, 0.944441, 0.140038,
		-0.938352, -0.262002, -0.225498,
		20.577473, 17.207151, 8.355629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.808792, 17.766085, 8.978110>,  <21.234320, 17.390553, 8.513478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.808792, 17.766085, 8.978110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.626699, 17.434666, 8.847713>,  <20.517445, 17.235813, 8.769475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.626699, 17.434666, 8.847713>,  <20.808792, 17.766085, 8.978110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.626699, 17.434666, 8.847713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356693, -0.165758, 0.919399,
		-0.815802, 0.534819, -0.220079,
		-0.455233, -0.828548, -0.325992,
		20.490129, 17.186102, 8.749916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.185120, 17.738850, 9.306633>,  <20.808792, 17.766085, 8.978110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.185120, 17.738850, 9.306633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.201376, 17.354290, 9.197780>,  <20.211130, 17.123554, 9.132468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.201376, 17.354290, 9.197780>,  <20.185120, 17.738850, 9.306633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.201376, 17.354290, 9.197780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315137, -0.270789, 0.909594,
		-0.948176, 0.048793, -0.313978,
		0.040641, -0.961401, -0.272132,
		20.213568, 17.065870, 9.116140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.485680, 17.464537, 9.376459>,  <20.185120, 17.738850, 9.306633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.485680, 17.464537, 9.376459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.762947, 17.176382, 9.385885>,  <19.929308, 17.003489, 9.391541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.762947, 17.176382, 9.385885>,  <19.485680, 17.464537, 9.376459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.762947, 17.176382, 9.385885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326432, -0.284615, 0.901352,
		-0.642618, -0.632482, -0.432445,
		0.693170, -0.720389, 0.023564,
		19.970898, 16.960266, 9.392955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.087172, 16.866617, 9.556200>,  <19.485680, 17.464537, 9.376459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.087172, 16.866617, 9.556200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.470098, 16.806206, 9.654774>,  <19.699856, 16.769958, 9.713918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.470098, 16.806206, 9.654774>,  <19.087172, 16.866617, 9.556200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.470098, 16.806206, 9.654774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288995, -0.486392, 0.824563,
		-0.004669, -0.860589, -0.509279,
		0.957319, -0.151029, 0.246435,
		19.757294, 16.760897, 9.728704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.997425, 16.398588, 9.950364>,  <19.087172, 16.866617, 9.556200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.997425, 16.398588, 9.950364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.386166, 16.448936, 10.030025>,  <19.619410, 16.479145, 10.077823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.386166, 16.448936, 10.030025>,  <18.997425, 16.398588, 9.950364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.386166, 16.448936, 10.030025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128651, -0.424629, 0.896180,
		0.197369, -0.896575, -0.396483,
		0.971851, 0.125870, 0.199154,
		19.677721, 16.486698, 10.089771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.319901, 15.757475, 10.382475>,  <18.997425, 16.398588, 9.950364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.319901, 15.757475, 10.382475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.551388, 16.069565, 10.477415>,  <19.690279, 16.256819, 10.534379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.551388, 16.069565, 10.477415>,  <19.319901, 15.757475, 10.382475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.551388, 16.069565, 10.477415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169628, -0.169513, 0.970820,
		0.797692, -0.602091, 0.034248,
		0.578717, 0.780225, 0.237351,
		19.725002, 16.303633, 10.548620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.827620, 15.581359, 10.878016>,  <19.319901, 15.757475, 10.382475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.827620, 15.581359, 10.878016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.850828, 15.979430, 10.909650>,  <19.864754, 16.218273, 10.928630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.850828, 15.979430, 10.909650>,  <19.827620, 15.581359, 10.878016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.850828, 15.979430, 10.909650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077770, -0.074471, 0.994186,
		0.995282, -0.063833, 0.073074,
		0.058020, 0.995178, 0.079084,
		19.868235, 16.277983, 10.933375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.409739, 15.753473, 11.273252>,  <19.827620, 15.581359, 10.878016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.409739, 15.753473, 11.273252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.145248, 16.053528, 11.276775>,  <19.986555, 16.233561, 11.278889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.145248, 16.053528, 11.276775>,  <20.409739, 15.753473, 11.273252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.145248, 16.053528, 11.276775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184593, -0.174071, 0.967277,
		0.727122, 0.637962, 0.253570,
		-0.661225, 0.750136, 0.008808,
		19.946880, 16.278568, 11.279418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.576996, 16.110170, 11.781138>,  <20.409739, 15.753473, 11.273252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.576996, 16.110170, 11.781138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.225492, 16.298450, 11.749584>,  <20.014589, 16.411419, 11.730652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.225492, 16.298450, 11.749584>,  <20.576996, 16.110170, 11.781138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.225492, 16.298450, 11.749584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103155, -0.025941, 0.994327,
		0.465981, 0.881913, 0.071351,
		-0.878761, 0.470698, -0.078886,
		19.961864, 16.439659, 11.725919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.579172, 16.588690, 12.308406>,  <20.576996, 16.110170, 11.781138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.579172, 16.588690, 12.308406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.192112, 16.537174, 12.221628>,  <19.959875, 16.506266, 12.169561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.192112, 16.537174, 12.221628>,  <20.579172, 16.588690, 12.308406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.192112, 16.537174, 12.221628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203989, -0.106611, 0.973151,
		-0.148459, 0.985925, 0.076891,
		-0.967651, -0.128788, -0.216945,
		19.901817, 16.498537, 12.156545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.215141, 17.062731, 12.756342>,  <20.579172, 16.588690, 12.308406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.215141, 17.062731, 12.756342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.935560, 16.807594, 12.626958>,  <19.767813, 16.654512, 12.549328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.935560, 16.807594, 12.626958>,  <20.215141, 17.062731, 12.756342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.935560, 16.807594, 12.626958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317283, -0.128777, 0.939547,
		-0.640936, 0.759325, -0.112367,
		-0.698951, -0.637841, -0.323459,
		19.725876, 16.616241, 12.529921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.638521, 17.273521, 13.059772>,  <20.215141, 17.062731, 12.756342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.638521, 17.273521, 13.059772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.551485, 16.895863, 12.960784>,  <19.499264, 16.669268, 12.901391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.551485, 16.895863, 12.960784>,  <19.638521, 17.273521, 13.059772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.551485, 16.895863, 12.960784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285273, -0.180954, 0.941209,
		-0.933420, 0.275394, -0.229966,
		-0.217590, -0.944147, -0.247469,
		19.486208, 16.612619, 12.886543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.959166, 17.060204, 13.313036>,  <19.638521, 17.273521, 13.059772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.959166, 17.060204, 13.313036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.147892, 16.711329, 13.261374>,  <19.261127, 16.502005, 13.230376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.147892, 16.711329, 13.261374>,  <18.959166, 17.060204, 13.313036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.147892, 16.711329, 13.261374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360319, -0.324429, 0.874595,
		-0.804711, -0.366110, -0.467336,
		0.471816, -0.872186, -0.129155,
		19.289436, 16.449673, 13.222627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.464067, 16.412794, 13.426858>,  <18.959166, 17.060204, 13.313036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.464067, 16.412794, 13.426858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.847778, 16.309175, 13.471909>,  <19.078005, 16.247004, 13.498939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.847778, 16.309175, 13.471909>,  <18.464067, 16.412794, 13.426858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.847778, 16.309175, 13.471909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230204, -0.485885, 0.843162,
		-0.163694, -0.834752, -0.525731,
		0.959276, -0.259046, 0.112627,
		19.135561, 16.231461, 13.505696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.329454, 15.904920, 13.880110>,  <18.464067, 16.412794, 13.426858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.329454, 15.904920, 13.880110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.724989, 15.943713, 13.925364>,  <18.962309, 15.966990, 13.952516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.724989, 15.943713, 13.925364>,  <18.329454, 15.904920, 13.880110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.724989, 15.943713, 13.925364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064711, -0.404414, 0.912284,
		0.134231, -0.909419, -0.393623,
		0.988835, 0.096985, 0.113135,
		19.021639, 15.972809, 13.959304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.720463, 15.197170, 13.918399>,  <18.329454, 15.904920, 13.880110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.720463, 15.197170, 13.918399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.937834, 15.480832, 14.098082>,  <19.068256, 15.651029, 14.205892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.937834, 15.480832, 14.098082>,  <18.720463, 15.197170, 13.918399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.937834, 15.480832, 14.098082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078472, -0.489860, 0.868262,
		0.835781, -0.507087, -0.210555,
		0.543427, 0.709154, 0.449207,
		19.100863, 15.693579, 14.232843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.288910, 14.884166, 14.262516>,  <18.720463, 15.197170, 13.918399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.288910, 14.884166, 14.262516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.157148, 15.225790, 14.423550>,  <19.078093, 15.430764, 14.520170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.157148, 15.225790, 14.423550>,  <19.288910, 14.884166, 14.262516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.157148, 15.225790, 14.423550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274823, -0.494647, 0.824498,
		0.903309, 0.160952, 0.397653,
		-0.329403, 0.854060, 0.402585,
		19.058327, 15.482008, 14.544325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.675491, 14.719178, 14.884116>,  <19.288910, 14.884166, 14.262516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.675491, 14.719178, 14.884116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.534712, 15.087055, 14.953740>,  <19.450243, 15.307781, 14.995515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.534712, 15.087055, 14.953740>,  <19.675491, 14.719178, 14.884116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.534712, 15.087055, 14.953740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049609, -0.167369, 0.984645,
		0.934703, 0.355181, 0.013280,
		-0.351950, 0.919692, 0.174061,
		19.429127, 15.362963, 15.005959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.031342, 14.860208, 15.430506>,  <19.675491, 14.719178, 14.884116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.031342, 14.860208, 15.430506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.713642, 15.103114, 15.422547>,  <19.523022, 15.248858, 15.417772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.713642, 15.103114, 15.422547>,  <20.031342, 14.860208, 15.430506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.713642, 15.103114, 15.422547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190076, -0.217231, 0.957435,
		0.577097, 0.764223, 0.287963,
		-0.794248, 0.607268, -0.019897,
		19.475368, 15.285295, 15.416578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.830404, 14.949407, 16.110559>,  <20.031342, 14.860208, 15.430506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.830404, 14.949407, 16.110559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.544865, 15.187223, 15.962536>,  <19.373541, 15.329914, 15.873722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.544865, 15.187223, 15.962536>,  <19.830404, 14.949407, 16.110559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.544865, 15.187223, 15.962536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498437, -0.060163, 0.864836,
		0.491918, 0.801810, 0.339289,
		-0.713847, 0.594542, -0.370057,
		19.330711, 15.365586, 15.851519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.316059, 14.454340, 15.945830>,  <19.830404, 14.949407, 16.110559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.316059, 14.454340, 15.945830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.471464, 14.244583, 15.642761>,  <20.564707, 14.118729, 15.460919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.471464, 14.244583, 15.642761>,  <20.316059, 14.454340, 15.945830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.471464, 14.244583, 15.642761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841040, 0.537736, 0.059091,
		0.376442, -0.660191, 0.649953,
		0.388515, -0.524392, -0.757673,
		20.588018, 14.087265, 15.415460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.056660, 14.546360, 16.017391>,  <20.316059, 14.454340, 15.945830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.056660, 14.546360, 16.017391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.139284, 14.926451, 16.110687>,  <21.188858, 15.154506, 16.166664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.139284, 14.926451, 16.110687>,  <21.056660, 14.546360, 16.017391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.139284, 14.926451, 16.110687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628483, 0.053844, -0.775957,
		-0.749894, 0.306870, -0.586080,
		0.206561, 0.950227, 0.233240,
		21.201252, 15.211519, 16.180658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.990604, 14.906513, 15.365097>,  <21.056660, 14.546360, 16.017391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.990604, 14.906513, 15.365097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.269165, 15.043118, 15.617571>,  <21.436302, 15.125082, 15.769055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.269165, 15.043118, 15.617571>,  <20.990604, 14.906513, 15.365097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.269165, 15.043118, 15.617571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662890, 0.030862, -0.748080,
		-0.274959, 0.939370, -0.204893,
		0.696401, 0.341513, 0.631185,
		21.478085, 15.145573, 15.806927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.406544, 15.501728, 15.162032>,  <20.990604, 14.906513, 15.365097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.406544, 15.501728, 15.162032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.661161, 15.333380, 15.420545>,  <21.813932, 15.232371, 15.575652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.661161, 15.333380, 15.420545>,  <21.406544, 15.501728, 15.162032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.661161, 15.333380, 15.420545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696127, -0.047184, -0.716367,
		0.331991, 0.905893, 0.262944,
		0.636545, -0.420870, 0.646281,
		21.852125, 15.207119, 15.614429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.128061, 15.547335, 14.851183>,  <21.406544, 15.501728, 15.162032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.128061, 15.547335, 14.851183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.477999, 15.661135, 15.008004>,  <22.687962, 15.729415, 15.102098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.477999, 15.661135, 15.008004>,  <22.128061, 15.547335, 14.851183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.477999, 15.661135, 15.008004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070759, 0.725618, -0.684450,
		-0.479207, 0.626529, 0.614672,
		0.874845, 0.284500, 0.392054,
		22.740452, 15.746485, 15.125620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.228645, 16.358082, 15.023842>,  <22.128061, 15.547335, 14.851183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.228645, 16.358082, 15.023842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.564804, 16.174990, 14.907762>,  <22.766499, 16.065134, 14.838113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.564804, 16.174990, 14.907762>,  <22.228645, 16.358082, 15.023842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.564804, 16.174990, 14.907762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179887, 0.740678, -0.647330,
		0.511250, 0.491810, 0.704802,
		0.840395, -0.457732, -0.290202,
		22.816923, 16.037670, 14.820701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.651760, 16.548151, 14.301076>,  <22.228645, 16.358082, 15.023842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.651760, 16.548151, 14.301076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.824322, 16.867077, 14.469920>,  <22.927858, 17.058434, 14.571226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.824322, 16.867077, 14.469920>,  <22.651760, 16.548151, 14.301076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.824322, 16.867077, 14.469920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150089, 0.524799, -0.837889,
		-0.889586, 0.298116, 0.346070,
		0.431405, 0.797316, 0.422110,
		22.953743, 17.106272, 14.596553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.168720, 17.144058, 14.330356>,  <22.651760, 16.548151, 14.301076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.168720, 17.144058, 14.330356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.542664, 17.285938, 14.336349>,  <22.767031, 17.371067, 14.339946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.542664, 17.285938, 14.336349>,  <22.168720, 17.144058, 14.330356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.542664, 17.285938, 14.336349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172818, 0.491541, -0.853534,
		-0.310115, 0.795345, 0.520821,
		0.934860, 0.354701, 0.014984,
		22.823122, 17.392349, 14.340845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.179634, 17.809937, 14.113156>,  <22.168720, 17.144058, 14.330356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.179634, 17.809937, 14.113156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.565308, 17.739096, 14.034182>,  <22.796713, 17.696590, 13.986796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.565308, 17.739096, 14.034182>,  <22.179634, 17.809937, 14.113156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.565308, 17.739096, 14.034182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090480, 0.480115, -0.872527,
		0.249319, 0.859141, 0.446896,
		0.964185, -0.177102, -0.197436,
		22.854563, 17.685965, 13.974951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.294886, 18.382225, 13.552637>,  <22.179634, 17.809937, 14.113156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.294886, 18.382225, 13.552637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.616852, 18.146980, 13.521056>,  <22.810032, 18.005833, 13.502108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.616852, 18.146980, 13.521056>,  <22.294886, 18.382225, 13.552637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.616852, 18.146980, 13.521056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199881, 0.394000, -0.897113,
		0.558711, 0.706320, 0.434689,
		0.804916, -0.588113, -0.078952,
		22.858326, 17.970547, 13.497371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.998882, 18.785868, 13.374675>,  <22.294886, 18.382225, 13.552637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.998882, 18.785868, 13.374675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.033335, 18.415352, 13.227938>,  <23.054007, 18.193043, 13.139895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.033335, 18.415352, 13.227938>,  <22.998882, 18.785868, 13.374675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.033335, 18.415352, 13.227938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347215, 0.373034, -0.860400,
		0.933822, -0.053267, 0.353750,
		0.086130, -0.926288, -0.366842,
		23.059174, 18.137466, 13.117885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.488537, 18.960142, 12.922546>,  <22.998882, 18.785868, 13.374675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.488537, 18.960142, 12.922546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.354002, 18.598381, 12.817525>,  <23.273281, 18.381325, 12.754512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.354002, 18.598381, 12.817525>,  <23.488537, 18.960142, 12.922546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.354002, 18.598381, 12.817525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132270, 0.230666, -0.964001,
		0.932407, -0.358957, 0.042044,
		-0.336337, -0.904402, -0.262553,
		23.253101, 18.327061, 12.738759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.002802, 18.683113, 12.535616>,  <23.488537, 18.960142, 12.922546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.002802, 18.683113, 12.535616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.673388, 18.493523, 12.410949>,  <23.475739, 18.379768, 12.336148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.673388, 18.493523, 12.410949>,  <24.002802, 18.683113, 12.535616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.673388, 18.493523, 12.410949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236598, 0.212354, -0.948118,
		0.515571, -0.854547, -0.062739,
		-0.823534, -0.473978, -0.311668,
		23.426327, 18.351330, 12.317449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.147495, 18.274668, 11.897112>,  <24.002802, 18.683113, 12.535616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.147495, 18.274668, 11.897112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.750071, 18.280088, 11.852127>,  <23.511616, 18.283340, 11.825136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.750071, 18.280088, 11.852127>,  <24.147495, 18.274668, 11.897112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.750071, 18.280088, 11.852127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112352, 0.244426, -0.963137,
		0.014437, -0.969573, -0.244375,
		-0.993563, 0.013551, -0.112463,
		23.452002, 18.284153, 11.818388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.946915, 17.876751, 11.208172>,  <24.147495, 18.274668, 11.897112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.946915, 17.876751, 11.208172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.660318, 18.142199, 11.294190>,  <23.488359, 18.301468, 11.345801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.660318, 18.142199, 11.294190>,  <23.946915, 17.876751, 11.208172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.660318, 18.142199, 11.294190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134826, 0.170722, -0.976051,
		-0.684441, -0.728328, -0.032848,
		-0.716493, 0.663621, 0.215047,
		23.445370, 18.341286, 11.358705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.638172, 17.795088, 10.579782>,  <23.946915, 17.876751, 11.208172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.638172, 17.795088, 10.579782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.449972, 18.107510, 10.744019>,  <23.337053, 18.294962, 10.842561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.449972, 18.107510, 10.744019>,  <23.638172, 17.795088, 10.579782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.449972, 18.107510, 10.744019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373013, 0.245647, -0.894717,
		-0.799683, -0.574120, 0.175767,
		-0.470498, 0.781053, 0.410593,
		23.308823, 18.341825, 10.867197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.032984, 17.821157, 10.285705>,  <23.638172, 17.795088, 10.579782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.032984, 17.821157, 10.285705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.084423, 18.192015, 10.426485>,  <23.115286, 18.414530, 10.510953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.084423, 18.192015, 10.426485>,  <23.032984, 17.821157, 10.285705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.084423, 18.192015, 10.426485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289010, 0.374530, -0.881023,
		-0.948650, 0.011579, 0.316117,
		0.128596, 0.927143, 0.351951,
		23.123001, 18.470158, 10.532070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.438025, 18.133142, 10.070056>,  <23.032984, 17.821157, 10.285705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.438025, 18.133142, 10.070056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.681475, 18.435787, 10.165651>,  <22.827545, 18.617374, 10.223008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.681475, 18.435787, 10.165651>,  <22.438025, 18.133142, 10.070056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.681475, 18.435787, 10.165651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225439, 0.453679, -0.862179,
		-0.760756, 0.470868, 0.446691,
		0.608627, 0.756610, 0.238987,
		22.864063, 18.662769, 10.237348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.099346, 18.682501, 10.104664>,  <22.438025, 18.133142, 10.070056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.099346, 18.682501, 10.104664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.465010, 18.826395, 10.029928>,  <22.684408, 18.912731, 9.985087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.465010, 18.826395, 10.029928>,  <22.099346, 18.682501, 10.104664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.465010, 18.826395, 10.029928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376683, 0.583588, -0.719399,
		-0.149756, 0.728023, 0.668997,
		0.914157, 0.359734, -0.186838,
		22.739256, 18.934315, 9.973877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.912848, 19.405581, 10.161328>,  <22.099346, 18.682501, 10.104664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.912848, 19.405581, 10.161328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.263376, 19.350021, 9.976822>,  <22.473694, 19.316687, 9.866118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.263376, 19.350021, 9.976822>,  <21.912848, 19.405581, 10.161328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.263376, 19.350021, 9.976822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317286, 0.554074, -0.769631,
		0.362474, 0.820798, 0.441478,
		0.876323, -0.138897, -0.461266,
		22.526274, 19.308352, 9.838442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<14.508229, 21.504822, 20.003195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.223926, 21.233719, 20.078526>,  <14.053344, 21.071056, 20.123724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.223926, 21.233719, 20.078526>,  <14.508229, 21.504822, 20.003195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.223926, 21.233719, 20.078526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156176, -0.108999, -0.981697,
		0.685881, -0.727161, -0.028377,
		-0.710758, -0.677759, 0.188325,
		14.010698, 21.030392, 20.135023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.670396, 20.865105, 19.625240>,  <14.508229, 21.504822, 20.003195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.670396, 20.865105, 19.625240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.271964, 20.852243, 19.658203>,  <14.032905, 20.844526, 19.677980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.271964, 20.852243, 19.658203>,  <14.670396, 20.865105, 19.625240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.271964, 20.852243, 19.658203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077269, -0.137253, -0.987518,
		0.043066, -0.990014, 0.134230,
		-0.996080, -0.032156, 0.082408,
		13.973140, 20.842596, 19.682926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.433416, 20.313587, 19.139341>,  <14.670396, 20.865105, 19.625240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.433416, 20.313587, 19.139341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.078191, 20.479351, 19.218945>,  <13.865055, 20.578810, 19.266706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.078191, 20.479351, 19.218945>,  <14.433416, 20.313587, 19.139341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.078191, 20.479351, 19.218945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386934, -0.440042, -0.810337,
		-0.248239, -0.796636, 0.551135,
		-0.888065, 0.414409, 0.199010,
		13.811771, 20.603674, 19.278646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.883922, 19.797655, 19.105600>,  <14.433416, 20.313587, 19.139341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.883922, 19.797655, 19.105600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.714022, 20.154396, 19.043392>,  <13.612082, 20.368441, 19.006067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.714022, 20.154396, 19.043392>,  <13.883922, 19.797655, 19.105600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.714022, 20.154396, 19.043392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370096, -0.327835, -0.869226,
		-0.826206, -0.311646, 0.469319,
		-0.424750, 0.891853, -0.155520,
		13.586596, 20.421951, 18.996737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.176955, 19.705986, 18.965456>,  <13.883922, 19.797655, 19.105600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.176955, 19.705986, 18.965456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.280805, 20.053017, 18.795794>,  <13.343114, 20.261234, 18.693996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.280805, 20.053017, 18.795794>,  <13.176955, 19.705986, 18.965456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.280805, 20.053017, 18.795794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422627, -0.292850, -0.857686,
		-0.868322, 0.401935, 0.290630,
		0.259623, 0.867575, -0.424156,
		13.358691, 20.313290, 18.668547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.666314, 19.822525, 18.410275>,  <13.176955, 19.705986, 18.965456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.666314, 19.822525, 18.410275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.960160, 20.076162, 18.313721>,  <13.136468, 20.228344, 18.255789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.960160, 20.076162, 18.313721>,  <12.666314, 19.822525, 18.410275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.960160, 20.076162, 18.313721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038027, -0.316730, -0.947753,
		-0.677416, 0.705414, -0.208563,
		0.734617, 0.634092, -0.241383,
		13.180545, 20.266390, 18.241306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.359009, 20.308474, 17.922499>,  <12.666314, 19.822525, 18.410275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.359009, 20.308474, 17.922499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.753593, 20.262938, 17.875284>,  <12.990344, 20.235615, 17.846956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.753593, 20.262938, 17.875284>,  <12.359009, 20.308474, 17.922499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.753593, 20.262938, 17.875284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148625, -0.316466, -0.936888,
		0.069303, 0.941748, -0.329102,
		0.986462, -0.113842, -0.118036,
		13.049532, 20.228785, 17.839874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.344356, 20.419384, 17.240887>,  <12.359009, 20.308474, 17.922499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.344356, 20.419384, 17.240887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.708964, 20.298759, 17.352734>,  <12.927730, 20.226385, 17.419842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.708964, 20.298759, 17.352734>,  <12.344356, 20.419384, 17.240887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.708964, 20.298759, 17.352734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175973, -0.328526, -0.927957,
		0.371700, 0.895059, -0.246391,
		0.911522, -0.301564, 0.279620,
		12.982421, 20.208290, 17.436619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.770250, 20.624601, 16.698784>,  <12.344356, 20.419384, 17.240887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.770250, 20.624601, 16.698784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.948426, 20.317778, 16.883480>,  <13.055331, 20.133684, 16.994297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.948426, 20.317778, 16.883480>,  <12.770250, 20.624601, 16.698784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.948426, 20.317778, 16.883480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082316, -0.478458, -0.874244,
		0.891520, 0.427430, -0.149983,
		0.445439, -0.767060, 0.461739,
		13.082058, 20.087660, 17.022001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.322583, 20.452084, 16.293369>,  <12.770250, 20.624601, 16.698784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.322583, 20.452084, 16.293369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.304664, 20.107042, 16.494926>,  <13.293912, 19.900017, 16.615860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.304664, 20.107042, 16.494926>,  <13.322583, 20.452084, 16.293369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.304664, 20.107042, 16.494926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094074, -0.505801, -0.857506,
		0.994557, 0.008988, 0.103808,
		-0.044799, -0.862603, 0.503893,
		13.291224, 19.848261, 16.646095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.653796, 19.810349, 15.840856>,  <13.322583, 20.452084, 16.293369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.653796, 19.810349, 15.840856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.471969, 19.606316, 16.132933>,  <13.362872, 19.483896, 16.308180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.471969, 19.606316, 16.132933>,  <13.653796, 19.810349, 15.840856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.471969, 19.606316, 16.132933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130792, -0.772676, -0.621181,
		0.881056, -0.377873, 0.284520,
		-0.454570, -0.510082, 0.730194,
		13.335598, 19.453291, 16.351992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.914521, 19.098122, 15.882716>,  <13.653796, 19.810349, 15.840856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.914521, 19.098122, 15.882716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.552361, 19.086330, 16.052128>,  <13.335064, 19.079256, 16.153774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.552361, 19.086330, 16.052128>,  <13.914521, 19.098122, 15.882716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.552361, 19.086330, 16.052128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236432, -0.793571, -0.560664,
		0.352628, -0.607763, 0.711532,
		-0.905402, -0.029477, 0.423530,
		13.280740, 19.077488, 16.179186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.113028, 18.351597, 15.728778>,  <13.914521, 19.098122, 15.882716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.113028, 18.351597, 15.728778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.488786, 18.217430, 15.757145>,  <14.714241, 18.136930, 15.774165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.488786, 18.217430, 15.757145>,  <14.113028, 18.351597, 15.728778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.488786, 18.217430, 15.757145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341922, -0.901574, 0.265054,
		-0.024967, -0.273239, -0.961622,
		0.939397, -0.335418, 0.070917,
		14.770605, 18.116804, 15.778420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.543835, 17.971498, 15.215566>,  <14.113028, 18.351597, 15.728778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.543835, 17.971498, 15.215566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.663944, 17.872147, 15.583944>,  <14.736010, 17.812534, 15.804972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.663944, 17.872147, 15.583944>,  <14.543835, 17.971498, 15.215566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.663944, 17.872147, 15.583944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430169, -0.897005, -0.101668,
		0.851346, -0.365635, -0.376192,
		0.300273, -0.248381, 0.920947,
		14.754026, 17.797632, 15.860229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.271848, 17.879408, 15.260557>,  <14.543835, 17.971498, 15.215566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.271848, 17.879408, 15.260557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.549167, 17.605217, 15.171597>,  <15.715558, 17.440702, 15.118220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.549167, 17.605217, 15.171597>,  <15.271848, 17.879408, 15.260557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.549167, 17.605217, 15.171597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089090, -0.224719, 0.970342,
		-0.715124, -0.692549, -0.094728,
		0.693297, -0.685476, -0.222401,
		15.757155, 17.399574, 15.104877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.099052, 17.254715, 15.649601>,  <15.271848, 17.879408, 15.260557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.099052, 17.254715, 15.649601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.486200, 17.229330, 15.552278>,  <15.718490, 17.214100, 15.493883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.486200, 17.229330, 15.552278>,  <15.099052, 17.254715, 15.649601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.486200, 17.229330, 15.552278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194175, -0.426144, 0.883571,
		-0.159758, -0.902427, -0.400129,
		0.967871, -0.063462, -0.243309,
		15.776562, 17.210291, 15.479285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.278546, 16.578312, 15.938623>,  <15.099052, 17.254715, 15.649601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.278546, 16.578312, 15.938623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.616502, 16.788286, 15.897427>,  <15.819275, 16.914270, 15.872708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.616502, 16.788286, 15.897427>,  <15.278546, 16.578312, 15.938623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.616502, 16.788286, 15.897427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208847, -0.146434, 0.966923,
		0.492489, -0.838452, -0.233352,
		0.844889, 0.524934, -0.102991,
		15.869968, 16.945766, 15.866529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.780015, 16.221582, 16.435263>,  <15.278546, 16.578312, 15.938623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.780015, 16.221582, 16.435263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.873058, 16.599625, 16.343462>,  <15.928885, 16.826450, 16.288382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.873058, 16.599625, 16.343462>,  <15.780015, 16.221582, 16.435263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.873058, 16.599625, 16.343462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141693, 0.200527, 0.969387,
		0.962193, -0.258007, -0.087271,
		0.232609, 0.945104, -0.229504,
		15.942842, 16.883156, 16.274611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.313395, 16.378828, 16.916254>,  <15.780015, 16.221582, 16.435263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.313395, 16.378828, 16.916254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.175188, 16.723591, 16.767803>,  <16.092264, 16.930449, 16.678732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.175188, 16.723591, 16.767803>,  <16.313395, 16.378828, 16.916254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.175188, 16.723591, 16.767803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028142, 0.404825, 0.913961,
		0.937991, 0.305344, -0.164129,
		-0.345516, 0.861906, -0.371129,
		16.071533, 16.982162, 16.656464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.761528, 16.791618, 17.187511>,  <16.313395, 16.378828, 16.916254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.761528, 16.791618, 17.187511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.459480, 17.031719, 17.082066>,  <16.278252, 17.175779, 17.018797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.459480, 17.031719, 17.082066>,  <16.761528, 16.791618, 17.187511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.459480, 17.031719, 17.082066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034456, 0.437888, 0.898369,
		0.654681, 0.669293, -0.351340,
		-0.755120, 0.600251, -0.263616,
		16.232944, 17.211794, 17.002981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.910330, 17.477621, 17.381466>,  <16.761528, 16.791618, 17.187511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.910330, 17.477621, 17.381466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.519215, 17.511675, 17.304859>,  <16.284546, 17.532108, 17.258896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.519215, 17.511675, 17.304859>,  <16.910330, 17.477621, 17.381466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.519215, 17.511675, 17.304859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115805, 0.542162, 0.832255,
		0.174688, 0.835950, -0.520262,
		-0.977790, 0.085136, -0.191517,
		16.225878, 17.537216, 17.247404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.680079, 18.251709, 17.405680>,  <16.910330, 17.477621, 17.381466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.680079, 18.251709, 17.405680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.345228, 18.036163, 17.443312>,  <16.144318, 17.906836, 17.465891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.345228, 18.036163, 17.443312>,  <16.680079, 18.251709, 17.405680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.345228, 18.036163, 17.443312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129965, 0.362988, 0.922685,
		-0.531350, 0.760175, -0.373899,
		-0.837124, -0.538862, 0.094078,
		16.094091, 17.874504, 17.471535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.144993, 18.742865, 17.440706>,  <16.680079, 18.251709, 17.405680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.144993, 18.742865, 17.440706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.988036, 18.410698, 17.598913>,  <15.893863, 18.211397, 17.693838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.988036, 18.410698, 17.598913>,  <16.144993, 18.742865, 17.440706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.988036, 18.410698, 17.598913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223711, 0.503255, 0.834678,
		-0.892179, 0.239038, -0.383246,
		-0.392390, -0.830419, 0.395518,
		15.870319, 18.161572, 17.717569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.530377, 18.925222, 17.665915>,  <16.144993, 18.742865, 17.440706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.530377, 18.925222, 17.665915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.631245, 18.597818, 17.872391>,  <15.691765, 18.401377, 17.996277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.631245, 18.597818, 17.872391>,  <15.530377, 18.925222, 17.665915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.631245, 18.597818, 17.872391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182610, 0.483595, 0.856031,
		-0.950297, -0.310125, -0.027521,
		0.252167, -0.818510, 0.516191,
		15.706895, 18.352264, 18.027248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.106120, 18.968483, 18.225107>,  <15.530377, 18.925222, 17.665915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.106120, 18.968483, 18.225107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.352518, 18.682579, 18.357573>,  <15.500357, 18.511038, 18.437052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.352518, 18.682579, 18.357573>,  <15.106120, 18.968483, 18.225107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.352518, 18.682579, 18.357573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041549, 0.390326, 0.919739,
		-0.786653, -0.580315, 0.210741,
		0.615996, -0.714759, 0.331163,
		15.537317, 18.468151, 18.456921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.813701, 18.609720, 18.884113>,  <15.106120, 18.968483, 18.225107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.813701, 18.609720, 18.884113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.207189, 18.537863, 18.886000>,  <15.443281, 18.494747, 18.887131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.207189, 18.537863, 18.886000>,  <14.813701, 18.609720, 18.884113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.207189, 18.537863, 18.886000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069435, 0.404163, 0.912047,
		-0.165752, -0.896872, 0.410057,
		0.983720, -0.179646, 0.004717,
		15.502305, 18.483969, 18.887415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.973411, 18.423378, 19.605486>,  <14.813701, 18.609720, 18.884113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.973411, 18.423378, 19.605486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.333555, 18.503155, 19.450787>,  <15.549642, 18.551020, 19.357967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.333555, 18.503155, 19.450787>,  <14.973411, 18.423378, 19.605486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.333555, 18.503155, 19.450787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208309, 0.582772, 0.785483,
		0.382042, -0.787782, 0.483160,
		0.900362, 0.199440, -0.386746,
		15.603663, 18.562986, 19.334763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.508807, 18.120340, 20.096226>,  <14.973411, 18.423378, 19.605486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.508807, 18.120340, 20.096226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.656053, 18.417902, 19.873119>,  <15.744400, 18.596439, 19.739256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.656053, 18.417902, 19.873119>,  <15.508807, 18.120340, 20.096226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.656053, 18.417902, 19.873119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138340, 0.549390, 0.824034,
		0.919431, -0.380500, 0.099327,
		0.368114, 0.743902, -0.557765,
		15.766487, 18.641073, 19.705790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.892787, 17.643715, 20.560335>,  <15.508807, 18.120340, 20.096226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.892787, 17.643715, 20.560335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.660895, 17.387943, 20.762342>,  <15.521760, 17.234480, 20.883547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.660895, 17.387943, 20.762342>,  <15.892787, 17.643715, 20.560335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.660895, 17.387943, 20.762342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322175, -0.389407, -0.862882,
		0.748410, -0.662942, 0.019742,
		-0.579729, -0.639430, 0.505020,
		15.486977, 17.196115, 20.913849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.928928, 16.983572, 20.157564>,  <15.892787, 17.643715, 20.560335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.928928, 16.983572, 20.157564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.593592, 16.946278, 20.372410>,  <15.392390, 16.923901, 20.501318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.593592, 16.946278, 20.372410>,  <15.928928, 16.983572, 20.157564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.593592, 16.946278, 20.372410> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442462, -0.459177, -0.770314,
		0.318453, -0.883438, 0.343692,
		-0.838341, -0.093238, 0.537115,
		15.342090, 16.918306, 20.533545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.718971, 16.307859, 20.144283>,  <15.928928, 16.983572, 20.157564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.718971, 16.307859, 20.144283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.383452, 16.518368, 20.200077>,  <15.182140, 16.644672, 20.233553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.383452, 16.518368, 20.200077>,  <15.718971, 16.307859, 20.144283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.383452, 16.518368, 20.200077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413536, -0.449214, -0.791957,
		-0.354126, -0.721973, 0.594432,
		-0.838798, 0.526271, 0.139483,
		15.131813, 16.676249, 20.241922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.250529, 15.845862, 19.954790>,  <15.718971, 16.307859, 20.144283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.250529, 15.845862, 19.954790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.034569, 16.182493, 19.961201>,  <14.904993, 16.384472, 19.965048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.034569, 16.182493, 19.961201>,  <15.250529, 15.845862, 19.954790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.034569, 16.182493, 19.961201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610156, -0.378176, -0.696199,
		-0.579843, -0.385658, 0.717670,
		-0.539900, 0.841577, 0.016028,
		14.872599, 16.434965, 19.966009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.601318, 15.663018, 20.079632>,  <15.250529, 15.845862, 19.954790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.601318, 15.663018, 20.079632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.550338, 16.033613, 19.937998>,  <14.519750, 16.255970, 19.853018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.550338, 16.033613, 19.937998>,  <14.601318, 15.663018, 20.079632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.550338, 16.033613, 19.937998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579778, -0.359245, -0.731300,
		-0.804744, 0.112086, 0.582944,
		-0.127451, 0.926488, -0.354086,
		14.512102, 16.311560, 19.831772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.961426, 15.666852, 19.872541>,  <14.601318, 15.663018, 20.079632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.961426, 15.666852, 19.872541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.055780, 16.001766, 19.675236>,  <14.112393, 16.202715, 19.556852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.055780, 16.001766, 19.675236>,  <13.961426, 15.666852, 19.872541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.055780, 16.001766, 19.675236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628264, -0.255848, -0.734729,
		-0.741379, 0.483213, 0.465686,
		0.235886, 0.837286, -0.493265,
		14.126546, 16.252953, 19.527256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.293671, 15.868890, 19.569262>,  <13.961426, 15.666852, 19.872541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.293671, 15.868890, 19.569262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.601518, 16.045351, 19.384623>,  <13.786226, 16.151228, 19.273840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.601518, 16.045351, 19.384623>,  <13.293671, 15.868890, 19.569262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.601518, 16.045351, 19.384623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377943, -0.267936, -0.886210,
		-0.514633, 0.856501, -0.039478,
		0.769618, 0.441153, -0.461598,
		13.832403, 16.177696, 19.246143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.950929, 16.226162, 18.991926>,  <13.293671, 15.868890, 19.569262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.950929, 16.226162, 18.991926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.335620, 16.190020, 18.888456>,  <13.566435, 16.168333, 18.826374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.335620, 16.190020, 18.888456>,  <12.950929, 16.226162, 18.991926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.335620, 16.190020, 18.888456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268280, -0.118613, -0.956011,
		0.055700, 0.988821, -0.138315,
		0.961729, -0.090357, -0.258674,
		13.624139, 16.162912, 18.810854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.227231, 16.709822, 18.366114>,  <12.950929, 16.226162, 18.991926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.227231, 16.709822, 18.366114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.486510, 16.405233, 18.365129>,  <13.642077, 16.222481, 18.364538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.486510, 16.405233, 18.365129>,  <13.227231, 16.709822, 18.366114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.486510, 16.405233, 18.365129> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323320, -0.272294, -0.906267,
		0.689423, 0.588236, -0.422699,
		0.648197, -0.761469, -0.002463,
		13.680969, 16.176792, 18.364391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.539571, 16.685852, 17.650091>,  <13.227231, 16.709822, 18.366114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.539571, 16.685852, 17.650091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.621231, 16.338839, 17.831511>,  <13.670227, 16.130630, 17.940363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.621231, 16.338839, 17.831511>,  <13.539571, 16.685852, 17.650091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.621231, 16.338839, 17.831511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199855, -0.490484, -0.848224,
		0.958322, 0.082521, -0.273513,
		0.204150, -0.867534, 0.453549,
		13.682476, 16.078579, 17.967575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.042907, 16.335258, 17.191349>,  <13.539571, 16.685852, 17.650091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.042907, 16.335258, 17.191349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.874786, 16.054752, 17.421679>,  <13.773914, 15.886448, 17.559875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.874786, 16.054752, 17.421679>,  <14.042907, 16.335258, 17.191349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.874786, 16.054752, 17.421679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072623, -0.606561, -0.791713,
		0.904474, -0.374576, 0.204010,
		-0.420301, -0.701268, 0.575822,
		13.748696, 15.844372, 17.594425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.333802, 15.652820, 16.981026>,  <14.042907, 16.335258, 17.191349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.333802, 15.652820, 16.981026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.995195, 15.576904, 17.179979>,  <13.792031, 15.531355, 17.299351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.995195, 15.576904, 17.179979>,  <14.333802, 15.652820, 16.981026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.995195, 15.576904, 17.179979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211992, -0.736849, -0.641960,
		0.488333, -0.648871, 0.583521,
		-0.846516, -0.189789, 0.497383,
		13.741241, 15.519968, 17.329195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<16.516293, 18.219559, 26.343037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.881168, 18.121746, 26.211512>,  <17.100094, 18.063059, 26.132597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.881168, 18.121746, 26.211512>,  <16.516293, 18.219559, 26.343037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.881168, 18.121746, 26.211512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314535, 0.096489, -0.944329,
		0.262644, 0.964829, 0.011102,
		0.912188, -0.244530, -0.328815,
		17.154825, 18.048388, 26.112867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.644724, 18.717688, 25.878649>,  <16.516293, 18.219559, 26.343037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.644724, 18.717688, 25.878649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.897137, 18.422935, 25.781651>,  <17.048584, 18.246084, 25.723452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.897137, 18.422935, 25.781651>,  <16.644724, 18.717688, 25.878649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.897137, 18.422935, 25.781651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308408, 0.048526, -0.950015,
		0.711815, 0.674279, -0.196638,
		0.631033, -0.736881, -0.242495,
		17.086447, 18.201872, 25.708902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.973881, 18.940481, 25.239859>,  <16.644724, 18.717688, 25.878649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.973881, 18.940481, 25.239859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.084042, 18.556232, 25.225124>,  <17.150139, 18.325684, 25.216284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.084042, 18.556232, 25.225124>,  <16.973881, 18.940481, 25.239859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.084042, 18.556232, 25.225124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219437, -0.025513, -0.975293,
		0.935949, 0.276681, -0.217823,
		0.275402, -0.960623, -0.036835,
		17.166662, 18.268045, 25.214073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.485781, 18.869427, 24.699921>,  <16.973881, 18.940481, 25.239859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.485781, 18.869427, 24.699921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.337482, 18.501947, 24.754385>,  <17.248505, 18.281460, 24.787064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.337482, 18.501947, 24.754385>,  <17.485781, 18.869427, 24.699921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.337482, 18.501947, 24.754385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279159, -0.029593, -0.959789,
		0.885787, -0.393846, -0.245492,
		-0.370744, -0.918700, 0.136159,
		17.226259, 18.226337, 24.795233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.762831, 18.469908, 24.164623>,  <17.485781, 18.869427, 24.699921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.762831, 18.469908, 24.164623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.419916, 18.290096, 24.265013>,  <17.214167, 18.182209, 24.325247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.419916, 18.290096, 24.265013>,  <17.762831, 18.469908, 24.164623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.419916, 18.290096, 24.265013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165838, -0.220380, -0.961213,
		0.487401, -0.865655, 0.114380,
		-0.857285, -0.449527, 0.250972,
		17.162731, 18.155239, 24.340303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.843046, 17.941685, 23.781195>,  <17.762831, 18.469908, 24.164623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.843046, 17.941685, 23.781195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.451956, 17.953777, 23.864271>,  <17.217300, 17.961033, 23.914118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.451956, 17.953777, 23.864271>,  <17.843046, 17.941685, 23.781195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.451956, 17.953777, 23.864271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207382, -0.291432, -0.933842,
		0.032296, -0.956114, 0.291210,
		-0.977727, 0.030232, 0.207693,
		17.158638, 17.962847, 23.926579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.567728, 17.319263, 23.584217>,  <17.843046, 17.941685, 23.781195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.567728, 17.319263, 23.584217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.267437, 17.582584, 23.606281>,  <17.087261, 17.740578, 23.619520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.267437, 17.582584, 23.606281>,  <17.567728, 17.319263, 23.584217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.267437, 17.582584, 23.606281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341386, -0.315120, -0.885525,
		-0.565563, -0.683620, 0.461306,
		-0.750729, 0.658303, 0.055158,
		17.042217, 17.780075, 23.622829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.977186, 16.885721, 23.493614>,  <17.567728, 17.319263, 23.584217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.977186, 16.885721, 23.493614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.855116, 17.257757, 23.411833>,  <16.781874, 17.480978, 23.362764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.855116, 17.257757, 23.411833>,  <16.977186, 16.885721, 23.493614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.855116, 17.257757, 23.411833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455976, -0.331203, -0.826069,
		-0.836034, -0.158870, 0.525173,
		-0.305176, 0.930089, -0.204456,
		16.763563, 17.536783, 23.350496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.256937, 16.878159, 23.490778>,  <16.977186, 16.885721, 23.493614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.256937, 16.878159, 23.490778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.333883, 17.208700, 23.279068>,  <16.380051, 17.407026, 23.152042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.333883, 17.208700, 23.279068>,  <16.256937, 16.878159, 23.490778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.333883, 17.208700, 23.279068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560115, -0.350405, -0.750658,
		-0.805771, 0.440856, 0.395448,
		0.192365, 0.826355, -0.529276,
		16.391592, 17.456606, 23.120285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.724802, 16.865889, 23.141876>,  <16.256937, 16.878159, 23.490778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.724802, 16.865889, 23.141876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.945627, 17.130264, 22.938551>,  <16.078123, 17.288891, 22.816555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.945627, 17.130264, 22.938551>,  <15.724802, 16.865889, 23.141876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.945627, 17.130264, 22.938551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618283, -0.084521, -0.781397,
		-0.559420, 0.745663, 0.361988,
		0.552064, 0.660940, -0.508314,
		16.111246, 17.328547, 22.786057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.345992, 17.314184, 22.780857>,  <15.724802, 16.865889, 23.141876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.345992, 17.314184, 22.780857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.679128, 17.370090, 22.566626>,  <15.879009, 17.403635, 22.438087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.679128, 17.370090, 22.566626>,  <15.345992, 17.314184, 22.780857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.679128, 17.370090, 22.566626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539037, -0.015069, -0.842147,
		-0.125776, 0.990070, 0.062790,
		0.832838, 0.139768, -0.535579,
		15.928979, 17.412022, 22.405952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.193610, 17.742678, 22.326387>,  <15.345992, 17.314184, 22.780857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.193610, 17.742678, 22.326387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.522407, 17.578064, 22.168922>,  <15.719685, 17.479296, 22.074444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.522407, 17.578064, 22.168922>,  <15.193610, 17.742678, 22.326387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.522407, 17.578064, 22.168922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439072, -0.017726, -0.898277,
		0.362692, 0.911223, -0.195263,
		0.821992, -0.411533, -0.393663,
		15.769004, 17.454605, 22.050823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.371131, 18.161442, 21.734377>,  <15.193610, 17.742678, 22.326387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.371131, 18.161442, 21.734377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.526129, 17.795746, 21.687027>,  <15.619127, 17.576328, 21.658617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.526129, 17.795746, 21.687027>,  <15.371131, 18.161442, 21.734377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.526129, 17.795746, 21.687027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429299, -0.065323, -0.900797,
		0.815812, 0.399872, -0.417795,
		0.387495, -0.914240, -0.118374,
		15.642378, 17.521473, 21.651514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.514127, 18.121721, 21.061935>,  <15.371131, 18.161442, 21.734377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.514127, 18.121721, 21.061935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.565335, 17.736727, 21.157625>,  <15.596060, 17.505730, 21.215040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.565335, 17.736727, 21.157625>,  <15.514127, 18.121721, 21.061935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.565335, 17.736727, 21.157625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309480, -0.267935, -0.912377,
		0.942249, 0.042767, -0.332172,
		0.128021, -0.962487, 0.239226,
		15.603742, 17.447981, 21.229393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.015135, 18.416147, 20.511650>,  <15.514127, 18.121721, 21.061935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.015135, 18.416147, 20.511650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.927289, 18.694067, 20.237709>,  <15.874581, 18.860819, 20.073345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.927289, 18.694067, 20.237709>,  <16.015135, 18.416147, 20.511650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.927289, 18.694067, 20.237709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118251, 0.715773, 0.688248,
		0.968393, 0.070165, -0.239355,
		-0.219615, 0.694799, -0.684853,
		15.861404, 18.902506, 20.032253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.525257, 18.868269, 20.631939>,  <16.015135, 18.416147, 20.511650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.525257, 18.868269, 20.631939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.252827, 19.088640, 20.439018>,  <16.089369, 19.220863, 20.323265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.252827, 19.088640, 20.439018>,  <16.525257, 18.868269, 20.631939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.252827, 19.088640, 20.439018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170995, 0.760150, 0.626843,
		0.711968, 0.344455, -0.611925,
		-0.681074, 0.550928, -0.482303,
		16.048504, 19.253920, 20.294327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.802444, 19.539152, 20.633038>,  <16.525257, 18.868269, 20.631939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.802444, 19.539152, 20.633038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.406130, 19.568192, 20.587309>,  <16.168341, 19.585615, 20.559872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.406130, 19.568192, 20.587309>,  <16.802444, 19.539152, 20.633038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.406130, 19.568192, 20.587309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019027, 0.761173, 0.648270,
		0.134082, 0.644473, -0.752779,
		-0.990788, 0.072598, -0.114322,
		16.108894, 19.589972, 20.553013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.711124, 20.265551, 20.841608>,  <16.802444, 19.539152, 20.633038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.711124, 20.265551, 20.841608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.362448, 20.070122, 20.856869>,  <16.153242, 19.952866, 20.866026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.362448, 20.070122, 20.856869>,  <16.711124, 20.265551, 20.841608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.362448, 20.070122, 20.856869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243567, 0.499485, 0.831378,
		-0.425243, 0.715411, -0.554396,
		-0.871690, -0.488570, 0.038152,
		16.100941, 19.923552, 20.868315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.260429, 20.725355, 21.193617>,  <16.711124, 20.265551, 20.841608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.260429, 20.725355, 21.193617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.072689, 20.373808, 21.227791>,  <15.960045, 20.162880, 21.248295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.072689, 20.373808, 21.227791>,  <16.260429, 20.725355, 21.193617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.072689, 20.373808, 21.227791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374660, 0.285825, 0.882006,
		-0.799587, 0.381961, -0.463429,
		-0.469351, -0.878869, 0.085436,
		15.931884, 20.110147, 21.253422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.567442, 20.907248, 21.344698>,  <16.260429, 20.725355, 21.193617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.567442, 20.907248, 21.344698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.611869, 20.524502, 21.452087>,  <15.638525, 20.294855, 21.516521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.611869, 20.524502, 21.452087>,  <15.567442, 20.907248, 21.344698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.611869, 20.524502, 21.452087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071668, 0.261728, 0.962477,
		-0.991225, -0.126140, -0.039508,
		0.111067, -0.956863, 0.268471,
		15.645189, 20.237442, 21.532629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.187894, 20.883188, 21.954948>,  <15.567442, 20.907248, 21.344698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.187894, 20.883188, 21.954948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.385467, 20.536022, 21.975952>,  <15.504010, 20.327723, 21.988554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.385467, 20.536022, 21.975952>,  <15.187894, 20.883188, 21.954948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.385467, 20.536022, 21.975952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013237, 0.052875, 0.998513,
		-0.869400, -0.493892, 0.014628,
		0.493931, -0.867914, 0.052508,
		15.533646, 20.275648, 21.991705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.918589, 20.463219, 22.576101>,  <15.187894, 20.883188, 21.954948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.918589, 20.463219, 22.576101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.289250, 20.351652, 22.475292>,  <15.511647, 20.284712, 22.414806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.289250, 20.351652, 22.475292>,  <14.918589, 20.463219, 22.576101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.289250, 20.351652, 22.475292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288568, 0.098129, 0.952417,
		-0.240917, -0.955288, 0.171419,
		0.926654, -0.278919, -0.252024,
		15.567246, 20.267977, 22.399685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.034254, 19.831917, 22.994808>,  <14.918589, 20.463219, 22.576101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.034254, 19.831917, 22.994808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.365741, 20.024372, 22.880453>,  <15.564632, 20.139847, 22.811840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.365741, 20.024372, 22.880453>,  <15.034254, 19.831917, 22.994808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.365741, 20.024372, 22.880453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250676, 0.137615, 0.958240,
		0.500391, -0.865775, -0.006567,
		0.828716, 0.481141, -0.285890,
		15.614356, 20.168715, 22.794685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.503521, 19.741589, 23.553726>,  <15.034254, 19.831917, 22.994808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.503521, 19.741589, 23.553726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.757996, 19.989822, 23.370361>,  <15.910681, 20.138763, 23.260344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.757996, 19.989822, 23.370361>,  <15.503521, 19.741589, 23.553726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.757996, 19.989822, 23.370361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298663, 0.349745, 0.887963,
		0.711384, -0.701821, 0.037157,
		0.636187, 0.620585, -0.458411,
		15.948852, 20.175999, 23.232838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.180788, 19.687746, 23.909910>,  <15.503521, 19.741589, 23.553726>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.180788, 19.687746, 23.909910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.219425, 20.042145, 23.728502>,  <16.242607, 20.254784, 23.619658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.219425, 20.042145, 23.728502>,  <16.180788, 19.687746, 23.909910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.219425, 20.042145, 23.728502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398013, 0.383252, 0.833489,
		0.912280, -0.261017, -0.315617,
		0.096594, 0.885995, -0.453522,
		16.248404, 20.307943, 23.592445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.799011, 19.848616, 24.076441>,  <16.180788, 19.687746, 23.909910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.799011, 19.848616, 24.076441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.600258, 20.188013, 24.003599>,  <16.481007, 20.391651, 23.959894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.600258, 20.188013, 24.003599>,  <16.799011, 19.848616, 24.076441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.600258, 20.188013, 24.003599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401313, 0.410718, 0.818693,
		0.769451, 0.333714, -0.544591,
		-0.496883, 0.848496, -0.182104,
		16.451193, 20.442562, 23.948967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.237703, 20.436644, 24.334381>,  <16.799011, 19.848616, 24.076441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.237703, 20.436644, 24.334381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.864126, 20.575153, 24.298950>,  <16.639980, 20.658258, 24.277693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.864126, 20.575153, 24.298950>,  <17.237703, 20.436644, 24.334381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.864126, 20.575153, 24.298950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125039, 0.548689, 0.826623,
		0.334839, 0.760943, -0.555742,
		-0.933942, 0.346275, -0.088576,
		16.583944, 20.679035, 24.272377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.297981, 21.135378, 24.504349>,  <17.237703, 20.436644, 24.334381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.297981, 21.135378, 24.504349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.902159, 21.089725, 24.539560>,  <16.664665, 21.062334, 24.560688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.902159, 21.089725, 24.539560>,  <17.297981, 21.135378, 24.504349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.902159, 21.089725, 24.539560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031095, 0.427317, 0.903567,
		-0.140739, 0.896869, -0.419306,
		-0.989558, -0.114129, 0.088028,
		16.605291, 21.055487, 24.565969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<11.211924, 16.938257, 27.495638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.584330, 16.975954, 27.354597>,  <11.807774, 16.998571, 27.269972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.584330, 16.975954, 27.354597>,  <11.211924, 16.938257, 27.495638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.584330, 16.975954, 27.354597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364761, 0.206868, -0.907830,
		-0.012612, 0.973819, 0.226972,
		0.931016, 0.094240, -0.352603,
		11.863634, 17.004227, 27.248816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.151758, 17.480024, 26.993382>,  <11.211924, 16.938257, 27.495638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.151758, 17.480024, 26.993382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.490031, 17.282312, 26.912874>,  <11.692995, 17.163685, 26.864571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.490031, 17.282312, 26.912874>,  <11.151758, 17.480024, 26.993382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.490031, 17.282312, 26.912874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209782, 0.038892, -0.976974,
		0.490728, 0.868432, -0.070801,
		0.845682, -0.494281, -0.201267,
		11.743735, 17.134027, 26.852493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.355294, 17.827501, 26.391291>,  <11.151758, 17.480024, 26.993382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.355294, 17.827501, 26.391291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.568907, 17.489412, 26.383183>,  <11.697074, 17.286558, 26.378317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.568907, 17.489412, 26.383183>,  <11.355294, 17.827501, 26.391291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.568907, 17.489412, 26.383183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060182, -0.014087, -0.998088,
		0.843320, 0.534230, -0.058390,
		0.534031, -0.845222, -0.020271,
		11.729116, 17.235846, 26.377102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.880904, 17.917788, 25.885506>,  <11.355294, 17.827501, 26.391291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.880904, 17.917788, 25.885506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.834652, 17.521959, 25.919868>,  <11.806901, 17.284462, 25.940485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.834652, 17.521959, 25.919868>,  <11.880904, 17.917788, 25.885506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.834652, 17.521959, 25.919868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107378, -0.073526, -0.991496,
		0.987471, -0.123872, -0.097756,
		-0.115631, -0.989571, 0.085906,
		11.799963, 17.225088, 25.945641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.291245, 17.741236, 25.406294>,  <11.880904, 17.917788, 25.885506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.291245, 17.741236, 25.406294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.025827, 17.444578, 25.445631>,  <11.866577, 17.266582, 25.469233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.025827, 17.444578, 25.445631>,  <12.291245, 17.741236, 25.406294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.025827, 17.444578, 25.445631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122053, -0.022377, -0.992271,
		0.738115, -0.670418, -0.075672,
		-0.663543, -0.741646, 0.098344,
		11.826764, 17.222084, 25.475134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.510177, 17.256397, 24.974926>,  <12.291245, 17.741236, 25.406294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.510177, 17.256397, 24.974926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.124972, 17.182501, 25.053391>,  <11.893849, 17.138163, 25.100470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.124972, 17.182501, 25.053391>,  <12.510177, 17.256397, 24.974926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.124972, 17.182501, 25.053391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163519, -0.177958, -0.970357,
		0.214175, -0.966541, 0.141167,
		-0.963011, -0.184743, 0.196162,
		11.836069, 17.127079, 25.112240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.326301, 16.731764, 24.561014>,  <12.510177, 17.256397, 24.974926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.326301, 16.731764, 24.561014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.963688, 16.875706, 24.649290>,  <11.746120, 16.962070, 24.702255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.963688, 16.875706, 24.649290>,  <12.326301, 16.731764, 24.561014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.963688, 16.875706, 24.649290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354997, -0.366980, -0.859827,
		-0.228421, -0.857806, 0.460426,
		-0.906533, 0.359853, 0.220692,
		11.691729, 16.983662, 24.715498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.911390, 16.145552, 24.459471>,  <12.326301, 16.731764, 24.561014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.911390, 16.145552, 24.459471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.699021, 16.484404, 24.450569>,  <11.571600, 16.687714, 24.445229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.699021, 16.484404, 24.450569>,  <11.911390, 16.145552, 24.459471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.699021, 16.484404, 24.450569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406285, -0.277501, -0.870590,
		-0.743677, -0.453174, 0.491506,
		-0.530922, 0.847129, -0.022254,
		11.539744, 16.738543, 24.443893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.273996, 15.891260, 24.204643>,  <11.911390, 16.145552, 24.459471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.273996, 15.891260, 24.204643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.322631, 16.285641, 24.158833>,  <11.351811, 16.522268, 24.131346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.322631, 16.285641, 24.158833>,  <11.273996, 15.891260, 24.204643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.322631, 16.285641, 24.158833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414559, -0.054394, -0.908395,
		-0.901863, 0.157926, 0.402122,
		0.121586, 0.985952, -0.114526,
		11.359107, 16.581427, 24.124475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.676709, 16.127424, 23.813946>,  <11.273996, 15.891260, 24.204643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.676709, 16.127424, 23.813946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.905313, 16.454264, 23.783661>,  <11.042475, 16.650368, 23.765490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.905313, 16.454264, 23.783661>,  <10.676709, 16.127424, 23.813946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.905313, 16.454264, 23.783661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307512, 0.127714, -0.942934,
		-0.760799, 0.562176, 0.324256,
		0.571508, 0.817096, -0.075711,
		11.076765, 16.699392, 23.760948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.237597, 16.653683, 23.558657>,  <10.676709, 16.127424, 23.813946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.237597, 16.653683, 23.558657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.617879, 16.733257, 23.463505>,  <10.846047, 16.781002, 23.406414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.617879, 16.733257, 23.463505>,  <10.237597, 16.653683, 23.558657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.617879, 16.733257, 23.463505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265745, 0.127319, -0.955599,
		-0.159819, 0.971706, 0.173909,
		0.950704, 0.198938, -0.237878,
		10.903090, 16.792938, 23.392141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.113993, 17.222862, 23.209774>,  <10.237597, 16.653683, 23.558657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.113993, 17.222862, 23.209774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.470281, 17.059080, 23.130817>,  <10.684053, 16.960812, 23.083443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.470281, 17.059080, 23.130817>,  <10.113993, 17.222862, 23.209774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.470281, 17.059080, 23.130817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254126, -0.088518, -0.963112,
		0.376879, 0.908026, -0.182897,
		0.890720, -0.409455, -0.197392,
		10.737496, 16.936243, 23.071600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.301110, 17.520054, 22.632296>,  <10.113993, 17.222862, 23.209774>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.301110, 17.520054, 22.632296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.542789, 17.201321, 22.632801>,  <10.687797, 17.010080, 22.633104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.542789, 17.201321, 22.632801>,  <10.301110, 17.520054, 22.632296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.542789, 17.201321, 22.632801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298844, -0.228068, -0.926649,
		0.738673, 0.559501, -0.375927,
		0.604198, -0.796833, 0.001264,
		10.724049, 16.962271, 22.633181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.521626, 17.460777, 21.946802>,  <10.301110, 17.520054, 22.632296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.521626, 17.460777, 21.946802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.625895, 17.104105, 22.094833>,  <10.688456, 16.890102, 22.183653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.625895, 17.104105, 22.094833>,  <10.521626, 17.460777, 21.946802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.625895, 17.104105, 22.094833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380429, -0.447188, -0.809504,
		0.887313, 0.070227, -0.455790,
		0.260672, -0.891679, 0.370079,
		10.704096, 16.836601, 22.205856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.901855, 17.900932, 21.621399>,  <10.521626, 17.460777, 21.946802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.901855, 17.900932, 21.621399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.715687, 18.247778, 21.550407>,  <10.603986, 18.455885, 21.507812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.715687, 18.247778, 21.550407>,  <10.901855, 17.900932, 21.621399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.715687, 18.247778, 21.550407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111000, 0.256123, 0.960250,
		0.878102, 0.427219, -0.215455,
		-0.465420, 0.867113, -0.177480,
		10.576060, 18.507912, 21.497164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.371690, 18.436611, 21.646978>,  <10.901855, 17.900932, 21.621399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.371690, 18.436611, 21.646978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.016189, 18.596903, 21.736002>,  <10.802888, 18.693077, 21.789417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.016189, 18.596903, 21.736002>,  <11.371690, 18.436611, 21.646978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.016189, 18.596903, 21.736002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375113, 0.356763, 0.855576,
		0.263452, 0.843882, -0.467393,
		-0.888754, 0.400729, 0.222561,
		10.749562, 18.717121, 21.802771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.589060, 18.894388, 22.060791>,  <11.371690, 18.436611, 21.646978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.589060, 18.894388, 22.060791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.197627, 18.938726, 22.130178>,  <10.962768, 18.965328, 22.171810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.197627, 18.938726, 22.130178>,  <11.589060, 18.894388, 22.060791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.197627, 18.938726, 22.130178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204029, 0.410130, 0.888913,
		0.027385, 0.905267, -0.423961,
		-0.978582, 0.110843, 0.173469,
		10.904053, 18.971979, 22.182219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.441150, 19.628592, 22.160875>,  <11.589060, 18.894388, 22.060791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.441150, 19.628592, 22.160875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.167712, 19.402765, 22.345901>,  <11.003650, 19.267269, 22.456917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.167712, 19.402765, 22.345901>,  <11.441150, 19.628592, 22.160875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.167712, 19.402765, 22.345901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142420, 0.518405, 0.843192,
		-0.715832, 0.642279, -0.273973,
		-0.683594, -0.564565, 0.462565,
		10.962634, 19.233397, 22.484671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.942179, 20.106821, 22.666285>,  <11.441150, 19.628592, 22.160875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.942179, 20.106821, 22.666285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.917020, 19.737793, 22.818550>,  <10.901924, 19.516376, 22.909910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.917020, 19.737793, 22.818550>,  <10.942179, 20.106821, 22.666285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.917020, 19.737793, 22.818550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111722, 0.372514, 0.921277,
		-0.991747, 0.100474, 0.079641,
		-0.062897, -0.922572, 0.380665,
		10.898150, 19.461021, 22.932749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.684171, 20.239061, 23.305183>,  <10.942179, 20.106821, 22.666285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.684171, 20.239061, 23.305183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.801676, 19.857210, 23.324738>,  <10.872179, 19.628099, 23.336470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.801676, 19.857210, 23.324738>,  <10.684171, 20.239061, 23.305183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.801676, 19.857210, 23.324738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239398, 0.122989, 0.963100,
		-0.925415, -0.271219, 0.264665,
		0.293762, -0.954627, 0.048887,
		10.889805, 19.570822, 23.339403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.371635, 20.071541, 23.847282>,  <10.684171, 20.239061, 23.305183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.371635, 20.071541, 23.847282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.695417, 19.842607, 23.794798>,  <10.889687, 19.705248, 23.763308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.695417, 19.842607, 23.794798>,  <10.371635, 20.071541, 23.847282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.695417, 19.842607, 23.794798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289016, 0.193832, 0.937496,
		-0.511128, -0.796783, 0.322312,
		0.809456, -0.572333, -0.131210,
		10.938254, 19.670908, 23.755434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.469032, 19.917187, 24.536728>,  <10.371635, 20.071541, 23.847282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.469032, 19.917187, 24.536728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.786073, 19.764057, 24.346895>,  <10.976297, 19.672180, 24.232996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.786073, 19.764057, 24.346895>,  <10.469032, 19.917187, 24.536728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.786073, 19.764057, 24.346895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451333, -0.154987, 0.878793,
		-0.409978, -0.910727, 0.049939,
		0.792601, -0.382825, -0.474583,
		11.023853, 19.649210, 24.204521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.578425, 19.254690, 24.817724>,  <10.469032, 19.917187, 24.536728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.578425, 19.254690, 24.817724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.918664, 19.423384, 24.692106>,  <11.122808, 19.524599, 24.616735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.918664, 19.423384, 24.692106>,  <10.578425, 19.254690, 24.817724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.918664, 19.423384, 24.692106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317325, 0.064520, 0.946120,
		0.419273, -0.904421, -0.078946,
		0.850597, 0.421734, -0.314047,
		11.173843, 19.549904, 24.597893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.119049, 18.955154, 25.203712>,  <10.578425, 19.254690, 24.817724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.119049, 18.955154, 25.203712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.284525, 19.290663, 25.062109>,  <11.383810, 19.491968, 24.977146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.284525, 19.290663, 25.062109>,  <11.119049, 18.955154, 25.203712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.284525, 19.290663, 25.062109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450698, 0.149176, 0.880124,
		0.791033, -0.523649, -0.316320,
		0.413689, 0.838772, -0.354011,
		11.408631, 19.542294, 24.955906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.784904, 18.968470, 25.362932>,  <11.119049, 18.955154, 25.203712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.784904, 18.968470, 25.362932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.731148, 19.359545, 25.298349>,  <11.698895, 19.594189, 25.259600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.731148, 19.359545, 25.298349>,  <11.784904, 18.968470, 25.362932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.731148, 19.359545, 25.298349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551417, 0.209163, 0.807583,
		0.823334, 0.019500, -0.567222,
		-0.134390, 0.977686, -0.161459,
		11.690830, 19.652851, 25.249912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.392632, 19.241089, 25.718573>,  <11.784904, 18.968470, 25.362932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.392632, 19.241089, 25.718573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.168157, 19.564861, 25.649418>,  <12.033471, 19.759125, 25.607925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.168157, 19.564861, 25.649418>,  <12.392632, 19.241089, 25.718573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.168157, 19.564861, 25.649418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258771, 0.369991, 0.892269,
		0.786196, 0.455995, -0.417092,
		-0.561190, 0.809429, -0.172887,
		11.999800, 19.807690, 25.597551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.829411, 19.773621, 25.775249>,  <12.392632, 19.241089, 25.718573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.829411, 19.773621, 25.775249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.459740, 19.895931, 25.866810>,  <12.237937, 19.969318, 25.921745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.459740, 19.895931, 25.866810>,  <12.829411, 19.773621, 25.775249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.459740, 19.895931, 25.866810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285418, 0.154589, 0.945854,
		0.253835, 0.939469, -0.230142,
		-0.924178, 0.305778, 0.228901,
		12.182487, 19.987665, 25.935480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.958624, 20.210806, 26.221075>,  <12.829411, 19.773621, 25.775249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.958624, 20.210806, 26.221075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.580474, 20.098642, 26.287575>,  <12.353584, 20.031343, 26.327475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.580474, 20.098642, 26.287575>,  <12.958624, 20.210806, 26.221075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.580474, 20.098642, 26.287575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198697, -0.091356, 0.975794,
		-0.258433, 0.955523, 0.142082,
		-0.945374, -0.280409, 0.166250,
		12.296862, 20.014519, 26.337450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.992144, 20.924177, 25.927185>,  <12.958624, 20.210806, 26.221075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.992144, 20.924177, 25.927185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.250166, 21.204124, 25.804491>,  <13.404980, 21.372093, 25.730875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.250166, 21.204124, 25.804491>,  <12.992144, 20.924177, 25.927185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.250166, 21.204124, 25.804491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378655, -0.055900, -0.923848,
		-0.663719, 0.712080, 0.228951,
		0.645055, 0.699869, -0.306735,
		13.443683, 21.414085, 25.712471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.631697, 21.321793, 25.516710>,  <12.992144, 20.924177, 25.927185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.631697, 21.321793, 25.516710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.014891, 21.345093, 25.404375>,  <13.244807, 21.359074, 25.336973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.014891, 21.345093, 25.404375>,  <12.631697, 21.321793, 25.516710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.014891, 21.345093, 25.404375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281746, 0.007829, -0.959457,
		-0.053691, 0.998271, 0.023912,
		0.957986, 0.058251, -0.280839,
		13.302286, 21.362568, 25.320124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.591500, 21.807737, 24.969894>,  <12.631697, 21.321793, 25.516710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.591500, 21.807737, 24.969894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.941000, 21.618254, 24.925785>,  <13.150700, 21.504564, 24.899319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.941000, 21.618254, 24.925785>,  <12.591500, 21.807737, 24.969894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.941000, 21.618254, 24.925785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093968, 0.058045, -0.993882,
		0.477212, 0.878767, 0.006203,
		0.873750, -0.473709, -0.110275,
		13.203125, 21.476141, 24.892702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.891090, 22.175415, 24.508083>,  <12.591500, 21.807737, 24.969894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.891090, 22.175415, 24.508083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.087486, 21.828003, 24.481005>,  <13.205324, 21.619555, 24.464758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.087486, 21.828003, 24.481005>,  <12.891090, 22.175415, 24.508083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.087486, 21.828003, 24.481005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043794, 0.053003, -0.997634,
		0.870064, 0.492792, -0.012012,
		0.490989, -0.868531, -0.067698,
		13.234783, 21.567444, 24.460695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.508932, 22.286453, 24.059860>,  <12.891090, 22.175415, 24.508083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.508932, 22.286453, 24.059860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.405749, 21.900450, 24.041037>,  <13.343840, 21.668848, 24.029741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.405749, 21.900450, 24.041037>,  <13.508932, 22.286453, 24.059860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.405749, 21.900450, 24.041037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154962, 0.089403, -0.983867,
		0.953648, -0.246503, -0.172602,
		-0.257957, -0.965009, -0.047061,
		13.328362, 21.610947, 24.026918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.923714, 22.043859, 23.533092>,  <13.508932, 22.286453, 24.059860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.923714, 22.043859, 23.533092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.656286, 21.746408, 23.530678>,  <13.495830, 21.567938, 23.529230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.656286, 21.746408, 23.530678>,  <13.923714, 22.043859, 23.533092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.656286, 21.746408, 23.530678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041094, -0.028840, -0.998739,
		0.742514, -0.667974, 0.049841,
		-0.668569, -0.743626, -0.006036,
		13.455715, 21.523321, 23.528868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.197373, 21.580891, 23.116102>,  <13.923714, 22.043859, 23.533092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.197373, 21.580891, 23.116102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.809517, 21.483507, 23.125242>,  <13.576803, 21.425077, 23.130726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.809517, 21.483507, 23.125242>,  <14.197373, 21.580891, 23.116102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.809517, 21.483507, 23.125242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013760, -0.147624, -0.988948,
		0.244143, -0.958611, 0.146492,
		-0.969642, -0.243460, 0.022851,
		13.518624, 21.410469, 23.132097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.161521, 20.998138, 22.697868>,  <14.197373, 21.580891, 23.116102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.161521, 20.998138, 22.697868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.783209, 21.124405, 22.728479>,  <13.556222, 21.200165, 22.746845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.783209, 21.124405, 22.728479>,  <14.161521, 20.998138, 22.697868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.783209, 21.124405, 22.728479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200555, -0.382209, -0.902050,
		-0.255495, -0.868489, 0.424794,
		-0.945780, 0.315664, 0.076527,
		13.499475, 21.219105, 22.751438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.669266, 20.481617, 22.498978>,  <14.161521, 20.998138, 22.697868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.669266, 20.481617, 22.498978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.578266, 20.865801, 22.434774>,  <13.523666, 21.096312, 22.396254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.578266, 20.865801, 22.434774>,  <13.669266, 20.481617, 22.498978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.578266, 20.865801, 22.434774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136944, -0.194747, -0.971247,
		-0.964101, -0.198978, 0.175834,
		-0.227500, 0.960459, -0.160507,
		13.510016, 21.153938, 22.386621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.941906, 20.458931, 22.214434>,  <13.669266, 20.481617, 22.498978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.941906, 20.458931, 22.214434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.166184, 20.774870, 22.115028>,  <13.300752, 20.964434, 22.055386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.166184, 20.774870, 22.115028>,  <12.941906, 20.458931, 22.214434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.166184, 20.774870, 22.115028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081651, -0.245924, -0.965844,
		-0.823986, 0.561837, -0.073397,
		0.560697, 0.789848, -0.248513,
		13.334394, 21.011824, 22.040474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.664206, 20.821926, 21.690107>,  <12.941906, 20.458931, 22.214434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.664206, 20.821926, 21.690107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.046951, 20.937859, 21.682032>,  <13.276599, 21.007418, 21.677187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.046951, 20.937859, 21.682032>,  <12.664206, 20.821926, 21.690107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.046951, 20.937859, 21.682032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040041, -0.200383, -0.978899,
		-0.287759, 0.935866, -0.203344,
		0.956866, 0.289829, -0.020189,
		13.334011, 21.024807, 21.675976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.624465, 21.383795, 21.233295>,  <12.664206, 20.821926, 21.690107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.624465, 21.383795, 21.233295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.002556, 21.254625, 21.252337>,  <13.229410, 21.177124, 21.263762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.002556, 21.254625, 21.252337>,  <12.624465, 21.383795, 21.233295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.002556, 21.254625, 21.252337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082716, 0.095898, -0.991948,
		0.315758, 0.941554, 0.117356,
		0.945227, -0.322923, 0.047601,
		13.286124, 21.157749, 21.266617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.022213, 21.930813, 20.799486>,  <12.624465, 21.383795, 21.233295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.022213, 21.930813, 20.799486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.210551, 21.579336, 20.831001>,  <13.323554, 21.368450, 20.849911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.210551, 21.579336, 20.831001>,  <13.022213, 21.930813, 20.799486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.210551, 21.579336, 20.831001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281161, 0.064806, -0.957470,
		0.836214, 0.472973, 0.277567,
		0.470845, -0.878691, 0.078790,
		13.351805, 21.315729, 20.854639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.564040, 21.954185, 20.384645>,  <13.022213, 21.930813, 20.799486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.564040, 21.954185, 20.384645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.539744, 21.560125, 20.448877>,  <13.525167, 21.323689, 20.487417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.539744, 21.560125, 20.448877>,  <13.564040, 21.954185, 20.384645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.539744, 21.560125, 20.448877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255763, -0.170868, -0.951519,
		0.964829, -0.016724, 0.262344,
		-0.060740, -0.985152, 0.160581,
		13.521523, 21.264580, 20.497051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<9.359677, 3.794641, 10.722275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.168105, 3.934243, 10.400077>,  <9.053162, 4.018004, 10.206758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.168105, 3.934243, 10.400077>,  <9.359677, 3.794641, 10.722275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.168105, 3.934243, 10.400077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490625, 0.654472, 0.575286,
		0.727951, 0.670718, -0.142216,
		-0.478931, 0.349006, -0.805494,
		9.024426, 4.038945, 10.158429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.413733, 4.555110, 10.773889>,  <9.359677, 3.794641, 10.722275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.413733, 4.555110, 10.773889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.108768, 4.475891, 10.527472>,  <8.925790, 4.428359, 10.379622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.108768, 4.475891, 10.527472>,  <9.413733, 4.555110, 10.773889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.108768, 4.475891, 10.527472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505163, 0.777125, 0.375350,
		0.404404, 0.597372, -0.692535,
		-0.762409, -0.198050, -0.616042,
		8.880046, 4.416476, 10.342659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.162731, 5.159261, 10.291798>,  <9.413733, 4.555110, 10.773889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.162731, 5.159261, 10.291798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.867441, 4.901828, 10.372616>,  <8.690267, 4.747368, 10.421107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.867441, 4.901828, 10.372616>,  <9.162731, 5.159261, 10.291798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.867441, 4.901828, 10.372616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567359, 0.754419, 0.330085,
		-0.364865, 0.129044, -0.922074,
		-0.738226, -0.643583, 0.202047,
		8.645973, 4.708753, 10.433229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.478699, 5.273953, 10.086027>,  <9.162731, 5.159261, 10.291798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.478699, 5.273953, 10.086027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.361527, 5.038478, 10.387395>,  <8.291224, 4.897193, 10.568215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.361527, 5.038478, 10.387395>,  <8.478699, 5.273953, 10.086027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.361527, 5.038478, 10.387395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700180, 0.668675, 0.250243,
		-0.651107, -0.454226, -0.608061,
		-0.292928, -0.588688, 0.753419,
		8.273649, 4.861872, 10.613420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.760791, 5.055878, 10.092415>,  <8.478699, 5.273953, 10.086027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.760791, 5.055878, 10.092415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.855663, 5.067854, 10.480816>,  <7.912587, 5.075040, 10.713857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.855663, 5.067854, 10.480816>,  <7.760791, 5.055878, 10.092415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.855663, 5.067854, 10.480816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669924, 0.728886, 0.141162,
		-0.703524, -0.683980, 0.192937,
		0.237182, 0.029942, 0.971004,
		7.926818, 5.076837, 10.772117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.144006, 4.901259, 10.524679>,  <7.760791, 5.055878, 10.092415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.144006, 4.901259, 10.524679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.399313, 5.155754, 10.698032>,  <7.552497, 5.308450, 10.802044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.399313, 5.155754, 10.698032>,  <7.144006, 4.901259, 10.524679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.399313, 5.155754, 10.698032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769788, 0.532248, 0.352333,
		-0.006500, -0.558495, 0.829483,
		0.638267, 0.636235, 0.433382,
		7.590793, 5.346624, 10.828047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.101576, 5.031095, 11.280163>,  <7.144006, 4.901259, 10.524679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.101576, 5.031095, 11.280163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.239434, 5.366501, 11.111350>,  <7.322149, 5.567745, 11.010062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.239434, 5.366501, 11.111350>,  <7.101576, 5.031095, 11.280163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.239434, 5.366501, 11.111350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778321, 0.506591, 0.370920,
		0.524820, 0.200641, 0.827228,
		0.344644, 0.838516, -0.422032,
		7.342828, 5.618056, 10.984740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.015248, 5.571036, 11.762817>,  <7.101576, 5.031095, 11.280163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.015248, 5.571036, 11.762817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.040876, 5.752074, 11.407053>,  <7.056252, 5.860697, 11.193594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.040876, 5.752074, 11.407053>,  <7.015248, 5.571036, 11.762817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.040876, 5.752074, 11.407053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616258, 0.718950, 0.321461,
		0.784934, 0.527510, 0.324979,
		0.064070, 0.452596, -0.889411,
		7.060097, 5.887853, 11.140229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.146091, 6.305962, 11.793654>,  <7.015248, 5.571036, 11.762817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.146091, 6.305962, 11.793654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.922038, 6.238365, 11.469261>,  <6.787606, 6.197806, 11.274626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.922038, 6.238365, 11.469261>,  <7.146091, 6.305962, 11.793654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.922038, 6.238365, 11.469261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667985, 0.671136, 0.321515,
		0.489946, 0.721815, -0.488810,
		-0.560132, -0.168993, -0.810983,
		6.753998, 6.187667, 11.225966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.021198, 6.899115, 11.283764>,  <7.146091, 6.305962, 11.793654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.021198, 6.899115, 11.283764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.707738, 6.651537, 11.262591>,  <6.519662, 6.502991, 11.249888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.707738, 6.651537, 11.262591>,  <7.021198, 6.899115, 11.283764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.707738, 6.651537, 11.262591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610067, 0.750744, 0.253380,
		-0.117091, 0.230853, -0.965918,
		-0.783650, -0.618943, -0.052930,
		6.472643, 6.465854, 11.246713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.495654, 7.145548, 10.860276>,  <7.021198, 6.899115, 11.283764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.495654, 7.145548, 10.860276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.326369, 6.897848, 11.124826>,  <6.224798, 6.749227, 11.283557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.326369, 6.897848, 11.124826>,  <6.495654, 7.145548, 10.860276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.326369, 6.897848, 11.124826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632782, 0.724458, 0.273399,
		-0.648442, -0.302801, -0.698452,
		-0.423213, -0.619252, 0.661376,
		6.199405, 6.712072, 11.323239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.814325, 7.253012, 10.674277>,  <6.495654, 7.145548, 10.860276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.814325, 7.253012, 10.674277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.762225, 7.089721, 11.035693>,  <5.730965, 6.991747, 11.252542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.762225, 7.089721, 11.035693>,  <5.814325, 7.253012, 10.674277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.762225, 7.089721, 11.035693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746478, 0.640146, 0.181614,
		-0.652538, -0.650818, -0.388112,
		-0.130251, -0.408227, 0.903541,
		5.723149, 6.967253, 11.306755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.087922, 7.378044, 10.853525>,  <5.814325, 7.253012, 10.674277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.087922, 7.378044, 10.853525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.235781, 7.225178, 11.192302>,  <5.324496, 7.133459, 11.395568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.235781, 7.225178, 11.192302>,  <5.087922, 7.378044, 10.853525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.235781, 7.225178, 11.192302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590936, 0.606720, 0.531682,
		-0.717047, -0.697024, -0.001562,
		0.369647, -0.382164, 0.846943,
		5.346675, 7.110529, 11.446384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.524987, 7.142809, 11.198358>,  <5.087922, 7.378044, 10.853525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.524987, 7.142809, 11.198358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.810537, 7.233145, 11.463500>,  <4.981867, 7.287346, 11.622585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.810537, 7.233145, 11.463500>,  <4.524987, 7.142809, 11.198358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.810537, 7.233145, 11.463500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610594, 0.664198, 0.431296,
		-0.342864, -0.712628, 0.612050,
		0.713876, 0.225839, 0.662856,
		5.024700, 7.300896, 11.662357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.184376, 7.236907, 11.895158>,  <4.524987, 7.142809, 11.198358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.184376, 7.236907, 11.895158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.538278, 7.423296, 11.891567>,  <4.750619, 7.535129, 11.889413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.538278, 7.423296, 11.891567>,  <4.184376, 7.236907, 11.895158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.538278, 7.423296, 11.891567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409428, 0.786308, 0.462697,
		0.222663, -0.405697, 0.886471,
		0.884754, 0.465972, -0.008978,
		4.803704, 7.563087, 11.888874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.172584, 7.578956, 12.525115>,  <4.184376, 7.236907, 11.895158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.172584, 7.578956, 12.525115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.461169, 7.753098, 12.309724>,  <4.634320, 7.857584, 12.180490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.461169, 7.753098, 12.309724>,  <4.172584, 7.578956, 12.525115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.461169, 7.753098, 12.309724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234688, 0.885344, 0.401357,
		0.651470, -0.163190, 0.740915,
		0.721462, 0.435356, -0.538477,
		4.677607, 7.883706, 12.148181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.567462, 7.929604, 13.049128>,  <4.172584, 7.578956, 12.525115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.567462, 7.929604, 13.049128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.692129, 8.111534, 12.715422>,  <4.766928, 8.220693, 12.515198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.692129, 8.111534, 12.715422>,  <4.567462, 7.929604, 13.049128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.692129, 8.111534, 12.715422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124424, 0.889972, 0.438713,
		0.942010, -0.032929, 0.333965,
		0.311666, 0.454826, -0.834265,
		4.785628, 8.247982, 12.465142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.040510, 8.399508, 13.261665>,  <4.567462, 7.929604, 13.049128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.040510, 8.399508, 13.261665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.914702, 8.509122, 12.898131>,  <4.839217, 8.574890, 12.680011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.914702, 8.509122, 12.898131>,  <5.040510, 8.399508, 13.261665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.914702, 8.509122, 12.898131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045631, 0.951953, 0.302825,
		0.948153, 0.136715, -0.286905,
		-0.314521, 0.274033, -0.908836,
		4.820345, 8.591331, 12.625481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.513102, 8.957567, 12.978882>,  <5.040510, 8.399508, 13.261665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.513102, 8.957567, 12.978882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.152846, 8.991547, 12.808407>,  <4.936693, 9.011934, 12.706122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.152846, 8.991547, 12.808407>,  <5.513102, 8.957567, 12.978882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.152846, 8.991547, 12.808407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020132, 0.971500, 0.236184,
		0.434103, 0.221296, -0.873260,
		-0.900638, 0.084948, -0.426186,
		4.882655, 9.017031, 12.680551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.643007, 9.512629, 12.718506>,  <5.513102, 8.957567, 12.978882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.643007, 9.512629, 12.718506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.244637, 9.476567, 12.717786>,  <5.005615, 9.454930, 12.717354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.244637, 9.476567, 12.717786>,  <5.643007, 9.512629, 12.718506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.244637, 9.476567, 12.717786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089530, 0.986274, 0.138740,
		-0.010733, 0.138336, -0.990327,
		-0.995926, -0.090153, -0.001799,
		4.945859, 9.449521, 12.717246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.367819, 9.987996, 12.215486>,  <5.643007, 9.512629, 12.718506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.367819, 9.987996, 12.215486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.055542, 9.903270, 12.450654>,  <4.868176, 9.852434, 12.591755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.055542, 9.903270, 12.450654>,  <5.367819, 9.987996, 12.215486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.055542, 9.903270, 12.450654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167625, 0.977306, 0.129517,
		-0.602013, 0.002563, -0.798482,
		-0.780693, -0.211816, 0.587922,
		4.821334, 9.839725, 12.627030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.882302, 10.387076, 11.998510>,  <5.367819, 9.987996, 12.215486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.882302, 10.387076, 11.998510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.779765, 10.287510, 12.372105>,  <4.718242, 10.227770, 12.596261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.779765, 10.287510, 12.372105>,  <4.882302, 10.387076, 11.998510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.779765, 10.287510, 12.372105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011418, 0.965425, 0.260430,
		-0.966518, 0.077423, -0.244638,
		-0.256343, -0.248917, 0.933985,
		4.702862, 10.212834, 12.652300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.431293, 10.867607, 12.156844>,  <4.882302, 10.387076, 11.998510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.431293, 10.867607, 12.156844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.551598, 10.709660, 12.504089>,  <4.623780, 10.614891, 12.712437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.551598, 10.709660, 12.504089>,  <4.431293, 10.867607, 12.156844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.551598, 10.709660, 12.504089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037593, 0.904643, 0.424509,
		-0.952958, -0.160311, 0.257237,
		0.300761, -0.394869, 0.868114,
		4.641826, 10.591199, 12.764524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.989117, 11.106372, 12.729369>,  <4.431293, 10.867607, 12.156844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.989117, 11.106372, 12.729369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.304807, 10.982434, 12.941453>,  <4.494221, 10.908072, 13.068703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.304807, 10.982434, 12.941453>,  <3.989117, 11.106372, 12.729369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.304807, 10.982434, 12.941453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062374, 0.818476, 0.571146,
		-0.610929, -0.483833, 0.626635,
		0.789224, -0.309844, 0.530209,
		4.541574, 10.889482, 13.100515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.727797, 10.974567, 13.390393>,  <3.989117, 11.106372, 12.729369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.727797, 10.974567, 13.390393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.123118, 11.035442, 13.394327>,  <4.360311, 11.071967, 13.396688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.123118, 11.035442, 13.394327>,  <3.727797, 10.974567, 13.390393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.123118, 11.035442, 13.394327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142070, 0.895319, 0.422161,
		0.055443, -0.418620, 0.906468,
		0.988303, 0.152188, 0.009834,
		4.419609, 11.081099, 13.397278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.797865, 11.324792, 14.092153>,  <3.727797, 10.974567, 13.390393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.797865, 11.324792, 14.092153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.135871, 11.402836, 13.893003>,  <4.338675, 11.449662, 13.773512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.135871, 11.402836, 13.893003>,  <3.797865, 11.324792, 14.092153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.135871, 11.402836, 13.893003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049323, 0.898652, 0.435881,
		0.532461, -0.392883, 0.749752,
		0.845016, 0.195110, -0.497876,
		4.389376, 11.461369, 13.743640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.211226, 11.573781, 14.600104>,  <3.797865, 11.324792, 14.092153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.211226, 11.573781, 14.600104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.366464, 11.720334, 14.261839>,  <4.459607, 11.808266, 14.058880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.366464, 11.720334, 14.261839>,  <4.211226, 11.573781, 14.600104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.366464, 11.720334, 14.261839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008032, 0.916204, 0.400632,
		0.921587, -0.162274, 0.352627,
		0.388090, 0.366384, -0.845665,
		4.482893, 11.830249, 14.008140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.772306, 11.982761, 14.808621>,  <4.211226, 11.573781, 14.600104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.772306, 11.982761, 14.808621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.662990, 12.082166, 14.436911>,  <4.597401, 12.141809, 14.213884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.662990, 12.082166, 14.436911>,  <4.772306, 11.982761, 14.808621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.662990, 12.082166, 14.436911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050240, 0.961047, 0.271782,
		0.960619, 0.120962, -0.250160,
		-0.273290, 0.248511, -0.929276,
		4.581003, 12.156719, 14.158128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.025365, 12.643013, 14.711817>,  <4.772306, 11.982761, 14.808621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.025365, 12.643013, 14.711817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.760898, 12.585285, 14.417327>,  <4.602217, 12.550649, 14.240633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.760898, 12.585285, 14.417327>,  <5.025365, 12.643013, 14.711817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.760898, 12.585285, 14.417327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250376, 0.967509, 0.035194,
		0.707225, 0.207602, -0.675821,
		-0.661169, -0.144319, -0.736225,
		4.562547, 12.541989, 14.196460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.229443, 12.939684, 14.072618>,  <5.025365, 12.643013, 14.711817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.229443, 12.939684, 14.072618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.830619, 12.920174, 14.096265>,  <4.591325, 12.908467, 14.110454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.830619, 12.920174, 14.096265>,  <5.229443, 12.939684, 14.072618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.830619, 12.920174, 14.096265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051902, 0.997269, -0.052547,
		-0.056394, -0.055461, -0.996867,
		-0.997058, -0.048776, 0.059119,
		4.531502, 12.905541, 14.114000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.099681, 13.652846, 13.956725>,  <5.229443, 12.939684, 14.072618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.099681, 13.652846, 13.956725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.741051, 13.513654, 14.066316>,  <4.525873, 13.430139, 14.132070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.741051, 13.513654, 14.066316>,  <5.099681, 13.652846, 13.956725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.741051, 13.513654, 14.066316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231714, 0.895740, 0.379420,
		-0.377443, 0.276694, -0.883729,
		-0.896574, -0.347982, 0.273977,
		4.472079, 13.409259, 14.148509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.666302, 14.120707, 14.129144>,  <5.099681, 13.652846, 13.956725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.666302, 14.120707, 14.129144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.890580, 14.294584, 14.411041>,  <6.025146, 14.398911, 14.580179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.890580, 14.294584, 14.411041>,  <5.666302, 14.120707, 14.129144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.890580, 14.294584, 14.411041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755855, 0.078823, -0.649977,
		-0.338092, 0.897121, -0.284370,
		0.560694, 0.434695, 0.704743,
		6.058788, 14.424993, 14.622464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.835691, 14.801551, 13.868134>,  <5.666302, 14.120707, 14.129144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.835691, 14.801551, 13.868134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.100236, 14.643003, 14.122847>,  <6.258963, 14.547873, 14.275675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.100236, 14.643003, 14.122847>,  <5.835691, 14.801551, 13.868134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.100236, 14.643003, 14.122847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675183, -0.055168, -0.735584,
		0.326694, 0.916432, 0.231136,
		0.661362, -0.396370, 0.636782,
		6.298645, 14.524092, 14.313881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.505622, 14.968966, 13.592949>,  <5.835691, 14.801551, 13.868134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.505622, 14.968966, 13.592949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.586766, 14.670077, 13.846091>,  <6.635452, 14.490744, 13.997976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.586766, 14.670077, 13.846091>,  <6.505622, 14.968966, 13.592949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.586766, 14.670077, 13.846091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743154, -0.303363, -0.596400,
		0.637629, 0.591294, 0.493762,
		0.202859, -0.747223, 0.632856,
		6.647624, 14.445910, 14.035948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.227389, 14.984045, 13.725573>,  <6.505622, 14.968966, 13.592949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.227389, 14.984045, 13.725573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.106798, 14.613367, 13.815327>,  <7.034444, 14.390961, 13.869179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.106798, 14.613367, 13.815327>,  <7.227389, 14.984045, 13.725573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.106798, 14.613367, 13.815327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668423, -0.373234, -0.643356,
		0.679943, -0.043972, 0.731946,
		-0.301477, -0.926695, 0.224385,
		7.016355, 14.335359, 13.882643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.936230, 14.524271, 13.751332>,  <7.227389, 14.984045, 13.725573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.936230, 14.524271, 13.751332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.633294, 14.266273, 13.710507>,  <7.451533, 14.111473, 13.686012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.633294, 14.266273, 13.710507>,  <7.936230, 14.524271, 13.751332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.633294, 14.266273, 13.710507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533910, -0.521600, -0.665487,
		0.376002, -0.558491, 0.739399,
		-0.757339, -0.644997, -0.102061,
		7.406092, 14.072774, 13.679889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.258511, 13.764091, 13.647582>,  <7.936230, 14.524271, 13.751332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.258511, 13.764091, 13.647582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.888986, 13.738964, 13.496520>,  <7.667271, 13.723887, 13.405883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.888986, 13.738964, 13.496520>,  <8.258511, 13.764091, 13.647582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.888986, 13.738964, 13.496520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347064, -0.553812, -0.756861,
		-0.161605, -0.830269, 0.533421,
		-0.923813, -0.062819, -0.377655,
		7.611842, 13.720119, 13.383224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.306605, 13.158970, 13.429221>,  <8.258511, 13.764091, 13.647582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.306605, 13.158970, 13.429221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.986151, 13.302684, 13.237766>,  <7.793878, 13.388912, 13.122893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.986151, 13.302684, 13.237766>,  <8.306605, 13.158970, 13.429221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.986151, 13.302684, 13.237766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064024, -0.743713, -0.665426,
		-0.595045, -0.563742, 0.572814,
		-0.801138, 0.359285, -0.478636,
		7.745810, 13.410470, 13.094175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.983078, 12.607914, 13.365346>,  <8.306605, 13.158970, 13.429221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.983078, 12.607914, 13.365346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.834037, 12.842361, 13.077559>,  <7.744612, 12.983030, 12.904888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.834037, 12.842361, 13.077559>,  <7.983078, 12.607914, 13.365346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.834037, 12.842361, 13.077559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101073, -0.745050, -0.659307,
		-0.922470, -0.318378, 0.218368,
		-0.372604, 0.586120, -0.719465,
		7.722256, 13.018197, 12.861720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.426151, 12.224657, 12.978245>,  <7.983078, 12.607914, 13.365346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.426151, 12.224657, 12.978245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.507330, 12.527229, 12.729528>,  <7.556037, 12.708773, 12.580298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.507330, 12.527229, 12.729528>,  <7.426151, 12.224657, 12.978245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.507330, 12.527229, 12.729528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004831, -0.634224, -0.773134,
		-0.979178, 0.159910, -0.125060,
		0.202948, 0.756432, -0.621790,
		7.568214, 12.754159, 12.542992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.753927, 12.213470, 12.479669>,  <7.426151, 12.224657, 12.978245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.753927, 12.213470, 12.479669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.075195, 12.378380, 12.307647>,  <7.267956, 12.477325, 12.204433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.075195, 12.378380, 12.307647>,  <6.753927, 12.213470, 12.479669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.075195, 12.378380, 12.307647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224032, -0.459870, -0.859261,
		-0.552020, 0.786479, -0.276991,
		0.803171, 0.412275, -0.430054,
		7.316146, 12.502062, 12.178631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.555775, 12.303478, 11.780722>,  <6.753927, 12.213470, 12.479669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.555775, 12.303478, 11.780722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.953711, 12.343116, 11.771999>,  <7.192472, 12.366899, 11.766766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.953711, 12.343116, 11.771999>,  <6.555775, 12.303478, 11.780722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.953711, 12.343116, 11.771999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046189, -0.633648, -0.772241,
		-0.090342, 0.767249, -0.634955,
		0.994839, 0.099093, -0.021807,
		7.252163, 12.372844, 11.765457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.683765, 12.411908, 11.026227>,  <6.555775, 12.303478, 11.780722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.683765, 12.411908, 11.026227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.989993, 12.278114, 11.246054>,  <7.173729, 12.197838, 11.377950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.989993, 12.278114, 11.246054>,  <6.683765, 12.411908, 11.026227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.989993, 12.278114, 11.246054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143860, -0.743589, -0.652978,
		0.627063, 0.578961, -0.521149,
		0.765569, -0.334486, 0.549566,
		7.219664, 12.177769, 11.410924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.098415, 12.298872, 10.513348>,  <6.683765, 12.411908, 11.026227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.098415, 12.298872, 10.513348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.258351, 12.083658, 10.810169>,  <7.354313, 11.954530, 10.988262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.258351, 12.083658, 10.810169>,  <7.098415, 12.298872, 10.513348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.258351, 12.083658, 10.810169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050340, -0.795475, -0.603892,
		0.915201, 0.278816, -0.290979,
		0.399841, -0.538035, 0.742055,
		7.378304, 11.922248, 11.032785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.731029, 11.899537, 10.227850>,  <7.098415, 12.298872, 10.513348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.731029, 11.899537, 10.227850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.622278, 11.706070, 10.560632>,  <7.557028, 11.589990, 10.760301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.622278, 11.706070, 10.560632>,  <7.731029, 11.899537, 10.227850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.622278, 11.706070, 10.560632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103291, -0.844858, -0.524925,
		0.956773, -0.228648, 0.179737,
		-0.271875, -0.483669, 0.831954,
		7.540716, 11.560969, 10.810218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.123687, 11.444002, 10.092256>,  <7.731029, 11.899537, 10.227850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.123687, 11.444002, 10.092256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.859663, 11.297833, 10.354793>,  <7.701248, 11.210132, 10.512315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.859663, 11.297833, 10.354793>,  <8.123687, 11.444002, 10.092256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.859663, 11.297833, 10.354793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098285, -0.908210, -0.406809,
		0.744754, -0.204010, 0.635390,
		-0.660061, -0.365423, 0.656342,
		7.661644, 11.188207, 10.551695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.277581, 10.715671, 10.060206>,  <8.123687, 11.444002, 10.092256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.277581, 10.715671, 10.060206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.939485, 10.727180, 10.273651>,  <7.736627, 10.734085, 10.401718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.939485, 10.727180, 10.273651>,  <8.277581, 10.715671, 10.060206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.939485, 10.727180, 10.273651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174620, -0.958605, -0.224908,
		0.505051, -0.283281, 0.815277,
		-0.845240, 0.028773, 0.533611,
		7.685913, 10.735811, 10.433734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.286089, 10.070879, 10.386650>,  <8.277581, 10.715671, 10.060206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.286089, 10.070879, 10.386650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.910083, 10.206984, 10.376894>,  <7.684480, 10.288647, 10.371040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.910083, 10.206984, 10.376894>,  <8.286089, 10.070879, 10.386650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.910083, 10.206984, 10.376894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330851, -0.926767, -0.177874,
		-0.083127, -0.159135, 0.983751,
		-0.940014, 0.340262, -0.024389,
		7.628079, 10.309062, 10.369577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.782618, 9.661371, 10.889004>,  <8.286089, 10.070879, 10.386650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.782618, 9.661371, 10.889004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.598718, 9.832934, 10.577962>,  <7.488379, 9.935872, 10.391337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.598718, 9.832934, 10.577962>,  <7.782618, 9.661371, 10.889004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.598718, 9.832934, 10.577962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328344, -0.895682, -0.299908,
		-0.825118, 0.117438, 0.552619,
		-0.459750, 0.428909, -0.777603,
		7.460793, 9.961607, 10.344681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.235227, 9.308242, 10.797235>,  <7.782618, 9.661371, 10.889004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.235227, 9.308242, 10.797235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.234694, 9.481552, 10.436730>,  <7.234374, 9.585538, 10.220428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.234694, 9.481552, 10.436730>,  <7.235227, 9.308242, 10.797235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.234694, 9.481552, 10.436730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370420, -0.837364, -0.402009,
		-0.928863, 0.333310, 0.161610,
		-0.001333, 0.433275, -0.901261,
		7.234293, 9.611534, 10.166352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.550198, 9.339673, 10.679589>,  <7.235227, 9.308242, 10.797235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.550198, 9.339673, 10.679589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.697738, 9.393169, 10.311663>,  <6.786262, 9.425267, 10.090906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.697738, 9.393169, 10.311663>,  <6.550198, 9.339673, 10.679589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.697738, 9.393169, 10.311663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502062, -0.804146, -0.318250,
		-0.782229, 0.579192, -0.229463,
		0.368850, 0.133740, -0.919817,
		6.808393, 9.433291, 10.035718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.932725, 9.362864, 10.300409>,  <6.550198, 9.339673, 10.679589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.932725, 9.362864, 10.300409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.216801, 9.301677, 10.025533>,  <6.387247, 9.264964, 9.860607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.216801, 9.301677, 10.025533>,  <5.932725, 9.362864, 10.300409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.216801, 9.301677, 10.025533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550403, -0.729262, -0.406488,
		-0.438962, 0.666916, -0.602110,
		0.710189, -0.152971, -0.687191,
		6.429858, 9.255786, 9.819375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<16.930616, 22.007633, 24.753441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.675537, 21.710325, 24.834330>,  <16.522490, 21.531940, 24.882862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.675537, 21.710325, 24.834330>,  <16.930616, 22.007633, 24.753441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.675537, 21.710325, 24.834330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162166, 0.386186, 0.908054,
		-0.753022, 0.546271, -0.366804,
		-0.637699, -0.743268, 0.202220,
		16.484228, 21.487345, 24.894995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.362928, 22.342436, 25.096067>,  <16.930616, 22.007633, 24.753441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.362928, 22.342436, 25.096067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.362860, 21.963816, 25.225092>,  <16.362818, 21.736645, 25.302505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.362860, 21.963816, 25.225092>,  <16.362928, 22.342436, 25.096067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.362860, 21.963816, 25.225092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085798, 0.321384, 0.943054,
		-0.996313, -0.027513, -0.081267,
		-0.000172, -0.946549, 0.322560,
		16.362808, 21.679852, 25.321859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.826806, 22.314718, 25.704218>,  <16.362928, 22.342436, 25.096067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.826806, 22.314718, 25.704218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.066372, 21.996059, 25.736847>,  <16.210112, 21.804865, 25.756424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.066372, 21.996059, 25.736847>,  <15.826806, 22.314718, 25.704218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.066372, 21.996059, 25.736847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070558, 0.153960, 0.985555,
		-0.797698, -0.584508, 0.148419,
		0.598915, -0.796647, 0.081572,
		16.246046, 21.757065, 25.761318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.498558, 21.851248, 26.223238>,  <15.826806, 22.314718, 25.704218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.498558, 21.851248, 26.223238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.891666, 21.777437, 26.218977>,  <16.127531, 21.733150, 26.216419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.891666, 21.777437, 26.218977>,  <15.498558, 21.851248, 26.223238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.891666, 21.777437, 26.218977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008452, -0.012717, 0.999883,
		-0.184641, -0.982745, -0.010938,
		0.982770, -0.184527, -0.010655,
		16.186497, 21.722080, 26.215780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.520697, 21.461491, 26.815004>,  <15.498558, 21.851248, 26.223238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.520697, 21.461491, 26.815004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.907104, 21.537848, 26.745296>,  <16.138948, 21.583662, 26.703472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.907104, 21.537848, 26.745296>,  <15.520697, 21.461491, 26.815004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.907104, 21.537848, 26.745296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182387, -0.025660, 0.982892,
		0.183155, -0.981276, -0.059604,
		0.966017, 0.190892, -0.174272,
		16.196909, 21.595116, 26.693014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.920328, 20.934792, 27.231657>,  <15.520697, 21.461491, 26.815004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.920328, 20.934792, 27.231657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.138138, 21.263151, 27.162813>,  <16.268824, 21.460167, 27.121508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.138138, 21.263151, 27.162813>,  <15.920328, 20.934792, 27.231657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.138138, 21.263151, 27.162813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150732, 0.106083, 0.982866,
		0.825090, -0.561137, -0.065970,
		0.544524, 0.820897, -0.172110,
		16.301495, 21.509420, 27.111181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.368120, 20.892153, 27.715412>,  <15.920328, 20.934792, 27.231657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.368120, 20.892153, 27.715412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.458046, 21.260500, 27.588001>,  <16.512001, 21.481508, 27.511555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.458046, 21.260500, 27.588001>,  <16.368120, 20.892153, 27.715412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.458046, 21.260500, 27.588001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292501, 0.248039, 0.923537,
		0.929463, -0.300794, -0.213592,
		0.224815, 0.920869, -0.318525,
		16.525490, 21.536760, 27.492443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.091175, 21.059433, 27.879499>,  <16.368120, 20.892153, 27.715412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.091175, 21.059433, 27.879499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.883926, 21.398798, 27.836145>,  <16.759577, 21.602417, 27.810133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.883926, 21.398798, 27.836145>,  <17.091175, 21.059433, 27.879499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.883926, 21.398798, 27.836145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250821, 0.271866, 0.929074,
		0.817702, 0.454190, -0.353659,
		-0.518124, 0.848410, -0.108385,
		16.728489, 21.653320, 27.803631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.660149, 21.475733, 28.095827>,  <17.091175, 21.059433, 27.879499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.660149, 21.475733, 28.095827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.322544, 21.689901, 28.108274>,  <17.119982, 21.818403, 28.115744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.322544, 21.689901, 28.108274>,  <17.660149, 21.475733, 28.095827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.322544, 21.689901, 28.108274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242169, 0.328687, 0.912863,
		0.478540, 0.778002, -0.407078,
		-0.844010, 0.535423, 0.031118,
		17.069342, 21.850529, 28.117609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.800545, 22.126413, 28.407917>,  <17.660149, 21.475733, 28.095827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.800545, 22.126413, 28.407917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.405968, 22.097523, 28.466862>,  <17.169222, 22.080189, 28.502228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.405968, 22.097523, 28.466862>,  <17.800545, 22.126413, 28.407917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.405968, 22.097523, 28.466862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116404, 0.325021, 0.938515,
		-0.115682, 0.942944, -0.312207,
		-0.986442, -0.072227, 0.147362,
		17.110035, 22.075855, 28.511070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.612963, 22.701460, 28.850851>,  <17.800545, 22.126413, 28.407917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.612963, 22.701460, 28.850851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.322615, 22.429401, 28.891859>,  <17.148405, 22.266167, 28.916464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.322615, 22.429401, 28.891859>,  <17.612963, 22.701460, 28.850851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.322615, 22.429401, 28.891859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002935, 0.152111, 0.988359,
		-0.687824, 0.717121, -0.112409,
		-0.725872, -0.680147, 0.102521,
		17.104853, 22.225357, 28.922615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.012619, 22.975565, 29.374889>,  <17.612963, 22.701460, 28.850851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.012619, 22.975565, 29.374889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.011797, 22.575775, 29.387821>,  <17.011303, 22.335901, 29.395580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.011797, 22.575775, 29.387821>,  <17.012619, 22.975565, 29.374889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.011797, 22.575775, 29.387821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112663, 0.032354, 0.993106,
		-0.993631, -0.001601, -0.112670,
		-0.002056, -0.999475, 0.032328,
		17.011181, 22.275932, 29.397520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.493370, 22.782965, 29.809071>,  <17.012619, 22.975565, 29.374889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.493370, 22.782965, 29.809071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.757311, 22.482920, 29.791517>,  <16.915676, 22.302893, 29.780985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.757311, 22.482920, 29.791517>,  <16.493370, 22.782965, 29.809071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.757311, 22.482920, 29.791517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007315, -0.051988, 0.998621,
		-0.751359, -0.659265, -0.028818,
		0.659854, -0.750112, -0.043884,
		16.955267, 22.257887, 29.778353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.172480, 22.224213, 30.167637>,  <16.493370, 22.782965, 29.809071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.172480, 22.224213, 30.167637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.571894, 22.204481, 30.176521>,  <16.811543, 22.192642, 30.181852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.571894, 22.204481, 30.176521>,  <16.172480, 22.224213, 30.167637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.571894, 22.204481, 30.176521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022876, -0.012922, 0.999655,
		-0.049022, -0.998699, -0.014032,
		0.998536, -0.049326, 0.022213,
		16.871454, 22.189682, 30.183186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.588094, 22.767094, 30.188400>,  <16.172480, 22.224213, 30.167637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.588094, 22.767094, 30.188400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.253778, 22.858398, 30.388142>,  <15.053189, 22.913181, 30.507986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.253778, 22.858398, 30.388142>,  <15.588094, 22.767094, 30.188400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.253778, 22.858398, 30.388142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530509, -0.101367, -0.841596,
		-0.141489, -0.968308, 0.205817,
		-0.835787, 0.228265, 0.499354,
		15.003042, 22.926876, 30.537949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.027643, 22.216959, 30.172518>,  <15.588094, 22.767094, 30.188400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.027643, 22.216959, 30.172518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.824797, 22.551254, 30.256777>,  <14.703089, 22.751831, 30.307333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.824797, 22.551254, 30.256777>,  <15.027643, 22.216959, 30.172518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.824797, 22.551254, 30.256777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638211, -0.199867, -0.743465,
		-0.579241, -0.511461, 0.634734,
		-0.507115, 0.835740, 0.210649,
		14.672662, 22.801975, 30.319971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.364014, 22.071596, 30.213001>,  <15.027643, 22.216959, 30.172518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.364014, 22.071596, 30.213001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.381358, 22.459860, 30.118399>,  <14.391765, 22.692818, 30.061636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.381358, 22.459860, 30.118399>,  <14.364014, 22.071596, 30.213001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.381358, 22.459860, 30.118399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635918, -0.155765, -0.755874,
		-0.770537, 0.183176, 0.610507,
		0.043362, 0.970661, -0.236508,
		14.394367, 22.751059, 30.047447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.754745, 22.220198, 29.838810>,  <14.364014, 22.071596, 30.213001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.754745, 22.220198, 29.838810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.948012, 22.563200, 29.768120>,  <14.063973, 22.769001, 29.725706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.948012, 22.563200, 29.768120>,  <13.754745, 22.220198, 29.838810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.948012, 22.563200, 29.768120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532539, 0.127619, -0.836729,
		-0.694946, 0.498396, 0.518316,
		0.483170, 0.857505, -0.176727,
		14.092963, 22.820452, 29.715101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.214783, 22.653131, 29.745129>,  <13.754745, 22.220198, 29.838810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.214783, 22.653131, 29.745129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.564919, 22.766222, 29.588236>,  <13.775001, 22.834076, 29.494101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.564919, 22.766222, 29.588236>,  <13.214783, 22.653131, 29.745129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.564919, 22.766222, 29.588236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399807, -0.032961, -0.916006,
		-0.271906, 0.958634, 0.084184,
		0.875340, 0.282725, -0.392231,
		13.827520, 22.851040, 29.470566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.979073, 22.824068, 29.032713>,  <13.214783, 22.653131, 29.745129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.979073, 22.824068, 29.032713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.377173, 22.849306, 29.003065>,  <13.616034, 22.864449, 28.985275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.377173, 22.849306, 29.003065>,  <12.979073, 22.824068, 29.032713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.377173, 22.849306, 29.003065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065002, -0.136012, -0.988573,
		-0.072455, 0.988696, -0.131265,
		0.995251, 0.063094, -0.074121,
		13.675749, 22.868235, 28.980829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.117829, 23.370682, 28.519072>,  <12.979073, 22.824068, 29.032713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.117829, 23.370682, 28.519072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.415484, 23.104498, 28.542475>,  <13.594078, 22.944788, 28.556517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.415484, 23.104498, 28.542475>,  <13.117829, 23.370682, 28.519072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.415484, 23.104498, 28.542475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073520, -0.168636, -0.982933,
		0.663968, 0.727136, -0.174413,
		0.744138, -0.665459, 0.058510,
		13.638726, 22.904860, 28.560028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.407764, 23.368544, 27.829145>,  <13.117829, 23.370682, 28.519072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.407764, 23.368544, 27.829145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.559601, 23.033480, 27.986238>,  <13.650702, 22.832441, 28.080494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.559601, 23.033480, 27.986238>,  <13.407764, 23.368544, 27.829145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.559601, 23.033480, 27.986238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063288, -0.400000, -0.914327,
		0.922987, 0.371926, -0.098823,
		0.379592, -0.837658, 0.392733,
		13.673478, 22.782183, 28.104059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.836864, 23.257685, 27.371998>,  <13.407764, 23.368544, 27.829145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.836864, 23.257685, 27.371998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.814095, 22.914730, 27.576605>,  <13.800433, 22.708958, 27.699369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.814095, 22.914730, 27.576605>,  <13.836864, 23.257685, 27.371998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.814095, 22.914730, 27.576605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256743, -0.507689, -0.822395,
		0.964802, 0.084517, 0.249026,
		-0.056922, -0.857385, 0.511519,
		13.797018, 22.657515, 27.730061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.423455, 22.854656, 27.125170>,  <13.836864, 23.257685, 27.371998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.423455, 22.854656, 27.125170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.155920, 22.606585, 27.289137>,  <13.995399, 22.457741, 27.387516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.155920, 22.606585, 27.289137>,  <14.423455, 22.854656, 27.125170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.155920, 22.606585, 27.289137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102193, -0.622868, -0.775623,
		0.736351, -0.476875, 0.479976,
		-0.668837, -0.620182, 0.409917,
		13.955269, 22.420530, 27.412111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.608139, 22.184504, 27.032822>,  <14.423455, 22.854656, 27.125170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.608139, 22.184504, 27.032822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.210310, 22.145048, 27.046076>,  <13.971613, 22.121376, 27.054028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.210310, 22.145048, 27.046076>,  <14.608139, 22.184504, 27.032822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.210310, 22.145048, 27.046076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033498, -0.604988, -0.795530,
		0.098515, -0.790102, 0.605008,
		-0.994572, -0.098638, 0.033134,
		13.911939, 22.115458, 27.056015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.520033, 21.532497, 26.930231>,  <14.608139, 22.184504, 27.032822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.520033, 21.532497, 26.930231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.155245, 21.673548, 26.846361>,  <13.936372, 21.758177, 26.796040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.155245, 21.673548, 26.846361>,  <14.520033, 21.532497, 26.930231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.155245, 21.673548, 26.846361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081242, -0.656196, -0.750204,
		-0.402130, -0.667130, 0.627080,
		-0.911971, 0.352625, -0.209677,
		13.881654, 21.779335, 26.783459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.130933, 20.932268, 26.703848>,  <14.520033, 21.532497, 26.930231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.130933, 20.932268, 26.703848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.970896, 21.267117, 26.554634>,  <13.874873, 21.468025, 26.465105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.970896, 21.267117, 26.554634>,  <14.130933, 20.932268, 26.703848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.970896, 21.267117, 26.554634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126967, -0.453738, -0.882044,
		-0.907637, -0.305536, 0.287824,
		-0.400092, 0.837120, -0.373037,
		13.850868, 21.518253, 26.442722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.541606, 20.710310, 26.384254>,  <14.130933, 20.932268, 26.703848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.541606, 20.710310, 26.384254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.632833, 21.069679, 26.234150>,  <13.687571, 21.285301, 26.144087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.632833, 21.069679, 26.234150>,  <13.541606, 20.710310, 26.384254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.632833, 21.069679, 26.234150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406740, -0.262263, -0.875089,
		-0.884617, 0.352215, 0.305610,
		0.228069, 0.898422, -0.375263,
		13.701254, 21.339207, 26.121571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.862192, 20.589346, 26.850002>,  <13.541606, 20.710310, 26.384254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.862192, 20.589346, 26.850002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.564924, 20.322151, 26.834557>,  <12.386563, 20.161835, 26.825289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.564924, 20.322151, 26.834557>,  <12.862192, 20.589346, 26.850002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.564924, 20.322151, 26.834557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053303, -0.116632, 0.991744,
		-0.666975, 0.734977, 0.122283,
		-0.743171, -0.667987, -0.038615,
		12.341973, 20.121756, 26.822971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.396696, 20.761255, 27.387136>,  <12.862192, 20.589346, 26.850002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.396696, 20.761255, 27.387136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.356290, 20.372431, 27.302385>,  <12.332047, 20.139135, 27.251535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.356290, 20.372431, 27.302385>,  <12.396696, 20.761255, 27.387136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.356290, 20.372431, 27.302385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053333, -0.207368, 0.976808,
		-0.993454, 0.109972, -0.030896,
		-0.101015, -0.972062, -0.211876,
		12.325986, 20.080812, 27.238823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.792585, 20.614567, 27.675890>,  <12.396696, 20.761255, 27.387136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.792585, 20.614567, 27.675890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.991168, 20.267345, 27.674574>,  <12.110317, 20.059011, 27.673784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.991168, 20.267345, 27.674574>,  <11.792585, 20.614567, 27.675890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.991168, 20.267345, 27.674574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154256, -0.091950, 0.983743,
		-0.854246, -0.487878, -0.179552,
		0.496456, -0.868056, -0.003290,
		12.140105, 20.006929, 27.673588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.548304, 20.322256, 28.197863>,  <11.792585, 20.614567, 27.675890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.548304, 20.322256, 28.197863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.877598, 20.104143, 28.134676>,  <12.075174, 19.973276, 28.096764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.877598, 20.104143, 28.134676>,  <11.548304, 20.322256, 28.197863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.877598, 20.104143, 28.134676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060431, -0.192502, 0.979434,
		-0.564477, -0.815849, -0.125522,
		0.823234, -0.545282, -0.157965,
		12.124568, 19.940559, 28.087286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.532338, 19.871880, 28.747013>,  <11.548304, 20.322256, 28.197863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.532338, 19.871880, 28.747013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.894842, 19.839020, 28.581148>,  <12.112345, 19.819304, 28.481628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.894842, 19.839020, 28.581148>,  <11.532338, 19.871880, 28.747013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.894842, 19.839020, 28.581148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410286, -0.065252, 0.909619,
		-0.101784, -0.994481, -0.025429,
		0.906259, -0.082152, -0.414664,
		12.166719, 19.814375, 28.456749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.967095, 19.344786, 29.136656>,  <11.532338, 19.871880, 28.747013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.967095, 19.344786, 29.136656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.226645, 19.589262, 28.955368>,  <12.382374, 19.735949, 28.846596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.226645, 19.589262, 28.955368>,  <11.967095, 19.344786, 29.136656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.226645, 19.589262, 28.955368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502096, 0.103614, 0.858582,
		0.571719, -0.784671, -0.239645,
		0.648874, 0.611192, -0.453218,
		12.421307, 19.772619, 28.819403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.634448, 19.090260, 29.429276>,  <11.967095, 19.344786, 29.136656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.634448, 19.090260, 29.429276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.684504, 19.457338, 29.278452>,  <12.714537, 19.677586, 29.187958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.684504, 19.457338, 29.278452>,  <12.634448, 19.090260, 29.429276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.684504, 19.457338, 29.278452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686300, 0.194383, 0.700862,
		0.716473, -0.346480, -0.605490,
		0.125138, 0.917697, -0.377059,
		12.722045, 19.732647, 29.165335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.231310, 18.525269, 29.204231>,  <12.634448, 19.090260, 29.429276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.231310, 18.525269, 29.204231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.242382, 18.157333, 29.360760>,  <13.249025, 17.936573, 29.454676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.242382, 18.157333, 29.360760>,  <13.231310, 18.525269, 29.204231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.242382, 18.157333, 29.360760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319521, -0.379075, -0.868452,
		0.947175, -0.100995, -0.304401,
		0.027682, -0.919838, 0.391320,
		13.250687, 17.881382, 29.478155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.704679, 18.005951, 28.847944>,  <13.231310, 18.525269, 29.204231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.704679, 18.005951, 28.847944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.420632, 17.792833, 29.032059>,  <13.250204, 17.664963, 29.142527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.420632, 17.792833, 29.032059>,  <13.704679, 18.005951, 28.847944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.420632, 17.792833, 29.032059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250763, -0.419487, -0.872438,
		0.657913, -0.734958, 0.164281,
		-0.710119, -0.532793, 0.460286,
		13.207597, 17.632996, 29.170145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.752030, 17.387255, 28.599697>,  <13.704679, 18.005951, 28.847944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.752030, 17.387255, 28.599697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.377120, 17.390314, 28.739100>,  <13.152174, 17.392151, 28.822741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.377120, 17.390314, 28.739100>,  <13.752030, 17.387255, 28.599697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.377120, 17.390314, 28.739100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329560, -0.345251, -0.878745,
		0.113599, -0.938479, 0.326117,
		-0.937276, 0.007650, 0.348505,
		13.095938, 17.392609, 28.843651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.526295, 16.730145, 28.442745>,  <13.752030, 17.387255, 28.599697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.526295, 16.730145, 28.442745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.216886, 16.982065, 28.471058>,  <13.031240, 17.133219, 28.488045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.216886, 16.982065, 28.471058>,  <13.526295, 16.730145, 28.442745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.216886, 16.982065, 28.471058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378875, -0.369999, -0.848266,
		-0.508052, -0.682970, 0.524820,
		-0.773522, 0.629804, 0.070782,
		12.984829, 17.171007, 28.492292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.889621, 16.299921, 28.359581>,  <13.526295, 16.730145, 28.442745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.889621, 16.299921, 28.359581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.751379, 16.670448, 28.299595>,  <12.668434, 16.892765, 28.263603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.751379, 16.670448, 28.299595>,  <12.889621, 16.299921, 28.359581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.751379, 16.670448, 28.299595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646183, -0.350814, -0.677773,
		-0.680445, -0.137335, 0.719815,
		-0.345603, 0.926320, -0.149967,
		12.647697, 16.948345, 28.254604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.199515, 16.195858, 28.213535>,  <12.889621, 16.299921, 28.359581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.199515, 16.195858, 28.213535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.259498, 16.556467, 28.051167>,  <12.295487, 16.772833, 27.953745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.259498, 16.556467, 28.051167>,  <12.199515, 16.195858, 28.213535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.259498, 16.556467, 28.051167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578643, -0.252877, -0.775387,
		-0.801677, 0.351157, 0.483739,
		0.149957, 0.901522, -0.405920,
		12.304484, 16.826923, 27.929390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.579612, 16.433645, 27.955544>,  <12.199515, 16.195858, 28.213535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.579612, 16.433645, 27.955544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.835985, 16.674723, 27.765400>,  <11.989809, 16.819368, 27.651314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.835985, 16.674723, 27.765400>,  <11.579612, 16.433645, 27.955544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.835985, 16.674723, 27.765400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569573, -0.041737, -0.820880,
		-0.514578, 0.796882, 0.316526,
		0.640933, 0.602692, -0.475360,
		12.028265, 16.855530, 27.622791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<18.046625, 20.388384, 26.330318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.433149, 20.491230, 26.334997>,  <18.665064, 20.552938, 26.337805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.433149, 20.491230, 26.334997>,  <18.046625, 20.388384, 26.330318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.433149, 20.491230, 26.334997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084600, 0.274364, 0.957897,
		0.243076, -0.926616, 0.286872,
		0.966311, 0.257111, 0.011700,
		18.723042, 20.568365, 26.338507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.333345, 20.278709, 27.038111>,  <18.046625, 20.388384, 26.330318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.333345, 20.278709, 27.038111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.546347, 20.574280, 26.872978>,  <18.674147, 20.751621, 26.773899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.546347, 20.574280, 26.872978>,  <18.333345, 20.278709, 27.038111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.546347, 20.574280, 26.872978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015369, 0.479213, 0.877564,
		0.846289, -0.473650, 0.243826,
		0.532503, 0.738925, -0.412832,
		18.706099, 20.795958, 26.749128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.423880, 20.077143, 27.834255>,  <18.333345, 20.278709, 27.038111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.423880, 20.077143, 27.834255> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.464296, 19.708401, 27.684601>,  <18.488546, 19.487156, 27.594809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.464296, 19.708401, 27.684601>,  <18.423880, 20.077143, 27.834255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.464296, 19.708401, 27.684601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811380, 0.293975, -0.505214,
		0.575720, -0.252518, 0.777677,
		0.101042, -0.921853, -0.374136,
		18.494608, 19.431845, 27.572361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.171474, 20.067797, 27.662228>,  <18.423880, 20.077143, 27.834255>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.171474, 20.067797, 27.662228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.006975, 19.721596, 27.547836>,  <18.908276, 19.513876, 27.479202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.006975, 19.721596, 27.547836>,  <19.171474, 20.067797, 27.662228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.006975, 19.721596, 27.547836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760482, -0.152814, -0.631122,
		0.502536, -0.477027, 0.721043,
		-0.411248, -0.865502, -0.285977,
		18.883600, 19.461945, 27.462044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.674797, 19.406071, 27.728502>,  <19.171474, 20.067797, 27.662228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.674797, 19.406071, 27.728502> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.411453, 19.372742, 27.429272>,  <19.253447, 19.352745, 27.249733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.411453, 19.372742, 27.429272>,  <19.674797, 19.406071, 27.728502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.411453, 19.372742, 27.429272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740277, -0.251524, -0.623479,
		-0.136209, -0.964258, 0.227275,
		-0.658360, -0.083323, -0.748077,
		19.213945, 19.347744, 27.204849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.692080, 18.696871, 27.491659>,  <19.674797, 19.406071, 27.728502>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.692080, 18.696871, 27.491659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.585243, 18.961317, 27.211205>,  <19.521141, 19.119984, 27.042933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.585243, 18.961317, 27.211205>,  <19.692080, 18.696871, 27.491659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.585243, 18.961317, 27.211205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717956, -0.348804, -0.602392,
		-0.642808, -0.664277, -0.381489,
		-0.267090, 0.661115, -0.701135,
		19.505116, 19.159651, 27.000864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.536659, 18.215063, 26.862518>,  <19.692080, 18.696871, 27.491659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.536659, 18.215063, 26.862518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.684370, 18.579288, 26.788210>,  <19.772997, 18.797823, 26.743626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.684370, 18.579288, 26.788210>,  <19.536659, 18.215063, 26.862518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.684370, 18.579288, 26.788210> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683126, -0.401498, -0.610031,
		-0.630058, 0.098366, -0.770293,
		0.369277, 0.910562, -0.185771,
		19.795153, 18.852457, 26.732479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.063887, 17.876415, 27.389725>,  <19.536659, 18.215063, 26.862518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.063887, 17.876415, 27.389725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.714933, 17.908941, 27.582529>,  <18.505562, 17.928457, 27.698212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.714933, 17.908941, 27.582529>,  <19.063887, 17.876415, 27.389725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.714933, 17.908941, 27.582529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485967, -0.037890, -0.873155,
		-0.052767, -0.995965, 0.072588,
		-0.872383, 0.081349, 0.482008,
		18.453218, 17.933336, 27.727133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.694330, 17.369537, 27.102623>,  <19.063887, 17.876415, 27.389725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.694330, 17.369537, 27.102623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.429111, 17.621365, 27.264616>,  <18.269979, 17.772461, 27.361813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.429111, 17.621365, 27.264616>,  <18.694330, 17.369537, 27.102623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.429111, 17.621365, 27.264616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618737, -0.156404, -0.769872,
		-0.421346, -0.761039, 0.493241,
		-0.663048, 0.629569, 0.404982,
		18.230198, 17.810234, 27.386110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.069292, 17.083857, 27.018955>,  <18.694330, 17.369537, 27.102623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.069292, 17.083857, 27.018955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.979166, 17.472227, 27.051291>,  <17.925091, 17.705250, 27.070692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.979166, 17.472227, 27.051291>,  <18.069292, 17.083857, 27.018955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.979166, 17.472227, 27.051291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627260, -0.081074, -0.774579,
		-0.745505, -0.225232, 0.627290,
		-0.225317, 0.970926, 0.080838,
		17.911572, 17.763504, 27.075542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.401375, 17.064865, 26.776371>,  <18.069292, 17.083857, 27.018955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.401375, 17.064865, 26.776371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.491941, 17.454403, 26.784004>,  <17.546282, 17.688126, 26.788584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.491941, 17.454403, 26.784004>,  <17.401375, 17.064865, 26.776371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.491941, 17.454403, 26.784004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559873, 0.146154, -0.815586,
		-0.797043, 0.173978, 0.578321,
		0.226418, 0.973843, 0.019085,
		17.559866, 17.746555, 26.789730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.778276, 17.459539, 26.723118>,  <17.401375, 17.064865, 26.776371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.778276, 17.459539, 26.723118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.064659, 17.706215, 26.592213>,  <17.236488, 17.854219, 26.513670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.064659, 17.706215, 26.592213>,  <16.778276, 17.459539, 26.723118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.064659, 17.706215, 26.592213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584003, 0.272162, -0.764767,
		-0.382555, 0.738663, 0.555004,
		0.715956, 0.616689, -0.327264,
		17.279446, 17.891222, 26.494034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.402668, 16.914782, 26.738752>,  <16.778276, 17.459539, 26.723118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.402668, 16.914782, 26.738752> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.320387, 16.580029, 26.941656>,  <16.271019, 16.379177, 27.063398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.320387, 16.580029, 26.941656>,  <16.402668, 16.914782, 26.738752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.320387, 16.580029, 26.941656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324419, 0.430717, 0.842161,
		-0.923276, 0.337800, 0.182901,
		-0.205703, -0.836883, 0.507260,
		16.258677, 16.328964, 27.093834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.099016, 17.225018, 27.395697>,  <16.402668, 16.914782, 26.738752>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.099016, 17.225018, 27.395697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.200567, 16.846163, 27.474155>,  <16.261497, 16.618849, 27.521231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.200567, 16.846163, 27.474155>,  <16.099016, 17.225018, 27.395697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.200567, 16.846163, 27.474155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275951, 0.265291, 0.923835,
		-0.927036, -0.180415, 0.328716,
		0.253879, -0.947138, 0.196149,
		16.276731, 16.562021, 27.533001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.781009, 17.049301, 27.902233>,  <16.099016, 17.225018, 27.395697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.781009, 17.049301, 27.902233> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.100538, 16.808813, 27.910385>,  <16.292255, 16.664520, 27.915276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.100538, 16.808813, 27.910385>,  <15.781009, 17.049301, 27.902233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.100538, 16.808813, 27.910385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105373, 0.173198, 0.979234,
		-0.592265, -0.780088, 0.201707,
		0.798823, -0.601220, 0.020379,
		16.340185, 16.628447, 27.916498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.717065, 16.638702, 28.540558>,  <15.781009, 17.049301, 27.902233>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.717065, 16.638702, 28.540558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.100401, 16.596342, 28.434448>,  <16.330402, 16.570927, 28.370783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.100401, 16.596342, 28.434448>,  <15.717065, 16.638702, 28.540558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.100401, 16.596342, 28.434448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268680, 0.019066, 0.963041,
		-0.096930, -0.994194, 0.046726,
		0.958340, -0.105902, -0.265272,
		16.387903, 16.564571, 28.354866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.864247, 16.028576, 28.751997>,  <15.717065, 16.638702, 28.540558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.864247, 16.028576, 28.751997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.208845, 16.225025, 28.700424>,  <16.415604, 16.342896, 28.669479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.208845, 16.225025, 28.700424>,  <15.864247, 16.028576, 28.751997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.208845, 16.225025, 28.700424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176322, -0.051228, 0.982998,
		0.476169, -0.869582, -0.130729,
		0.861495, 0.491124, -0.128934,
		16.467293, 16.372362, 28.661743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.263144, 15.771368, 29.253941>,  <15.864247, 16.028576, 28.751997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.263144, 15.771368, 29.253941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.420341, 16.121361, 29.140833>,  <16.514660, 16.331356, 29.072968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.420341, 16.121361, 29.140833>,  <16.263144, 15.771368, 29.253941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.420341, 16.121361, 29.140833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264476, 0.186964, 0.946096,
		0.880685, -0.446599, -0.157935,
		0.392997, 0.874983, -0.282771,
		16.538240, 16.383856, 29.056002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.882944, 15.685220, 29.440384>,  <16.263144, 15.771368, 29.253941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.882944, 15.685220, 29.440384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.786045, 16.073303, 29.441698>,  <16.727905, 16.306152, 29.442488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.786045, 16.073303, 29.441698>,  <16.882944, 15.685220, 29.440384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.786045, 16.073303, 29.441698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026871, 0.003322, 0.999634,
		0.969842, 0.242249, -0.026875,
		-0.242250, 0.970209, 0.003288,
		16.713369, 16.364367, 29.442684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.355015, 16.018053, 29.855978>,  <16.882944, 15.685220, 29.440384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.355015, 16.018053, 29.855978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.068327, 16.296291, 29.836145>,  <16.896315, 16.463234, 29.824245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.068327, 16.296291, 29.836145>,  <17.355015, 16.018053, 29.855978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.068327, 16.296291, 29.836145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143275, 0.216463, 0.965721,
		0.682483, 0.685048, -0.254804,
		-0.716721, 0.695595, -0.049582,
		16.853312, 16.504971, 29.821270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.649900, 16.554762, 30.159136>,  <17.355015, 16.018053, 29.855978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.649900, 16.554762, 30.159136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.261391, 16.646847, 30.135042>,  <17.028284, 16.702099, 30.120586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.261391, 16.646847, 30.135042>,  <17.649900, 16.554762, 30.159136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.261391, 16.646847, 30.135042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011852, 0.206002, 0.978480,
		0.237668, 0.951086, -0.197356,
		-0.971274, 0.230214, -0.060233,
		16.970009, 16.715912, 30.116972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.516277, 17.154400, 30.492016>,  <17.649900, 16.554762, 30.159136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.516277, 17.154400, 30.492016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.143232, 17.011431, 30.511932>,  <16.919405, 16.925650, 30.523882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.143232, 17.011431, 30.511932>,  <17.516277, 17.154400, 30.492016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.143232, 17.011431, 30.511932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036020, 0.229480, 0.972647,
		-0.359073, 0.905311, -0.226891,
		-0.932614, -0.357423, 0.049790,
		16.863447, 16.904203, 30.526869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.219936, 17.670504, 30.854187>,  <17.516277, 17.154400, 30.492016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.219936, 17.670504, 30.854187> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.942919, 17.382587, 30.873314>,  <16.776709, 17.209839, 30.884790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.942919, 17.382587, 30.873314>,  <17.219936, 17.670504, 30.854187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.942919, 17.382587, 30.873314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290408, 0.338864, 0.894893,
		-0.660338, 0.605867, -0.443711,
		-0.692544, -0.719789, 0.047816,
		16.735155, 17.166651, 30.887659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.542933, 17.952969, 30.980576>,  <17.219936, 17.670504, 30.854187>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.542933, 17.952969, 30.980576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.484486, 17.575497, 31.099316>,  <16.449417, 17.349014, 31.170559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.484486, 17.575497, 31.099316>,  <16.542933, 17.952969, 30.980576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.484486, 17.575497, 31.099316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585639, 0.324351, 0.742847,
		-0.797293, -0.065305, -0.600049,
		-0.146115, -0.943679, 0.296848,
		16.440651, 17.292393, 31.188370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.875662, 17.846888, 31.142874>,  <16.542933, 17.952969, 30.980576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.875662, 17.846888, 31.142874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.040075, 17.544600, 31.346811>,  <16.138723, 17.363226, 31.469173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.040075, 17.544600, 31.346811>,  <15.875662, 17.846888, 31.142874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.040075, 17.544600, 31.346811> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606304, 0.191025, 0.771949,
		-0.680770, -0.626416, -0.379678,
		0.411033, -0.755720, 0.509842,
		16.163385, 17.317884, 31.499763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.334550, 17.493052, 31.443851>,  <15.875662, 17.846888, 31.142874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.334550, 17.493052, 31.443851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.656217, 17.418209, 31.669527>,  <15.849216, 17.373304, 31.804932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.656217, 17.418209, 31.669527>,  <15.334550, 17.493052, 31.443851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.656217, 17.418209, 31.669527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503340, 0.290520, 0.813786,
		-0.316172, -0.938397, 0.139448,
		0.804166, -0.187107, 0.564188,
		15.897467, 17.362078, 31.838783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.009739, 17.116573, 31.946560>,  <15.334550, 17.493052, 31.443851>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.009739, 17.116573, 31.946560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.731216, 17.389153, 32.036701>,  <14.564103, 17.552700, 32.090786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.731216, 17.389153, 32.036701>,  <15.009739, 17.116573, 31.946560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.731216, 17.389153, 32.036701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447540, -0.166751, -0.878580,
		-0.561129, -0.712616, 0.421085,
		-0.696306, 0.681449, 0.225355,
		14.522325, 17.593588, 32.104309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.461507, 16.811150, 31.673721>,  <15.009739, 17.116573, 31.946560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.461507, 16.811150, 31.673721> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.379187, 17.202515, 31.681293>,  <14.329795, 17.437334, 31.685837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.379187, 17.202515, 31.681293>,  <14.461507, 16.811150, 31.673721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.379187, 17.202515, 31.681293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384655, -0.063090, -0.920902,
		-0.899826, -0.196804, 0.389335,
		-0.205800, 0.978411, 0.018932,
		14.317447, 17.496038, 31.686974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.684585, 16.918287, 31.435699>,  <14.461507, 16.811150, 31.673721>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.684585, 16.918287, 31.435699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.869532, 17.272427, 31.416222>,  <13.980500, 17.484911, 31.404535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.869532, 17.272427, 31.416222>,  <13.684585, 16.918287, 31.435699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.869532, 17.272427, 31.416222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423696, 0.172365, -0.889253,
		-0.778908, 0.431794, 0.454816,
		0.462368, 0.885350, -0.048693,
		14.008243, 17.538033, 31.401613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.144993, 17.333036, 31.327324>,  <13.684585, 16.918287, 31.435699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.144993, 17.333036, 31.327324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.444107, 17.564291, 31.196741>,  <13.623576, 17.703043, 31.118391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.444107, 17.564291, 31.196741>,  <13.144993, 17.333036, 31.327324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.444107, 17.564291, 31.196741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524786, 0.213471, -0.824033,
		-0.406713, 0.787522, 0.463028,
		0.747786, 0.578135, -0.326459,
		13.668443, 17.737732, 31.098803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.866695, 17.960669, 31.147268>,  <13.144993, 17.333036, 31.327324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.866695, 17.960669, 31.147268> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.211320, 17.918453, 30.948643>,  <13.418095, 17.893124, 30.829468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.211320, 17.918453, 30.948643>,  <12.866695, 17.960669, 31.147268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.211320, 17.918453, 30.948643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483591, 0.126970, -0.866036,
		0.154449, 0.986276, 0.058356,
		0.861560, -0.105538, -0.496564,
		13.469788, 17.886791, 30.799673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.805428, 18.408197, 30.506762>,  <12.866695, 17.960669, 31.147268>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.805428, 18.408197, 30.506762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.124435, 18.182858, 30.420418>,  <13.315841, 18.047653, 30.368610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.124435, 18.182858, 30.420418>,  <12.805428, 18.408197, 30.506762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.124435, 18.182858, 30.420418> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284429, -0.035566, -0.958037,
		0.532035, 0.825451, -0.188598,
		0.797521, -0.563352, -0.215860,
		13.363691, 18.013851, 30.355659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.208432, 18.695101, 29.896973>,  <12.805428, 18.408197, 30.506762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.208432, 18.695101, 29.896973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.269437, 18.300663, 29.923382>,  <13.306040, 18.064001, 29.939228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.269437, 18.300663, 29.923382>,  <13.208432, 18.695101, 29.896973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.269437, 18.300663, 29.923382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194879, -0.095498, -0.976167,
		0.968898, 0.136010, -0.206734,
		0.152512, -0.986094, 0.066022,
		13.315190, 18.004835, 29.943188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.518041, 19.297308, 29.425571>,  <13.208432, 18.695101, 29.896973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.518041, 19.297308, 29.425571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.302499, 19.632240, 29.388670>,  <13.173174, 19.833200, 29.366529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.302499, 19.632240, 29.388670>,  <13.518041, 19.297308, 29.425571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.302499, 19.632240, 29.388670> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580966, 0.448690, 0.679085,
		0.610012, 0.312333, -0.728240,
		-0.538854, 0.837332, -0.092252,
		13.140842, 19.883440, 29.360994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.979685, 19.886303, 29.495197>,  <13.518041, 19.297308, 29.425571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.979685, 19.886303, 29.495197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.617069, 20.036507, 29.572327>,  <13.399500, 20.126629, 29.618605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.617069, 20.036507, 29.572327>,  <13.979685, 19.886303, 29.495197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.617069, 20.036507, 29.572327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396218, 0.599392, 0.695514,
		0.145594, 0.706911, -0.692155,
		-0.906539, 0.375507, 0.192824,
		13.345107, 20.149158, 29.630175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.894534, 20.669353, 29.444368>,  <13.979685, 19.886303, 29.495197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.894534, 20.669353, 29.444368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.607256, 20.550219, 29.695919>,  <13.434889, 20.478737, 29.846849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.607256, 20.550219, 29.695919>,  <13.894534, 20.669353, 29.444368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.607256, 20.550219, 29.695919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378744, 0.590844, 0.712360,
		-0.583738, 0.749797, -0.311536,
		-0.718195, -0.297839, 0.628879,
		13.391798, 20.460867, 29.884583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.860386, 21.165524, 29.807583>,  <13.894534, 20.669353, 29.444368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.860386, 21.165524, 29.807583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.631883, 20.912584, 30.016886>,  <13.494781, 20.760820, 30.142467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.631883, 20.912584, 30.016886>,  <13.860386, 21.165524, 29.807583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.631883, 20.912584, 30.016886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253748, 0.470224, 0.845282,
		-0.780561, 0.615650, -0.108163,
		-0.571259, -0.632348, 0.523258,
		13.460505, 20.722879, 30.173862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.442598, 21.575045, 30.201368>,  <13.860386, 21.165524, 29.807583>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.442598, 21.575045, 30.201368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.404598, 21.227583, 30.395861>,  <13.381798, 21.019106, 30.512556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.404598, 21.227583, 30.395861>,  <13.442598, 21.575045, 30.201368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.404598, 21.227583, 30.395861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454875, 0.396585, 0.797376,
		-0.885473, 0.296925, 0.357453,
		-0.095000, -0.868652, 0.486229,
		13.376098, 20.966988, 30.541729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.065600, 21.698990, 30.827875>,  <13.442598, 21.575045, 30.201368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.065600, 21.698990, 30.827875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.299143, 21.378576, 30.880720>,  <13.439268, 21.186327, 30.912426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.299143, 21.378576, 30.880720>,  <13.065600, 21.698990, 30.827875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.299143, 21.378576, 30.880720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357304, 0.399655, 0.844162,
		-0.729003, -0.445666, 0.519555,
		0.583857, -0.801036, 0.132112,
		13.474300, 21.138266, 30.920353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.140512, 21.549164, 31.584408>,  <13.065600, 21.698990, 30.827875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.140512, 21.549164, 31.584408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.429251, 21.296701, 31.470861>,  <13.602494, 21.145224, 31.402733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.429251, 21.296701, 31.470861>,  <13.140512, 21.549164, 31.584408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.429251, 21.296701, 31.470861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534009, 0.247082, 0.808570,
		-0.440194, -0.735252, 0.515397,
		0.721848, -0.631154, -0.283867,
		13.645805, 21.107355, 31.385702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.398928, 21.260324, 32.182121>,  <13.140512, 21.549164, 31.584408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.398928, 21.260324, 32.182121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.690393, 21.188658, 31.917715>,  <13.865273, 21.145657, 31.759069>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.690393, 21.188658, 31.917715>,  <13.398928, 21.260324, 32.182121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.690393, 21.188658, 31.917715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680790, 0.294700, 0.670579,
		0.074655, -0.938643, 0.336714,
		0.728664, -0.179169, -0.661020,
		13.908993, 21.134907, 31.719410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.017879, 20.835121, 32.519600>,  <13.398928, 21.260324, 32.182121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.017879, 20.835121, 32.519600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.179917, 21.041704, 32.217827>,  <14.277140, 21.165653, 32.036762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.179917, 21.041704, 32.217827>,  <14.017879, 20.835121, 32.519600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.179917, 21.041704, 32.217827> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751964, 0.281160, 0.596237,
		0.520047, -0.808840, -0.274460,
		0.405093, 0.516456, -0.754435,
		14.301445, 21.196640, 31.991497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<10.868942, 17.798456, 16.726135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.020020, 18.168827, 16.726320>,  <11.110667, 18.391050, 16.726431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.020020, 18.168827, 16.726320>,  <10.868942, 17.798456, 16.726135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.020020, 18.168827, 16.726320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095157, 0.038320, 0.994725,
		0.921027, -0.375748, 0.102582,
		0.377696, 0.925929, 0.000461,
		11.133329, 18.446606, 16.726460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.418489, 17.720407, 17.235132>,  <10.868942, 17.798456, 16.726135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.418489, 17.720407, 17.235132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.304580, 18.098827, 17.173298>,  <11.236235, 18.325880, 17.136198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.304580, 18.098827, 17.173298>,  <11.418489, 17.720407, 17.235132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.304580, 18.098827, 17.173298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207749, 0.096520, 0.973408,
		0.935813, 0.309313, 0.169055,
		-0.284771, 0.946049, -0.154585,
		11.219149, 18.382643, 17.126923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.831183, 18.123173, 17.701273>,  <11.418489, 17.720407, 17.235132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.831183, 18.123173, 17.701273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.509821, 18.336912, 17.596191>,  <11.317003, 18.465157, 17.533142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.509821, 18.336912, 17.596191>,  <11.831183, 18.123173, 17.701273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.509821, 18.336912, 17.596191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237907, 0.116377, 0.964291,
		0.545839, 0.837215, 0.033627,
		-0.803405, 0.534348, -0.262702,
		11.268800, 18.497217, 17.517382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.869278, 18.717155, 18.081514>,  <11.831183, 18.123173, 17.701273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.869278, 18.717155, 18.081514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.482083, 18.710148, 17.981359>,  <11.249766, 18.705944, 17.921267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.482083, 18.710148, 17.981359>,  <11.869278, 18.717155, 18.081514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.482083, 18.710148, 17.981359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250964, 0.084040, 0.964342,
		0.004148, 0.996308, -0.085746,
		-0.967988, -0.017519, -0.250386,
		11.191687, 18.704891, 17.906244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.526118, 19.269508, 18.475748>,  <11.869278, 18.717155, 18.081514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.526118, 19.269508, 18.475748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.233749, 19.014860, 18.377388>,  <11.058328, 18.862072, 18.318371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.233749, 19.014860, 18.377388>,  <11.526118, 19.269508, 18.475748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.233749, 19.014860, 18.377388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293732, -0.031777, 0.955360,
		-0.616014, 0.770524, -0.163769,
		-0.730923, -0.636619, -0.245902,
		11.014472, 18.823875, 18.303617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.922155, 19.542746, 18.879803>,  <11.526118, 19.269508, 18.475748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.922155, 19.542746, 18.879803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.790830, 19.176405, 18.787344>,  <10.712034, 18.956600, 18.731869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.790830, 19.176405, 18.787344>,  <10.922155, 19.542746, 18.879803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.790830, 19.176405, 18.787344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416292, -0.079366, 0.905761,
		-0.847886, 0.393597, -0.355204,
		-0.328313, -0.915851, -0.231145,
		10.692336, 18.901649, 18.718000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.165644, 19.494640, 18.965939>,  <10.922155, 19.542746, 18.879803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.165644, 19.494640, 18.965939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.291200, 19.115274, 18.983763>,  <10.366533, 18.887655, 18.994457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.291200, 19.115274, 18.983763>,  <10.165644, 19.494640, 18.965939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.291200, 19.115274, 18.983763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445590, -0.105708, 0.888974,
		-0.838405, -0.298895, -0.455784,
		0.313890, -0.948413, 0.044559,
		10.385366, 18.830751, 18.997129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.575336, 19.210423, 19.255892>,  <10.165644, 19.494640, 18.965939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.575336, 19.210423, 19.255892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.864280, 18.943430, 19.328192>,  <10.037645, 18.783236, 19.371572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.864280, 18.943430, 19.328192>,  <9.575336, 19.210423, 19.255892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.864280, 18.943430, 19.328192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213904, 0.032887, 0.976301,
		-0.657606, -0.743901, -0.119020,
		0.722357, -0.667480, 0.180750,
		10.080987, 18.743187, 19.382418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.314251, 18.724325, 19.725504>,  <9.575336, 19.210423, 19.255892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.314251, 18.724325, 19.725504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.712814, 18.700508, 19.749582>,  <9.951953, 18.686218, 19.764030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.712814, 18.700508, 19.749582>,  <9.314251, 18.724325, 19.725504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.712814, 18.700508, 19.749582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065825, -0.097573, 0.993049,
		-0.053252, -0.993446, -0.101142,
		0.996409, -0.059540, 0.060198,
		10.011737, 18.682644, 19.767641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.438685, 18.169218, 20.232130>,  <9.314251, 18.724325, 19.725504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.438685, 18.169218, 20.232130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.772329, 18.389845, 20.229786>,  <9.972516, 18.522221, 20.228380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.772329, 18.389845, 20.229786>,  <9.438685, 18.169218, 20.232130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.772329, 18.389845, 20.229786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066965, -0.090715, 0.993623,
		0.547519, -0.829183, -0.112601,
		0.834110, 0.551567, -0.005858,
		10.022562, 18.555315, 20.228029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.879786, 17.782017, 20.636400>,  <9.438685, 18.169218, 20.232130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.879786, 17.782017, 20.636400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.084712, 18.124952, 20.616388>,  <10.207667, 18.330713, 20.604382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.084712, 18.124952, 20.616388>,  <9.879786, 17.782017, 20.636400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.084712, 18.124952, 20.616388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162804, -0.039759, 0.985857,
		0.843225, -0.513214, -0.159948,
		0.512315, 0.857339, -0.050028,
		10.238406, 18.382154, 20.601379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.553643, 17.711136, 21.035078>,  <9.879786, 17.782017, 20.636400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.553643, 17.711136, 21.035078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.483204, 18.104746, 21.024593>,  <10.440940, 18.340912, 21.018303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.483204, 18.104746, 21.024593>,  <10.553643, 17.711136, 21.035078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.483204, 18.104746, 21.024593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088643, 0.042373, 0.995162,
		0.980373, 0.172923, -0.094689,
		-0.176098, 0.984023, -0.026213,
		10.430374, 18.399954, 21.016729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.959614, 17.213301, 21.423841>,  <10.553643, 17.711136, 21.035078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.959614, 17.213301, 21.423841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.816032, 16.915068, 21.648434>,  <10.729883, 16.736128, 21.783190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.816032, 16.915068, 21.648434>,  <10.959614, 17.213301, 21.423841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.816032, 16.915068, 21.648434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293472, -0.480905, -0.826199,
		0.886017, -0.461346, -0.046185,
		-0.358953, -0.745580, 0.561482,
		10.708346, 16.691393, 21.816879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.157258, 16.659424, 21.130276>,  <10.959614, 17.213301, 21.423841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.157258, 16.659424, 21.130276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.845329, 16.531149, 21.345325>,  <10.658173, 16.454184, 21.474356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.845329, 16.531149, 21.345325>,  <11.157258, 16.659424, 21.130276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.845329, 16.531149, 21.345325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312841, -0.544248, -0.778411,
		0.542226, -0.775213, 0.324093,
		-0.779821, -0.320686, 0.537624,
		10.611382, 16.434944, 21.506613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.240069, 15.895500, 21.189819>,  <11.157258, 16.659424, 21.130276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.240069, 15.895500, 21.189819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.854403, 15.984642, 21.247404>,  <10.623004, 16.038126, 21.281956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.854403, 15.984642, 21.247404>,  <11.240069, 15.895500, 21.189819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.854403, 15.984642, 21.247404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253949, -0.618125, -0.743929,
		-0.076801, -0.753828, 0.652568,
		-0.964164, 0.222854, 0.143961,
		10.565154, 16.051498, 21.290592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.832306, 15.336185, 20.953074>,  <11.240069, 15.895500, 21.189819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.832306, 15.336185, 20.953074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.521635, 15.586840, 20.978678>,  <10.335233, 15.737233, 20.994041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.521635, 15.586840, 20.978678>,  <10.832306, 15.336185, 20.953074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.521635, 15.586840, 20.978678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418139, -0.436902, -0.796415,
		-0.471101, -0.645320, 0.601354,
		-0.776675, 0.626641, 0.064009,
		10.288631, 15.774831, 20.997881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.234932, 14.884471, 20.903660>,  <10.832306, 15.336185, 20.953074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.234932, 14.884471, 20.903660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.149343, 15.254266, 20.777462>,  <10.097989, 15.476143, 20.701742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.149343, 15.254266, 20.777462>,  <10.234932, 14.884471, 20.903660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.149343, 15.254266, 20.777462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359946, -0.374870, -0.854349,
		-0.908105, -0.069247, 0.412978,
		-0.213974, 0.924487, -0.315496,
		10.085151, 15.531612, 20.682814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.474348, 14.880944, 20.798777>,  <10.234932, 14.884471, 20.903660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.474348, 14.880944, 20.798777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.615051, 15.193828, 20.593090>,  <9.699473, 15.381557, 20.469679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.615051, 15.193828, 20.593090>,  <9.474348, 14.880944, 20.798777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.615051, 15.193828, 20.593090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462766, -0.332193, -0.821885,
		-0.813704, 0.527066, 0.245128,
		0.351758, 0.782208, -0.514215,
		9.720578, 15.428490, 20.438826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.881828, 15.209260, 20.622906>,  <9.474348, 14.880944, 20.798777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.881828, 15.209260, 20.622906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.176644, 15.293250, 20.365944>,  <9.353534, 15.343644, 20.211767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.176644, 15.293250, 20.365944>,  <8.881828, 15.209260, 20.622906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.176644, 15.293250, 20.365944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561394, -0.339036, -0.754912,
		-0.376312, 0.917041, -0.132004,
		0.737039, 0.209976, -0.642404,
		9.397756, 15.356243, 20.173223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.540202, 15.489327, 19.957363>,  <8.881828, 15.209260, 20.622906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.540202, 15.489327, 19.957363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.917219, 15.409909, 19.849888>,  <9.143430, 15.362258, 19.785402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.917219, 15.409909, 19.849888>,  <8.540202, 15.489327, 19.957363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.917219, 15.409909, 19.849888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323240, -0.338706, -0.883626,
		0.084434, 0.919705, -0.383423,
		0.942543, -0.198545, -0.268687,
		9.199982, 15.350346, 19.769281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.533844, 15.721195, 19.370615>,  <8.540202, 15.489327, 19.957363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.533844, 15.721195, 19.370615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.851014, 15.478239, 19.351242>,  <9.041316, 15.332465, 19.339619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.851014, 15.478239, 19.351242>,  <8.533844, 15.721195, 19.370615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.851014, 15.478239, 19.351242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245883, -0.246234, -0.937502,
		0.557504, 0.755279, -0.344592,
		0.792926, -0.607390, -0.048434,
		9.088892, 15.296022, 19.336712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.872575, 15.930984, 18.660604>,  <8.533844, 15.721195, 19.370615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.872575, 15.930984, 18.660604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.999339, 15.567060, 18.767796>,  <9.075397, 15.348705, 18.832109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.999339, 15.567060, 18.767796>,  <8.872575, 15.930984, 18.660604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.999339, 15.567060, 18.767796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029797, -0.272849, -0.961595,
		0.947987, 0.312726, -0.059359,
		0.316912, -0.909811, 0.267975,
		9.094413, 15.294116, 18.848188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.460265, 15.741774, 18.192270>,  <8.872575, 15.930984, 18.660604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.460265, 15.741774, 18.192270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.316070, 15.406150, 18.355257>,  <9.229552, 15.204776, 18.453049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.316070, 15.406150, 18.355257>,  <9.460265, 15.741774, 18.192270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.316070, 15.406150, 18.355257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057418, -0.455971, -0.888141,
		0.930995, -0.296768, 0.212549,
		-0.360488, -0.839059, 0.407467,
		9.207923, 15.154432, 18.477497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.838725, 15.282335, 17.849962>,  <9.460265, 15.741774, 18.192270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.838725, 15.282335, 17.849962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.526143, 15.082149, 17.999018>,  <9.338593, 14.962036, 18.088451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.526143, 15.082149, 17.999018>,  <9.838725, 15.282335, 17.849962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.526143, 15.082149, 17.999018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083595, -0.675805, -0.732324,
		0.618336, -0.541128, 0.569948,
		-0.781455, -0.500468, 0.372639,
		9.291706, 14.932008, 18.110809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.013800, 14.613082, 17.925425>,  <9.838725, 15.282335, 17.849962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.013800, 14.613082, 17.925425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.615040, 14.581987, 17.920530>,  <9.375784, 14.563331, 17.917593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.615040, 14.581987, 17.920530>,  <10.013800, 14.613082, 17.925425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.615040, 14.581987, 17.920530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064769, -0.722208, -0.688637,
		0.044694, -0.687294, 0.725003,
		-0.996899, -0.077736, -0.012237,
		9.315970, 14.558666, 17.916859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.840400, 13.947630, 18.104988>,  <10.013800, 14.613082, 17.925425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.840400, 13.947630, 18.104988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.504366, 14.080975, 17.933813>,  <9.302746, 14.160981, 17.831108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.504366, 14.080975, 17.933813>,  <9.840400, 13.947630, 18.104988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.504366, 14.080975, 17.933813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050150, -0.737779, -0.673177,
		-0.540133, -0.586986, 0.603079,
		-0.840084, 0.333360, -0.427936,
		9.252340, 14.180983, 17.805431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.348165, 13.342294, 18.014713>,  <9.840400, 13.947630, 18.104988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.348165, 13.342294, 18.014713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.413932, 13.014298, 17.795410>,  <10.453392, 12.817501, 17.663828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.413932, 13.014298, 17.795410>,  <10.348165, 13.342294, 18.014713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.413932, 13.014298, 17.795410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433448, -0.439219, 0.786899,
		-0.886053, -0.367021, 0.283207,
		0.164418, -0.819989, -0.548256,
		10.463258, 12.768302, 17.630934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.929474, 13.376725, 18.354744>,  <10.348165, 13.342294, 18.014713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.929474, 13.376725, 18.354744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.263937, 13.496945, 18.171219>,  <11.464615, 13.569077, 18.061104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.263937, 13.496945, 18.171219>,  <10.929474, 13.376725, 18.354744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.263937, 13.496945, 18.171219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473072, 0.028134, 0.880574,
		0.277566, -0.953351, -0.118658,
		0.836158, 0.300551, -0.458813,
		11.514785, 13.587111, 18.033575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.506599, 12.907671, 18.537386>,  <10.929474, 13.376725, 18.354744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.506599, 12.907671, 18.537386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.631787, 13.278486, 18.454779>,  <11.706900, 13.500976, 18.405214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.631787, 13.278486, 18.454779>,  <11.506599, 12.907671, 18.537386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.631787, 13.278486, 18.454779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441990, 0.050301, 0.895609,
		0.840652, -0.371576, -0.394000,
		0.312969, 0.927039, -0.206518,
		11.725677, 13.556598, 18.392822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.123345, 12.901710, 18.799208>,  <11.506599, 12.907671, 18.537386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.123345, 12.901710, 18.799208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.074569, 13.293648, 18.735918>,  <12.045303, 13.528811, 18.697945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.074569, 13.293648, 18.735918>,  <12.123345, 12.901710, 18.799208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.074569, 13.293648, 18.735918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562529, 0.199565, 0.802331,
		0.817735, 0.008832, -0.575527,
		-0.121941, 0.979845, -0.158224,
		12.037987, 13.587601, 18.688452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.779399, 13.267884, 18.767952>,  <12.123345, 12.901710, 18.799208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.779399, 13.267884, 18.767952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.505415, 13.535123, 18.884212>,  <12.341024, 13.695466, 18.953968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.505415, 13.535123, 18.884212>,  <12.779399, 13.267884, 18.767952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.505415, 13.535123, 18.884212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602048, 0.294344, 0.742226,
		0.410328, 0.683380, -0.603840,
		-0.684959, 0.668097, 0.290650,
		12.299928, 13.735552, 18.971407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.191347, 13.820765, 18.939089>,  <12.779399, 13.267884, 18.767952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.191347, 13.820765, 18.939089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.846067, 13.897801, 19.125763>,  <12.638899, 13.944023, 19.237766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.846067, 13.897801, 19.125763>,  <13.191347, 13.820765, 18.939089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.846067, 13.897801, 19.125763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501688, 0.223737, 0.835614,
		0.056519, 0.955432, -0.289751,
		-0.863200, 0.192592, 0.466683,
		12.587108, 13.955579, 19.265768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.308127, 14.437224, 19.189186>,  <13.191347, 13.820765, 18.939089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.308127, 14.437224, 19.189186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.009932, 14.279694, 19.404274>,  <12.831014, 14.185175, 19.533327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.009932, 14.279694, 19.404274>,  <13.308127, 14.437224, 19.189186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.009932, 14.279694, 19.404274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431794, 0.329209, 0.839747,
		-0.507739, 0.858208, -0.075370,
		-0.745490, -0.393828, 0.537722,
		12.786284, 14.161545, 19.565590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.185683, 14.875015, 19.730036>,  <13.308127, 14.437224, 19.189186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.185683, 14.875015, 19.730036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.988439, 14.542635, 19.833078>,  <12.870092, 14.343206, 19.894903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.988439, 14.542635, 19.833078>,  <13.185683, 14.875015, 19.730036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.988439, 14.542635, 19.833078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233863, 0.158597, 0.959247,
		-0.837944, 0.533260, 0.116123,
		-0.493111, -0.830952, 0.257605,
		12.840506, 14.293349, 19.910360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.889383, 15.103215, 20.381535>,  <13.185683, 14.875015, 19.730036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.889383, 15.103215, 20.381535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.847342, 14.705540, 20.390867>,  <12.822118, 14.466934, 20.396467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.847342, 14.705540, 20.390867>,  <12.889383, 15.103215, 20.381535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.847342, 14.705540, 20.390867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013687, 0.024907, 0.999596,
		-0.994367, 0.104740, -0.016225,
		-0.105102, -0.994187, 0.023333,
		12.815812, 14.407284, 20.397867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.389261, 14.922979, 20.922661>,  <12.889383, 15.103215, 20.381535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.389261, 14.922979, 20.922661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.582423, 14.575927, 20.875299>,  <12.698320, 14.367695, 20.846882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.582423, 14.575927, 20.875299>,  <12.389261, 14.922979, 20.922661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.582423, 14.575927, 20.875299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035074, -0.115943, 0.992636,
		-0.874971, -0.483501, -0.025558,
		0.482904, -0.867632, -0.118405,
		12.727294, 14.315638, 20.839779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.048321, 14.445009, 21.460073>,  <12.389261, 14.922979, 20.922661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.048321, 14.445009, 21.460073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.412649, 14.315093, 21.358160>,  <12.631247, 14.237144, 21.297012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.412649, 14.315093, 21.358160>,  <12.048321, 14.445009, 21.460073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.412649, 14.315093, 21.358160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180016, -0.242920, 0.953197,
		-0.371484, -0.914057, -0.162789,
		0.910820, -0.324793, -0.254786,
		12.685896, 14.217655, 21.281725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.214358, 13.696644, 21.844124>,  <12.048321, 14.445009, 21.460073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.214358, 13.696644, 21.844124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.546538, 13.898591, 21.749924>,  <12.745847, 14.019759, 21.693403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.546538, 13.898591, 21.749924>,  <12.214358, 13.696644, 21.844124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.546538, 13.898591, 21.749924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213879, 0.101398, 0.971583,
		0.514401, -0.857220, -0.023775,
		0.830450, 0.504868, -0.235500,
		12.795673, 14.050052, 21.679274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.766688, 13.393798, 22.293652>,  <12.214358, 13.696644, 21.844124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.766688, 13.393798, 22.293652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.936972, 13.724014, 22.145460>,  <13.039142, 13.922144, 22.056545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.936972, 13.724014, 22.145460>,  <12.766688, 13.393798, 22.293652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.936972, 13.724014, 22.145460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507136, 0.121408, 0.853272,
		0.749390, -0.551128, -0.366977,
		0.425708, 0.825541, -0.370479,
		13.064684, 13.971677, 22.034317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.459312, 13.371057, 22.516422>,  <12.766688, 13.393798, 22.293652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.459312, 13.371057, 22.516422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.353865, 13.751893, 22.454416>,  <13.290596, 13.980394, 22.417213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.353865, 13.751893, 22.454416>,  <13.459312, 13.371057, 22.516422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.353865, 13.751893, 22.454416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476912, 0.268323, 0.836993,
		0.838487, 0.146720, -0.524798,
		-0.263619, 0.952090, -0.155013,
		13.274779, 14.037520, 22.407913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.022082, 13.641870, 22.624105>,  <13.459312, 13.371057, 22.516422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.022082, 13.641870, 22.624105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.765965, 13.945467, 22.671352>,  <13.612294, 14.127625, 22.699701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.765965, 13.945467, 22.671352>,  <14.022082, 13.641870, 22.624105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.765965, 13.945467, 22.671352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535136, 0.330454, 0.777451,
		0.551048, 0.561007, -0.617753,
		-0.640294, 0.758994, 0.118119,
		13.573876, 14.173165, 22.706787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.422668, 14.181541, 22.925587>,  <14.022082, 13.641870, 22.624105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.422668, 14.181541, 22.925587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.059049, 14.333284, 22.994541>,  <13.840877, 14.424331, 23.035913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.059049, 14.333284, 22.994541>,  <14.422668, 14.181541, 22.925587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.059049, 14.333284, 22.994541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383968, 0.601919, 0.700187,
		0.161858, 0.702696, -0.692835,
		-0.909049, 0.379358, 0.172387,
		13.786334, 14.447092, 23.046257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.494540, 14.916147, 22.912281>,  <14.422668, 14.181541, 22.925587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.494540, 14.916147, 22.912281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.165578, 14.830655, 23.123173>,  <13.968201, 14.779360, 23.249708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.165578, 14.830655, 23.123173>,  <14.494540, 14.916147, 22.912281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.165578, 14.830655, 23.123173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331253, 0.573542, 0.749214,
		-0.462517, 0.790803, -0.400886,
		-0.822405, -0.213729, 0.527228,
		13.918857, 14.766537, 23.281342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.241978, 15.557515, 23.150702>,  <14.494540, 14.916147, 22.912281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.241978, 15.557515, 23.150702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.073924, 15.288797, 23.394728>,  <13.973092, 15.127566, 23.541143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.073924, 15.288797, 23.394728>,  <14.241978, 15.557515, 23.150702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.073924, 15.288797, 23.394728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202884, 0.585722, 0.784709,
		-0.884492, 0.453455, -0.109786,
		-0.420134, -0.671795, 0.610065,
		13.947884, 15.087259, 23.577747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.918470, 15.971115, 23.650314>,  <14.241978, 15.557515, 23.150702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.918470, 15.971115, 23.650314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.922030, 15.599028, 23.797073>,  <13.924167, 15.375775, 23.885128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.922030, 15.599028, 23.797073>,  <13.918470, 15.971115, 23.650314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.922030, 15.599028, 23.797073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365879, 0.344497, 0.864554,
		-0.930620, 0.126546, 0.343414,
		0.008899, -0.930219, 0.366896,
		13.924701, 15.319962, 23.907143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.693017, 16.095179, 24.275522>,  <13.918470, 15.971115, 23.650314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.693017, 16.095179, 24.275522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.875286, 15.740907, 24.311155>,  <13.984648, 15.528344, 24.332535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.875286, 15.740907, 24.311155>,  <13.693017, 16.095179, 24.275522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.875286, 15.740907, 24.311155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357062, 0.273537, 0.893132,
		-0.815395, -0.375167, 0.440885,
		0.455672, -0.885679, 0.089082,
		14.011988, 15.475203, 24.337879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.584790, 15.886652, 24.931574>,  <13.693017, 16.095179, 24.275522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.584790, 15.886652, 24.931574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.907097, 15.670030, 24.835695>,  <14.100481, 15.540056, 24.778168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.907097, 15.670030, 24.835695>,  <13.584790, 15.886652, 24.931574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.907097, 15.670030, 24.835695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421352, 0.239802, 0.874618,
		-0.416175, -0.805736, 0.421411,
		0.805767, -0.541557, -0.239698,
		14.148828, 15.507563, 24.763786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.844919, 15.510928, 25.566475>,  <13.584790, 15.886652, 24.931574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.844919, 15.510928, 25.566475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.156222, 15.489660, 25.316198>,  <14.343004, 15.476899, 25.166033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.156222, 15.489660, 25.316198>,  <13.844919, 15.510928, 25.566475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.156222, 15.489660, 25.316198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626581, 0.000087, 0.779357,
		-0.041386, -0.998585, 0.033384,
		0.778257, -0.053172, -0.625691,
		14.389700, 15.473709, 25.128490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.337664, 15.086548, 25.901991>,  <13.844919, 15.510928, 25.566475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.337664, 15.086548, 25.901991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.561140, 15.270797, 25.626110>,  <14.695226, 15.381346, 25.460581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.561140, 15.270797, 25.626110>,  <14.337664, 15.086548, 25.901991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.561140, 15.270797, 25.626110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792101, -0.049842, 0.608352,
		0.245845, -0.886195, -0.392706,
		0.558692, 0.460623, -0.689703,
		14.728747, 15.408983, 25.419199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.823303, 14.643365, 25.838320>,  <14.337664, 15.086548, 25.901991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.823303, 14.643365, 25.838320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.944551, 15.006809, 25.723394>,  <15.017299, 15.224875, 25.654440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.944551, 15.006809, 25.723394>,  <14.823303, 14.643365, 25.838320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.944551, 15.006809, 25.723394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686410, 0.000962, 0.727214,
		0.661030, -0.417644, -0.623388,
		0.303117, 0.908610, -0.287311,
		15.035485, 15.279392, 25.637201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.616790, 14.738340, 25.848866>,  <14.823303, 14.643365, 25.838320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.616790, 14.738340, 25.848866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.494498, 15.118377, 25.873703>,  <15.421124, 15.346398, 25.888605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.494498, 15.118377, 25.873703>,  <15.616790, 14.738340, 25.848866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.494498, 15.118377, 25.873703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582114, 0.134913, 0.801836,
		0.753441, 0.281290, -0.594309,
		-0.305729, 0.950092, 0.062094,
		15.402780, 15.403404, 25.892332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.223207, 15.095487, 25.942926>,  <15.616790, 14.738340, 25.848866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.223207, 15.095487, 25.942926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.953267, 15.369551, 26.052568>,  <15.791303, 15.533989, 26.118353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.953267, 15.369551, 26.052568>,  <16.223207, 15.095487, 25.942926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.953267, 15.369551, 26.052568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627841, 0.337879, 0.701180,
		0.387806, 0.645286, -0.658189,
		-0.674850, 0.685159, 0.274106,
		15.750813, 15.575099, 26.134800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.552618, 15.777639, 25.990891>,  <16.223207, 15.095487, 25.942926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.552618, 15.777639, 25.990891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.227806, 15.776353, 26.224333>,  <16.032919, 15.775581, 26.364399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.227806, 15.776353, 26.224333>,  <16.552618, 15.777639, 25.990891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.227806, 15.776353, 26.224333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468590, 0.592503, 0.655258,
		-0.347896, 0.805562, -0.479624,
		-0.812030, -0.003215, 0.583607,
		15.984198, 15.775389, 26.399414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.523113, 16.402557, 26.196995>,  <16.552618, 15.777639, 25.990891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.523113, 16.402557, 26.196995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.316231, 16.192127, 26.467030>,  <16.192101, 16.065870, 26.629049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.316231, 16.192127, 26.467030>,  <16.523113, 16.402557, 26.196995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.316231, 16.192127, 26.467030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408956, 0.540997, 0.734899,
		-0.751832, 0.656176, -0.064667,
		-0.517208, -0.526075, 0.675086,
		16.161068, 16.034306, 26.669556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
