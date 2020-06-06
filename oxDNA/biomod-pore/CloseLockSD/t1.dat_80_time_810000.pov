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
	<4.283517, 14.494283, 14.531783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.205197, 14.853371, 14.689650>,  <4.158205, 15.068823, 14.784369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.205197, 14.853371, 14.689650>,  <4.283517, 14.494283, 14.531783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.205197, 14.853371, 14.689650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478493, 0.438756, -0.760617,
		-0.855983, 0.039916, -0.515461,
		-0.195801, 0.897719, 0.394667,
		4.146456, 15.122686, 14.808049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.852503, 14.991302, 14.041436>,  <4.283517, 14.494283, 14.531783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.852503, 14.991302, 14.041436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.083218, 15.183605, 14.305614>,  <4.221646, 15.298987, 14.464122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.083218, 15.183605, 14.305614>,  <3.852503, 14.991302, 14.041436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.083218, 15.183605, 14.305614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399602, 0.539101, -0.741410,
		-0.712485, 0.691551, 0.118834,
		0.576786, 0.480757, 0.660447,
		4.256254, 15.327832, 14.503749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.095558, 15.524632, 13.577503>,  <3.852503, 14.991302, 14.041436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.095558, 15.524632, 13.577503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.279504, 15.583766, 13.927741>,  <4.389872, 15.619246, 14.137884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.279504, 15.583766, 13.927741>,  <4.095558, 15.524632, 13.577503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.279504, 15.583766, 13.927741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425501, 0.828784, -0.363408,
		-0.779405, 0.539686, 0.318225,
		0.459866, 0.147837, 0.875596,
		4.417464, 15.628118, 14.190420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.148759, 16.186419, 13.704720>,  <4.095558, 15.524632, 13.577503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.148759, 16.186419, 13.704720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.444376, 16.033833, 13.926818>,  <4.621747, 15.942281, 14.060077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.444376, 16.033833, 13.926818>,  <4.148759, 16.186419, 13.704720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.444376, 16.033833, 13.926818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627740, 0.689053, -0.362143,
		-0.244449, 0.616190, 0.748702,
		0.739044, -0.381465, 0.555246,
		4.666090, 15.919394, 14.093391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.513354, 16.745029, 13.866082>,  <4.148759, 16.186419, 13.704720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.513354, 16.745029, 13.866082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.763299, 16.439899, 13.932587>,  <4.913266, 16.256821, 13.972489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.763299, 16.439899, 13.932587>,  <4.513354, 16.745029, 13.866082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.763299, 16.439899, 13.932587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761700, 0.548905, -0.344261,
		0.171350, 0.341757, 0.924035,
		0.624861, -0.762827, 0.166262,
		4.950758, 16.211052, 13.982465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.051974, 16.985071, 14.087979>,  <4.513354, 16.745029, 13.866082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.051974, 16.985071, 14.087979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.180976, 16.637699, 13.937345>,  <5.258378, 16.429276, 13.846964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.180976, 16.637699, 13.937345>,  <5.051974, 16.985071, 14.087979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.180976, 16.637699, 13.937345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697689, 0.486957, -0.525455,
		0.639702, -0.093277, 0.762942,
		0.322507, -0.868431, -0.376586,
		5.277729, 16.377171, 13.824368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.797729, 17.033957, 14.158377>,  <5.051974, 16.985071, 14.087979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.797729, 17.033957, 14.158377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.714910, 16.760979, 13.877977>,  <5.665218, 16.597191, 13.709738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.714910, 16.760979, 13.877977>,  <5.797729, 17.033957, 14.158377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.714910, 16.760979, 13.877977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577260, 0.493280, -0.650728,
		0.789874, -0.539390, 0.291816,
		-0.207049, -0.682447, -0.700997,
		5.652795, 16.556244, 13.667678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.423605, 16.767294, 14.038444>,  <5.797729, 17.033957, 14.158377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.423605, 16.767294, 14.038444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.225772, 16.675453, 13.703141>,  <6.107073, 16.620350, 13.501960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.225772, 16.675453, 13.703141>,  <6.423605, 16.767294, 14.038444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.225772, 16.675453, 13.703141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760137, 0.353363, -0.545276,
		0.421405, -0.906873, -0.000240,
		-0.494581, -0.229600, -0.838256,
		6.077398, 16.606573, 13.451664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.836410, 16.302809, 13.687553>,  <6.423605, 16.767294, 14.038444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.836410, 16.302809, 13.687553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.584792, 16.515535, 13.460759>,  <6.433822, 16.643171, 13.324682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.584792, 16.515535, 13.460759>,  <6.836410, 16.302809, 13.687553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.584792, 16.515535, 13.460759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765961, 0.548528, -0.335292,
		0.132694, -0.645202, -0.752400,
		-0.629044, 0.531818, -0.566986,
		6.396079, 16.675081, 13.290664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.353323, 16.725109, 13.465981>,  <6.836410, 16.302809, 13.687553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.353323, 16.725109, 13.465981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.020948, 16.833858, 13.271813>,  <6.821524, 16.899107, 13.155313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.020948, 16.833858, 13.271813>,  <7.353323, 16.725109, 13.465981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.020948, 16.833858, 13.271813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498301, 0.751737, -0.431957,
		0.247470, -0.600813, -0.760120,
		-0.830936, 0.271872, -0.485419,
		6.771667, 16.915421, 13.126187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.515202, 16.869339, 12.658047>,  <7.353323, 16.725109, 13.465981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.515202, 16.869339, 12.658047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.170175, 17.051037, 12.747168>,  <6.963159, 17.160055, 12.800640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.170175, 17.051037, 12.747168>,  <7.515202, 16.869339, 12.658047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.170175, 17.051037, 12.747168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271520, 0.787187, -0.553727,
		-0.426914, -0.417131, -0.802338,
		-0.862566, 0.454245, 0.222802,
		6.911405, 17.187311, 12.814008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.109553, 17.063839, 11.955593>,  <7.515202, 16.869339, 12.658047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.109553, 17.063839, 11.955593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.978748, 17.295115, 12.254594>,  <6.900264, 17.433880, 12.433994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.978748, 17.295115, 12.254594>,  <7.109553, 17.063839, 11.955593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.978748, 17.295115, 12.254594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309939, 0.812859, -0.493151,
		-0.892748, 0.070412, -0.445020,
		-0.327014, 0.578189, 0.747502,
		6.880643, 17.468571, 12.478845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.980311, 17.714144, 11.591922>,  <7.109553, 17.063839, 11.955593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.980311, 17.714144, 11.591922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.987728, 17.823236, 11.976686>,  <6.992178, 17.888693, 12.207545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.987728, 17.823236, 11.976686>,  <6.980311, 17.714144, 11.591922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.987728, 17.823236, 11.976686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495360, 0.833191, -0.245786,
		-0.868490, 0.481050, -0.119651,
		0.018543, 0.272733, 0.961911,
		6.993291, 17.905056, 12.265260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.956768, 18.525307, 11.549206>,  <6.980311, 17.714144, 11.591922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.956768, 18.525307, 11.549206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.106239, 18.425495, 11.906551>,  <7.195922, 18.365608, 12.120959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.106239, 18.425495, 11.906551>,  <6.956768, 18.525307, 11.549206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.106239, 18.425495, 11.906551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546093, 0.837706, 0.005560,
		-0.749764, 0.485783, 0.449298,
		0.373679, -0.249528, 0.893365,
		7.218342, 18.350637, 12.174561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.866366, 19.174198, 11.903017>,  <6.956768, 18.525307, 11.549206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.866366, 19.174198, 11.903017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.142148, 18.944941, 12.080174>,  <7.307618, 18.807386, 12.186469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.142148, 18.944941, 12.080174>,  <6.866366, 19.174198, 11.903017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.142148, 18.944941, 12.080174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640047, 0.768333, -0.002071,
		-0.339103, 0.284902, 0.896571,
		0.689455, -0.573146, 0.442895,
		7.348985, 18.772997, 12.213043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.356250, 19.545734, 12.353772>,  <6.866366, 19.174198, 11.903017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.356250, 19.545734, 12.353772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.577909, 19.217350, 12.298721>,  <7.710905, 19.020319, 12.265691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.577909, 19.217350, 12.298721>,  <7.356250, 19.545734, 12.353772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.577909, 19.217350, 12.298721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819541, 0.567036, -0.082596,
		0.145848, -0.067021, 0.987034,
		0.554148, -0.820962, -0.137627,
		7.744154, 18.971062, 12.257433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.955164, 19.686619, 12.755251>,  <7.356250, 19.545734, 12.353772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.955164, 19.686619, 12.755251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.054723, 19.404999, 12.489209>,  <8.114458, 19.236027, 12.329584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.054723, 19.404999, 12.489209>,  <7.955164, 19.686619, 12.755251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.054723, 19.404999, 12.489209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890070, 0.437030, -0.129535,
		0.381870, -0.559749, 0.735429,
		0.248897, -0.704050, -0.665105,
		8.129392, 19.193785, 12.289678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.554182, 19.442760, 12.913101>,  <7.955164, 19.686619, 12.755251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.554182, 19.442760, 12.913101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.528728, 19.334965, 12.528742>,  <8.513454, 19.270287, 12.298126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.528728, 19.334965, 12.528742>,  <8.554182, 19.442760, 12.913101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.528728, 19.334965, 12.528742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808505, 0.550527, -0.207942,
		0.585039, -0.790124, 0.182849,
		-0.063637, -0.269489, -0.960899,
		8.509637, 19.254118, 12.240472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.302374, 19.309900, 12.816857>,  <8.554182, 19.442760, 12.913101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.302374, 19.309900, 12.816857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.100178, 19.320177, 12.471877>,  <8.978860, 19.326344, 12.264889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.100178, 19.320177, 12.471877>,  <9.302374, 19.309900, 12.816857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.100178, 19.320177, 12.471877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707233, 0.584926, -0.397093,
		0.494268, -0.810680, -0.313843,
		-0.505490, 0.025690, -0.862450,
		8.948531, 19.327885, 12.213142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.942020, 19.246126, 12.348917>,  <9.302374, 19.309900, 12.816857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.942020, 19.246126, 12.348917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.627003, 19.404806, 12.160278>,  <9.437992, 19.500013, 12.047095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.627003, 19.404806, 12.160278>,  <9.942020, 19.246126, 12.348917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.627003, 19.404806, 12.160278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593175, 0.695453, -0.405572,
		0.167084, -0.599145, -0.783012,
		-0.787544, 0.396699, -0.471597,
		9.390739, 19.523815, 12.018799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.034760, 19.284294, 11.656920>,  <9.942020, 19.246126, 12.348917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.034760, 19.284294, 11.656920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.748137, 19.559862, 11.700607>,  <9.576162, 19.725203, 11.726819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.748137, 19.559862, 11.700607>,  <10.034760, 19.284294, 11.656920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.748137, 19.559862, 11.700607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595689, 0.685859, -0.418033,
		-0.362901, -0.234486, -0.901842,
		-0.716559, 0.688922, 0.109218,
		9.533169, 19.766539, 11.733373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.903271, 19.601679, 10.968232>,  <10.034760, 19.284294, 11.656920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.903271, 19.601679, 10.968232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.800356, 19.863161, 11.252899>,  <9.738607, 20.020050, 11.423699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.800356, 19.863161, 11.252899>,  <9.903271, 19.601679, 10.968232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.800356, 19.863161, 11.252899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617378, 0.677759, -0.399359,
		-0.743403, 0.336618, -0.577962,
		-0.257287, 0.653706, 0.711668,
		9.723169, 20.059273, 11.466400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.959882, 20.273020, 10.642120>,  <9.903271, 19.601679, 10.968232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.959882, 20.273020, 10.642120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.936235, 20.372097, 11.028934>,  <9.922048, 20.431543, 11.261022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.936235, 20.372097, 11.028934>,  <9.959882, 20.273020, 10.642120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.936235, 20.372097, 11.028934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566596, 0.805891, -0.171782,
		-0.821872, 0.537762, -0.187982,
		-0.059115, 0.247693, 0.967034,
		9.918501, 20.446405, 11.319043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.908003, 20.987083, 10.708403>,  <9.959882, 20.273020, 10.642120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.908003, 20.987083, 10.708403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.004045, 20.918550, 11.090606>,  <10.061671, 20.877430, 11.319927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.004045, 20.918550, 11.090606>,  <9.908003, 20.987083, 10.708403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.004045, 20.918550, 11.090606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562112, 0.827031, 0.007046,
		-0.791441, 0.535410, 0.294885,
		0.240106, -0.171335, 0.955507,
		10.076077, 20.867149, 11.377257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.914359, 21.657845, 10.959428>,  <9.908003, 20.987083, 10.708403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.914359, 21.657845, 10.959428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.122443, 21.423674, 11.208155>,  <10.247293, 21.283171, 11.357391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.122443, 21.423674, 11.208155>,  <9.914359, 21.657845, 10.959428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.122443, 21.423674, 11.208155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677858, 0.725928, 0.116353,
		-0.519511, 0.360976, 0.774471,
		0.520209, -0.585427, 0.621818,
		10.278506, 21.248045, 11.394700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.031241, 21.928371, 11.650227>,  <9.914359, 21.657845, 10.959428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.031241, 21.928371, 11.650227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.349120, 21.701912, 11.562650>,  <10.539847, 21.566036, 11.510103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.349120, 21.701912, 11.562650>,  <10.031241, 21.928371, 11.650227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.349120, 21.701912, 11.562650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592792, 0.801446, 0.079262,
		0.130596, -0.192776, 0.972513,
		0.794696, -0.566147, -0.218942,
		10.587529, 21.532068, 11.496967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.541779, 22.023474, 12.111406>,  <10.031241, 21.928371, 11.650227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.541779, 22.023474, 12.111406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.748095, 21.932850, 11.780920>,  <10.871884, 21.878475, 11.582628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.748095, 21.932850, 11.780920>,  <10.541779, 22.023474, 12.111406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.748095, 21.932850, 11.780920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437400, 0.898874, 0.026577,
		0.736643, -0.375095, 0.562726,
		0.515789, -0.226558, -0.826216,
		10.902831, 21.864882, 11.533055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.862147, 22.522865, 12.334787>,  <10.541779, 22.023474, 12.111406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.862147, 22.522865, 12.334787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.194034, 22.673805, 12.170260>,  <11.393166, 22.764370, 12.071545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.194034, 22.673805, 12.170260>,  <10.862147, 22.522865, 12.334787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.194034, 22.673805, 12.170260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556629, -0.614373, 0.559204,
		-0.041686, -0.692931, -0.719798,
		0.829715, 0.377349, -0.411316,
		11.442948, 22.787010, 12.046865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.267891, 22.076202, 11.918194>,  <10.862147, 22.522865, 12.334787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.267891, 22.076202, 11.918194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.579402, 22.280823, 12.063421>,  <11.766309, 22.403595, 12.150558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.579402, 22.280823, 12.063421>,  <11.267891, 22.076202, 11.918194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.579402, 22.280823, 12.063421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448027, -0.858688, 0.248852,
		0.439063, -0.031137, -0.897917,
		0.778778, 0.511553, 0.363068,
		11.813036, 22.434288, 12.172341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.901864, 21.841089, 11.623051>,  <11.267891, 22.076202, 11.918194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.901864, 21.841089, 11.623051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.974986, 21.976959, 11.992093>,  <12.018859, 22.058481, 12.213519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.974986, 21.976959, 11.992093>,  <11.901864, 21.841089, 11.623051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.974986, 21.976959, 11.992093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273719, -0.918901, 0.284076,
		0.944278, 0.200605, -0.260955,
		0.182804, 0.339675, 0.922607,
		12.029827, 22.078861, 12.268875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.509937, 21.411777, 11.869421>,  <11.901864, 21.841089, 11.623051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.509937, 21.411777, 11.869421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.338239, 21.578722, 12.189810>,  <12.235220, 21.678888, 12.382043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.338239, 21.578722, 12.189810>,  <12.509937, 21.411777, 11.869421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.338239, 21.578722, 12.189810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189514, -0.825465, 0.531688,
		0.883081, 0.380020, 0.275232,
		-0.429246, 0.417363, 0.800972,
		12.209465, 21.703932, 12.430101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.733788, 21.025145, 12.363452>,  <12.509937, 21.411777, 11.869421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.733788, 21.025145, 12.363452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.454218, 21.229057, 12.564101>,  <12.286475, 21.351404, 12.684490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.454218, 21.229057, 12.564101>,  <12.733788, 21.025145, 12.363452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.454218, 21.229057, 12.564101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059973, -0.657134, 0.751384,
		0.712674, 0.555247, 0.428715,
		-0.698927, 0.509781, 0.501622,
		12.244540, 21.381992, 12.714588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.351163, 20.430311, 12.649980>,  <12.733788, 21.025145, 12.363452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.351163, 20.430311, 12.649980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.607594, 20.265888, 12.909225>,  <12.761454, 20.167234, 13.064772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.607594, 20.265888, 12.909225>,  <12.351163, 20.430311, 12.649980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.607594, 20.265888, 12.909225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754641, -0.491408, 0.434783,
		0.139768, -0.767823, -0.625230,
		0.641079, -0.411056, 0.648113,
		12.799918, 20.142572, 13.103659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.252544, 19.671923, 12.557363>,  <12.351163, 20.430311, 12.649980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.252544, 19.671923, 12.557363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.375823, 19.779537, 12.922358>,  <12.449790, 19.844105, 13.141355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.375823, 19.779537, 12.922358>,  <12.252544, 19.671923, 12.557363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.375823, 19.779537, 12.922358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739684, -0.535406, 0.407687,
		0.598234, -0.800600, 0.033992,
		0.308195, 0.269036, 0.912489,
		12.468282, 19.860249, 13.196104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.247179, 19.068903, 13.041890>,  <12.252544, 19.671923, 12.557363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.247179, 19.068903, 13.041890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.193020, 19.421091, 13.223632>,  <12.160524, 19.632404, 13.332677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.193020, 19.421091, 13.223632>,  <12.247179, 19.068903, 13.041890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.193020, 19.421091, 13.223632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796604, -0.369419, 0.478490,
		0.589143, -0.297153, 0.751406,
		-0.135399, 0.880471, 0.454354,
		12.152400, 19.685232, 13.359938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.179945, 18.928312, 13.718866>,  <12.247179, 19.068903, 13.041890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.179945, 18.928312, 13.718866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.959906, 19.250395, 13.630292>,  <11.827883, 19.443645, 13.577147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.959906, 19.250395, 13.630292>,  <12.179945, 18.928312, 13.718866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.959906, 19.250395, 13.630292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758065, -0.370241, 0.536897,
		0.350328, 0.463209, 0.814068,
		-0.550097, 0.805207, -0.221437,
		11.794876, 19.491957, 13.563861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.940448, 19.333508, 14.369686>,  <12.179945, 18.928312, 13.718866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.940448, 19.333508, 14.369686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.686955, 19.329605, 14.060289>,  <11.534860, 19.327263, 13.874651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.686955, 19.329605, 14.060289>,  <11.940448, 19.333508, 14.369686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.686955, 19.329605, 14.060289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684989, -0.457507, 0.566990,
		-0.359409, 0.889152, 0.283254,
		-0.633732, -0.009755, -0.773492,
		11.496836, 19.326679, 13.828242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.335387, 19.593287, 14.668159>,  <11.940448, 19.333508, 14.369686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.335387, 19.593287, 14.668159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.222339, 19.432920, 14.319587>,  <11.154510, 19.336700, 14.110443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.222339, 19.432920, 14.319587>,  <11.335387, 19.593287, 14.668159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.222339, 19.432920, 14.319587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862292, -0.291789, 0.413899,
		-0.420212, 0.868405, -0.263240,
		-0.282622, -0.400915, -0.871431,
		11.137552, 19.312647, 14.058157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.592195, 19.711329, 14.623566>,  <11.335387, 19.593287, 14.668159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.592195, 19.711329, 14.623566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.690525, 19.409731, 14.379906>,  <10.749523, 19.228773, 14.233710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.690525, 19.409731, 14.379906>,  <10.592195, 19.711329, 14.623566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.690525, 19.409731, 14.379906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800348, -0.512406, 0.311262,
		-0.546822, 0.411016, -0.729419,
		0.245825, -0.753994, -0.609150,
		10.764273, 19.183533, 14.197161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.941265, 19.355795, 14.522960>,  <10.592195, 19.711329, 14.623566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.941265, 19.355795, 14.522960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.215040, 19.085936, 14.412399>,  <10.379305, 18.924021, 14.346064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.215040, 19.085936, 14.412399>,  <9.941265, 19.355795, 14.522960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.215040, 19.085936, 14.412399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550625, -0.726817, 0.410548,
		-0.477867, -0.128801, -0.868938,
		0.684438, -0.674646, -0.276401,
		10.420372, 18.883541, 14.329479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.672997, 18.670633, 14.343534>,  <9.941265, 19.355795, 14.522960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.672997, 18.670633, 14.343534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.055410, 18.553713, 14.352965>,  <10.284859, 18.483561, 14.358624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.055410, 18.553713, 14.352965>,  <9.672997, 18.670633, 14.343534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.055410, 18.553713, 14.352965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275567, -0.867976, 0.413136,
		-0.100294, -0.401470, -0.910364,
		0.956036, -0.292301, 0.023579,
		10.342221, 18.466022, 14.360039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.781247, 18.144737, 13.903111>,  <9.672997, 18.670633, 14.343534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.781247, 18.144737, 13.903111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.090682, 18.106028, 14.153614>,  <10.276343, 18.082802, 14.303915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.090682, 18.106028, 14.153614>,  <9.781247, 18.144737, 13.903111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.090682, 18.106028, 14.153614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187155, -0.979077, 0.079886,
		0.605421, -0.179006, -0.775514,
		0.773588, -0.096776, 0.626255,
		10.322759, 18.076994, 14.341491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.123342, 17.594725, 13.742882>,  <9.781247, 18.144737, 13.903111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.123342, 17.594725, 13.742882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.188082, 17.646595, 14.134185>,  <10.226926, 17.677717, 14.368967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.188082, 17.646595, 14.134185>,  <10.123342, 17.594725, 13.742882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.188082, 17.646595, 14.134185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161449, -0.974491, 0.155886,
		0.973519, -0.183170, -0.136786,
		0.161851, 0.129674, 0.978258,
		10.236637, 17.685497, 14.427662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.468630, 17.044279, 13.940070>,  <10.123342, 17.594725, 13.742882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.468630, 17.044279, 13.940070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.373529, 17.181034, 14.303738>,  <10.316469, 17.263088, 14.521938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.373529, 17.181034, 14.303738>,  <10.468630, 17.044279, 13.940070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.373529, 17.181034, 14.303738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284260, -0.919518, 0.271446,
		0.928800, -0.193903, 0.315803,
		-0.237752, 0.341889, 0.909167,
		10.302204, 17.283602, 14.576488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.785858, 16.624123, 14.379656>,  <10.468630, 17.044279, 13.940070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.785858, 16.624123, 14.379656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.475706, 16.792486, 14.567962>,  <10.289615, 16.893505, 14.680945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.475706, 16.792486, 14.567962>,  <10.785858, 16.624123, 14.379656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.475706, 16.792486, 14.567962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334645, -0.906071, 0.258937,
		0.535536, 0.043235, 0.843405,
		-0.775380, 0.420911, 0.470765,
		10.243093, 16.918760, 14.709191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.710188, 16.149652, 14.925787>,  <10.785858, 16.624123, 14.379656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.710188, 16.149652, 14.925787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.375181, 16.368095, 14.918537>,  <10.174177, 16.499161, 14.914187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.375181, 16.368095, 14.918537>,  <10.710188, 16.149652, 14.925787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.375181, 16.368095, 14.918537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545821, -0.834616, 0.074128,
		0.025354, 0.071976, 0.997084,
		-0.837518, 0.546109, -0.018125,
		10.123926, 16.531929, 14.913099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.265671, 15.848161, 15.502646>,  <10.710188, 16.149652, 14.925787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.265671, 15.848161, 15.502646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.030815, 16.049952, 15.249420>,  <9.889902, 16.171026, 15.097485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.030815, 16.049952, 15.249420>,  <10.265671, 15.848161, 15.502646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.030815, 16.049952, 15.249420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651427, -0.758711, -0.000435,
		-0.480532, 0.412140, 0.774099,
		-0.587138, 0.504478, -0.633064,
		9.854673, 16.201296, 15.059501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.651347, 15.655315, 15.761755>,  <10.265671, 15.848161, 15.502646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.651347, 15.655315, 15.761755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.592057, 15.784331, 15.387803>,  <9.556483, 15.861741, 15.163432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.592057, 15.784331, 15.387803>,  <9.651347, 15.655315, 15.761755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.592057, 15.784331, 15.387803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714121, -0.688872, -0.124443,
		-0.684149, 0.649170, 0.332444,
		-0.148227, 0.322542, -0.934877,
		9.547590, 15.881093, 15.107340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.962639, 15.748587, 15.715510>,  <9.651347, 15.655315, 15.761755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.962639, 15.748587, 15.715510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.073308, 15.716444, 15.332471>,  <9.139709, 15.697159, 15.102647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.073308, 15.716444, 15.332471>,  <8.962639, 15.748587, 15.715510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.073308, 15.716444, 15.332471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923972, -0.296069, -0.242113,
		-0.264060, 0.951780, -0.156162,
		0.276673, -0.080357, -0.957598,
		9.156310, 15.692337, 15.045192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.447130, 16.125559, 15.283894>,  <8.962639, 15.748587, 15.715510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.447130, 16.125559, 15.283894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.621727, 15.849263, 15.053292>,  <8.726485, 15.683486, 14.914931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.621727, 15.849263, 15.053292>,  <8.447130, 16.125559, 15.283894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.621727, 15.849263, 15.053292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896210, -0.390254, -0.210971,
		-0.079258, 0.608756, -0.789389,
		0.436492, -0.690737, -0.576504,
		8.752675, 15.642042, 14.880342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.156727, 16.149216, 14.570619>,  <8.447130, 16.125559, 15.283894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.156727, 16.149216, 14.570619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.324600, 15.790813, 14.628641>,  <8.425324, 15.575772, 14.663455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.324600, 15.790813, 14.628641>,  <8.156727, 16.149216, 14.570619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.324600, 15.790813, 14.628641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872119, -0.442351, -0.209128,
		0.251546, -0.038739, -0.967070,
		0.419683, -0.896005, 0.145057,
		8.450505, 15.522012, 14.672158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.913048, 15.895497, 14.034866>,  <8.156727, 16.149216, 14.570619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.913048, 15.895497, 14.034866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.040629, 15.598189, 14.270091>,  <8.117178, 15.419805, 14.411226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.040629, 15.598189, 14.270091>,  <7.913048, 15.895497, 14.034866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.040629, 15.598189, 14.270091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816342, -0.530674, -0.227969,
		0.481513, -0.407349, -0.776023,
		0.318953, -0.743271, 0.588063,
		8.136315, 15.375208, 14.446510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.824617, 15.273828, 13.698936>,  <7.913048, 15.895497, 14.034866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.824617, 15.273828, 13.698936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.835824, 15.153304, 14.080182>,  <7.842548, 15.080990, 14.308929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.835824, 15.153304, 14.080182>,  <7.824617, 15.273828, 13.698936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.835824, 15.153304, 14.080182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860600, -0.492319, -0.130341,
		0.508510, -0.816599, -0.273100,
		0.028016, -0.301309, 0.953115,
		7.844229, 15.062911, 14.366117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.869742, 14.578506, 13.540303>,  <7.824617, 15.273828, 13.698936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.869742, 14.578506, 13.540303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.750234, 14.632398, 13.918210>,  <7.678529, 14.664733, 14.144954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.750234, 14.632398, 13.918210>,  <7.869742, 14.578506, 13.540303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.750234, 14.632398, 13.918210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741643, -0.655805, -0.141014,
		0.600584, -0.742811, 0.295857,
		-0.298771, 0.134729, 0.944766,
		7.660603, 14.672816, 14.201640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.845131, 13.854455, 13.740839>,  <7.869742, 14.578506, 13.540303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.845131, 13.854455, 13.740839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.629883, 14.059647, 14.008354>,  <7.500734, 14.182761, 14.168863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.629883, 14.059647, 14.008354>,  <7.845131, 13.854455, 13.740839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.629883, 14.059647, 14.008354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704718, -0.709110, -0.023124,
		0.462383, -0.483751, 0.743093,
		-0.538121, 0.512979, 0.668789,
		7.468446, 14.213540, 14.208991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.659493, 13.316093, 14.338296>,  <7.845131, 13.854455, 13.740839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.659493, 13.316093, 14.338296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.407569, 13.626738, 14.344186>,  <7.256414, 13.813124, 14.347720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.407569, 13.626738, 14.344186>,  <7.659493, 13.316093, 14.338296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.407569, 13.626738, 14.344186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776730, -0.629815, -0.004934,
		0.005442, -0.014545, 0.999879,
		-0.629811, 0.776609, 0.014725,
		7.218626, 13.859720, 14.348603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.526942, 13.167033, 15.002778>,  <7.659493, 13.316093, 14.338296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.526942, 13.167033, 15.002778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.405357, 12.897357, 15.272021>,  <7.332406, 12.735552, 15.433567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.405357, 12.897357, 15.272021>,  <7.526942, 13.167033, 15.002778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.405357, 12.897357, 15.272021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939904, -0.096882, 0.327406,
		-0.155522, 0.732176, 0.663122,
		-0.303963, -0.674190, 0.673108,
		7.314168, 12.695100, 15.473953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.080247, 12.697756, 15.258445>,  <7.526942, 13.167033, 15.002778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.080247, 12.697756, 15.258445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.788959, 12.626081, 14.993843>,  <7.614185, 12.583077, 14.835082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.788959, 12.626081, 14.993843>,  <8.080247, 12.697756, 15.258445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.788959, 12.626081, 14.993843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475145, 0.563586, -0.675728,
		0.493894, -0.806389, -0.325277,
		-0.728222, -0.179184, -0.661503,
		7.570492, 12.572326, 14.795392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.740329, 12.475079, 14.815301>,  <8.080247, 12.697756, 15.258445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.740329, 12.475079, 14.815301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.139722, 12.480805, 14.794037>,  <9.379358, 12.484241, 14.781279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.139722, 12.480805, 14.794037>,  <8.740329, 12.475079, 14.815301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.139722, 12.480805, 14.794037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009855, 0.903529, 0.428414,
		0.054164, -0.428288, 0.902017,
		0.998483, 0.014316, -0.053160,
		9.439267, 12.485100, 14.778089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.920787, 12.852876, 15.376972>,  <8.740329, 12.475079, 14.815301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.920787, 12.852876, 15.376972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.253748, 12.873827, 15.156296>,  <9.453525, 12.886398, 15.023890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.253748, 12.873827, 15.156296>,  <8.920787, 12.852876, 15.376972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.253748, 12.873827, 15.156296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158783, 0.931242, 0.327989,
		0.530937, -0.360618, 0.766851,
		0.832403, 0.052379, -0.551691,
		9.503469, 12.889541, 14.990788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.542890, 13.054297, 15.798594>,  <8.920787, 12.852876, 15.376972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.542890, 13.054297, 15.798594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.596520, 13.151736, 15.414369>,  <9.628699, 13.210199, 15.183833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.596520, 13.151736, 15.414369>,  <9.542890, 13.054297, 15.798594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.596520, 13.151736, 15.414369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194398, 0.944017, 0.266534,
		0.971716, -0.222468, 0.079217,
		0.134078, 0.243596, -0.960565,
		9.636744, 13.224815, 15.126200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.265445, 13.279799, 15.402533>,  <9.542890, 13.054297, 15.798594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.265445, 13.279799, 15.402533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.907065, 13.450789, 15.354299>,  <9.692038, 13.553383, 15.325358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.907065, 13.450789, 15.354299>,  <10.265445, 13.279799, 15.402533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.907065, 13.450789, 15.354299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335027, 0.828674, 0.448393,
		0.291602, 0.361339, -0.885665,
		-0.895949, 0.427474, -0.120585,
		9.638281, 13.579032, 15.318123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.252990, 14.011078, 15.052909>,  <10.265445, 13.279799, 15.402533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.252990, 14.011078, 15.052909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.970211, 13.961576, 15.331450>,  <9.800544, 13.931874, 15.498575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.970211, 13.961576, 15.331450>,  <10.252990, 14.011078, 15.052909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.970211, 13.961576, 15.331450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103144, 0.956006, 0.274615,
		-0.699705, 0.265963, -0.663081,
		-0.706947, -0.123757, 0.696355,
		9.758127, 13.924448, 15.540357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.953998, 14.642971, 15.144547>,  <10.252990, 14.011078, 15.052909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.953998, 14.642971, 15.144547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.848303, 14.445827, 15.476152>,  <9.784886, 14.327539, 15.675117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.848303, 14.445827, 15.476152>,  <9.953998, 14.642971, 15.144547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.848303, 14.445827, 15.476152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189823, 0.816176, 0.545732,
		-0.945593, 0.301569, -0.122107,
		-0.264237, -0.492862, 0.829015,
		9.769032, 14.297968, 15.724857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.695027, 14.668666, 15.084621>,  <9.953998, 14.642971, 15.144547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.695027, 14.668666, 15.084621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.090050, 14.635084, 15.031428>,  <11.327064, 14.614935, 14.999513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.090050, 14.635084, 15.031428>,  <10.695027, 14.668666, 15.084621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.090050, 14.635084, 15.031428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082210, -0.445277, 0.891611,
		-0.134068, -0.891448, -0.432834,
		0.987557, -0.083953, -0.132983,
		11.386316, 14.609899, 14.991533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.905045, 13.949008, 15.346071>,  <10.695027, 14.668666, 15.084621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.905045, 13.949008, 15.346071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.241632, 14.163960, 15.323625>,  <11.443585, 14.292932, 15.310157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.241632, 14.163960, 15.323625>,  <10.905045, 13.949008, 15.346071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.241632, 14.163960, 15.323625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286716, -0.356087, 0.889380,
		0.457953, -0.764476, -0.453712,
		0.841471, 0.537381, -0.056116,
		11.494074, 14.325174, 15.306789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.532591, 13.487659, 15.407075>,  <10.905045, 13.949008, 15.346071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.532591, 13.487659, 15.407075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.666063, 13.847372, 15.520171>,  <11.746147, 14.063200, 15.588029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.666063, 13.847372, 15.520171>,  <11.532591, 13.487659, 15.407075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.666063, 13.847372, 15.520171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302672, -0.386256, 0.871318,
		0.892774, -0.205165, -0.401076,
		0.333682, 0.899285, 0.282742,
		11.766168, 14.117158, 15.604994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.175942, 13.269166, 15.820097>,  <11.532591, 13.487659, 15.407075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.175942, 13.269166, 15.820097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.088130, 13.649959, 15.905455>,  <12.035442, 13.878434, 15.956669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.088130, 13.649959, 15.905455>,  <12.175942, 13.269166, 15.820097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.088130, 13.649959, 15.905455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152563, -0.182541, 0.971290,
		0.963603, 0.245784, -0.105164,
		-0.219531, 0.951982, 0.213394,
		12.022271, 13.935554, 15.969473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.736186, 13.569785, 16.224255>,  <12.175942, 13.269166, 15.820097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.736186, 13.569785, 16.224255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.414289, 13.784969, 16.324640>,  <12.221149, 13.914080, 16.384872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.414289, 13.784969, 16.324640>,  <12.736186, 13.569785, 16.224255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.414289, 13.784969, 16.324640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257611, -0.064401, 0.964100,
		0.534811, 0.840506, -0.086759,
		-0.804744, 0.537961, 0.250966,
		12.172865, 13.946358, 16.399931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.019639, 14.074094, 16.730742>,  <12.736186, 13.569785, 16.224255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.019639, 14.074094, 16.730742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.632536, 14.118420, 16.821220>,  <12.400274, 14.145016, 16.875507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.632536, 14.118420, 16.821220>,  <13.019639, 14.074094, 16.730742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.632536, 14.118420, 16.821220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229246, 0.015405, 0.973247,
		0.104366, 0.993722, -0.040312,
		-0.967757, 0.110815, 0.226199,
		12.342209, 14.151664, 16.889080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.936836, 14.643455, 17.166164>,  <13.019639, 14.074094, 16.730742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.936836, 14.643455, 17.166164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.605549, 14.434932, 17.248425>,  <12.406776, 14.309818, 17.297781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.605549, 14.434932, 17.248425>,  <12.936836, 14.643455, 17.166164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.605549, 14.434932, 17.248425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219979, 0.035092, 0.974873,
		-0.515426, 0.852647, 0.085614,
		-0.828218, -0.521308, 0.205652,
		12.357083, 14.278540, 17.310120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.531821, 15.067162, 17.622360>,  <12.936836, 14.643455, 17.166164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.531821, 15.067162, 17.622360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.404632, 14.690904, 17.669825>,  <12.328318, 14.465149, 17.698303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.404632, 14.690904, 17.669825>,  <12.531821, 15.067162, 17.622360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.404632, 14.690904, 17.669825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148071, 0.172890, 0.973747,
		-0.936466, 0.292056, -0.194257,
		-0.317973, -0.940645, 0.118660,
		12.309239, 14.408710, 17.705423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.934024, 15.171956, 18.012194>,  <12.531821, 15.067162, 17.622360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.934024, 15.171956, 18.012194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.994477, 14.780367, 18.066994>,  <12.030749, 14.545413, 18.099873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.994477, 14.780367, 18.066994>,  <11.934024, 15.171956, 18.012194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.994477, 14.780367, 18.066994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315990, 0.083473, 0.945084,
		-0.936648, -0.186124, -0.296730,
		0.151134, -0.978974, 0.136998,
		12.039818, 14.486674, 18.108093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.269524, 14.865116, 18.244772>,  <11.934024, 15.171956, 18.012194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.269524, 14.865116, 18.244772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.574284, 14.634752, 18.363321>,  <11.757139, 14.496533, 18.434450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.574284, 14.634752, 18.363321>,  <11.269524, 14.865116, 18.244772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.574284, 14.634752, 18.363321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296457, 0.096757, 0.950132,
		-0.575867, -0.811766, -0.097014,
		0.761899, -0.575911, 0.296373,
		11.802854, 14.461979, 18.452234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.011675, 14.476679, 18.770994>,  <11.269524, 14.865116, 18.244772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.011675, 14.476679, 18.770994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.397682, 14.385944, 18.823586>,  <11.629287, 14.331504, 18.855141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.397682, 14.385944, 18.823586>,  <11.011675, 14.476679, 18.770994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.397682, 14.385944, 18.823586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123644, 0.048460, 0.991143,
		-0.231200, -0.972726, 0.018717,
		0.965018, -0.226837, 0.131476,
		11.687187, 14.317893, 18.863028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.035588, 13.755624, 19.131638>,  <11.011675, 14.476679, 18.770994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.035588, 13.755624, 19.131638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.362380, 13.975660, 19.200857>,  <11.558455, 14.107682, 19.242390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.362380, 13.975660, 19.200857>,  <11.035588, 13.755624, 19.131638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.362380, 13.975660, 19.200857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100693, -0.159393, 0.982067,
		0.567809, -0.819752, -0.074830,
		0.816978, 0.550091, 0.173048,
		11.607473, 14.140688, 19.252771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.299803, 13.372855, 19.598095>,  <11.035588, 13.755624, 19.131638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.299803, 13.372855, 19.598095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.467852, 13.734693, 19.626959>,  <11.568681, 13.951796, 19.644278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.467852, 13.734693, 19.626959>,  <11.299803, 13.372855, 19.598095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.467852, 13.734693, 19.626959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106008, -0.030049, 0.993911,
		0.901254, -0.425214, 0.083270,
		0.420123, 0.904594, 0.072158,
		11.593888, 14.006071, 19.648607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.947446, 13.279387, 19.849146>,  <11.299803, 13.372855, 19.598095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.947446, 13.279387, 19.849146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.851306, 13.659609, 19.927816>,  <11.793622, 13.887742, 19.975019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.851306, 13.659609, 19.927816>,  <11.947446, 13.279387, 19.849146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.851306, 13.659609, 19.927816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057335, -0.188360, 0.980425,
		0.968992, 0.246920, -0.009228,
		-0.240349, 0.950553, 0.196676,
		11.779202, 13.944775, 19.986818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.294209, 13.343528, 20.464224>,  <11.947446, 13.279387, 19.849146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.294209, 13.343528, 20.464224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.041289, 13.652360, 20.438637>,  <11.889538, 13.837659, 20.423285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.041289, 13.652360, 20.438637>,  <12.294209, 13.343528, 20.464224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.041289, 13.652360, 20.438637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361571, -0.221067, 0.905757,
		0.685175, 0.595837, 0.418942,
		-0.632298, 0.772080, -0.063968,
		11.851600, 13.883984, 20.419447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.445372, 13.594386, 21.137764>,  <12.294209, 13.343528, 20.464224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.445372, 13.594386, 21.137764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.092849, 13.743436, 21.021523>,  <11.881335, 13.832866, 20.951778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.092849, 13.743436, 21.021523>,  <12.445372, 13.594386, 21.137764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.092849, 13.743436, 21.021523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361442, -0.135411, 0.922509,
		0.304399, 0.918050, 0.254020,
		-0.881307, 0.372624, -0.290603,
		11.828457, 13.855223, 20.934341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.264669, 14.002748, 21.676640>,  <12.445372, 13.594386, 21.137764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.264669, 14.002748, 21.676640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.905555, 13.941744, 21.511368>,  <11.690085, 13.905142, 21.412205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.905555, 13.941744, 21.511368>,  <12.264669, 14.002748, 21.676640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.905555, 13.941744, 21.511368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399132, -0.114888, 0.909667,
		-0.186202, 0.981602, 0.042274,
		-0.897788, -0.152509, -0.413181,
		11.636218, 13.895991, 21.387413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.733346, 14.590507, 21.875637>,  <12.264669, 14.002748, 21.676640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.733346, 14.590507, 21.875637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.542989, 14.256514, 21.765125>,  <11.428775, 14.056118, 21.698818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.542989, 14.256514, 21.765125>,  <11.733346, 14.590507, 21.875637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.542989, 14.256514, 21.765125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514710, 0.009689, 0.857310,
		-0.713162, 0.550191, -0.434384,
		-0.475893, -0.834982, -0.276279,
		11.400221, 14.006019, 21.682241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.104198, 14.717945, 22.052622>,  <11.733346, 14.590507, 21.875637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.104198, 14.717945, 22.052622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.101623, 14.320302, 22.009344>,  <11.100078, 14.081716, 21.983377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.101623, 14.320302, 22.009344>,  <11.104198, 14.717945, 22.052622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.101623, 14.320302, 22.009344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613903, -0.081480, 0.785165,
		-0.789355, 0.071476, -0.609762,
		-0.006437, -0.994109, -0.108196,
		11.099691, 14.022069, 21.976885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.479660, 14.623595, 22.315472>,  <11.104198, 14.717945, 22.052622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.479660, 14.623595, 22.315472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.660486, 14.268058, 22.345394>,  <10.768982, 14.054735, 22.363348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.660486, 14.268058, 22.345394>,  <10.479660, 14.623595, 22.315472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.660486, 14.268058, 22.345394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461642, -0.161382, 0.872263,
		-0.763233, -0.428852, -0.483282,
		0.452065, -0.888843, 0.074804,
		10.796105, 14.001405, 22.367836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.912731, 14.099807, 22.493158>,  <10.479660, 14.623595, 22.315472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.912731, 14.099807, 22.493158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.258390, 13.934716, 22.608332>,  <10.465786, 13.835662, 22.677437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.258390, 13.934716, 22.608332>,  <9.912731, 14.099807, 22.493158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.258390, 13.934716, 22.608332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431599, -0.313599, 0.845800,
		-0.258782, -0.855171, -0.449126,
		0.864149, -0.412720, 0.287937,
		10.517634, 13.810899, 22.694712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.779018, 13.492181, 22.851080>,  <9.912731, 14.099807, 22.493158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.779018, 13.492181, 22.851080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.163693, 13.555740, 22.940439>,  <10.394499, 13.593876, 22.994055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.163693, 13.555740, 22.940439>,  <9.779018, 13.492181, 22.851080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.163693, 13.555740, 22.940439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170495, -0.291464, 0.941265,
		0.214678, -0.943292, -0.253206,
		0.961689, 0.158899, 0.223398,
		10.452200, 13.603410, 23.007458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.042801, 12.824030, 23.137472>,  <9.779018, 13.492181, 22.851080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.042801, 12.824030, 23.137472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.294084, 13.113785, 23.251045>,  <10.444854, 13.287638, 23.319189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.294084, 13.113785, 23.251045>,  <10.042801, 12.824030, 23.137472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.294084, 13.113785, 23.251045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017046, -0.352027, 0.935835,
		0.777859, -0.592738, -0.208798,
		0.628208, 0.724388, 0.283931,
		10.482546, 13.331101, 23.336224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.330393, 12.544250, 23.655741>,  <10.042801, 12.824030, 23.137472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.330393, 12.544250, 23.655741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.431089, 12.927267, 23.711941>,  <10.491508, 13.157077, 23.745661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.431089, 12.927267, 23.711941>,  <10.330393, 12.544250, 23.655741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.431089, 12.927267, 23.711941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026920, -0.138193, 0.990039,
		0.967420, -0.253015, -0.009011,
		0.251741, 0.957542, 0.140502,
		10.506612, 13.214530, 23.754091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.789230, 12.588511, 24.274576>,  <10.330393, 12.544250, 23.655741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.789230, 12.588511, 24.274576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.645676, 12.960026, 24.237576>,  <10.559543, 13.182935, 24.215376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.645676, 12.960026, 24.237576>,  <10.789230, 12.588511, 24.274576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.645676, 12.960026, 24.237576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088103, 0.064953, 0.993991,
		0.929214, 0.364880, 0.058518,
		-0.358887, 0.928786, -0.092502,
		10.538010, 13.238662, 24.209826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.179708, 13.003176, 24.662312>,  <10.789230, 12.588511, 24.274576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.179708, 13.003176, 24.662312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.815447, 13.162424, 24.618107>,  <10.596890, 13.257973, 24.591583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.815447, 13.162424, 24.618107>,  <11.179708, 13.003176, 24.662312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.815447, 13.162424, 24.618107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145391, -0.058405, 0.987649,
		0.386748, 0.915472, 0.111070,
		-0.910652, 0.398120, -0.110513,
		10.542252, 13.281860, 24.584953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.099780, 13.363483, 25.183706>,  <11.179708, 13.003176, 24.662312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.099780, 13.363483, 25.183706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.712960, 13.339274, 25.084789>,  <10.480868, 13.324749, 25.025438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.712960, 13.339274, 25.084789>,  <11.099780, 13.363483, 25.183706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.712960, 13.339274, 25.084789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253865, 0.155944, 0.954586,
		-0.019210, 0.985910, -0.166170,
		-0.967049, -0.060523, -0.247293,
		10.422846, 13.321117, 25.010601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.808721, 13.890437, 25.518227>,  <11.099780, 13.363483, 25.183706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.808721, 13.890437, 25.518227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.487775, 13.659452, 25.457897>,  <10.295207, 13.520862, 25.421700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.487775, 13.659452, 25.457897>,  <10.808721, 13.890437, 25.518227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.487775, 13.659452, 25.457897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287110, 0.151908, 0.945776,
		-0.523238, 0.802161, -0.287681,
		-0.802365, -0.577462, -0.150824,
		10.247066, 13.486214, 25.412649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.136679, 14.204592, 25.804333>,  <10.808721, 13.890437, 25.518227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.136679, 14.204592, 25.804333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.076759, 13.809907, 25.779161>,  <10.040808, 13.573096, 25.764059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.076759, 13.809907, 25.779161>,  <10.136679, 14.204592, 25.804333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.076759, 13.809907, 25.779161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389074, 0.000316, 0.921206,
		-0.908946, 0.162479, -0.383951,
		-0.149798, -0.986712, -0.062929,
		10.031820, 13.513893, 25.760283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.474188, 14.142530, 26.147188>,  <10.136679, 14.204592, 25.804333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.474188, 14.142530, 26.147188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.647325, 13.782036, 26.155413>,  <9.751206, 13.565740, 26.160347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.647325, 13.782036, 26.155413>,  <9.474188, 14.142530, 26.147188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.647325, 13.782036, 26.155413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091821, -0.021384, 0.995546,
		-0.896782, -0.432801, -0.092008,
		0.432841, -0.901236, 0.020563,
		9.777177, 13.511665, 26.161581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.958077, 13.785879, 26.554670>,  <9.474188, 14.142530, 26.147188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.958077, 13.785879, 26.554670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.286744, 13.557977, 26.548489>,  <9.483944, 13.421235, 26.544779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.286744, 13.557977, 26.548489>,  <8.958077, 13.785879, 26.554670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.286744, 13.557977, 26.548489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002453, -0.023580, 0.999719,
		-0.569962, -0.821475, -0.017977,
		0.821668, -0.569757, -0.015455,
		9.533244, 13.387050, 26.543852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.873382, 13.300406, 27.073061>,  <8.958077, 13.785879, 26.554670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.873382, 13.300406, 27.073061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.270147, 13.300056, 27.022301>,  <9.508207, 13.299848, 26.991844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.270147, 13.300056, 27.022301>,  <8.873382, 13.300406, 27.073061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.270147, 13.300056, 27.022301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126663, -0.054987, 0.990421,
		-0.007837, -0.998486, -0.054433,
		0.991915, -0.000867, -0.126902,
		9.567721, 13.299795, 26.984230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.203341, 12.664995, 27.356918>,  <8.873382, 13.300406, 27.073061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.203341, 12.664995, 27.356918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.523843, 12.904209, 27.349463>,  <9.716144, 13.047737, 27.344990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.523843, 12.904209, 27.349463>,  <9.203341, 12.664995, 27.356918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.523843, 12.904209, 27.349463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100988, -0.104471, 0.989387,
		0.589740, -0.794633, -0.144102,
		0.801254, 0.598034, -0.018638,
		9.764219, 13.083619, 27.343872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.710356, 12.292152, 27.634192>,  <9.203341, 12.664995, 27.356918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.710356, 12.292152, 27.634192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.846337, 12.666854, 27.667479>,  <9.927926, 12.891675, 27.687450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.846337, 12.666854, 27.667479>,  <9.710356, 12.292152, 27.634192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.846337, 12.666854, 27.667479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024076, -0.079790, 0.996521,
		0.940134, -0.340774, -0.004571,
		0.339953, 0.936754, 0.083218,
		9.948323, 12.947880, 27.692444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.262716, 12.191770, 28.189207>,  <9.710356, 12.292152, 27.634192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.262716, 12.191770, 28.189207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.187687, 12.583817, 28.163330>,  <10.142669, 12.819045, 28.147804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.187687, 12.583817, 28.163330>,  <10.262716, 12.191770, 28.189207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.187687, 12.583817, 28.163330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041700, 0.073747, 0.996405,
		0.981365, 0.184202, -0.054704,
		-0.187574, 0.980118, -0.064692,
		10.131414, 12.877851, 28.143923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.832006, 12.671324, 28.461245>,  <10.262716, 12.191770, 28.189207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.832006, 12.671324, 28.461245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.480680, 12.859532, 28.495117>,  <10.269884, 12.972457, 28.515442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.480680, 12.859532, 28.495117>,  <10.832006, 12.671324, 28.461245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.480680, 12.859532, 28.495117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124804, 0.054671, 0.990674,
		0.461503, 0.880694, -0.106741,
		-0.878316, 0.470521, 0.084683,
		10.217185, 13.000689, 28.520521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.957152, 13.204015, 28.967857>,  <10.832006, 12.671324, 28.461245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.957152, 13.204015, 28.967857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.557834, 13.188940, 28.950045>,  <10.318242, 13.179895, 28.939358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.557834, 13.188940, 28.950045>,  <10.957152, 13.204015, 28.967857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.557834, 13.188940, 28.950045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043046, -0.039375, 0.998297,
		-0.039375, 0.998514, 0.037686,
		-0.998297, -0.037686, -0.044532,
		10.258345, 13.177634, 28.936686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.683741, 13.669312, 29.464695>,  <10.957152, 13.204015, 28.967857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.683741, 13.669312, 29.464695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.390285, 13.407207, 29.392691>,  <10.214212, 13.249945, 29.349487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.390285, 13.407207, 29.392691>,  <10.683741, 13.669312, 29.464695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.390285, 13.407207, 29.392691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106703, -0.150535, 0.982830,
		-0.671110, 0.740250, 0.040520,
		-0.733639, -0.655263, -0.180012,
		10.170194, 13.210629, 29.338688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.167223, 13.906988, 29.860828>,  <10.683741, 13.669312, 29.464695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.167223, 13.906988, 29.860828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.081039, 13.521713, 29.796520>,  <10.029329, 13.290548, 29.757935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.081039, 13.521713, 29.796520>,  <10.167223, 13.906988, 29.860828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.081039, 13.521713, 29.796520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214578, -0.113915, 0.970041,
		-0.952646, 0.243502, -0.182135,
		-0.215459, -0.963188, -0.160771,
		10.016402, 13.232757, 29.748289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.648285, 13.716665, 30.276447>,  <10.167223, 13.906988, 29.860828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.648285, 13.716665, 30.276447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.797665, 13.354231, 30.196907>,  <9.887293, 13.136770, 30.149183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.797665, 13.354231, 30.196907>,  <9.648285, 13.716665, 30.276447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.797665, 13.354231, 30.196907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193304, -0.285665, 0.938631,
		-0.907286, -0.312093, -0.281832,
		0.373450, -0.906087, -0.198851,
		9.909699, 13.082405, 30.137251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.224539, 13.138302, 30.620855>,  <9.648285, 13.716665, 30.276447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.224539, 13.138302, 30.620855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.581965, 12.973822, 30.548796>,  <9.796421, 12.875134, 30.505560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.581965, 12.973822, 30.548796>,  <9.224539, 13.138302, 30.620855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.581965, 12.973822, 30.548796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042029, -0.476147, 0.878361,
		-0.446952, -0.777306, -0.442753,
		0.893570, -0.411193, -0.180145,
		9.850036, 12.850462, 30.494751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.233929, 12.364841, 30.758570>,  <9.224539, 13.138302, 30.620855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.233929, 12.364841, 30.758570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.611111, 12.496785, 30.776590>,  <9.837420, 12.575952, 30.787403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.611111, 12.496785, 30.776590>,  <9.233929, 12.364841, 30.758570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.611111, 12.496785, 30.776590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127441, -0.482647, 0.866493,
		0.307565, -0.811322, -0.497152,
		0.942954, 0.329861, 0.045050,
		9.893997, 12.595743, 30.790106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.630153, 11.826296, 30.882383>,  <9.233929, 12.364841, 30.758570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.630153, 11.826296, 30.882383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.825152, 12.139346, 31.037222>,  <9.942152, 12.327176, 31.130125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.825152, 12.139346, 31.037222>,  <9.630153, 11.826296, 30.882383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.825152, 12.139346, 31.037222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073957, -0.478765, 0.874823,
		0.869986, -0.397846, -0.291277,
		0.487498, 0.782625, 0.387095,
		9.971402, 12.374134, 31.153351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.209837, 11.658848, 31.072662>,  <9.630153, 11.826296, 30.882383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.209837, 11.658848, 31.072662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.143801, 11.968217, 31.317469>,  <10.104178, 12.153838, 31.464352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.143801, 11.968217, 31.317469>,  <10.209837, 11.658848, 31.072662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.143801, 11.968217, 31.317469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367716, -0.527521, 0.765837,
		0.915167, 0.351480, -0.197311,
		-0.165091, 0.773423, 0.612014,
		10.094274, 12.200244, 31.501074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.801229, 11.930635, 31.532429>,  <10.209837, 11.658848, 31.072662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.801229, 11.930635, 31.532429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.444468, 11.985462, 31.704811>,  <10.230411, 12.018358, 31.808241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.444468, 11.985462, 31.704811>,  <10.801229, 11.930635, 31.532429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.444468, 11.985462, 31.704811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235473, -0.672824, 0.701327,
		0.386086, 0.726994, 0.567818,
		-0.891902, 0.137067, 0.430955,
		10.176897, 12.026583, 31.834097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.192955, 11.307871, 31.512651>,  <10.801229, 11.930635, 31.532429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.192955, 11.307871, 31.512651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.017640, 10.994632, 31.336168>,  <10.912451, 10.806688, 31.230278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.017640, 10.994632, 31.336168>,  <11.192955, 11.307871, 31.512651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.017640, 10.994632, 31.336168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851336, -0.519130, 0.075701,
		-0.288325, -0.342436, 0.894207,
		-0.438287, -0.783097, -0.441206,
		10.886154, 10.759703, 31.203806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.656733, 10.751720, 31.659773>,  <11.192955, 11.307871, 31.512651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.656733, 10.751720, 31.659773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.432586, 10.588629, 31.371399>,  <11.298098, 10.490774, 31.198376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.432586, 10.588629, 31.371399>,  <11.656733, 10.751720, 31.659773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.432586, 10.588629, 31.371399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635120, -0.770228, -0.058059,
		-0.531611, -0.490414, 0.690568,
		-0.560368, -0.407729, -0.720934,
		11.264476, 10.466311, 31.155119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.466530, 9.928057, 31.794693>,  <11.656733, 10.751720, 31.659773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.466530, 9.928057, 31.794693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.453691, 10.026660, 31.407249>,  <11.445989, 10.085822, 31.174784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.453691, 10.026660, 31.407249>,  <11.466530, 9.928057, 31.794693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.453691, 10.026660, 31.407249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529533, -0.817725, -0.225656,
		-0.847682, -0.520153, -0.104288,
		-0.032097, 0.246508, -0.968609,
		11.444062, 10.100613, 31.116667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.037053, 9.436407, 31.250914>,  <11.466530, 9.928057, 31.794693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.037053, 9.436407, 31.250914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.372329, 9.618208, 31.130337>,  <11.573494, 9.727288, 31.057991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.372329, 9.618208, 31.130337>,  <11.037053, 9.436407, 31.250914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.372329, 9.618208, 31.130337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487481, -0.872197, 0.040426,
		-0.244543, -0.180832, -0.952627,
		0.838189, 0.454502, -0.301442,
		11.623785, 9.754559, 31.039904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.302135, 9.097699, 30.643566>,  <11.037053, 9.436407, 31.250914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.302135, 9.097699, 30.643566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.601250, 9.271708, 30.844193>,  <11.780719, 9.376114, 30.964567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.601250, 9.271708, 30.844193>,  <11.302135, 9.097699, 30.643566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.601250, 9.271708, 30.844193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522691, -0.851550, -0.040709,
		0.409397, 0.292604, -0.864162,
		0.747789, 0.435024, 0.501564,
		11.825586, 9.402216, 30.994661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.340725, 9.669054, 30.219166>,  <11.302135, 9.097699, 30.643566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.340725, 9.669054, 30.219166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.969161, 9.816583, 30.232430>,  <10.746222, 9.905100, 30.240387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.969161, 9.816583, 30.232430>,  <11.340725, 9.669054, 30.219166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.969161, 9.816583, 30.232430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090196, 0.312194, -0.945727,
		-0.359156, -0.875503, -0.323266,
		-0.928909, 0.368821, 0.033160,
		10.690489, 9.927229, 30.242378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.716018, 9.472777, 29.689693>,  <11.340725, 9.669054, 30.219166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.716018, 9.472777, 29.689693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.698508, 9.851359, 29.817636>,  <10.688003, 10.078508, 29.894402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.698508, 9.851359, 29.817636>,  <10.716018, 9.472777, 29.689693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.698508, 9.851359, 29.817636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037789, 0.321503, -0.946154,
		-0.998327, -0.029330, -0.049839,
		-0.043774, 0.946454, 0.319857,
		10.685376, 10.135296, 29.913593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.109314, 9.823077, 29.342154>,  <10.716018, 9.472777, 29.689693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.109314, 9.823077, 29.342154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.395682, 10.077478, 29.457363>,  <10.567503, 10.230120, 29.526489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.395682, 10.077478, 29.457363>,  <10.109314, 9.823077, 29.342154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.395682, 10.077478, 29.457363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197564, 0.211130, -0.957284,
		-0.669646, 0.742242, 0.025502,
		0.715921, 0.636003, 0.288023,
		10.610458, 10.268279, 29.543770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.051932, 10.255792, 28.860207>,  <10.109314, 9.823077, 29.342154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.051932, 10.255792, 28.860207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.407127, 10.359894, 29.011862>,  <10.620244, 10.422355, 29.102856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.407127, 10.359894, 29.011862>,  <10.051932, 10.255792, 28.860207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.407127, 10.359894, 29.011862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315685, 0.254526, -0.914090,
		-0.334397, 0.931388, 0.143857,
		0.887987, 0.260255, 0.379138,
		10.673524, 10.437970, 29.125603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.219082, 10.986578, 28.634794>,  <10.051932, 10.255792, 28.860207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.219082, 10.986578, 28.634794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.558610, 10.797333, 28.729172>,  <10.762326, 10.683785, 28.785799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.558610, 10.797333, 28.729172>,  <10.219082, 10.986578, 28.634794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.558610, 10.797333, 28.729172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411443, 0.310900, -0.856771,
		0.331995, 0.824321, 0.458557,
		0.848819, -0.473114, 0.235944,
		10.813255, 10.655398, 28.799955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.634705, 11.516827, 28.389107>,  <10.219082, 10.986578, 28.634794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.634705, 11.516827, 28.389107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.817123, 11.162180, 28.419922>,  <10.926575, 10.949392, 28.438410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.817123, 11.162180, 28.419922>,  <10.634705, 11.516827, 28.389107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.817123, 11.162180, 28.419922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470142, 0.166516, -0.866740,
		0.755638, 0.431492, 0.492774,
		0.456046, -0.886616, 0.077037,
		10.953938, 10.896195, 28.443033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.377419, 11.607931, 28.252747>,  <10.634705, 11.516827, 28.389107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.377419, 11.607931, 28.252747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.311563, 11.220991, 28.175671>,  <11.272050, 10.988827, 28.129425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.311563, 11.220991, 28.175671>,  <11.377419, 11.607931, 28.252747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.311563, 11.220991, 28.175671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615657, 0.051843, -0.786307,
		0.770623, -0.248086, 0.587021,
		-0.164639, -0.967350, -0.192688,
		11.262172, 10.930786, 28.117865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.050547, 11.332589, 28.076414>,  <11.377419, 11.607931, 28.252747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.050547, 11.332589, 28.076414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.774441, 11.074439, 27.945553>,  <11.608777, 10.919549, 27.867037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.774441, 11.074439, 27.945553>,  <12.050547, 11.332589, 28.076414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.774441, 11.074439, 27.945553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595971, -0.250715, -0.762863,
		0.410310, -0.721550, 0.557684,
		-0.690264, -0.645374, -0.327152,
		11.567362, 10.880827, 27.847406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.442758, 10.942592, 27.732485>,  <12.050547, 11.332589, 28.076414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.442758, 10.942592, 27.732485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.090021, 10.812013, 27.596373>,  <11.878380, 10.733665, 27.514706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.090021, 10.812013, 27.596373>,  <12.442758, 10.942592, 27.732485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.090021, 10.812013, 27.596373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429588, -0.258590, -0.865208,
		0.194453, -0.909155, 0.368273,
		-0.881840, -0.326448, -0.340279,
		11.825469, 10.714078, 27.494289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.616981, 10.217478, 27.389088>,  <12.442758, 10.942592, 27.732485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.616981, 10.217478, 27.389088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.262829, 10.350522, 27.259180>,  <12.050338, 10.430348, 27.181236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.262829, 10.350522, 27.259180>,  <12.616981, 10.217478, 27.389088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.262829, 10.350522, 27.259180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249115, -0.250375, -0.935550,
		-0.392489, -0.909220, 0.138818,
		-0.885378, 0.332611, -0.324770,
		11.997215, 10.450305, 27.161749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.304224, 9.621180, 27.107010>,  <12.616981, 10.217478, 27.389088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.304224, 9.621180, 27.107010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.166397, 9.967430, 26.961700>,  <12.083701, 10.175180, 26.874516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.166397, 9.967430, 26.961700>,  <12.304224, 9.621180, 27.107010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.166397, 9.967430, 26.961700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263232, -0.282354, -0.922489,
		-0.901101, -0.413484, -0.130571,
		-0.344567, 0.865626, -0.363271,
		12.063027, 10.227118, 26.852718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.006495, 9.415556, 26.491419>,  <12.304224, 9.621180, 27.107010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.006495, 9.415556, 26.491419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.061954, 9.810195, 26.456999>,  <12.095228, 10.046978, 26.436346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.061954, 9.810195, 26.456999>,  <12.006495, 9.415556, 26.491419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.061954, 9.810195, 26.456999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138601, -0.105366, -0.984727,
		-0.980595, 0.124601, -0.151352,
		0.138645, 0.986596, -0.086051,
		12.103547, 10.106174, 26.431183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.805068, 9.470733, 25.852093>,  <12.006495, 9.415556, 26.491419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.805068, 9.470733, 25.852093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.978522, 9.824109, 25.923077>,  <12.082595, 10.036135, 25.965668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.978522, 9.824109, 25.923077>,  <11.805068, 9.470733, 25.852093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.978522, 9.824109, 25.923077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150205, 0.123316, -0.980934,
		-0.888481, 0.452023, -0.079223,
		0.433635, 0.883441, 0.177460,
		12.108613, 10.089142, 25.976315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.548386, 9.958762, 25.354128>,  <11.805068, 9.470733, 25.852093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.548386, 9.958762, 25.354128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.875341, 10.154104, 25.476362>,  <12.071515, 10.271309, 25.549704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.875341, 10.154104, 25.476362>,  <11.548386, 9.958762, 25.354128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.875341, 10.154104, 25.476362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201198, 0.255054, -0.945763,
		-0.539808, 0.834541, 0.110223,
		0.817390, 0.488354, 0.305588,
		12.120559, 10.300611, 25.568039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.412506, 10.627999, 24.987633>,  <11.548386, 9.958762, 25.354128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.412506, 10.627999, 24.987633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.799212, 10.609557, 25.088223>,  <12.031236, 10.598492, 25.148577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.799212, 10.609557, 25.088223>,  <11.412506, 10.627999, 24.987633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.799212, 10.609557, 25.088223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248577, 0.399548, -0.882367,
		-0.059796, 0.915552, 0.397729,
		0.966765, -0.046104, 0.251477,
		12.089242, 10.595726, 25.163666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.738020, 11.278647, 24.851780>,  <11.412506, 10.627999, 24.987633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.738020, 11.278647, 24.851780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.029461, 11.005044, 24.837526>,  <12.204326, 10.840882, 24.828974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.029461, 11.005044, 24.837526>,  <11.738020, 11.278647, 24.851780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.029461, 11.005044, 24.837526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185298, 0.246933, -0.951151,
		0.659395, 0.686408, 0.306662,
		0.728603, -0.684008, -0.035636,
		12.248042, 10.799842, 24.826836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.293678, 11.619205, 24.532141>,  <11.738020, 11.278647, 24.851780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.293678, 11.619205, 24.532141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.378350, 11.232529, 24.474596>,  <12.429153, 11.000523, 24.440069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.378350, 11.232529, 24.474596>,  <12.293678, 11.619205, 24.532141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.378350, 11.232529, 24.474596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378268, 0.216763, -0.899960,
		0.901169, 0.136085, 0.411553,
		0.211681, -0.966693, -0.143864,
		12.441854, 10.942521, 24.431437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.982033, 11.514256, 24.298485>,  <12.293678, 11.619205, 24.532141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.982033, 11.514256, 24.298485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.802912, 11.181052, 24.168522>,  <12.695439, 10.981130, 24.090544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.802912, 11.181052, 24.168522>,  <12.982033, 11.514256, 24.298485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.802912, 11.181052, 24.168522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532327, 0.043583, -0.845416,
		0.718402, -0.551536, 0.423918,
		-0.447802, -0.833012, -0.324908,
		12.668571, 10.931149, 24.071049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.401462, 11.204808, 23.870958>,  <12.982033, 11.514256, 24.298485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.401462, 11.204808, 23.870958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.086991, 10.975483, 23.778664>,  <12.898309, 10.837888, 23.723288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.086991, 10.975483, 23.778664>,  <13.401462, 11.204808, 23.870958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.086991, 10.975483, 23.778664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354434, -0.112428, -0.928297,
		0.506264, -0.811586, 0.291590,
		-0.786176, -0.573313, -0.230736,
		12.851138, 10.803489, 23.709442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.741177, 10.584270, 23.689943>,  <13.401462, 11.204808, 23.870958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.741177, 10.584270, 23.689943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.375190, 10.613462, 23.531193>,  <13.155598, 10.630979, 23.435944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.375190, 10.613462, 23.531193>,  <13.741177, 10.584270, 23.689943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.375190, 10.613462, 23.531193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392541, -0.066984, -0.917292,
		-0.093533, -0.995081, 0.032638,
		-0.914966, 0.072985, -0.396875,
		13.100699, 10.635357, 23.412130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.718606, 10.061199, 22.994061>,  <13.741177, 10.584270, 23.689943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.718606, 10.061199, 22.994061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.421592, 10.327106, 22.961262>,  <13.243383, 10.486650, 22.941584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.421592, 10.327106, 22.961262>,  <13.718606, 10.061199, 22.994061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.421592, 10.327106, 22.961262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181427, 0.081774, -0.979998,
		-0.644767, -0.742560, -0.181327,
		-0.742536, 0.664768, -0.081995,
		13.198831, 10.526537, 22.936663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.287565, 9.848910, 22.380276>,  <13.718606, 10.061199, 22.994061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.287565, 9.848910, 22.380276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.184636, 10.231572, 22.434824>,  <13.122879, 10.461169, 22.467552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.184636, 10.231572, 22.434824>,  <13.287565, 9.848910, 22.380276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.184636, 10.231572, 22.434824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078035, 0.161234, -0.983826,
		-0.963170, -0.242518, -0.116141,
		-0.257321, 0.956655, 0.136371,
		13.107440, 10.518569, 22.475735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.857256, 9.905436, 21.780418>,  <13.287565, 9.848910, 22.380276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.857256, 9.905436, 21.780418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.949912, 10.284627, 21.867764>,  <13.005506, 10.512141, 21.920170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.949912, 10.284627, 21.867764>,  <12.857256, 9.905436, 21.780418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.949912, 10.284627, 21.867764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178615, 0.179204, -0.967462,
		-0.956263, 0.263106, -0.127812,
		0.231641, 0.947977, 0.218360,
		13.019404, 10.569020, 21.933271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.453950, 10.223464, 21.339584>,  <12.857256, 9.905436, 21.780418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.453950, 10.223464, 21.339584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.735518, 10.483340, 21.454405>,  <12.904460, 10.639266, 21.523296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.735518, 10.483340, 21.454405>,  <12.453950, 10.223464, 21.339584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.735518, 10.483340, 21.454405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078237, 0.330755, -0.940468,
		-0.705956, 0.684474, 0.181996,
		0.703922, 0.649690, 0.287049,
		12.946695, 10.678247, 21.540520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.233589, 10.921011, 21.232330>,  <12.453950, 10.223464, 21.339584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.233589, 10.921011, 21.232330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.631786, 10.955924, 21.247154>,  <12.870705, 10.976872, 21.256048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.631786, 10.955924, 21.247154>,  <12.233589, 10.921011, 21.232330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.631786, 10.955924, 21.247154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004221, 0.431236, -0.902229,
		-0.094732, 0.898007, 0.429662,
		0.995494, 0.087284, 0.037062,
		12.930434, 10.982109, 21.258272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.401003, 11.550494, 21.035236>,  <12.233589, 10.921011, 21.232330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.401003, 11.550494, 21.035236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.735116, 11.339520, 20.973120>,  <12.935584, 11.212936, 20.935850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.735116, 11.339520, 20.973120>,  <12.401003, 11.550494, 21.035236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.735116, 11.339520, 20.973120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075483, 0.389770, -0.917814,
		0.544613, 0.754913, 0.365380,
		0.835284, -0.527433, -0.155291,
		12.985701, 11.181291, 20.926533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.795985, 11.985266, 20.547031>,  <12.401003, 11.550494, 21.035236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.795985, 11.985266, 20.547031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.994975, 11.638436, 20.536434>,  <13.114368, 11.430339, 20.530077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.994975, 11.638436, 20.536434>,  <12.795985, 11.985266, 20.547031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.994975, 11.638436, 20.536434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083643, 0.078340, -0.993411,
		0.863437, 0.491980, 0.111497,
		0.497474, -0.867074, -0.026491,
		13.144217, 11.378314, 20.528486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.532169, 12.088179, 20.331562>,  <12.795985, 11.985266, 20.547031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.532169, 12.088179, 20.331562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.458220, 11.705496, 20.241644>,  <13.413850, 11.475886, 20.187693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.458220, 11.705496, 20.241644>,  <13.532169, 12.088179, 20.331562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.458220, 11.705496, 20.241644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320984, 0.157411, -0.933912,
		0.928866, -0.244811, 0.277986,
		-0.184873, -0.956707, -0.224794,
		13.402758, 11.418484, 20.174206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.164143, 11.836226, 19.963278>,  <13.532169, 12.088179, 20.331562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.164143, 11.836226, 19.963278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.849178, 11.597237, 19.902603>,  <13.660200, 11.453843, 19.866199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.849178, 11.597237, 19.902603>,  <14.164143, 11.836226, 19.963278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.849178, 11.597237, 19.902603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138237, 0.068654, -0.988017,
		0.600729, -0.798944, 0.028534,
		-0.787411, -0.597475, -0.151686,
		13.612955, 11.417994, 19.857098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.445501, 11.420763, 19.550714>,  <14.164143, 11.836226, 19.963278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.445501, 11.420763, 19.550714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.048800, 11.402729, 19.502722>,  <13.810780, 11.391909, 19.473927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.048800, 11.402729, 19.502722>,  <14.445501, 11.420763, 19.550714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.048800, 11.402729, 19.502722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123291, -0.079754, -0.989160,
		0.035028, -0.995794, 0.084655,
		-0.991752, -0.045086, -0.119979,
		13.751275, 11.389204, 19.466728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.306073, 10.939853, 19.108839>,  <14.445501, 11.420763, 19.550714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.306073, 10.939853, 19.108839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.968923, 11.148565, 19.056221>,  <13.766632, 11.273793, 19.024651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.968923, 11.148565, 19.056221>,  <14.306073, 10.939853, 19.108839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.968923, 11.148565, 19.056221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153119, -0.001794, -0.988206,
		-0.515865, -0.853077, -0.078383,
		-0.842875, 0.521783, -0.131547,
		13.716060, 11.305099, 19.016756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.988382, 10.535685, 18.541014>,  <14.306073, 10.939853, 19.108839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.988382, 10.535685, 18.541014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.810228, 10.893804, 18.544487>,  <13.703336, 11.108675, 18.546572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.810228, 10.893804, 18.544487>,  <13.988382, 10.535685, 18.541014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.810228, 10.893804, 18.544487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104230, -0.042213, -0.993657,
		-0.889252, -0.443464, 0.112118,
		-0.445384, 0.895297, 0.008684,
		13.676613, 11.162393, 18.547092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.506044, 10.488394, 18.000019>,  <13.988382, 10.535685, 18.541014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.506044, 10.488394, 18.000019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.523391, 10.882362, 18.067011>,  <13.533798, 11.118744, 18.107206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.523391, 10.882362, 18.067011>,  <13.506044, 10.488394, 18.000019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.523391, 10.882362, 18.067011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156124, 0.172256, -0.972601,
		-0.986785, 0.016030, 0.161240,
		0.043366, 0.984922, 0.167477,
		13.536401, 11.177839, 18.117254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.864669, 10.843053, 17.724781>,  <13.506044, 10.488394, 18.000019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.864669, 10.843053, 17.724781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.165547, 11.106484, 17.716053>,  <13.346074, 11.264544, 17.710815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.165547, 11.106484, 17.716053>,  <12.864669, 10.843053, 17.724781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.165547, 11.106484, 17.716053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269299, 0.277021, -0.922354,
		-0.601398, 0.699667, 0.385728,
		0.752195, 0.658579, -0.021820,
		13.391206, 11.304058, 17.709507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.602128, 11.379563, 17.136127>,  <12.864669, 10.843053, 17.724781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.602128, 11.379563, 17.136127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.989463, 11.446936, 17.209833>,  <13.221864, 11.487359, 17.254057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.989463, 11.446936, 17.209833>,  <12.602128, 11.379563, 17.136127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.989463, 11.446936, 17.209833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079133, 0.492957, -0.866448,
		-0.236771, 0.853595, 0.464021,
		0.968338, 0.168430, 0.184265,
		13.279964, 11.497465, 17.265112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.673731, 12.044032, 16.891670>,  <12.602128, 11.379563, 17.136127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.673731, 12.044032, 16.891670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.043796, 11.895713, 16.924133>,  <13.265834, 11.806722, 16.943611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.043796, 11.895713, 16.924133>,  <12.673731, 12.044032, 16.891670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.043796, 11.895713, 16.924133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250483, 0.435757, -0.864508,
		0.285193, 0.820137, 0.496024,
		0.925161, -0.370798, 0.081156,
		13.321344, 11.784473, 16.948481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.094149, 12.504996, 16.564514>,  <12.673731, 12.044032, 16.891670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.094149, 12.504996, 16.564514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.332042, 12.185779, 16.603340>,  <13.474777, 11.994248, 16.626635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.332042, 12.185779, 16.603340>,  <13.094149, 12.504996, 16.564514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.332042, 12.185779, 16.603340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493974, 0.267505, -0.827303,
		0.634259, 0.539971, 0.553306,
		0.594732, -0.798043, 0.097064,
		13.510461, 11.946365, 16.632460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.832743, 12.705187, 16.673992>,  <13.094149, 12.504996, 16.564514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.832743, 12.705187, 16.673992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.842081, 12.342001, 16.506634>,  <13.847684, 12.124089, 16.406218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.842081, 12.342001, 16.506634>,  <13.832743, 12.705187, 16.673992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.842081, 12.342001, 16.506634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595509, 0.348790, -0.723681,
		0.803009, -0.232264, 0.548844,
		0.023347, -0.907964, -0.418397,
		13.849085, 12.069612, 16.381115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.564887, 12.511474, 16.528610>,  <13.832743, 12.705187, 16.673992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.564887, 12.511474, 16.528610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.348557, 12.276467, 16.287832>,  <14.218760, 12.135464, 16.143366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.348557, 12.276467, 16.287832>,  <14.564887, 12.511474, 16.528610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.348557, 12.276467, 16.287832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409034, 0.441621, -0.798537,
		0.734984, -0.678083, 0.001475,
		-0.540823, -0.587516, -0.601944,
		14.186311, 12.100213, 16.107248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.967299, 12.037056, 16.079557>,  <14.564887, 12.511474, 16.528610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.967299, 12.037056, 16.079557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.626404, 12.109502, 15.883236>,  <14.421866, 12.152969, 15.765443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.626404, 12.109502, 15.883236>,  <14.967299, 12.037056, 16.079557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.626404, 12.109502, 15.883236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522430, 0.343999, -0.780212,
		0.027527, -0.921337, -0.387789,
		-0.852237, 0.181116, -0.490804,
		14.370732, 12.163836, 15.735994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.332874, 12.154109, 15.513522>,  <14.967299, 12.037056, 16.079557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.332874, 12.154109, 15.513522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.950015, 12.197260, 15.406018>,  <14.720300, 12.223150, 15.341516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.950015, 12.197260, 15.406018>,  <15.332874, 12.154109, 15.513522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.950015, 12.197260, 15.406018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289287, 0.312836, -0.904680,
		-0.013516, -0.943661, -0.330638,
		-0.957147, 0.107877, -0.268760,
		14.662871, 12.229623, 15.325390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.536108, 12.477494, 16.169050>,  <15.332874, 12.154109, 15.513522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.536108, 12.477494, 16.169050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.928146, 12.550898, 16.138756>,  <16.163370, 12.594939, 16.120579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.928146, 12.550898, 16.138756>,  <15.536108, 12.477494, 16.169050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.928146, 12.550898, 16.138756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046467, 0.158846, 0.986209,
		0.193013, -0.970098, 0.147157,
		0.980095, 0.183514, -0.075737,
		16.222176, 12.605949, 16.116035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.884198, 12.054167, 16.583118>,  <15.536108, 12.477494, 16.169050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.884198, 12.054167, 16.583118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.138042, 12.358939, 16.531376>,  <16.290348, 12.541802, 16.500330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.138042, 12.358939, 16.531376>,  <15.884198, 12.054167, 16.583118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.138042, 12.358939, 16.531376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106717, 0.079380, 0.991116,
		0.765430, -0.642776, -0.030936,
		0.634609, 0.761931, -0.129354,
		16.328424, 12.587519, 16.492569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.603573, 11.807720, 16.822706>,  <15.884198, 12.054167, 16.583118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.603573, 11.807720, 16.822706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.552059, 12.203287, 16.852249>,  <16.521151, 12.440628, 16.869974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.552059, 12.203287, 16.852249>,  <16.603573, 11.807720, 16.822706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.552059, 12.203287, 16.852249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258684, -0.038397, 0.965198,
		0.957339, 0.143408, -0.250872,
		-0.128785, 0.988918, 0.073857,
		16.513424, 12.499963, 16.874407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.174870, 11.980427, 17.168413>,  <16.603573, 11.807720, 16.822706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.174870, 11.980427, 17.168413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.930187, 12.290502, 17.231533>,  <16.783379, 12.476546, 17.269405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.930187, 12.290502, 17.231533>,  <17.174870, 11.980427, 17.168413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.930187, 12.290502, 17.231533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272725, 0.019400, 0.961896,
		0.742589, 0.631433, -0.223280,
		-0.611705, 0.775188, 0.157801,
		16.746675, 12.523058, 17.278873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.301905, 12.194448, 17.810917>,  <17.174870, 11.980427, 17.168413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.301905, 12.194448, 17.810917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.979374, 12.428976, 17.779764>,  <16.785856, 12.569693, 17.761072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.979374, 12.428976, 17.779764>,  <17.301905, 12.194448, 17.810917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.979374, 12.428976, 17.779764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132521, -0.050756, 0.989880,
		0.576434, 0.808488, 0.118626,
		-0.806327, 0.586321, -0.077884,
		16.737476, 12.604873, 17.756399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.352486, 12.711154, 18.314859>,  <17.301905, 12.194448, 17.810917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.352486, 12.711154, 18.314859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.964489, 12.656277, 18.234570>,  <16.731691, 12.623350, 18.186396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.964489, 12.656277, 18.234570>,  <17.352486, 12.711154, 18.314859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.964489, 12.656277, 18.234570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207890, 0.039918, 0.977337,
		-0.126071, 0.989740, -0.067241,
		-0.969994, -0.137193, -0.200724,
		16.673491, 12.615119, 18.174353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.974403, 13.295157, 18.607294>,  <17.352486, 12.711154, 18.314859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.974403, 13.295157, 18.607294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.704678, 13.001003, 18.580441>,  <16.542841, 12.824511, 18.564329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.704678, 13.001003, 18.580441>,  <16.974403, 13.295157, 18.607294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.704678, 13.001003, 18.580441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214141, 0.107730, 0.970844,
		-0.706712, 0.669031, -0.230121,
		-0.674315, -0.735386, -0.067133,
		16.502382, 12.780388, 18.560301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.486464, 13.486982, 19.193928>,  <16.974403, 13.295157, 18.607294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.486464, 13.486982, 19.193928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.359791, 13.131000, 19.062664>,  <16.283787, 12.917410, 18.983906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.359791, 13.131000, 19.062664>,  <16.486464, 13.486982, 19.193928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.359791, 13.131000, 19.062664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384922, -0.195622, 0.901980,
		-0.866919, 0.411956, -0.280614,
		-0.316682, -0.889957, -0.328159,
		16.264786, 12.864013, 18.964216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.761982, 13.394159, 19.531548>,  <16.486464, 13.486982, 19.193928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.761982, 13.394159, 19.531548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.930011, 13.038319, 19.459826>,  <16.030828, 12.824815, 19.416792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.930011, 13.038319, 19.459826>,  <15.761982, 13.394159, 19.531548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.930011, 13.038319, 19.459826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260062, -0.307303, 0.915387,
		-0.869429, -0.337899, -0.360441,
		0.420073, -0.889601, -0.179303,
		16.056032, 12.771439, 19.406034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.343568, 12.655881, 19.534784>,  <15.761982, 13.394159, 19.531548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.343568, 12.655881, 19.534784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.721491, 12.570005, 19.633778>,  <15.948244, 12.518480, 19.693174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.721491, 12.570005, 19.633778>,  <15.343568, 12.655881, 19.534784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.721491, 12.570005, 19.633778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314441, -0.382045, 0.869004,
		-0.092015, -0.898860, -0.428466,
		0.944807, -0.214689, 0.247484,
		16.004932, 12.505599, 19.708023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.228819, 12.150704, 20.039803>,  <15.343568, 12.655881, 19.534784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.228819, 12.150704, 20.039803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.626294, 12.192348, 20.056517>,  <15.864779, 12.217335, 20.066545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.626294, 12.192348, 20.056517>,  <15.228819, 12.150704, 20.039803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.626294, 12.192348, 20.056517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005007, -0.330931, 0.943642,
		0.112071, -0.937894, -0.328320,
		0.993687, 0.104111, 0.041784,
		15.924400, 12.223581, 20.069052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.501645, 11.487194, 20.291155>,  <15.228819, 12.150704, 20.039803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.501645, 11.487194, 20.291155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.805137, 11.738376, 20.360443>,  <15.987231, 11.889085, 20.402016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.805137, 11.738376, 20.360443>,  <15.501645, 11.487194, 20.291155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.805137, 11.738376, 20.360443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263493, -0.539046, 0.800001,
		0.595738, -0.561340, -0.574451,
		0.758728, 0.627954, 0.173221,
		16.032755, 11.926762, 20.412409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.068192, 11.024274, 20.353241>,  <15.501645, 11.487194, 20.291155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.068192, 11.024274, 20.353241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.150347, 11.370811, 20.535345>,  <16.199640, 11.578734, 20.644608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.150347, 11.370811, 20.535345>,  <16.068192, 11.024274, 20.353241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.150347, 11.370811, 20.535345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204414, -0.492895, 0.845736,
		0.957095, -0.080642, -0.278327,
		0.205388, 0.866344, 0.455263,
		16.211964, 11.630714, 20.671925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.640505, 10.866665, 20.828291>,  <16.068192, 11.024274, 20.353241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.640505, 10.866665, 20.828291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.483025, 11.203502, 20.975739>,  <16.388536, 11.405603, 21.064207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.483025, 11.203502, 20.975739>,  <16.640505, 10.866665, 20.828291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.483025, 11.203502, 20.975739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152278, -0.335720, 0.929572,
		0.906538, 0.422105, 0.003940,
		-0.393700, 0.842092, 0.368620,
		16.364914, 11.456129, 21.086325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.996317, 11.009220, 21.425369>,  <16.640505, 10.866665, 20.828291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.996317, 11.009220, 21.425369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.684423, 11.256574, 21.464590>,  <16.497288, 11.404985, 21.488123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.684423, 11.256574, 21.464590>,  <16.996317, 11.009220, 21.425369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.684423, 11.256574, 21.464590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038883, -0.204131, 0.978171,
		0.624901, 0.758901, 0.183213,
		-0.779735, 0.618384, 0.098053,
		16.450502, 11.442089, 21.494005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.161270, 11.567099, 21.945885>,  <16.996317, 11.009220, 21.425369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.161270, 11.567099, 21.945885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.775145, 11.462768, 21.950575>,  <16.543468, 11.400168, 21.953388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.775145, 11.462768, 21.950575>,  <17.161270, 11.567099, 21.945885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.775145, 11.462768, 21.950575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032373, -0.075013, 0.996657,
		-0.259077, 0.962467, 0.080855,
		-0.965314, -0.260828, 0.011724,
		16.485550, 11.384520, 21.954092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.961908, 11.542439, 22.685673>,  <17.161270, 11.567099, 21.945885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.961908, 11.542439, 22.685673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.611961, 11.439595, 22.521479>,  <16.401993, 11.377889, 22.422962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.611961, 11.439595, 22.521479>,  <16.961908, 11.542439, 22.685673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.611961, 11.439595, 22.521479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330251, -0.303297, 0.893837,
		-0.354313, 0.917554, 0.180435,
		-0.874869, -0.257109, -0.410486,
		16.349501, 11.362462, 22.398333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.346592, 11.978179, 22.954559>,  <16.961908, 11.542439, 22.685673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.346592, 11.978179, 22.954559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.266266, 11.599549, 22.853626>,  <16.218069, 11.372372, 22.793066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.266266, 11.599549, 22.853626>,  <16.346592, 11.978179, 22.954559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.266266, 11.599549, 22.853626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293695, -0.187556, 0.937318,
		-0.934567, 0.262337, -0.240340,
		-0.200816, -0.946573, -0.252331,
		16.206020, 11.315578, 22.777927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.749956, 11.880635, 23.226873>,  <16.346592, 11.978179, 22.954559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.749956, 11.880635, 23.226873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.854620, 11.501631, 23.153379>,  <15.917418, 11.274228, 23.109283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.854620, 11.501631, 23.153379>,  <15.749956, 11.880635, 23.226873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.854620, 11.501631, 23.153379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233241, -0.246800, 0.940579,
		-0.936554, -0.203256, -0.285576,
		0.261659, -0.947511, -0.183734,
		15.933118, 11.217378, 23.098259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.098652, 11.582650, 23.330317>,  <15.749956, 11.880635, 23.226873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.098652, 11.582650, 23.330317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.362871, 11.285934, 23.376663>,  <15.521403, 11.107905, 23.404470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.362871, 11.285934, 23.376663>,  <15.098652, 11.582650, 23.330317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.362871, 11.285934, 23.376663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499525, -0.319015, 0.805422,
		-0.560490, -0.589897, -0.581267,
		0.660549, -0.741789, 0.115864,
		15.561036, 11.063398, 23.411423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.745616, 11.000899, 23.496864>,  <15.098652, 11.582650, 23.330317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.745616, 11.000899, 23.496864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.099298, 10.896752, 23.651983>,  <15.311508, 10.834264, 23.745054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.099298, 10.896752, 23.651983>,  <14.745616, 11.000899, 23.496864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.099298, 10.896752, 23.651983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461909, -0.364025, 0.808781,
		-0.069412, -0.894257, -0.442139,
		0.884207, -0.260367, 0.387797,
		15.364561, 10.818642, 23.768322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.563446, 10.379840, 23.932549>,  <14.745616, 11.000899, 23.496864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.563446, 10.379840, 23.932549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.932431, 10.479291, 24.050699>,  <15.153822, 10.538961, 24.121590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.932431, 10.479291, 24.050699>,  <14.563446, 10.379840, 23.932549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.932431, 10.479291, 24.050699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270090, -0.131124, 0.953865,
		0.275890, -0.959682, -0.053805,
		0.922462, 0.248630, 0.295376,
		15.209170, 10.553880, 24.139313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.755157, 9.775599, 24.331375>,  <14.563446, 10.379840, 23.932549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.755157, 9.775599, 24.331375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.994911, 10.052300, 24.492479>,  <15.138763, 10.218322, 24.589142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.994911, 10.052300, 24.492479>,  <14.755157, 9.775599, 24.331375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.994911, 10.052300, 24.492479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448192, -0.126863, 0.884890,
		0.663222, -0.710901, 0.234000,
		0.599384, 0.691755, 0.402759,
		15.174726, 10.259827, 24.613306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.106811, 9.483429, 24.976404>,  <14.755157, 9.775599, 24.331375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.106811, 9.483429, 24.976404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.165243, 9.877364, 25.013830>,  <15.200303, 10.113726, 25.036285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.165243, 9.877364, 25.013830>,  <15.106811, 9.483429, 24.976404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.165243, 9.877364, 25.013830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329701, -0.040707, 0.943207,
		0.932715, -0.168634, 0.318756,
		0.146081, 0.984838, 0.093567,
		15.209067, 10.172815, 25.041901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.518937, 9.605711, 25.600393>,  <15.106811, 9.483429, 24.976404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.518937, 9.605711, 25.600393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.300488, 9.935883, 25.543236>,  <15.169419, 10.133986, 25.508942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.300488, 9.935883, 25.543236>,  <15.518937, 9.605711, 25.600393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.300488, 9.935883, 25.543236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299276, -0.032924, 0.953598,
		0.782423, 0.563546, 0.265011,
		-0.546121, 0.825428, -0.142895,
		15.136652, 10.183511, 25.500368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.664447, 9.987656, 26.238636>,  <15.518937, 9.605711, 25.600393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.664447, 9.987656, 26.238636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.338213, 10.145239, 26.069111>,  <15.142472, 10.239789, 25.967396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.338213, 10.145239, 26.069111>,  <15.664447, 9.987656, 26.238636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.338213, 10.145239, 26.069111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332223, 0.280867, 0.900412,
		0.473759, 0.875163, -0.098189,
		-0.815586, 0.393958, -0.423813,
		15.093537, 10.263426, 25.941967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.594230, 10.708561, 26.463640>,  <15.664447, 9.987656, 26.238636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.594230, 10.708561, 26.463640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.234903, 10.562203, 26.366358>,  <15.019307, 10.474389, 26.307987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.234903, 10.562203, 26.366358>,  <15.594230, 10.708561, 26.463640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.234903, 10.562203, 26.366358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326654, 0.186036, 0.926654,
		-0.293812, 0.911873, -0.286640,
		-0.898316, -0.365894, -0.243208,
		14.965408, 10.452435, 26.293396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.065881, 11.156421, 26.833813>,  <15.594230, 10.708561, 26.463640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.065881, 11.156421, 26.833813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.886079, 10.817451, 26.720802>,  <14.778198, 10.614070, 26.652996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.886079, 10.817451, 26.720802>,  <15.065881, 11.156421, 26.833813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.886079, 10.817451, 26.720802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378082, -0.106066, 0.919676,
		-0.809321, 0.520216, -0.272718,
		-0.449504, -0.847423, -0.282525,
		14.751227, 10.563225, 26.636045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.483138, 11.286906, 27.139765>,  <15.065881, 11.156421, 26.833813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.483138, 11.286906, 27.139765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.496393, 10.899534, 27.040936>,  <14.504347, 10.667111, 26.981638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.496393, 10.899534, 27.040936>,  <14.483138, 11.286906, 27.139765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.496393, 10.899534, 27.040936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597619, -0.217347, 0.771759,
		-0.801095, 0.122081, -0.585955,
		0.033138, -0.968430, -0.247074,
		14.506334, 10.609005, 26.966814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.822251, 11.087871, 27.128153>,  <14.483138, 11.286906, 27.139765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.822251, 11.087871, 27.128153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.056694, 10.769462, 27.188587>,  <14.197359, 10.578416, 27.224848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.056694, 10.769462, 27.188587>,  <13.822251, 11.087871, 27.128153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.056694, 10.769462, 27.188587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475381, -0.186845, 0.859710,
		-0.656119, -0.575705, -0.487925,
		0.586106, -0.796023, 0.151086,
		14.232526, 10.530655, 27.233913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.398905, 10.568119, 27.455313>,  <13.822251, 11.087871, 27.128153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.398905, 10.568119, 27.455313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.769139, 10.454447, 27.555338>,  <13.991280, 10.386243, 27.615353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.769139, 10.454447, 27.555338>,  <13.398905, 10.568119, 27.455313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.769139, 10.454447, 27.555338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308198, -0.182201, 0.933711,
		-0.219787, -0.941297, -0.256229,
		0.925585, -0.284187, 0.250061,
		14.046815, 10.369192, 27.630356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.240131, 10.149019, 28.010836>,  <13.398905, 10.568119, 27.455313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.240131, 10.149019, 28.010836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.636518, 10.189058, 28.046526>,  <13.874351, 10.213081, 28.067940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.636518, 10.189058, 28.046526>,  <13.240131, 10.149019, 28.010836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.636518, 10.189058, 28.046526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091574, 0.019084, 0.995615,
		0.097958, -0.994794, 0.028078,
		0.990969, 0.100100, 0.089227,
		13.933809, 10.219088, 28.073294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.473688, 9.577885, 28.433296>,  <13.240131, 10.149019, 28.010836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.473688, 9.577885, 28.433296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.705636, 9.903389, 28.449007>,  <13.844805, 10.098692, 28.458433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.705636, 9.903389, 28.449007>,  <13.473688, 9.577885, 28.433296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.705636, 9.903389, 28.449007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036238, -0.073927, 0.996605,
		0.813903, -0.576478, -0.072357,
		0.579870, 0.813762, 0.039279,
		13.879597, 10.147517, 28.460791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.092779, 9.483701, 28.879690>,  <13.473688, 9.577885, 28.433296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.092779, 9.483701, 28.879690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.074196, 9.882550, 28.855734>,  <14.063046, 10.121860, 28.841360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.074196, 9.882550, 28.855734>,  <14.092779, 9.483701, 28.879690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.074196, 9.882550, 28.855734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060072, 0.062636, 0.996227,
		0.997112, 0.042686, -0.062809,
		-0.046459, 0.997123, -0.059891,
		14.060258, 10.181687, 28.837767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.358633, 9.638439, 29.487700>,  <14.092779, 9.483701, 28.879690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.358633, 9.638439, 29.487700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.212435, 9.997152, 29.387943>,  <14.124716, 10.212380, 29.328089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.212435, 9.997152, 29.387943>,  <14.358633, 9.638439, 29.487700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.212435, 9.997152, 29.387943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031723, 0.279772, 0.959542,
		0.930273, 0.342797, -0.130704,
		-0.365495, 0.896782, -0.249390,
		14.102786, 10.266187, 29.313126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.782533, 10.264435, 29.783062>,  <14.358633, 9.638439, 29.487700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.782533, 10.264435, 29.783062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.405753, 10.374598, 29.706244>,  <14.179686, 10.440695, 29.660152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.405753, 10.374598, 29.706244>,  <14.782533, 10.264435, 29.783062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.405753, 10.374598, 29.706244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083556, 0.361709, 0.928539,
		0.325191, 0.890684, -0.317700,
		-0.941950, 0.275407, -0.192046,
		14.123168, 10.457219, 29.648630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.728738, 10.926075, 30.083393>,  <14.782533, 10.264435, 29.783062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.728738, 10.926075, 30.083393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.344323, 10.823216, 30.042828>,  <14.113674, 10.761501, 30.018488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.344323, 10.823216, 30.042828>,  <14.728738, 10.926075, 30.083393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.344323, 10.823216, 30.042828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205004, 0.416936, 0.885516,
		-0.185426, 0.871802, -0.453407,
		-0.961036, -0.257147, -0.101412,
		14.056012, 10.746072, 30.012403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.322891, 11.443768, 29.716795>,  <14.728738, 10.926075, 30.083393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.322891, 11.443768, 29.716795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.160420, 11.689751, 29.987156>,  <14.062938, 11.837340, 30.149372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.160420, 11.689751, 29.987156>,  <14.322891, 11.443768, 29.716795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.160420, 11.689751, 29.987156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169093, 0.676313, -0.716944,
		-0.898013, -0.405497, -0.170718,
		-0.406178, 0.614958, 0.675904,
		14.038568, 11.874238, 30.189928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.647238, 11.624392, 29.599672>,  <14.322891, 11.443768, 29.716795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.647238, 11.624392, 29.599672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.827851, 11.925072, 29.791948>,  <13.936219, 12.105480, 29.907314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.827851, 11.925072, 29.791948>,  <13.647238, 11.624392, 29.599672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.827851, 11.925072, 29.791948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012670, 0.544084, -0.838935,
		-0.892164, 0.372717, 0.255196,
		0.451533, 0.751701, 0.480690,
		13.963311, 12.150582, 29.936155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.311553, 12.217580, 29.384649>,  <13.647238, 11.624392, 29.599672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.311553, 12.217580, 29.384649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.684710, 12.310766, 29.494514>,  <13.908604, 12.366678, 29.560434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.684710, 12.310766, 29.494514>,  <13.311553, 12.217580, 29.384649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.684710, 12.310766, 29.494514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109113, 0.543962, -0.831985,
		-0.343231, 0.806121, 0.482039,
		0.932892, 0.232966, 0.274663,
		13.964577, 12.380656, 29.576914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.414082, 12.898403, 29.094294>,  <13.311553, 12.217580, 29.384649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.414082, 12.898403, 29.094294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.788586, 12.799501, 29.194120>,  <14.013288, 12.740161, 29.254017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.788586, 12.799501, 29.194120>,  <13.414082, 12.898403, 29.094294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.788586, 12.799501, 29.194120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350472, 0.706347, -0.615015,
		-0.024215, 0.663280, 0.747980,
		0.936260, -0.247253, 0.249565,
		14.069464, 12.725326, 29.268990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.847960, 13.397408, 29.445662>,  <13.414082, 12.898403, 29.094294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.847960, 13.397408, 29.445662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.113636, 13.156874, 29.268011>,  <14.273042, 13.012552, 29.161421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.113636, 13.156874, 29.268011>,  <13.847960, 13.397408, 29.445662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.113636, 13.156874, 29.268011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350915, 0.775366, -0.525039,
		0.660084, 0.192875, 0.726008,
		0.664189, -0.601337, -0.444124,
		14.312893, 12.976473, 29.134773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.424094, 13.852495, 29.383209>,  <13.847960, 13.397408, 29.445662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.424094, 13.852495, 29.383209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.512950, 13.550403, 29.136541>,  <14.566263, 13.369147, 28.988541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.512950, 13.550403, 29.136541>,  <14.424094, 13.852495, 29.383209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.512950, 13.550403, 29.136541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691574, 0.567880, -0.446359,
		0.687298, -0.327318, 0.648447,
		0.222139, -0.755232, -0.616668,
		14.579592, 13.323833, 28.951542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.146367, 13.798706, 29.380241>,  <14.424094, 13.852495, 29.383209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.146367, 13.798706, 29.380241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.989449, 13.649888, 29.043745>,  <14.895298, 13.560597, 28.841846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.989449, 13.649888, 29.043745>,  <15.146367, 13.798706, 29.380241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.989449, 13.649888, 29.043745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793529, 0.325649, -0.514066,
		0.465205, -0.869215, 0.167478,
		-0.392295, -0.372045, -0.841241,
		14.871759, 13.538275, 28.791372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.746263, 13.652767, 29.104353>,  <15.146367, 13.798706, 29.380241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.746263, 13.652767, 29.104353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.468225, 13.563457, 28.831005>,  <15.301403, 13.509870, 28.666996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.468225, 13.563457, 28.831005>,  <15.746263, 13.652767, 29.104353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.468225, 13.563457, 28.831005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669169, 0.146523, -0.728522,
		0.262792, -0.963679, 0.047564,
		-0.695092, -0.223279, -0.683370,
		15.259698, 13.496473, 28.625994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.073277, 13.222201, 28.696127>,  <15.746263, 13.652767, 29.104353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.073277, 13.222201, 28.696127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.792671, 13.347722, 28.440186>,  <15.624309, 13.423035, 28.286621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.792671, 13.347722, 28.440186>,  <16.073277, 13.222201, 28.696127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.792671, 13.347722, 28.440186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712402, 0.332841, -0.617819,
		0.019096, -0.889239, -0.457045,
		-0.701512, 0.313802, -0.639852,
		15.582218, 13.441862, 28.248230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.239870, 12.990224, 28.068361>,  <16.073277, 13.222201, 28.696127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.239870, 12.990224, 28.068361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.004921, 13.303224, 27.985718>,  <15.863952, 13.491024, 27.936131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.004921, 13.303224, 27.985718>,  <16.239870, 12.990224, 28.068361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.004921, 13.303224, 27.985718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649503, 0.303457, -0.697179,
		-0.482845, -0.543698, -0.686478,
		-0.587372, 0.782500, -0.206611,
		15.828710, 13.537973, 27.923735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.169500, 13.003107, 27.386410>,  <16.239870, 12.990224, 28.068361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.169500, 13.003107, 27.386410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.100107, 13.374793, 27.516926>,  <16.058472, 13.597804, 27.595236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.100107, 13.374793, 27.516926>,  <16.169500, 13.003107, 27.386410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.100107, 13.374793, 27.516926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564764, 0.365289, -0.740003,
		-0.806812, 0.055900, -0.588158,
		-0.173482, 0.929214, 0.326290,
		16.048063, 13.653558, 27.614813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.817161, 13.391132, 26.818256>,  <16.169500, 13.003107, 27.386410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.817161, 13.391132, 26.818256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.976056, 13.653545, 27.074949>,  <16.071394, 13.810993, 27.228966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.976056, 13.653545, 27.074949>,  <15.817161, 13.391132, 26.818256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.976056, 13.653545, 27.074949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562328, 0.378619, -0.735143,
		-0.725250, 0.652892, -0.218504,
		0.397239, 0.656033, 0.641733,
		16.095228, 13.850355, 27.267469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.708213, 13.993864, 26.449303>,  <15.817161, 13.391132, 26.818256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.708213, 13.993864, 26.449303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.963181, 14.119767, 26.730619>,  <16.116163, 14.195309, 26.899410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.963181, 14.119767, 26.730619>,  <15.708213, 13.993864, 26.449303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.963181, 14.119767, 26.730619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497415, 0.528984, -0.687572,
		-0.588449, 0.788101, 0.180620,
		0.637421, 0.314758, 0.703294,
		16.154408, 14.214194, 26.941608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.747570, 14.820163, 26.514240>,  <15.708213, 13.993864, 26.449303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.747570, 14.820163, 26.514240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.090790, 14.629719, 26.591255>,  <16.296722, 14.515452, 26.637465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.090790, 14.629719, 26.591255>,  <15.747570, 14.820163, 26.514240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.090790, 14.629719, 26.591255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418383, 0.430618, -0.799702,
		0.297835, 0.766739, 0.568687,
		0.858050, -0.476109, 0.192538,
		16.348206, 14.486886, 26.649017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.248043, 15.204106, 26.214411>,  <15.747570, 14.820163, 26.514240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.248043, 15.204106, 26.214411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.448645, 14.865708, 26.286840>,  <16.569006, 14.662670, 26.330299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.448645, 14.865708, 26.286840>,  <16.248043, 15.204106, 26.214411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.448645, 14.865708, 26.286840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497345, 0.110650, -0.860468,
		0.707914, 0.521584, 0.476242,
		0.501503, -0.845994, 0.181076,
		16.599096, 14.611910, 26.341164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.860941, 15.310929, 25.890827>,  <16.248043, 15.204106, 26.214411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.860941, 15.310929, 25.890827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.851292, 14.913220, 25.932474>,  <16.845501, 14.674595, 25.957462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.851292, 14.913220, 25.932474>,  <16.860941, 15.310929, 25.890827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.851292, 14.913220, 25.932474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498828, -0.102226, -0.860651,
		0.866365, 0.031173, 0.498438,
		-0.024124, -0.994273, 0.104115,
		16.844055, 14.614939, 25.963709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.555105, 15.116148, 25.735094>,  <16.860941, 15.310929, 25.890827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.555105, 15.116148, 25.735094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.317400, 14.796735, 25.696735>,  <17.174776, 14.605087, 25.673721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.317400, 14.796735, 25.696735>,  <17.555105, 15.116148, 25.735094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.317400, 14.796735, 25.696735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380547, -0.174133, -0.908219,
		0.708544, -0.576215, 0.407360,
		-0.594264, -0.798533, -0.095896,
		17.139120, 14.557175, 25.667967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.977943, 14.544479, 25.412413>,  <17.555105, 15.116148, 25.735094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.977943, 14.544479, 25.412413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.611994, 14.394075, 25.353590>,  <17.392424, 14.303833, 25.318296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.611994, 14.394075, 25.353590>,  <17.977943, 14.544479, 25.412413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.611994, 14.394075, 25.353590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291345, -0.362677, -0.885203,
		0.279511, -0.852691, 0.441351,
		-0.914873, -0.376009, -0.147055,
		17.337532, 14.281273, 25.309473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.039324, 13.808797, 25.235136>,  <17.977943, 14.544479, 25.412413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.039324, 13.808797, 25.235136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.693810, 13.949856, 25.091187>,  <17.486500, 14.034492, 25.004816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.693810, 13.949856, 25.091187>,  <18.039324, 13.808797, 25.235136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.693810, 13.949856, 25.091187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256493, -0.307010, -0.916491,
		-0.433685, -0.883959, 0.174740,
		-0.863788, 0.352649, -0.359875,
		17.434673, 14.055650, 24.983225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.971252, 13.349825, 24.672968>,  <18.039324, 13.808797, 25.235136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.971252, 13.349825, 24.672968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.714499, 13.652043, 24.620613>,  <17.560446, 13.833374, 24.589199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.714499, 13.652043, 24.620613>,  <17.971252, 13.349825, 24.672968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.714499, 13.652043, 24.620613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018138, -0.185608, -0.982456,
		-0.766585, -0.628252, 0.132843,
		-0.641887, 0.755545, -0.130889,
		17.521933, 13.878707, 24.581347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.414183, 13.124264, 24.226164>,  <17.971252, 13.349825, 24.672968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.414183, 13.124264, 24.226164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.439354, 13.518510, 24.163425>,  <17.454456, 13.755057, 24.125782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.439354, 13.518510, 24.163425>,  <17.414183, 13.124264, 24.226164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.439354, 13.518510, 24.163425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110974, -0.149274, -0.982549,
		-0.991829, 0.079234, 0.099984,
		0.062926, 0.985616, -0.156848,
		17.458231, 13.814195, 24.116371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.985432, 13.210673, 23.706808>,  <17.414183, 13.124264, 24.226164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.985432, 13.210673, 23.706808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.206404, 13.543950, 23.696909>,  <17.338987, 13.743917, 23.690969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.206404, 13.543950, 23.696909>,  <16.985432, 13.210673, 23.706808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.206404, 13.543950, 23.696909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044725, -0.000021, -0.998999,
		-0.832359, 0.552983, 0.037253,
		0.552429, 0.833193, -0.024750,
		17.372133, 13.793908, 23.689484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.536482, 13.593995, 23.248037>,  <16.985432, 13.210673, 23.706808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.536482, 13.593995, 23.248037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.891163, 13.777757, 23.268833>,  <17.103971, 13.888014, 23.281311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.891163, 13.777757, 23.268833>,  <16.536482, 13.593995, 23.248037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.891163, 13.777757, 23.268833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058465, 0.222965, -0.973072,
		-0.458625, 0.859787, 0.224563,
		0.886705, 0.459404, 0.051990,
		17.157175, 13.915578, 23.284430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.441774, 14.339477, 23.057117>,  <16.536482, 13.593995, 23.248037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.441774, 14.339477, 23.057117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.822783, 14.231184, 23.001389>,  <17.051388, 14.166208, 22.967951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.822783, 14.231184, 23.001389>,  <16.441774, 14.339477, 23.057117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.822783, 14.231184, 23.001389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075477, 0.233346, -0.969460,
		0.294974, 0.933945, 0.201832,
		0.952520, -0.270732, -0.139323,
		17.108538, 14.149964, 22.959591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.821527, 14.741813, 22.608898>,  <16.441774, 14.339477, 23.057117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.821527, 14.741813, 22.608898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.050406, 14.419880, 22.545860>,  <17.187733, 14.226720, 22.508038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.050406, 14.419880, 22.545860>,  <16.821527, 14.741813, 22.608898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.050406, 14.419880, 22.545860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056118, 0.230133, -0.971540,
		0.818194, 0.547068, 0.176847,
		0.572197, -0.804832, -0.157593,
		17.222065, 14.178431, 22.498583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.196817, 14.932768, 21.986677>,  <16.821527, 14.741813, 22.608898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.196817, 14.932768, 21.986677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.285698, 14.543773, 22.014660>,  <17.339025, 14.310375, 22.031448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.285698, 14.543773, 22.014660>,  <17.196817, 14.932768, 21.986677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.285698, 14.543773, 22.014660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210540, -0.022197, -0.977333,
		0.951998, 0.231893, 0.199815,
		0.222202, -0.972488, 0.069955,
		17.352358, 14.252027, 22.035646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.943926, 14.918217, 21.733723>,  <17.196817, 14.932768, 21.986677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.943926, 14.918217, 21.733723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.803671, 14.545679, 21.694427>,  <17.719519, 14.322156, 21.670851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.803671, 14.545679, 21.694427>,  <17.943926, 14.918217, 21.733723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.803671, 14.545679, 21.694427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511087, -0.102401, -0.853407,
		0.784757, -0.349444, 0.511904,
		-0.350637, -0.931345, -0.098237,
		17.698481, 14.266275, 21.664957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.469894, 14.485982, 21.489479>,  <17.943926, 14.918217, 21.733723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.469894, 14.485982, 21.489479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.135571, 14.285186, 21.400547>,  <17.934977, 14.164708, 21.347187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.135571, 14.285186, 21.400547>,  <18.469894, 14.485982, 21.489479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.135571, 14.285186, 21.400547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324656, -0.125335, -0.937491,
		0.442745, -0.855744, 0.267730,
		-0.835808, -0.501990, -0.222331,
		17.884829, 14.134589, 21.333847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.612650, 13.772549, 21.276129>,  <18.469894, 14.485982, 21.489479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.612650, 13.772549, 21.276129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.263123, 13.871617, 21.108747>,  <18.053406, 13.931059, 21.008318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.263123, 13.871617, 21.108747>,  <18.612650, 13.772549, 21.276129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.263123, 13.871617, 21.108747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416125, -0.064328, -0.907029,
		-0.251564, -0.966706, -0.046852,
		-0.873816, 0.247672, -0.418453,
		18.000978, 13.945919, 20.983212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.636669, 13.316830, 20.710402>,  <18.612650, 13.772549, 21.276129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.636669, 13.316830, 20.710402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.344631, 13.570600, 20.608843>,  <18.169409, 13.722861, 20.547907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.344631, 13.570600, 20.608843>,  <18.636669, 13.316830, 20.710402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.344631, 13.570600, 20.608843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366311, 0.049698, -0.929164,
		-0.576867, -0.771385, -0.268681,
		-0.730097, 0.634425, -0.253898,
		18.125603, 13.760927, 20.532673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.314152, 13.052845, 20.065048>,  <18.636669, 13.316830, 20.710402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.314152, 13.052845, 20.065048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.243107, 13.446383, 20.074018>,  <18.200480, 13.682506, 20.079401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.243107, 13.446383, 20.074018>,  <18.314152, 13.052845, 20.065048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.243107, 13.446383, 20.074018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276648, 0.071786, -0.958286,
		-0.944414, -0.164002, -0.284929,
		-0.177614, 0.983845, 0.022425,
		18.189823, 13.741536, 20.080746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.965012, 13.153084, 19.481115>,  <18.314152, 13.052845, 20.065048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.965012, 13.153084, 19.481115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.097103, 13.517812, 19.578714>,  <18.176357, 13.736649, 19.637274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.097103, 13.517812, 19.578714>,  <17.965012, 13.153084, 19.481115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.097103, 13.517812, 19.578714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324625, 0.133017, -0.936443,
		-0.886323, 0.388447, -0.252073,
		0.330229, 0.911820, 0.243996,
		18.196171, 13.791358, 19.651913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.813240, 13.552760, 18.899515>,  <17.965012, 13.153084, 19.481115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.813240, 13.552760, 18.899515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.083176, 13.777619, 19.090755>,  <18.245138, 13.912535, 19.205500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.083176, 13.777619, 19.090755>,  <17.813240, 13.552760, 18.899515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.083176, 13.777619, 19.090755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412309, 0.250098, -0.876043,
		-0.612038, 0.788315, -0.063003,
		0.674841, 0.562149, 0.478099,
		18.285627, 13.946264, 19.234184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.933437, 14.196132, 18.429790>,  <17.813240, 13.552760, 18.899515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.933437, 14.196132, 18.429790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.247225, 14.199662, 18.677834>,  <18.435497, 14.201780, 18.826660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.247225, 14.199662, 18.677834>,  <17.933437, 14.196132, 18.429790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.247225, 14.199662, 18.677834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605637, 0.204294, -0.769069,
		-0.133472, 0.978870, 0.154916,
		0.784467, 0.008827, 0.620107,
		18.482565, 14.202311, 18.863865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.223383, 14.918001, 18.471558>,  <17.933437, 14.196132, 18.429790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.223383, 14.918001, 18.471558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.494196, 14.648089, 18.589062>,  <18.656685, 14.486142, 18.659565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.494196, 14.648089, 18.589062>,  <18.223383, 14.918001, 18.471558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.494196, 14.648089, 18.589062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655479, 0.371396, -0.657580,
		0.334621, 0.637759, 0.693752,
		0.677034, -0.674781, 0.293761,
		18.697306, 14.445655, 18.677191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.803886, 15.327405, 18.693089>,  <18.223383, 14.918001, 18.471558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.803886, 15.327405, 18.693089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.972113, 14.982445, 18.580385>,  <19.073048, 14.775469, 18.512764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.972113, 14.982445, 18.580385>,  <18.803886, 15.327405, 18.693089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.972113, 14.982445, 18.580385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509571, 0.481482, -0.713100,
		0.750641, 0.156329, 0.641950,
		0.420566, -0.862401, -0.281759,
		19.098282, 14.723724, 18.495857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.365227, 15.482603, 18.354851>,  <18.803886, 15.327405, 18.693089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.365227, 15.482603, 18.354851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.357292, 15.101034, 18.235092>,  <19.352531, 14.872093, 18.163237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.357292, 15.101034, 18.235092>,  <19.365227, 15.482603, 18.354851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.357292, 15.101034, 18.235092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589820, 0.230630, -0.773901,
		0.807291, -0.191941, 0.558068,
		-0.019836, -0.953923, -0.299396,
		19.351341, 14.814857, 18.145273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.990698, 15.336640, 18.135700>,  <19.365227, 15.482603, 18.354851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.990698, 15.336640, 18.135700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.813299, 15.024532, 17.959297>,  <19.706860, 14.837267, 17.853455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.813299, 15.024532, 17.959297>,  <19.990698, 15.336640, 18.135700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.813299, 15.024532, 17.959297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600437, 0.106655, -0.792527,
		0.665422, -0.616280, 0.421203,
		-0.443496, -0.780271, -0.441008,
		19.680250, 14.790451, 17.826994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.524548, 15.067344, 17.741566>,  <19.990698, 15.336640, 18.135700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.524548, 15.067344, 17.741566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.190241, 14.909145, 17.589211>,  <19.989656, 14.814226, 17.497797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.190241, 14.909145, 17.589211>,  <20.524548, 15.067344, 17.741566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.190241, 14.909145, 17.589211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379555, 0.085134, -0.921244,
		0.396775, -0.914514, 0.078960,
		-0.835768, -0.395496, -0.380887,
		19.939510, 14.790497, 17.474945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.666494, 14.378921, 17.310837>,  <20.524548, 15.067344, 17.741566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.666494, 14.378921, 17.310837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.336475, 14.571692, 17.192825>,  <20.138464, 14.687356, 17.122019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.336475, 14.571692, 17.192825>,  <20.666494, 14.378921, 17.310837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.336475, 14.571692, 17.192825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382440, 0.091882, -0.919401,
		-0.415980, -0.871378, -0.260117,
		-0.825046, 0.481931, -0.295029,
		20.088961, 14.716271, 17.104317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.473688, 14.108075, 16.589781>,  <20.666494, 14.378921, 17.310837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.473688, 14.108075, 16.589781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.282864, 14.458969, 16.611217>,  <20.168369, 14.669505, 16.624079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.282864, 14.458969, 16.611217>,  <20.473688, 14.108075, 16.589781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.282864, 14.458969, 16.611217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337137, 0.238973, -0.910621,
		-0.811635, -0.416354, -0.409753,
		-0.477061, 0.877235, 0.053590,
		20.139746, 14.722139, 16.627295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.877434, 14.303917, 15.992896>,  <20.473688, 14.108075, 16.589781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.877434, 14.303917, 15.992896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.087933, 14.594968, 16.168907>,  <20.214231, 14.769598, 16.274513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.087933, 14.594968, 16.168907>,  <19.877434, 14.303917, 15.992896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.087933, 14.594968, 16.168907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342722, 0.292091, -0.892874,
		-0.778207, 0.620679, -0.095662,
		0.526247, 0.727626, 0.440028,
		20.245806, 14.813255, 16.300915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.578918, 14.945649, 15.667165>,  <19.877434, 14.303917, 15.992896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.578918, 14.945649, 15.667165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.961407, 14.903148, 15.776232>,  <20.190901, 14.877646, 15.841672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.961407, 14.903148, 15.776232>,  <19.578918, 14.945649, 15.667165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.961407, 14.903148, 15.776232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290312, 0.227168, -0.929577,
		0.036830, 0.968042, 0.248070,
		0.956223, -0.106254, 0.272668,
		20.248274, 14.871272, 15.858032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.002800, 15.544265, 15.604057>,  <19.578918, 14.945649, 15.667165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.002800, 15.544265, 15.604057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.227375, 15.215157, 15.568644>,  <20.362120, 15.017692, 15.547395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.227375, 15.215157, 15.568644>,  <20.002800, 15.544265, 15.604057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.227375, 15.215157, 15.568644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287909, 0.294518, -0.911245,
		0.775820, 0.486117, 0.402236,
		0.561437, -0.822769, -0.088535,
		20.395805, 14.968326, 15.542083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.508032, 15.664088, 15.173168>,  <20.002800, 15.544265, 15.604057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.508032, 15.664088, 15.173168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.554726, 15.266983, 15.184455>,  <20.582743, 15.028720, 15.191227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.554726, 15.266983, 15.184455>,  <20.508032, 15.664088, 15.173168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.554726, 15.266983, 15.184455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691795, 0.060894, -0.719522,
		0.712596, 0.103515, 0.693896,
		0.116736, -0.992762, 0.028218,
		20.589746, 14.969154, 15.192921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.231607, 16.025070, 15.095691>,  <20.508032, 15.664088, 15.173168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.231607, 16.025070, 15.095691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.539522, 16.107321, 15.337400>,  <21.724270, 16.156672, 15.482427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.539522, 16.107321, 15.337400>,  <21.231607, 16.025070, 15.095691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.539522, 16.107321, 15.337400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378885, 0.614675, -0.691825,
		-0.513689, 0.761507, 0.395259,
		0.769785, 0.205625, 0.604275,
		21.770458, 16.169008, 15.518683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.257574, 16.805376, 15.054314>,  <21.231607, 16.025070, 15.095691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.257574, 16.805376, 15.054314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.600727, 16.647444, 15.185858>,  <21.806618, 16.552685, 15.264784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.600727, 16.647444, 15.185858>,  <21.257574, 16.805376, 15.054314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.600727, 16.647444, 15.185858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512789, 0.698920, -0.498557,
		-0.033000, 0.596338, 0.802055,
		0.857880, -0.394832, 0.328860,
		21.858091, 16.528994, 15.284515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.759127, 17.238039, 15.471515>,  <21.257574, 16.805376, 15.054314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.759127, 17.238039, 15.471515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.946526, 16.966534, 15.245315>,  <22.058964, 16.803631, 15.109594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.946526, 16.966534, 15.245315>,  <21.759127, 17.238039, 15.471515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.946526, 16.966534, 15.245315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329599, 0.728165, -0.600949,
		0.819680, 0.095154, 0.564862,
		0.468496, -0.678764, -0.565500,
		22.087074, 16.762905, 15.075665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.458509, 17.394768, 15.439703>,  <21.759127, 17.238039, 15.471515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.458509, 17.394768, 15.439703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.394735, 17.171318, 15.114121>,  <22.356470, 17.037249, 14.918773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.394735, 17.171318, 15.114121>,  <22.458509, 17.394768, 15.439703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.394735, 17.171318, 15.114121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422882, 0.706379, -0.567627,
		0.892049, -0.434705, 0.123610,
		-0.159435, -0.558624, -0.813953,
		22.346905, 17.003731, 14.869935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.119301, 17.314196, 15.038819>,  <22.458509, 17.394768, 15.439703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.119301, 17.314196, 15.038819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.798532, 17.274092, 14.803237>,  <22.606071, 17.250029, 14.661887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.798532, 17.274092, 14.803237>,  <23.119301, 17.314196, 15.038819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.798532, 17.274092, 14.803237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457515, 0.530888, -0.713328,
		0.384189, -0.841490, -0.379860,
		-0.801921, -0.100261, -0.588956,
		22.557957, 17.244013, 14.626550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.393940, 17.420965, 14.335534>,  <23.119301, 17.314196, 15.038819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.393940, 17.420965, 14.335534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.000866, 17.418804, 14.261451>,  <22.765022, 17.417507, 14.217001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.000866, 17.418804, 14.261451>,  <23.393940, 17.420965, 14.335534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.000866, 17.418804, 14.261451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141112, 0.625969, -0.766974,
		0.120077, -0.779829, -0.614368,
		-0.982684, -0.005401, -0.185208,
		22.706060, 17.417183, 14.205889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.433985, 17.582520, 13.675977>,  <23.393940, 17.420965, 14.335534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.433985, 17.582520, 13.675977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.048212, 17.629589, 13.770655>,  <22.816748, 17.657831, 13.827461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.048212, 17.629589, 13.770655>,  <23.433985, 17.582520, 13.675977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.048212, 17.629589, 13.770655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042088, 0.815661, -0.576998,
		-0.260960, -0.566437, -0.781696,
		-0.964432, 0.117673, 0.236696,
		22.758883, 17.664890, 13.841663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.964760, 17.632423, 13.002576>,  <23.433985, 17.582520, 13.675977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.964760, 17.632423, 13.002576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.782648, 17.833300, 13.296658>,  <22.673380, 17.953825, 13.473106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.782648, 17.833300, 13.296658>,  <22.964760, 17.632423, 13.002576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.782648, 17.833300, 13.296658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086523, 0.796886, -0.597901,
		-0.886134, -0.335825, -0.319356,
		-0.455281, 0.502189, 0.735205,
		22.646065, 17.983955, 13.517219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.417080, 17.947353, 12.754287>,  <22.964760, 17.632423, 13.002576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.417080, 17.947353, 12.754287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.464146, 18.163330, 13.087662>,  <22.492386, 18.292915, 13.287687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.464146, 18.163330, 13.087662>,  <22.417080, 17.947353, 12.754287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.464146, 18.163330, 13.087662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045092, 0.841308, -0.538672,
		-0.992029, 0.025802, 0.123340,
		0.117666, 0.539940, 0.833439,
		22.499445, 18.325312, 13.337693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.878868, 18.447296, 12.672312>,  <22.417080, 17.947353, 12.754287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.878868, 18.447296, 12.672312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.166695, 18.549334, 12.930660>,  <22.339392, 18.610556, 13.085670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.166695, 18.549334, 12.930660>,  <21.878868, 18.447296, 12.672312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.166695, 18.549334, 12.930660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079483, 0.954226, -0.288330,
		-0.689858, 0.156138, 0.706906,
		0.719568, 0.255094, 0.645871,
		22.382565, 18.625862, 13.124421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.590322, 18.921085, 13.257256>,  <21.878868, 18.447296, 12.672312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.590322, 18.921085, 13.257256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.982634, 18.966658, 13.193890>,  <22.218019, 18.994001, 13.155870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.982634, 18.966658, 13.193890>,  <21.590322, 18.921085, 13.257256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.982634, 18.966658, 13.193890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146020, 0.967054, -0.208528,
		0.129437, 0.227652, 0.965102,
		0.980777, 0.113933, -0.158414,
		22.276867, 19.000837, 13.146365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.725998, 19.590511, 13.488004>,  <21.590322, 18.921085, 13.257256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.725998, 19.590511, 13.488004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.082705, 19.528646, 13.317906>,  <22.296728, 19.491528, 13.215848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.082705, 19.528646, 13.317906>,  <21.725998, 19.590511, 13.488004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.082705, 19.528646, 13.317906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006742, 0.944211, -0.329272,
		0.452446, 0.290767, 0.843058,
		0.891766, -0.154661, -0.425244,
		22.350235, 19.482248, 13.190333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.982822, 20.203661, 13.536283>,  <21.725998, 19.590511, 13.488004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.982822, 20.203661, 13.536283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.248817, 20.048147, 13.281209>,  <22.408413, 19.954840, 13.128164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.248817, 20.048147, 13.281209>,  <21.982822, 20.203661, 13.536283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.248817, 20.048147, 13.281209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078901, 0.885617, -0.457666,
		0.742677, 0.254027, 0.619597,
		0.664985, -0.388784, -0.637684,
		22.448313, 19.931513, 13.089904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.622763, 20.570343, 13.587377>,  <21.982822, 20.203661, 13.536283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.622763, 20.570343, 13.587377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.585339, 20.424742, 13.216702>,  <22.562883, 20.337381, 12.994297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.585339, 20.424742, 13.216702>,  <22.622763, 20.570343, 13.587377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.585339, 20.424742, 13.216702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227681, 0.898282, -0.375833,
		0.969230, -0.246153, -0.001168,
		-0.093562, -0.364002, -0.926687,
		22.557270, 20.315540, 12.938696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.267498, 20.888012, 13.245193>,  <22.622763, 20.570343, 13.587377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.267498, 20.888012, 13.245193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.061388, 20.740793, 12.935604>,  <22.937723, 20.652462, 12.749850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.061388, 20.740793, 12.935604>,  <23.267498, 20.888012, 13.245193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.061388, 20.740793, 12.935604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310953, 0.761264, -0.569022,
		0.798624, -0.533872, -0.277815,
		-0.515275, -0.368047, -0.773972,
		22.906805, 20.630379, 12.703412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.749550, 20.874535, 12.719747>,  <23.267498, 20.888012, 13.245193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.749550, 20.874535, 12.719747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.381151, 20.911627, 12.568399>,  <23.160112, 20.933882, 12.477591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.381151, 20.911627, 12.568399>,  <23.749550, 20.874535, 12.719747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.381151, 20.911627, 12.568399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309614, 0.763711, -0.566467,
		0.236434, -0.638863, -0.732088,
		-0.920999, 0.092733, -0.378368,
		23.104851, 20.939447, 12.454889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.848116, 20.946493, 11.977828>,  <23.749550, 20.874535, 12.719747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.848116, 20.946493, 11.977828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.483353, 21.084721, 12.066373>,  <23.264494, 21.167658, 12.119500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.483353, 21.084721, 12.066373>,  <23.848116, 20.946493, 11.977828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.483353, 21.084721, 12.066373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159674, 0.795657, -0.584324,
		-0.378054, -0.497504, -0.780746,
		-0.911910, 0.345571, 0.221362,
		23.209780, 21.188393, 12.132782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.580992, 21.162239, 11.299348>,  <23.848116, 20.946493, 11.977828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.580992, 21.162239, 11.299348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.368698, 21.345325, 11.584673>,  <23.241322, 21.455177, 11.755868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.368698, 21.345325, 11.584673>,  <23.580992, 21.162239, 11.299348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.368698, 21.345325, 11.584673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028022, 0.850647, -0.524990,
		-0.847075, -0.258642, -0.464293,
		-0.530734, 0.457716, 0.713314,
		23.209478, 21.482641, 11.798667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.109415, 21.596888, 10.989819>,  <23.580992, 21.162239, 11.299348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.109415, 21.596888, 10.989819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.198668, 21.735851, 11.354131>,  <23.252220, 21.819229, 11.572718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.198668, 21.735851, 11.354131>,  <23.109415, 21.596888, 10.989819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.198668, 21.735851, 11.354131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303946, 0.862959, -0.403632,
		-0.926190, 0.366891, 0.086961,
		0.223133, 0.347409, 0.910779,
		23.265608, 21.840075, 11.627364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.935230, 22.312805, 10.978593>,  <23.109415, 21.596888, 10.989819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.935230, 22.312805, 10.978593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.129059, 22.302912, 11.328354>,  <23.245356, 22.296976, 11.538211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.129059, 22.302912, 11.328354>,  <22.935230, 22.312805, 10.978593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.129059, 22.302912, 11.328354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360148, 0.916589, -0.173659,
		-0.797173, 0.399065, 0.453059,
		0.484570, -0.024733, 0.874403,
		23.274429, 22.295492, 11.590674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.711233, 22.887501, 11.224943>,  <22.935230, 22.312805, 10.978593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.711233, 22.887501, 11.224943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.039450, 22.806437, 11.438725>,  <23.236380, 22.757799, 11.566994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.039450, 22.806437, 11.438725>,  <22.711233, 22.887501, 11.224943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.039450, 22.806437, 11.438725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222946, 0.974451, 0.027215,
		-0.526313, 0.096824, 0.844760,
		0.820542, -0.202660, 0.534453,
		23.285612, 22.745638, 11.599060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.696266, 23.352058, 11.828750>,  <22.711233, 22.887501, 11.224943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.696266, 23.352058, 11.828750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.074720, 23.223537, 11.812773>,  <23.301792, 23.146425, 11.803186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.074720, 23.223537, 11.812773>,  <22.696266, 23.352058, 11.828750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.074720, 23.223537, 11.812773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322862, 0.945522, 0.041806,
		0.024334, -0.052450, 0.998327,
		0.946133, -0.321305, -0.039943,
		23.358561, 23.127146, 11.800790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.075258, 23.833298, 12.354641>,  <22.696266, 23.352058, 11.828750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.075258, 23.833298, 12.354641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.335661, 23.684139, 12.090176>,  <23.491903, 23.594645, 11.931497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.335661, 23.684139, 12.090176>,  <23.075258, 23.833298, 12.354641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.335661, 23.684139, 12.090176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364015, 0.917694, -0.159159,
		0.666096, -0.137060, 0.733165,
		0.651006, -0.372898, -0.661164,
		23.530962, 23.572269, 11.891827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.716867, 24.041365, 12.609434>,  <23.075258, 23.833298, 12.354641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.716867, 24.041365, 12.609434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.793554, 23.932943, 12.232123>,  <23.839567, 23.867889, 12.005736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.793554, 23.932943, 12.232123>,  <23.716867, 24.041365, 12.609434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.793554, 23.932943, 12.232123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560286, 0.819330, -0.121562,
		0.805806, -0.505200, 0.308949,
		0.191718, -0.271055, -0.943278,
		23.851070, 23.851627, 11.949140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.445801, 24.159752, 12.431976>,  <23.716867, 24.041365, 12.609434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.445801, 24.159752, 12.431976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.264847, 24.155376, 12.075274>,  <24.156275, 24.152750, 11.861254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.264847, 24.155376, 12.075274>,  <24.445801, 24.159752, 12.431976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.264847, 24.155376, 12.075274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490326, 0.832180, -0.258952,
		0.744933, -0.554398, -0.371103,
		-0.452387, -0.010941, -0.891754,
		24.129131, 24.152094, 11.807748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.956970, 24.092281, 11.888494>,  <24.445801, 24.159752, 12.431976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.956970, 24.092281, 11.888494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.630379, 24.299631, 11.786788>,  <24.434423, 24.424042, 11.725764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.630379, 24.299631, 11.786788>,  <24.956970, 24.092281, 11.888494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.630379, 24.299631, 11.786788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567244, 0.802318, -0.185795,
		0.107690, -0.295928, -0.949121,
		-0.816478, 0.518375, -0.254265,
		24.385435, 24.455143, 11.710508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.657511, 23.798807, 11.792106>,  <24.956970, 24.092281, 11.888494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.657511, 23.798807, 11.792106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.342121, 23.590582, 11.661065>,  <25.152887, 23.465647, 11.582441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.342121, 23.590582, 11.661065>,  <25.657511, 23.798807, 11.792106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.342121, 23.590582, 11.661065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581130, -0.804982, -0.119549,
		-0.201480, -0.284640, 0.937223,
		-0.788476, -0.520561, -0.327600,
		25.105577, 23.434414, 11.562785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.448891, 23.091463, 12.121307>,  <25.657511, 23.798807, 11.792106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.448891, 23.091463, 12.121307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303133, 23.069599, 11.749452>,  <25.215679, 23.056480, 11.526338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303133, 23.069599, 11.749452>,  <25.448891, 23.091463, 12.121307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.303133, 23.069599, 11.749452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597710, -0.779245, -0.188469,
		-0.714115, -0.624332, 0.316621,
		-0.364392, -0.054659, -0.929640,
		25.193815, 23.053202, 11.470560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.291948, 22.382681, 11.996486>,  <25.448891, 23.091463, 12.121307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.291948, 22.382681, 11.996486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409695, 22.583075, 11.670942>,  <25.480343, 22.703310, 11.475616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409695, 22.583075, 11.670942>,  <25.291948, 22.382681, 11.996486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.409695, 22.583075, 11.670942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781452, -0.616411, -0.096798,
		-0.550165, -0.607498, -0.572944,
		0.294365, 0.500983, -0.813858,
		25.498005, 22.733370, 11.426785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.061071, 22.081671, 11.311477>,  <25.291948, 22.382681, 11.996486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.061071, 22.081671, 11.311477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402332, 22.290125, 11.320870>,  <25.607088, 22.415197, 11.326507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402332, 22.290125, 11.320870>,  <25.061071, 22.081671, 11.311477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.402332, 22.290125, 11.320870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521093, -0.849247, -0.085095,
		-0.024403, 0.084836, -0.996096,
		0.853151, 0.521135, 0.023484,
		25.658278, 22.446465, 11.327915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.487799, 21.835459, 10.812057>,  <25.061071, 22.081671, 11.311477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.487799, 21.835459, 10.812057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762880, 21.960020, 11.074383>,  <25.927929, 22.034756, 11.231778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762880, 21.960020, 11.074383>,  <25.487799, 21.835459, 10.812057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.762880, 21.960020, 11.074383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384691, -0.922397, 0.034588,
		0.615692, 0.228499, -0.754130,
		0.687704, 0.311403, 0.655814,
		25.969191, 22.053440, 11.271127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.167158, 21.543245, 10.738593>,  <25.487799, 21.835459, 10.812057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.167158, 21.543245, 10.738593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.129128, 21.654240, 11.120998>,  <26.106308, 21.720837, 11.350442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.129128, 21.654240, 11.120998>,  <26.167158, 21.543245, 10.738593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.129128, 21.654240, 11.120998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289291, -0.911215, 0.293254,
		0.952508, 0.304448, 0.006362,
		-0.095078, 0.277486, 0.956014,
		26.100605, 21.737486, 11.407803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737616, 21.274733, 11.129463>,  <26.167158, 21.543245, 10.738593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737616, 21.274733, 11.129463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.442133, 21.336096, 11.391998>,  <26.264843, 21.372913, 11.549520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.442133, 21.336096, 11.391998>,  <26.737616, 21.274733, 11.129463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.442133, 21.336096, 11.391998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057768, -0.955761, 0.288414,
		0.671547, 0.250969, 0.697165,
		-0.738707, 0.153410, 0.656337,
		26.220520, 21.382118, 11.588900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870220, 20.781326, 11.724732>,  <26.737616, 21.274733, 11.129463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870220, 20.781326, 11.724732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482601, 20.879473, 11.713816>,  <26.250031, 20.938360, 11.707266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.482601, 20.879473, 11.713816>,  <26.870220, 20.781326, 11.724732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.482601, 20.879473, 11.713816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240211, -0.911571, 0.333672,
		0.056994, 0.329899, 0.942294,
		-0.969046, 0.245367, -0.027291,
		26.191887, 20.953083, 11.705628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.595839, 20.766901, 12.388863>,  <26.870220, 20.781326, 11.724732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.595839, 20.766901, 12.388863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322384, 20.660406, 12.117051>,  <26.158312, 20.596508, 11.953964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322384, 20.660406, 12.117051>,  <26.595839, 20.766901, 12.388863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322384, 20.660406, 12.117051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239644, -0.797570, 0.553581,
		-0.689357, 0.541293, 0.481445,
		-0.683636, -0.266239, -0.679529,
		26.117292, 20.580534, 11.913193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.125427, 20.487396, 12.780361>,  <26.595839, 20.766901, 12.388863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.125427, 20.487396, 12.780361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977070, 20.362831, 12.430399>,  <25.888056, 20.288092, 12.220422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.977070, 20.362831, 12.430399>,  <26.125427, 20.487396, 12.780361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.977070, 20.362831, 12.430399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248676, -0.874393, 0.416651,
		-0.894762, 0.372101, 0.246865,
		-0.370893, -0.311414, -0.874906,
		25.865803, 20.269407, 12.167927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.422323, 20.151628, 12.873256>,  <26.125427, 20.487396, 12.780361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.422323, 20.151628, 12.873256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.570044, 20.000044, 12.533843>,  <25.658676, 19.909094, 12.330195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.570044, 20.000044, 12.533843>,  <25.422323, 20.151628, 12.873256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.570044, 20.000044, 12.533843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178723, -0.924995, 0.335326,
		-0.911962, 0.027816, -0.409330,
		0.369301, -0.378961, -0.848531,
		25.680834, 19.886356, 12.279284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.065615, 19.586132, 12.942741>,  <25.422323, 20.151628, 12.873256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.065615, 19.586132, 12.942741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.342485, 19.509136, 12.664508>,  <25.508608, 19.462938, 12.497568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.342485, 19.509136, 12.664508>,  <25.065615, 19.586132, 12.942741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.342485, 19.509136, 12.664508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014371, -0.967263, 0.253371,
		-0.721583, -0.165382, -0.672285,
		0.692179, -0.192489, -0.695583,
		25.550138, 19.451389, 12.455832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.788698, 19.064198, 12.462330>,  <25.065615, 19.586132, 12.942741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.788698, 19.064198, 12.462330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184774, 19.033537, 12.415597>,  <25.422421, 19.015141, 12.387557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.184774, 19.033537, 12.415597>,  <24.788698, 19.064198, 12.462330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.184774, 19.033537, 12.415597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033022, -0.940799, 0.337354,
		-0.135774, -0.330186, -0.934100,
		0.990189, -0.076650, -0.116833,
		25.481831, 19.010542, 12.380548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.887743, 18.401943, 12.097849>,  <24.788698, 19.064198, 12.462330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.887743, 18.401943, 12.097849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.225416, 18.506096, 12.285277>,  <25.428020, 18.568588, 12.397735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.225416, 18.506096, 12.285277>,  <24.887743, 18.401943, 12.097849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.225416, 18.506096, 12.285277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151659, -0.954402, 0.257130,
		0.514158, -0.146001, -0.845178,
		0.844181, 0.260384, 0.468571,
		25.478670, 18.584211, 12.425849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.295975, 17.822592, 12.003735>,  <24.887743, 18.401943, 12.097849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.295975, 17.822592, 12.003735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.456837, 18.019693, 12.312401>,  <25.553354, 18.137955, 12.497601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.456837, 18.019693, 12.312401>,  <25.295975, 17.822592, 12.003735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.456837, 18.019693, 12.312401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104361, -0.862000, 0.496050,
		0.909605, -0.118956, -0.398080,
		0.402153, 0.492754, 0.771665,
		25.577482, 18.167519, 12.543900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.699629, 17.302227, 12.243896>,  <25.295975, 17.822592, 12.003735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.699629, 17.302227, 12.243896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689213, 17.555746, 12.553120>,  <25.682964, 17.707857, 12.738654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.689213, 17.555746, 12.553120>,  <25.699629, 17.302227, 12.243896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.689213, 17.555746, 12.553120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040228, -0.773361, 0.632688,
		0.998851, -0.014624, 0.045634,
		-0.026039, 0.633797, 0.773061,
		25.681400, 17.745886, 12.785038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.234453, 17.121664, 12.859314>,  <25.699629, 17.302227, 12.243896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.234453, 17.121664, 12.859314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919161, 17.326849, 12.995289>,  <25.729984, 17.449961, 13.076874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919161, 17.326849, 12.995289>,  <26.234453, 17.121664, 12.859314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.919161, 17.326849, 12.995289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172226, -0.714220, 0.678402,
		0.590785, 0.476193, 0.651317,
		-0.788233, 0.512963, 0.339938,
		25.682692, 17.480738, 13.097270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.223913, 16.868372, 13.517703>,  <26.234453, 17.121664, 12.859314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.223913, 16.868372, 13.517703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.870922, 17.050524, 13.470604>,  <25.659128, 17.159815, 13.442345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.870922, 17.050524, 13.470604>,  <26.223913, 16.868372, 13.517703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.870922, 17.050524, 13.470604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412821, -0.629898, 0.657882,
		0.225416, 0.629174, 0.743860,
		-0.882477, 0.455378, -0.117747,
		25.606178, 17.187138, 13.435280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.813004, 16.786535, 14.147738>,  <26.223913, 16.868372, 13.517703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.813004, 16.786535, 14.147738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532616, 16.870581, 13.875122>,  <25.364384, 16.921007, 13.711553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.532616, 16.870581, 13.875122>,  <25.813004, 16.786535, 14.147738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.532616, 16.870581, 13.875122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635757, -0.617142, 0.463625,
		-0.323193, 0.758280, 0.566179,
		-0.700970, 0.210112, -0.681538,
		25.322325, 16.933615, 13.670661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.178026, 17.136017, 14.515764>,  <25.813004, 16.786535, 14.147738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.178026, 17.136017, 14.515764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.037987, 16.975018, 14.177433>,  <24.953962, 16.878418, 13.974434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.037987, 16.975018, 14.177433>,  <25.178026, 17.136017, 14.515764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.037987, 16.975018, 14.177433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610119, -0.587181, 0.531952,
		-0.710764, 0.702293, -0.040000,
		-0.350099, -0.402497, -0.845829,
		24.932957, 16.854269, 13.923684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.426214, 17.085325, 14.588188>,  <25.178026, 17.136017, 14.515764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.426214, 17.085325, 14.588188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.505739, 16.833429, 14.287815>,  <24.553455, 16.682291, 14.107592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.505739, 16.833429, 14.287815>,  <24.426214, 17.085325, 14.588188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.505739, 16.833429, 14.287815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663209, -0.650582, 0.369996,
		-0.721545, 0.424465, -0.546994,
		0.198814, -0.629740, -0.750933,
		24.565384, 16.644506, 14.062535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.786980, 16.711197, 14.502847>,  <24.426214, 17.085325, 14.588188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.786980, 16.711197, 14.502847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.040047, 16.481907, 14.294560>,  <24.191887, 16.344334, 14.169589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.040047, 16.481907, 14.294560>,  <23.786980, 16.711197, 14.502847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.040047, 16.481907, 14.294560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602396, -0.786826, 0.134256,
		-0.486670, 0.228737, -0.843108,
		0.632670, -0.573223, -0.520715,
		24.229847, 16.309940, 14.138346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.422295, 16.284237, 13.997896>,  <23.786980, 16.711197, 14.502847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.422295, 16.284237, 13.997896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.768503, 16.097630, 14.070818>,  <23.976229, 15.985665, 14.114571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.768503, 16.097630, 14.070818>,  <23.422295, 16.284237, 13.997896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.768503, 16.097630, 14.070818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499472, -0.831094, 0.244561,
		0.037421, -0.302729, -0.952342,
		0.865521, -0.466517, 0.182305,
		24.028160, 15.957674, 14.125509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.305498, 15.587353, 13.875426>,  <23.422295, 16.284237, 13.997896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.305498, 15.587353, 13.875426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.627916, 15.594517, 14.112060>,  <23.821367, 15.598815, 14.254040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.627916, 15.594517, 14.112060>,  <23.305498, 15.587353, 13.875426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.627916, 15.594517, 14.112060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284447, -0.864814, 0.413747,
		0.519018, -0.501773, -0.691985,
		0.806046, 0.017909, 0.591582,
		23.869730, 15.599890, 14.289535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.368906, 14.967662, 13.911586>,  <23.305498, 15.587353, 13.875426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.368906, 14.967662, 13.911586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.597921, 15.102925, 14.210343>,  <23.735331, 15.184083, 14.389598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.597921, 15.102925, 14.210343>,  <23.368906, 14.967662, 13.911586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.597921, 15.102925, 14.210343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153184, -0.850819, 0.502636,
		0.805441, -0.402190, -0.435325,
		0.572537, 0.338158, 0.746894,
		23.769682, 15.204372, 14.434411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.839115, 14.467957, 14.021672>,  <23.368906, 14.967662, 13.911586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.839115, 14.467957, 14.021672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.819475, 14.657593, 14.373315>,  <23.807692, 14.771375, 14.584300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.819475, 14.657593, 14.373315>,  <23.839115, 14.467957, 14.021672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.819475, 14.657593, 14.373315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372838, -0.825244, 0.424221,
		0.926596, -0.306935, 0.217278,
		-0.049099, 0.474092, 0.879105,
		23.804745, 14.799820, 14.637047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.038647, 13.970405, 14.489297>,  <23.839115, 14.467957, 14.021672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.038647, 13.970405, 14.489297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.838081, 14.244946, 14.700010>,  <23.717741, 14.409672, 14.826438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.838081, 14.244946, 14.700010>,  <24.038647, 13.970405, 14.489297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.838081, 14.244946, 14.700010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366294, -0.719993, 0.589439,
		0.783844, 0.102596, 0.612423,
		-0.501415, 0.686355, 0.526783,
		23.687656, 14.450853, 14.858045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.291164, 14.570889, 14.888290>,  <24.038647, 13.970405, 14.489297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.291164, 14.570889, 14.888290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.526957, 14.254192, 14.952365>,  <24.668432, 14.064174, 14.990809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.526957, 14.254192, 14.952365>,  <24.291164, 14.570889, 14.888290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.526957, 14.254192, 14.952365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780305, 0.506834, -0.366392,
		0.208901, 0.340974, 0.916569,
		0.589478, -0.791743, 0.160185,
		24.703800, 14.016669, 15.000421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.814651, 14.549983, 15.504803>,  <24.291164, 14.570889, 14.888290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.814651, 14.549983, 15.504803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.913635, 14.379319, 15.156843>,  <24.973026, 14.276920, 14.948068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.913635, 14.379319, 15.156843>,  <24.814651, 14.549983, 15.504803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.913635, 14.379319, 15.156843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846464, 0.532064, -0.020170,
		0.471448, -0.731347, 0.492817,
		0.247459, -0.426661, -0.869899,
		24.987873, 14.251321, 14.895873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.488646, 14.386949, 15.521365>,  <24.814651, 14.549983, 15.504803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.488646, 14.386949, 15.521365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.456026, 14.377198, 15.122817>,  <25.436455, 14.371348, 14.883688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.456026, 14.377198, 15.122817>,  <25.488646, 14.386949, 15.521365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.456026, 14.377198, 15.122817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956812, 0.277969, -0.085110,
		0.279035, -0.960281, 0.000657,
		-0.081547, -0.024378, -0.996371,
		25.431562, 14.369885, 14.823906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.133976, 14.076344, 15.910702>,  <25.488646, 14.386949, 15.521365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.133976, 14.076344, 15.910702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379642, 14.282309, 16.149923>,  <26.527042, 14.405888, 16.293457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379642, 14.282309, 16.149923>,  <26.133976, 14.076344, 15.910702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379642, 14.282309, 16.149923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781099, -0.288469, -0.553777,
		-0.112626, 0.807250, -0.579365,
		0.614165, 0.514911, 0.598053,
		26.563892, 14.436782, 16.329340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.365252, 14.728737, 15.663999>,  <26.133976, 14.076344, 15.910702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.365252, 14.728737, 15.663999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.642801, 14.594951, 15.919081>,  <26.809332, 14.514679, 16.072130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.642801, 14.594951, 15.919081>,  <26.365252, 14.728737, 15.663999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.642801, 14.594951, 15.919081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704723, 0.133402, -0.696828,
		0.147994, 0.932918, 0.328270,
		0.693876, -0.334466, 0.637706,
		26.850964, 14.494611, 16.110392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829739, 14.928807, 15.398287>,  <26.365252, 14.728737, 15.663999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829739, 14.928807, 15.398287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781630, 14.994790, 15.006711>,  <26.752764, 15.034380, 14.771766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781630, 14.994790, 15.006711>,  <26.829739, 14.928807, 15.398287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781630, 14.994790, 15.006711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987219, -0.083985, -0.135443,
		-0.104558, -0.982718, -0.152748,
		-0.120274, 0.164958, -0.978940,
		26.745548, 15.044277, 14.713029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<13.221822, 16.338339, 24.322691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.879952, 16.152693, 24.229630>,  <12.674830, 16.041306, 24.173792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.879952, 16.152693, 24.229630>,  <13.221822, 16.338339, 24.322691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.879952, 16.152693, 24.229630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262085, 0.001133, -0.965044,
		0.448157, -0.885773, 0.120670,
		-0.854674, -0.464117, -0.232655,
		12.623550, 16.013458, 24.159832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.380856, 15.711214, 23.862644>,  <13.221822, 16.338339, 24.322691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.380856, 15.711214, 23.862644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.995451, 15.784787, 23.784861>,  <12.764208, 15.828931, 23.738190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.995451, 15.784787, 23.784861>,  <13.380856, 15.711214, 23.862644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.995451, 15.784787, 23.784861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120022, -0.352485, -0.928089,
		-0.239250, -0.917564, 0.317547,
		-0.963511, 0.183932, -0.194460,
		12.706398, 15.839968, 23.726522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.187300, 15.188708, 23.479927>,  <13.380856, 15.711214, 23.862644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.187300, 15.188708, 23.479927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.880404, 15.437667, 23.418007>,  <12.696266, 15.587042, 23.380856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.880404, 15.437667, 23.418007>,  <13.187300, 15.188708, 23.479927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.880404, 15.437667, 23.418007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052555, -0.179541, -0.982346,
		-0.639203, -0.761831, 0.105041,
		-0.767240, 0.622398, -0.154801,
		12.650231, 15.624386, 23.371567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.772416, 14.914691, 22.902073>,  <13.187300, 15.188708, 23.479927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.772416, 14.914691, 22.902073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.644092, 15.293482, 22.909159>,  <12.567097, 15.520757, 22.913410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.644092, 15.293482, 22.909159>,  <12.772416, 14.914691, 22.902073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.644092, 15.293482, 22.909159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005879, 0.020694, -0.999768,
		-0.947125, -0.320632, -0.012206,
		-0.320811, 0.946978, 0.017715,
		12.547849, 15.577575, 22.914473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.132922, 14.952003, 22.525738>,  <12.772416, 14.914691, 22.902073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.132922, 14.952003, 22.525738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.319765, 15.305682, 22.526638>,  <12.431871, 15.517890, 22.527178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.319765, 15.305682, 22.526638>,  <12.132922, 14.952003, 22.525738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.319765, 15.305682, 22.526638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035597, 0.021351, -0.999138,
		-0.883483, 0.466626, 0.041448,
		0.467108, 0.884197, 0.002253,
		12.459898, 15.570941, 22.527313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.729316, 15.410539, 22.190775>,  <12.132922, 14.952003, 22.525738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.729316, 15.410539, 22.190775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.101645, 15.556703, 22.188023>,  <12.325042, 15.644402, 22.186371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.101645, 15.556703, 22.188023>,  <11.729316, 15.410539, 22.190775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.101645, 15.556703, 22.188023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075923, 0.174911, -0.981653,
		-0.357503, 0.914265, 0.190554,
		0.930821, 0.365411, -0.006882,
		12.380891, 15.666326, 22.185957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.604692, 15.957144, 21.727726>,  <11.729316, 15.410539, 22.190775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.604692, 15.957144, 21.727726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.001435, 15.954522, 21.778603>,  <12.239481, 15.952950, 21.809128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.001435, 15.954522, 21.778603>,  <11.604692, 15.957144, 21.727726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.001435, 15.954522, 21.778603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122513, 0.321969, -0.938790,
		-0.034799, 0.946727, 0.320150,
		0.991857, -0.006554, 0.127190,
		12.298992, 15.952556, 21.816759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.887991, 16.677410, 21.601021>,  <11.604692, 15.957144, 21.727726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.887991, 16.677410, 21.601021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.149565, 16.380089, 21.544638>,  <12.306509, 16.201696, 21.510809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.149565, 16.380089, 21.544638>,  <11.887991, 16.677410, 21.601021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.149565, 16.380089, 21.544638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185503, 0.338161, -0.922624,
		0.733457, 0.577187, 0.359020,
		0.653934, -0.743305, -0.140957,
		12.345745, 16.157097, 21.502350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.459994, 16.920698, 21.280703>,  <11.887991, 16.677410, 21.601021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.459994, 16.920698, 21.280703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.558166, 16.547619, 21.174995>,  <12.617068, 16.323771, 21.111570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.558166, 16.547619, 21.174995>,  <12.459994, 16.920698, 21.280703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.558166, 16.547619, 21.174995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346028, 0.338935, -0.874865,
		0.905555, 0.123272, 0.405924,
		0.245428, -0.932699, -0.264268,
		12.631794, 16.267809, 21.095715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.144432, 16.960617, 21.113190>,  <12.459994, 16.920698, 21.280703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.144432, 16.960617, 21.113190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.029491, 16.613720, 20.950554>,  <12.960526, 16.405581, 20.852972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.029491, 16.613720, 20.950554>,  <13.144432, 16.960617, 21.113190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.029491, 16.613720, 20.950554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518050, 0.216325, -0.827543,
		0.805638, -0.448430, 0.387115,
		-0.287352, -0.867245, -0.406589,
		12.943286, 16.353546, 20.828577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.695118, 16.762402, 20.696581>,  <13.144432, 16.960617, 21.113190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.695118, 16.762402, 20.696581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.416301, 16.509926, 20.560505>,  <13.249010, 16.358440, 20.478859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.416301, 16.509926, 20.560505>,  <13.695118, 16.762402, 20.696581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.416301, 16.509926, 20.560505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453657, -0.020805, -0.890933,
		0.555270, -0.775350, 0.300846,
		-0.697044, -0.631189, -0.340190,
		13.207188, 16.320568, 20.458448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.132422, 16.211502, 20.433298>,  <13.695118, 16.762402, 20.696581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.132422, 16.211502, 20.433298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.767695, 16.204124, 20.269226>,  <13.548859, 16.199697, 20.170784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.767695, 16.204124, 20.269226>,  <14.132422, 16.211502, 20.433298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.767695, 16.204124, 20.269226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404241, -0.215380, -0.888932,
		-0.071947, -0.976356, 0.203845,
		-0.911818, -0.018446, -0.410179,
		13.494150, 16.198591, 20.146172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.196953, 15.629883, 19.934967>,  <14.132422, 16.211502, 20.433298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.196953, 15.629883, 19.934967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.892237, 15.855597, 19.807684>,  <13.709407, 15.991026, 19.731314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.892237, 15.855597, 19.807684>,  <14.196953, 15.629883, 19.934967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.892237, 15.855597, 19.807684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292371, -0.138858, -0.946170,
		-0.578097, -0.813818, -0.059200,
		-0.761790, 0.564286, -0.318210,
		13.663700, 16.024883, 19.712221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.909547, 15.273744, 19.350899>,  <14.196953, 15.629883, 19.934967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.909547, 15.273744, 19.350899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.832911, 15.666072, 19.336571>,  <13.786930, 15.901469, 19.327974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.832911, 15.666072, 19.336571>,  <13.909547, 15.273744, 19.350899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.832911, 15.666072, 19.336571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404689, 0.045695, -0.913312,
		-0.894159, -0.189476, -0.405682,
		-0.191588, 0.980822, -0.035820,
		13.775435, 15.960319, 19.325825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.640618, 15.326172, 18.712362>,  <13.909547, 15.273744, 19.350899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.640618, 15.326172, 18.712362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.776362, 15.688931, 18.812260>,  <13.857809, 15.906586, 18.872198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.776362, 15.688931, 18.812260>,  <13.640618, 15.326172, 18.712362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.776362, 15.688931, 18.812260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322000, 0.137459, -0.936707,
		-0.883827, 0.398299, -0.245373,
		0.339361, 0.906897, 0.249743,
		13.878171, 15.960999, 18.887182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.438431, 15.722444, 18.122993>,  <13.640618, 15.326172, 18.712362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.438431, 15.722444, 18.122993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.667189, 15.998938, 18.299688>,  <13.804443, 16.164835, 18.405704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.667189, 15.998938, 18.299688>,  <13.438431, 15.722444, 18.122993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.667189, 15.998938, 18.299688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407392, 0.228070, -0.884317,
		-0.712018, 0.685696, -0.151172,
		0.571894, 0.691235, 0.441736,
		13.838757, 16.206308, 18.432209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.366070, 16.345913, 17.748253>,  <13.438431, 15.722444, 18.122993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.366070, 16.345913, 17.748253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.728596, 16.366251, 17.916067>,  <13.946111, 16.378454, 18.016756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.728596, 16.366251, 17.916067>,  <13.366070, 16.345913, 17.748253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.728596, 16.366251, 17.916067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418152, 0.035836, -0.907670,
		-0.061184, 0.998063, 0.011219,
		0.906314, 0.050843, 0.419535,
		14.000490, 16.381504, 18.041927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.690765, 16.865053, 17.377226>,  <13.366070, 16.345913, 17.748253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.690765, 16.865053, 17.377226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.974662, 16.645798, 17.554230>,  <14.145000, 16.514244, 17.660431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.974662, 16.645798, 17.554230>,  <13.690765, 16.865053, 17.377226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.974662, 16.645798, 17.554230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596658, 0.133784, -0.791265,
		0.374522, 0.825619, 0.422003,
		0.709741, -0.548137, 0.442508,
		14.187584, 16.481356, 17.686981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.292027, 17.192898, 17.266954>,  <13.690765, 16.865053, 17.377226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.292027, 17.192898, 17.266954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.465720, 16.845047, 17.360928>,  <14.569936, 16.636337, 17.417311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.465720, 16.845047, 17.360928>,  <14.292027, 17.192898, 17.266954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.465720, 16.845047, 17.360928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634888, 0.110442, -0.764670,
		0.639031, 0.481199, 0.600072,
		0.434232, -0.869626, 0.234931,
		14.595990, 16.584160, 17.431408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.038555, 17.238323, 17.213346>,  <14.292027, 17.192898, 17.266954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.038555, 17.238323, 17.213346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.948832, 16.854971, 17.142706>,  <14.894998, 16.624958, 17.100323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.948832, 16.854971, 17.142706>,  <15.038555, 17.238323, 17.213346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.948832, 16.854971, 17.142706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616413, 0.000826, -0.787423,
		0.754799, -0.285484, 0.590575,
		-0.224309, -0.958383, -0.176599,
		14.881538, 16.567455, 17.089725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.686402, 16.959707, 17.049816>,  <15.038555, 17.238323, 17.213346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.686402, 16.959707, 17.049816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.416340, 16.710371, 16.892027>,  <15.254302, 16.560768, 16.797354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.416340, 16.710371, 16.892027>,  <15.686402, 16.959707, 17.049816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.416340, 16.710371, 16.892027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560033, -0.085073, -0.824091,
		0.480132, -0.777307, 0.406530,
		-0.675156, -0.623343, -0.394472,
		15.213793, 16.523369, 16.773685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.106869, 16.360386, 16.677135>,  <15.686402, 16.959707, 17.049816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.106869, 16.360386, 16.677135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.738208, 16.417141, 16.532679>,  <15.517011, 16.451193, 16.446005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.738208, 16.417141, 16.532679>,  <16.106869, 16.360386, 16.677135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.738208, 16.417141, 16.532679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384240, 0.204217, -0.900364,
		-0.053999, -0.968588, -0.242736,
		-0.921653, 0.141887, -0.361142,
		15.461712, 16.459707, 16.424335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.593208, 17.027802, 16.581789>,  <16.106869, 16.360386, 16.677135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.593208, 17.027802, 16.581789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.959425, 17.051952, 16.740856>,  <17.179155, 17.066442, 16.836296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.959425, 17.051952, 16.740856>,  <16.593208, 17.027802, 16.581789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.959425, 17.051952, 16.740856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359494, -0.320642, 0.876329,
		0.180419, -0.945274, -0.271856,
		0.915540, 0.060375, 0.397670,
		17.234087, 17.070065, 16.860157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.752337, 16.328602, 16.997099>,  <16.593208, 17.027802, 16.581789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.752337, 16.328602, 16.997099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.041920, 16.581100, 17.108389>,  <17.215670, 16.732599, 17.175163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.041920, 16.581100, 17.108389>,  <16.752337, 16.328602, 16.997099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.041920, 16.581100, 17.108389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235061, -0.153450, 0.959792,
		0.648559, -0.760250, 0.037290,
		0.723960, 0.631247, 0.278226,
		17.259108, 16.770475, 17.191856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.244404, 15.967238, 17.512779>,  <16.752337, 16.328602, 16.997099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.244404, 15.967238, 17.512779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.262039, 16.364388, 17.557070>,  <17.272621, 16.602676, 17.583645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.262039, 16.364388, 17.557070>,  <17.244404, 15.967238, 17.512779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.262039, 16.364388, 17.557070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292259, -0.093167, 0.951790,
		0.955322, -0.074326, 0.286068,
		0.044090, 0.992872, 0.110727,
		17.275267, 16.662249, 17.590288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.650150, 15.944277, 18.044573>,  <17.244404, 15.967238, 17.512779>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.650150, 15.944277, 18.044573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.463711, 16.297581, 18.024162>,  <17.351847, 16.509563, 18.011915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.463711, 16.297581, 18.024162>,  <17.650150, 15.944277, 18.044573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.463711, 16.297581, 18.024162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152169, -0.023216, 0.988082,
		0.871547, 0.468310, 0.145226,
		-0.466101, 0.883259, -0.051029,
		17.323881, 16.562559, 18.008854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.977617, 16.455629, 18.530720>,  <17.650150, 15.944277, 18.044573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.977617, 16.455629, 18.530720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.600561, 16.577593, 18.476381>,  <17.374327, 16.650772, 18.443777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.600561, 16.577593, 18.476381>,  <17.977617, 16.455629, 18.530720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.600561, 16.577593, 18.476381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097654, 0.137264, 0.985709,
		0.319200, 0.942437, -0.099615,
		-0.942643, 0.304911, -0.135848,
		17.317768, 16.669065, 18.435627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.913807, 16.872345, 19.093393>,  <17.977617, 16.455629, 18.530720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.913807, 16.872345, 19.093393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.533121, 16.876879, 18.970684>,  <17.304710, 16.879599, 18.897058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.533121, 16.876879, 18.970684>,  <17.913807, 16.872345, 19.093393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.533121, 16.876879, 18.970684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303943, 0.105513, 0.946829,
		0.043103, 0.994353, -0.096973,
		-0.951715, 0.011337, -0.306774,
		17.247606, 16.880280, 18.878653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.559494, 17.427582, 19.500181>,  <17.913807, 16.872345, 19.093393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.559494, 17.427582, 19.500181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.259943, 17.199789, 19.364609>,  <17.080212, 17.063114, 19.283266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.259943, 17.199789, 19.364609>,  <17.559494, 17.427582, 19.500181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.259943, 17.199789, 19.364609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481702, 0.116521, 0.868554,
		-0.455133, 0.813703, -0.361580,
		-0.748877, -0.569482, -0.338930,
		17.035280, 17.028944, 19.262930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.916048, 17.781998, 19.588232>,  <17.559494, 17.427582, 19.500181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.916048, 17.781998, 19.588232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.810713, 17.396576, 19.569386>,  <16.747511, 17.165323, 19.558077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.810713, 17.396576, 19.569386>,  <16.916048, 17.781998, 19.588232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.810713, 17.396576, 19.569386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443466, 0.077535, 0.892931,
		-0.856733, 0.256038, -0.447721,
		-0.263338, -0.963552, -0.047117,
		16.731710, 17.107510, 19.555250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.317833, 17.836187, 19.849440>,  <16.916048, 17.781998, 19.588232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.317833, 17.836187, 19.849440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.372330, 17.440556, 19.871923>,  <16.405027, 17.203176, 19.885414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.372330, 17.440556, 19.871923>,  <16.317833, 17.836187, 19.849440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.372330, 17.440556, 19.871923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495953, -0.018978, 0.868142,
		-0.857595, -0.146155, -0.493123,
		0.136242, -0.989080, 0.056211,
		16.413202, 17.143831, 19.888786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.628510, 17.467785, 19.955957>,  <16.317833, 17.836187, 19.849440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.628510, 17.467785, 19.955957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.920592, 17.239134, 20.105644>,  <16.095842, 17.101942, 20.195456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.920592, 17.239134, 20.105644>,  <15.628510, 17.467785, 19.955957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.920592, 17.239134, 20.105644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490601, -0.057494, 0.869486,
		-0.475509, -0.818494, -0.322425,
		0.730207, -0.571630, 0.374215,
		16.139654, 17.067644, 20.217909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.374548, 16.765329, 20.227446>,  <15.628510, 17.467785, 19.955957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.374548, 16.765329, 20.227446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.714832, 16.829559, 20.427649>,  <15.919003, 16.868097, 20.547770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.714832, 16.829559, 20.427649>,  <15.374548, 16.765329, 20.227446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.714832, 16.829559, 20.427649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485786, -0.123490, 0.865310,
		0.200753, -0.979268, -0.027050,
		0.850711, 0.160573, 0.500506,
		15.970046, 16.877731, 20.577801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.359918, 16.363081, 20.773918>,  <15.374548, 16.765329, 20.227446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.359918, 16.363081, 20.773918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.631673, 16.629164, 20.897808>,  <15.794726, 16.788815, 20.972141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.631673, 16.629164, 20.897808>,  <15.359918, 16.363081, 20.773918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.631673, 16.629164, 20.897808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264747, -0.171448, 0.948955,
		0.684355, -0.726707, 0.059632,
		0.679388, 0.665209, 0.309725,
		15.835489, 16.828726, 20.990725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.575734, 16.120922, 21.388700>,  <15.359918, 16.363081, 20.773918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.575734, 16.120922, 21.388700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.689920, 16.501564, 21.434233>,  <15.758432, 16.729950, 21.461552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.689920, 16.501564, 21.434233>,  <15.575734, 16.120922, 21.388700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.689920, 16.501564, 21.434233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147146, -0.073847, 0.986354,
		0.947026, -0.298320, 0.118945,
		0.285465, 0.951605, 0.113832,
		15.775560, 16.787046, 21.468382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.012316, 16.103241, 22.054979>,  <15.575734, 16.120922, 21.388700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.012316, 16.103241, 22.054979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.939698, 16.484966, 21.960047>,  <15.896128, 16.714001, 21.903088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.939698, 16.484966, 21.960047>,  <16.012316, 16.103241, 22.054979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.939698, 16.484966, 21.960047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053932, 0.250643, 0.966576,
		0.981903, 0.162677, -0.096970,
		-0.181544, 0.954314, -0.237333,
		15.885235, 16.771261, 21.888847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.431746, 16.517656, 22.473356>,  <16.012316, 16.103241, 22.054979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.431746, 16.517656, 22.473356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.110020, 16.736645, 22.380966>,  <15.916984, 16.868038, 22.325533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.110020, 16.736645, 22.380966>,  <16.431746, 16.517656, 22.473356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.110020, 16.736645, 22.380966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171994, 0.157571, 0.972414,
		0.568766, 0.821854, -0.032575,
		-0.804316, 0.547473, -0.230975,
		15.868725, 16.900887, 22.311674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.448223, 17.074072, 22.985327>,  <16.431746, 16.517656, 22.473356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.448223, 17.074072, 22.985327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.076180, 17.045244, 22.841269>,  <15.852954, 17.027948, 22.754833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.076180, 17.045244, 22.841269>,  <16.448223, 17.074072, 22.985327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.076180, 17.045244, 22.841269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350016, -0.123224, 0.928604,
		-0.111301, 0.989759, 0.089387,
		-0.930108, -0.072067, -0.360146,
		15.797147, 17.023624, 22.733225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.124723, 17.599646, 23.330297>,  <16.448223, 17.074072, 22.985327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.124723, 17.599646, 23.330297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.866037, 17.321203, 23.205589>,  <15.710826, 17.154139, 23.130764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.866037, 17.321203, 23.205589>,  <16.124723, 17.599646, 23.330297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.866037, 17.321203, 23.205589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334449, -0.108556, 0.936141,
		-0.685496, 0.709686, -0.162607,
		-0.646714, -0.696104, -0.311769,
		15.672023, 17.112371, 23.112059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.593835, 17.690599, 23.848274>,  <16.124723, 17.599646, 23.330297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.593835, 17.690599, 23.848274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.483518, 17.346481, 23.676773>,  <15.417327, 17.140011, 23.573874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.483518, 17.346481, 23.676773>,  <15.593835, 17.690599, 23.848274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.483518, 17.346481, 23.676773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378446, -0.312840, 0.871154,
		-0.883582, 0.402518, -0.239297,
		-0.275794, -0.860297, -0.428751,
		15.400780, 17.088392, 23.548147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<14.845979, 17.570154, 23.916195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.013097, 17.214180, 23.843025>,  <15.113368, 17.000595, 23.799124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.013097, 17.214180, 23.843025>,  <14.845979, 17.570154, 23.916195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.013097, 17.214180, 23.843025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386506, -0.356308, 0.850680,
		-0.822228, -0.284709, -0.492830,
		0.417796, -0.889935, -0.182925,
		15.138435, 16.947199, 23.788147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.353004, 17.085058, 24.223892>,  <14.845979, 17.570154, 23.916195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.353004, 17.085058, 24.223892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.662145, 16.838572, 24.163256>,  <14.847629, 16.690680, 24.126875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.662145, 16.838572, 24.163256>,  <14.353004, 17.085058, 24.223892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.662145, 16.838572, 24.163256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244366, -0.509450, 0.825073,
		-0.585652, -0.600614, -0.544311,
		0.772850, -0.616217, -0.151591,
		14.894000, 16.653708, 24.117779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.147199, 16.385489, 24.146978>,  <14.353004, 17.085058, 24.223892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.147199, 16.385489, 24.146978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.520355, 16.410179, 24.288908>,  <14.744249, 16.424994, 24.374065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.520355, 16.410179, 24.288908>,  <14.147199, 16.385489, 24.146978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.520355, 16.410179, 24.288908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250507, -0.596634, 0.762413,
		0.258763, -0.800136, -0.541132,
		0.932892, 0.061727, 0.354826,
		14.800223, 16.428698, 24.395355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.341391, 15.688626, 24.164156>,  <14.147199, 16.385489, 24.146978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.341391, 15.688626, 24.164156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.536552, 15.930382, 24.416080>,  <14.653649, 16.075436, 24.567236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.536552, 15.930382, 24.416080>,  <14.341391, 15.688626, 24.164156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.536552, 15.930382, 24.416080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209329, -0.619453, 0.756610,
		0.847426, -0.500992, -0.175718,
		0.487904, 0.604388, 0.629813,
		14.682924, 16.111698, 24.605024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.222622, 15.353765, 24.775517>,  <14.341391, 15.688626, 24.164156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.222622, 15.353765, 24.775517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.351534, 15.698590, 24.931969>,  <14.428882, 15.905485, 25.025841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.351534, 15.698590, 24.931969>,  <14.222622, 15.353765, 24.775517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.351534, 15.698590, 24.931969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382843, -0.259189, 0.886709,
		0.865775, -0.435511, 0.246503,
		0.322280, 0.862062, 0.391131,
		14.448218, 15.957209, 25.049309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.598932, 15.065733, 25.303495>,  <14.222622, 15.353765, 24.775517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.598932, 15.065733, 25.303495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.522589, 15.453724, 25.363783>,  <14.476783, 15.686519, 25.399956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.522589, 15.453724, 25.363783>,  <14.598932, 15.065733, 25.303495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.522589, 15.453724, 25.363783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170352, -0.183939, 0.968063,
		0.966723, 0.159090, 0.200344,
		-0.190860, 0.969978, 0.150717,
		14.465331, 15.744718, 25.408998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.919429, 15.231311, 25.970400>,  <14.598932, 15.065733, 25.303495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.919429, 15.231311, 25.970400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.668863, 15.539796, 25.925079>,  <14.518524, 15.724887, 25.897888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.668863, 15.539796, 25.925079>,  <14.919429, 15.231311, 25.970400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.668863, 15.539796, 25.925079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179995, -0.001689, 0.983666,
		0.758424, 0.636576, 0.139872,
		-0.626414, 0.771212, -0.113299,
		14.480939, 15.771159, 25.891090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.075504, 15.688125, 26.609814>,  <14.919429, 15.231311, 25.970400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.075504, 15.688125, 26.609814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.710588, 15.773469, 26.469982>,  <14.491639, 15.824676, 26.386084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.710588, 15.773469, 26.469982>,  <15.075504, 15.688125, 26.609814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.710588, 15.773469, 26.469982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319295, 0.163999, 0.933357,
		0.256472, 0.963110, -0.081490,
		-0.912290, 0.213361, -0.349577,
		14.436901, 15.837477, 26.365108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.885168, 16.442831, 26.866875>,  <15.075504, 15.688125, 26.609814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.885168, 16.442831, 26.866875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.534505, 16.277166, 26.768942>,  <14.324107, 16.177767, 26.710182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.534505, 16.277166, 26.768942>,  <14.885168, 16.442831, 26.866875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.534505, 16.277166, 26.768942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293220, 0.056481, 0.954375,
		-0.381437, 0.908449, -0.170954,
		-0.876657, -0.414161, -0.244831,
		14.271507, 16.152918, 26.695492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.377943, 16.945942, 27.142033>,  <14.885168, 16.442831, 26.866875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.377943, 16.945942, 27.142033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.197870, 16.591194, 27.100462>,  <14.089827, 16.378345, 27.075520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.197870, 16.591194, 27.100462>,  <14.377943, 16.945942, 27.142033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.197870, 16.591194, 27.100462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327863, 0.055913, 0.943069,
		-0.830567, 0.458628, -0.315942,
		-0.450183, -0.886868, -0.103928,
		14.062816, 16.325134, 27.069284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.753541, 17.030367, 27.500158>,  <14.377943, 16.945942, 27.142033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.753541, 17.030367, 27.500158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.792288, 16.634365, 27.459160>,  <13.815536, 16.396763, 27.434561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.792288, 16.634365, 27.459160>,  <13.753541, 17.030367, 27.500158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.792288, 16.634365, 27.459160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337239, -0.129537, 0.932465,
		-0.936422, -0.055760, -0.346416,
		0.096868, -0.990005, -0.102497,
		13.821348, 16.337364, 27.428411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.229115, 16.767885, 27.798847>,  <13.753541, 17.030367, 27.500158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.229115, 16.767885, 27.798847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.478516, 16.455530, 27.814100>,  <13.628157, 16.268116, 27.823252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.478516, 16.455530, 27.814100>,  <13.229115, 16.767885, 27.798847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.478516, 16.455530, 27.814100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498360, -0.359388, 0.788972,
		-0.602396, -0.510931, -0.613244,
		0.623503, -0.780890, 0.038133,
		13.665566, 16.221264, 27.825541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.821561, 16.101913, 27.882774>,  <13.229115, 16.767885, 27.798847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.821561, 16.101913, 27.882774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.186539, 16.033674, 28.031551>,  <13.405525, 15.992730, 28.120817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.186539, 16.033674, 28.031551>,  <12.821561, 16.101913, 27.882774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.186539, 16.033674, 28.031551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408804, -0.420070, 0.810198,
		0.018024, -0.891312, -0.453032,
		0.912444, -0.170599, 0.371943,
		13.460272, 15.982494, 28.143135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.707969, 15.508185, 28.298424>,  <12.821561, 16.101913, 27.882774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.707969, 15.508185, 28.298424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.058008, 15.671545, 28.402279>,  <13.268032, 15.769561, 28.464592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.058008, 15.671545, 28.402279>,  <12.707969, 15.508185, 28.298424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.058008, 15.671545, 28.402279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094332, -0.382265, 0.919225,
		0.474660, -0.828906, -0.295995,
		0.875100, 0.408398, 0.259639,
		13.320538, 15.794065, 28.480171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.133135, 14.948687, 28.597231>,  <12.707969, 15.508185, 28.298424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.133135, 14.948687, 28.597231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.234326, 15.306644, 28.744291>,  <13.295041, 15.521420, 28.832527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.234326, 15.306644, 28.744291>,  <13.133135, 14.948687, 28.597231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.234326, 15.306644, 28.744291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051055, -0.367132, 0.928767,
		0.966124, -0.253729, -0.047188,
		0.252979, 0.894894, 0.367649,
		13.310220, 15.575112, 28.854586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.737736, 14.853939, 29.092352>,  <13.133135, 14.948687, 28.597231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.737736, 14.853939, 29.092352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.545366, 15.197847, 29.161062>,  <13.429944, 15.404192, 29.202288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.545366, 15.197847, 29.161062>,  <13.737736, 14.853939, 29.092352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.545366, 15.197847, 29.161062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129757, -0.263558, 0.955877,
		0.867107, 0.437416, 0.238312,
		-0.480925, 0.859770, 0.171775,
		13.401089, 15.455778, 29.212595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.088354, 15.140201, 29.728081>,  <13.737736, 14.853939, 29.092352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.088354, 15.140201, 29.728081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.772009, 15.384996, 29.728872>,  <13.582201, 15.531874, 29.729347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.772009, 15.384996, 29.728872>,  <14.088354, 15.140201, 29.728081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.772009, 15.384996, 29.728872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150280, -0.197339, 0.968748,
		0.593253, 0.765851, 0.248038,
		-0.790864, 0.611988, 0.001979,
		13.534750, 15.568593, 29.729465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.034132, 15.350583, 30.435568>,  <14.088354, 15.140201, 29.728081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.034132, 15.350583, 30.435568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.682209, 15.464224, 30.283134>,  <13.471055, 15.532409, 30.191673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.682209, 15.464224, 30.283134>,  <14.034132, 15.350583, 30.435568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.682209, 15.464224, 30.283134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426890, -0.119656, 0.896352,
		0.209057, 0.951298, 0.226555,
		-0.879807, 0.284103, -0.381084,
		13.418267, 15.549455, 30.168810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.855827, 15.895332, 30.765800>,  <14.034132, 15.350583, 30.435568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.855827, 15.895332, 30.765800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.531259, 15.717700, 30.613808>,  <13.336517, 15.611120, 30.522612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.531259, 15.717700, 30.613808>,  <13.855827, 15.895332, 30.765800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.531259, 15.717700, 30.613808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358754, -0.134807, 0.923646,
		-0.461398, 0.885787, -0.049930,
		-0.811423, -0.444081, -0.379980,
		13.287831, 15.584476, 30.499813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.333747, 16.209591, 31.219219>,  <13.855827, 15.895332, 30.765800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.333747, 16.209591, 31.219219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.154236, 15.891905, 31.055355>,  <13.046530, 15.701293, 30.957037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.154236, 15.891905, 31.055355>,  <13.333747, 16.209591, 31.219219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.154236, 15.891905, 31.055355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444614, -0.199216, 0.873288,
		-0.775189, 0.574053, -0.263716,
		-0.448777, -0.794215, -0.409662,
		13.019603, 15.653641, 30.932457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.562836, 16.265583, 31.302908>,  <13.333747, 16.209591, 31.219219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.562836, 16.265583, 31.302908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.660813, 15.878307, 31.282467>,  <12.719600, 15.645942, 31.270203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.660813, 15.878307, 31.282467>,  <12.562836, 16.265583, 31.302908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.660813, 15.878307, 31.282467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597429, -0.192238, 0.778539,
		-0.763598, -0.160168, -0.625512,
		0.244944, -0.968189, -0.051103,
		12.734297, 15.587851, 31.267136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.361790, 15.891700, 31.944502>,  <12.562836, 16.265583, 31.302908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.361790, 15.891700, 31.944502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.521247, 15.560296, 31.787195>,  <12.616921, 15.361454, 31.692812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.521247, 15.560296, 31.787195>,  <12.361790, 15.891700, 31.944502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.521247, 15.560296, 31.787195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088313, -0.461497, 0.882735,
		-0.912845, -0.317165, -0.257140,
		0.398642, -0.828509, -0.393265,
		12.640840, 15.311744, 31.669216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.067935, 16.527555, 32.263580>,  <12.361790, 15.891700, 31.944502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.067935, 16.527555, 32.263580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.786119, 16.807947, 32.307850>,  <11.617028, 16.976183, 32.334412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.786119, 16.807947, 32.307850>,  <12.067935, 16.527555, 32.263580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.786119, 16.807947, 32.307850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697601, -0.712723, 0.073338,
		0.130286, -0.025534, 0.991147,
		-0.704541, 0.700981, 0.110671,
		11.574757, 17.018242, 32.341049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.515087, 16.323030, 31.857677>,  <12.067935, 16.527555, 32.263580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.515087, 16.323030, 31.857677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.330445, 15.990973, 31.982759>,  <11.219661, 15.791739, 32.057808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.330445, 15.990973, 31.982759>,  <11.515087, 16.323030, 31.857677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.330445, 15.990973, 31.982759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351018, -0.152808, -0.923816,
		0.814683, -0.536202, -0.220858,
		-0.461603, -0.830143, 0.312707,
		11.191964, 15.741931, 32.076572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.757054, 15.740793, 31.517622>,  <11.515087, 16.323030, 31.857677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.757054, 15.740793, 31.517622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.375573, 15.694028, 31.628460>,  <11.146685, 15.665969, 31.694962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.375573, 15.694028, 31.628460>,  <11.757054, 15.740793, 31.517622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.375573, 15.694028, 31.628460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261919, -0.129944, -0.956302,
		0.147813, -0.984604, 0.093306,
		-0.953703, -0.116915, 0.277094,
		11.089462, 15.658954, 31.711588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.581371, 15.096289, 31.274961>,  <11.757054, 15.740793, 31.517622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.581371, 15.096289, 31.274961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.226269, 15.261932, 31.355362>,  <11.013207, 15.361319, 31.403603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.226269, 15.261932, 31.355362>,  <11.581371, 15.096289, 31.274961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.226269, 15.261932, 31.355362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323068, -0.249483, -0.912899,
		-0.327897, -0.875368, 0.355266,
		-0.887756, 0.414112, 0.200999,
		10.959942, 15.386166, 31.415663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.116863, 14.641335, 30.942888>,  <11.581371, 15.096289, 31.274961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.116863, 14.641335, 30.942888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.914477, 14.980276, 31.007380>,  <10.793046, 15.183640, 31.046074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.914477, 14.980276, 31.007380>,  <11.116863, 14.641335, 30.942888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.914477, 14.980276, 31.007380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406982, -0.069719, -0.910772,
		-0.760504, -0.526434, 0.380133,
		-0.505964, 0.847352, 0.161227,
		10.762688, 15.234482, 31.055748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.523691, 14.451035, 30.702906>,  <11.116863, 14.641335, 30.942888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.523691, 14.451035, 30.702906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.544188, 14.849897, 30.680809>,  <10.556485, 15.089215, 30.667551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.544188, 14.849897, 30.680809>,  <10.523691, 14.451035, 30.702906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.544188, 14.849897, 30.680809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451759, -0.026186, -0.891755,
		-0.890667, 0.070650, 0.449133,
		0.051242, 0.997157, -0.055240,
		10.559560, 15.149045, 30.664238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.905824, 14.653646, 30.352833>,  <10.523691, 14.451035, 30.702906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.905824, 14.653646, 30.352833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.119340, 14.989879, 30.315985>,  <10.247450, 15.191619, 30.293877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.119340, 14.989879, 30.315985>,  <9.905824, 14.653646, 30.352833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.119340, 14.989879, 30.315985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167337, -0.001779, -0.985898,
		-0.828894, 0.541679, 0.139711,
		0.533792, 0.840584, -0.092118,
		10.279477, 15.242054, 30.288349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.507775, 15.160081, 29.995420>,  <9.905824, 14.653646, 30.352833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.507775, 15.160081, 29.995420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.878768, 15.297297, 29.935951>,  <10.101363, 15.379625, 29.900270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.878768, 15.297297, 29.935951>,  <9.507775, 15.160081, 29.995420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.878768, 15.297297, 29.935951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192280, 0.096623, -0.976572,
		-0.320636, 0.934339, 0.155575,
		0.927481, 0.343038, -0.148673,
		10.157012, 15.400208, 29.891350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.453176, 15.760130, 29.560856>,  <9.507775, 15.160081, 29.995420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.453176, 15.760130, 29.560856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.825807, 15.632318, 29.491493>,  <10.049385, 15.555632, 29.449877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.825807, 15.632318, 29.491493>,  <9.453176, 15.760130, 29.560856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.825807, 15.632318, 29.491493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098526, 0.237231, -0.966444,
		0.349944, 0.917400, 0.189517,
		0.931575, -0.319528, -0.173406,
		10.105279, 15.536460, 29.439472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.790704, 16.161106, 29.076534>,  <9.453176, 15.760130, 29.560856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.790704, 16.161106, 29.076534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.074874, 15.880099, 29.059734>,  <10.245376, 15.711494, 29.049654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.074874, 15.880099, 29.059734>,  <9.790704, 16.161106, 29.076534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.074874, 15.880099, 29.059734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240729, 0.298649, -0.923504,
		0.661322, 0.645969, 0.381284,
		0.710424, -0.702519, -0.041999,
		10.288001, 15.669344, 29.047134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.526506, 16.430872, 28.873274>,  <9.790704, 16.161106, 29.076534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.526506, 16.430872, 28.873274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.513852, 16.043152, 28.775738>,  <10.506260, 15.810520, 28.717216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.513852, 16.043152, 28.775738>,  <10.526506, 16.430872, 28.873274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.513852, 16.043152, 28.775738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346462, 0.218202, -0.912333,
		0.937531, -0.113343, 0.328922,
		-0.031635, -0.969299, -0.243840,
		10.504361, 15.752362, 28.702585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.106493, 16.381596, 28.576635>,  <10.526506, 16.430872, 28.873274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.106493, 16.381596, 28.576635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.917135, 16.053505, 28.448179>,  <10.803521, 15.856651, 28.371105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.917135, 16.053505, 28.448179>,  <11.106493, 16.381596, 28.576635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.917135, 16.053505, 28.448179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393608, 0.129178, -0.910157,
		0.788017, -0.557265, 0.261695,
		-0.473394, -0.820225, -0.321139,
		10.775117, 15.807438, 28.351837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.620175, 15.929074, 28.298481>,  <11.106493, 16.381596, 28.576635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.620175, 15.929074, 28.298481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.277379, 15.792550, 28.144041>,  <11.071701, 15.710636, 28.051376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.277379, 15.792550, 28.144041>,  <11.620175, 15.929074, 28.298481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.277379, 15.792550, 28.144041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426162, -0.048125, -0.903366,
		0.289747, -0.938718, 0.186695,
		-0.856990, -0.341310, -0.386102,
		11.020282, 15.690157, 28.028210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.883089, 15.612562, 27.753922>,  <11.620175, 15.929074, 28.298481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.883089, 15.612562, 27.753922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.498578, 15.611322, 27.643696>,  <11.267872, 15.610579, 27.577560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.498578, 15.611322, 27.643696>,  <11.883089, 15.612562, 27.753922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.498578, 15.611322, 27.643696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273143, -0.143450, -0.951218,
		-0.036580, -0.989653, 0.138742,
		-0.961278, -0.003101, -0.275564,
		11.210195, 15.610393, 27.561028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.576927, 14.923247, 27.468452>,  <11.883089, 15.612562, 27.753922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.576927, 14.923247, 27.468452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.345777, 15.205059, 27.303675>,  <11.207087, 15.374146, 27.204807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.345777, 15.205059, 27.303675>,  <11.576927, 14.923247, 27.468452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.345777, 15.205059, 27.303675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364084, -0.229197, -0.902724,
		-0.730412, -0.671645, -0.124060,
		-0.577877, 0.704529, -0.411944,
		11.172414, 15.416418, 27.180092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.320613, 14.653730, 26.766111>,  <11.576927, 14.923247, 27.468452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.320613, 14.653730, 26.766111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.288345, 15.052189, 26.752333>,  <11.268985, 15.291264, 26.744066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.288345, 15.052189, 26.752333>,  <11.320613, 14.653730, 26.766111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.288345, 15.052189, 26.752333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420817, 0.002708, -0.907142,
		-0.903552, -0.087673, -0.419413,
		-0.080668, 0.996145, -0.034447,
		11.264145, 15.351032, 26.741999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.965103, 14.918853, 26.129696>,  <11.320613, 14.653730, 26.766111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.965103, 14.918853, 26.129696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.152317, 15.255704, 26.236851>,  <11.264646, 15.457814, 26.301144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.152317, 15.255704, 26.236851>,  <10.965103, 14.918853, 26.129696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.152317, 15.255704, 26.236851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271941, 0.151182, -0.950364,
		-0.840828, 0.517654, -0.158251,
		0.468035, 0.842127, 0.267889,
		11.292727, 15.508342, 26.317217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.834132, 15.392119, 25.636276>,  <10.965103, 14.918853, 26.129696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.834132, 15.392119, 25.636276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.180114, 15.513601, 25.796085>,  <11.387703, 15.586491, 25.891972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.180114, 15.513601, 25.796085>,  <10.834132, 15.392119, 25.636276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.180114, 15.513601, 25.796085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324006, 0.270000, -0.906708,
		-0.383242, 0.913709, 0.135136,
		0.864954, 0.303704, 0.399523,
		11.439600, 15.604712, 25.915941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.925053, 16.103039, 25.404009>,  <10.834132, 15.392119, 25.636276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.925053, 16.103039, 25.404009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.288150, 15.957580, 25.487688>,  <11.506008, 15.870304, 25.537895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.288150, 15.957580, 25.487688>,  <10.925053, 16.103039, 25.404009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.288150, 15.957580, 25.487688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347656, 0.372937, -0.860263,
		0.234815, 0.853627, 0.464955,
		0.907743, -0.363647, 0.209197,
		11.560472, 15.848486, 25.550447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.310925, 16.630445, 25.272024>,  <10.925053, 16.103039, 25.404009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.310925, 16.630445, 25.272024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.565568, 16.322372, 25.256290>,  <11.718354, 16.137529, 25.246849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.565568, 16.322372, 25.256290>,  <11.310925, 16.630445, 25.272024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.565568, 16.322372, 25.256290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231188, 0.239256, -0.943032,
		0.735718, 0.591249, 0.330370,
		0.636609, -0.770183, -0.039335,
		11.756551, 16.091318, 25.244490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.921886, 16.950022, 24.906189>,  <11.310925, 16.630445, 25.272024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.921886, 16.950022, 24.906189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.024018, 16.565495, 24.864868>,  <12.085298, 16.334778, 24.840076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.024018, 16.565495, 24.864868>,  <11.921886, 16.950022, 24.906189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.024018, 16.565495, 24.864868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499131, 0.222561, -0.837457,
		0.828055, 0.162268, 0.536651,
		0.255330, -0.961320, -0.103300,
		12.100617, 16.277098, 24.833878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.546448, 16.936319, 24.519575>,  <11.921886, 16.950022, 24.906189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.546448, 16.936319, 24.519575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.435614, 16.552910, 24.492878>,  <12.369113, 16.322865, 24.476860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.435614, 16.552910, 24.492878>,  <12.546448, 16.936319, 24.519575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.435614, 16.552910, 24.492878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485433, -0.079705, -0.870633,
		0.829203, -0.273638, 0.487385,
		-0.277085, -0.958525, -0.066741,
		12.352488, 16.265352, 24.472857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<25.757442, 27.560856, 11.460600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.996626, 27.295839, 11.280164>,  <26.140137, 27.136829, 11.171902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.996626, 27.295839, 11.280164>,  <25.757442, 27.560856, 11.460600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.996626, 27.295839, 11.280164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676871, -0.718828, 0.158533,
		-0.429291, 0.210534, -0.878285,
		0.597959, -0.662542, -0.451091,
		26.176014, 27.097076, 11.144836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.462387, 27.142313, 10.892035>,  <25.757442, 27.560856, 11.460600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.462387, 27.142313, 10.892035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.732597, 26.911221, 11.075291>,  <25.894724, 26.772566, 11.185244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.732597, 26.911221, 11.075291>,  <25.462387, 27.142313, 10.892035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.732597, 26.911221, 11.075291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704295, -0.689497, 0.169005,
		0.218245, -0.436831, -0.872667,
		0.675528, -0.577731, 0.458138,
		25.935255, 26.737902, 11.212732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.628874, 26.490656, 10.516402>,  <25.462387, 27.142313, 10.892035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.628874, 26.490656, 10.516402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.647396, 26.453203, 10.914214>,  <25.658510, 26.430731, 11.152902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.647396, 26.453203, 10.914214>,  <25.628874, 26.490656, 10.516402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.647396, 26.453203, 10.914214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751009, -0.659734, -0.027145,
		0.658667, -0.745643, -0.100867,
		0.046305, -0.093631, 0.994529,
		25.661287, 26.425114, 11.212573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.724070, 25.784039, 10.840178>,  <25.628874, 26.490656, 10.516402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.724070, 25.784039, 10.840178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.508732, 25.987837, 11.108686>,  <25.379530, 26.110115, 11.269791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.508732, 25.987837, 11.108686>,  <25.724070, 25.784039, 10.840178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.508732, 25.987837, 11.108686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741084, -0.665454, -0.089251,
		0.401226, -0.545514, 0.735820,
		-0.538342, 0.509495, 0.671269,
		25.347229, 26.140686, 11.310067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.540985, 25.285599, 11.390079>,  <25.724070, 25.784039, 10.840178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.540985, 25.285599, 11.390079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.265030, 25.566130, 11.318309>,  <25.099457, 25.734449, 11.275247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.265030, 25.566130, 11.318309>,  <25.540985, 25.285599, 11.390079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.265030, 25.566130, 11.318309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690861, -0.711884, -0.126222,
		-0.216252, 0.036878, 0.975641,
		-0.689888, 0.701328, -0.179424,
		25.058064, 25.776527, 11.264482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.872456, 25.258389, 11.839356>,  <25.540985, 25.285599, 11.390079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.872456, 25.258389, 11.839356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.818922, 25.414551, 11.475012>,  <24.786802, 25.508249, 11.256405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.818922, 25.414551, 11.475012>,  <24.872456, 25.258389, 11.839356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.818922, 25.414551, 11.475012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679917, -0.704857, -0.202209,
		-0.720972, 0.592249, 0.359779,
		-0.133835, 0.390407, -0.910862,
		24.778770, 25.531673, 11.201754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.252724, 25.518785, 11.748153>,  <24.872456, 25.258389, 11.839356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.252724, 25.518785, 11.748153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.387596, 25.348459, 11.412298>,  <24.468519, 25.246264, 11.210786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.387596, 25.348459, 11.412298>,  <24.252724, 25.518785, 11.748153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.387596, 25.348459, 11.412298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770522, -0.637265, 0.013759,
		-0.540929, 0.642319, -0.542976,
		0.337182, -0.425817, -0.839636,
		24.488750, 25.220715, 11.160407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.687759, 25.465851, 11.389966>,  <24.252724, 25.518785, 11.748153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.687759, 25.465851, 11.389966> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.940365, 25.165684, 11.311924>,  <24.091928, 24.985584, 11.265099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.940365, 25.165684, 11.311924>,  <23.687759, 25.465851, 11.389966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.940365, 25.165684, 11.311924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722954, -0.660824, 0.201618,
		-0.280228, 0.013728, -0.959835,
		0.631514, -0.750416, -0.195106,
		24.129820, 24.940559, 11.253392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.367525, 24.846359, 11.090672>,  <23.687759, 25.465851, 11.389966>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.367525, 24.846359, 11.090672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.694649, 24.683115, 11.252972>,  <23.890923, 24.585169, 11.350351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.694649, 24.683115, 11.252972>,  <23.367525, 24.846359, 11.090672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.694649, 24.683115, 11.252972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403330, -0.909381, -0.101739,
		0.410500, -0.080447, -0.908305,
		0.817811, -0.408111, 0.405748,
		23.939993, 24.560682, 11.374696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.588644, 24.255001, 10.680197>,  <23.367525, 24.846359, 11.090672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.588644, 24.255001, 10.680197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.735260, 24.218269, 11.050541>,  <23.823231, 24.196230, 11.272747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.735260, 24.218269, 11.050541>,  <23.588644, 24.255001, 10.680197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.735260, 24.218269, 11.050541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314296, -0.948840, 0.030320,
		0.875709, -0.302108, -0.376650,
		0.366541, -0.091828, 0.925859,
		23.845222, 24.190722, 11.328299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.928558, 23.556967, 10.662910>,  <23.588644, 24.255001, 10.680197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.928558, 23.556967, 10.662910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.944784, 23.657509, 11.049727>,  <23.954519, 23.717834, 11.281818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.944784, 23.657509, 11.049727>,  <23.928558, 23.556967, 10.662910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.944784, 23.657509, 11.049727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096396, -0.962342, 0.254176,
		0.994516, -0.103530, -0.014807,
		0.040564, 0.251354, 0.967045,
		23.956953, 23.732916, 11.339841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.408527, 23.135509, 11.067822>,  <23.928558, 23.556967, 10.662910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.408527, 23.135509, 11.067822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.150864, 23.262905, 11.345995>,  <23.996265, 23.339342, 11.512898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.150864, 23.262905, 11.345995>,  <24.408527, 23.135509, 11.067822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.150864, 23.262905, 11.345995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094008, -0.935262, 0.341245,
		0.759093, 0.154439, 0.632397,
		-0.644158, 0.318487, 0.695433,
		23.957617, 23.358452, 11.554625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.548429, 22.674412, 11.583526>,  <24.408527, 23.135509, 11.067822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.548429, 22.674412, 11.583526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.185503, 22.817348, 11.672141>,  <23.967747, 22.903111, 11.725310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.185503, 22.817348, 11.672141>,  <24.548429, 22.674412, 11.583526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.185503, 22.817348, 11.672141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317045, -0.927573, 0.197714,
		0.276145, 0.109152, 0.954898,
		-0.907318, 0.357343, 0.221539,
		23.913307, 22.924551, 11.738603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.326313, 22.274317, 12.202403>,  <24.548429, 22.674412, 11.583526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.326313, 22.274317, 12.202403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.996298, 22.445932, 12.055305>,  <23.798288, 22.548903, 11.967047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.996298, 22.445932, 12.055305>,  <24.326313, 22.274317, 12.202403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.996298, 22.445932, 12.055305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551371, -0.753687, 0.357695,
		-0.123698, 0.497875, 0.858382,
		-0.825039, 0.429041, -0.367743,
		23.748787, 22.574644, 11.944983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.880644, 22.299547, 12.751532>,  <24.326313, 22.274317, 12.202403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.880644, 22.299547, 12.751532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.700747, 22.294619, 12.394302>,  <23.592808, 22.291660, 12.179965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.700747, 22.294619, 12.394302>,  <23.880644, 22.299547, 12.751532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.700747, 22.294619, 12.394302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563825, -0.771571, 0.294584,
		-0.692698, 0.636024, 0.340062,
		-0.449745, -0.012323, -0.893072,
		23.565823, 22.290922, 12.126381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.178627, 22.251644, 12.847555>,  <23.880644, 22.299547, 12.751532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.178627, 22.251644, 12.847555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.240368, 22.130909, 12.471242>,  <23.277412, 22.058468, 12.245454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.240368, 22.130909, 12.471242>,  <23.178627, 22.251644, 12.847555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.240368, 22.130909, 12.471242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507225, -0.841344, 0.186714,
		-0.847879, 0.448369, -0.282961,
		0.154351, -0.301836, -0.940782,
		23.286673, 22.040358, 12.189008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.526875, 22.179241, 12.637070>,  <23.178627, 22.251644, 12.847555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.526875, 22.179241, 12.637070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.744904, 21.965536, 12.378626>,  <22.875721, 21.837313, 12.223559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.744904, 21.965536, 12.378626>,  <22.526875, 22.179241, 12.637070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.744904, 21.965536, 12.378626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380867, -0.844340, 0.376870,
		-0.746882, 0.040659, -0.663712,
		0.545075, -0.534264, -0.646108,
		22.908426, 21.805258, 12.184793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.041922, 21.660528, 12.476754>,  <22.526875, 22.179241, 12.637070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.041922, 21.660528, 12.476754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.397097, 21.525213, 12.352093>,  <22.610203, 21.444025, 12.277296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.397097, 21.525213, 12.352093>,  <22.041922, 21.660528, 12.476754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.397097, 21.525213, 12.352093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231538, -0.914190, 0.332636,
		-0.397436, -0.223201, -0.890071,
		0.887938, -0.338287, -0.311652,
		22.663479, 21.423727, 12.258597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.906012, 21.061985, 11.953487>,  <22.041922, 21.660528, 12.476754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.906012, 21.061985, 11.953487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.274418, 21.024349, 12.104685>,  <22.495461, 21.001768, 12.195403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.274418, 21.024349, 12.104685>,  <21.906012, 21.061985, 11.953487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.274418, 21.024349, 12.104685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180704, -0.962859, 0.200622,
		0.345079, -0.253081, -0.903809,
		0.921014, -0.094092, 0.377995,
		22.550722, 20.996122, 12.218083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.140675, 20.356379, 11.714161>,  <21.906012, 21.061985, 11.953487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.140675, 20.356379, 11.714161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.367609, 20.430332, 12.035146>,  <22.503771, 20.474705, 12.227736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.367609, 20.430332, 12.035146>,  <22.140675, 20.356379, 11.714161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.367609, 20.430332, 12.035146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124753, -0.943927, 0.305678,
		0.813981, -0.273532, -0.512460,
		0.567337, 0.184885, 0.802463,
		22.537809, 20.485798, 12.275885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.454006, 19.730555, 11.790352>,  <22.140675, 20.356379, 11.714161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.454006, 19.730555, 11.790352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.503157, 19.921524, 12.138368>,  <22.532646, 20.036106, 12.347178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.503157, 19.921524, 12.138368>,  <22.454006, 19.730555, 11.790352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.503157, 19.921524, 12.138368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027312, -0.877979, 0.477921,
		0.992046, -0.034961, -0.120920,
		0.122874, 0.477422, 0.870041,
		22.540018, 20.064751, 12.399380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.983711, 19.354683, 12.125667>,  <22.454006, 19.730555, 11.790352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.983711, 19.354683, 12.125667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.824766, 19.552618, 12.434792>,  <22.729399, 19.671379, 12.620267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.824766, 19.552618, 12.434792>,  <22.983711, 19.354683, 12.125667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.824766, 19.552618, 12.434792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256413, -0.748739, 0.611263,
		0.881110, 0.441053, 0.170640,
		-0.397364, 0.494836, 0.772813,
		22.705557, 19.701069, 12.666636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.514009, 19.342552, 12.582368>,  <22.983711, 19.354683, 12.125667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.514009, 19.342552, 12.582368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.152063, 19.381479, 12.748137>,  <22.934895, 19.404835, 12.847597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.152063, 19.381479, 12.748137>,  <23.514009, 19.342552, 12.582368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.152063, 19.381479, 12.748137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178638, -0.796849, 0.577166,
		0.386398, 0.596290, 0.703658,
		-0.904867, 0.097316, 0.414421,
		22.880604, 19.410673, 12.872462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.566206, 19.142811, 13.285069>,  <23.514009, 19.342552, 12.582368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.566206, 19.142811, 13.285069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.168917, 19.105738, 13.257030>,  <22.930542, 19.083494, 13.240206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.168917, 19.105738, 13.257030>,  <23.566206, 19.142811, 13.285069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.168917, 19.105738, 13.257030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052079, -0.894277, 0.444473,
		-0.103883, 0.437811, 0.893045,
		-0.993225, -0.092683, -0.070100,
		22.870949, 19.077932, 13.236000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.371296, 18.887127, 13.907393>,  <23.566206, 19.142811, 13.285069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.371296, 18.887127, 13.907393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.034597, 18.825994, 13.700278>,  <22.832579, 18.789316, 13.576009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.034597, 18.825994, 13.700278>,  <23.371296, 18.887127, 13.907393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.034597, 18.825994, 13.700278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187335, -0.816818, 0.545632,
		-0.506328, 0.556284, 0.658923,
		-0.841747, -0.152830, -0.517789,
		22.782074, 18.780146, 13.544942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.813097, 18.923187, 14.392487>,  <23.371296, 18.887127, 13.907393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.813097, 18.923187, 14.392487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.679749, 18.729156, 14.069114>,  <22.599739, 18.612738, 13.875090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.679749, 18.729156, 14.069114>,  <22.813097, 18.923187, 14.392487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.679749, 18.729156, 14.069114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143812, -0.821287, 0.552093,
		-0.931762, 0.300315, 0.204035,
		-0.333373, -0.485077, -0.808433,
		22.579737, 18.583633, 13.826584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.057274, 18.669674, 14.489918>,  <22.813097, 18.923187, 14.392487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.057274, 18.669674, 14.489918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.257689, 18.445885, 14.225811>,  <22.377937, 18.311611, 14.067347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.257689, 18.445885, 14.225811>,  <22.057274, 18.669674, 14.489918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.257689, 18.445885, 14.225811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278478, -0.826589, 0.489081,
		-0.819398, -0.061176, -0.569951,
		0.501035, -0.559471, -0.660269,
		22.408001, 18.278044, 14.027731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.685118, 18.093201, 14.539525>,  <22.057274, 18.669674, 14.489918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.685118, 18.093201, 14.539525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.012268, 17.977610, 14.340499>,  <22.208559, 17.908255, 14.221084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.012268, 17.977610, 14.340499>,  <21.685118, 18.093201, 14.539525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.012268, 17.977610, 14.340499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072685, -0.909697, 0.408861,
		-0.570785, -0.298232, -0.765024,
		0.817876, -0.288978, -0.497565,
		22.257631, 17.890917, 14.191230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.427982, 17.527424, 14.032456>,  <21.685118, 18.093201, 14.539525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.427982, 17.527424, 14.032456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.824711, 17.502739, 14.077139>,  <22.062748, 17.487928, 14.103949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.824711, 17.502739, 14.077139>,  <21.427982, 17.527424, 14.032456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.824711, 17.502739, 14.077139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099229, -0.923342, 0.370937,
		0.080250, -0.378988, -0.921915,
		0.991823, -0.061713, 0.111705,
		22.122257, 17.484224, 14.110650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.630699, 16.849516, 13.768100>,  <21.427982, 17.527424, 14.032456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.630699, 16.849516, 13.768100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.904696, 16.987946, 14.024544>,  <22.069094, 17.071003, 14.178410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.904696, 16.987946, 14.024544>,  <21.630699, 16.849516, 13.768100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.904696, 16.987946, 14.024544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039578, -0.861000, 0.507062,
		0.727478, -0.372706, -0.576079,
		0.684989, 0.346076, 0.641110,
		22.110191, 17.091768, 14.216877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.082558, 16.194632, 13.912609>,  <21.630699, 16.849516, 13.768100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.082558, 16.194632, 13.912609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.163637, 16.464876, 14.196148>,  <22.212284, 16.627024, 14.366271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.163637, 16.464876, 14.196148>,  <22.082558, 16.194632, 13.912609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.163637, 16.464876, 14.196148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006657, -0.722905, 0.690915,
		0.979219, -0.144767, -0.142034,
		0.202699, 0.675611, 0.708846,
		22.224447, 16.667559, 14.408802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.616713, 15.930821, 14.246533>,  <22.082558, 16.194632, 13.912609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.616713, 15.930821, 14.246533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.443319, 16.187449, 14.499668>,  <22.339283, 16.341425, 14.651549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.443319, 16.187449, 14.499668>,  <22.616713, 15.930821, 14.246533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.443319, 16.187449, 14.499668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095132, -0.730902, 0.675820,
		0.896125, 0.232754, 0.377869,
		-0.433485, 0.641567, 0.632837,
		22.313274, 16.379919, 14.689519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.977720, 15.909655, 14.991696>,  <22.616713, 15.930821, 14.246533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.977720, 15.909655, 14.991696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.590723, 16.009068, 15.010398>,  <22.358524, 16.068716, 15.021619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.590723, 16.009068, 15.010398>,  <22.977720, 15.909655, 14.991696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.590723, 16.009068, 15.010398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123669, -0.626230, 0.769767,
		0.220590, 0.738964, 0.636610,
		-0.967495, 0.248532, 0.046754,
		22.300474, 16.083628, 15.024424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.020952, 15.383453, 15.484287>,  <22.977720, 15.909655, 14.991696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.020952, 15.383453, 15.484287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.243071, 15.090002, 15.327603>,  <23.376341, 14.913931, 15.233593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.243071, 15.090002, 15.327603>,  <23.020952, 15.383453, 15.484287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.243071, 15.090002, 15.327603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592113, 0.679496, -0.433228,
		0.583993, 0.008633, 0.811713,
		0.555296, -0.733628, -0.391709,
		23.409658, 14.869913, 15.210091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.806089, 15.578197, 15.666454>,  <23.020952, 15.383453, 15.484287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.806089, 15.578197, 15.666454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.789074, 15.337928, 15.347109>,  <23.778864, 15.193767, 15.155501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.789074, 15.337928, 15.347109>,  <23.806089, 15.578197, 15.666454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.789074, 15.337928, 15.347109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677988, 0.569579, -0.464663,
		0.733841, -0.561047, 0.383020,
		-0.042538, -0.600672, -0.798363,
		23.776312, 15.157726, 15.107600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.473854, 15.469059, 15.466256>,  <23.806089, 15.578197, 15.666454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.473854, 15.469059, 15.466256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.256456, 15.397997, 15.138097>,  <24.126019, 15.355360, 14.941201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.256456, 15.397997, 15.138097>,  <24.473854, 15.469059, 15.466256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.256456, 15.397997, 15.138097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572925, 0.635792, -0.517229,
		0.613488, -0.751138, -0.243770,
		-0.543497, -0.177652, -0.820396,
		24.093409, 15.344701, 14.891977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.917730, 15.474574, 15.023203>,  <24.473854, 15.469059, 15.466256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.917730, 15.474574, 15.023203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.590488, 15.528789, 14.799656>,  <24.394142, 15.561317, 14.665528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.590488, 15.528789, 14.799656>,  <24.917730, 15.474574, 15.023203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.590488, 15.528789, 14.799656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477524, 0.701615, -0.528874,
		0.320427, -0.699547, -0.638717,
		-0.818106, 0.135537, -0.558867,
		24.345057, 15.569449, 14.631996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.191404, 15.475584, 14.321184>,  <24.917730, 15.474574, 15.023203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.191404, 15.475584, 14.321184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.827032, 15.632744, 14.270850>,  <24.608408, 15.727039, 14.240649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.827032, 15.632744, 14.270850>,  <25.191404, 15.475584, 14.321184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.827032, 15.632744, 14.270850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394879, 0.742015, -0.541742,
		-0.119479, -0.543180, -0.831072,
		-0.910931, 0.392900, -0.125835,
		24.553753, 15.750614, 14.233100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.081432, 15.515948, 13.622036>,  <25.191404, 15.475584, 14.321184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.081432, 15.515948, 13.622036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.807552, 15.766564, 13.770969>,  <24.643225, 15.916934, 13.860330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.807552, 15.766564, 13.770969>,  <25.081432, 15.515948, 13.622036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.807552, 15.766564, 13.770969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334093, 0.723850, -0.603675,
		-0.647740, -0.288943, -0.704943,
		-0.684700, 0.626541, 0.372333,
		24.602142, 15.954527, 13.882669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.780748, 15.843132, 13.083614>,  <25.081432, 15.515948, 13.622036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.780748, 15.843132, 13.083614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.724346, 16.083817, 13.398082>,  <24.690504, 16.228228, 13.586762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.724346, 16.083817, 13.398082>,  <24.780748, 15.843132, 13.083614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.724346, 16.083817, 13.398082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358034, 0.771348, -0.526151,
		-0.923000, 0.207284, -0.324198,
		-0.141007, 0.601711, 0.786169,
		24.682045, 16.264330, 13.633932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.431053, 16.438526, 12.808527>,  <24.780748, 15.843132, 13.083614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.431053, 16.438526, 12.808527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.623055, 16.537588, 13.145161>,  <24.738255, 16.597025, 13.347141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.623055, 16.537588, 13.145161>,  <24.431053, 16.438526, 12.808527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.623055, 16.537588, 13.145161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399111, 0.792648, -0.460891,
		-0.781223, 0.557114, 0.281630,
		0.480002, 0.247657, 0.841585,
		24.767056, 16.611885, 13.397636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.314329, 17.191038, 12.832603>,  <24.431053, 16.438526, 12.808527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.314329, 17.191038, 12.832603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.634342, 17.117060, 13.060899>,  <24.826349, 17.072672, 13.197876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.634342, 17.117060, 13.060899>,  <24.314329, 17.191038, 12.832603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.634342, 17.117060, 13.060899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359020, 0.909755, -0.208448,
		-0.480681, 0.371672, 0.794233,
		0.800031, -0.184948, 0.570740,
		24.874352, 17.061575, 13.232121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.476994, 17.842924, 13.292624>,  <24.314329, 17.191038, 12.832603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.476994, 17.842924, 13.292624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.815100, 17.631819, 13.326068>,  <25.017963, 17.505156, 13.346134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.815100, 17.631819, 13.326068>,  <24.476994, 17.842924, 13.292624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.815100, 17.631819, 13.326068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531537, 0.814455, -0.232661,
		0.054694, 0.241102, 0.968957,
		0.845267, -0.527762, 0.083609,
		25.068680, 17.473490, 13.351151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.900246, 18.274923, 13.723943>,  <24.476994, 17.842924, 13.292624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.900246, 18.274923, 13.723943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.140337, 18.020363, 13.530153>,  <25.284391, 17.867626, 13.413879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.140337, 18.020363, 13.530153>,  <24.900246, 18.274923, 13.723943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.140337, 18.020363, 13.530153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495715, 0.771357, -0.399093,
		0.627686, -0.000613, 0.778466,
		0.600231, -0.636402, -0.484474,
		25.320406, 17.829443, 13.384811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.508938, 18.612144, 13.704005>,  <24.900246, 18.274923, 13.723943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.508938, 18.612144, 13.704005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.574492, 18.340008, 13.418271>,  <25.613823, 18.176725, 13.246831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.574492, 18.340008, 13.418271>,  <25.508938, 18.612144, 13.704005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.574492, 18.340008, 13.418271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465519, 0.691764, -0.552046,
		0.869732, -0.242064, 0.430083,
		0.163885, -0.680344, -0.714334,
		25.623657, 18.135904, 13.203971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230293, 18.599276, 13.541877>,  <25.508938, 18.612144, 13.704005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230293, 18.599276, 13.541877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.020893, 18.476612, 13.223907>,  <25.895252, 18.403013, 13.033125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.020893, 18.476612, 13.223907>,  <26.230293, 18.599276, 13.541877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.020893, 18.476612, 13.223907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193258, 0.865929, -0.461323,
		0.829817, -0.395129, -0.394051,
		-0.523502, -0.306660, -0.794925,
		25.863842, 18.384615, 12.985429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609472, 18.919300, 13.098331>,  <26.230293, 18.599276, 13.541877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.609472, 18.919300, 13.098331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.270124, 18.810642, 12.916573>,  <26.066515, 18.745447, 12.807517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.270124, 18.810642, 12.916573>,  <26.609472, 18.919300, 13.098331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270124, 18.810642, 12.916573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038129, 0.824739, -0.564226,
		0.528026, -0.495999, -0.689328,
		-0.848372, -0.271643, -0.454396,
		26.015614, 18.729149, 12.780253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758490, 18.882673, 12.381807>,  <26.609472, 18.919300, 13.098331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.758490, 18.882673, 12.381807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.365601, 18.949656, 12.415741>,  <26.129868, 18.989845, 12.436101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.365601, 18.949656, 12.415741>,  <26.758490, 18.882673, 12.381807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.365601, 18.949656, 12.415741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095272, 0.834091, -0.543338,
		-0.161743, -0.525597, -0.835217,
		-0.982223, 0.167454, 0.084834,
		26.070934, 18.999891, 12.441191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.657032, 19.329330, 11.795728>,  <26.758490, 18.882673, 12.381807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.657032, 19.329330, 11.795728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.289667, 19.328583, 11.953978>,  <26.069248, 19.328135, 12.048927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.289667, 19.328583, 11.953978>,  <26.657032, 19.329330, 11.795728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289667, 19.328583, 11.953978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194379, 0.873101, -0.447114,
		-0.344585, -0.487535, -0.802229,
		-0.918411, -0.001868, 0.395624,
		26.014145, 19.328022, 12.072665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.100664, 19.353931, 11.188592>,  <26.657032, 19.329330, 11.795728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.100664, 19.353931, 11.188592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.957111, 19.515318, 11.525262>,  <25.870979, 19.612150, 11.727263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.957111, 19.515318, 11.525262>,  <26.100664, 19.353931, 11.188592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.957111, 19.515318, 11.525262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094489, 0.881409, -0.462806,
		-0.928587, -0.245623, -0.278200,
		-0.358884, 0.403469, 0.841674,
		25.849445, 19.636358, 11.777764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.493628, 19.704634, 11.008417>,  <26.100664, 19.353931, 11.188592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.493628, 19.704634, 11.008417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.645493, 19.872961, 11.337966>,  <25.736612, 19.973957, 11.535696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.645493, 19.872961, 11.337966>,  <25.493628, 19.704634, 11.008417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.645493, 19.872961, 11.337966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014268, 0.893112, -0.449609,
		-0.925014, 0.158945, 0.345087,
		0.379664, 0.420818, 0.823873,
		25.759392, 19.999207, 11.585128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.284887, 20.338585, 10.976369>,  <25.493628, 19.704634, 11.008417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.284887, 20.338585, 10.976369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.601871, 20.357876, 11.219575>,  <25.792061, 20.369450, 11.365499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.601871, 20.357876, 11.219575>,  <25.284887, 20.338585, 10.976369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.601871, 20.357876, 11.219575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265211, 0.870448, -0.414708,
		-0.549246, 0.489892, 0.677004,
		0.792459, 0.048227, 0.608015,
		25.839609, 20.372345, 11.401979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.716373, 17.686485, 21.355728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.423344, 17.443148, 21.233578>,  <16.247526, 17.297146, 21.160288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.423344, 17.443148, 21.233578>,  <16.716373, 17.686485, 21.355728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.423344, 17.443148, 21.233578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551598, -0.267682, -0.789991,
		0.398844, -0.747170, 0.531658,
		-0.732573, -0.608345, -0.305374,
		16.203571, 17.260645, 21.141966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.077974, 17.063032, 21.206957>,  <16.716373, 17.686485, 21.355728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.077974, 17.063032, 21.206957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.737928, 17.009903, 21.003128>,  <16.533901, 16.978025, 20.880831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.737928, 17.009903, 21.003128>,  <17.077974, 17.063032, 21.206957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.737928, 17.009903, 21.003128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526559, -0.226110, -0.819518,
		-0.006369, -0.965004, 0.262158,
		-0.850115, -0.132822, -0.509571,
		16.482893, 16.970057, 20.850256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.184475, 16.434973, 20.645441>,  <17.077974, 17.063032, 21.206957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.184475, 16.434973, 20.645441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.858381, 16.634518, 20.527779>,  <16.662725, 16.754246, 20.457182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.858381, 16.634518, 20.527779>,  <17.184475, 16.434973, 20.645441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.858381, 16.634518, 20.527779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285670, -0.095430, -0.953565,
		-0.503771, -0.861410, -0.064713,
		-0.815235, 0.498865, -0.294154,
		16.613811, 16.784178, 20.439533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.882113, 15.977750, 20.110453>,  <17.184475, 16.434973, 20.645441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.882113, 15.977750, 20.110453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.722889, 16.336941, 20.035421>,  <16.627354, 16.552456, 19.990402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.722889, 16.336941, 20.035421>,  <16.882113, 15.977750, 20.110453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.722889, 16.336941, 20.035421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173444, -0.127116, -0.976606,
		-0.900814, -0.421282, -0.105149,
		-0.398061, 0.897977, -0.187577,
		16.603470, 16.606335, 19.979149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.321527, 15.862142, 19.603350>,  <16.882113, 15.977750, 20.110453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.321527, 15.862142, 19.603350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.452677, 16.239824, 19.590860>,  <16.531366, 16.466434, 19.583366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.452677, 16.239824, 19.590860>,  <16.321527, 15.862142, 19.603350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.452677, 16.239824, 19.590860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157690, -0.087282, -0.983624,
		-0.931468, 0.317580, -0.177509,
		0.327873, 0.944206, -0.031221,
		16.551039, 16.523087, 19.581493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.061605, 16.227608, 18.970181>,  <16.321527, 15.862142, 19.603350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.061605, 16.227608, 18.970181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.375984, 16.452051, 19.074060>,  <16.564611, 16.586718, 19.136389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.375984, 16.452051, 19.074060>,  <16.061605, 16.227608, 18.970181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.375984, 16.452051, 19.074060> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229365, 0.125461, -0.965221,
		-0.574174, 0.818180, -0.030093,
		0.785949, 0.561107, 0.259698,
		16.611769, 16.620384, 19.151970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.006483, 16.663815, 18.474619>,  <16.061605, 16.227608, 18.970181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.006483, 16.663815, 18.474619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.382967, 16.704840, 18.603371>,  <16.608858, 16.729456, 18.680622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.382967, 16.704840, 18.603371>,  <16.006483, 16.663815, 18.474619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.382967, 16.704840, 18.603371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265606, 0.364103, -0.892683,
		-0.208754, 0.925694, 0.315456,
		0.941209, 0.102564, 0.321878,
		16.665329, 16.735609, 18.699934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.265284, 17.263216, 18.202711>,  <16.006483, 16.663815, 18.474619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.265284, 17.263216, 18.202711> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.599846, 17.061485, 18.288576>,  <16.800583, 16.940447, 18.340096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.599846, 17.061485, 18.288576>,  <16.265284, 17.263216, 18.202711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.599846, 17.061485, 18.288576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396837, 0.287046, -0.871852,
		0.378079, 0.814408, 0.440222,
		0.836407, -0.504325, 0.214661,
		16.850769, 16.910189, 18.352974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.801239, 17.725245, 18.006731>,  <16.265284, 17.263216, 18.202711>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.801239, 17.725245, 18.006731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.946445, 17.352768, 18.020014>,  <17.033569, 17.129282, 18.027983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.946445, 17.352768, 18.020014>,  <16.801239, 17.725245, 18.006731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.946445, 17.352768, 18.020014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549911, 0.185336, -0.814400,
		0.752209, 0.313899, 0.579353,
		0.363015, -0.931192, 0.033205,
		17.055349, 17.073410, 18.029976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.474573, 17.881720, 17.874514>,  <16.801239, 17.725245, 18.006731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.474573, 17.881720, 17.874514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.410831, 17.497431, 17.783636>,  <17.372587, 17.266857, 17.729109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.410831, 17.497431, 17.783636>,  <17.474573, 17.881720, 17.874514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.410831, 17.497431, 17.783636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627566, 0.079070, -0.774538,
		0.762081, -0.266004, 0.590317,
		-0.159354, -0.960724, -0.227193,
		17.363026, 17.209213, 17.715479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.146923, 17.544779, 17.756165>,  <17.474573, 17.881720, 17.874514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.146923, 17.544779, 17.756165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.867855, 17.320759, 17.577457>,  <17.700415, 17.186348, 17.470234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.867855, 17.320759, 17.577457>,  <18.146923, 17.544779, 17.756165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.867855, 17.320759, 17.577457> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486393, 0.087582, -0.869340,
		0.526002, -0.823817, 0.211300,
		-0.697670, -0.560049, -0.446767,
		17.658554, 17.152744, 17.443428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.469538, 17.315386, 17.289362>,  <18.146923, 17.544779, 17.756165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.469538, 17.315386, 17.289362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.100582, 17.236834, 17.156315>,  <17.879210, 17.189701, 17.076487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.100582, 17.236834, 17.156315>,  <18.469538, 17.315386, 17.289362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.100582, 17.236834, 17.156315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323389, 0.078294, -0.943022,
		0.211237, -0.977396, -0.008709,
		-0.922388, -0.196384, -0.332618,
		17.823866, 17.177919, 17.056530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.474218, 16.593775, 16.897881>,  <18.469538, 17.315386, 17.289362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.474218, 16.593775, 16.897881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.175871, 16.835325, 16.785440>,  <17.996862, 16.980255, 16.717978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.175871, 16.835325, 16.785440>,  <18.474218, 16.593775, 16.897881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.175871, 16.835325, 16.785440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299398, -0.073039, -0.951329,
		-0.595014, -0.793726, -0.126321,
		-0.745868, 0.603874, -0.281099,
		17.952110, 17.016487, 16.701111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.176863, 16.327213, 16.844694>,  <18.474218, 16.593775, 16.897881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.176863, 16.327213, 16.844694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.994444, 16.408754, 17.191212>,  <18.884993, 16.457680, 17.399122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.994444, 16.408754, 17.191212>,  <19.176863, 16.327213, 16.844694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.994444, 16.408754, 17.191212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697909, -0.685923, -0.205993,
		0.552218, -0.698537, 0.455085,
		-0.456047, 0.203855, 0.866294,
		18.857630, 16.469912, 17.451099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.555349, 15.824007, 16.721405>,  <19.176863, 16.327213, 16.844694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.555349, 15.824007, 16.721405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.728548, 15.466181, 16.677103>,  <19.832468, 15.251485, 16.650522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.728548, 15.466181, 16.677103>,  <19.555349, 15.824007, 16.721405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.728548, 15.466181, 16.677103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452719, -0.322072, 0.831454,
		-0.779460, -0.309877, -0.544443,
		0.432998, -0.894565, -0.110755,
		19.858448, 15.197811, 16.643877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.977156, 15.223645, 16.693447>,  <19.555349, 15.824007, 16.721405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.977156, 15.223645, 16.693447> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.321390, 15.068344, 16.825294>,  <19.527931, 14.975163, 16.904402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.321390, 15.068344, 16.825294>,  <18.977156, 15.223645, 16.693447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.321390, 15.068344, 16.825294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499407, -0.516351, 0.695682,
		-0.099902, -0.763309, -0.638262,
		0.860588, -0.388253, 0.329618,
		19.579567, 14.951868, 16.924179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.880545, 14.469461, 16.847326>,  <18.977156, 15.223645, 16.693447>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.880545, 14.469461, 16.847326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.200743, 14.584521, 17.057648>,  <19.392860, 14.653557, 17.183840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.200743, 14.584521, 17.057648>,  <18.880545, 14.469461, 16.847326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.200743, 14.584521, 17.057648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419341, -0.357994, 0.834262,
		0.428210, -0.888312, -0.165948,
		0.800493, 0.287650, 0.525802,
		19.440891, 14.670816, 17.215389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.008934, 13.897904, 17.194277>,  <18.880545, 14.469461, 16.847326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.008934, 13.897904, 17.194277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.204359, 14.184451, 17.393526>,  <19.321613, 14.356379, 17.513075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.204359, 14.184451, 17.393526>,  <19.008934, 13.897904, 17.194277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.204359, 14.184451, 17.393526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288248, -0.406329, 0.867070,
		0.823541, -0.567201, 0.007974,
		0.488562, 0.716366, 0.498123,
		19.350927, 14.399361, 17.542963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.300844, 13.613826, 17.751266>,  <19.008934, 13.897904, 17.194277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.300844, 13.613826, 17.751266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.327833, 13.988559, 17.888550>,  <19.344027, 14.213399, 17.970921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.327833, 13.988559, 17.888550>,  <19.300844, 13.613826, 17.751266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.327833, 13.988559, 17.888550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444641, -0.279709, 0.850916,
		0.893164, -0.210018, 0.397681,
		0.067472, 0.936832, 0.343208,
		19.348076, 14.269608, 17.991512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.342009, 13.474703, 18.395771>,  <19.300844, 13.613826, 17.751266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.342009, 13.474703, 18.395771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.308578, 13.871274, 18.435947>,  <19.288521, 14.109217, 18.460052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.308578, 13.871274, 18.435947>,  <19.342009, 13.474703, 18.395771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.308578, 13.871274, 18.435947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471365, -0.128134, 0.872580,
		0.877970, 0.025581, 0.478033,
		-0.083573, 0.991427, 0.100440,
		19.283506, 14.168702, 18.466080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.593441, 13.624403, 19.056761>,  <19.342009, 13.474703, 18.395771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.593441, 13.624403, 19.056761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.336660, 13.903376, 18.929331>,  <19.182592, 14.070759, 18.852873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.336660, 13.903376, 18.929331>,  <19.593441, 13.624403, 19.056761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.336660, 13.903376, 18.929331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581570, -0.172127, 0.795078,
		0.499678, 0.695673, 0.516102,
		-0.641949, 0.697432, -0.318575,
		19.144075, 14.112605, 18.833759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.545717, 14.134127, 19.581877>,  <19.593441, 13.624403, 19.056761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.545717, 14.134127, 19.581877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.208565, 14.160390, 19.368244>,  <19.006273, 14.176147, 19.240065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.208565, 14.160390, 19.368244>,  <19.545717, 14.134127, 19.581877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.208565, 14.160390, 19.368244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538093, -0.097034, 0.837282,
		0.003150, 0.993113, 0.117118,
		-0.842880, 0.065657, -0.534081,
		18.955700, 14.180087, 19.208019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.155668, 14.666047, 19.868263>,  <19.545717, 14.134127, 19.581877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.155668, 14.666047, 19.868263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.874441, 14.462179, 19.669897>,  <18.705706, 14.339858, 19.550877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.874441, 14.462179, 19.669897>,  <19.155668, 14.666047, 19.868263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.874441, 14.462179, 19.669897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525529, -0.097425, 0.845179,
		-0.479077, 0.854837, -0.199349,
		-0.703068, -0.509669, -0.495915,
		18.663521, 14.309278, 19.521122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.514971, 15.005840, 19.978121>,  <19.155668, 14.666047, 19.868263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.514971, 15.005840, 19.978121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.406828, 14.634808, 19.874971>,  <18.341942, 14.412188, 19.813082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.406828, 14.634808, 19.874971>,  <18.514971, 15.005840, 19.978121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.406828, 14.634808, 19.874971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444704, -0.117244, 0.887970,
		-0.853899, 0.354747, -0.380802,
		-0.270358, -0.927582, -0.257872,
		18.325720, 14.356533, 19.797609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.862133, 14.998606, 20.120752>,  <18.514971, 15.005840, 19.978121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.862133, 14.998606, 20.120752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.954992, 14.609542, 20.118158>,  <18.010708, 14.376103, 20.116602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.954992, 14.609542, 20.118158>,  <17.862133, 14.998606, 20.120752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.954992, 14.609542, 20.118158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538960, -0.134181, 0.831576,
		-0.809709, -0.189554, -0.555374,
		0.232149, -0.972659, -0.006486,
		18.024637, 14.317744, 20.116213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.169506, 14.621087, 20.277105>,  <17.862133, 14.998606, 20.120752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.169506, 14.621087, 20.277105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.471817, 14.373153, 20.361580>,  <17.653204, 14.224392, 20.412266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.471817, 14.373153, 20.361580>,  <17.169506, 14.621087, 20.277105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.471817, 14.373153, 20.361580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436062, -0.235795, 0.868476,
		-0.488517, -0.748466, -0.448496,
		0.755778, -0.619838, 0.211188,
		17.698551, 14.187201, 20.424936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.902086, 13.961848, 20.373692>,  <17.169506, 14.621087, 20.277105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.902086, 13.961848, 20.373692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.248459, 13.964585, 20.573738>,  <17.456282, 13.966228, 20.693766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.248459, 13.964585, 20.573738>,  <16.902086, 13.961848, 20.373692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.248459, 13.964585, 20.573738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486120, -0.223765, 0.844758,
		0.117689, -0.974619, -0.190439,
		0.865931, 0.006843, 0.500116,
		17.508238, 13.966638, 20.723772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.845367, 13.479660, 20.890318>,  <16.902086, 13.961848, 20.373692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.845367, 13.479660, 20.890318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.163481, 13.675727, 21.033014>,  <17.354349, 13.793367, 21.118631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.163481, 13.675727, 21.033014>,  <16.845367, 13.479660, 20.890318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.163481, 13.675727, 21.033014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276307, -0.230706, 0.932968,
		0.539613, -0.840541, -0.048039,
		0.795281, 0.490168, 0.356740,
		17.402065, 13.822778, 21.140036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.034731, 12.780272, 20.671864>,  <16.845367, 13.479660, 20.890318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.034731, 12.780272, 20.671864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.747387, 12.515897, 20.585039>,  <16.574980, 12.357271, 20.532944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.747387, 12.515897, 20.585039>,  <17.034731, 12.780272, 20.671864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.747387, 12.515897, 20.585039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063146, 0.372682, -0.925808,
		0.692799, -0.651358, -0.309456,
		-0.718360, -0.660940, -0.217063,
		16.531879, 12.317615, 20.519920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.245808, 12.403769, 20.125435>,  <17.034731, 12.780272, 20.671864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.245808, 12.403769, 20.125435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.847002, 12.376428, 20.111040>,  <16.607719, 12.360023, 20.102404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.847002, 12.376428, 20.111040>,  <17.245808, 12.403769, 20.125435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.847002, 12.376428, 20.111040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031142, 0.070692, -0.997012,
		0.070692, -0.995154, -0.068352,
		0.997012, 0.068352, 0.035988,
		16.547899, 12.355922, 20.100243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.076792, 11.873010, 19.602400>,  <17.245808, 12.403769, 20.125435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.076792, 11.873010, 19.602400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.743452, 12.091647, 19.635305>,  <16.543449, 12.222830, 19.655048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.743452, 12.091647, 19.635305>,  <17.076792, 11.873010, 19.602400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.743452, 12.091647, 19.635305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032755, 0.099731, -0.994475,
		-0.551778, -0.831438, -0.065207,
		-0.833348, 0.546593, 0.082264,
		16.493448, 12.255625, 19.659985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.600430, 11.659642, 19.062895>,  <17.076792, 11.873010, 19.602400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.600430, 11.659642, 19.062895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.430941, 12.002115, 19.181154>,  <16.329247, 12.207600, 19.252110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.430941, 12.002115, 19.181154>,  <16.600430, 11.659642, 19.062895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.430941, 12.002115, 19.181154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139168, 0.260985, -0.955258,
		-0.895037, -0.445910, 0.008568,
		-0.423724, 0.856184, 0.295648,
		16.303823, 12.258970, 19.269848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.032398, 11.564050, 18.641306>,  <16.600430, 11.659642, 19.062895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.032398, 11.564050, 18.641306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.070959, 11.945782, 18.754416>,  <16.094095, 12.174821, 18.822281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.070959, 11.945782, 18.754416>,  <16.032398, 11.564050, 18.641306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.070959, 11.945782, 18.754416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070780, 0.289950, -0.954421,
		-0.992823, 0.071992, 0.095499,
		0.096400, 0.954331, 0.282773,
		16.099878, 12.232080, 18.839247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.585614, 11.931779, 18.348034>,  <16.032398, 11.564050, 18.641306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.585614, 11.931779, 18.348034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.862449, 12.213840, 18.409712>,  <16.028549, 12.383078, 18.446718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.862449, 12.213840, 18.409712>,  <15.585614, 11.931779, 18.348034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.862449, 12.213840, 18.409712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021410, 0.233578, -0.972102,
		-0.721498, 0.669477, 0.176753,
		0.692085, 0.705154, 0.154193,
		16.070074, 12.425386, 18.455969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.403136, 12.519631, 17.956806>,  <15.585614, 11.931779, 18.348034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.403136, 12.519631, 17.956806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.794551, 12.542842, 18.035898>,  <16.029400, 12.556768, 18.083353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.794551, 12.542842, 18.035898>,  <15.403136, 12.519631, 17.956806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.794551, 12.542842, 18.035898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158346, 0.402334, -0.901695,
		-0.131877, 0.913652, 0.384510,
		0.978537, 0.058027, 0.197732,
		16.088112, 12.560250, 18.095219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.563727, 13.091747, 17.790001>,  <15.403136, 12.519631, 17.956806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.563727, 13.091747, 17.790001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.936425, 12.948612, 17.765335>,  <16.160044, 12.862731, 17.750536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.936425, 12.948612, 17.765335>,  <15.563727, 13.091747, 17.790001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.936425, 12.948612, 17.765335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153979, 0.543173, -0.825381,
		0.328848, 0.759550, 0.561198,
		0.931746, -0.357837, -0.061666,
		16.215948, 12.841261, 17.746836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.046644, 13.623761, 17.548052>,  <15.563727, 13.091747, 17.790001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.046644, 13.623761, 17.548052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.228361, 13.282513, 17.445444>,  <16.337391, 13.077764, 17.383879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.228361, 13.282513, 17.445444>,  <16.046644, 13.623761, 17.548052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.228361, 13.282513, 17.445444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297001, 0.416517, -0.859246,
		0.839885, 0.314164, 0.442598,
		0.454294, -0.853121, -0.256519,
		16.364649, 13.026576, 17.368488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.482880, 13.789627, 16.834908>,  <16.046644, 13.623761, 17.548052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.482880, 13.789627, 16.834908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.533447, 13.393710, 16.861231>,  <16.563787, 13.156160, 16.877024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.533447, 13.393710, 16.861231>,  <16.482880, 13.789627, 16.834908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.533447, 13.393710, 16.861231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199138, -0.039666, -0.979168,
		0.971783, 0.136891, 0.192091,
		0.126420, -0.989792, 0.065807,
		16.571373, 13.096772, 16.880974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.088938, 13.618911, 16.362377>,  <16.482880, 13.789627, 16.834908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.088938, 13.618911, 16.362377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.877611, 13.280508, 16.391088>,  <16.750814, 13.077466, 16.408316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.877611, 13.280508, 16.391088>,  <17.088938, 13.618911, 16.362377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.877611, 13.280508, 16.391088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185419, -0.197464, -0.962615,
		0.828553, -0.495258, 0.261189,
		-0.528318, -0.846007, 0.071779,
		16.719116, 13.026706, 16.412622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.470148, 13.022722, 16.101748>,  <17.088938, 13.618911, 16.362377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.470148, 13.022722, 16.101748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.095701, 12.882051, 16.102600>,  <16.871033, 12.797648, 16.103111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.095701, 12.882051, 16.102600>,  <17.470148, 13.022722, 16.101748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.095701, 12.882051, 16.102600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144845, -0.391070, -0.908892,
		0.320471, -0.850521, 0.417027,
		-0.936119, -0.351678, 0.002133,
		16.814865, 12.776548, 16.103241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<14.088249, 10.868004, 25.364647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.391821, 10.688589, 25.553471>,  <14.573964, 10.580940, 25.666765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.391821, 10.688589, 25.553471>,  <14.088249, 10.868004, 25.364647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.391821, 10.688589, 25.553471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586425, 0.155642, -0.794910,
		0.283073, 0.880109, 0.381154,
		0.758930, -0.448536, 0.472060,
		14.619500, 10.554029, 25.695089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.652122, 11.338789, 25.273531>,  <14.088249, 10.868004, 25.364647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.652122, 11.338789, 25.273531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.786855, 10.968719, 25.343494>,  <14.867695, 10.746676, 25.385471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.786855, 10.968719, 25.343494>,  <14.652122, 11.338789, 25.273531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.786855, 10.968719, 25.343494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581962, 0.058537, -0.811107,
		0.740178, 0.374998, 0.558134,
		0.336834, -0.925176, 0.174907,
		14.887905, 10.691166, 25.395966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.313041, 11.439582, 25.167166>,  <14.652122, 11.338789, 25.273531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.313041, 11.439582, 25.167166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.279927, 11.042443, 25.132751>,  <15.260059, 10.804160, 25.112103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.279927, 11.042443, 25.132751>,  <15.313041, 11.439582, 25.167166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.279927, 11.042443, 25.132751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586676, 0.021236, -0.809543,
		0.805580, -0.117493, 0.580721,
		-0.082784, -0.992846, -0.086037,
		15.255092, 10.744589, 25.106939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.985182, 11.152751, 25.047956>,  <15.313041, 11.439582, 25.167166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.985182, 11.152751, 25.047956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.707398, 10.912206, 24.889923>,  <15.540729, 10.767879, 24.795103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.707398, 10.912206, 24.889923>,  <15.985182, 11.152751, 25.047956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.707398, 10.912206, 24.889923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534964, -0.064330, -0.842422,
		0.481186, -0.796382, 0.366382,
		-0.694459, -0.601363, -0.395081,
		15.499061, 10.731797, 24.771399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.452272, 10.838978, 24.547401>,  <15.985182, 11.152751, 25.047956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.452272, 10.838978, 24.547401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.084057, 10.739338, 24.427032>,  <15.863127, 10.679554, 24.354811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.084057, 10.739338, 24.427032>,  <16.452272, 10.838978, 24.547401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.084057, 10.739338, 24.427032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321529, -0.045638, -0.945799,
		0.221865, -0.967402, 0.122104,
		-0.920541, -0.249100, -0.300922,
		15.807895, 10.664608, 24.336756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.506165, 10.390329, 24.062534>,  <16.452272, 10.838978, 24.547401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.506165, 10.390329, 24.062534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.137329, 10.499097, 23.952398>,  <15.916028, 10.564357, 23.886316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.137329, 10.499097, 23.952398>,  <16.506165, 10.390329, 24.062534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.137329, 10.499097, 23.952398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317842, 0.126289, -0.939696,
		-0.220748, -0.953998, -0.202877,
		-0.922088, 0.271918, -0.275342,
		15.860703, 10.580672, 23.869795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.205854, 9.952367, 23.434759>,  <16.506165, 10.390329, 24.062534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.205854, 9.952367, 23.434759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.052710, 10.321793, 23.426336>,  <15.960822, 10.543448, 23.421282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.052710, 10.321793, 23.426336>,  <16.205854, 9.952367, 23.434759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.052710, 10.321793, 23.426336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261833, 0.086625, -0.961218,
		-0.885923, -0.373528, -0.274985,
		-0.382863, 0.923565, -0.021059,
		15.937851, 10.598862, 23.420019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.128580, 9.997172, 22.731398>,  <16.205854, 9.952367, 23.434759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.128580, 9.997172, 22.731398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.057413, 10.374569, 22.843233>,  <16.014713, 10.601007, 22.910334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.057413, 10.374569, 22.843233>,  <16.128580, 9.997172, 22.731398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.057413, 10.374569, 22.843233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099277, 0.265461, -0.958997,
		-0.979025, -0.198379, 0.046437,
		-0.177918, 0.943492, 0.279587,
		16.004038, 10.657617, 22.927109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.673103, 10.204690, 22.315865>,  <16.128580, 9.997172, 22.731398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.673103, 10.204690, 22.315865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.845387, 10.544420, 22.437939>,  <15.948756, 10.748259, 22.511183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.845387, 10.544420, 22.437939>,  <15.673103, 10.204690, 22.315865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.845387, 10.544420, 22.437939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055154, 0.312755, -0.948231,
		-0.900805, 0.425242, 0.087862,
		0.430707, 0.849325, 0.305185,
		15.974599, 10.799218, 22.529493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.444629, 10.714181, 21.812693>,  <15.673103, 10.204690, 22.315865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.444629, 10.714181, 21.812693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.709091, 10.940879, 22.009335>,  <15.867768, 11.076898, 22.127319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.709091, 10.940879, 22.009335>,  <15.444629, 10.714181, 21.812693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.709091, 10.940879, 22.009335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089377, 0.591088, -0.801640,
		-0.744906, 0.573947, 0.340147,
		0.661155, 0.566745, 0.491603,
		15.907437, 11.110903, 22.156815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.208803, 11.417178, 21.851439>,  <15.444629, 10.714181, 21.812693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.208803, 11.417178, 21.851439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.606962, 11.430259, 21.887468>,  <15.845858, 11.438107, 21.909086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.606962, 11.430259, 21.887468>,  <15.208803, 11.417178, 21.851439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.606962, 11.430259, 21.887468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062501, 0.490972, -0.868931,
		-0.072639, 0.870561, 0.486669,
		0.995398, 0.032701, 0.090075,
		15.905581, 11.440069, 21.914492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.360850, 12.121642, 21.552214>,  <15.208803, 11.417178, 21.851439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.360850, 12.121642, 21.552214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.707472, 11.922038, 21.548744>,  <15.915444, 11.802276, 21.546663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.707472, 11.922038, 21.548744>,  <15.360850, 12.121642, 21.552214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.707472, 11.922038, 21.548744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251423, 0.451487, -0.856123,
		0.431129, 0.739695, 0.516700,
		0.866553, -0.499009, -0.008673,
		15.967438, 11.772335, 21.546143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.826489, 12.621224, 21.459375>,  <15.360850, 12.121642, 21.552214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.826489, 12.621224, 21.459375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.983195, 12.278286, 21.325823>,  <16.077219, 12.072523, 21.245691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.983195, 12.278286, 21.325823>,  <15.826489, 12.621224, 21.459375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.983195, 12.278286, 21.325823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079469, 0.393063, -0.916071,
		0.916627, 0.332352, 0.222121,
		0.391765, -0.857347, -0.333880,
		16.100725, 12.021082, 21.225658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.503952, 12.734886, 21.276936>,  <15.826489, 12.621224, 21.459375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.503952, 12.734886, 21.276936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.433081, 12.395185, 21.077990>,  <16.390558, 12.191363, 20.958622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.433081, 12.395185, 21.077990>,  <16.503952, 12.734886, 21.276936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.433081, 12.395185, 21.077990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194689, 0.465131, -0.863567,
		0.964730, -0.249837, 0.082929,
		-0.177178, -0.849255, -0.497367,
		16.379927, 12.140408, 20.928780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.039833, 13.140114, 21.557682>,  <16.503952, 12.734886, 21.276936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.039833, 13.140114, 21.557682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.253235, 13.477034, 21.588409>,  <17.381277, 13.679186, 21.606846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.253235, 13.477034, 21.588409>,  <17.039833, 13.140114, 21.557682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.253235, 13.477034, 21.588409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018888, -0.078938, 0.996701,
		0.845585, -0.533197, -0.026205,
		0.533506, 0.842300, 0.076820,
		17.413286, 13.729724, 21.611456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.599674, 12.958020, 22.012722>,  <17.039833, 13.140114, 21.557682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.599674, 12.958020, 22.012722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.565456, 13.356521, 22.007553>,  <17.544926, 13.595621, 22.004452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.565456, 13.356521, 22.007553>,  <17.599674, 12.958020, 22.012722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.565456, 13.356521, 22.007553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019715, 0.014658, 0.999698,
		0.996139, 0.085266, -0.020895,
		-0.085546, 0.996250, -0.012920,
		17.539793, 13.655396, 22.003677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.105158, 13.313272, 22.498121>,  <17.599674, 12.958020, 22.012722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.105158, 13.313272, 22.498121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.821991, 13.595749, 22.493361>,  <17.652090, 13.765236, 22.490505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.821991, 13.595749, 22.493361>,  <18.105158, 13.313272, 22.498121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.821991, 13.595749, 22.493361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282785, 0.298835, 0.911444,
		0.647213, 0.641862, -0.411252,
		-0.707918, 0.706195, -0.011901,
		17.609615, 13.807608, 22.489790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.400375, 13.791634, 22.832975>,  <18.105158, 13.313272, 22.498121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.400375, 13.791634, 22.832975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.011967, 13.882992, 22.861134>,  <17.778921, 13.937807, 22.878029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.011967, 13.882992, 22.861134>,  <18.400375, 13.791634, 22.832975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.011967, 13.882992, 22.861134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092545, 0.087752, 0.991834,
		0.220354, 0.969606, -0.106346,
		-0.971020, 0.228396, 0.070396,
		17.720661, 13.951510, 22.882252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.419407, 14.241938, 23.327488>,  <18.400375, 13.791634, 22.832975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.419407, 14.241938, 23.327488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.025358, 14.187389, 23.285654>,  <17.788929, 14.154660, 23.260553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.025358, 14.187389, 23.285654>,  <18.419407, 14.241938, 23.327488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.025358, 14.187389, 23.285654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123845, 0.141392, 0.982177,
		-0.119152, 0.980516, -0.156177,
		-0.985122, -0.136370, -0.104584,
		17.729822, 14.146479, 23.254278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.170729, 14.823126, 23.670244>,  <18.419407, 14.241938, 23.327488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.170729, 14.823126, 23.670244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.923695, 14.508525, 23.669794>,  <17.775475, 14.319764, 23.669525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.923695, 14.508525, 23.669794>,  <18.170729, 14.823126, 23.670244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.923695, 14.508525, 23.669794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257691, 0.200995, 0.945091,
		-0.743091, 0.583964, -0.326807,
		-0.617586, -0.786503, -0.001124,
		17.738419, 14.272574, 23.669456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.540886, 15.110067, 23.987185>,  <18.170729, 14.823126, 23.670244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.540886, 15.110067, 23.987185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.504881, 14.713210, 24.021935>,  <17.483278, 14.475096, 24.042784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.504881, 14.713210, 24.021935>,  <17.540886, 15.110067, 23.987185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.504881, 14.713210, 24.021935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300004, 0.110188, 0.947553,
		-0.949681, 0.059231, -0.307566,
		-0.090014, -0.992144, 0.086875,
		17.477877, 14.415566, 24.047997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.867805, 14.951393, 24.305006>,  <17.540886, 15.110067, 23.987185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.867805, 14.951393, 24.305006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.053331, 14.608599, 24.394852>,  <17.164646, 14.402922, 24.448759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.053331, 14.608599, 24.394852>,  <16.867805, 14.951393, 24.305006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.053331, 14.608599, 24.394852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373770, 0.040577, 0.926634,
		-0.803226, -0.513740, -0.301495,
		0.463815, -0.856986, 0.224613,
		17.192476, 14.351503, 24.462236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.332722, 14.591487, 24.672535>,  <16.867805, 14.951393, 24.305006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.332722, 14.591487, 24.672535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.671238, 14.397882, 24.761549>,  <16.874348, 14.281719, 24.814957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.671238, 14.397882, 24.761549>,  <16.332722, 14.591487, 24.672535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.671238, 14.397882, 24.761549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292105, -0.072282, 0.953651,
		-0.445494, -0.872071, -0.202554,
		0.846292, -0.484012, 0.222535,
		16.925125, 14.252679, 24.828310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.142378, 13.924171, 25.012182>,  <16.332722, 14.591487, 24.672535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.142378, 13.924171, 25.012182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.514349, 14.015358, 25.127607>,  <16.737532, 14.070070, 25.196863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.514349, 14.015358, 25.127607>,  <16.142378, 13.924171, 25.012182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.514349, 14.015358, 25.127607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308976, 0.058812, 0.949250,
		0.199427, -0.971891, 0.125127,
		0.929926, 0.227967, 0.288562,
		16.793327, 14.083748, 25.214176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.432076, 13.459774, 25.505075>,  <16.142378, 13.924171, 25.012182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.432076, 13.459774, 25.505075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.633057, 13.799117, 25.571804>,  <16.753645, 14.002723, 25.611841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.633057, 13.799117, 25.571804>,  <16.432076, 13.459774, 25.505075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.633057, 13.799117, 25.571804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228661, -0.055690, 0.971912,
		0.833820, -0.526485, 0.166005,
		0.502452, 0.848359, 0.166822,
		16.783792, 14.053625, 25.621851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.968599, 13.312840, 26.000559>,  <16.432076, 13.459774, 25.505075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.968599, 13.312840, 26.000559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.938637, 13.711535, 26.012571>,  <16.920660, 13.950751, 26.019779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.938637, 13.711535, 26.012571>,  <16.968599, 13.312840, 26.000559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.938637, 13.711535, 26.012571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240206, -0.047262, 0.969571,
		0.967828, 0.065414, 0.242963,
		-0.074906, 0.996738, 0.030029,
		16.916164, 14.010556, 26.021580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.329239, 13.552185, 26.602621>,  <16.968599, 13.312840, 26.000559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.329239, 13.552185, 26.602621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.111725, 13.875814, 26.513447>,  <16.981216, 14.069992, 26.459942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.111725, 13.875814, 26.513447>,  <17.329239, 13.552185, 26.602621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.111725, 13.875814, 26.513447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215666, 0.122001, 0.968815,
		0.811041, 0.574906, 0.108147,
		-0.543784, 0.809072, -0.222936,
		16.948589, 14.118536, 26.446566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.407885, 13.972772, 27.206230>,  <17.329239, 13.552185, 26.602621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.407885, 13.972772, 27.206230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.094683, 14.146998, 27.028608>,  <16.906761, 14.251534, 26.922035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.094683, 14.146998, 27.028608>,  <17.407885, 13.972772, 27.206230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.094683, 14.146998, 27.028608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515256, -0.054272, 0.855316,
		0.348447, 0.898519, 0.266923,
		-0.783005, 0.435566, -0.444056,
		16.859781, 14.277668, 26.895391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<9.192535, 13.365477, 24.583374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.563468, 13.387270, 24.731476>,  <9.786028, 13.400346, 24.820337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.563468, 13.387270, 24.731476>,  <9.192535, 13.365477, 24.583374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.563468, 13.387270, 24.731476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361103, 0.129565, -0.923481,
		-0.098286, 0.990073, 0.100476,
		0.927332, 0.054483, 0.370253,
		9.841667, 13.403615, 24.842552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.426566, 13.970735, 24.404821>,  <9.192535, 13.365477, 24.583374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.426566, 13.970735, 24.404821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.772637, 13.782218, 24.473349>,  <9.980280, 13.669107, 24.514465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.772637, 13.782218, 24.473349>,  <9.426566, 13.970735, 24.404821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.772637, 13.782218, 24.473349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398056, 0.437664, -0.806227,
		0.304989, 0.765724, 0.566258,
		0.865179, -0.471292, 0.171318,
		10.032191, 13.640830, 24.524744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.944743, 14.419901, 24.036621>,  <9.426566, 13.970735, 24.404821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.944743, 14.419901, 24.036621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.138014, 14.075748, 24.101469>,  <10.253977, 13.869257, 24.140379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.138014, 14.075748, 24.101469>,  <9.944743, 14.419901, 24.036621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.138014, 14.075748, 24.101469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510546, 0.126455, -0.850501,
		0.711254, 0.493714, 0.500365,
		0.483177, -0.860381, 0.162122,
		10.282967, 13.817634, 24.150106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.651062, 14.499846, 23.945091>,  <9.944743, 14.419901, 24.036621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.651062, 14.499846, 23.945091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.570128, 14.113185, 23.882299>,  <10.521568, 13.881188, 23.844624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.570128, 14.113185, 23.882299>,  <10.651062, 14.499846, 23.945091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.570128, 14.113185, 23.882299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514853, 0.031359, -0.856705,
		0.833059, -0.254163, 0.491339,
		-0.202335, -0.966653, -0.156981,
		10.509428, 13.823189, 23.835205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.292839, 14.346547, 23.629776>,  <10.651062, 14.499846, 23.945091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.292839, 14.346547, 23.629776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.051376, 14.037779, 23.550037>,  <10.906499, 13.852518, 23.502193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.051376, 14.037779, 23.550037>,  <11.292839, 14.346547, 23.629776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.051376, 14.037779, 23.550037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406369, -0.082794, -0.909950,
		0.685904, -0.630306, 0.363663,
		-0.603656, -0.771920, -0.199348,
		10.870279, 13.806203, 23.490232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.744672, 13.862299, 23.275595>,  <11.292839, 14.346547, 23.629776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.744672, 13.862299, 23.275595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.357431, 13.786569, 23.209948>,  <11.125087, 13.741131, 23.170559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.357431, 13.786569, 23.209948>,  <11.744672, 13.862299, 23.275595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.357431, 13.786569, 23.209948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192002, -0.139735, -0.971396,
		0.160977, -0.971921, 0.171628,
		-0.968102, -0.189325, -0.164116,
		11.067000, 13.729772, 23.160713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.699628, 13.190783, 22.914982>,  <11.744672, 13.862299, 23.275595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.699628, 13.190783, 22.914982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.350312, 13.367817, 22.833509>,  <11.140723, 13.474037, 22.784626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.350312, 13.367817, 22.833509>,  <11.699628, 13.190783, 22.914982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.350312, 13.367817, 22.833509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186764, -0.082014, -0.978975,
		-0.449986, -0.892967, -0.011037,
		-0.873288, 0.442587, -0.203679,
		11.088326, 13.500593, 22.772406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.424902, 12.898270, 22.350502>,  <11.699628, 13.190783, 22.914982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.424902, 12.898270, 22.350502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.197130, 13.227037, 22.344862>,  <11.060468, 13.424298, 22.341478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.197130, 13.227037, 22.344862>,  <11.424902, 12.898270, 22.350502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.197130, 13.227037, 22.344862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169308, 0.100477, -0.980428,
		-0.804416, -0.560671, -0.196372,
		-0.569429, 0.821920, -0.014101,
		11.026301, 13.473614, 22.340631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.001999, 12.756833, 21.834169>,  <11.424902, 12.898270, 22.350502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.001999, 12.756833, 21.834169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.025782, 13.153202, 21.882402>,  <11.040051, 13.391024, 21.911343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.025782, 13.153202, 21.882402>,  <11.001999, 12.756833, 21.834169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.025782, 13.153202, 21.882402> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096485, 0.114524, -0.988724,
		-0.993557, 0.070421, -0.088799,
		0.059457, 0.990921, 0.120581,
		11.043619, 13.450479, 21.918577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.710346, 12.976227, 21.208881>,  <11.001999, 12.756833, 21.834169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.710346, 12.976227, 21.208881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.903471, 13.292196, 21.360096>,  <11.019346, 13.481778, 21.450825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.903471, 13.292196, 21.360096>,  <10.710346, 12.976227, 21.208881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.903471, 13.292196, 21.360096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309234, 0.250091, -0.917512,
		-0.819308, 0.559889, -0.123524,
		0.482813, 0.789923, 0.378038,
		11.048315, 13.529173, 21.473507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.492862, 13.661489, 20.886805>,  <10.710346, 12.976227, 21.208881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.492862, 13.661489, 20.886805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.857268, 13.717805, 21.041842>,  <11.075912, 13.751595, 21.134863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.857268, 13.717805, 21.041842>,  <10.492862, 13.661489, 20.886805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.857268, 13.717805, 21.041842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310710, 0.383610, -0.869657,
		-0.271123, 0.912700, 0.305730,
		0.911017, 0.140791, 0.387591,
		11.130573, 13.760042, 21.158119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.624337, 14.278511, 20.553942>,  <10.492862, 13.661489, 20.886805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.624337, 14.278511, 20.553942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.995234, 14.172910, 20.660168>,  <11.217772, 14.109549, 20.723904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.995234, 14.172910, 20.660168>,  <10.624337, 14.278511, 20.553942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.995234, 14.172910, 20.660168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372801, 0.584035, -0.721057,
		0.035261, 0.767597, 0.639962,
		0.927241, -0.264004, 0.265567,
		11.273406, 14.093709, 20.739838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.954278, 14.869802, 20.400068>,  <10.624337, 14.278511, 20.553942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.954278, 14.869802, 20.400068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.243060, 14.593486, 20.416008>,  <11.416329, 14.427696, 20.425571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.243060, 14.593486, 20.416008>,  <10.954278, 14.869802, 20.400068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.243060, 14.593486, 20.416008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451765, 0.426959, -0.783335,
		0.524107, 0.583536, 0.620321,
		0.721956, -0.690791, 0.039849,
		11.459647, 14.386249, 20.427963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.646721, 15.198138, 20.255365>,  <10.954278, 14.869802, 20.400068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.646721, 15.198138, 20.255365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.676563, 14.807135, 20.176462>,  <11.694468, 14.572533, 20.129120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.676563, 14.807135, 20.176462>,  <11.646721, 15.198138, 20.255365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.676563, 14.807135, 20.176462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426313, 0.210085, -0.879842,
		0.901494, -0.018451, 0.432398,
		0.074607, -0.977509, -0.197257,
		11.698945, 14.513882, 20.117285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.382629, 15.231447, 20.323013>,  <11.646721, 15.198138, 20.255365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.382629, 15.231447, 20.323013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.532764, 15.581130, 20.446224>,  <12.622846, 15.790940, 20.520151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.532764, 15.581130, 20.446224>,  <12.382629, 15.231447, 20.323013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.532764, 15.581130, 20.446224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127244, -0.280582, 0.951358,
		0.918113, -0.396276, 0.005924,
		0.375338, 0.874208, 0.308029,
		12.645366, 15.843392, 20.538633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.907988, 15.044952, 20.822117>,  <12.382629, 15.231447, 20.323013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.907988, 15.044952, 20.822117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.790482, 15.415236, 20.917421>,  <12.719978, 15.637405, 20.974604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.790482, 15.415236, 20.917421>,  <12.907988, 15.044952, 20.822117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.790482, 15.415236, 20.917421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152290, -0.291401, 0.944401,
		0.943669, 0.241146, 0.226579,
		-0.293764, 0.925707, 0.238262,
		12.702353, 15.692947, 20.988899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.265869, 15.224461, 21.454575>,  <12.907988, 15.044952, 20.822117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.265869, 15.224461, 21.454575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.989517, 15.513296, 21.440294>,  <12.823707, 15.686597, 21.431726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.989517, 15.513296, 21.440294>,  <13.265869, 15.224461, 21.454575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.989517, 15.513296, 21.440294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048149, 0.003315, 0.998834,
		0.721365, 0.691793, 0.032477,
		-0.690879, 0.722088, -0.035701,
		12.782253, 15.729922, 21.429585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.567528, 15.742473, 21.884872>,  <13.265869, 15.224461, 21.454575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.567528, 15.742473, 21.884872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.172004, 15.801946, 21.880035>,  <12.934690, 15.837629, 21.877134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.172004, 15.801946, 21.880035>,  <13.567528, 15.742473, 21.884872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.172004, 15.801946, 21.880035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005259, 0.115749, 0.993265,
		0.149081, 0.982087, -0.115236,
		-0.988811, 0.148683, -0.012091,
		12.875360, 15.846551, 21.876408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.441745, 16.332561, 22.247751>,  <13.567528, 15.742473, 21.884872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.441745, 16.332561, 22.247751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.086094, 16.151819, 22.218699>,  <12.872704, 16.043373, 22.201267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.086094, 16.151819, 22.218699>,  <13.441745, 16.332561, 22.247751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.086094, 16.151819, 22.218699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179844, 0.199031, 0.963350,
		-0.420841, 0.869604, -0.258228,
		-0.889128, -0.451858, -0.072633,
		12.819355, 16.016262, 22.196909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.923951, 16.787580, 22.655384>,  <13.441745, 16.332561, 22.247751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.923951, 16.787580, 22.655384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.765828, 16.425011, 22.595888>,  <12.670955, 16.207468, 22.560190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.765828, 16.425011, 22.595888>,  <12.923951, 16.787580, 22.655384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.765828, 16.425011, 22.595888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232527, -0.057906, 0.970865,
		-0.888630, 0.418376, -0.187878,
		-0.395307, -0.906426, -0.148740,
		12.647236, 16.153082, 22.551266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.197730, 16.843115, 22.895193>,  <12.923951, 16.787580, 22.655384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.197730, 16.843115, 22.895193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.323531, 16.464315, 22.921356>,  <12.399012, 16.237036, 22.937054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.323531, 16.464315, 22.921356>,  <12.197730, 16.843115, 22.895193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.323531, 16.464315, 22.921356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267848, -0.022429, 0.963200,
		-0.910684, -0.320448, -0.260706,
		0.314503, -0.947001, 0.065405,
		12.417882, 16.180216, 22.940977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.730851, 16.554560, 23.240505>,  <12.197730, 16.843115, 22.895193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.730851, 16.554560, 23.240505> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.017956, 16.278122, 23.274467>,  <12.190219, 16.112259, 23.294846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.017956, 16.278122, 23.274467>,  <11.730851, 16.554560, 23.240505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.017956, 16.278122, 23.274467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196554, -0.084124, 0.976877,
		-0.667970, -0.717854, -0.196219,
		0.717762, -0.691093, 0.084905,
		12.233284, 16.070795, 23.299938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.429493, 16.025803, 23.498426>,  <11.730851, 16.554560, 23.240505>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.429493, 16.025803, 23.498426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.819298, 15.997734, 23.583660>,  <12.053181, 15.980893, 23.634800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.819298, 15.997734, 23.583660>,  <11.429493, 16.025803, 23.498426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.819298, 15.997734, 23.583660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219670, -0.105692, 0.969832,
		-0.045528, -0.991920, -0.118411,
		0.974512, -0.070166, 0.213083,
		12.111651, 15.976684, 23.647585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.445777, 15.502444, 23.942495>,  <11.429493, 16.025803, 23.498426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.445777, 15.502444, 23.942495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.806375, 15.668206, 23.992422>,  <12.022733, 15.767663, 24.022379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.806375, 15.668206, 23.992422>,  <11.445777, 15.502444, 23.942495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.806375, 15.668206, 23.992422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104193, -0.072106, 0.991940,
		0.420065, -0.907231, -0.021825,
		0.901493, 0.414405, 0.124816,
		12.076822, 15.792528, 24.029867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.801428, 15.093496, 24.344822>,  <11.445777, 15.502444, 23.942495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.801428, 15.093496, 24.344822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.972708, 15.451210, 24.396824>,  <12.075476, 15.665838, 24.428024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.972708, 15.451210, 24.396824>,  <11.801428, 15.093496, 24.344822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.972708, 15.451210, 24.396824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176031, -0.058563, 0.982641,
		0.886374, -0.443652, 0.132344,
		0.428200, 0.894284, 0.130005,
		12.101168, 15.719495, 24.435825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.313145, 14.973763, 24.846649>,  <11.801428, 15.093496, 24.344822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.313145, 14.973763, 24.846649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.218333, 15.362294, 24.854000>,  <12.161447, 15.595413, 24.858410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.218333, 15.362294, 24.854000>,  <12.313145, 14.973763, 24.846649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.218333, 15.362294, 24.854000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110932, -0.045852, 0.992770,
		0.965148, 0.233277, 0.118620,
		-0.237030, 0.971329, 0.018376,
		12.147224, 15.653693, 24.859512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.753277, 15.278831, 25.301506>,  <12.313145, 14.973763, 24.846649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.753277, 15.278831, 25.301506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.436625, 15.521608, 25.273394>,  <12.246634, 15.667275, 25.256525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.436625, 15.521608, 25.273394>,  <12.753277, 15.278831, 25.301506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.436625, 15.521608, 25.273394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182752, -0.125443, 0.975124,
		0.583030, 0.784782, 0.210225,
		-0.791630, 0.606945, -0.070283,
		12.199136, 15.703691, 25.252308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.793704, 15.569912, 25.869820>,  <12.753277, 15.278831, 25.301506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.793704, 15.569912, 25.869820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.419634, 15.652348, 25.754597>,  <12.195192, 15.701809, 25.685463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.419634, 15.652348, 25.754597>,  <12.793704, 15.569912, 25.869820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.419634, 15.652348, 25.754597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258834, 0.157511, 0.952993,
		0.241772, 0.965773, -0.093957,
		-0.935174, 0.206088, -0.288057,
		12.139082, 15.714174, 25.668180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.343286, 16.142826, 25.776970>,  <12.793704, 15.569912, 25.869820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.343286, 16.142826, 25.776970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.676888, 16.095623, 25.992565>,  <13.877048, 16.067301, 26.121923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.676888, 16.095623, 25.992565>,  <13.343286, 16.142826, 25.776970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.676888, 16.095623, 25.992565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543875, 0.340346, -0.767049,
		-0.092924, 0.932866, 0.348033,
		0.834005, -0.118009, 0.538989,
		13.927089, 16.060221, 26.154263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.719701, 16.755919, 25.709034>,  <13.343286, 16.142826, 25.776970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.719701, 16.755919, 25.709034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.960856, 16.449163, 25.797041>,  <14.105550, 16.265110, 25.849846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.960856, 16.449163, 25.797041>,  <13.719701, 16.755919, 25.709034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.960856, 16.449163, 25.797041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554563, 0.204555, -0.806609,
		0.573572, 0.608310, 0.548611,
		0.602889, -0.766887, 0.220019,
		14.141724, 16.219097, 25.863047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.295477, 17.044844, 25.621500>,  <13.719701, 16.755919, 25.709034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.295477, 17.044844, 25.621500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.384650, 16.656090, 25.591202>,  <14.438154, 16.422836, 25.573023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.384650, 16.656090, 25.591202>,  <14.295477, 17.044844, 25.621500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.384650, 16.656090, 25.591202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568846, 0.192793, -0.799528,
		0.791653, 0.135154, 0.595834,
		0.222932, -0.971887, -0.075744,
		14.451530, 16.364523, 25.568480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.141413, 16.889235, 25.556709>,  <14.295477, 17.044844, 25.621500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.141413, 16.889235, 25.556709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.919426, 16.593590, 25.404013>,  <14.786234, 16.416203, 25.312395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.919426, 16.593590, 25.404013>,  <15.141413, 16.889235, 25.556709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.919426, 16.593590, 25.404013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501824, 0.068545, -0.862250,
		0.663464, -0.670088, 0.332863,
		-0.554967, -0.739110, -0.381743,
		14.752935, 16.371857, 25.289490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.592983, 16.870987, 25.106163>,  <15.141413, 16.889235, 25.556709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.592983, 16.870987, 25.106163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.302295, 16.623238, 24.987331>,  <15.127881, 16.474588, 24.916033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.302295, 16.623238, 24.987331>,  <15.592983, 16.870987, 25.106163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.302295, 16.623238, 24.987331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451726, -0.105081, -0.885947,
		0.517513, -0.778034, 0.356151,
		-0.726722, -0.619371, -0.297077,
		15.084278, 16.437426, 24.898209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.043188, 16.374798, 24.679640>,  <15.592983, 16.870987, 25.106163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.043188, 16.374798, 24.679640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.653238, 16.425859, 24.606621>,  <15.419269, 16.456497, 24.562809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.653238, 16.425859, 24.606621>,  <16.043188, 16.374798, 24.679640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.653238, 16.425859, 24.606621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200146, 0.142257, -0.969384,
		-0.097780, -0.981563, -0.164233,
		-0.974875, 0.127657, -0.182546,
		15.360776, 16.464157, 24.551857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.084206, 16.110250, 24.082987>,  <16.043188, 16.374798, 24.679640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.084206, 16.110250, 24.082987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.724063, 16.283676, 24.097830>,  <15.507977, 16.387732, 24.106735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.724063, 16.283676, 24.097830>,  <16.084206, 16.110250, 24.082987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.724063, 16.283676, 24.097830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131595, 0.352575, -0.926484,
		-0.414775, -0.829284, -0.374499,
		-0.900358, 0.433565, 0.037109,
		15.453956, 16.413746, 24.108963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.650709, 15.755840, 23.631077>,  <16.084206, 16.110250, 24.082987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.650709, 15.755840, 23.631077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.477346, 16.112890, 23.680683>,  <15.373328, 16.327120, 23.710447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.477346, 16.112890, 23.680683>,  <15.650709, 15.755840, 23.631077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.477346, 16.112890, 23.680683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095227, 0.182205, -0.978638,
		-0.896153, -0.412339, -0.163971,
		-0.433407, 0.892624, 0.124018,
		15.347324, 16.380678, 23.717888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.221095, 15.820765, 23.028181>,  <15.650709, 15.755840, 23.631077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.221095, 15.820765, 23.028181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.291080, 16.185747, 23.176134>,  <15.333072, 16.404736, 23.264906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.291080, 16.185747, 23.176134>,  <15.221095, 15.820765, 23.028181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.291080, 16.185747, 23.176134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169426, 0.342171, -0.924237,
		-0.969888, 0.224376, -0.094726,
		0.174964, 0.912455, 0.369882,
		15.343570, 16.459484, 23.287098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.915002, 16.252537, 22.429134>,  <15.221095, 15.820765, 23.028181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.915002, 16.252537, 22.429134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.116599, 16.516565, 22.651953>,  <15.237557, 16.674982, 22.785643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.116599, 16.516565, 22.651953>,  <14.915002, 16.252537, 22.429134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.116599, 16.516565, 22.651953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141008, 0.573410, -0.807042,
		-0.852119, 0.485292, 0.195920,
		0.503993, 0.660070, 0.557044,
		15.267797, 16.714586, 22.819065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.611259, 16.953920, 22.260477>,  <14.915002, 16.252537, 22.429134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.611259, 16.953920, 22.260477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.980807, 16.986122, 22.410135>,  <15.202536, 17.005444, 22.499929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.980807, 16.986122, 22.410135>,  <14.611259, 16.953920, 22.260477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.980807, 16.986122, 22.410135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305499, 0.433710, -0.847683,
		-0.230513, 0.897449, 0.376097,
		0.923869, 0.080505, 0.374146,
		15.257968, 17.010273, 22.522379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.806918, 17.562111, 22.007919>,  <14.611259, 16.953920, 22.260477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.806918, 17.562111, 22.007919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.144056, 17.367605, 22.100143>,  <15.346339, 17.250902, 22.155478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.144056, 17.367605, 22.100143>,  <14.806918, 17.562111, 22.007919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.144056, 17.367605, 22.100143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377454, 0.228783, -0.897322,
		0.383588, 0.843330, 0.376372,
		0.842846, -0.486265, 0.230560,
		15.396910, 17.221725, 22.169312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.379881, 18.017601, 21.750446>,  <14.806918, 17.562111, 22.007919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.379881, 18.017601, 21.750446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.512303, 17.643581, 21.801178>,  <15.591757, 17.419170, 21.831617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.512303, 17.643581, 21.801178>,  <15.379881, 18.017601, 21.750446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.512303, 17.643581, 21.801178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497057, 0.058554, -0.865740,
		0.802082, 0.349652, 0.484157,
		0.331057, -0.935048, 0.126832,
		15.611621, 17.363068, 21.839228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.022539, 18.058115, 21.519484>,  <15.379881, 18.017601, 21.750446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.022539, 18.058115, 21.519484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.943145, 17.666073, 21.519159>,  <15.895509, 17.430847, 21.518965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.943145, 17.666073, 21.519159>,  <16.022539, 18.058115, 21.519484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.943145, 17.666073, 21.519159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371239, -0.074415, -0.925551,
		0.907075, -0.184009, 0.378623,
		-0.198484, -0.980104, -0.000811,
		15.883599, 17.372042, 21.518915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<10.541913, 17.843592, 10.453255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.483535, 18.239298, 10.456304>,  <10.448508, 18.476721, 10.458133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.483535, 18.239298, 10.456304>,  <10.541913, 17.843592, 10.453255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.483535, 18.239298, 10.456304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978861, 0.143286, 0.145946,
		0.143286, 0.028762, -0.989263,
		-0.145946, 0.989263, 0.007623,
		10.439752, 18.536077, 10.458591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.914225, 18.303415, 9.893357>,  <10.541913, 17.843592, 10.453255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.914225, 18.303415, 9.893357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.854430, 18.513386, 10.228524>,  <10.818554, 18.639368, 10.429625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.854430, 18.513386, 10.228524>,  <10.914225, 18.303415, 9.893357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.854430, 18.513386, 10.228524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983506, 0.166215, 0.071331,
		-0.101831, 0.834760, -0.541115,
		-0.149486, 0.524926, 0.837918,
		10.809585, 18.670864, 10.479899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.141720, 18.986822, 9.814421>,  <10.914225, 18.303415, 9.893357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.141720, 18.986822, 9.814421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.174973, 18.909142, 10.205394>,  <11.194924, 18.862534, 10.439978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.174973, 18.909142, 10.205394>,  <11.141720, 18.986822, 9.814421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.174973, 18.909142, 10.205394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910212, 0.414114, 0.004864,
		-0.405713, 0.889267, 0.211191,
		0.083132, -0.194202, 0.977433,
		11.199912, 18.850882, 10.498624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.204483, 19.688290, 10.270665>,  <11.141720, 18.986822, 9.814421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.204483, 19.688290, 10.270665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.382379, 19.348892, 10.385394>,  <11.489116, 19.145254, 10.454231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.382379, 19.348892, 10.385394>,  <11.204483, 19.688290, 10.270665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.382379, 19.348892, 10.385394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895479, 0.427681, -0.123313,
		-0.018038, 0.311685, 0.950014,
		0.444738, -0.848493, 0.286822,
		11.515800, 19.094345, 10.471440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.745895, 19.953022, 10.611176>,  <11.204483, 19.688290, 10.270665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.745895, 19.953022, 10.611176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.813999, 19.582396, 10.477021>,  <11.854861, 19.360020, 10.396529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.813999, 19.582396, 10.477021>,  <11.745895, 19.953022, 10.611176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.813999, 19.582396, 10.477021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920111, 0.271315, -0.282460,
		0.352713, -0.260500, 0.898740,
		0.170260, -0.926568, -0.335385,
		11.865077, 19.304424, 10.376406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.406941, 19.879570, 10.925672>,  <11.745895, 19.953022, 10.611176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.406941, 19.879570, 10.925672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.302896, 19.682047, 10.593769>,  <12.240468, 19.563534, 10.394628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.302896, 19.682047, 10.593769>,  <12.406941, 19.879570, 10.925672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.302896, 19.682047, 10.593769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928231, 0.108805, -0.355737,
		0.265946, -0.862738, 0.430064,
		-0.260115, -0.493806, -0.829757,
		12.224861, 19.533905, 10.344842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.170169, 20.432934, 11.525633>,  <12.406941, 19.879570, 10.925672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.170169, 20.432934, 11.525633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.437614, 20.543722, 11.249591>,  <12.598082, 20.610195, 11.083966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.437614, 20.543722, 11.249591>,  <12.170169, 20.432934, 11.525633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.437614, 20.543722, 11.249591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738401, 0.137639, -0.660166,
		-0.087861, 0.950969, 0.296543,
		0.668613, 0.276970, -0.690104,
		12.638199, 20.626814, 11.042560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.021588, 21.044518, 11.234936>,  <12.170169, 20.432934, 11.525633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.021588, 21.044518, 11.234936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.258612, 20.883337, 10.955936>,  <12.400826, 20.786629, 10.788537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.258612, 20.883337, 10.955936>,  <12.021588, 21.044518, 11.234936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.258612, 20.883337, 10.955936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622736, 0.320087, -0.713964,
		0.510954, 0.857422, -0.061263,
		0.592559, -0.402953, -0.697497,
		12.436379, 20.762451, 10.746687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.452917, 20.941883, 10.776616>,  <12.021588, 21.044518, 11.234936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.452917, 20.941883, 10.776616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.321923, 21.207329, 11.045650>,  <11.243327, 21.366596, 11.207071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.321923, 21.207329, 11.045650>,  <11.452917, 20.941883, 10.776616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.321923, 21.207329, 11.045650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744444, -0.619580, 0.248844,
		0.581857, -0.419210, 0.696926,
		-0.327483, 0.663614, 0.672585,
		11.223679, 21.406412, 11.247426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.070819, 20.453968, 11.256856>,  <11.452917, 20.941883, 10.776616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.070819, 20.453968, 11.256856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.980390, 20.826090, 11.372390>,  <10.926132, 21.049362, 11.441710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.980390, 20.826090, 11.372390>,  <11.070819, 20.453968, 11.256856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.980390, 20.826090, 11.372390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896903, -0.314485, 0.310908,
		0.380074, -0.188769, 0.905489,
		-0.226073, 0.930304, 0.288835,
		10.912568, 21.105181, 11.459041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.013792, 20.420790, 12.086104>,  <11.070819, 20.453968, 11.256856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.013792, 20.420790, 12.086104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.808884, 20.709185, 11.899447>,  <10.685939, 20.882221, 11.787454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.808884, 20.709185, 11.899447>,  <11.013792, 20.420790, 12.086104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.808884, 20.709185, 11.899447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858174, -0.450866, 0.245474,
		-0.033409, 0.526209, 0.849699,
		-0.512271, 0.720988, -0.466642,
		10.655202, 20.925482, 11.759455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.592314, 20.804197, 12.553527>,  <11.013792, 20.420790, 12.086104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.592314, 20.804197, 12.553527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.437367, 20.788296, 12.185100>,  <10.344399, 20.778755, 11.964044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.437367, 20.788296, 12.185100>,  <10.592314, 20.804197, 12.553527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.437367, 20.788296, 12.185100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776690, -0.524178, 0.349270,
		-0.496688, 0.850680, 0.172173,
		-0.387366, -0.039753, -0.921068,
		10.321157, 20.776369, 11.908779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.797327, 20.846327, 12.593904>,  <10.592314, 20.804197, 12.553527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.797327, 20.846327, 12.593904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.874546, 20.693800, 12.232279>,  <9.920877, 20.602283, 12.015304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.874546, 20.693800, 12.232279>,  <9.797327, 20.846327, 12.593904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.874546, 20.693800, 12.232279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833969, -0.549205, 0.053565,
		-0.516941, 0.743620, -0.424031,
		0.193048, -0.381318, -0.904062,
		9.932461, 20.579405, 11.961061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.188971, 20.936893, 12.228938>,  <9.797327, 20.846327, 12.593904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.188971, 20.936893, 12.228938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.369639, 20.650354, 12.016209>,  <9.478041, 20.478430, 11.888571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.369639, 20.650354, 12.016209>,  <9.188971, 20.936893, 12.228938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.369639, 20.650354, 12.016209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854813, -0.518179, -0.028012,
		-0.255514, 0.467263, -0.846391,
		0.451671, -0.716349, -0.531824,
		9.505141, 20.435450, 11.856662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.709064, 20.738384, 11.820166>,  <9.188971, 20.936893, 12.228938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.709064, 20.738384, 11.820166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.968575, 20.434101, 11.812059>,  <9.124283, 20.251532, 11.807196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.968575, 20.434101, 11.812059>,  <8.709064, 20.738384, 11.820166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.968575, 20.434101, 11.812059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759285, -0.648882, 0.049393,
		-0.050723, -0.016658, -0.998574,
		0.648779, -0.760707, -0.020265,
		9.163209, 20.205889, 11.805980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.348153, 20.114382, 11.485806>,  <8.709064, 20.738384, 11.820166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.348153, 20.114382, 11.485806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.669910, 19.936604, 11.643498>,  <8.862965, 19.829937, 11.738114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.669910, 19.936604, 11.643498>,  <8.348153, 20.114382, 11.485806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.669910, 19.936604, 11.643498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496295, -0.867460, 0.034690,
		0.326563, -0.223560, -0.918356,
		0.804393, -0.444448, 0.394232,
		8.911228, 19.803268, 11.761768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.275719, 19.480488, 11.165004>,  <8.348153, 20.114382, 11.485806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.275719, 19.480488, 11.165004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.495211, 19.431589, 11.495810>,  <8.626905, 19.402250, 11.694293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.495211, 19.431589, 11.495810>,  <8.275719, 19.480488, 11.165004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.495211, 19.431589, 11.495810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459549, -0.870491, 0.176239,
		0.698363, -0.476761, -0.533842,
		0.548729, -0.122248, 0.827014,
		8.659829, 19.394915, 11.743914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.339725, 18.798458, 11.077816>,  <8.275719, 19.480488, 11.165004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.339725, 18.798458, 11.077816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.396269, 18.946177, 11.445214>,  <8.430196, 19.034807, 11.665653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.396269, 18.946177, 11.445214>,  <8.339725, 18.798458, 11.077816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.396269, 18.946177, 11.445214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609662, -0.698517, 0.374681,
		0.779955, -0.612938, 0.126405,
		0.141360, 0.369298, 0.918496,
		8.438677, 19.056967, 11.720763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.486923, 18.194490, 11.548367>,  <8.339725, 18.798458, 11.077816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.486923, 18.194490, 11.548367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.374973, 18.505665, 11.773396>,  <8.307803, 18.692369, 11.908413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.374973, 18.505665, 11.773396>,  <8.486923, 18.194490, 11.548367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.374973, 18.505665, 11.773396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706738, -0.563556, 0.427699,
		0.649763, -0.277888, 0.707522,
		-0.279876, 0.777935, 0.562572,
		8.291011, 18.739046, 11.942167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.366686, 17.889452, 12.172424>,  <8.486923, 18.194490, 11.548367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.366686, 17.889452, 12.172424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.182698, 18.242666, 12.209685>,  <8.072306, 18.454596, 12.232041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.182698, 18.242666, 12.209685>,  <8.366686, 17.889452, 12.172424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.182698, 18.242666, 12.209685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796859, -0.456792, 0.395419,
		0.391720, 0.107651, 0.913765,
		-0.459968, 0.883036, 0.093152,
		8.044708, 18.507576, 12.237631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.156339, 17.974327, 12.966749>,  <8.366686, 17.889452, 12.172424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.156339, 17.974327, 12.966749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.928617, 18.201605, 12.729076>,  <7.791985, 18.337971, 12.586473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.928617, 18.201605, 12.729076>,  <8.156339, 17.974327, 12.966749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.928617, 18.201605, 12.729076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821902, -0.410295, 0.395141,
		-0.019273, 0.713313, 0.700581,
		-0.569303, 0.568193, -0.594181,
		7.757826, 18.372063, 12.550822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.637077, 18.114710, 13.371015>,  <8.156339, 17.974327, 12.966749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.637077, 18.114710, 13.371015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.500928, 18.190639, 13.002643>,  <7.419239, 18.236197, 12.781619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.500928, 18.190639, 13.002643>,  <7.637077, 18.114710, 13.371015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.500928, 18.190639, 13.002643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879565, -0.410539, 0.240464,
		-0.332432, 0.891866, 0.306697,
		-0.340373, 0.189822, -0.920931,
		7.398816, 18.247585, 12.726363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.978894, 18.424278, 13.402219>,  <7.637077, 18.114710, 13.371015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.978894, 18.424278, 13.402219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.001677, 18.253819, 13.041076>,  <7.015346, 18.151543, 12.824390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.001677, 18.253819, 13.041076>,  <6.978894, 18.424278, 13.402219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.001677, 18.253819, 13.041076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774554, -0.589456, 0.229363,
		-0.629938, 0.686248, -0.363650,
		0.056955, -0.426151, -0.902857,
		7.018763, 18.125973, 12.770219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.334658, 18.292549, 13.283468>,  <6.978894, 18.424278, 13.402219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.334658, 18.292549, 13.283468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.505334, 18.032066, 13.032434>,  <6.607740, 17.875776, 12.881814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.505334, 18.032066, 13.032434>,  <6.334658, 18.292549, 13.283468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.505334, 18.032066, 13.032434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566514, -0.733370, 0.375806,
		-0.704979, 0.195181, -0.681843,
		0.426693, -0.651208, -0.627583,
		6.633342, 17.836704, 12.844159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.803960, 17.891344, 13.074932>,  <6.334658, 18.292549, 13.283468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.803960, 17.891344, 13.074932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.132201, 17.679836, 12.988200>,  <6.329145, 17.552931, 12.936161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.132201, 17.679836, 12.988200>,  <5.803960, 17.891344, 13.074932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.132201, 17.679836, 12.988200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506905, -0.848648, 0.151143,
		-0.263932, -0.014117, -0.964438,
		0.820602, -0.528770, -0.216829,
		6.378382, 17.521206, 12.923152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.644577, 17.467588, 12.571450>,  <5.803960, 17.891344, 13.074932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.644577, 17.467588, 12.571450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.981644, 17.308174, 12.716269>,  <6.183884, 17.212524, 12.803161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.981644, 17.308174, 12.716269>,  <5.644577, 17.467588, 12.571450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.981644, 17.308174, 12.716269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444914, -0.894101, 0.051327,
		0.303252, -0.204332, -0.930745,
		0.842668, -0.398536, 0.362048,
		6.234444, 17.188614, 12.824884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.783500, 16.846354, 12.249163>,  <5.644577, 17.467588, 12.571450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.783500, 16.846354, 12.249163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.964469, 16.819979, 12.604908>,  <6.073050, 16.804153, 12.818355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.964469, 16.819979, 12.604908>,  <5.783500, 16.846354, 12.249163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.964469, 16.819979, 12.604908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490602, -0.851199, 0.186466,
		0.744730, -0.520685, -0.417450,
		0.452423, -0.065935, 0.889363,
		6.100196, 16.800198, 12.871716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.801141, 16.124752, 12.371454>,  <5.783500, 16.846354, 12.249163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.801141, 16.124752, 12.371454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.850888, 16.310419, 12.722243>,  <5.880736, 16.421820, 12.932716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.850888, 16.310419, 12.722243>,  <5.801141, 16.124752, 12.371454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.850888, 16.310419, 12.722243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544722, -0.706798, 0.451346,
		0.829343, -0.533839, 0.164940,
		0.124367, 0.464167, 0.876973,
		5.888198, 16.449669, 12.985335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.573990, 15.592391, 12.812128>,  <5.801141, 16.124752, 12.371454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.573990, 15.592391, 12.812128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.605372, 15.895966, 13.070696>,  <5.624202, 16.078110, 13.225837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.605372, 15.895966, 13.070696>,  <5.573990, 15.592391, 12.812128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.605372, 15.895966, 13.070696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654854, -0.449672, 0.607422,
		0.751672, -0.470966, 0.461714,
		0.078456, 0.758937, 0.646420,
		5.628909, 16.123648, 13.264622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.690614, 15.225930, 13.421851>,  <5.573990, 15.592391, 12.812128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.690614, 15.225930, 13.421851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.571478, 15.584941, 13.551919>,  <5.499996, 15.800347, 13.629959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.571478, 15.584941, 13.551919>,  <5.690614, 15.225930, 13.421851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.571478, 15.584941, 13.551919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412518, -0.428191, 0.804041,
		0.860883, 0.105338, 0.497779,
		-0.297841, 0.897528, 0.325169,
		5.482126, 15.854199, 13.649469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.814193, 15.236958, 14.111416>,  <5.690614, 15.225930, 13.421851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.814193, 15.236958, 14.111416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.543183, 15.528279, 14.070365>,  <5.380577, 15.703073, 14.045734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.543183, 15.528279, 14.070365>,  <5.814193, 15.236958, 14.111416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.543183, 15.528279, 14.070365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520729, -0.376449, 0.766243,
		0.519424, 0.572590, 0.634302,
		-0.677525, 0.728304, -0.102627,
		5.339925, 15.746771, 14.039577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.332138, 14.816294, 14.422583>,  <5.814193, 15.236958, 14.111416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.332138, 14.816294, 14.422583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.615498, 14.533970, 14.423216>,  <6.785513, 14.364575, 14.423596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.615498, 14.533970, 14.423216>,  <6.332138, 14.816294, 14.422583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.615498, 14.533970, 14.423216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696755, 0.699666, 0.158115,
		-0.112707, -0.110905, 0.987420,
		0.708400, -0.705810, 0.001584,
		6.828018, 14.322227, 14.423691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.753453, 14.970465, 14.917139>,  <6.332138, 14.816294, 14.422583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.753453, 14.970465, 14.917139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.988808, 14.727431, 14.703732>,  <7.130021, 14.581611, 14.575686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.988808, 14.727431, 14.703732>,  <6.753453, 14.970465, 14.917139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.988808, 14.727431, 14.703732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804893, 0.503048, 0.314786,
		0.077127, -0.614642, 0.785027,
		0.588387, -0.607584, -0.533519,
		7.165324, 14.545156, 14.543675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.133896, 14.668569, 15.356704>,  <6.753453, 14.970465, 14.917139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.133896, 14.668569, 15.356704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.318900, 14.675350, 15.002123>,  <7.429902, 14.679420, 14.789374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.318900, 14.675350, 15.002123>,  <7.133896, 14.668569, 15.356704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.318900, 14.675350, 15.002123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807412, 0.405007, 0.429016,
		0.366293, -0.914157, 0.173629,
		0.462509, 0.016955, -0.886453,
		7.457652, 14.680437, 14.736187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.841624, 14.461945, 15.531425>,  <7.133896, 14.668569, 15.356704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.841624, 14.461945, 15.531425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.852820, 14.658369, 15.183155>,  <7.859538, 14.776224, 14.974193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.852820, 14.658369, 15.183155>,  <7.841624, 14.461945, 15.531425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.852820, 14.658369, 15.183155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981648, 0.150865, 0.116645,
		0.188635, -0.857962, -0.477827,
		0.027990, 0.491062, -0.870675,
		7.861217, 14.805688, 14.921952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.544939, 14.337534, 15.198594>,  <7.841624, 14.461945, 15.531425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.544939, 14.337534, 15.198594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.422110, 14.650769, 14.982268>,  <8.348412, 14.838710, 14.852473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.422110, 14.650769, 14.982268>,  <8.544939, 14.337534, 15.198594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.422110, 14.650769, 14.982268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917147, 0.395207, 0.051496,
		0.254059, -0.480193, -0.839564,
		-0.307074, 0.783087, -0.540814,
		8.329988, 14.885695, 14.820024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.097918, 14.381099, 14.661791>,  <8.544939, 14.337534, 15.198594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.097918, 14.381099, 14.661791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.900819, 14.729134, 14.666656>,  <8.782559, 14.937955, 14.669576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.900819, 14.729134, 14.666656>,  <9.097918, 14.381099, 14.661791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.900819, 14.729134, 14.666656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839732, 0.479127, -0.255514,
		-0.228148, -0.115690, -0.966729,
		-0.492746, 0.870088, 0.012163,
		8.752995, 14.990160, 14.670305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.267695, 14.791881, 14.058853>,  <9.097918, 14.381099, 14.661791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.267695, 14.791881, 14.058853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.118682, 15.054473, 14.321228>,  <9.029274, 15.212029, 14.478653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.118682, 15.054473, 14.321228>,  <9.267695, 14.791881, 14.058853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.118682, 15.054473, 14.321228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836192, 0.544009, -0.069551,
		-0.402494, 0.522579, -0.751605,
		-0.372534, 0.656480, 0.655936,
		9.006922, 15.251417, 14.518009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.449605, 15.529898, 13.785936>,  <9.267695, 14.791881, 14.058853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.449605, 15.529898, 13.785936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.365255, 15.592792, 14.171850>,  <9.314646, 15.630528, 14.403399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.365255, 15.592792, 14.171850>,  <9.449605, 15.529898, 13.785936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.365255, 15.592792, 14.171850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666071, 0.745500, 0.024087,
		-0.715459, 0.647694, -0.261936,
		-0.210874, 0.157235, 0.964785,
		9.301993, 15.639962, 14.461286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.375422, 16.268538, 13.846364>,  <9.449605, 15.529898, 13.785936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.375422, 16.268538, 13.846364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.413898, 16.154034, 14.227689>,  <9.436984, 16.085331, 14.456484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.413898, 16.154034, 14.227689>,  <9.375422, 16.268538, 13.846364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.413898, 16.154034, 14.227689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455108, 0.864425, 0.213650,
		-0.885225, 0.413308, 0.213430,
		0.096191, -0.286262, 0.953311,
		9.442756, 16.068155, 14.513682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.119397, 16.858467, 14.190860>,  <9.375422, 16.268538, 13.846364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.119397, 16.858467, 14.190860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.330038, 16.656649, 14.464538>,  <9.456423, 16.535557, 14.628744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.330038, 16.656649, 14.464538>,  <9.119397, 16.858467, 14.190860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.330038, 16.656649, 14.464538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377012, 0.859961, 0.343989,
		-0.761939, 0.076803, 0.643079,
		0.526603, -0.504547, 0.684194,
		9.488019, 16.505285, 14.669796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.079904, 17.255245, 14.805902>,  <9.119397, 16.858467, 14.190860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.079904, 17.255245, 14.805902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.393197, 17.011618, 14.855828>,  <9.581173, 16.865440, 14.885784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.393197, 17.011618, 14.855828>,  <9.079904, 17.255245, 14.805902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.393197, 17.011618, 14.855828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593010, 0.792158, 0.144309,
		-0.186769, -0.039010, 0.981629,
		0.783234, -0.609069, 0.124817,
		9.628167, 16.828897, 14.893273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.416356, 17.525652, 15.432561>,  <9.079904, 17.255245, 14.805902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.416356, 17.525652, 15.432561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.686540, 17.312624, 15.228551>,  <9.848650, 17.184807, 15.106145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.686540, 17.312624, 15.228551>,  <9.416356, 17.525652, 15.432561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.686540, 17.312624, 15.228551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576001, 0.812912, -0.086012,
		0.460412, -0.235676, 0.855849,
		0.675459, -0.532570, -0.510024,
		9.889177, 17.152853, 15.075543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.027909, 17.640869, 15.808504>,  <9.416356, 17.525652, 15.432561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.027909, 17.640869, 15.808504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.101642, 17.544905, 15.427250>,  <10.145881, 17.487326, 15.198498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.101642, 17.544905, 15.427250>,  <10.027909, 17.640869, 15.808504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.101642, 17.544905, 15.427250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543316, 0.832987, -0.104593,
		0.819042, -0.498573, 0.283892,
		0.184331, -0.239909, -0.953135,
		10.156940, 17.472933, 15.141310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.666108, 17.845127, 15.675846>,  <10.027909, 17.640869, 15.808504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.666108, 17.845127, 15.675846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.530622, 17.805231, 15.301611>,  <10.449331, 17.781294, 15.077070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.530622, 17.805231, 15.301611>,  <10.666108, 17.845127, 15.675846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.530622, 17.805231, 15.301611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552356, 0.783905, -0.283541,
		0.761693, -0.612817, -0.210426,
		-0.338713, -0.099741, -0.935588,
		10.429008, 17.775309, 15.020934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.259809, 17.862474, 15.186113>,  <10.666108, 17.845127, 15.675846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.259809, 17.862474, 15.186113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.956783, 17.952080, 14.940866>,  <10.774968, 18.005844, 14.793716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.956783, 17.952080, 14.940866>,  <11.259809, 17.862474, 15.186113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.956783, 17.952080, 14.940866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522820, 0.770617, -0.364429,
		0.390844, -0.596629, -0.700910,
		-0.757563, 0.224015, -0.613120,
		10.729514, 18.019283, 14.756929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.564448, 18.178829, 14.636546>,  <11.259809, 17.862474, 15.186113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.564448, 18.178829, 14.636546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.177568, 18.238651, 14.554419>,  <10.945440, 18.274544, 14.505142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.177568, 18.238651, 14.554419>,  <11.564448, 18.178829, 14.636546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.177568, 18.238651, 14.554419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251709, 0.672930, -0.695563,
		0.034140, -0.724430, -0.688503,
		-0.967201, 0.149556, -0.205319,
		10.887408, 18.283518, 14.492823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.366690, 18.042366, 13.937402>,  <11.564448, 18.178829, 14.636546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.366690, 18.042366, 13.937402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.062946, 18.280851, 14.041636>,  <10.880700, 18.423943, 14.104177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.062946, 18.280851, 14.041636>,  <11.366690, 18.042366, 13.937402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.062946, 18.280851, 14.041636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252368, 0.639009, -0.726621,
		-0.599739, -0.486001, -0.635701,
		-0.759357, 0.596213, 0.260588,
		10.835139, 18.459715, 14.119813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.988366, 18.191975, 13.301080>,  <11.366690, 18.042366, 13.937402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.988366, 18.191975, 13.301080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.888186, 18.490133, 13.548195>,  <10.828078, 18.669027, 13.696464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.888186, 18.490133, 13.548195>,  <10.988366, 18.191975, 13.301080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.888186, 18.490133, 13.548195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497690, 0.646478, -0.578248,
		-0.830409, 0.162645, -0.532886,
		-0.250450, 0.745395, 0.617788,
		10.813051, 18.713751, 13.733531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.689024, 18.770763, 12.927491>,  <10.988366, 18.191975, 13.301080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.689024, 18.770763, 12.927491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.829792, 18.928049, 13.267264>,  <10.914252, 19.022421, 13.471128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.829792, 18.928049, 13.267264>,  <10.689024, 18.770763, 12.927491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.829792, 18.928049, 13.267264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430835, 0.737595, -0.519938,
		-0.830984, 0.548941, 0.090164,
		0.351920, 0.393214, 0.849432,
		10.935368, 19.046013, 13.522094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.674644, 19.422600, 12.758669>,  <10.689024, 18.770763, 12.927491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.674644, 19.422600, 12.758669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.936131, 19.361820, 13.055199>,  <11.093024, 19.325352, 13.233116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.936131, 19.361820, 13.055199>,  <10.674644, 19.422600, 12.758669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.936131, 19.361820, 13.055199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581098, 0.728322, -0.363142,
		-0.484743, 0.668175, 0.564417,
		0.653720, -0.151951, 0.741324,
		11.132248, 19.316235, 13.277596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.930008, 20.055155, 13.003881>,  <10.674644, 19.422600, 12.758669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.930008, 20.055155, 13.003881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.198584, 19.768696, 13.080090>,  <11.359730, 19.596821, 13.125814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.198584, 19.768696, 13.080090>,  <10.930008, 20.055155, 13.003881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.198584, 19.768696, 13.080090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701160, 0.530716, -0.476146,
		0.239879, 0.453289, 0.858479,
		0.671440, -0.716149, 0.190521,
		11.400016, 19.553850, 13.137246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.150719, 14.502726, 27.731157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.835243, 14.422285, 27.498768>,  <16.645958, 14.374021, 27.359335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.835243, 14.422285, 27.498768>,  <17.150719, 14.502726, 27.731157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.835243, 14.422285, 27.498768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544992, -0.208641, 0.812067,
		-0.284522, 0.957093, 0.054954,
		-0.788689, -0.201101, -0.580971,
		16.598637, 14.361955, 27.324476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.508509, 14.831259, 27.991222>,  <17.150719, 14.502726, 27.731157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.508509, 14.831259, 27.991222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.397177, 14.518929, 27.767490>,  <16.330378, 14.331532, 27.633251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.397177, 14.518929, 27.767490>,  <16.508509, 14.831259, 27.991222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.397177, 14.518929, 27.767490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652951, -0.273259, 0.706388,
		-0.704405, 0.561824, -0.433782,
		-0.278331, -0.780822, -0.559329,
		16.313677, 14.284683, 27.599691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.791517, 14.872144, 28.032442>,  <16.508509, 14.831259, 27.991222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.791517, 14.872144, 28.032442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.859702, 14.499368, 27.904423>,  <15.900613, 14.275702, 27.827610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.859702, 14.499368, 27.904423>,  <15.791517, 14.872144, 28.032442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.859702, 14.499368, 27.904423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714333, -0.340603, 0.611325,
		-0.678728, 0.124415, -0.723774,
		0.170461, -0.931939, -0.320050,
		15.910841, 14.219786, 27.808407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.105157, 14.600536, 27.840181>,  <15.791517, 14.872144, 28.032442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.105157, 14.600536, 27.840181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.326874, 14.267741, 27.849617>,  <15.459904, 14.068064, 27.855278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.326874, 14.267741, 27.849617>,  <15.105157, 14.600536, 27.840181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.326874, 14.267741, 27.849617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717637, -0.463368, 0.519892,
		-0.421611, -0.305103, -0.853906,
		0.554293, -0.831987, 0.023592,
		15.493161, 14.018145, 27.856693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.599241, 14.084159, 27.616348>,  <15.105157, 14.600536, 27.840181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.599241, 14.084159, 27.616348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.899234, 13.902251, 27.808477>,  <15.079229, 13.793106, 27.923756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.899234, 13.902251, 27.808477>,  <14.599241, 14.084159, 27.616348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.899234, 13.902251, 27.808477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657699, -0.590017, 0.468307,
		0.070428, -0.667131, -0.741603,
		0.749982, -0.454770, 0.480326,
		15.124228, 13.765821, 27.952576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.654160, 13.329557, 27.392006>,  <14.599241, 14.084159, 27.616348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.654160, 13.329557, 27.392006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.792106, 13.354706, 27.766624>,  <14.874873, 13.369795, 27.991396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.792106, 13.354706, 27.766624>,  <14.654160, 13.329557, 27.392006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.792106, 13.354706, 27.766624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649312, -0.704537, 0.286394,
		0.677836, -0.706877, -0.202147,
		0.344865, 0.062871, 0.936544,
		14.895565, 13.373568, 28.047588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.479062, 12.794304, 27.761930>,  <14.654160, 13.329557, 27.392006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.479062, 12.794304, 27.761930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.629938, 12.991991, 28.075230>,  <14.720464, 13.110603, 28.263208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.629938, 12.991991, 28.075230>,  <14.479062, 12.794304, 27.761930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.629938, 12.991991, 28.075230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534448, -0.574535, 0.619899,
		0.756369, -0.652424, 0.047426,
		0.377189, 0.494219, 0.783247,
		14.743094, 13.140257, 28.310204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.734982, 12.301936, 28.155899>,  <14.479062, 12.794304, 27.761930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.734982, 12.301936, 28.155899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.687871, 12.612449, 28.403614>,  <14.659604, 12.798757, 28.552242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.687871, 12.612449, 28.403614>,  <14.734982, 12.301936, 28.155899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.687871, 12.612449, 28.403614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386527, -0.610283, 0.691485,
		0.914727, -0.157928, 0.371932,
		-0.117779, 0.776281, 0.619286,
		14.652537, 12.845333, 28.589399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.214438, 12.117372, 28.672588>,  <14.734982, 12.301936, 28.155899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.214438, 12.117372, 28.672588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.929077, 12.369946, 28.794140>,  <14.757860, 12.521491, 28.867071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.929077, 12.369946, 28.794140>,  <15.214438, 12.117372, 28.672588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.929077, 12.369946, 28.794140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279256, -0.653900, 0.703158,
		0.642706, 0.416776, 0.642827,
		-0.713404, 0.631437, 0.303878,
		14.715056, 12.559378, 28.885303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.269412, 12.358011, 29.401064>,  <15.214438, 12.117372, 28.672588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.269412, 12.358011, 29.401064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.887785, 12.474242, 29.371889>,  <14.658809, 12.543981, 29.354383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.887785, 12.474242, 29.371889>,  <15.269412, 12.358011, 29.401064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.887785, 12.474242, 29.371889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152404, -0.261137, 0.953195,
		0.257930, 0.920528, 0.293428,
		-0.954068, 0.290577, -0.072937,
		14.601564, 12.561415, 29.350008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.071763, 12.799965, 30.039999>,  <15.269412, 12.358011, 29.401064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.071763, 12.799965, 30.039999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.724821, 12.668062, 29.890892>,  <14.516656, 12.588921, 29.801428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.724821, 12.668062, 29.890892>,  <15.071763, 12.799965, 30.039999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.724821, 12.668062, 29.890892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286985, -0.280549, 0.915932,
		-0.406614, 0.901417, 0.148701,
		-0.867355, -0.329756, -0.372769,
		14.464615, 12.569136, 29.779062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.693933, 13.187305, 30.377146>,  <15.071763, 12.799965, 30.039999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.693933, 13.187305, 30.377146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.476797, 12.870134, 30.266443>,  <14.346516, 12.679832, 30.200022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.476797, 12.870134, 30.266443>,  <14.693933, 13.187305, 30.377146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.476797, 12.870134, 30.266443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251996, -0.160568, 0.954314,
		-0.801139, 0.587780, -0.112652,
		-0.542838, -0.792927, -0.276756,
		14.313946, 12.632257, 30.183416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.981989, 13.170202, 30.752964>,  <14.693933, 13.187305, 30.377146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.981989, 13.170202, 30.752964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.099514, 12.809048, 30.627443>,  <14.170029, 12.592355, 30.552132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.099514, 12.809048, 30.627443>,  <13.981989, 13.170202, 30.752964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.099514, 12.809048, 30.627443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260430, -0.391484, 0.882563,
		-0.919701, -0.177585, -0.350162,
		0.293813, -0.902886, -0.313800,
		14.187658, 12.538182, 30.533304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.812154, 13.899853, 30.857719>,  <13.981989, 13.170202, 30.752964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.812154, 13.899853, 30.857719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.000704, 14.100053, 31.148182>,  <14.113833, 14.220173, 31.322460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.000704, 14.100053, 31.148182>,  <13.812154, 13.899853, 30.857719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.000704, 14.100053, 31.148182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862159, -0.434887, -0.259914,
		0.185710, 0.748581, -0.636505,
		0.471374, 0.500500, 0.726158,
		14.142117, 14.250203, 31.366030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.482510, 14.333370, 31.328220>,  <13.812154, 13.899853, 30.857719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.482510, 14.333370, 31.328220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.214478, 14.616563, 31.417444>,  <13.053658, 14.786478, 31.470978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.214478, 14.616563, 31.417444>,  <13.482510, 14.333370, 31.328220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.214478, 14.616563, 31.417444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210506, 0.106921, -0.971728,
		-0.711814, -0.698092, 0.077388,
		-0.670080, 0.707980, 0.223060,
		13.013453, 14.828957, 31.484362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.833299, 14.290409, 30.925476>,  <13.482510, 14.333370, 31.328220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.833299, 14.290409, 30.925476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.834941, 14.679420, 31.018578>,  <12.835926, 14.912826, 31.074438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.834941, 14.679420, 31.018578>,  <12.833299, 14.290409, 30.925476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.834941, 14.679420, 31.018578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119575, 0.231564, -0.965443,
		-0.992817, -0.023868, 0.117241,
		0.004106, 0.972527, 0.232755,
		12.836172, 14.971177, 31.088404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.422398, 14.574550, 30.440205>,  <12.833299, 14.290409, 30.925476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.422398, 14.574550, 30.440205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.605721, 14.901794, 30.579142>,  <12.715715, 15.098141, 30.662504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.605721, 14.901794, 30.579142>,  <12.422398, 14.574550, 30.440205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.605721, 14.901794, 30.579142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161432, 0.307680, -0.937696,
		-0.874010, 0.485826, 0.008943,
		0.458309, 0.818111, 0.347343,
		12.743214, 15.147228, 30.683344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.185352, 15.149129, 30.022528>,  <12.422398, 14.574550, 30.440205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.185352, 15.149129, 30.022528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.518889, 15.288283, 30.193958>,  <12.719012, 15.371777, 30.296818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.518889, 15.288283, 30.193958>,  <12.185352, 15.149129, 30.022528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.518889, 15.288283, 30.193958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252815, 0.449507, -0.856754,
		-0.490702, 0.822750, 0.286868,
		0.833844, 0.347887, 0.428578,
		12.769043, 15.392650, 30.322533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.300818, 15.653434, 29.611912>,  <12.185352, 15.149129, 30.022528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.300818, 15.653434, 29.611912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.653249, 15.646238, 29.800964>,  <12.864707, 15.641921, 29.914396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.653249, 15.646238, 29.800964>,  <12.300818, 15.653434, 29.611912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.653249, 15.646238, 29.800964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432238, 0.436331, -0.789168,
		-0.192029, 0.899606, 0.392216,
		0.881076, -0.017988, 0.472632,
		12.917572, 15.640842, 29.942755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.526608, 16.370031, 29.667837>,  <12.300818, 15.653434, 29.611912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.526608, 16.370031, 29.667837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.850328, 16.136543, 29.694082>,  <13.044560, 15.996450, 29.709829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.850328, 16.136543, 29.694082>,  <12.526608, 16.370031, 29.667837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.850328, 16.136543, 29.694082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312630, 0.333470, -0.889416,
		0.497289, 0.740317, 0.452366,
		0.809300, -0.583720, 0.065615,
		13.093119, 15.961428, 29.713766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.235039, 16.745956, 29.549242>,  <12.526608, 16.370031, 29.667837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.235039, 16.745956, 29.549242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.270793, 16.365810, 29.430033>,  <13.292245, 16.137724, 29.358507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.270793, 16.365810, 29.430033>,  <13.235039, 16.745956, 29.549242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.270793, 16.365810, 29.430033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511324, 0.300567, -0.805113,
		0.854727, -0.080422, 0.512810,
		0.089385, -0.950364, -0.298024,
		13.297608, 16.080702, 29.340626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.948514, 16.604483, 29.359800>,  <13.235039, 16.745956, 29.549242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.948514, 16.604483, 29.359800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.738773, 16.308167, 29.191856>,  <13.612929, 16.130377, 29.091089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.738773, 16.308167, 29.191856>,  <13.948514, 16.604483, 29.359800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.738773, 16.308167, 29.191856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416870, 0.206619, -0.885171,
		0.742479, -0.639168, 0.200473,
		-0.524351, -0.740792, -0.419860,
		13.581468, 16.085928, 29.065899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.453833, 16.245604, 28.901688>,  <13.948514, 16.604483, 29.359800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.453833, 16.245604, 28.901688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.102485, 16.106121, 28.770924>,  <13.891676, 16.022432, 28.692465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.102485, 16.106121, 28.770924>,  <14.453833, 16.245604, 28.901688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.102485, 16.106121, 28.770924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338139, 0.030065, -0.940616,
		0.337826, -0.936750, 0.091503,
		-0.878371, -0.348705, -0.326909,
		13.838973, 16.001509, 28.672852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.636092, 15.704326, 28.523655>,  <14.453833, 16.245604, 28.901688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.636092, 15.704326, 28.523655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.266599, 15.791722, 28.397814>,  <14.044903, 15.844160, 28.322309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.266599, 15.791722, 28.397814>,  <14.636092, 15.704326, 28.523655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.266599, 15.791722, 28.397814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317230, -0.023911, -0.948047,
		-0.214663, -0.975546, -0.047225,
		-0.923734, 0.218491, -0.314605,
		13.989478, 15.857269, 28.303432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.518901, 15.290783, 27.912371>,  <14.636092, 15.704326, 28.523655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.518901, 15.290783, 27.912371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.214675, 15.548970, 27.884338>,  <14.032139, 15.703882, 27.867519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.214675, 15.548970, 27.884338>,  <14.518901, 15.290783, 27.912371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.214675, 15.548970, 27.884338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077243, -0.017213, -0.996864,
		-0.644650, -0.763593, -0.036766,
		-0.760566, 0.645468, -0.070079,
		13.986506, 15.742611, 27.863316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.101535, 15.120030, 27.364321>,  <14.518901, 15.290783, 27.912371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.101535, 15.120030, 27.364321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.992401, 15.502548, 27.406395>,  <13.926921, 15.732059, 27.431639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.992401, 15.502548, 27.406395>,  <14.101535, 15.120030, 27.364321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.992401, 15.502548, 27.406395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013409, 0.113102, -0.993493,
		-0.961968, -0.269649, -0.043681,
		-0.272835, 0.956294, 0.105185,
		13.910551, 15.789436, 27.437950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.490320, 15.141861, 26.947458>,  <14.101535, 15.120030, 27.364321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.490320, 15.141861, 26.947458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.653502, 15.503587, 26.997723>,  <13.751410, 15.720622, 27.027882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.653502, 15.503587, 26.997723>,  <13.490320, 15.141861, 26.947458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.653502, 15.503587, 26.997723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021451, 0.128103, -0.991529,
		-0.912751, 0.407193, 0.032862,
		0.407954, 0.904314, 0.125661,
		13.775887, 15.774881, 27.035421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.145294, 15.563706, 26.508087>,  <13.490320, 15.141861, 26.947458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.145294, 15.563706, 26.508087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.496971, 15.740038, 26.580410>,  <13.707977, 15.845837, 26.623804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.496971, 15.740038, 26.580410>,  <13.145294, 15.563706, 26.508087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.496971, 15.740038, 26.580410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115596, 0.170791, -0.978503,
		-0.462232, 0.881193, 0.099200,
		0.879192, 0.440829, 0.180808,
		13.760729, 15.872287, 26.634653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.511018, 16.137272, 26.464348>,  <13.145294, 15.563706, 26.508087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.511018, 16.137272, 26.464348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.180980, 15.989821, 26.293077>,  <11.982957, 15.901352, 26.190315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.180980, 15.989821, 26.293077>,  <12.511018, 16.137272, 26.464348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.180980, 15.989821, 26.293077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435587, -0.067630, 0.897602,
		-0.359836, 0.927115, -0.104767,
		-0.825095, -0.368624, -0.428175,
		11.933451, 15.879234, 26.164625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.998828, 16.543427, 26.635679>,  <12.511018, 16.137272, 26.464348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.998828, 16.543427, 26.635679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.776975, 16.229261, 26.525764>,  <11.643863, 16.040762, 26.459816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.776975, 16.229261, 26.525764>,  <11.998828, 16.543427, 26.635679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.776975, 16.229261, 26.525764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541240, 0.089695, 0.836071,
		-0.632014, 0.612439, -0.474844,
		-0.554633, -0.785413, -0.274788,
		11.610584, 15.993637, 26.443329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.250546, 16.696049, 26.717390>,  <11.998828, 16.543427, 26.635679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.250546, 16.696049, 26.717390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.267892, 16.297676, 26.748980>,  <11.278300, 16.058653, 26.767933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.267892, 16.297676, 26.748980>,  <11.250546, 16.696049, 26.717390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.267892, 16.297676, 26.748980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512879, 0.045645, 0.857246,
		-0.857365, -0.077680, -0.508814,
		0.043366, -0.995933, 0.078975,
		11.280902, 15.998897, 26.772673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.569146, 16.494480, 26.811041>,  <11.250546, 16.696049, 26.717390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.569146, 16.494480, 26.811041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.748788, 16.158936, 26.934078>,  <10.856573, 15.957608, 27.007900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.748788, 16.158936, 26.934078>,  <10.569146, 16.494480, 26.811041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.748788, 16.158936, 26.934078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615649, -0.041044, 0.786951,
		-0.647519, -0.542793, -0.534878,
		0.449105, -0.838863, 0.307593,
		10.883519, 15.907276, 27.026356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.055800, 15.988473, 27.072262>,  <10.569146, 16.494480, 26.811041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.055800, 15.988473, 27.072262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.398131, 15.862708, 27.236557>,  <10.603530, 15.787250, 27.335135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.398131, 15.862708, 27.236557>,  <10.055800, 15.988473, 27.072262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.398131, 15.862708, 27.236557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487476, -0.224673, 0.843735,
		-0.172996, -0.922317, -0.345548,
		0.855827, -0.314409, 0.410740,
		10.654880, 15.768385, 27.359779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.873326, 15.384411, 27.498640>,  <10.055800, 15.988473, 27.072262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.873326, 15.384411, 27.498640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.228590, 15.483808, 27.653263>,  <10.441748, 15.543446, 27.746037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.228590, 15.483808, 27.653263>,  <9.873326, 15.384411, 27.498640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.228590, 15.483808, 27.653263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345502, -0.193542, 0.918243,
		0.302992, -0.949101, -0.086041,
		0.888158, 0.248493, 0.386558,
		10.495037, 15.558355, 27.769230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.964304, 14.851671, 27.925293>,  <9.873326, 15.384411, 27.498640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.964304, 14.851671, 27.925293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.209517, 15.138070, 28.058882>,  <10.356646, 15.309910, 28.139036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.209517, 15.138070, 28.058882>,  <9.964304, 14.851671, 27.925293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.209517, 15.138070, 28.058882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230133, -0.242560, 0.942445,
		0.755798, -0.654608, 0.016078,
		0.613032, 0.715998, 0.333974,
		10.393427, 15.352869, 28.159073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.259497, 14.265753, 27.655869>,  <9.964304, 14.851671, 27.925293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.259497, 14.265753, 27.655869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.174441, 13.874902, 27.656755>,  <10.123408, 13.640391, 27.657288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.174441, 13.874902, 27.656755>,  <10.259497, 14.265753, 27.655869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.174441, 13.874902, 27.656755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003666, -0.001473, -0.999992,
		0.977124, -0.212644, -0.003269,
		-0.212638, -0.977129, 0.002219,
		10.110650, 13.581763, 27.657421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.747104, 13.888062, 27.236303>,  <10.259497, 14.265753, 27.655869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.747104, 13.888062, 27.236303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.449222, 13.624264, 27.277258>,  <10.270493, 13.465985, 27.301830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.449222, 13.624264, 27.277258>,  <10.747104, 13.888062, 27.236303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.449222, 13.624264, 27.277258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006313, -0.160366, -0.987037,
		0.667365, -0.734405, 0.123589,
		-0.744704, -0.659494, 0.102386,
		10.225810, 13.426415, 27.307974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.846892, 13.300856, 26.873779>,  <10.747104, 13.888062, 27.236303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.846892, 13.300856, 26.873779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.451365, 13.265957, 26.922150>,  <10.214047, 13.245018, 26.951172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.451365, 13.265957, 26.922150>,  <10.846892, 13.300856, 26.873779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.451365, 13.265957, 26.922150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084382, -0.341222, -0.936187,
		0.122942, -0.935925, 0.330045,
		-0.988820, -0.087247, 0.120926,
		10.154718, 13.239783, 26.958427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.613375, 12.606650, 26.543392>,  <10.846892, 13.300856, 26.873779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.613375, 12.606650, 26.543392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.300159, 12.855007, 26.558056>,  <10.112230, 13.004022, 26.566854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.300159, 12.855007, 26.558056>,  <10.613375, 12.606650, 26.543392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.300159, 12.855007, 26.558056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212461, -0.211620, -0.953980,
		-0.584561, -0.754791, 0.297622,
		-0.783038, 0.620893, 0.036659,
		10.065248, 13.041275, 26.569054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.130143, 12.256023, 26.133709>,  <10.613375, 12.606650, 26.543392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.130143, 12.256023, 26.133709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.045070, 12.646327, 26.154337>,  <9.994025, 12.880509, 26.166714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.045070, 12.646327, 26.154337>,  <10.130143, 12.256023, 26.133709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.045070, 12.646327, 26.154337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275160, -0.009167, -0.961355,
		-0.937578, -0.218655, 0.270440,
		-0.212685, 0.975759, 0.051570,
		9.981264, 12.939054, 26.169807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.569039, 12.349074, 25.600420>,  <10.130143, 12.256023, 26.133709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.569039, 12.349074, 25.600420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.718451, 12.712893, 25.673300>,  <9.808099, 12.931185, 25.717028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.718451, 12.712893, 25.673300>,  <9.569039, 12.349074, 25.600420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.718451, 12.712893, 25.673300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126862, 0.244662, -0.961273,
		-0.918902, 0.335951, 0.206776,
		0.373531, 0.909548, 0.182201,
		9.830511, 12.985758, 25.727961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.210110, 12.806381, 25.073299>,  <9.569039, 12.349074, 25.600420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.210110, 12.806381, 25.073299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.526263, 13.021593, 25.190479>,  <9.715955, 13.150721, 25.260788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.526263, 13.021593, 25.190479>,  <9.210110, 12.806381, 25.073299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.526263, 13.021593, 25.190479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158277, 0.282615, -0.946085,
		-0.591814, 0.794137, 0.138216,
		0.790383, 0.538030, 0.292949,
		9.763378, 13.183002, 25.278364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<13.138660, 9.890356, 30.155952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.322077, 10.237687, 30.231579>,  <13.432127, 10.446086, 30.276955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.322077, 10.237687, 30.231579>,  <13.138660, 9.890356, 30.155952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.322077, 10.237687, 30.231579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059488, 0.182280, -0.981445,
		-0.886680, 0.461281, 0.031928,
		0.458542, 0.868328, 0.189064,
		13.459640, 10.498186, 30.288298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.821604, 10.483975, 29.853979>,  <13.138660, 9.890356, 30.155952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.821604, 10.483975, 29.853979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.206694, 10.579141, 29.905451>,  <13.437748, 10.636240, 29.936335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.206694, 10.579141, 29.905451>,  <12.821604, 10.483975, 29.853979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.206694, 10.579141, 29.905451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122038, 0.042498, -0.991615,
		-0.241387, 0.970356, 0.011880,
		0.962725, 0.237913, 0.128679,
		13.495511, 10.650515, 29.944054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.977621, 11.079611, 29.455980>,  <12.821604, 10.483975, 29.853979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.977621, 11.079611, 29.455980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.314605, 10.872855, 29.516758>,  <13.516795, 10.748802, 29.553225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.314605, 10.872855, 29.516758>,  <12.977621, 11.079611, 29.455980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.314605, 10.872855, 29.516758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155414, -0.036879, -0.987161,
		0.515856, 0.855258, 0.049263,
		0.842460, -0.516889, 0.151944,
		13.567343, 10.717789, 29.562342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.437606, 11.343243, 28.971207>,  <12.977621, 11.079611, 29.455980>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.437606, 11.343243, 28.971207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.621341, 11.003308, 29.074579>,  <13.731582, 10.799348, 29.136602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.621341, 11.003308, 29.074579>,  <13.437606, 11.343243, 28.971207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.621341, 11.003308, 29.074579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379540, -0.075266, -0.922109,
		0.803093, 0.521644, 0.287975,
		0.459338, -0.849837, 0.258430,
		13.759142, 10.748357, 29.152109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.031052, 11.457062, 28.643221>,  <13.437606, 11.343243, 28.971207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.031052, 11.457062, 28.643221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.050159, 11.063554, 28.712404>,  <14.061625, 10.827449, 28.753914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.050159, 11.063554, 28.712404>,  <14.031052, 11.457062, 28.643221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.050159, 11.063554, 28.712404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336772, -0.147154, -0.930016,
		0.940374, 0.102675, 0.324277,
		0.047770, -0.983770, 0.172958,
		14.064490, 10.768423, 28.764292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.705030, 11.293648, 28.424696>,  <14.031052, 11.457062, 28.643221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.705030, 11.293648, 28.424696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.484714, 10.960459, 28.445814>,  <14.352524, 10.760546, 28.458485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.484714, 10.960459, 28.445814>,  <14.705030, 11.293648, 28.424696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.484714, 10.960459, 28.445814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375577, -0.303839, -0.875571,
		0.745367, -0.462429, 0.480197,
		-0.550791, -0.832972, 0.052794,
		14.319476, 10.710567, 28.461653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.173571, 10.608941, 28.326345>,  <14.705030, 11.293648, 28.424696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.173571, 10.608941, 28.326345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.790433, 10.531638, 28.241316>,  <14.560551, 10.485256, 28.190298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.790433, 10.531638, 28.241316>,  <15.173571, 10.608941, 28.326345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.790433, 10.531638, 28.241316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256948, -0.245304, -0.934775,
		0.128506, -0.949988, 0.284619,
		-0.957843, -0.193257, -0.212575,
		14.503080, 10.473661, 28.177544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.279226, 10.154877, 27.869551>,  <15.173571, 10.608941, 28.326345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.279226, 10.154877, 27.869551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.892009, 10.225333, 27.798147>,  <14.659678, 10.267608, 27.755304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.892009, 10.225333, 27.798147>,  <15.279226, 10.154877, 27.869551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.892009, 10.225333, 27.798147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139029, -0.215470, -0.966563,
		-0.208700, -0.960496, 0.184098,
		-0.968047, 0.176127, -0.178505,
		14.601596, 10.278176, 27.744595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.994073, 9.516479, 27.478693>,  <15.279226, 10.154877, 27.869551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.994073, 9.516479, 27.478693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.774251, 9.843993, 27.412266>,  <14.642358, 10.040502, 27.372410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.774251, 9.843993, 27.412266>,  <14.994073, 9.516479, 27.478693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.774251, 9.843993, 27.412266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068589, -0.153885, -0.985705,
		-0.832637, -0.553090, 0.028408,
		-0.549555, 0.818786, -0.166066,
		14.609385, 10.089629, 27.362446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.472681, 9.293967, 26.926453>,  <14.994073, 9.516479, 27.478693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.472681, 9.293967, 26.926453> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.522273, 9.690800, 26.918404>,  <14.552029, 9.928899, 26.913574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.522273, 9.690800, 26.918404>,  <14.472681, 9.293967, 26.926453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.522273, 9.690800, 26.918404> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003709, -0.019817, -0.999797,
		-0.992278, 0.124030, 0.001223,
		0.123981, 0.992080, -0.020124,
		14.559467, 9.988424, 26.912367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.076797, 9.449697, 26.406673>,  <14.472681, 9.293967, 26.926453>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.076797, 9.449697, 26.406673> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.297941, 9.780949, 26.443649>,  <14.430628, 9.979700, 26.465834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.297941, 9.780949, 26.443649>,  <14.076797, 9.449697, 26.406673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.297941, 9.780949, 26.443649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073629, 0.061950, -0.995360,
		-0.830015, 0.557100, -0.026725,
		0.552860, 0.828131, 0.092439,
		14.463799, 10.029388, 26.471380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.749216, 10.091527, 26.043833>,  <14.076797, 9.449697, 26.406673>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.749216, 10.091527, 26.043833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.143080, 10.157515, 26.066572>,  <14.379398, 10.197107, 26.080215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.143080, 10.157515, 26.066572>,  <13.749216, 10.091527, 26.043833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.143080, 10.157515, 26.066572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023592, 0.196931, -0.980133,
		-0.172886, 0.966439, 0.190018,
		0.984659, 0.164969, 0.056846,
		14.438478, 10.207006, 26.083626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.239717, 10.196487, 25.605293>,  <13.749216, 10.091527, 26.043833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.239717, 10.196487, 25.605293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.909293, 10.361358, 25.451550>,  <12.711039, 10.460279, 25.359303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.909293, 10.361358, 25.451550>,  <13.239717, 10.196487, 25.605293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.909293, 10.361358, 25.451550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414380, 0.018042, 0.909925,
		0.381984, 0.910926, 0.155894,
		-0.826061, 0.412176, -0.384362,
		12.661475, 10.485010, 25.336241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.191613, 10.808307, 25.933939>,  <13.239717, 10.196487, 25.605293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.191613, 10.808307, 25.933939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.829128, 10.683665, 25.819618>,  <12.611637, 10.608880, 25.751026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.829128, 10.683665, 25.819618>,  <13.191613, 10.808307, 25.933939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.829128, 10.683665, 25.819618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333993, 0.113031, 0.935774,
		-0.259286, 0.943465, -0.206503,
		-0.906212, -0.311604, -0.285803,
		12.557264, 10.590184, 25.733877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.754813, 11.216651, 26.341684>,  <13.191613, 10.808307, 25.933939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.754813, 11.216651, 26.341684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.553846, 10.893429, 26.218641>,  <12.433267, 10.699495, 26.144815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.553846, 10.893429, 26.218641>,  <12.754813, 11.216651, 26.341684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.553846, 10.893429, 26.218641> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516747, -0.004616, 0.856126,
		-0.693217, 0.589088, -0.415241,
		-0.502417, -0.808056, -0.307609,
		12.403121, 10.651012, 26.126358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.156254, 11.414141, 26.530661>,  <12.754813, 11.216651, 26.341684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.156254, 11.414141, 26.530661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.134890, 11.020120, 26.465155>,  <12.122071, 10.783707, 26.425852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.134890, 11.020120, 26.465155>,  <12.156254, 11.414141, 26.530661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.134890, 11.020120, 26.465155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618103, -0.096192, 0.780190,
		-0.784281, 0.142894, -0.603726,
		-0.053411, -0.985053, -0.163764,
		12.118866, 10.724604, 26.416025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.471234, 11.316278, 26.467068>,  <12.156254, 11.414141, 26.530661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.471234, 11.316278, 26.467068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.650187, 10.973383, 26.569042>,  <11.757560, 10.767646, 26.630228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.650187, 10.973383, 26.569042>,  <11.471234, 11.316278, 26.467068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.650187, 10.973383, 26.569042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586523, -0.066032, 0.807236,
		-0.675159, -0.510670, -0.532331,
		0.447382, -0.857237, 0.254938,
		11.784402, 10.716211, 26.645523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.903728, 10.970673, 26.751221>,  <11.471234, 11.316278, 26.467068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.903728, 10.970673, 26.751221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.241525, 10.796415, 26.875830>,  <11.444202, 10.691861, 26.950596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.241525, 10.796415, 26.875830>,  <10.903728, 10.970673, 26.751221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.241525, 10.796415, 26.875830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370995, -0.056338, 0.926924,
		-0.386260, -0.898354, -0.209200,
		0.844492, -0.435645, 0.311524,
		11.494872, 10.665722, 26.969288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.713849, 10.232669, 27.023790>,  <10.903728, 10.970673, 26.751221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.713849, 10.232669, 27.023790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.045611, 10.377729, 27.193764>,  <11.244669, 10.464766, 27.295748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.045611, 10.377729, 27.193764>,  <10.713849, 10.232669, 27.023790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.045611, 10.377729, 27.193764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386021, -0.177800, 0.905193,
		0.403822, -0.914807, -0.007478,
		0.829406, 0.362650, 0.424935,
		11.294434, 10.486525, 27.321243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.845276, 9.794879, 27.595270>,  <10.713849, 10.232669, 27.023790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.845276, 9.794879, 27.595270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.047234, 10.133399, 27.663221>,  <11.168408, 10.336511, 27.703991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.047234, 10.133399, 27.663221>,  <10.845276, 9.794879, 27.595270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.047234, 10.133399, 27.663221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267828, -0.033495, 0.962884,
		0.820579, -0.531652, 0.209752,
		0.504894, 0.846300, 0.169877,
		11.198702, 10.387289, 27.714184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.137358, 9.562632, 28.142326>,  <10.845276, 9.794879, 27.595270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.137358, 9.562632, 28.142326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.198817, 9.957518, 28.125374>,  <11.235693, 10.194449, 28.115202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.198817, 9.957518, 28.125374>,  <11.137358, 9.562632, 28.142326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.198817, 9.957518, 28.125374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282103, 0.084929, 0.955617,
		0.947000, -0.134875, 0.291546,
		0.153650, 0.987216, -0.042379,
		11.244912, 10.253682, 28.112659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.507822, 9.739813, 28.676430>,  <11.137358, 9.562632, 28.142326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.507822, 9.739813, 28.676430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.335550, 10.083735, 28.566706>,  <11.232187, 10.290090, 28.500872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.335550, 10.083735, 28.566706>,  <11.507822, 9.739813, 28.676430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.335550, 10.083735, 28.566706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267390, 0.168735, 0.948700,
		0.861984, 0.481934, 0.157233,
		-0.430680, 0.859807, -0.274311,
		11.206347, 10.341678, 28.484413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.981579, 10.115487, 28.989912>,  <11.507822, 9.739813, 28.676430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.981579, 10.115487, 28.989912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.620936, 10.282376, 28.944248>,  <11.404552, 10.382510, 28.916849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.620936, 10.282376, 28.944248>,  <11.981579, 10.115487, 28.989912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.620936, 10.282376, 28.944248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114908, 0.023416, 0.993100,
		0.417017, 0.908502, 0.026830,
		-0.901606, 0.417223, -0.114159,
		11.350454, 10.407543, 28.910000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.894876, 10.635387, 29.535940>,  <11.981579, 10.115487, 28.989912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.894876, 10.635387, 29.535940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.520106, 10.546173, 29.428293>,  <11.295244, 10.492644, 29.363705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.520106, 10.546173, 29.428293>,  <11.894876, 10.635387, 29.535940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.520106, 10.546173, 29.428293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290030, 0.066387, 0.954712,
		-0.195070, 0.972547, -0.126888,
		-0.936926, -0.223037, -0.269117,
		11.239029, 10.479262, 29.347557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.498606, 11.144396, 29.813978>,  <11.894876, 10.635387, 29.535940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.498606, 11.144396, 29.813978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.256958, 10.832906, 29.746300>,  <11.111969, 10.646011, 29.705692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.256958, 10.832906, 29.746300>,  <11.498606, 11.144396, 29.813978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.256958, 10.832906, 29.746300> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271560, 0.001562, 0.962420,
		-0.749196, 0.627364, -0.212414,
		-0.604119, -0.778725, -0.169197,
		11.075723, 10.599288, 29.695541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.766468, 11.323529, 29.924162>,  <11.498606, 11.144396, 29.813978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.766468, 11.323529, 29.924162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.887225, 10.950776, 30.004618>,  <10.959680, 10.727124, 30.052891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.887225, 10.950776, 30.004618>,  <10.766468, 11.323529, 29.924162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.887225, 10.950776, 30.004618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052536, 0.226926, 0.972494,
		-0.951893, -0.283021, 0.117464,
		0.301892, -0.931882, 0.201140,
		10.977793, 10.671211, 30.064960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.853115, 12.066054, 30.096184>,  <10.766468, 11.323529, 29.924162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.853115, 12.066054, 30.096184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.542731, 12.291770, 30.208942>,  <10.356501, 12.427199, 30.276598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.542731, 12.291770, 30.208942>,  <10.853115, 12.066054, 30.096184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.542731, 12.291770, 30.208942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215554, 0.182783, -0.959233,
		-0.592811, -0.805088, -0.020197,
		-0.775958, 0.564290, 0.281896,
		10.309943, 12.461057, 30.293510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.304915, 11.911784, 29.631020>,  <10.853115, 12.066054, 30.096184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.304915, 11.911784, 29.631020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.192350, 12.260049, 29.792391>,  <10.124811, 12.469007, 29.889214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.192350, 12.260049, 29.792391>,  <10.304915, 11.911784, 29.631020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.192350, 12.260049, 29.792391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337183, 0.303889, -0.891044,
		-0.898395, -0.386781, 0.208054,
		-0.281413, 0.870662, 0.403428,
		10.107926, 12.521248, 29.913420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.617165, 12.032346, 29.351713>,  <10.304915, 11.911784, 29.631020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.617165, 12.032346, 29.351713> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.776896, 12.373196, 29.487019>,  <9.872734, 12.577705, 29.568203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.776896, 12.373196, 29.487019>,  <9.617165, 12.032346, 29.351713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.776896, 12.373196, 29.487019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091674, 0.404222, -0.910055,
		-0.912213, 0.332400, 0.239535,
		0.399327, 0.852124, 0.338265,
		9.896693, 12.628833, 29.588497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.182255, 12.472160, 29.006195>,  <9.617165, 12.032346, 29.351713>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.182255, 12.472160, 29.006195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.482895, 12.711725, 29.116758>,  <9.663279, 12.855464, 29.183096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.482895, 12.711725, 29.116758>,  <9.182255, 12.472160, 29.006195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.482895, 12.711725, 29.116758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000112, 0.418927, -0.908020,
		-0.659619, 0.682499, 0.314798,
		0.751600, 0.598912, 0.276409,
		9.708375, 12.891399, 29.199680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.961201, 13.051444, 28.755028>,  <9.182255, 12.472160, 29.006195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.961201, 13.051444, 28.755028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.352189, 13.098413, 28.825184>,  <9.586782, 13.126594, 28.867277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.352189, 13.098413, 28.825184>,  <8.961201, 13.051444, 28.755028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.352189, 13.098413, 28.825184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130219, 0.318484, -0.938941,
		-0.166111, 0.940627, 0.296019,
		0.977471, 0.117421, 0.175391,
		9.645431, 13.133638, 28.877802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.149936, 13.678157, 28.427013>,  <8.961201, 13.051444, 28.755028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.149936, 13.678157, 28.427013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.490716, 13.471457, 28.460835>,  <9.695185, 13.347438, 28.481127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.490716, 13.471457, 28.460835>,  <9.149936, 13.678157, 28.427013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.490716, 13.471457, 28.460835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207954, 0.185716, -0.960346,
		0.480555, 0.835751, 0.265681,
		0.851951, -0.516749, 0.084552,
		9.746302, 13.316433, 28.486200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.636005, 14.131115, 28.112787>,  <9.149936, 13.678157, 28.427013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.636005, 14.131115, 28.112787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.799367, 13.766124, 28.122524>,  <9.897384, 13.547130, 28.128366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.799367, 13.766124, 28.122524>,  <9.636005, 14.131115, 28.112787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.799367, 13.766124, 28.122524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092383, 0.014787, -0.995614,
		0.908115, 0.408861, 0.090336,
		0.408404, -0.912477, 0.024344,
		9.921888, 13.492381, 28.129827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.343054, 14.456613, 28.458483>,  <9.636005, 14.131115, 28.112787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.343054, 14.456613, 28.458483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.437271, 14.838394, 28.531733>,  <10.493801, 15.067463, 28.575684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.437271, 14.838394, 28.531733>,  <10.343054, 14.456613, 28.458483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.437271, 14.838394, 28.531733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003561, -0.189274, 0.981918,
		0.971857, -0.230632, -0.047981,
		0.235543, 0.954455, 0.183126,
		10.507934, 15.124731, 28.586670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.866382, 14.519568, 29.018148>,  <10.343054, 14.456613, 28.458483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.866382, 14.519568, 29.018148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.698694, 14.882676, 29.012331>,  <10.598082, 15.100541, 29.008841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.698694, 14.882676, 29.012331>,  <10.866382, 14.519568, 29.018148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.698694, 14.882676, 29.012331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058324, -0.010942, 0.998238,
		0.906010, 0.419328, 0.057532,
		-0.419218, 0.907769, -0.014543,
		10.572928, 15.155006, 29.007969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.359907, 15.097025, 29.262293>,  <10.866382, 14.519568, 29.018148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.359907, 15.097025, 29.262293> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.986566, 15.229743, 29.317085>,  <10.762561, 15.309374, 29.349960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.986566, 15.229743, 29.317085>,  <11.359907, 15.097025, 29.262293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.986566, 15.229743, 29.317085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178144, 0.096853, 0.979226,
		0.311636, 0.938366, -0.149506,
		-0.933353, 0.331796, 0.136981,
		10.706560, 15.329282, 29.358179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.409618, 15.665822, 29.620020>,  <11.359907, 15.097025, 29.262293>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.409618, 15.665822, 29.620020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.025032, 15.599363, 29.707634>,  <10.794280, 15.559488, 29.760202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.025032, 15.599363, 29.707634>,  <11.409618, 15.665822, 29.620020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.025032, 15.599363, 29.707634> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191511, 0.166853, 0.967204,
		-0.197246, 0.971882, -0.128604,
		-0.961466, -0.166148, 0.219037,
		10.736592, 15.549519, 29.773346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.122400, 16.232937, 30.148756>,  <11.409618, 15.665822, 29.620020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.122400, 16.232937, 30.148756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.873863, 15.922331, 30.190628>,  <10.724741, 15.735968, 30.215752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.873863, 15.922331, 30.190628>,  <11.122400, 16.232937, 30.148756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.873863, 15.922331, 30.190628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049398, 0.172153, 0.983831,
		-0.781981, 0.606125, -0.145325,
		-0.621342, -0.776515, 0.104679,
		10.687461, 15.689376, 30.222033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.603063, 16.505119, 30.632498>,  <11.122400, 16.232937, 30.148756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.603063, 16.505119, 30.632498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.609223, 16.105238, 30.640051>,  <10.612920, 15.865309, 30.644583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.609223, 16.105238, 30.640051>,  <10.603063, 16.505119, 30.632498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.609223, 16.105238, 30.640051> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010296, 0.018723, 0.999772,
		-0.999828, -0.015593, -0.010005,
		0.015402, -0.999703, 0.018881,
		10.613844, 15.805327, 30.645716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.227351, 16.377556, 31.163927>,  <10.603063, 16.505119, 30.632498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.227351, 16.377556, 31.163927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.415338, 16.026279, 31.128347>,  <10.528130, 15.815514, 31.107000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.415338, 16.026279, 31.128347>,  <10.227351, 16.377556, 31.163927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.415338, 16.026279, 31.128347> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065946, -0.065556, 0.995667,
		-0.880218, -0.473795, 0.027104,
		0.469965, -0.878192, -0.088948,
		10.556327, 15.762822, 31.101664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.768230, 16.031584, 31.634537>,  <10.227351, 16.377556, 31.163927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.768230, 16.031584, 31.634537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.111431, 15.835772, 31.572323>,  <10.317351, 15.718284, 31.534994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.111431, 15.835772, 31.572323>,  <9.768230, 16.031584, 31.634537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.111431, 15.835772, 31.572323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129099, -0.087559, 0.987759,
		-0.497157, -0.867578, -0.011928,
		0.858002, -0.489532, -0.155534,
		10.368832, 15.688912, 31.525663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.847861, 15.559554, 32.028927>,  <9.768230, 16.031584, 31.634537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.847861, 15.559554, 32.028927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.236919, 15.574446, 31.937208>,  <10.470354, 15.583381, 31.882177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.236919, 15.574446, 31.937208>,  <9.847861, 15.559554, 32.028927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.236919, 15.574446, 31.937208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231738, -0.086882, 0.968891,
		0.016151, -0.995522, -0.093133,
		0.972644, 0.037231, -0.229297,
		10.528712, 15.585614, 31.868420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.127020, 16.439753, 16.055597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.508117, 16.336777, 16.120100>,  <14.736775, 16.274990, 16.158802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.508117, 16.336777, 16.120100>,  <14.127020, 16.439753, 16.055597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.508117, 16.336777, 16.120100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185217, -0.071538, 0.980090,
		-0.240782, -0.963641, -0.115840,
		0.952743, -0.257444, 0.161258,
		14.793940, 16.259544, 16.168478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.296278, 15.691255, 16.344942>,  <14.127020, 16.439753, 16.055597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.296278, 15.691255, 16.344942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.589479, 15.935942, 16.463943>,  <14.765400, 16.082754, 16.535345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.589479, 15.935942, 16.463943>,  <14.296278, 15.691255, 16.344942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.589479, 15.935942, 16.463943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261744, -0.150039, 0.953403,
		0.627851, -0.776717, 0.050135,
		0.733003, 0.611718, 0.297503,
		14.809381, 16.119457, 16.553194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.591490, 15.349173, 16.993908>,  <14.296278, 15.691255, 16.344942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.591490, 15.349173, 16.993908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.666851, 15.741899, 17.003233>,  <14.712068, 15.977534, 17.008827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.666851, 15.741899, 17.003233>,  <14.591490, 15.349173, 16.993908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.666851, 15.741899, 17.003233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347722, 0.044490, 0.936541,
		0.918473, -0.184553, 0.349781,
		0.188403, 0.981815, 0.023311,
		14.723372, 16.036444, 17.010225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.968856, 15.374922, 17.558920>,  <14.591490, 15.349173, 16.993908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.968856, 15.374922, 17.558920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.862804, 15.757114, 17.507137>,  <14.799173, 15.986430, 17.476067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.862804, 15.757114, 17.507137>,  <14.968856, 15.374922, 17.558920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.862804, 15.757114, 17.507137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258601, 0.058881, 0.964188,
		0.928887, 0.289113, 0.231478,
		-0.265129, 0.955483, -0.129458,
		14.783265, 16.043758, 17.468300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.171904, 15.837726, 18.201555>,  <14.968856, 15.374922, 17.558920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.171904, 15.837726, 18.201555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.846958, 16.008167, 18.042305>,  <14.651991, 16.110432, 17.946754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.846958, 16.008167, 18.042305>,  <15.171904, 15.837726, 18.201555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.846958, 16.008167, 18.042305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368506, 0.154025, 0.916777,
		0.451963, 0.891467, 0.031898,
		-0.812363, 0.426103, -0.398124,
		14.603250, 16.135998, 17.922869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.199702, 16.392437, 18.543997>,  <15.171904, 15.837726, 18.201555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.199702, 16.392437, 18.543997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.827359, 16.388329, 18.397902>,  <14.603953, 16.385864, 18.310246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.827359, 16.388329, 18.397902>,  <15.199702, 16.392437, 18.543997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.827359, 16.388329, 18.397902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351116, 0.301724, 0.886386,
		0.101098, 0.953340, -0.284468,
		-0.930858, -0.010270, -0.365237,
		14.548101, 16.385248, 18.288330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.823895, 16.822243, 18.926567>,  <15.199702, 16.392437, 18.543997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.823895, 16.822243, 18.926567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.525979, 16.599901, 18.778883>,  <14.347230, 16.466497, 18.690271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.525979, 16.599901, 18.778883>,  <14.823895, 16.822243, 18.926567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.525979, 16.599901, 18.778883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558336, 0.216087, 0.800979,
		-0.365445, 0.802704, -0.471292,
		-0.744789, -0.555853, -0.369211,
		14.302543, 16.433146, 18.668119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.245298, 17.188110, 19.187246>,  <14.823895, 16.822243, 18.926567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.245298, 17.188110, 19.187246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.132583, 16.814041, 19.101416>,  <14.064953, 16.589600, 19.049917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.132583, 16.814041, 19.101416>,  <14.245298, 17.188110, 19.187246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.132583, 16.814041, 19.101416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618140, 0.005900, 0.786046,
		-0.733824, 0.354138, -0.579731,
		-0.281789, -0.935175, -0.214578,
		14.048046, 16.533489, 19.037043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.529149, 17.257694, 19.283092>,  <14.245298, 17.188110, 19.187246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.529149, 17.257694, 19.283092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.610929, 16.866352, 19.295851>,  <13.659996, 16.631546, 19.303507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.610929, 16.866352, 19.295851>,  <13.529149, 17.257694, 19.283092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.610929, 16.866352, 19.295851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647120, -0.110636, 0.754318,
		-0.734464, -0.174860, -0.655734,
		0.204448, -0.978358, 0.031898,
		13.672263, 16.572845, 19.305420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.809739, 16.892159, 19.291771>,  <13.529149, 17.257694, 19.283092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.809739, 16.892159, 19.291771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.084439, 16.638866, 19.434538>,  <13.249259, 16.486891, 19.520199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.084439, 16.638866, 19.434538>,  <12.809739, 16.892159, 19.291771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.084439, 16.638866, 19.434538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590869, -0.200315, 0.781503,
		-0.423376, -0.747590, -0.511724,
		0.686750, -0.633232, 0.356919,
		13.290464, 16.448896, 19.541615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.395960, 16.271713, 19.498381>,  <12.809739, 16.892159, 19.291771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.395960, 16.271713, 19.498381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.739276, 16.246212, 19.702057>,  <12.945266, 16.230911, 19.824263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.739276, 16.246212, 19.702057>,  <12.395960, 16.271713, 19.498381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.739276, 16.246212, 19.702057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510279, -0.211140, 0.833687,
		0.054358, -0.975374, -0.213753,
		0.858289, -0.063756, 0.509191,
		12.996762, 16.227085, 19.854815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.237906, 15.740471, 19.848637>,  <12.395960, 16.271713, 19.498381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.237906, 15.740471, 19.848637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.541370, 15.903401, 20.052015>,  <12.723449, 16.001160, 20.174042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.541370, 15.903401, 20.052015>,  <12.237906, 15.740471, 19.848637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.541370, 15.903401, 20.052015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511828, -0.110200, 0.851991,
		0.403070, -0.906609, 0.124877,
		0.758661, 0.407327, 0.508446,
		12.768969, 16.025600, 20.204550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.384771, 15.112013, 19.596382>,  <12.237906, 15.740471, 19.848637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.384771, 15.112013, 19.596382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.177522, 14.773958, 19.648983>,  <12.053172, 14.571125, 19.680544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.177522, 14.773958, 19.648983>,  <12.384771, 15.112013, 19.596382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.177522, 14.773958, 19.648983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303213, -0.325259, -0.895695,
		0.799756, -0.424207, 0.424780,
		-0.518123, -0.845136, 0.131503,
		12.022085, 14.520417, 19.688435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.821052, 14.612267, 19.478031>,  <12.384771, 15.112013, 19.596382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.821052, 14.612267, 19.478031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.450554, 14.474918, 19.415848>,  <12.228255, 14.392509, 19.378538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.450554, 14.474918, 19.415848>,  <12.821052, 14.612267, 19.478031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.450554, 14.474918, 19.415848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256574, -0.272234, -0.927393,
		0.276118, -0.898880, 0.340255,
		-0.926245, -0.343370, -0.155460,
		12.172681, 14.371907, 19.369209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.945872, 14.150825, 18.972012>,  <12.821052, 14.612267, 19.478031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.945872, 14.150825, 18.972012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.548411, 14.190826, 18.951405>,  <12.309935, 14.214828, 18.939041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.548411, 14.190826, 18.951405>,  <12.945872, 14.150825, 18.972012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.548411, 14.190826, 18.951405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024058, -0.258431, -0.965730,
		-0.109890, -0.960839, 0.254385,
		-0.993653, 0.100004, -0.051515,
		12.250316, 14.220828, 18.935949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.652433, 13.528498, 18.732365>,  <12.945872, 14.150825, 18.972012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.652433, 13.528498, 18.732365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.396522, 13.822578, 18.642780>,  <12.242974, 13.999027, 18.589029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.396522, 13.822578, 18.642780>,  <12.652433, 13.528498, 18.732365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.396522, 13.822578, 18.642780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006535, -0.296599, -0.954980,
		-0.768531, -0.609513, 0.194563,
		-0.639779, 0.735203, -0.223962,
		12.204588, 14.043139, 18.575592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.201223, 13.213328, 18.220345>,  <12.652433, 13.528498, 18.732365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.201223, 13.213328, 18.220345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.154150, 13.609113, 18.186602>,  <12.125906, 13.846583, 18.166355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.154150, 13.609113, 18.186602>,  <12.201223, 13.213328, 18.220345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.154150, 13.609113, 18.186602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196822, -0.106503, -0.974637,
		-0.973351, -0.098095, 0.207282,
		-0.117683, 0.989462, -0.084358,
		12.118845, 13.905951, 18.161295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.584809, 13.266466, 17.809481>,  <12.201223, 13.213328, 18.220345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.584809, 13.266466, 17.809481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.774041, 13.617058, 17.773746>,  <11.887581, 13.827413, 17.752306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.774041, 13.617058, 17.773746>,  <11.584809, 13.266466, 17.809481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.774041, 13.617058, 17.773746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271467, 0.048553, -0.961222,
		-0.838153, 0.478987, 0.260904,
		0.473081, 0.876478, -0.089335,
		11.915965, 13.880001, 17.746946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.221893, 13.646679, 17.403576>,  <11.584809, 13.266466, 17.809481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.221893, 13.646679, 17.403576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.561258, 13.857604, 17.385090>,  <11.764877, 13.984159, 17.373999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.561258, 13.857604, 17.385090>,  <11.221893, 13.646679, 17.403576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.561258, 13.857604, 17.385090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130419, 0.123622, -0.983722,
		-0.513017, 0.840630, 0.173655,
		0.848413, 0.527313, -0.046213,
		11.815783, 14.015798, 17.371225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.062807, 14.174133, 16.902624>,  <11.221893, 13.646679, 17.403576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.062807, 14.174133, 16.902624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.461829, 14.149937, 16.916622>,  <11.701242, 14.135419, 16.925022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.461829, 14.149937, 16.916622>,  <11.062807, 14.174133, 16.902624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.461829, 14.149937, 16.916622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052360, 0.315265, -0.947558,
		0.046287, 0.947074, 0.317662,
		0.997555, -0.060492, 0.034996,
		11.761096, 14.131789, 16.927120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.236982, 14.792285, 16.649616>,  <11.062807, 14.174133, 16.902624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.236982, 14.792285, 16.649616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.516071, 14.516187, 16.572941>,  <11.683525, 14.350528, 16.526936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.516071, 14.516187, 16.572941>,  <11.236982, 14.792285, 16.649616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.516071, 14.516187, 16.572941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152794, 0.404816, -0.901542,
		0.699884, 0.599737, 0.387915,
		0.697722, -0.690246, -0.191688,
		11.725388, 14.309113, 16.515434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.720700, 15.114481, 16.330048>,  <11.236982, 14.792285, 16.649616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.720700, 15.114481, 16.330048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.799330, 14.739023, 16.216694>,  <11.846508, 14.513749, 16.148682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.799330, 14.739023, 16.216694>,  <11.720700, 15.114481, 16.330048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.799330, 14.739023, 16.216694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021502, 0.293080, -0.955846,
		0.980253, 0.181802, 0.077795,
		0.196575, -0.938644, -0.283383,
		11.858302, 14.457430, 16.131680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.261074, 15.284243, 15.870131>,  <11.720700, 15.114481, 16.330048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.261074, 15.284243, 15.870131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.117435, 14.915126, 15.814267>,  <12.031252, 14.693656, 15.780748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.117435, 14.915126, 15.814267>,  <12.261074, 15.284243, 15.870131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.117435, 14.915126, 15.814267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093043, 0.113499, -0.989172,
		0.928651, -0.368203, 0.045102,
		-0.359097, -0.922792, -0.139660,
		12.009706, 14.638288, 15.772369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.618632, 14.904795, 15.303131>,  <12.261074, 15.284243, 15.870131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.618632, 14.904795, 15.303131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.270473, 14.707883, 15.299885>,  <12.061577, 14.589736, 15.297936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.270473, 14.707883, 15.299885>,  <12.618632, 14.904795, 15.303131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.270473, 14.707883, 15.299885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111044, 0.212344, -0.970865,
		0.479661, -0.844139, -0.239489,
		-0.870399, -0.492279, -0.008117,
		12.009353, 14.560200, 15.297450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.681270, 14.554382, 14.706202>,  <12.618632, 14.904795, 15.303131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.681270, 14.554382, 14.706202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.296516, 14.602619, 14.804377>,  <12.065664, 14.631561, 14.863281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.296516, 14.602619, 14.804377>,  <12.681270, 14.554382, 14.706202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.296516, 14.602619, 14.804377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178846, 0.401546, -0.898207,
		-0.206871, -0.907865, -0.364672,
		-0.961883, 0.120593, 0.245436,
		12.007952, 14.638797, 14.878008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.455262, 14.194852, 14.721703>,  <12.681270, 14.554382, 14.706202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.455262, 14.194852, 14.721703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.410424, 13.924000, 15.012613>,  <13.383522, 13.761489, 15.187160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.410424, 13.924000, 15.012613>,  <13.455262, 14.194852, 14.721703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.410424, 13.924000, 15.012613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253646, -0.727142, -0.637910,
		0.960780, 0.112965, 0.253259,
		-0.112094, -0.677129, 0.727277,
		13.376796, 13.720861, 15.230796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.035656, 13.705241, 14.857434>,  <13.455262, 14.194852, 14.721703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.035656, 13.705241, 14.857434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.685723, 13.531178, 14.942575>,  <13.475763, 13.426740, 14.993660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.685723, 13.531178, 14.942575>,  <14.035656, 13.705241, 14.857434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.685723, 13.531178, 14.942575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234640, -0.765051, -0.599701,
		0.423807, -0.474694, 0.771397,
		-0.874832, -0.435158, 0.212852,
		13.423274, 13.400630, 15.006431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.874618, 13.021725, 14.685624>,  <14.035656, 13.705241, 14.857434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.874618, 13.021725, 14.685624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.050182, 12.666120, 14.737796>,  <14.155521, 12.452756, 14.769099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.050182, 12.666120, 14.737796>,  <13.874618, 13.021725, 14.685624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.050182, 12.666120, 14.737796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488782, -0.114426, 0.864869,
		-0.753956, -0.443352, -0.484757,
		0.438911, -0.889014, 0.130430,
		14.181855, 12.399416, 14.776925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.447676, 12.434022, 14.873806>,  <13.874618, 13.021725, 14.685624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.447676, 12.434022, 14.873806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.803311, 12.316524, 15.014224>,  <14.016693, 12.246024, 15.098475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.803311, 12.316524, 15.014224>,  <13.447676, 12.434022, 14.873806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.803311, 12.316524, 15.014224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446124, -0.384475, 0.808179,
		-0.102431, -0.875153, -0.472879,
		0.889090, -0.293745, 0.351045,
		14.070039, 12.228400, 15.119537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.281969, 11.790524, 15.146261>,  <13.447676, 12.434022, 14.873806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.281969, 11.790524, 15.146261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.628124, 11.881126, 15.325056>,  <13.835817, 11.935488, 15.432333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.628124, 11.881126, 15.325056>,  <13.281969, 11.790524, 15.146261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.628124, 11.881126, 15.325056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276613, -0.527864, 0.803022,
		0.417836, -0.818569, -0.394154,
		0.865389, 0.226504, 0.446988,
		13.887741, 11.949078, 15.459152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.673176, 11.174112, 15.289849>,  <13.281969, 11.790524, 15.146261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.673176, 11.174112, 15.289849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.791300, 11.455624, 15.548303>,  <13.862174, 11.624531, 15.703375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.791300, 11.455624, 15.548303>,  <13.673176, 11.174112, 15.289849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.791300, 11.455624, 15.548303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228258, -0.604739, 0.763013,
		0.927734, -0.372810, -0.017942,
		0.295310, 0.703778, 0.646134,
		13.879892, 11.666757, 15.742143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.692699, 10.822520, 15.910724>,  <13.673176, 11.174112, 15.289849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.692699, 10.822520, 15.910724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.778025, 11.191908, 16.038286>,  <13.829220, 11.413541, 16.114824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.778025, 11.191908, 16.038286>,  <13.692699, 10.822520, 15.910724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.778025, 11.191908, 16.038286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162674, -0.288290, 0.943624,
		0.963346, -0.253166, 0.088728,
		0.213314, 0.923469, 0.318906,
		13.842019, 11.468948, 16.133959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.063188, 10.781077, 16.638338>,  <13.692699, 10.822520, 15.910724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.063188, 10.781077, 16.638338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.927117, 11.156763, 16.619759>,  <13.845475, 11.382174, 16.608612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.927117, 11.156763, 16.619759>,  <14.063188, 10.781077, 16.638338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.927117, 11.156763, 16.619759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097227, 0.084257, 0.991689,
		0.935322, 0.332833, -0.119979,
		-0.340176, 0.939214, -0.046447,
		13.825065, 11.438527, 16.605825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.508415, 11.260307, 17.076300>,  <14.063188, 10.781077, 16.638338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.508415, 11.260307, 17.076300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.143536, 11.417744, 17.030727>,  <13.924608, 11.512205, 17.003384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.143536, 11.417744, 17.030727>,  <14.508415, 11.260307, 17.076300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.143536, 11.417744, 17.030727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111762, 0.028512, 0.993326,
		0.394212, 0.918844, 0.017980,
		-0.912199, 0.393590, -0.113932,
		13.869876, 11.535821, 16.996548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.511506, 11.808185, 17.422506>,  <14.508415, 11.260307, 17.076300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.511506, 11.808185, 17.422506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.132439, 11.686112, 17.385002>,  <13.904999, 11.612869, 17.362499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.132439, 11.686112, 17.385002>,  <14.511506, 11.808185, 17.422506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.132439, 11.686112, 17.385002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114454, 0.050591, 0.992140,
		-0.298037, 0.950950, -0.082872,
		-0.947668, -0.305180, -0.093762,
		13.848139, 11.594559, 17.356873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.188044, 12.308298, 17.848667>,  <14.511506, 11.808185, 17.422506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.188044, 12.308298, 17.848667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.948915, 11.997600, 17.769394>,  <13.805439, 11.811181, 17.721830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.948915, 11.997600, 17.769394>,  <14.188044, 12.308298, 17.848667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.948915, 11.997600, 17.769394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260819, -0.045307, 0.964324,
		-0.758014, 0.628183, -0.175504,
		-0.597820, -0.776746, -0.198185,
		13.769569, 11.764576, 17.709938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.560765, 12.467879, 18.255409>,  <14.188044, 12.308298, 17.848667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.560765, 12.467879, 18.255409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.544729, 12.072092, 18.199774>,  <13.535108, 11.834620, 18.166393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.544729, 12.072092, 18.199774>,  <13.560765, 12.467879, 18.255409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.544729, 12.072092, 18.199774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080299, -0.135559, 0.987510,
		-0.995964, 0.050759, -0.074018,
		-0.040091, -0.989468, -0.139087,
		13.532702, 11.775251, 18.158047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.014405, 12.330107, 18.666929>,  <13.560765, 12.467879, 18.255409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.014405, 12.330107, 18.666929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.192066, 11.974627, 18.621416>,  <13.298663, 11.761340, 18.594109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.192066, 11.974627, 18.621416>,  <13.014405, 12.330107, 18.666929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.192066, 11.974627, 18.621416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268451, -0.253163, 0.929431,
		-0.854788, -0.382264, -0.351015,
		0.444152, -0.888697, -0.113781,
		13.325312, 11.708018, 18.587282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.578929, 11.841563, 18.937849>,  <13.014405, 12.330107, 18.666929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.578929, 11.841563, 18.937849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.927032, 11.644823, 18.948715>,  <13.135893, 11.526779, 18.955235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.927032, 11.644823, 18.948715>,  <12.578929, 11.841563, 18.937849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.927032, 11.644823, 18.948715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200709, -0.303681, 0.931393,
		-0.449855, -0.816003, -0.362999,
		0.870257, -0.491850, 0.027166,
		13.188108, 11.497269, 18.956865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.468820, 11.312310, 19.289255>,  <12.578929, 11.841563, 18.937849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.468820, 11.312310, 19.289255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.865211, 11.331606, 19.339268>,  <13.103046, 11.343184, 19.369276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.865211, 11.331606, 19.339268>,  <12.468820, 11.312310, 19.289255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.865211, 11.331606, 19.339268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094176, -0.413117, 0.905795,
		0.095349, -0.909399, -0.404847,
		0.990979, 0.048240, 0.125034,
		13.162505, 11.346078, 19.376778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.624064, 10.668270, 19.500965>,  <12.468820, 11.312310, 19.289255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.624064, 10.668270, 19.500965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.953811, 10.867302, 19.608917>,  <13.151659, 10.986721, 19.673689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.953811, 10.867302, 19.608917>,  <12.624064, 10.668270, 19.500965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.953811, 10.867302, 19.608917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073589, -0.378517, 0.922664,
		0.561253, -0.780473, -0.275420,
		0.824366, 0.497580, 0.269878,
		13.201120, 11.016576, 19.689880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.037771, 10.186134, 19.900009>,  <12.624064, 10.668270, 19.500965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.037771, 10.186134, 19.900009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.149002, 10.558007, 19.996645>,  <13.215741, 10.781131, 20.054626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.149002, 10.558007, 19.996645>,  <13.037771, 10.186134, 19.900009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.149002, 10.558007, 19.996645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061341, -0.233808, 0.970346,
		0.958598, -0.284651, -0.007989,
		0.278078, 0.929682, 0.241589,
		13.232426, 10.836911, 20.069122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.620295, 10.096676, 20.498026>,  <13.037771, 10.186134, 19.900009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.620295, 10.096676, 20.498026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.475100, 10.469347, 20.503916>,  <13.387982, 10.692949, 20.507450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.475100, 10.469347, 20.503916>,  <13.620295, 10.096676, 20.498026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.475100, 10.469347, 20.503916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001994, -0.016580, 0.999861,
		0.931792, 0.362907, 0.007876,
		-0.362987, 0.931678, 0.014726,
		13.366203, 10.748851, 20.508333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.162529, 10.574841, 20.821434>,  <13.620295, 10.096676, 20.498026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.162529, 10.574841, 20.821434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.807714, 10.757883, 20.845966>,  <13.594826, 10.867708, 20.860685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.807714, 10.757883, 20.845966>,  <14.162529, 10.574841, 20.821434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.807714, 10.757883, 20.845966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098154, 0.057108, 0.993531,
		0.451144, 0.887319, -0.095573,
		-0.887037, 0.457607, 0.061329,
		13.541603, 10.895165, 20.864365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.238942, 11.066490, 21.344128>,  <14.162529, 10.574841, 20.821434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.238942, 11.066490, 21.344128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.841757, 11.027167, 21.317722>,  <13.603445, 11.003573, 21.301878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.841757, 11.027167, 21.317722>,  <14.238942, 11.066490, 21.344128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.841757, 11.027167, 21.317722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075765, 0.098984, 0.992201,
		-0.091006, 0.990221, -0.105736,
		-0.992964, -0.098308, -0.066016,
		13.543867, 10.997675, 21.297918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.983742, 11.458011, 21.903433>,  <14.238942, 11.066490, 21.344128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.983742, 11.458011, 21.903433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.662801, 11.252160, 21.782509>,  <13.470237, 11.128650, 21.709953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.662801, 11.252160, 21.782509>,  <13.983742, 11.458011, 21.903433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.662801, 11.252160, 21.782509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363038, 0.018763, 0.931585,
		-0.473746, 0.857210, -0.201884,
		-0.802352, -0.514626, -0.302311,
		13.422095, 11.097773, 21.691816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.510119, 11.646381, 22.451885>,  <13.983742, 11.458011, 21.903433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.510119, 11.646381, 22.451885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.330344, 11.337388, 22.272430>,  <13.222479, 11.151992, 22.164759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.330344, 11.337388, 22.272430>,  <13.510119, 11.646381, 22.451885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.330344, 11.337388, 22.272430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452738, -0.235969, 0.859853,
		-0.770086, 0.589565, -0.243679,
		-0.449439, -0.772484, -0.448635,
		13.195513, 11.105643, 22.137840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.811680, 11.749820, 22.581377>,  <13.510119, 11.646381, 22.451885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.811680, 11.749820, 22.581377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.890374, 11.360350, 22.535330>,  <12.937591, 11.126668, 22.507702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.890374, 11.360350, 22.535330>,  <12.811680, 11.749820, 22.581377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.890374, 11.360350, 22.535330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428810, -0.191036, 0.882965,
		-0.881713, -0.124347, -0.455105,
		0.196736, -0.973675, -0.115118,
		12.949395, 11.068247, 22.500795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.148412, 11.299731, 22.628448>,  <12.811680, 11.749820, 22.581377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.148412, 11.299731, 22.628448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.446487, 11.052463, 22.728495>,  <12.625333, 10.904101, 22.788523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.446487, 11.052463, 22.728495>,  <12.148412, 11.299731, 22.628448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.446487, 11.052463, 22.728495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409425, -0.128065, 0.903311,
		-0.526370, -0.775541, -0.348527,
		0.745189, -0.618171, 0.250116,
		12.670044, 10.867011, 22.803530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.860347, 10.711651, 22.898899>,  <12.148412, 11.299731, 22.628448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.860347, 10.711651, 22.898899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.228876, 10.689061, 23.052769>,  <12.449994, 10.675508, 23.145090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.228876, 10.689061, 23.052769>,  <11.860347, 10.711651, 22.898899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.228876, 10.689061, 23.052769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388429, -0.176748, 0.904369,
		0.016917, -0.982635, -0.184778,
		0.921323, -0.056474, 0.384674,
		12.505273, 10.672119, 23.168171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.847121, 10.178514, 23.285038>,  <11.860347, 10.711651, 22.898899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.847121, 10.178514, 23.285038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.152643, 10.390254, 23.432764>,  <12.335957, 10.517298, 23.521399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.152643, 10.390254, 23.432764>,  <11.847121, 10.178514, 23.285038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.152643, 10.390254, 23.432764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229087, -0.312598, 0.921847,
		0.603426, -0.788715, -0.117497,
		0.763804, 0.529349, 0.369314,
		12.381784, 10.549059, 23.543558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.136889, 9.809006, 23.805792>,  <11.847121, 10.178514, 23.285038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.136889, 9.809006, 23.805792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.308782, 10.162258, 23.881062>,  <12.411917, 10.374209, 23.926224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.308782, 10.162258, 23.881062>,  <12.136889, 9.809006, 23.805792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.308782, 10.162258, 23.881062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034544, -0.192169, 0.980754,
		0.902296, -0.427960, -0.052074,
		0.429731, 0.883131, 0.188177,
		12.437701, 10.427197, 23.937515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.694989, 9.661628, 24.357056>,  <12.136889, 9.809006, 23.805792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.694989, 9.661628, 24.357056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.653652, 10.058754, 24.381176>,  <12.628850, 10.297029, 24.395649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.653652, 10.058754, 24.381176>,  <12.694989, 9.661628, 24.357056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.653652, 10.058754, 24.381176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033306, -0.057137, 0.997811,
		0.994088, 0.105123, -0.027162,
		-0.103341, 0.992817, 0.060300,
		12.622650, 10.356599, 24.399265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.288397, 9.936573, 24.769188>,  <12.694989, 9.661628, 24.357056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.288397, 9.936573, 24.769188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.963077, 10.167261, 24.800005>,  <12.767884, 10.305674, 24.818495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.963077, 10.167261, 24.800005>,  <13.288397, 9.936573, 24.769188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.963077, 10.167261, 24.800005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044033, -0.193037, 0.980203,
		0.580174, 0.793808, 0.182392,
		-0.813301, 0.576720, 0.077041,
		12.719087, 10.340277, 24.823118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
