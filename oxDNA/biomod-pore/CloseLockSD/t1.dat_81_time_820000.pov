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
	<3.766925, 15.361005, 15.106979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.909456, 14.987528, 15.092836>,  <3.994974, 14.763442, 15.084351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.909456, 14.987528, 15.092836>,  <3.766925, 15.361005, 15.106979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.909456, 14.987528, 15.092836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267435, 0.138173, -0.953618,
		0.895271, 0.330342, 0.298936,
		0.356325, -0.933693, -0.035358,
		4.016353, 14.707420, 15.082229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.285362, 15.318009, 14.667531>,  <3.766925, 15.361005, 15.106979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.285362, 15.318009, 14.667531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.211292, 14.927496, 14.712399>,  <4.166850, 14.693188, 14.739319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.211292, 14.927496, 14.712399>,  <4.285362, 15.318009, 14.667531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.211292, 14.927496, 14.712399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373850, -0.175546, -0.910725,
		0.908816, -0.126709, 0.397490,
		-0.185174, -0.976283, 0.112169,
		4.155739, 14.634611, 14.746049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.939632, 15.028599, 14.453830>,  <4.285362, 15.318009, 14.667531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.939632, 15.028599, 14.453830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.609408, 14.805394, 14.420190>,  <4.411274, 14.671472, 14.400006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.609408, 14.805394, 14.420190>,  <4.939632, 15.028599, 14.453830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.609408, 14.805394, 14.420190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297183, -0.303219, -0.905395,
		0.479722, -0.772451, 0.416157,
		-0.825560, -0.558013, -0.084099,
		4.361740, 14.637991, 14.394960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.920567, 15.457333, 15.048587>,  <4.939632, 15.028599, 14.453830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.920567, 15.457333, 15.048587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.234680, 15.422836, 14.803347>,  <5.423148, 15.402139, 14.656202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.234680, 15.422836, 14.803347>,  <4.920567, 15.457333, 15.048587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.234680, 15.422836, 14.803347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030149, 0.994403, -0.101260,
		0.618401, 0.061033, 0.783489,
		0.785284, -0.086240, -0.613100,
		5.470265, 15.396964, 14.619416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.309232, 16.091326, 15.237320>,  <4.920567, 15.457333, 15.048587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.309232, 16.091326, 15.237320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.430962, 15.981277, 14.872531>,  <5.504000, 15.915249, 14.653657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.430962, 15.981277, 14.872531>,  <5.309232, 16.091326, 15.237320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.430962, 15.981277, 14.872531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232827, 0.949829, -0.208847,
		0.923676, -0.148775, 0.353112,
		0.304325, -0.275121, -0.911973,
		5.522259, 15.898742, 14.598939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.890486, 16.421539, 15.108330>,  <5.309232, 16.091326, 15.237320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.890486, 16.421539, 15.108330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.766057, 16.359745, 14.733232>,  <5.691400, 16.322668, 14.508172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.766057, 16.359745, 14.733232>,  <5.890486, 16.421539, 15.108330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.766057, 16.359745, 14.733232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070622, 0.980215, -0.184909,
		0.947759, -0.123745, -0.294007,
		-0.311072, -0.154486, -0.937746,
		5.672736, 16.313398, 14.451907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.406036, 16.819578, 14.630670>,  <5.890486, 16.421539, 15.108330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.406036, 16.819578, 14.630670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.060385, 16.777988, 14.433704>,  <5.852994, 16.753035, 14.315525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.060385, 16.777988, 14.433704>,  <6.406036, 16.819578, 14.630670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.060385, 16.777988, 14.433704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104144, 0.920305, -0.377086,
		0.492379, -0.377132, -0.784433,
		-0.864128, -0.103975, -0.492414,
		5.801147, 16.746796, 14.285980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.588290, 17.029585, 14.034120>,  <6.406036, 16.819578, 14.630670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.588290, 17.029585, 14.034120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.190433, 16.996126, 14.009815>,  <5.951719, 16.976051, 13.995233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.190433, 16.996126, 14.009815>,  <6.588290, 17.029585, 14.034120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.190433, 16.996126, 14.009815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028427, 0.786340, -0.617139,
		0.099400, -0.612105, -0.784504,
		-0.994642, -0.083645, -0.060761,
		5.892041, 16.971033, 13.991587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.384665, 16.845423, 13.387868>,  <6.588290, 17.029585, 14.034120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.384665, 16.845423, 13.387868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.084677, 17.061476, 13.540605>,  <5.904685, 17.191107, 13.632247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.084677, 17.061476, 13.540605>,  <6.384665, 16.845423, 13.387868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.084677, 17.061476, 13.540605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153884, 0.703888, -0.693441,
		-0.643325, -0.461300, -0.611012,
		-0.749969, 0.540133, 0.381842,
		5.859686, 17.223516, 13.655157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.841392, 17.086880, 12.837620>,  <6.384665, 16.845423, 13.387868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.841392, 17.086880, 12.837620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.803477, 17.329071, 13.153699>,  <5.780729, 17.474386, 13.343347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.803477, 17.329071, 13.153699>,  <5.841392, 17.086880, 12.837620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.803477, 17.329071, 13.153699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406575, 0.748098, -0.524449,
		-0.908687, 0.271564, -0.317081,
		-0.094786, 0.605477, 0.790198,
		5.775042, 17.510714, 13.390759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.657394, 17.688009, 12.583990>,  <5.841392, 17.086880, 12.837620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.657394, 17.688009, 12.583990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.761051, 17.831669, 12.942622>,  <5.823245, 17.917866, 13.157802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.761051, 17.831669, 12.942622>,  <5.657394, 17.688009, 12.583990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.761051, 17.831669, 12.942622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271031, 0.863952, -0.424417,
		-0.927032, 0.352985, 0.126546,
		0.259142, 0.359150, 0.896581,
		5.838793, 17.939413, 13.211596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.405228, 18.322306, 12.535879>,  <5.657394, 17.688009, 12.583990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.405228, 18.322306, 12.535879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.680541, 18.327812, 12.826004>,  <5.845728, 18.331116, 13.000079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.680541, 18.327812, 12.826004>,  <5.405228, 18.322306, 12.535879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.680541, 18.327812, 12.826004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371175, 0.852355, -0.368403,
		-0.623295, 0.522783, 0.581550,
		0.688282, 0.013767, 0.725313,
		5.887025, 18.331942, 13.043598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.594836, 19.048468, 12.632173>,  <5.405228, 18.322306, 12.535879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.594836, 19.048468, 12.632173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.906101, 18.857079, 12.794914>,  <6.092859, 18.742245, 12.892559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.906101, 18.857079, 12.794914>,  <5.594836, 19.048468, 12.632173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.906101, 18.857079, 12.794914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607471, 0.737903, -0.294071,
		-0.159514, 0.475987, 0.864865,
		0.778161, -0.478472, 0.406854,
		6.139549, 18.713537, 12.916970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.096562, 19.598682, 12.942085>,  <5.594836, 19.048468, 12.632173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.096562, 19.598682, 12.942085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.328006, 19.272963, 12.923620>,  <6.466873, 19.077532, 12.912541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.328006, 19.272963, 12.923620>,  <6.096562, 19.598682, 12.942085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.328006, 19.272963, 12.923620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785343, 0.571522, -0.237907,
		0.220109, 0.101402, 0.970190,
		0.578609, -0.814297, -0.046162,
		6.501589, 19.028673, 12.909772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.784286, 19.721455, 13.410643>,  <6.096562, 19.598682, 12.942085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.784286, 19.721455, 13.410643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.887872, 19.429350, 13.157769>,  <6.950024, 19.254087, 13.006044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.887872, 19.429350, 13.157769>,  <6.784286, 19.721455, 13.410643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.887872, 19.429350, 13.157769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826819, 0.505945, -0.245744,
		0.499307, -0.459064, 0.734815,
		0.258964, -0.730260, -0.632185,
		6.965561, 19.210272, 12.968114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.497947, 19.570717, 13.525069>,  <6.784286, 19.721455, 13.410643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.497947, 19.570717, 13.525069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.391999, 19.461933, 13.155014>,  <7.328431, 19.396662, 12.932981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.391999, 19.461933, 13.155014>,  <7.497947, 19.570717, 13.525069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.391999, 19.461933, 13.155014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783956, 0.497904, -0.370816,
		0.561478, -0.823486, 0.081327,
		-0.264869, -0.271962, -0.925138,
		7.312539, 19.380344, 12.877473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.211663, 19.465303, 13.141178>,  <7.497947, 19.570717, 13.525069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.211663, 19.465303, 13.141178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.928753, 19.457058, 12.858523>,  <7.759007, 19.452110, 12.688931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.928753, 19.457058, 12.858523>,  <8.211663, 19.465303, 13.141178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.928753, 19.457058, 12.858523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612459, 0.481347, -0.627056,
		0.353064, -0.876288, -0.327820,
		-0.707276, -0.020615, -0.706637,
		7.716570, 19.450874, 12.646532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.556044, 19.244228, 12.498946>,  <8.211663, 19.465303, 13.141178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.556044, 19.244228, 12.498946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.226116, 19.456749, 12.421600>,  <8.028159, 19.584261, 12.375193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.226116, 19.456749, 12.421600>,  <8.556044, 19.244228, 12.498946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.226116, 19.456749, 12.421600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510726, 0.553421, -0.657939,
		-0.242553, -0.641438, -0.727823,
		-0.824819, 0.531303, -0.193365,
		7.978670, 19.616140, 12.363591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.604070, 19.365498, 11.894542>,  <8.556044, 19.244228, 12.498946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.604070, 19.365498, 11.894542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.352079, 19.652580, 12.013221>,  <8.200885, 19.824829, 12.084428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.352079, 19.652580, 12.013221>,  <8.604070, 19.365498, 11.894542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.352079, 19.652580, 12.013221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454506, 0.650501, -0.608500,
		-0.629727, -0.248490, -0.736001,
		-0.629976, 0.717706, 0.296698,
		8.163087, 19.867891, 12.102230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.251726, 19.498003, 11.305188>,  <8.604070, 19.365498, 11.894542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.251726, 19.498003, 11.305188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.259102, 19.809010, 11.556625>,  <8.263528, 19.995613, 11.707488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.259102, 19.809010, 11.556625>,  <8.251726, 19.498003, 11.305188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.259102, 19.809010, 11.556625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578630, 0.504419, -0.640898,
		-0.815382, 0.375541, -0.440593,
		0.018440, 0.777516, 0.628593,
		8.264634, 20.042265, 11.745203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.405561, 20.135351, 10.809596>,  <8.251726, 19.498003, 11.305188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.405561, 20.135351, 10.809596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.447878, 20.298546, 11.172331>,  <8.473268, 20.396463, 11.389972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.447878, 20.298546, 11.172331>,  <8.405561, 20.135351, 10.809596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.447878, 20.298546, 11.172331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634101, 0.674802, -0.377568,
		-0.765979, 0.614971, -0.187316,
		0.105792, 0.407986, 0.906838,
		8.479615, 20.420942, 11.444383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.100974, 20.925127, 10.883787>,  <8.405561, 20.135351, 10.809596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.100974, 20.925127, 10.883787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.393003, 20.885530, 11.154253>,  <8.568219, 20.861773, 11.316532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.393003, 20.885530, 11.154253>,  <8.100974, 20.925127, 10.883787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.393003, 20.885530, 11.154253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403621, 0.860892, -0.309766,
		-0.551440, 0.499065, 0.668467,
		0.730071, -0.098990, 0.676164,
		8.612024, 20.855833, 11.357102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.283639, 21.632853, 11.076079>,  <8.100974, 20.925127, 10.883787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.283639, 21.632853, 11.076079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.594420, 21.444466, 11.243188>,  <8.780890, 21.331434, 11.343453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.594420, 21.444466, 11.243188>,  <8.283639, 21.632853, 11.076079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.594420, 21.444466, 11.243188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578372, 0.796073, -0.178196,
		-0.248652, 0.380077, 0.890906,
		0.776954, -0.470967, 0.417772,
		8.827507, 21.303175, 11.368519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.590728, 22.053030, 11.676014>,  <8.283639, 21.632853, 11.076079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.590728, 22.053030, 11.676014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.862481, 21.801216, 11.525216>,  <9.025533, 21.650127, 11.434737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.862481, 21.801216, 11.525216>,  <8.590728, 22.053030, 11.676014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.862481, 21.801216, 11.525216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539072, 0.776764, -0.325636,
		0.497835, 0.018004, 0.867085,
		0.679383, -0.629534, -0.376995,
		9.066297, 21.612356, 11.412117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.182854, 22.348850, 11.857963>,  <8.590728, 22.053030, 11.676014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.182854, 22.348850, 11.857963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.332170, 22.071108, 11.611865>,  <9.421760, 21.904463, 11.464207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.332170, 22.071108, 11.611865>,  <9.182854, 22.348850, 11.857963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.332170, 22.071108, 11.611865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724626, 0.632335, -0.273989,
		0.579285, -0.343543, 0.739193,
		0.373291, -0.694356, -0.615243,
		9.444157, 21.862801, 11.427292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.856475, 22.213207, 12.092893>,  <9.182854, 22.348850, 11.857963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.856475, 22.213207, 12.092893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.771545, 22.175280, 11.703857>,  <9.720588, 22.152523, 11.470436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.771545, 22.175280, 11.703857>,  <9.856475, 22.213207, 12.092893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.771545, 22.175280, 11.703857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674538, 0.705910, -0.216078,
		0.707052, -0.701924, -0.085908,
		-0.212313, -0.094830, -0.972589,
		9.707849, 22.146833, 11.412081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.483768, 22.187153, 11.673960>,  <9.856475, 22.213207, 12.092893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.483768, 22.187153, 11.673960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.175676, 22.374567, 11.500884>,  <9.990821, 22.487015, 11.397038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.175676, 22.374567, 11.500884>,  <10.483768, 22.187153, 11.673960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.175676, 22.374567, 11.500884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562418, 0.818897, -0.114426,
		0.300716, -0.331488, -0.894251,
		-0.770231, 0.468534, -0.432690,
		9.944607, 22.515127, 11.371077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.875648, 22.622978, 12.233874>,  <10.483768, 22.187153, 11.673960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.875648, 22.622978, 12.233874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.014304, 22.633398, 12.608930>,  <11.097497, 22.639650, 12.833962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.014304, 22.633398, 12.608930>,  <10.875648, 22.622978, 12.233874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.014304, 22.633398, 12.608930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846648, -0.438980, -0.300805,
		0.403768, 0.898119, -0.174221,
		0.346638, 0.026048, 0.937637,
		11.118296, 22.641212, 12.890221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.647943, 22.760134, 12.157801>,  <10.875648, 22.622978, 12.233874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.647943, 22.760134, 12.157801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.545423, 22.563131, 12.490485>,  <11.483910, 22.444929, 12.690096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.545423, 22.563131, 12.490485>,  <11.647943, 22.760134, 12.157801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.545423, 22.563131, 12.490485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847913, -0.527661, -0.051166,
		0.464062, 0.692105, 0.552845,
		-0.256302, -0.492508, 0.831712,
		11.468532, 22.415379, 12.739999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.239770, 22.767620, 12.572486>,  <11.647943, 22.760134, 12.157801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.239770, 22.767620, 12.572486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.055136, 22.434917, 12.695853>,  <11.944355, 22.235296, 12.769874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.055136, 22.434917, 12.695853>,  <12.239770, 22.767620, 12.572486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.055136, 22.434917, 12.695853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856892, -0.508005, -0.087562,
		0.229508, 0.223863, 0.947213,
		-0.461586, -0.831755, 0.308417,
		11.916659, 22.185390, 12.788379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.703382, 22.444668, 13.175903>,  <12.239770, 22.767620, 12.572486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.703382, 22.444668, 13.175903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.484054, 22.169727, 12.985369>,  <12.352457, 22.004763, 12.871048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.484054, 22.169727, 12.985369>,  <12.703382, 22.444668, 13.175903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.484054, 22.169727, 12.985369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833526, -0.495292, -0.244787,
		-0.067671, -0.531259, 0.844503,
		-0.548321, -0.687350, -0.476335,
		12.319557, 21.963522, 12.842468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.991797, 21.803400, 13.136325>,  <12.703382, 22.444668, 13.175903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.991797, 21.803400, 13.136325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.747586, 21.691223, 12.840053>,  <12.601060, 21.623917, 12.662290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.747586, 21.691223, 12.840053>,  <12.991797, 21.803400, 13.136325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.747586, 21.691223, 12.840053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651444, -0.709687, -0.268263,
		-0.450418, -0.646294, 0.615977,
		-0.610527, -0.280444, -0.740680,
		12.564428, 21.607090, 12.617848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.601578, 22.020634, 13.769434>,  <12.991797, 21.803400, 13.136325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.601578, 22.020634, 13.769434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.404925, 21.867687, 14.082380>,  <12.286934, 21.775919, 14.270148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.404925, 21.867687, 14.082380>,  <12.601578, 22.020634, 13.769434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.404925, 21.867687, 14.082380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374448, -0.718312, -0.586359,
		0.786185, -0.581228, 0.209970,
		-0.491632, -0.382364, 0.782365,
		12.257436, 21.752977, 14.317090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.691300, 21.272070, 13.709046>,  <12.601578, 22.020634, 13.769434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.691300, 21.272070, 13.709046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.359930, 21.399759, 13.893137>,  <12.161108, 21.476374, 14.003592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.359930, 21.399759, 13.893137>,  <12.691300, 21.272070, 13.709046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.359930, 21.399759, 13.893137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536948, -0.686437, -0.490398,
		0.159370, -0.653376, 0.740068,
		-0.828425, 0.319223, 0.460227,
		12.111403, 21.495527, 14.031205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.411491, 20.612793, 13.932099>,  <12.691300, 21.272070, 13.709046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.411491, 20.612793, 13.932099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.110654, 20.875629, 13.952447>,  <11.930151, 21.033331, 13.964655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.110654, 20.875629, 13.952447>,  <12.411491, 20.612793, 13.932099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.110654, 20.875629, 13.952447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592674, -0.640565, -0.488275,
		-0.288256, -0.397377, 0.871206,
		-0.752094, 0.657090, 0.050868,
		11.885026, 21.072756, 13.967708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.902496, 20.367958, 14.354696>,  <12.411491, 20.612793, 13.932099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.902496, 20.367958, 14.354696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.719096, 20.621643, 14.105681>,  <11.609056, 20.773853, 13.956273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.719096, 20.621643, 14.105681>,  <11.902496, 20.367958, 14.354696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.719096, 20.621643, 14.105681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571693, -0.746811, -0.339765,
		-0.680399, 0.200117, 0.704989,
		-0.458501, 0.634213, -0.622535,
		11.581546, 20.811907, 13.918921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.173184, 20.294024, 14.465849>,  <11.902496, 20.367958, 14.354696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.173184, 20.294024, 14.465849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.205562, 20.468807, 14.107516>,  <11.224988, 20.573677, 13.892516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.205562, 20.468807, 14.107516>,  <11.173184, 20.294024, 14.465849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.205562, 20.468807, 14.107516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738833, -0.576968, -0.348185,
		-0.669009, 0.690054, 0.276138,
		0.080944, 0.436959, -0.895832,
		11.229845, 20.599895, 13.838767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.561991, 20.659937, 14.338775>,  <11.173184, 20.294024, 14.465849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.561991, 20.659937, 14.338775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.731870, 20.552206, 13.993036>,  <10.833797, 20.487568, 13.785593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.731870, 20.552206, 13.993036>,  <10.561991, 20.659937, 14.338775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.731870, 20.552206, 13.993036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765606, -0.616401, -0.184114,
		-0.483197, 0.739942, -0.467982,
		0.424698, -0.269326, -0.864347,
		10.859279, 20.471409, 13.733732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.964288, 20.491402, 13.940145>,  <10.561991, 20.659937, 14.338775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.964288, 20.491402, 13.940145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.280711, 20.303844, 13.782987>,  <10.470565, 20.191311, 13.688692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.280711, 20.303844, 13.782987>,  <9.964288, 20.491402, 13.940145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.280711, 20.303844, 13.782987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597333, -0.730626, -0.330725,
		-0.131985, 0.496312, -0.858052,
		0.791058, -0.468893, -0.392896,
		10.518028, 20.163177, 13.665118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.731250, 20.234896, 13.393135>,  <9.964288, 20.491402, 13.940145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.731250, 20.234896, 13.393135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.049829, 19.995037, 13.424352>,  <10.240977, 19.851122, 13.443082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.049829, 19.995037, 13.424352>,  <9.731250, 20.234896, 13.393135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.049829, 19.995037, 13.424352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570700, -0.788043, -0.230846,
		0.199926, 0.139319, -0.969856,
		0.796450, -0.599648, 0.078040,
		10.288764, 19.815144, 13.447763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.660094, 19.825008, 12.851014>,  <9.731250, 20.234896, 13.393135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.660094, 19.825008, 12.851014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.898924, 19.616245, 13.094691>,  <10.042221, 19.490988, 13.240897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.898924, 19.616245, 13.094691>,  <9.660094, 19.825008, 12.851014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.898924, 19.616245, 13.094691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394731, -0.852262, -0.343274,
		0.698349, -0.035508, -0.714876,
		0.597073, -0.521909, 0.609192,
		10.078046, 19.459673, 13.277449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.736608, 19.052555, 12.609057>,  <9.660094, 19.825008, 12.851014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.736608, 19.052555, 12.609057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.884504, 19.000313, 12.977021>,  <9.973242, 18.968967, 13.197800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.884504, 19.000313, 12.977021>,  <9.736608, 19.052555, 12.609057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.884504, 19.000313, 12.977021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418879, -0.907180, 0.039562,
		0.829356, -0.399959, -0.390130,
		0.369741, -0.130606, 0.919910,
		9.995426, 18.961130, 13.252995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.089536, 18.437202, 12.513650>,  <9.736608, 19.052555, 12.609057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.089536, 18.437202, 12.513650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.003365, 18.465488, 12.903233>,  <9.951662, 18.482460, 13.136982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.003365, 18.465488, 12.903233>,  <10.089536, 18.437202, 12.513650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.003365, 18.465488, 12.903233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224356, -0.974279, 0.021115,
		0.950398, -0.213964, 0.225752,
		-0.215428, 0.070716, 0.973956,
		9.938736, 18.486704, 13.195419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.294109, 17.817261, 12.817453>,  <10.089536, 18.437202, 12.513650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.294109, 17.817261, 12.817453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.009150, 17.982182, 13.044607>,  <9.838174, 18.081135, 13.180900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.009150, 17.982182, 13.044607>,  <10.294109, 17.817261, 12.817453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.009150, 17.982182, 13.044607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449828, -0.889396, 0.081428,
		0.538647, -0.197441, 0.819070,
		-0.712400, 0.412302, 0.567885,
		9.795429, 18.105871, 13.214972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.081386, 17.211830, 13.200877>,  <10.294109, 17.817261, 12.817453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.081386, 17.211830, 13.200877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.799550, 17.486893, 13.270948>,  <9.630449, 17.651930, 13.312991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.799550, 17.486893, 13.270948>,  <10.081386, 17.211830, 13.200877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.799550, 17.486893, 13.270948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668308, -0.726032, 0.161993,
		0.238580, -0.002934, 0.971119,
		-0.704588, 0.687655, 0.175178,
		9.588174, 17.693190, 13.323502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.691196, 16.912806, 13.817061>,  <10.081386, 17.211830, 13.200877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.691196, 16.912806, 13.817061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.450418, 17.181248, 13.643959>,  <9.305951, 17.342314, 13.540097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.450418, 17.181248, 13.643959>,  <9.691196, 16.912806, 13.817061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.450418, 17.181248, 13.643959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789875, -0.580006, 0.199225,
		-0.117299, 0.461746, 0.879222,
		-0.601946, 0.671107, -0.432756,
		9.269835, 17.382580, 13.514132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.135286, 16.988541, 14.261221>,  <9.691196, 16.912806, 13.817061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.135286, 16.988541, 14.261221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.000711, 17.086637, 13.897536>,  <8.919967, 17.145494, 13.679325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.000711, 17.086637, 13.897536>,  <9.135286, 16.988541, 14.261221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.000711, 17.086637, 13.897536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651482, -0.757777, 0.036675,
		-0.679986, 0.604675, 0.414713,
		-0.336437, 0.245240, -0.909212,
		8.899780, 17.160210, 13.624772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.366850, 16.932974, 14.280998>,  <9.135286, 16.988541, 14.261221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.366850, 16.932974, 14.280998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.458783, 16.917629, 13.892009>,  <8.513944, 16.908422, 13.658615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.458783, 16.917629, 13.892009>,  <8.366850, 16.932974, 14.280998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.458783, 16.917629, 13.892009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708308, -0.691859, -0.140110,
		-0.667440, 0.721013, -0.186184,
		0.229834, -0.038361, -0.972473,
		8.527734, 16.906120, 13.600266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.719278, 16.997551, 14.095691>,  <8.366850, 16.932974, 14.280998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.719278, 16.997551, 14.095691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.956984, 16.856544, 13.806531>,  <8.099607, 16.771940, 13.633035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.956984, 16.856544, 13.806531>,  <7.719278, 16.997551, 14.095691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.956984, 16.856544, 13.806531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630191, -0.762551, -0.146202,
		-0.499710, 0.542447, -0.675308,
		0.594263, -0.352515, -0.722900,
		8.135262, 16.750790, 13.589661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.303960, 16.852558, 13.520958>,  <7.719278, 16.997551, 14.095691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.303960, 16.852558, 13.520958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.639684, 16.637732, 13.487217>,  <7.841119, 16.508835, 13.466972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.639684, 16.637732, 13.487217>,  <7.303960, 16.852558, 13.520958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.639684, 16.637732, 13.487217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543456, -0.833012, -0.103668,
		-0.014591, 0.132852, -0.991028,
		0.839311, -0.537068, -0.084353,
		7.891478, 16.476612, 13.461911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.182222, 16.453360, 13.032252>,  <7.303960, 16.852558, 13.520958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.182222, 16.453360, 13.032252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.480270, 16.259460, 13.215475>,  <7.659099, 16.143122, 13.325409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.480270, 16.259460, 13.215475>,  <7.182222, 16.453360, 13.032252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.480270, 16.259460, 13.215475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580825, -0.809207, 0.088468,
		0.327778, -0.331971, -0.884509,
		0.745120, -0.484747, 0.458057,
		7.703806, 16.114037, 13.352892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.289430, 15.849777, 12.608589>,  <7.182222, 16.453360, 13.032252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.289430, 15.849777, 12.608589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.433399, 15.778610, 12.974934>,  <7.519781, 15.735910, 13.194740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.433399, 15.778610, 12.974934>,  <7.289430, 15.849777, 12.608589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.433399, 15.778610, 12.974934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413383, -0.910443, -0.014411,
		0.836403, -0.373414, -0.401237,
		0.359922, -0.177918, 0.915861,
		7.541376, 15.725235, 13.249692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.545335, 15.293397, 12.561304>,  <7.289430, 15.849777, 12.608589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.545335, 15.293397, 12.561304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.517429, 15.324022, 12.959152>,  <7.500685, 15.342398, 13.197862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.517429, 15.324022, 12.959152>,  <7.545335, 15.293397, 12.561304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.517429, 15.324022, 12.959152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399641, -0.915688, 0.042456,
		0.914013, -0.394529, 0.094481,
		-0.069765, 0.076564, 0.994621,
		7.496500, 15.346992, 13.257539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.742449, 14.629967, 12.890861>,  <7.545335, 15.293397, 12.561304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.742449, 14.629967, 12.890861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.534047, 14.801647, 13.185978>,  <7.409005, 14.904655, 13.363049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.534047, 14.801647, 13.185978>,  <7.742449, 14.629967, 12.890861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.534047, 14.801647, 13.185978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314987, -0.900048, 0.301158,
		0.793306, -0.075489, 0.604124,
		-0.521007, 0.429202, 0.737792,
		7.377745, 14.930408, 13.407315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.842868, 14.222322, 13.424099>,  <7.742449, 14.629967, 12.890861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.842868, 14.222322, 13.424099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.515788, 14.414164, 13.551438>,  <7.319540, 14.529269, 13.627842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.515788, 14.414164, 13.551438>,  <7.842868, 14.222322, 13.424099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.515788, 14.414164, 13.551438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317906, -0.837286, 0.444846,
		0.479899, 0.262545, 0.837118,
		-0.817700, 0.479606, 0.318348,
		7.270478, 14.558045, 13.646943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.621237, 13.716205, 13.777772>,  <7.842868, 14.222322, 13.424099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.621237, 13.716205, 13.777772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.297858, 13.951428, 13.787533>,  <7.103830, 14.092563, 13.793389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.297858, 13.951428, 13.787533>,  <7.621237, 13.716205, 13.777772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.297858, 13.951428, 13.787533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550334, -0.769982, 0.322894,
		0.208670, 0.247614, 0.946121,
		-0.808449, 0.588060, 0.024402,
		7.055323, 14.127847, 13.794853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.018053, 13.434621, 14.329817>,  <7.621237, 13.716205, 13.777772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.018053, 13.434621, 14.329817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.687290, 13.209736, 14.325037>,  <7.488832, 13.074805, 14.322169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.687290, 13.209736, 14.325037>,  <8.018053, 13.434621, 14.329817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.687290, 13.209736, 14.325037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559125, -0.824265, 0.089251,
		-0.060027, 0.067121, 0.995937,
		-0.826907, -0.562212, -0.011949,
		7.439218, 13.041073, 14.321452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.866103, 13.030459, 13.648202>,  <8.018053, 13.434621, 14.329817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.866103, 13.030459, 13.648202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.999020, 12.968298, 14.020316>,  <8.078770, 12.931001, 14.243585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.999020, 12.968298, 14.020316>,  <7.866103, 13.030459, 13.648202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.999020, 12.968298, 14.020316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891637, 0.269830, 0.363560,
		-0.307517, -0.950285, -0.048901,
		0.332291, -0.155403, 0.930286,
		8.098707, 12.921677, 14.299402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.692248, 13.146054, 13.536914>,  <7.866103, 13.030459, 13.648202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.692248, 13.146054, 13.536914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.814001, 13.318099, 13.876880>,  <8.887053, 13.421326, 14.080859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.814001, 13.318099, 13.876880>,  <8.692248, 13.146054, 13.536914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.814001, 13.318099, 13.876880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942900, -0.262733, -0.204724,
		0.135246, 0.863699, -0.485523,
		0.304383, 0.430111, 0.849915,
		8.905316, 13.447132, 14.131854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.450472, 13.305146, 13.374799>,  <8.692248, 13.146054, 13.536914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.450472, 13.305146, 13.374799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.360789, 13.342274, 13.762843>,  <9.306980, 13.364550, 13.995670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.360789, 13.342274, 13.762843>,  <9.450472, 13.305146, 13.374799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.360789, 13.342274, 13.762843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945894, -0.218861, 0.239550,
		0.234554, 0.971331, -0.038726,
		-0.224207, 0.092818, 0.970111,
		9.293528, 13.370119, 14.053877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.967654, 13.685559, 13.685902>,  <9.450472, 13.305146, 13.374799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.967654, 13.685559, 13.685902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.796538, 13.464536, 13.972028>,  <9.693869, 13.331922, 14.143703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.796538, 13.464536, 13.972028>,  <9.967654, 13.685559, 13.685902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.796538, 13.464536, 13.972028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898691, -0.175350, 0.402004,
		-0.096700, 0.814820, 0.571592,
		-0.427789, -0.552558, 0.715315,
		9.668201, 13.298768, 14.186623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.068825, 13.897128, 14.451937>,  <9.967654, 13.685559, 13.685902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.068825, 13.897128, 14.451937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.037782, 13.502431, 14.394921>,  <10.019156, 13.265613, 14.360712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.037782, 13.502431, 14.394921>,  <10.068825, 13.897128, 14.451937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.037782, 13.502431, 14.394921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931540, -0.122714, 0.342308,
		-0.355261, -0.106215, 0.928713,
		-0.077608, -0.986742, -0.142539,
		10.014500, 13.206409, 14.352160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.178321, 13.543436, 15.102739>,  <10.068825, 13.897128, 14.451937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.178321, 13.543436, 15.102739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.270228, 13.318533, 14.784979>,  <10.325373, 13.183591, 14.594322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.270228, 13.318533, 14.784979>,  <10.178321, 13.543436, 15.102739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.270228, 13.318533, 14.784979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971195, 0.079519, 0.224623,
		-0.063126, -0.823130, 0.564332,
		0.229770, -0.562257, -0.794401,
		10.339159, 13.149856, 14.546659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.617272, 13.093768, 15.330988>,  <10.178321, 13.543436, 15.102739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.617272, 13.093768, 15.330988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.693051, 13.091238, 14.938240>,  <10.738519, 13.089720, 14.702591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.693051, 13.091238, 14.938240>,  <10.617272, 13.093768, 15.330988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.693051, 13.091238, 14.938240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969708, -0.155828, 0.188105,
		-0.154192, -0.987764, -0.023389,
		0.189448, -0.006324, -0.981870,
		10.749886, 13.089340, 14.643679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.651615, 13.795590, 15.560831>,  <10.617272, 13.093768, 15.330988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.651615, 13.795590, 15.560831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.048763, 13.817559, 15.603145>,  <11.287052, 13.830741, 15.628533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.048763, 13.817559, 15.603145>,  <10.651615, 13.795590, 15.560831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.048763, 13.817559, 15.603145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101319, -0.078567, 0.991747,
		0.062780, -0.995395, -0.072443,
		0.992872, 0.054922, 0.105784,
		11.346624, 13.834036, 15.634880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.828208, 13.291749, 15.996688>,  <10.651615, 13.795590, 15.560831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.828208, 13.291749, 15.996688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.157551, 13.517438, 16.021145>,  <11.355156, 13.652851, 16.035820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.157551, 13.517438, 16.021145>,  <10.828208, 13.291749, 15.996688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.157551, 13.517438, 16.021145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031818, -0.153458, 0.987643,
		0.566633, -0.811236, -0.144303,
		0.823356, 0.564222, 0.061143,
		11.404557, 13.686705, 16.039488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.299842, 12.846290, 16.412142>,  <10.828208, 13.291749, 15.996688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.299842, 12.846290, 16.412142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.415233, 13.227381, 16.450283>,  <11.484468, 13.456036, 16.473167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.415233, 13.227381, 16.450283>,  <11.299842, 12.846290, 16.412142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.415233, 13.227381, 16.450283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272769, -0.177232, 0.945614,
		0.917812, -0.246779, -0.311002,
		0.288477, 0.952727, 0.095352,
		11.501776, 13.513199, 16.478889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.764639, 12.848353, 16.873713>,  <11.299842, 12.846290, 16.412142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.764639, 12.848353, 16.873713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.720364, 13.245893, 16.872194>,  <11.693798, 13.484416, 16.871283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.720364, 13.245893, 16.872194>,  <11.764639, 12.848353, 16.873713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.720364, 13.245893, 16.872194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338905, 0.041335, 0.939912,
		0.934287, 0.102751, -0.341395,
		-0.110688, 0.993848, -0.003796,
		11.687157, 13.544047, 16.871056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.317164, 13.101230, 17.037014>,  <11.764639, 12.848353, 16.873713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.317164, 13.101230, 17.037014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.047183, 13.381149, 17.130583>,  <11.885194, 13.549101, 17.186724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.047183, 13.381149, 17.130583>,  <12.317164, 13.101230, 17.037014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.047183, 13.381149, 17.130583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365659, 0.041872, 0.929807,
		0.640883, 0.713112, -0.284149,
		-0.674954, 0.699799, 0.233921,
		11.844697, 13.591089, 17.200760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.725245, 13.725217, 17.359951>,  <12.317164, 13.101230, 17.037014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.725245, 13.725217, 17.359951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.344443, 13.692773, 17.478006>,  <12.115962, 13.673306, 17.548840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.344443, 13.692773, 17.478006>,  <12.725245, 13.725217, 17.359951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.344443, 13.692773, 17.478006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294341, 0.021899, 0.955450,
		-0.083960, 0.996464, 0.003026,
		-0.952005, -0.081110, 0.295139,
		12.058842, 13.668440, 17.566547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.702301, 14.221084, 17.925636>,  <12.725245, 13.725217, 17.359951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.702301, 14.221084, 17.925636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.380625, 13.989561, 17.979689>,  <12.187619, 13.850647, 18.012119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.380625, 13.989561, 17.979689>,  <12.702301, 14.221084, 17.925636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.380625, 13.989561, 17.979689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204738, -0.056321, 0.977195,
		-0.557997, 0.813517, 0.163797,
		-0.804190, -0.578807, 0.135131,
		12.139368, 13.815919, 18.020227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.422179, 14.482188, 18.428614>,  <12.702301, 14.221084, 17.925636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.422179, 14.482188, 18.428614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.222916, 14.135517, 18.439251>,  <12.103357, 13.927515, 18.445633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.222916, 14.135517, 18.439251>,  <12.422179, 14.482188, 18.428614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.222916, 14.135517, 18.439251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106947, -0.030981, 0.993782,
		-0.860464, 0.497906, 0.108122,
		-0.498160, -0.866677, 0.026591,
		12.073467, 13.875514, 18.447227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.949250, 14.564758, 18.945988>,  <12.422179, 14.482188, 18.428614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.949250, 14.564758, 18.945988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.001135, 14.171561, 18.893988>,  <12.032266, 13.935643, 18.862787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.001135, 14.171561, 18.893988>,  <11.949250, 14.564758, 18.945988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.001135, 14.171561, 18.893988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001069, -0.131249, 0.991349,
		-0.991551, -0.128451, -0.018075,
		0.129712, -0.982992, -0.130002,
		12.040049, 13.876663, 18.854986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.443392, 14.250712, 19.252930>,  <11.949250, 14.564758, 18.945988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.443392, 14.250712, 19.252930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.728719, 13.971445, 19.228466>,  <11.899915, 13.803885, 19.213789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.728719, 13.971445, 19.228466>,  <11.443392, 14.250712, 19.252930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.728719, 13.971445, 19.228466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071385, -0.159187, 0.984664,
		-0.697197, -0.698011, -0.163390,
		0.713316, -0.698169, -0.061158,
		11.942714, 13.761994, 19.210119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.250153, 13.749029, 19.726145>,  <11.443392, 14.250712, 19.252930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.250153, 13.749029, 19.726145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.629990, 13.630621, 19.684875>,  <11.857892, 13.559576, 19.660114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.629990, 13.630621, 19.684875>,  <11.250153, 13.749029, 19.726145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.629990, 13.630621, 19.684875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034071, -0.229707, 0.972663,
		-0.311628, -0.927150, -0.208043,
		0.949593, -0.296021, -0.103172,
		11.914867, 13.541815, 19.653923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.306228, 13.188912, 20.062792>,  <11.250153, 13.749029, 19.726145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.306228, 13.188912, 20.062792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.698301, 13.257919, 20.023849>,  <11.933545, 13.299323, 20.000484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.698301, 13.257919, 20.023849>,  <11.306228, 13.188912, 20.062792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.698301, 13.257919, 20.023849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125192, -0.158611, 0.979372,
		0.153517, -0.972152, -0.177066,
		0.980183, 0.172518, -0.097356,
		11.992356, 13.309674, 19.994642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.618697, 12.789508, 20.468678>,  <11.306228, 13.188912, 20.062792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.618697, 12.789508, 20.468678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.896774, 13.075741, 20.441408>,  <12.063621, 13.247480, 20.425047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.896774, 13.075741, 20.441408>,  <11.618697, 12.789508, 20.468678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.896774, 13.075741, 20.441408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149854, -0.051518, 0.987365,
		0.703029, -0.696625, -0.143048,
		0.695193, 0.715583, -0.068174,
		12.105332, 13.290416, 20.420956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.264766, 12.452273, 20.737564>,  <11.618697, 12.789508, 20.468678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.264766, 12.452273, 20.737564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.275230, 12.850714, 20.771267>,  <12.281509, 13.089778, 20.791489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.275230, 12.850714, 20.771267>,  <12.264766, 12.452273, 20.737564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.275230, 12.850714, 20.771267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169769, -0.078636, 0.982342,
		0.985137, -0.040003, 0.167050,
		0.026161, 0.996100, 0.084258,
		12.283078, 13.149544, 20.796545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.605738, 12.605635, 21.342747>,  <12.264766, 12.452273, 20.737564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.605738, 12.605635, 21.342747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.400498, 12.939466, 21.262541>,  <12.277355, 13.139766, 21.214417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.400498, 12.939466, 21.262541>,  <12.605738, 12.605635, 21.342747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.400498, 12.939466, 21.262541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212005, 0.103148, 0.971810,
		0.831736, 0.541144, 0.124010,
		-0.513098, 0.834580, -0.200517,
		12.246569, 13.189840, 21.202385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.863317, 13.061909, 21.828724>,  <12.605738, 12.605635, 21.342747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.863317, 13.061909, 21.828724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.499883, 13.182658, 21.713247>,  <12.281822, 13.255108, 21.643961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.499883, 13.182658, 21.713247>,  <12.863317, 13.061909, 21.828724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.499883, 13.182658, 21.713247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299465, 0.011048, 0.954044,
		0.291190, 0.953284, 0.080362,
		-0.908587, 0.301873, -0.288692,
		12.227306, 13.273220, 21.626640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.729303, 13.599099, 22.255379>,  <12.863317, 13.061909, 21.828724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.729303, 13.599099, 22.255379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.371805, 13.471346, 22.129387>,  <12.157307, 13.394693, 22.053791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.371805, 13.471346, 22.129387>,  <12.729303, 13.599099, 22.255379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.371805, 13.471346, 22.129387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366672, 0.115668, 0.923132,
		-0.258400, 0.940540, -0.220487,
		-0.893746, -0.319384, -0.314980,
		12.103682, 13.375531, 22.034893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.232281, 14.009183, 22.535864>,  <12.729303, 13.599099, 22.255379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.232281, 14.009183, 22.535864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.979891, 13.715048, 22.436951>,  <11.828457, 13.538567, 22.377604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.979891, 13.715048, 22.436951>,  <12.232281, 14.009183, 22.535864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.979891, 13.715048, 22.436951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565411, 0.217621, 0.795583,
		-0.531209, 0.641809, -0.553081,
		-0.630974, -0.735339, -0.247283,
		11.790599, 13.494446, 22.362766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.519757, 14.190346, 22.827410>,  <12.232281, 14.009183, 22.535864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.519757, 14.190346, 22.827410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.515540, 13.801937, 22.731905>,  <11.513010, 13.568892, 22.674603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.515540, 13.801937, 22.731905>,  <11.519757, 14.190346, 22.827410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.515540, 13.801937, 22.731905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521736, -0.198355, 0.829727,
		-0.853042, 0.133318, -0.504526,
		-0.010543, -0.971021, -0.238762,
		11.512378, 13.510631, 22.660276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.865568, 13.946005, 23.024015>,  <11.519757, 14.190346, 22.827410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.865568, 13.946005, 23.024015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.119786, 13.637297, 23.015532>,  <11.272317, 13.452071, 23.010441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.119786, 13.637297, 23.015532>,  <10.865568, 13.946005, 23.024015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.119786, 13.637297, 23.015532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403743, -0.355642, 0.842918,
		-0.658083, -0.527150, -0.537624,
		0.635546, -0.771772, -0.021208,
		11.310451, 13.405766, 23.009169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.466647, 13.408696, 23.337179>,  <10.865568, 13.946005, 23.024015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.466647, 13.408696, 23.337179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.838879, 13.262340, 23.342060>,  <11.062218, 13.174526, 23.344990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.838879, 13.262340, 23.342060>,  <10.466647, 13.408696, 23.337179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.838879, 13.262340, 23.342060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221688, -0.536670, 0.814150,
		-0.291339, -0.760335, -0.580527,
		0.930578, -0.365889, 0.012205,
		11.118052, 13.152573, 23.345722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.374546, 12.685061, 23.553349>,  <10.466647, 13.408696, 23.337179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.374546, 12.685061, 23.553349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.758072, 12.775804, 23.621714>,  <10.988188, 12.830249, 23.662733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.758072, 12.775804, 23.621714>,  <10.374546, 12.685061, 23.553349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.758072, 12.775804, 23.621714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017455, -0.553536, 0.832642,
		0.283495, -0.801333, -0.526779,
		0.958815, 0.226855, 0.170912,
		11.045716, 12.843860, 23.672987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.689571, 12.084524, 23.763056>,  <10.374546, 12.685061, 23.553349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.689571, 12.084524, 23.763056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.936440, 12.363855, 23.908073>,  <11.084560, 12.531454, 23.995083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.936440, 12.363855, 23.908073>,  <10.689571, 12.084524, 23.763056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.936440, 12.363855, 23.908073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053500, -0.496941, 0.866134,
		0.785008, -0.515157, -0.344058,
		0.617171, 0.698329, 0.362542,
		11.121591, 12.573354, 24.016836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.110509, 11.742783, 24.149155>,  <10.689571, 12.084524, 23.763056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.110509, 11.742783, 24.149155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.147242, 12.118016, 24.282761>,  <11.169281, 12.343157, 24.362925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.147242, 12.118016, 24.282761>,  <11.110509, 11.742783, 24.149155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.147242, 12.118016, 24.282761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069814, -0.340672, 0.937587,
		0.993324, -0.062781, -0.096776,
		0.091832, 0.938084, 0.334015,
		11.174791, 12.399442, 24.382965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.464974, 11.730725, 24.829603>,  <11.110509, 11.742783, 24.149155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.464974, 11.730725, 24.829603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.330219, 12.106205, 24.858862>,  <11.249366, 12.331492, 24.876417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.330219, 12.106205, 24.858862>,  <11.464974, 11.730725, 24.829603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.330219, 12.106205, 24.858862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093803, -0.043840, 0.994625,
		0.936861, 0.341939, -0.073283,
		-0.336888, 0.938699, 0.073147,
		11.229153, 12.387815, 24.880806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.952629, 12.068775, 25.255171>,  <11.464974, 11.730725, 24.829603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.952629, 12.068775, 25.255171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.607049, 12.268690, 25.279835>,  <11.399701, 12.388639, 25.294634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.607049, 12.268690, 25.279835>,  <11.952629, 12.068775, 25.255171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.607049, 12.268690, 25.279835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046494, -0.042755, 0.998003,
		0.501426, 0.865092, 0.013701,
		-0.863950, 0.499788, 0.061660,
		11.347864, 12.418627, 25.298332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.950721, 12.516564, 25.836702>,  <11.952629, 12.068775, 25.255171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.950721, 12.516564, 25.836702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.557410, 12.530005, 25.765104>,  <11.321424, 12.538069, 25.722145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.557410, 12.530005, 25.765104>,  <11.950721, 12.516564, 25.836702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.557410, 12.530005, 25.765104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178897, 0.005916, 0.983850,
		0.034116, 0.999418, 0.000194,
		-0.983276, 0.033600, -0.178994,
		11.262427, 12.540085, 25.711407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.687785, 13.131214, 26.182114>,  <11.950721, 12.516564, 25.836702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.687785, 13.131214, 26.182114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.403812, 12.851732, 26.146774>,  <11.233429, 12.684043, 26.125570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.403812, 12.851732, 26.146774>,  <11.687785, 13.131214, 26.182114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.403812, 12.851732, 26.146774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152295, 0.029825, 0.987885,
		-0.687606, 0.714787, -0.127583,
		-0.709933, -0.698706, -0.088350,
		11.190832, 12.642120, 26.120270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.113612, 13.412126, 26.565790>,  <11.687785, 13.131214, 26.182114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.113612, 13.412126, 26.565790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.011819, 13.025657, 26.549053>,  <10.950743, 12.793776, 26.539011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.011819, 13.025657, 26.549053>,  <11.113612, 13.412126, 26.565790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.011819, 13.025657, 26.549053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187293, 0.006793, 0.982280,
		-0.948767, 0.257811, -0.182686,
		-0.254484, -0.966171, -0.041841,
		10.935473, 12.735806, 26.536501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.572529, 13.413465, 27.136955>,  <11.113612, 13.412126, 26.565790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.572529, 13.413465, 27.136955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.694071, 13.046617, 27.033756>,  <10.766996, 12.826508, 26.971836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.694071, 13.046617, 27.033756>,  <10.572529, 13.413465, 27.136955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.694071, 13.046617, 27.033756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022115, -0.277518, 0.960466,
		-0.952461, -0.286137, -0.104607,
		0.303855, -0.917120, -0.257997,
		10.785228, 12.771481, 26.956358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.064293, 12.941579, 27.421335>,  <10.572529, 13.413465, 27.136955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.064293, 12.941579, 27.421335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.412585, 12.749070, 27.380932>,  <10.621561, 12.633565, 27.356689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.412585, 12.749070, 27.380932>,  <10.064293, 12.941579, 27.421335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.412585, 12.749070, 27.380932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003970, -0.212278, 0.977201,
		-0.491743, -0.850479, -0.186748,
		0.870731, -0.481273, -0.101010,
		10.673805, 12.604689, 27.350630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.952068, 12.184115, 27.595188>,  <10.064293, 12.941579, 27.421335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.952068, 12.184115, 27.595188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.336576, 12.260871, 27.674324>,  <10.567280, 12.306925, 27.721806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.336576, 12.260871, 27.674324>,  <9.952068, 12.184115, 27.595188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.336576, 12.260871, 27.674324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113431, -0.378763, 0.918516,
		0.251188, -0.905382, -0.342327,
		0.961269, 0.191890, 0.197839,
		10.624956, 12.318438, 27.733675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.070709, 11.709476, 28.049477>,  <9.952068, 12.184115, 27.595188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.070709, 11.709476, 28.049477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.396433, 11.936840, 28.096483>,  <10.591866, 12.073259, 28.124687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.396433, 11.936840, 28.096483>,  <10.070709, 11.709476, 28.049477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.396433, 11.936840, 28.096483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035291, -0.250574, 0.967454,
		0.579359, -0.783658, -0.224104,
		0.814308, 0.568412, 0.117516,
		10.640725, 12.107364, 28.131739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.397290, 11.434012, 28.531569>,  <10.070709, 11.709476, 28.049477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.397290, 11.434012, 28.531569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.636914, 11.754256, 28.526617>,  <10.780688, 11.946403, 28.523645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.636914, 11.754256, 28.526617>,  <10.397290, 11.434012, 28.531569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.636914, 11.754256, 28.526617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308503, -0.216516, 0.926254,
		0.738887, -0.558701, -0.376696,
		0.599060, 0.800609, -0.012380,
		10.816632, 11.994439, 28.522903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.237885, 11.274636, 28.662600>,  <10.397290, 11.434012, 28.531569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.237885, 11.274636, 28.662600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.130461, 11.638228, 28.790117>,  <11.066007, 11.856383, 28.866629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.130461, 11.638228, 28.790117>,  <11.237885, 11.274636, 28.662600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.130461, 11.638228, 28.790117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341447, -0.219633, 0.913879,
		0.900716, 0.354282, -0.251385,
		-0.268559, 0.908980, 0.318796,
		11.049893, 11.910923, 28.885756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.734999, 11.551872, 29.268463>,  <11.237885, 11.274636, 28.662600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.734999, 11.551872, 29.268463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.431588, 11.806746, 29.323065>,  <11.249542, 11.959671, 29.355825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.431588, 11.806746, 29.323065>,  <11.734999, 11.551872, 29.268463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.431588, 11.806746, 29.323065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073928, -0.292265, 0.953476,
		0.647436, 0.713145, 0.268796,
		-0.758526, 0.637186, 0.136502,
		11.204030, 11.997902, 29.364016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.933168, 12.017814, 29.773817>,  <11.734999, 11.551872, 29.268463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.933168, 12.017814, 29.773817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.536007, 11.971142, 29.783024>,  <11.297710, 11.943139, 29.788548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.536007, 11.971142, 29.783024>,  <11.933168, 12.017814, 29.773817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.536007, 11.971142, 29.783024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062684, -0.348987, 0.935029,
		-0.101067, 0.929835, 0.353824,
		-0.992903, -0.116679, 0.023015,
		11.238136, 11.936138, 29.789928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.856791, 11.969026, 30.435068>,  <11.933168, 12.017814, 29.773817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.856791, 11.969026, 30.435068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.478891, 11.879071, 30.339672>,  <11.252151, 11.825099, 30.282434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.478891, 11.879071, 30.339672>,  <11.856791, 11.969026, 30.435068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.478891, 11.879071, 30.339672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109498, -0.469251, 0.876250,
		-0.308967, 0.853950, 0.418699,
		-0.944748, -0.224886, -0.238489,
		11.195467, 11.811605, 30.268126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.409709, 12.036841, 30.984350>,  <11.856791, 11.969026, 30.435068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.409709, 12.036841, 30.984350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.172585, 11.770684, 30.802876>,  <11.030312, 11.610990, 30.693991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.172585, 11.770684, 30.802876>,  <11.409709, 12.036841, 30.984350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.172585, 11.770684, 30.802876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222275, -0.406279, 0.886302,
		-0.774062, 0.626251, 0.092946,
		-0.592809, -0.665393, -0.453685,
		10.994742, 11.571067, 30.666769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.005936, 11.823837, 31.521006>,  <11.409709, 12.036841, 30.984350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.005936, 11.823837, 31.521006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.940558, 11.539163, 31.247717>,  <10.901332, 11.368358, 31.083744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.940558, 11.539163, 31.247717>,  <11.005936, 11.823837, 31.521006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.940558, 11.539163, 31.247717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221724, -0.648317, 0.728370,
		-0.961314, 0.270533, -0.051835,
		-0.163442, -0.711686, -0.683220,
		10.891525, 11.325657, 31.042751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.268588, 11.517038, 31.690752>,  <11.005936, 11.823837, 31.521006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.268588, 11.517038, 31.690752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.470363, 11.230953, 31.497252>,  <10.591428, 11.059302, 31.381151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.470363, 11.230953, 31.497252>,  <10.268588, 11.517038, 31.690752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.470363, 11.230953, 31.497252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279386, -0.665312, 0.692317,
		-0.817000, -0.214076, -0.535428,
		0.504435, -0.715214, -0.483750,
		10.621694, 11.016389, 31.352127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.852525, 10.929851, 31.474289>,  <10.268588, 11.517038, 31.690752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.852525, 10.929851, 31.474289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.224267, 10.824986, 31.578266>,  <10.447312, 10.762068, 31.640652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.224267, 10.824986, 31.578266>,  <9.852525, 10.929851, 31.474289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.224267, 10.824986, 31.578266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368955, -0.634621, 0.679065,
		-0.013058, -0.727000, -0.686513,
		0.929356, -0.262159, 0.259944,
		10.503074, 10.746339, 31.656250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.030027, 10.218835, 31.475864>,  <9.852525, 10.929851, 31.474289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.030027, 10.218835, 31.475864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.191059, 10.358203, 31.814457>,  <10.287679, 10.441824, 32.017612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.191059, 10.358203, 31.814457>,  <10.030027, 10.218835, 31.475864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.191059, 10.358203, 31.814457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678562, -0.507078, 0.531437,
		0.614396, -0.788337, 0.032286,
		0.402580, 0.348421, 0.846482,
		10.311833, 10.462729, 32.068401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.107597, 9.701914, 31.923164>,  <10.030027, 10.218835, 31.475864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.107597, 9.701914, 31.923164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.014858, 10.048106, 32.100788>,  <9.959214, 10.255821, 32.207363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.014858, 10.048106, 32.100788>,  <10.107597, 9.701914, 31.923164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.014858, 10.048106, 32.100788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857103, -0.397638, 0.327502,
		0.460022, -0.304675, 0.833998,
		-0.231848, 0.865481, 0.444060,
		9.945304, 10.307751, 32.234005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.174873, 9.698158, 32.631039>,  <10.107597, 9.701914, 31.923164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.174873, 9.698158, 32.631039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.890180, 9.918776, 32.457035>,  <9.719363, 10.051146, 32.352631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.890180, 9.918776, 32.457035>,  <10.174873, 9.698158, 32.631039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.890180, 9.918776, 32.457035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694804, -0.643869, 0.320439,
		-0.103354, 0.530315, 0.841478,
		-0.711735, 0.551543, -0.435011,
		9.676660, 10.084238, 32.326530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.481596, 8.993981, 32.956554>,  <10.174873, 9.698158, 32.631039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.481596, 8.993981, 32.956554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.741942, 8.711016, 33.066780>,  <10.898150, 8.541237, 33.132915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.741942, 8.711016, 33.066780>,  <10.481596, 8.993981, 32.956554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.741942, 8.711016, 33.066780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356779, -0.035387, -0.933519,
		0.670135, 0.705913, 0.229358,
		0.650867, -0.707414, 0.275569,
		10.937202, 8.498792, 33.149452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.185982, 9.240674, 32.864948>,  <10.481596, 8.993981, 32.956554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.185982, 9.240674, 32.864948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.173013, 8.841398, 32.844677>,  <11.165232, 8.601833, 32.832512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.173013, 8.841398, 32.844677>,  <11.185982, 9.240674, 32.864948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.173013, 8.841398, 32.844677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654783, 0.017096, -0.755623,
		0.755121, -0.057683, 0.653043,
		-0.032422, -0.998188, -0.050680,
		11.163286, 8.541942, 32.829472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.907234, 8.887043, 32.828613>,  <11.185982, 9.240674, 32.864948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.907234, 8.887043, 32.828613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.621140, 8.675106, 32.646313>,  <11.449484, 8.547944, 32.536934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.621140, 8.675106, 32.646313>,  <11.907234, 8.887043, 32.828613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.621140, 8.675106, 32.646313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505891, 0.057420, -0.860684,
		0.482196, -0.846150, 0.226974,
		-0.715235, -0.529842, -0.455747,
		11.406569, 8.516153, 32.509590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.308718, 8.373983, 32.481541>,  <11.907234, 8.887043, 32.828613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.308718, 8.373983, 32.481541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.983885, 8.312241, 32.256439>,  <11.788985, 8.275195, 32.121376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.983885, 8.312241, 32.256439>,  <12.308718, 8.373983, 32.481541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.983885, 8.312241, 32.256439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564739, 0.034956, -0.824529,
		0.146943, -0.987397, 0.058784,
		-0.812082, -0.154356, -0.562759,
		11.740260, 8.265934, 32.087612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.454464, 7.936376, 31.916916>,  <12.308718, 8.373983, 32.481541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.454464, 7.936376, 31.916916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.135758, 8.137329, 31.782585>,  <11.944535, 8.257901, 31.701986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.135758, 8.137329, 31.782585>,  <12.454464, 7.936376, 31.916916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.135758, 8.137329, 31.782585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440864, 0.103172, -0.891625,
		-0.413289, -0.858468, -0.303686,
		-0.796763, 0.502383, -0.335828,
		11.896729, 8.288044, 31.681837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.531101, 7.997359, 31.246183>,  <12.454464, 7.936376, 31.916916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.531101, 7.997359, 31.246183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.201967, 8.224396, 31.234999>,  <12.004487, 8.360618, 31.228287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.201967, 8.224396, 31.234999>,  <12.531101, 7.997359, 31.246183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.201967, 8.224396, 31.234999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182563, 0.217420, -0.958853,
		-0.538158, -0.794082, -0.282523,
		-0.822834, 0.567593, -0.027964,
		11.955117, 8.394673, 31.226610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.936224, 7.771179, 30.773491>,  <12.531101, 7.997359, 31.246183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.936224, 7.771179, 30.773491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.954247, 8.169641, 30.803553>,  <11.965061, 8.408717, 30.821590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.954247, 8.169641, 30.803553>,  <11.936224, 7.771179, 30.773491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.954247, 8.169641, 30.803553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112877, 0.079827, -0.990397,
		-0.992587, 0.036142, 0.116040,
		0.045058, 0.996153, 0.075156,
		11.967765, 8.468487, 30.826099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.428980, 8.121814, 30.268484>,  <11.936224, 7.771179, 30.773491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.428980, 8.121814, 30.268484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.659081, 8.436882, 30.356720>,  <11.797141, 8.625923, 30.409660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.659081, 8.436882, 30.356720>,  <11.428980, 8.121814, 30.268484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.659081, 8.436882, 30.356720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010315, 0.262669, -0.964831,
		-0.817912, 0.557296, 0.142976,
		0.575251, 0.787672, 0.220589,
		11.831656, 8.673183, 30.422897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.072014, 8.712818, 29.940174>,  <11.428980, 8.121814, 30.268484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.072014, 8.712818, 29.940174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.453531, 8.816289, 30.001318>,  <11.682442, 8.878371, 30.038004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.453531, 8.816289, 30.001318>,  <11.072014, 8.712818, 29.940174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.453531, 8.816289, 30.001318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054770, 0.350532, -0.934948,
		-0.295430, 0.900119, 0.320168,
		0.953793, 0.258676, 0.152858,
		11.739669, 8.893892, 30.047174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.074189, 9.304039, 29.604485>,  <11.072014, 8.712818, 29.940174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.074189, 9.304039, 29.604485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.463858, 9.229477, 29.655464>,  <11.697659, 9.184740, 29.686052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.463858, 9.229477, 29.655464>,  <11.074189, 9.304039, 29.604485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.463858, 9.229477, 29.655464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192570, 0.391050, -0.899998,
		0.117925, 0.901295, 0.416846,
		0.974172, -0.186405, 0.127448,
		11.756109, 9.173555, 29.693699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.381291, 9.924214, 29.469164>,  <11.074189, 9.304039, 29.604485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.381291, 9.924214, 29.469164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.650578, 9.633250, 29.416018>,  <11.812151, 9.458672, 29.384130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.650578, 9.633250, 29.416018>,  <11.381291, 9.924214, 29.469164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.650578, 9.633250, 29.416018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301466, 0.434070, -0.848941,
		0.675200, 0.531468, 0.511513,
		0.673218, -0.727409, -0.132864,
		11.852544, 9.415028, 29.376158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.991121, 10.273161, 29.150999>,  <11.381291, 9.924214, 29.469164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.991121, 10.273161, 29.150999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.955544, 9.894180, 29.028086>,  <11.934198, 9.666792, 28.954338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.955544, 9.894180, 29.028086>,  <11.991121, 10.273161, 29.150999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.955544, 9.894180, 29.028086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224127, 0.281556, -0.933002,
		0.970493, -0.151855, 0.187307,
		-0.088943, -0.947452, -0.307283,
		11.928862, 9.609944, 28.935902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.486148, 10.237245, 28.678972>,  <11.991121, 10.273161, 29.150999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.486148, 10.237245, 28.678972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.278765, 9.903976, 28.602003>,  <12.154335, 9.704016, 28.555822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.278765, 9.903976, 28.602003>,  <12.486148, 10.237245, 28.678972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.278765, 9.903976, 28.602003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185138, 0.110318, -0.976501,
		0.834820, -0.541900, 0.097056,
		-0.518459, -0.833171, -0.192421,
		12.123227, 9.654025, 28.544277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.847981, 9.953300, 28.190159>,  <12.486148, 10.237245, 28.678972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.847981, 9.953300, 28.190159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.519699, 9.732496, 28.131197>,  <12.322729, 9.600015, 28.095819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.519699, 9.732496, 28.131197>,  <12.847981, 9.953300, 28.190159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.519699, 9.732496, 28.131197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174397, 0.003651, -0.984669,
		0.544084, -0.833830, 0.093272,
		-0.820706, -0.552009, -0.147404,
		12.273487, 9.566894, 28.086975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.040338, 9.392443, 27.638241>,  <12.847981, 9.953300, 28.190159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.040338, 9.392443, 27.638241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.642969, 9.436581, 27.650507>,  <12.404549, 9.463063, 27.657867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.642969, 9.436581, 27.650507>,  <13.040338, 9.392443, 27.638241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.642969, 9.436581, 27.650507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034775, -0.035505, -0.998764,
		-0.109122, -0.993259, 0.039109,
		-0.993420, 0.110347, 0.030666,
		12.344943, 9.469685, 27.659706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.855570, 8.935515, 27.189878>,  <13.040338, 9.392443, 27.638241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.855570, 8.935515, 27.189878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.548623, 9.190866, 27.213970>,  <12.364455, 9.344075, 27.228426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.548623, 9.190866, 27.213970>,  <12.855570, 8.935515, 27.189878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.548623, 9.190866, 27.213970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047279, 0.037348, -0.998183,
		-0.639464, -0.768819, 0.001522,
		-0.767365, 0.638374, 0.060231,
		12.318414, 9.382378, 27.232040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.478886, 8.694095, 26.631096>,  <12.855570, 8.935515, 27.189878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.478886, 8.694095, 26.631096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.364767, 9.068433, 26.713846>,  <12.296296, 9.293036, 26.763496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.364767, 9.068433, 26.713846>,  <12.478886, 8.694095, 26.631096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.364767, 9.068433, 26.713846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060964, 0.197692, -0.978367,
		-0.956498, -0.291737, 0.000652,
		-0.285297, 0.935846, 0.206877,
		12.279178, 9.349187, 26.775909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.982415, 8.858668, 26.099934>,  <12.478886, 8.694095, 26.631096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.982415, 8.858668, 26.099934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.063464, 9.223765, 26.241831>,  <12.112093, 9.442823, 26.326969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.063464, 9.223765, 26.241831>,  <11.982415, 8.858668, 26.099934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.063464, 9.223765, 26.241831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042899, 0.370184, -0.927967,
		-0.978317, 0.172808, 0.114163,
		0.202622, 0.912744, 0.354744,
		12.124250, 9.497588, 26.348253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.610901, 9.343105, 25.849407>,  <11.982415, 8.858668, 26.099934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.610901, 9.343105, 25.849407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.875599, 9.624210, 25.953884>,  <12.034417, 9.792873, 26.016569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.875599, 9.624210, 25.953884>,  <11.610901, 9.343105, 25.849407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.875599, 9.624210, 25.953884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058155, 0.395444, -0.916647,
		-0.747471, 0.591397, 0.302552,
		0.661744, 0.702762, 0.261190,
		12.074122, 9.835039, 26.032242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.359745, 10.018981, 25.535992>,  <11.610901, 9.343105, 25.849407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.359745, 10.018981, 25.535992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.754126, 10.021057, 25.602772>,  <11.990754, 10.022303, 25.642839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.754126, 10.021057, 25.602772>,  <11.359745, 10.018981, 25.535992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.754126, 10.021057, 25.602772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152243, 0.383275, -0.911001,
		-0.068716, 0.923620, 0.377100,
		0.985951, 0.005189, 0.166951,
		12.049911, 10.022614, 25.652857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.607000, 10.619719, 25.234682>,  <11.359745, 10.018981, 25.535992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.607000, 10.619719, 25.234682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.946069, 10.413268, 25.283779>,  <12.149510, 10.289398, 25.313238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.946069, 10.413268, 25.283779>,  <11.607000, 10.619719, 25.234682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.946069, 10.413268, 25.283779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377071, 0.423388, -0.823748,
		0.373189, 0.744551, 0.553510,
		0.847672, -0.516126, 0.122745,
		12.200371, 10.258430, 25.320602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.026269, 11.083158, 24.994345>,  <11.607000, 10.619719, 25.234682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.026269, 11.083158, 24.994345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.230547, 10.739274, 24.998178>,  <12.353113, 10.532944, 25.000479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.230547, 10.739274, 24.998178>,  <12.026269, 11.083158, 24.994345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.230547, 10.739274, 24.998178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319332, 0.179320, -0.930522,
		0.798259, 0.478273, 0.366111,
		0.510694, -0.859709, 0.009584,
		12.383755, 10.481361, 25.001053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.599855, 11.174138, 24.701088>,  <12.026269, 11.083158, 24.994345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.599855, 11.174138, 24.701088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.564373, 10.778357, 24.655287>,  <12.543083, 10.540888, 24.627806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.564373, 10.778357, 24.655287>,  <12.599855, 11.174138, 24.701088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.564373, 10.778357, 24.655287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415926, 0.067656, -0.906878,
		0.905062, -0.128070, 0.405538,
		-0.088706, -0.989455, -0.114501,
		12.537761, 10.481520, 24.620937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.227034, 10.954288, 24.354082>,  <12.599855, 11.174138, 24.701088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.227034, 10.954288, 24.354082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.976466, 10.646992, 24.301311>,  <12.826125, 10.462614, 24.269650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.976466, 10.646992, 24.301311>,  <13.227034, 10.954288, 24.354082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.976466, 10.646992, 24.301311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248463, -0.036370, -0.967958,
		0.738827, -0.639127, 0.213662,
		-0.626419, -0.768241, -0.131928,
		12.788540, 10.416519, 24.261734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.583456, 10.540676, 23.929790>,  <13.227034, 10.954288, 24.354082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.583456, 10.540676, 23.929790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.210574, 10.401175, 23.891085>,  <12.986845, 10.317473, 23.867861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.210574, 10.401175, 23.891085>,  <13.583456, 10.540676, 23.929790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.210574, 10.401175, 23.891085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134088, -0.084460, -0.987364,
		0.336174, -0.933401, 0.125498,
		-0.932206, -0.348754, -0.096764,
		12.930912, 10.296549, 23.862055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.662075, 9.876820, 23.578268>,  <13.583456, 10.540676, 23.929790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.662075, 9.876820, 23.578268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.298429, 10.038149, 23.536629>,  <13.080240, 10.134946, 23.511644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.298429, 10.038149, 23.536629>,  <13.662075, 9.876820, 23.578268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.298429, 10.038149, 23.536629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048255, -0.146254, -0.988069,
		-0.413736, -0.903294, 0.113500,
		-0.909117, 0.403323, -0.104099,
		13.025693, 10.159145, 23.505400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.295333, 9.439361, 23.046209>,  <13.662075, 9.876820, 23.578268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.295333, 9.439361, 23.046209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.103386, 9.790249, 23.040403>,  <12.988218, 10.000782, 23.036919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.103386, 9.790249, 23.040403>,  <13.295333, 9.439361, 23.046209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.103386, 9.790249, 23.040403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080602, 0.027604, -0.996364,
		-0.873631, -0.479292, -0.083952,
		-0.479867, 0.877221, -0.014516,
		12.959426, 10.053415, 23.036049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.790880, 9.371626, 22.552881>,  <13.295333, 9.439361, 23.046209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.790880, 9.371626, 22.552881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.841755, 9.766152, 22.594845>,  <12.872279, 10.002868, 22.620022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.841755, 9.766152, 22.594845>,  <12.790880, 9.371626, 22.552881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.841755, 9.766152, 22.594845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031162, 0.101740, -0.994323,
		-0.991389, 0.129733, -0.017795,
		0.127186, 0.986315, 0.104907,
		12.879910, 10.062047, 22.626316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.529351, 9.574772, 21.939726>,  <12.790880, 9.371626, 22.552881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.529351, 9.574772, 21.939726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.726315, 9.898385, 22.068100>,  <12.844493, 10.092553, 22.145124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.726315, 9.898385, 22.068100>,  <12.529351, 9.574772, 21.939726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.726315, 9.898385, 22.068100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107360, 0.309464, -0.944831,
		-0.863718, 0.499698, 0.065525,
		0.492408, 0.809033, 0.320937,
		12.874037, 10.141095, 22.164381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.289017, 10.162154, 21.490711>,  <12.529351, 9.574772, 21.939726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.289017, 10.162154, 21.490711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.619664, 10.304634, 21.664988>,  <12.818052, 10.390121, 21.769552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.619664, 10.304634, 21.664988>,  <12.289017, 10.162154, 21.490711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.619664, 10.304634, 21.664988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231915, 0.489787, -0.840431,
		-0.512756, 0.795758, 0.322259,
		0.826618, 0.356199, 0.435689,
		12.867649, 10.411494, 21.795694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.385854, 10.933722, 21.396481>,  <12.289017, 10.162154, 21.490711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.385854, 10.933722, 21.396481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.749574, 10.776373, 21.450785>,  <12.967806, 10.681964, 21.483366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.749574, 10.776373, 21.450785>,  <12.385854, 10.933722, 21.396481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.749574, 10.776373, 21.450785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333577, 0.493972, -0.802943,
		0.248795, 0.775403, 0.580389,
		0.909301, -0.393372, 0.135758,
		13.022364, 10.658361, 21.491512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.840887, 11.534383, 21.164934>,  <12.385854, 10.933722, 21.396481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.840887, 11.534383, 21.164934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.052635, 11.195030, 21.163322>,  <13.179685, 10.991419, 21.162355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.052635, 11.195030, 21.163322>,  <12.840887, 11.534383, 21.164934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.052635, 11.195030, 21.163322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467731, 0.295811, -0.832901,
		0.707809, 0.439029, 0.553407,
		0.529371, -0.848381, -0.004030,
		13.211447, 10.940516, 21.162113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.457311, 11.779899, 21.066902>,  <12.840887, 11.534383, 21.164934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.457311, 11.779899, 21.066902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.508265, 11.395366, 20.969240>,  <13.538838, 11.164646, 20.910643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.508265, 11.395366, 20.969240>,  <13.457311, 11.779899, 21.066902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.508265, 11.395366, 20.969240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477505, 0.275198, -0.834419,
		0.869345, -0.010292, 0.494098,
		0.127387, -0.961332, -0.244156,
		13.546481, 11.106966, 20.895992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.137593, 11.695599, 20.740538>,  <13.457311, 11.779899, 21.066902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.137593, 11.695599, 20.740538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.937873, 11.373056, 20.613737>,  <13.818041, 11.179531, 20.537657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.937873, 11.373056, 20.613737>,  <14.137593, 11.695599, 20.740538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.937873, 11.373056, 20.613737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305493, 0.178530, -0.935308,
		0.810786, -0.563840, 0.157196,
		-0.499300, -0.806357, -0.316999,
		13.788083, 11.131149, 20.518637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.623189, 11.362817, 20.417522>,  <14.137593, 11.695599, 20.740538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.623189, 11.362817, 20.417522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.296497, 11.189519, 20.265074>,  <14.100483, 11.085540, 20.173605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.296497, 11.189519, 20.265074>,  <14.623189, 11.362817, 20.417522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.296497, 11.189519, 20.265074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419199, 0.008383, -0.907856,
		0.396519, -0.901237, 0.174769,
		-0.816728, -0.433245, -0.381121,
		14.051478, 11.059546, 20.150738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.904841, 10.848268, 19.970680>,  <14.623189, 11.362817, 20.417522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.904841, 10.848268, 19.970680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.535240, 10.925620, 19.838728>,  <14.313479, 10.972032, 19.759556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.535240, 10.925620, 19.838728>,  <14.904841, 10.848268, 19.970680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.535240, 10.925620, 19.838728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336688, 0.002487, -0.941613,
		-0.181270, -0.981121, -0.067407,
		-0.924003, 0.193381, -0.329881,
		14.258039, 10.983635, 19.739763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.786153, 10.402926, 19.405184>,  <14.904841, 10.848268, 19.970680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.786153, 10.402926, 19.405184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.504553, 10.684715, 19.369179>,  <14.335593, 10.853788, 19.347576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.504553, 10.684715, 19.369179>,  <14.786153, 10.402926, 19.405184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.504553, 10.684715, 19.369179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059405, -0.067885, -0.995923,
		-0.707711, -0.706477, 0.005942,
		-0.704000, 0.704473, -0.090011,
		14.293353, 10.896057, 19.342175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.418847, 10.214563, 18.795458>,  <14.786153, 10.402926, 19.405184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.418847, 10.214563, 18.795458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.281670, 10.587268, 18.843142>,  <14.199364, 10.810890, 18.871752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.281670, 10.587268, 18.843142>,  <14.418847, 10.214563, 18.795458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.281670, 10.587268, 18.843142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130061, 0.078586, -0.988387,
		-0.930309, -0.354465, 0.094236,
		-0.342943, 0.931761, 0.119211,
		14.178787, 10.866796, 18.878904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.922744, 10.341860, 18.250374>,  <14.418847, 10.214563, 18.795458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.922744, 10.341860, 18.250374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.992435, 10.719966, 18.360733>,  <14.034249, 10.946830, 18.426949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.992435, 10.719966, 18.360733>,  <13.922744, 10.341860, 18.250374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.992435, 10.719966, 18.360733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192660, 0.307491, -0.931843,
		-0.965674, 0.109198, 0.235688,
		0.174227, 0.945264, 0.275899,
		14.044703, 11.003546, 18.443502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.320007, 10.778767, 18.062494>,  <13.922744, 10.341860, 18.250374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.320007, 10.778767, 18.062494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.659119, 10.990250, 18.079166>,  <13.862586, 11.117140, 18.089170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.659119, 10.990250, 18.079166>,  <13.320007, 10.778767, 18.062494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.659119, 10.990250, 18.079166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195281, 0.384265, -0.902333,
		-0.493088, 0.756840, 0.429019,
		0.847779, 0.528709, 0.041680,
		13.913452, 11.148862, 18.091671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.120991, 11.445135, 17.804794>,  <13.320007, 10.778767, 18.062494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.120991, 11.445135, 17.804794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.519560, 11.429490, 17.774824>,  <13.758701, 11.420103, 17.756842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.519560, 11.429490, 17.774824>,  <13.120991, 11.445135, 17.804794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.519560, 11.429490, 17.774824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049571, 0.447580, -0.892869,
		0.068458, 0.893388, 0.444039,
		0.996422, -0.039113, -0.074927,
		13.818486, 11.417756, 17.752346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.435341, 12.232514, 17.592501>,  <13.120991, 11.445135, 17.804794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.435341, 12.232514, 17.592501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.713875, 11.963147, 17.493204>,  <13.880995, 11.801527, 17.433626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.713875, 11.963147, 17.493204>,  <13.435341, 12.232514, 17.592501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.713875, 11.963147, 17.493204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031426, 0.316938, -0.947925,
		0.717029, 0.667875, 0.199533,
		0.696335, -0.673419, -0.248242,
		13.922775, 11.761122, 17.418732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.856120, 12.549167, 17.100767>,  <13.435341, 12.232514, 17.592501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.856120, 12.549167, 17.100767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.972695, 12.173024, 17.030573>,  <14.042641, 11.947339, 16.988457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.972695, 12.173024, 17.030573>,  <13.856120, 12.549167, 17.100767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.972695, 12.173024, 17.030573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213726, 0.242820, -0.946234,
		0.932408, 0.238264, 0.271746,
		0.291439, -0.940356, -0.175484,
		14.060127, 11.890918, 16.977928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.474265, 12.681709, 16.786125>,  <13.856120, 12.549167, 17.100767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.474265, 12.681709, 16.786125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.355864, 12.313242, 16.685066>,  <14.284822, 12.092162, 16.624430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.355864, 12.313242, 16.685066>,  <14.474265, 12.681709, 16.786125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.355864, 12.313242, 16.685066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496948, 0.077371, -0.864324,
		0.815735, -0.381397, 0.434870,
		-0.296004, -0.921168, -0.252649,
		14.267062, 12.036892, 16.609272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.086449, 12.290903, 16.582851>,  <14.474265, 12.681709, 16.786125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.086449, 12.290903, 16.582851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.771642, 12.102234, 16.423790>,  <14.582758, 11.989033, 16.328354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.771642, 12.102234, 16.423790>,  <15.086449, 12.290903, 16.582851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.771642, 12.102234, 16.423790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466147, -0.032428, -0.884113,
		0.404117, -0.881177, 0.245390,
		-0.787017, -0.471673, -0.397653,
		14.535537, 11.960732, 16.304495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.670800, 12.012122, 16.231312>,  <15.086449, 12.290903, 16.582851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.670800, 12.012122, 16.231312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.549739, 11.836278, 15.893047>,  <15.477102, 11.730772, 15.690088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.549739, 11.836278, 15.893047>,  <15.670800, 12.012122, 16.231312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.549739, 11.836278, 15.893047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900854, -0.157789, 0.404431,
		-0.311228, 0.884220, -0.348269,
		-0.302653, -0.439610, -0.845662,
		15.458943, 11.704395, 15.639349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.934215, 12.084822, 16.872200>,  <15.670800, 12.012122, 16.231312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.934215, 12.084822, 16.872200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.191820, 11.792910, 16.780403>,  <16.346384, 11.617763, 16.725325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.191820, 11.792910, 16.780403>,  <15.934215, 12.084822, 16.872200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.191820, 11.792910, 16.780403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316941, -0.018508, 0.948264,
		-0.696272, -0.683431, 0.219378,
		0.644013, -0.729780, -0.229494,
		16.385025, 11.573976, 16.711555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.841114, 11.507915, 17.398756>,  <15.934215, 12.084822, 16.872200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.841114, 11.507915, 17.398756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.202326, 11.512899, 17.226997>,  <16.419054, 11.515889, 17.123941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.202326, 11.512899, 17.226997>,  <15.841114, 11.507915, 17.398756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.202326, 11.512899, 17.226997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422752, 0.151694, 0.893460,
		0.076271, -0.988349, 0.131716,
		0.903030, 0.012462, -0.429396,
		16.473234, 11.516637, 17.098179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.254187, 11.089475, 17.806009>,  <15.841114, 11.507915, 17.398756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.254187, 11.089475, 17.806009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.525618, 11.298289, 17.599318>,  <16.688477, 11.423578, 17.475302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.525618, 11.298289, 17.599318>,  <16.254187, 11.089475, 17.806009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.525618, 11.298289, 17.599318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433518, 0.283255, 0.855470,
		0.592953, -0.804515, -0.034102,
		0.678579, 0.522037, -0.516729,
		16.729191, 11.454901, 17.444300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.931347, 10.735750, 17.948952>,  <16.254187, 11.089475, 17.806009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.931347, 10.735750, 17.948952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.012959, 11.116513, 17.857525>,  <17.061926, 11.344972, 17.802670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.012959, 11.116513, 17.857525>,  <16.931347, 10.735750, 17.948952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.012959, 11.116513, 17.857525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292304, 0.163589, 0.942230,
		0.934307, -0.259054, -0.244869,
		0.204031, 0.951908, -0.228565,
		17.074167, 11.402085, 17.788956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.590906, 10.858822, 18.325054>,  <16.931347, 10.735750, 17.948952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.590906, 10.858822, 18.325054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.472128, 11.226744, 18.222460>,  <17.400862, 11.447496, 18.160902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.472128, 11.226744, 18.222460>,  <17.590906, 10.858822, 18.325054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.472128, 11.226744, 18.222460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263215, 0.337041, 0.903947,
		0.917901, 0.200910, -0.342188,
		-0.296943, 0.919804, -0.256488,
		17.383045, 11.502685, 18.145514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.233070, 11.250618, 18.424252>,  <17.590906, 10.858822, 18.325054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.233070, 11.250618, 18.424252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.902027, 11.471240, 18.465916>,  <17.703402, 11.603613, 18.490913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.902027, 11.471240, 18.465916>,  <18.233070, 11.250618, 18.424252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.902027, 11.471240, 18.465916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302458, 0.281888, 0.910527,
		0.472844, 0.785064, -0.400115,
		-0.827610, 0.551555, 0.104159,
		17.653744, 11.636706, 18.497164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.464895, 11.885378, 18.833611>,  <18.233070, 11.250618, 18.424252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.464895, 11.885378, 18.833611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.068817, 11.869600, 18.887215>,  <17.831171, 11.860134, 18.919378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.068817, 11.869600, 18.887215>,  <18.464895, 11.885378, 18.833611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.068817, 11.869600, 18.887215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122170, 0.220719, 0.967656,
		-0.067747, 0.974540, -0.213736,
		-0.990194, -0.039444, 0.134012,
		17.771759, 11.857767, 18.927418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.376743, 12.429941, 19.284990>,  <18.464895, 11.885378, 18.833611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.376743, 12.429941, 19.284990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.025265, 12.239312, 19.273891>,  <17.814377, 12.124935, 19.267231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.025265, 12.239312, 19.273891>,  <18.376743, 12.429941, 19.284990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.025265, 12.239312, 19.273891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125116, 0.173814, 0.976798,
		-0.460692, 0.861781, -0.212357,
		-0.878697, -0.476572, -0.027748,
		17.761656, 12.096340, 19.265568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.945610, 12.911696, 19.698353>,  <18.376743, 12.429941, 19.284990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.945610, 12.911696, 19.698353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.787670, 12.544245, 19.704185>,  <17.692905, 12.323773, 19.707685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.787670, 12.544245, 19.704185>,  <17.945610, 12.911696, 19.698353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.787670, 12.544245, 19.704185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059079, 0.041224, 0.997402,
		-0.916844, 0.392964, -0.070549,
		-0.394851, -0.918629, 0.014580,
		17.669214, 12.268656, 19.708559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.359018, 12.983114, 20.102461>,  <17.945610, 12.911696, 19.698353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.359018, 12.983114, 20.102461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.446512, 12.592801, 20.102781>,  <17.499008, 12.358613, 20.102974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.446512, 12.592801, 20.102781>,  <17.359018, 12.983114, 20.102461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.446512, 12.592801, 20.102781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178645, -0.039237, 0.983131,
		-0.959292, -0.215189, -0.182901,
		0.218735, -0.975784, 0.000802,
		17.512133, 12.300066, 20.103022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.888681, 12.745288, 20.558046>,  <17.359018, 12.983114, 20.102461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.888681, 12.745288, 20.558046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.131735, 12.427663, 20.551771>,  <17.277567, 12.237088, 20.548006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.131735, 12.427663, 20.551771>,  <16.888681, 12.745288, 20.558046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.131735, 12.427663, 20.551771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236619, -0.199853, 0.950826,
		-0.758151, -0.574042, -0.309328,
		0.607634, -0.794062, -0.015690,
		17.314026, 12.189445, 20.547064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.427454, 12.160509, 20.615828>,  <16.888681, 12.745288, 20.558046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.427454, 12.160509, 20.615828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.799658, 12.098039, 20.748348>,  <17.022980, 12.060556, 20.827862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.799658, 12.098039, 20.748348>,  <16.427454, 12.160509, 20.615828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.799658, 12.098039, 20.748348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347445, -0.090130, 0.933359,
		-0.115923, -0.983606, -0.138135,
		0.930508, -0.156192, 0.331301,
		17.078810, 12.051187, 20.847740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.276073, 11.585526, 21.084856>,  <16.427454, 12.160509, 20.615828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.276073, 11.585526, 21.084856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.632877, 11.731791, 21.191149>,  <16.846960, 11.819550, 21.254925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.632877, 11.731791, 21.191149>,  <16.276073, 11.585526, 21.084856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.632877, 11.731791, 21.191149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272511, -0.033997, 0.961552,
		0.360635, -0.930127, 0.069321,
		0.892009, 0.365660, 0.265730,
		16.900480, 11.841489, 21.270868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.586647, 11.091759, 21.630623>,  <16.276073, 11.585526, 21.084856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.586647, 11.091759, 21.630623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.776505, 11.442315, 21.663252>,  <16.890419, 11.652649, 21.682829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.776505, 11.442315, 21.663252>,  <16.586647, 11.091759, 21.630623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.776505, 11.442315, 21.663252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128973, -0.022428, 0.991394,
		0.870678, -0.481079, 0.102386,
		0.474642, 0.876390, 0.081574,
		16.918898, 11.705233, 21.687725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.927439, 10.967738, 22.226156>,  <16.586647, 11.091759, 21.630623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.927439, 10.967738, 22.226156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.900927, 11.362655, 22.168383>,  <16.885019, 11.599605, 22.133718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.900927, 11.362655, 22.168383>,  <16.927439, 10.967738, 22.226156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.900927, 11.362655, 22.168383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065964, 0.140102, 0.987937,
		0.995618, 0.075011, 0.055839,
		-0.066283, 0.987292, -0.144436,
		16.881042, 11.658842, 22.125051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.251537, 11.117401, 22.816843>,  <16.927439, 10.967738, 22.226156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.251537, 11.117401, 22.816843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.054522, 11.443172, 22.694130>,  <16.936312, 11.638634, 22.620502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.054522, 11.443172, 22.694130>,  <17.251537, 11.117401, 22.816843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.054522, 11.443172, 22.694130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277747, 0.186975, 0.942283,
		0.824780, 0.549319, 0.134113,
		-0.492538, 0.814426, -0.306785,
		16.906759, 11.687499, 22.602095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.475449, 11.715063, 23.244753>,  <17.251537, 11.117401, 22.816843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.475449, 11.715063, 23.244753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.115917, 11.796975, 23.089746>,  <16.900198, 11.846123, 22.996742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.115917, 11.796975, 23.089746>,  <17.475449, 11.715063, 23.244753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.115917, 11.796975, 23.089746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382339, 0.065941, 0.921666,
		0.214293, 0.976584, 0.019026,
		-0.898830, 0.204781, -0.387517,
		16.846268, 11.858409, 22.973492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.249163, 12.268991, 23.693136>,  <17.475449, 11.715063, 23.244753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.249163, 12.268991, 23.693136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.929066, 12.110627, 23.512974>,  <16.737007, 12.015609, 23.404877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.929066, 12.110627, 23.512974>,  <17.249163, 12.268991, 23.693136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.929066, 12.110627, 23.512974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419889, -0.166305, 0.892209,
		-0.428140, 0.903104, -0.033154,
		-0.800243, -0.395911, -0.450405,
		16.688993, 11.991854, 23.377851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.535889, 12.680896, 23.872314>,  <17.249163, 12.268991, 23.693136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.535889, 12.680896, 23.872314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.475946, 12.304552, 23.750772>,  <16.439981, 12.078746, 23.677847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.475946, 12.304552, 23.750772>,  <16.535889, 12.680896, 23.872314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.475946, 12.304552, 23.750772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549985, -0.176060, 0.816407,
		-0.821620, 0.289459, -0.491074,
		-0.149858, -0.940859, -0.303853,
		16.430988, 12.022294, 23.659616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.922824, 12.567657, 24.076420>,  <16.535889, 12.680896, 23.872314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.922824, 12.567657, 24.076420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.994757, 12.179460, 24.012163>,  <16.037916, 11.946542, 23.973608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.994757, 12.179460, 24.012163>,  <15.922824, 12.567657, 24.076420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.994757, 12.179460, 24.012163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475193, -0.228692, 0.849642,
		-0.861309, -0.076455, -0.502296,
		0.179831, -0.970492, -0.160643,
		16.048706, 11.888312, 23.963970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.331562, 12.204976, 24.090965>,  <15.922824, 12.567657, 24.076420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.331562, 12.204976, 24.090965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.578177, 11.896992, 24.156740>,  <15.726147, 11.712201, 24.196205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.578177, 11.896992, 24.156740>,  <15.331562, 12.204976, 24.090965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.578177, 11.896992, 24.156740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521814, -0.243212, 0.817654,
		-0.589569, -0.589921, -0.551726,
		0.616538, -0.769962, 0.164438,
		15.763139, 11.666003, 24.206072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.892834, 11.625755, 24.265263>,  <15.331562, 12.204976, 24.090965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.892834, 11.625755, 24.265263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.248533, 11.530390, 24.421413>,  <15.461953, 11.473170, 24.515104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.248533, 11.530390, 24.421413>,  <14.892834, 11.625755, 24.265263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.248533, 11.530390, 24.421413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448060, -0.282205, 0.848294,
		-0.092080, -0.929257, -0.357775,
		0.889249, -0.238416, 0.390377,
		15.515308, 11.458865, 24.538527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.824876, 10.939754, 24.524960>,  <14.892834, 11.625755, 24.265263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.824876, 10.939754, 24.524960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.157840, 11.075742, 24.700010>,  <15.357618, 11.157334, 24.805040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.157840, 11.075742, 24.700010>,  <14.824876, 10.939754, 24.524960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.157840, 11.075742, 24.700010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223204, -0.517130, 0.826290,
		0.507222, -0.785492, -0.354582,
		0.832409, 0.339969, 0.437625,
		15.407562, 11.177732, 24.831297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.018355, 10.403191, 24.893356>,  <14.824876, 10.939754, 24.524960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.018355, 10.403191, 24.893356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.231140, 10.695812, 25.063929>,  <15.358811, 10.871386, 25.166273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.231140, 10.695812, 25.063929>,  <15.018355, 10.403191, 24.893356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.231140, 10.695812, 25.063929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099811, -0.445916, 0.889492,
		0.840865, -0.515739, -0.164193,
		0.531962, 0.731554, 0.426432,
		15.390729, 10.915278, 25.191858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.390733, 10.041771, 25.305101>,  <15.018355, 10.403191, 24.893356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.390733, 10.041771, 25.305101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.361068, 10.415534, 25.444462>,  <15.343268, 10.639791, 25.528078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.361068, 10.415534, 25.444462>,  <15.390733, 10.041771, 25.305101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.361068, 10.415534, 25.444462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175925, -0.356142, 0.917722,
		0.981606, 0.006769, 0.190798,
		-0.074163, 0.934407, 0.348400,
		15.338819, 10.695856, 25.548983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.858123, 10.114325, 25.974785>,  <15.390733, 10.041771, 25.305101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.858123, 10.114325, 25.974785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.553375, 10.372026, 25.947979>,  <15.370526, 10.526648, 25.931896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.553375, 10.372026, 25.947979>,  <15.858123, 10.114325, 25.974785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.553375, 10.372026, 25.947979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176701, -0.107187, 0.978411,
		0.623162, 0.757263, 0.195503,
		-0.761870, 0.644254, -0.067014,
		15.324815, 10.565303, 25.927876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.804655, 10.729393, 26.359751>,  <15.858123, 10.114325, 25.974785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.804655, 10.729393, 26.359751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.412149, 10.718990, 26.283388>,  <15.176646, 10.712749, 26.237570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.412149, 10.718990, 26.283388>,  <15.804655, 10.729393, 26.359751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.412149, 10.718990, 26.283388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189565, 0.307470, 0.932485,
		0.034446, 0.951202, -0.306639,
		-0.981264, -0.026007, -0.190906,
		15.117770, 10.711188, 26.226116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.412678, 11.422418, 26.532942>,  <15.804655, 10.729393, 26.359751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.412678, 11.422418, 26.532942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.165229, 11.109718, 26.564373>,  <15.016760, 10.922098, 26.583233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.165229, 11.109718, 26.564373>,  <15.412678, 11.422418, 26.532942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.165229, 11.109718, 26.564373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285420, 0.316784, 0.904535,
		-0.732013, 0.537137, -0.419096,
		-0.618622, -0.781750, 0.078580,
		14.979642, 10.875194, 26.587948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.826106, 11.664805, 26.935658>,  <15.412678, 11.422418, 26.532942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.826106, 11.664805, 26.935658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.815888, 11.266280, 26.968414>,  <14.809757, 11.027164, 26.988070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.815888, 11.266280, 26.968414>,  <14.826106, 11.664805, 26.935658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.815888, 11.266280, 26.968414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188026, 0.085247, 0.978457,
		-0.981832, 0.009596, -0.189511,
		-0.025545, -0.996314, 0.081894,
		14.808225, 10.967386, 26.992983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.143873, 11.450100, 27.262989>,  <14.826106, 11.664805, 26.935658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.143873, 11.450100, 27.262989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.357284, 11.120740, 27.340305>,  <14.485330, 10.923123, 27.386696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.357284, 11.120740, 27.340305>,  <14.143873, 11.450100, 27.262989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.357284, 11.120740, 27.340305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309774, 0.022420, 0.950546,
		-0.787014, -0.567017, -0.243107,
		0.533526, -0.823401, 0.193292,
		14.517342, 10.873720, 27.398293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.716699, 10.943422, 27.626028>,  <14.143873, 11.450100, 27.262989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.716699, 10.943422, 27.626028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.096238, 10.858155, 27.719189>,  <14.323962, 10.806994, 27.775085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.096238, 10.858155, 27.719189>,  <13.716699, 10.943422, 27.626028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.096238, 10.858155, 27.719189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259036, -0.103845, 0.960269,
		-0.180517, -0.971480, -0.153753,
		0.948848, -0.213173, 0.232902,
		14.380893, 10.794205, 27.789059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.679331, 10.516519, 28.254864>,  <13.716699, 10.943422, 27.626028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.679331, 10.516519, 28.254864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.073280, 10.585214, 28.264080>,  <14.309649, 10.626431, 28.269609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.073280, 10.585214, 28.264080>,  <13.679331, 10.516519, 28.254864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.073280, 10.585214, 28.264080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030753, -0.304107, 0.952142,
		0.170526, -0.937030, -0.304788,
		0.984873, 0.171738, 0.023042,
		14.368742, 10.636735, 28.270992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.998568, 10.002893, 28.684860>,  <13.679331, 10.516519, 28.254864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.998568, 10.002893, 28.684860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.287024, 10.279977, 28.689114>,  <14.460097, 10.446227, 28.691666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.287024, 10.279977, 28.689114>,  <13.998568, 10.002893, 28.684860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.287024, 10.279977, 28.689114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079015, 0.066989, 0.994620,
		0.688269, -0.718100, 0.103043,
		0.721140, 0.692709, 0.010635,
		14.503366, 10.487789, 28.692305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.517108, 9.842771, 29.290466>,  <13.998568, 10.002893, 28.684860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.517108, 9.842771, 29.290466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.554082, 10.234207, 29.216911>,  <14.576266, 10.469069, 29.172779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.554082, 10.234207, 29.216911>,  <14.517108, 9.842771, 29.290466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.554082, 10.234207, 29.216911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130963, 0.195021, 0.972016,
		0.987069, -0.065765, 0.146186,
		0.092434, 0.978592, -0.183886,
		14.581812, 10.527784, 29.161745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.076966, 10.084061, 29.704012>,  <14.517108, 9.842771, 29.290466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.076966, 10.084061, 29.704012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.872439, 10.416276, 29.615686>,  <14.749723, 10.615605, 29.562691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.872439, 10.416276, 29.615686>,  <15.076966, 10.084061, 29.704012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.872439, 10.416276, 29.615686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124212, 0.325665, 0.937291,
		0.850368, 0.451826, -0.269681,
		-0.511318, 0.830539, -0.220812,
		14.719044, 10.665438, 29.549442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.461663, 10.704364, 29.953951>,  <15.076966, 10.084061, 29.704012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.461663, 10.704364, 29.953951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.080635, 10.824491, 29.934273>,  <14.852018, 10.896566, 29.922466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.080635, 10.824491, 29.934273>,  <15.461663, 10.704364, 29.953951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.080635, 10.824491, 29.934273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076044, 0.391425, 0.917063,
		0.294666, 0.869825, -0.395697,
		-0.952570, 0.300317, -0.049195,
		14.794864, 10.914586, 29.919514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.383425, 11.388669, 30.169481>,  <15.461663, 10.704364, 29.953951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.383425, 11.388669, 30.169481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.007143, 11.263231, 30.221224>,  <14.781374, 11.187968, 30.252270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.007143, 11.263231, 30.221224>,  <15.383425, 11.388669, 30.169481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.007143, 11.263231, 30.221224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039963, 0.481120, 0.875744,
		-0.336864, 0.818647, -0.465124,
		-0.940705, -0.313595, 0.129356,
		14.724932, 11.169153, 30.260031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.252032, 11.297719, 30.949890>,  <15.383425, 11.388669, 30.169481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.252032, 11.297719, 30.949890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.263615, 11.629358, 31.173231>,  <15.270564, 11.828342, 31.307236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.263615, 11.629358, 31.173231>,  <15.252032, 11.297719, 30.949890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.263615, 11.629358, 31.173231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280017, 0.529492, -0.800768,
		-0.959558, 0.179536, -0.216830,
		0.028957, 0.829099, 0.558351,
		15.272302, 11.878088, 31.340736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.931822, 11.849565, 30.550699>,  <15.252032, 11.297719, 30.949890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.931822, 11.849565, 30.550699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.188389, 11.991051, 30.823013>,  <15.342329, 12.075942, 30.986403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.188389, 11.991051, 30.823013>,  <14.931822, 11.849565, 30.550699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.188389, 11.991051, 30.823013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418378, 0.582540, -0.696855,
		-0.643073, 0.731801, 0.225664,
		0.641417, 0.353716, 0.680786,
		15.380814, 12.097165, 31.027248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.957228, 12.570293, 30.453979>,  <14.931822, 11.849565, 30.550699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.957228, 12.570293, 30.453979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.295539, 12.529877, 30.663532>,  <15.498526, 12.505627, 30.789263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.295539, 12.529877, 30.663532>,  <14.957228, 12.570293, 30.453979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.295539, 12.529877, 30.663532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499730, 0.493979, -0.711516,
		-0.186894, 0.863583, 0.468290,
		0.845778, -0.101041, 0.523880,
		15.549273, 12.499564, 30.820696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.205062, 13.190144, 30.473515>,  <14.957228, 12.570293, 30.453979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.205062, 13.190144, 30.473515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.524337, 12.955227, 30.527163>,  <15.715901, 12.814277, 30.559351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.524337, 12.955227, 30.527163>,  <15.205062, 13.190144, 30.473515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.524337, 12.955227, 30.527163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502286, 0.525909, -0.686388,
		0.332576, 0.615231, 0.714761,
		0.798187, -0.587291, 0.134118,
		15.763793, 12.779039, 30.567398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.651868, 13.633115, 30.418165>,  <15.205062, 13.190144, 30.473515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.651868, 13.633115, 30.418165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.851995, 13.297599, 30.332272>,  <15.972072, 13.096289, 30.280735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.851995, 13.297599, 30.332272>,  <15.651868, 13.633115, 30.418165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.851995, 13.297599, 30.332272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554427, 0.500856, -0.664646,
		0.665050, 0.213480, 0.715636,
		0.500319, -0.838791, -0.214735,
		16.002090, 13.045961, 30.267851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.272585, 13.825748, 30.381538>,  <15.651868, 13.633115, 30.418165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.272585, 13.825748, 30.381538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.300159, 13.463446, 30.214277>,  <16.316704, 13.246064, 30.113920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.300159, 13.463446, 30.214277>,  <16.272585, 13.825748, 30.381538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.300159, 13.463446, 30.214277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604941, 0.371248, -0.704429,
		0.793280, -0.204397, 0.573523,
		0.068937, -0.905757, -0.418152,
		16.320841, 13.191718, 30.088831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.794268, 13.854786, 30.013821>,  <16.272585, 13.825748, 30.381538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.794268, 13.854786, 30.013821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.654110, 13.511206, 29.864460>,  <16.570015, 13.305058, 29.774843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.654110, 13.511206, 29.864460>,  <16.794268, 13.854786, 30.013821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.654110, 13.511206, 29.864460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406862, 0.219503, -0.886726,
		0.843616, -0.462627, 0.272561,
		-0.350395, -0.858950, -0.373401,
		16.548992, 13.253521, 29.752439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.314213, 13.490634, 29.663977>,  <16.794268, 13.854786, 30.013821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.314213, 13.490634, 29.663977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.976915, 13.357673, 29.495003>,  <16.774536, 13.277896, 29.393620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.976915, 13.357673, 29.495003>,  <17.314213, 13.490634, 29.663977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.976915, 13.357673, 29.495003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366681, 0.218924, -0.904222,
		0.393047, -0.917377, -0.062720,
		-0.843243, -0.332403, -0.422433,
		16.723942, 13.257952, 29.368273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.523722, 13.165176, 29.091125>,  <17.314213, 13.490634, 29.663977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.523722, 13.165176, 29.091125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.129181, 13.170797, 29.025501>,  <16.892456, 13.174170, 28.986128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.129181, 13.170797, 29.025501>,  <17.523722, 13.165176, 29.091125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.129181, 13.170797, 29.025501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163545, -0.032146, -0.986012,
		-0.019118, -0.999385, 0.029411,
		-0.986350, 0.014040, -0.164059,
		16.833275, 13.175013, 28.976284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.362749, 12.553401, 28.636717>,  <17.523722, 13.165176, 29.091125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.362749, 12.553401, 28.636717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.078844, 12.833784, 28.608740>,  <16.908501, 13.002014, 28.591953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.078844, 12.833784, 28.608740>,  <17.362749, 12.553401, 28.636717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.078844, 12.833784, 28.608740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104343, 0.006420, -0.994521,
		-0.696669, -0.713173, -0.077696,
		-0.709764, 0.700959, -0.069942,
		16.865915, 13.044071, 28.587757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.023544, 12.313360, 28.089294>,  <17.362749, 12.553401, 28.636717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.023544, 12.313360, 28.089294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.919788, 12.698944, 28.112957>,  <16.857534, 12.930294, 28.127155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.919788, 12.698944, 28.112957>,  <17.023544, 12.313360, 28.089294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.919788, 12.698944, 28.112957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085171, 0.083847, -0.992832,
		-0.962009, -0.252494, -0.103850,
		-0.259392, 0.963959, 0.059156,
		16.841970, 12.988132, 28.130703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.603447, 12.431300, 27.592670>,  <17.023544, 12.313360, 28.089294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.603447, 12.431300, 27.592670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.706251, 12.806094, 27.687330>,  <16.767935, 13.030971, 27.744125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.706251, 12.806094, 27.687330>,  <16.603447, 12.431300, 27.592670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.706251, 12.806094, 27.687330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095694, 0.218997, -0.971022,
		-0.961659, 0.272211, -0.033379,
		0.257012, 0.936986, 0.236649,
		16.783356, 13.087190, 27.758326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.214752, 12.754495, 27.141912>,  <16.603447, 12.431300, 27.592670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.214752, 12.754495, 27.141912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.498232, 13.017505, 27.244209>,  <16.668320, 13.175311, 27.305588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.498232, 13.017505, 27.244209>,  <16.214752, 12.754495, 27.141912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.498232, 13.017505, 27.244209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111940, 0.253103, -0.960941,
		-0.696573, 0.709647, 0.105771,
		0.708700, 0.657526, 0.255742,
		16.710842, 13.214763, 27.320932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.113657, 13.406189, 26.826078>,  <16.214752, 12.754495, 27.141912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.113657, 13.406189, 26.826078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.509974, 13.375873, 26.870960>,  <16.747763, 13.357683, 26.897890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.509974, 13.375873, 26.870960>,  <16.113657, 13.406189, 26.826078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.509974, 13.375873, 26.870960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130749, 0.320067, -0.938330,
		0.035203, 0.944359, 0.327028,
		0.990790, -0.075791, 0.112207,
		16.807211, 13.353135, 26.904623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.385916, 14.027760, 26.442320>,  <16.113657, 13.406189, 26.826078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.385916, 14.027760, 26.442320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.706633, 13.789243, 26.458155>,  <16.899063, 13.646132, 26.467655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.706633, 13.789243, 26.458155>,  <16.385916, 14.027760, 26.442320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.706633, 13.789243, 26.458155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252983, 0.278657, -0.926472,
		0.541416, 0.752852, 0.374276,
		0.801791, -0.596292, 0.039589,
		16.947170, 13.610355, 26.470032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.950249, 14.486746, 26.304035>,  <16.385916, 14.027760, 26.442320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.950249, 14.486746, 26.304035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.073627, 14.116807, 26.215023>,  <17.147655, 13.894844, 26.161615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.073627, 14.116807, 26.215023>,  <16.950249, 14.486746, 26.304035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.073627, 14.116807, 26.215023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420684, 0.342442, -0.840094,
		0.853162, 0.165510, 0.494694,
		0.308448, -0.924846, -0.222530,
		17.166162, 13.839354, 26.148264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.659248, 14.676774, 25.963743>,  <16.950249, 14.486746, 26.304035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.659248, 14.676774, 25.963743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.559092, 14.302746, 25.863386>,  <17.498997, 14.078329, 25.803171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.559092, 14.302746, 25.863386>,  <17.659248, 14.676774, 25.963743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.559092, 14.302746, 25.863386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486000, 0.102728, -0.867900,
		0.837321, -0.339250, 0.428722,
		-0.250394, -0.935070, -0.250892,
		17.483973, 14.022224, 25.788118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.302546, 14.326493, 25.687834>,  <17.659248, 14.676774, 25.963743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.302546, 14.326493, 25.687834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.004803, 14.106007, 25.537052>,  <17.826157, 13.973715, 25.446583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.004803, 14.106007, 25.537052>,  <18.302546, 14.326493, 25.687834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.004803, 14.106007, 25.537052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520559, -0.125394, -0.844568,
		0.418272, -0.824886, 0.380279,
		-0.744357, -0.551216, -0.376953,
		17.781496, 13.940641, 25.423965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.542601, 13.632558, 25.446308>,  <18.302546, 14.326493, 25.687834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.542601, 13.632558, 25.446308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.210140, 13.691228, 25.231766>,  <18.010664, 13.726430, 25.103041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.210140, 13.691228, 25.231766>,  <18.542601, 13.632558, 25.446308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.210140, 13.691228, 25.231766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512673, -0.171352, -0.841311,
		-0.215310, -0.974230, 0.067220,
		-0.831148, 0.146681, -0.536355,
		17.960794, 13.735230, 25.070860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.534742, 13.086429, 24.754732>,  <18.542601, 13.632558, 25.446308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.534742, 13.086429, 24.754732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.243563, 13.346628, 24.668068>,  <18.068855, 13.502748, 24.616070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.243563, 13.346628, 24.668068>,  <18.534742, 13.086429, 24.754732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.243563, 13.346628, 24.668068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116890, -0.193628, -0.974087,
		-0.675594, -0.734411, 0.064914,
		-0.727950, 0.650499, -0.216660,
		18.025177, 13.541778, 24.603069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.387392, 12.808235, 24.155859>,  <18.534742, 13.086429, 24.754732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.387392, 12.808235, 24.155859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.204081, 13.163755, 24.157301>,  <18.094093, 13.377068, 24.158167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.204081, 13.163755, 24.157301>,  <18.387392, 12.808235, 24.155859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.204081, 13.163755, 24.157301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012248, 0.010370, -0.999871,
		-0.888723, -0.458178, -0.015638,
		-0.458281, 0.888801, 0.003605,
		18.066597, 13.430395, 24.158382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.883009, 12.636983, 23.749294>,  <18.387392, 12.808235, 24.155859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.883009, 12.636983, 23.749294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.930315, 13.034173, 23.747768>,  <17.958698, 13.272487, 23.746853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.930315, 13.034173, 23.747768>,  <17.883009, 12.636983, 23.749294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.930315, 13.034173, 23.747768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116944, -0.017745, -0.992980,
		-0.986072, 0.116987, -0.118221,
		0.118264, 0.992975, -0.003817,
		17.965794, 13.332066, 23.746624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.518000, 12.794990, 23.215149>,  <17.883009, 12.636983, 23.749294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.518000, 12.794990, 23.215149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.765753, 13.106791, 23.252548>,  <17.914404, 13.293871, 23.274988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.765753, 13.106791, 23.252548>,  <17.518000, 12.794990, 23.215149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.765753, 13.106791, 23.252548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023645, 0.100515, -0.994655,
		-0.784733, 0.618283, 0.043826,
		0.619383, 0.779502, 0.093497,
		17.951569, 13.340641, 23.280598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.360868, 13.278592, 22.576481>,  <17.518000, 12.794990, 23.215149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.360868, 13.278592, 22.576481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.703569, 13.419704, 22.726959>,  <17.909189, 13.504372, 22.817245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.703569, 13.419704, 22.726959>,  <17.360868, 13.278592, 22.576481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.703569, 13.419704, 22.726959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383331, 0.052379, -0.922125,
		-0.345013, 0.934239, -0.090356,
		0.856752, 0.352781, 0.376194,
		17.960594, 13.525538, 22.839817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.529839, 13.873198, 22.215742>,  <17.360868, 13.278592, 22.576481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.529839, 13.873198, 22.215742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.882524, 13.750865, 22.359434>,  <18.094137, 13.677465, 22.445648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.882524, 13.750865, 22.359434>,  <17.529839, 13.873198, 22.215742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.882524, 13.750865, 22.359434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382913, 0.019103, -0.923587,
		0.275599, 0.951894, 0.133950,
		0.881716, -0.305831, 0.359228,
		18.147039, 13.659116, 22.467203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.067736, 14.296003, 21.876217>,  <17.529839, 13.873198, 22.215742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.067736, 14.296003, 21.876217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.238443, 13.956422, 22.000889>,  <18.340868, 13.752673, 22.075693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.238443, 13.956422, 22.000889>,  <18.067736, 14.296003, 21.876217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.238443, 13.956422, 22.000889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576843, -0.009896, -0.816795,
		0.696505, 0.528374, 0.485490,
		0.426769, -0.848954, 0.311682,
		18.366474, 13.701735, 22.094393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.716734, 14.403335, 21.721191>,  <18.067736, 14.296003, 21.876217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.716734, 14.403335, 21.721191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.729391, 14.006114, 21.766533>,  <18.736986, 13.767782, 21.793737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.729391, 14.006114, 21.766533>,  <18.716734, 14.403335, 21.721191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.729391, 14.006114, 21.766533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619369, -0.069527, -0.782015,
		0.784462, 0.094953, 0.612865,
		0.031644, -0.993051, 0.113352,
		18.738884, 13.708199, 21.800539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.443655, 14.214107, 21.860170>,  <18.716734, 14.403335, 21.721191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.443655, 14.214107, 21.860170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.241459, 13.905540, 21.705563>,  <19.120142, 13.720401, 21.612799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.241459, 13.905540, 21.705563>,  <19.443655, 14.214107, 21.860170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.241459, 13.905540, 21.705563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734609, -0.149802, -0.661747,
		0.452580, -0.618448, 0.642412,
		-0.505490, -0.771415, -0.386520,
		19.089811, 13.674116, 21.589607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.939178, 13.981240, 21.618591>,  <19.443655, 14.214107, 21.860170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.939178, 13.981240, 21.618591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.644381, 13.779297, 21.438833>,  <19.467503, 13.658131, 21.330978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.644381, 13.779297, 21.438833>,  <19.939178, 13.981240, 21.618591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.644381, 13.779297, 21.438833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624405, -0.254009, -0.738646,
		0.258761, -0.824983, 0.502439,
		-0.736994, -0.504859, -0.449396,
		19.423283, 13.627839, 21.304014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.081966, 13.251115, 21.410099>,  <19.939178, 13.981240, 21.618591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.081966, 13.251115, 21.410099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.787874, 13.388425, 21.176313>,  <19.611420, 13.470811, 21.036041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.787874, 13.388425, 21.176313>,  <20.081966, 13.251115, 21.410099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.787874, 13.388425, 21.176313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518884, -0.269752, -0.811168,
		-0.436115, -0.899664, 0.020209,
		-0.735230, 0.343277, -0.584464,
		19.567305, 13.491407, 21.000975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.053835, 12.768015, 20.861544>,  <20.081966, 13.251115, 21.410099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.053835, 12.768015, 20.861544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.869482, 13.085463, 20.702669>,  <19.758871, 13.275931, 20.607344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.869482, 13.085463, 20.702669>,  <20.053835, 12.768015, 20.861544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.869482, 13.085463, 20.702669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446946, -0.179087, -0.876452,
		-0.766700, -0.581460, -0.272167,
		-0.460880, 0.793619, -0.397188,
		19.731218, 13.323548, 20.583513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.059568, 12.530217, 20.196033>,  <20.053835, 12.768015, 20.861544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.059568, 12.530217, 20.196033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.968452, 12.916953, 20.149845>,  <19.913782, 13.148994, 20.122133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.968452, 12.916953, 20.149845>,  <20.059568, 12.530217, 20.196033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.968452, 12.916953, 20.149845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521330, 0.020942, -0.853099,
		-0.822391, -0.254526, -0.508812,
		-0.227791, 0.966839, -0.115469,
		19.900116, 13.207005, 20.115204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.782578, 12.523559, 19.570570>,  <20.059568, 12.530217, 20.196033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.782578, 12.523559, 19.570570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.888014, 12.906324, 19.619287>,  <19.951275, 13.135984, 19.648518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.888014, 12.906324, 19.619287>,  <19.782578, 12.523559, 19.570570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.888014, 12.906324, 19.619287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197235, 0.070126, -0.977845,
		-0.944255, 0.281772, -0.170253,
		0.263590, 0.956915, 0.121792,
		19.967091, 13.193399, 19.655825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.373339, 13.017345, 19.126604>,  <19.782578, 12.523559, 19.570570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.373339, 13.017345, 19.126604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.700037, 13.225184, 19.226959>,  <19.896055, 13.349888, 19.287172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.700037, 13.225184, 19.226959>,  <19.373339, 13.017345, 19.126604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.700037, 13.225184, 19.226959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060652, 0.355094, -0.932861,
		-0.573801, 0.777127, 0.258507,
		0.816746, 0.519598, 0.250887,
		19.945061, 13.381063, 19.302225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.359055, 13.707551, 18.686970>,  <19.373339, 13.017345, 19.126604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.359055, 13.707551, 18.686970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.733841, 13.705289, 18.826719>,  <19.958714, 13.703932, 18.910568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.733841, 13.705289, 18.826719>,  <19.359055, 13.707551, 18.686970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.733841, 13.705289, 18.826719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303504, 0.508622, -0.805723,
		-0.173141, 0.860972, 0.478278,
		0.936967, -0.005655, 0.349372,
		20.014931, 13.703592, 18.931530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.653965, 14.276850, 18.371143>,  <19.359055, 13.707551, 18.686970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.653965, 14.276850, 18.371143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.993477, 14.116721, 18.509312>,  <20.197184, 14.020644, 18.592213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.993477, 14.116721, 18.509312>,  <19.653965, 14.276850, 18.371143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.993477, 14.116721, 18.509312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502736, 0.408639, -0.761755,
		0.163794, 0.820218, 0.548100,
		0.848781, -0.400320, 0.345420,
		20.248112, 13.996625, 18.612938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.101887, 14.824761, 18.334553>,  <19.653965, 14.276850, 18.371143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.101887, 14.824761, 18.334553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.300999, 14.478457, 18.313862>,  <20.420465, 14.270675, 18.301447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.300999, 14.478457, 18.313862>,  <20.101887, 14.824761, 18.334553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.300999, 14.478457, 18.313862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557277, 0.364972, -0.745813,
		0.664575, 0.342423, 0.664144,
		0.497778, -0.865761, -0.051727,
		20.450333, 14.218729, 18.298344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.761215, 14.999397, 18.387857>,  <20.101887, 14.824761, 18.334553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.761215, 14.999397, 18.387857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.757238, 14.640453, 18.211382>,  <20.754852, 14.425087, 18.105495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.757238, 14.640453, 18.211382>,  <20.761215, 14.999397, 18.387857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.757238, 14.640453, 18.211382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600345, 0.347487, -0.720304,
		0.799679, -0.272028, 0.535269,
		-0.009944, -0.897359, -0.441190,
		20.754255, 14.371245, 18.079025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.474157, 14.658629, 18.311192>,  <20.761215, 14.999397, 18.387857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.474157, 14.658629, 18.311192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.226839, 14.525407, 18.026438>,  <21.078447, 14.445473, 17.855585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.226839, 14.525407, 18.026438>,  <21.474157, 14.658629, 18.311192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.226839, 14.525407, 18.026438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672416, 0.244766, -0.698532,
		0.406897, -0.910583, 0.072615,
		-0.618298, -0.333058, -0.711885,
		21.041349, 14.425489, 17.812872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.946953, 14.598802, 17.759880>,  <21.474157, 14.658629, 18.311192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.946953, 14.598802, 17.759880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.595293, 14.519542, 17.586521>,  <21.384296, 14.471986, 17.482506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.595293, 14.519542, 17.586521>,  <21.946953, 14.598802, 17.759880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.595293, 14.519542, 17.586521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332159, 0.397339, -0.855448,
		0.341708, -0.896025, -0.283505,
		-0.879150, -0.198145, -0.433397,
		21.331549, 14.460097, 17.456501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.142649, 14.327221, 17.194220>,  <21.946953, 14.598802, 17.759880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.142649, 14.327221, 17.194220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.764048, 14.439754, 17.130997>,  <21.536886, 14.507273, 17.093063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.764048, 14.439754, 17.130997>,  <22.142649, 14.327221, 17.194220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.764048, 14.439754, 17.130997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269922, 0.421827, -0.865565,
		-0.176837, -0.861925, -0.475199,
		-0.946504, 0.281331, -0.158058,
		21.480097, 14.524153, 17.083580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.827835, 14.267118, 16.574326>,  <22.142649, 14.327221, 17.194220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.827835, 14.267118, 16.574326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.647007, 14.590708, 16.724628>,  <21.538511, 14.784863, 16.814810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.647007, 14.590708, 16.724628>,  <21.827835, 14.267118, 16.574326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.647007, 14.590708, 16.724628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127168, 0.475407, -0.870527,
		-0.882872, -0.345754, -0.317792,
		-0.452068, 0.808976, 0.375755,
		21.511387, 14.833401, 16.837355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.818865, 14.715405, 16.001591>,  <21.827835, 14.267118, 16.574326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.818865, 14.715405, 16.001591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.604198, 14.916379, 16.272751>,  <21.475399, 15.036963, 16.435448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.604198, 14.916379, 16.272751>,  <21.818865, 14.715405, 16.001591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.604198, 14.916379, 16.272751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041834, 0.786563, -0.616091,
		-0.842758, -0.358994, -0.401102,
		-0.536664, 0.502436, 0.677901,
		21.443199, 15.067110, 16.476122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.148373, 14.872966, 15.785890>,  <21.818865, 14.715405, 16.001591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.148373, 14.872966, 15.785890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.264132, 15.149132, 16.051092>,  <21.333586, 15.314831, 16.210215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.264132, 15.149132, 16.051092>,  <21.148373, 14.872966, 15.785890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.264132, 15.149132, 16.051092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048757, 0.702379, -0.710131,
		-0.955967, 0.173183, 0.236929,
		0.289396, 0.690414, 0.663007,
		21.350950, 15.356256, 16.249994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.542597, 15.395462, 15.950640>,  <21.148373, 14.872966, 15.785890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.542597, 15.395462, 15.950640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.920155, 15.523324, 15.983830>,  <21.146688, 15.600041, 16.003744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.920155, 15.523324, 15.983830>,  <20.542597, 15.395462, 15.950640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.920155, 15.523324, 15.983830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207138, 0.768725, -0.605108,
		-0.257211, 0.553970, 0.791808,
		0.943894, 0.319654, 0.082976,
		21.203323, 15.619220, 16.008724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.450190, 16.030493, 15.838988>,  <20.542597, 15.395462, 15.950640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.450190, 16.030493, 15.838988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.848942, 16.036610, 15.808019>,  <21.088194, 16.040279, 15.789437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.848942, 16.036610, 15.808019>,  <20.450190, 16.030493, 15.838988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.848942, 16.036610, 15.808019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062179, 0.756332, -0.651227,
		0.048600, 0.654010, 0.754923,
		0.996881, 0.015290, -0.077423,
		21.148006, 16.041197, 15.784792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.619867, 16.477268, 15.311636>,  <20.450190, 16.030493, 15.838988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.619867, 16.477268, 15.311636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.994568, 16.346418, 15.361411>,  <21.219389, 16.267908, 15.391276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.994568, 16.346418, 15.361411>,  <20.619867, 16.477268, 15.311636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.994568, 16.346418, 15.361411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328592, 0.699579, -0.634520,
		0.120514, 0.635277, 0.762823,
		0.936752, -0.327126, 0.124438,
		21.275593, 16.248281, 15.398743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.085888, 17.044989, 15.444281>,  <20.619867, 16.477268, 15.311636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.085888, 17.044989, 15.444281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.342033, 16.764437, 15.319060>,  <21.495722, 16.596106, 15.243929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.342033, 16.764437, 15.319060>,  <21.085888, 17.044989, 15.444281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.342033, 16.764437, 15.319060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438066, 0.668304, -0.601222,
		0.630897, 0.247865, 0.735209,
		0.640365, -0.701380, -0.313049,
		21.534143, 16.554024, 15.225145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.822538, 17.287376, 15.655190>,  <21.085888, 17.044989, 15.444281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.822538, 17.287376, 15.655190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.764940, 17.060402, 15.330897>,  <21.730381, 16.924217, 15.136322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.764940, 17.060402, 15.330897>,  <21.822538, 17.287376, 15.655190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.764940, 17.060402, 15.330897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148987, 0.797498, -0.584637,
		0.978298, -0.204974, -0.030297,
		-0.143997, -0.567435, -0.810729,
		21.721741, 16.890171, 15.087679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.258877, 17.590439, 15.154874>,  <21.822538, 17.287376, 15.655190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.258877, 17.590439, 15.154874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.030611, 17.344782, 14.936822>,  <21.893652, 17.197388, 14.805990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.030611, 17.344782, 14.936822>,  <22.258877, 17.590439, 15.154874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.030611, 17.344782, 14.936822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002088, 0.662749, -0.748839,
		0.821180, -0.428475, -0.376926,
		-0.570666, -0.614144, -0.545131,
		21.859411, 17.160540, 14.773283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.585167, 17.395353, 14.567507>,  <22.258877, 17.590439, 15.154874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.585167, 17.395353, 14.567507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.194824, 17.363855, 14.486016>,  <21.960619, 17.344957, 14.437121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.194824, 17.363855, 14.486016>,  <22.585167, 17.395353, 14.567507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.194824, 17.363855, 14.486016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116784, 0.600110, -0.791347,
		0.184571, -0.796033, -0.576425,
		-0.975856, -0.078743, -0.203727,
		21.902067, 17.340233, 14.424898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.605291, 17.255064, 13.938979>,  <22.585167, 17.395353, 14.567507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.605291, 17.255064, 13.938979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.236429, 17.405468, 13.975301>,  <22.015112, 17.495710, 13.997094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.236429, 17.405468, 13.975301>,  <22.605291, 17.255064, 13.938979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.236429, 17.405468, 13.975301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193765, 0.652191, -0.732872,
		-0.334788, -0.658228, -0.674279,
		-0.922156, 0.376009, 0.090804,
		21.959782, 17.518270, 14.002542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.346889, 17.253269, 13.267838>,  <22.605291, 17.255064, 13.938979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.346889, 17.253269, 13.267838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.117254, 17.514874, 13.464893>,  <21.979473, 17.671837, 13.583127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.117254, 17.514874, 13.464893>,  <22.346889, 17.253269, 13.267838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.117254, 17.514874, 13.464893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142807, 0.672419, -0.726264,
		-0.806245, -0.346585, -0.479424,
		-0.574086, 0.654012, 0.492640,
		21.945028, 17.711077, 13.612685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.008354, 17.652140, 12.736871>,  <22.346889, 17.253269, 13.267838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.008354, 17.652140, 12.736871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.939760, 17.891787, 13.049704>,  <21.898603, 18.035574, 13.237403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.939760, 17.891787, 13.049704>,  <22.008354, 17.652140, 12.736871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.939760, 17.891787, 13.049704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090768, 0.800073, -0.592996,
		-0.980996, -0.030702, -0.191583,
		-0.171486, 0.599116, 0.782082,
		21.888315, 18.071522, 13.284328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.410488, 18.144026, 12.527933>,  <22.008354, 17.652140, 12.736871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.410488, 18.144026, 12.527933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.637644, 18.323240, 12.804126>,  <21.773937, 18.430769, 12.969841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.637644, 18.323240, 12.804126>,  <21.410488, 18.144026, 12.527933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.637644, 18.323240, 12.804126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121190, 0.784219, -0.608534,
		-0.814134, 0.429259, 0.391052,
		0.567889, 0.448037, 0.690481,
		21.808010, 18.457651, 13.011271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.089880, 18.808620, 12.633704>,  <21.410488, 18.144026, 12.527933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.089880, 18.808620, 12.633704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.468134, 18.827311, 12.762445>,  <21.695087, 18.838526, 12.839690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.468134, 18.827311, 12.762445>,  <21.089880, 18.808620, 12.633704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.468134, 18.827311, 12.762445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131200, 0.850718, -0.508985,
		-0.297590, 0.523542, 0.798339,
		0.945636, 0.046727, 0.321853,
		21.751825, 18.841330, 12.859001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.210711, 19.476080, 12.746164>,  <21.089880, 18.808620, 12.633704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.210711, 19.476080, 12.746164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.589825, 19.353067, 12.712393>,  <21.817293, 19.279259, 12.692130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.589825, 19.353067, 12.712393>,  <21.210711, 19.476080, 12.746164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.589825, 19.353067, 12.712393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249445, 0.879832, -0.404565,
		0.198700, 0.362380, 0.910604,
		0.947785, -0.307532, -0.084429,
		21.874161, 19.260807, 12.687064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.547380, 20.127781, 12.884632>,  <21.210711, 19.476080, 12.746164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.547380, 20.127781, 12.884632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.829945, 19.907066, 12.707311>,  <21.999483, 19.774637, 12.600918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.829945, 19.907066, 12.707311>,  <21.547380, 20.127781, 12.884632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.829945, 19.907066, 12.707311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420276, 0.830937, -0.364570,
		0.569522, 0.071227, 0.818884,
		0.706409, -0.551788, -0.443302,
		22.041866, 19.741529, 12.574320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.125153, 20.387671, 13.139682>,  <21.547380, 20.127781, 12.884632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.125153, 20.387671, 13.139682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.263920, 20.210365, 12.809067>,  <22.347181, 20.103983, 12.610698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.263920, 20.210365, 12.809067>,  <22.125153, 20.387671, 13.139682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.263920, 20.210365, 12.809067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394472, 0.868491, -0.300192,
		0.850905, -0.221904, 0.476151,
		0.346920, -0.443263, -0.826538,
		22.367996, 20.077387, 12.561106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.822891, 20.620562, 13.133537>,  <22.125153, 20.387671, 13.139682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.822891, 20.620562, 13.133537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.722059, 20.480785, 12.772573>,  <22.661560, 20.396919, 12.555994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.722059, 20.480785, 12.772573>,  <22.822891, 20.620562, 13.133537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.722059, 20.480785, 12.772573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418653, 0.801362, -0.427257,
		0.872460, -0.485499, -0.055711,
		-0.252078, -0.349442, -0.902412,
		22.646437, 20.375954, 12.501849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.420868, 20.825066, 12.787855>,  <22.822891, 20.620562, 13.133537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.420868, 20.825066, 12.787855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.144531, 20.751831, 12.508079>,  <22.978729, 20.707890, 12.340213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.144531, 20.751831, 12.508079>,  <23.420868, 20.825066, 12.787855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.144531, 20.751831, 12.508079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433940, 0.668791, -0.603668,
		0.578303, -0.720554, -0.382580,
		-0.690841, -0.183086, -0.699441,
		22.937279, 20.696905, 12.298246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.706854, 20.575813, 12.212553>,  <23.420868, 20.825066, 12.787855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.706854, 20.575813, 12.212553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.363029, 20.727139, 12.075130>,  <23.156734, 20.817934, 11.992677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.363029, 20.727139, 12.075130>,  <23.706854, 20.575813, 12.212553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.363029, 20.727139, 12.075130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503020, 0.507789, -0.699372,
		-0.090126, -0.773970, -0.626775,
		-0.859563, 0.378312, -0.343557,
		23.105160, 20.840631, 11.972063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.735319, 20.511543, 11.458164>,  <23.706854, 20.575813, 12.212553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.735319, 20.511543, 11.458164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.476202, 20.800951, 11.553564>,  <23.320732, 20.974596, 11.610804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.476202, 20.800951, 11.553564>,  <23.735319, 20.511543, 11.458164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.476202, 20.800951, 11.553564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437118, 0.609414, -0.661470,
		-0.623931, -0.324244, -0.711038,
		-0.647794, 0.723519, 0.238500,
		23.281864, 21.018007, 11.625113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.847107, 20.930660, 10.845778>,  <23.735319, 20.511543, 11.458164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.847107, 20.930660, 10.845778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.596510, 21.156092, 11.061142>,  <23.446152, 21.291349, 11.190360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.596510, 21.156092, 11.061142>,  <23.847107, 20.930660, 10.845778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.596510, 21.156092, 11.061142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349453, 0.820558, -0.452291,
		-0.696698, -0.095209, -0.711019,
		-0.626494, 0.563578, 0.538410,
		23.408562, 21.325165, 11.222665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.487690, 21.339762, 10.358669>,  <23.847107, 20.930660, 10.845778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.487690, 21.339762, 10.358669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.481936, 21.539099, 10.705414>,  <23.478483, 21.658701, 10.913461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.481936, 21.539099, 10.705414>,  <23.487690, 21.339762, 10.358669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.481936, 21.539099, 10.705414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376316, 0.805907, -0.457056,
		-0.926380, 0.319639, -0.199126,
		-0.014385, 0.498342, 0.866861,
		23.477621, 21.688601, 10.965472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.990486, 21.950212, 10.355654>,  <23.487690, 21.339762, 10.358669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.990486, 21.950212, 10.355654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.282846, 21.997467, 10.624526>,  <23.458263, 22.025820, 10.785850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.282846, 21.997467, 10.624526>,  <22.990486, 21.950212, 10.355654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.282846, 21.997467, 10.624526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333291, 0.797690, -0.502601,
		-0.595566, 0.591384, 0.543660,
		0.730902, 0.118135, 0.672180,
		23.502117, 22.032907, 10.826180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.076406, 22.724520, 10.468751>,  <22.990486, 21.950212, 10.355654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.076406, 22.724520, 10.468751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.405636, 22.552433, 10.617054>,  <23.603174, 22.449181, 10.706036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.405636, 22.552433, 10.617054>,  <23.076406, 22.724520, 10.468751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.405636, 22.552433, 10.617054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560693, 0.719450, -0.409897,
		-0.090396, 0.545257, 0.833381,
		0.823075, -0.430218, 0.370757,
		23.652557, 22.423368, 10.728281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.490776, 23.242796, 10.707682>,  <23.076406, 22.724520, 10.468751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.490776, 23.242796, 10.707682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.745153, 22.934223, 10.699033>,  <23.897779, 22.749079, 10.693844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.745153, 22.934223, 10.699033>,  <23.490776, 23.242796, 10.707682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.745153, 22.934223, 10.699033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725023, 0.606813, -0.325759,
		0.264422, 0.191488, 0.945205,
		0.635942, -0.771434, -0.021622,
		23.935936, 22.702793, 10.692546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.061501, 23.616417, 10.598428>,  <23.490776, 23.242796, 10.707682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.061501, 23.616417, 10.598428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.202225, 23.248348, 10.529709>,  <24.286659, 23.027508, 10.488478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.202225, 23.248348, 10.529709>,  <24.061501, 23.616417, 10.598428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.202225, 23.248348, 10.529709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850555, 0.390878, -0.351811,
		0.390878, -0.022351, 0.920171,
		0.351811, -0.920171, -0.171796,
		24.307768, 22.972298, 10.478170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.707359, 23.622040, 10.918736>,  <24.061501, 23.616417, 10.598428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.707359, 23.622040, 10.918736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.683851, 23.351349, 10.625183>,  <24.669746, 23.188934, 10.449051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.683851, 23.351349, 10.625183>,  <24.707359, 23.622040, 10.918736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.683851, 23.351349, 10.625183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736565, 0.466814, -0.489446,
		0.673809, -0.569317, 0.471020,
		-0.058771, -0.676730, -0.733882,
		24.666220, 23.148331, 10.405019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.341299, 23.527647, 10.894567>,  <24.707359, 23.622040, 10.918736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.341299, 23.527647, 10.894567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170921, 23.379671, 10.564302>,  <25.068695, 23.290886, 10.366144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170921, 23.379671, 10.564302>,  <25.341299, 23.527647, 10.894567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.170921, 23.379671, 10.564302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673658, 0.479502, -0.562372,
		0.603950, -0.795753, 0.044971,
		-0.425945, -0.369940, -0.825660,
		25.043139, 23.268688, 10.316605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.535036, 24.087378, 10.338569>,  <25.341299, 23.527647, 10.894567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.535036, 24.087378, 10.338569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857544, 24.104128, 10.102543>,  <26.051048, 24.114178, 9.960927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857544, 24.104128, 10.102543>,  <25.535036, 24.087378, 10.338569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.857544, 24.104128, 10.102543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433428, -0.720665, 0.541093,
		-0.402579, -0.692017, -0.599201,
		0.806269, 0.041878, -0.590064,
		26.099424, 24.116692, 9.925524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.517946, 23.431984, 10.054348>,  <25.535036, 24.087378, 10.338569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.517946, 23.431984, 10.054348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.890245, 23.577936, 10.063920>,  <26.113625, 23.665508, 10.069663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.890245, 23.577936, 10.063920>,  <25.517946, 23.431984, 10.054348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.890245, 23.577936, 10.063920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306561, -0.814303, 0.492880,
		0.199329, -0.451410, -0.869768,
		0.930746, 0.364882, 0.023929,
		26.169470, 23.687401, 10.071098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007006, 23.032152, 9.618745>,  <25.517946, 23.431984, 10.054348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007006, 23.032152, 9.618745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.159313, 23.200396, 9.948133>,  <26.250698, 23.301342, 10.145765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.159313, 23.200396, 9.948133>,  <26.007006, 23.032152, 9.618745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.159313, 23.200396, 9.948133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283833, -0.900728, 0.328828,
		0.880030, 0.108520, -0.462352,
		0.380769, 0.420610, 0.823470,
		26.273544, 23.326578, 10.195173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.696579, 22.858902, 9.674794>,  <26.007006, 23.032152, 9.618745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.696579, 22.858902, 9.674794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575777, 22.957954, 10.043027>,  <26.503296, 23.017385, 10.263967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575777, 22.957954, 10.043027>,  <26.696579, 22.858902, 9.674794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575777, 22.957954, 10.043027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306360, -0.889239, 0.339703,
		0.902738, 0.384622, 0.192692,
		-0.302006, 0.247630, 0.920582,
		26.485176, 23.032244, 10.319201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.145227, 22.594404, 10.170582>,  <26.696579, 22.858902, 9.674794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.145227, 22.594404, 10.170582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845022, 22.664690, 10.425409>,  <26.664900, 22.706861, 10.578306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845022, 22.664690, 10.425409>,  <27.145227, 22.594404, 10.170582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.845022, 22.664690, 10.425409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290208, -0.778448, 0.556594,
		0.593726, 0.602613, 0.533241,
		-0.750512, 0.175714, 0.637069,
		26.619869, 22.717403, 10.616529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301523, 22.194141, 10.697258>,  <27.145227, 22.594404, 10.170582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.301523, 22.194141, 10.697258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.943024, 22.325024, 10.817041>,  <26.727924, 22.403553, 10.888911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.943024, 22.325024, 10.817041>,  <27.301523, 22.194141, 10.697258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.943024, 22.325024, 10.817041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009824, -0.689617, 0.724108,
		0.443443, 0.646039, 0.621283,
		-0.896249, 0.327204, 0.299459,
		26.674149, 22.423185, 10.906879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417707, 22.329708, 11.413714>,  <27.301523, 22.194141, 10.697258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417707, 22.329708, 11.413714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032843, 22.282091, 11.315677>,  <26.801924, 22.253521, 11.256854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032843, 22.282091, 11.315677>,  <27.417707, 22.329708, 11.413714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032843, 22.282091, 11.315677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102268, -0.675976, 0.729793,
		-0.252555, 0.727245, 0.638225,
		-0.962163, -0.119043, -0.245095,
		26.744194, 22.246378, 11.242148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080034, 22.426008, 12.023401>,  <27.417707, 22.329708, 11.413714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080034, 22.426008, 12.023401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845209, 22.210321, 11.781874>,  <26.704313, 22.080910, 11.636957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.845209, 22.210321, 11.781874>,  <27.080034, 22.426008, 12.023401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.845209, 22.210321, 11.781874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130418, -0.673140, 0.727924,
		-0.798966, 0.506087, 0.324853,
		-0.587065, -0.539219, -0.603819,
		26.669090, 22.048555, 11.600728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.518335, 22.053858, 12.468473>,  <27.080034, 22.426008, 12.023401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.518335, 22.053858, 12.468473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520725, 21.863800, 12.116518>,  <26.522160, 21.749765, 11.905345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.520725, 21.863800, 12.116518>,  <26.518335, 22.053858, 12.468473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.520725, 21.863800, 12.116518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441424, -0.790786, 0.424031,
		-0.897279, 0.385870, -0.214465,
		0.005975, -0.475144, -0.879888,
		26.522518, 21.721256, 11.852551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.808723, 21.835388, 12.370003>,  <26.518335, 22.053858, 12.468473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.808723, 21.835388, 12.370003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.050713, 21.604849, 12.150246>,  <26.195906, 21.466524, 12.018392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.050713, 21.604849, 12.150246>,  <25.808723, 21.835388, 12.370003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.050713, 21.604849, 12.150246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466665, -0.815698, 0.341848,
		-0.645161, 0.049573, -0.762436,
		0.604972, -0.576350, -0.549391,
		26.232204, 21.431944, 11.985428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.434536, 21.334078, 12.111013>,  <25.808723, 21.835388, 12.370003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.434536, 21.334078, 12.111013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.778944, 21.145508, 12.034698>,  <25.985590, 21.032366, 11.988910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.778944, 21.145508, 12.034698>,  <25.434536, 21.334078, 12.111013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.778944, 21.145508, 12.034698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375270, -0.842135, 0.387274,
		-0.343239, -0.261855, -0.902008,
		0.861022, -0.471424, -0.190787,
		26.037251, 21.004080, 11.977462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.241051, 20.606205, 11.717059>,  <25.434536, 21.334078, 12.111013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.241051, 20.606205, 11.717059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617662, 20.570131, 11.846916>,  <25.843630, 20.548487, 11.924830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.617662, 20.570131, 11.846916>,  <25.241051, 20.606205, 11.717059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.617662, 20.570131, 11.846916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214794, -0.903003, 0.372087,
		0.259597, -0.420061, -0.869573,
		0.941527, -0.090187, 0.324643,
		25.900120, 20.543076, 11.944309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.491144, 19.925894, 11.526945>,  <25.241051, 20.606205, 11.717059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.491144, 19.925894, 11.526945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692255, 20.059088, 11.846028>,  <25.812922, 20.139004, 12.037478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692255, 20.059088, 11.846028>,  <25.491144, 19.925894, 11.526945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.692255, 20.059088, 11.846028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412130, -0.718851, 0.559823,
		0.759845, -0.610225, -0.224189,
		0.502777, 0.332984, 0.797708,
		25.843088, 20.158983, 12.085340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.647297, 19.289989, 11.836659>,  <25.491144, 19.925894, 11.526945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.647297, 19.289989, 11.836659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719751, 19.568830, 12.114145>,  <25.763224, 19.736135, 12.280637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719751, 19.568830, 12.114145>,  <25.647297, 19.289989, 11.836659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719751, 19.568830, 12.114145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205750, -0.662912, 0.719871,
		0.961695, -0.273126, 0.023353,
		0.181135, 0.697101, 0.693715,
		25.774092, 19.777962, 12.322260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.999191, 18.878283, 12.228509>,  <25.647297, 19.289989, 11.836659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.999191, 18.878283, 12.228509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864546, 19.190338, 12.439440>,  <25.783758, 19.377571, 12.565998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864546, 19.190338, 12.439440>,  <25.999191, 18.878283, 12.228509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.864546, 19.190338, 12.439440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415287, -0.625597, 0.660428,
		0.845121, 0.003316, 0.534565,
		-0.336612, 0.780139, 0.527328,
		25.763561, 19.424379, 12.597638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.281631, 18.874466, 12.892735>,  <25.999191, 18.878283, 12.228509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.281631, 18.874466, 12.892735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951160, 19.096146, 12.933320>,  <25.752878, 19.229155, 12.957671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951160, 19.096146, 12.933320>,  <26.281631, 18.874466, 12.892735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.951160, 19.096146, 12.933320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343781, -0.638548, 0.688528,
		0.446371, 0.533965, 0.718077,
		-0.826176, 0.554200, 0.101463,
		25.703308, 19.262405, 12.963758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142435, 18.842676, 13.648296>,  <26.281631, 18.874466, 12.892735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142435, 18.842676, 13.648296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812029, 18.957649, 13.454356>,  <25.613785, 19.026634, 13.337992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812029, 18.957649, 13.454356>,  <26.142435, 18.842676, 13.648296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.812029, 18.957649, 13.454356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559262, -0.525050, 0.641521,
		-0.070177, 0.801065, 0.594450,
		-0.826016, 0.287433, -0.484851,
		25.564224, 19.043879, 13.308901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.714775, 18.976023, 14.230606>,  <26.142435, 18.842676, 13.648296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.714775, 18.976023, 14.230606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468817, 18.967228, 13.915285>,  <25.321241, 18.961952, 13.726092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.468817, 18.967228, 13.915285>,  <25.714775, 18.976023, 14.230606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.468817, 18.967228, 13.915285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625462, -0.595230, 0.504478,
		-0.480312, 0.803255, 0.352253,
		-0.614896, -0.021986, -0.788301,
		25.284348, 18.960632, 13.678795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.077522, 19.046448, 14.433936>,  <25.714775, 18.976023, 14.230606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.077522, 19.046448, 14.433936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.026461, 18.879086, 14.074238>,  <24.995823, 18.778669, 13.858418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.026461, 18.879086, 14.074238>,  <25.077522, 19.046448, 14.433936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.026461, 18.879086, 14.074238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569056, -0.711687, 0.411918,
		-0.812329, 0.564305, -0.147244,
		-0.127656, -0.418403, -0.899246,
		24.988163, 18.753565, 13.804464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.316984, 18.936001, 14.290959>,  <25.077522, 19.046448, 14.433936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.316984, 18.936001, 14.290959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.497673, 18.660690, 14.063901>,  <24.606087, 18.495504, 13.927666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.497673, 18.660690, 14.063901>,  <24.316984, 18.936001, 14.290959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.497673, 18.660690, 14.063901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635434, -0.694823, 0.336815,
		-0.626236, 0.208555, -0.751221,
		0.451721, -0.688278, -0.567646,
		24.633190, 18.454206, 13.893607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.784065, 18.507378, 14.139695>,  <24.316984, 18.936001, 14.290959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.784065, 18.507378, 14.139695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.105652, 18.290718, 14.041506>,  <24.298603, 18.160723, 13.982593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.105652, 18.290718, 14.041506>,  <23.784065, 18.507378, 14.139695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.105652, 18.290718, 14.041506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495597, -0.838410, 0.226831,
		-0.328669, -0.060709, -0.942492,
		0.803965, -0.541649, -0.245472,
		24.346842, 18.128223, 13.967864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.544230, 17.918558, 13.752033>,  <23.784065, 18.507378, 14.139695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.544230, 17.918558, 13.752033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.915756, 17.829782, 13.870723>,  <24.138672, 17.776518, 13.941936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.915756, 17.829782, 13.870723>,  <23.544230, 17.918558, 13.752033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.915756, 17.829782, 13.870723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290644, -0.933076, 0.211885,
		0.229840, -0.283043, -0.931161,
		0.928816, -0.221937, 0.296723,
		24.194401, 17.763201, 13.959740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.614849, 17.307163, 13.396902>,  <23.544230, 17.918558, 13.752033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.614849, 17.307163, 13.396902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.884539, 17.319828, 13.692040>,  <24.046352, 17.327427, 13.869123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.884539, 17.319828, 13.692040>,  <23.614849, 17.307163, 13.396902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.884539, 17.319828, 13.692040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295034, -0.904346, 0.308404,
		0.677034, -0.425623, -0.600391,
		0.674226, 0.031664, 0.737847,
		24.086807, 17.329327, 13.913394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.927462, 16.678902, 13.392355>,  <23.614849, 17.307163, 13.396902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.927462, 16.678902, 13.392355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.024134, 16.815374, 13.755713>,  <24.082136, 16.897259, 13.973728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.024134, 16.815374, 13.755713>,  <23.927462, 16.678902, 13.392355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.024134, 16.815374, 13.755713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348689, -0.843084, 0.409422,
		0.905542, -0.415697, -0.084790,
		0.241680, 0.341184, 0.908397,
		24.096638, 16.917730, 14.028233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.274635, 16.177567, 13.713478>,  <23.927462, 16.678902, 13.392355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.274635, 16.177567, 13.713478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.145149, 16.394234, 14.023782>,  <24.067457, 16.524235, 14.209964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.145149, 16.394234, 14.023782>,  <24.274635, 16.177567, 13.713478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.145149, 16.394234, 14.023782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419119, -0.817171, 0.395690,
		0.848261, -0.197044, 0.491555,
		-0.323716, 0.541668, 0.775760,
		24.048035, 16.556734, 14.256510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.536884, 15.859547, 14.309275>,  <24.274635, 16.177567, 13.713478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.536884, 15.859547, 14.309275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.240192, 16.086819, 14.451830>,  <24.062178, 16.223181, 14.537363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.240192, 16.086819, 14.451830>,  <24.536884, 15.859547, 14.309275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.240192, 16.086819, 14.451830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281298, -0.745908, 0.603733,
		0.608860, 0.347555, 0.713088,
		-0.741728, 0.568179, 0.356387,
		24.017673, 16.257273, 14.558746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.509243, 15.626060, 15.007636>,  <24.536884, 15.859547, 14.309275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.509243, 15.626060, 15.007636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.168131, 15.817266, 14.923476>,  <23.963463, 15.931990, 14.872980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.168131, 15.817266, 14.923476>,  <24.509243, 15.626060, 15.007636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.168131, 15.817266, 14.923476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517674, -0.720326, 0.461675,
		0.069132, 0.502625, 0.861736,
		-0.852780, 0.478015, -0.210399,
		23.912296, 15.960670, 14.860356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.445244, 16.359438, 15.484525>,  <24.509243, 15.626060, 15.007636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.445244, 16.359438, 15.484525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.804218, 16.485943, 15.607541>,  <25.019604, 16.561846, 15.681351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.804218, 16.485943, 15.607541>,  <24.445244, 16.359438, 15.484525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.804218, 16.485943, 15.607541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430421, -0.780509, -0.453369,
		0.096655, 0.539243, -0.836585,
		0.897439, 0.316263, 0.307542,
		25.073450, 16.580822, 15.699803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.896032, 16.471708, 14.884023>,  <24.445244, 16.359438, 15.484525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.896032, 16.471708, 14.884023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081472, 16.364985, 15.221991>,  <25.192736, 16.300951, 15.424771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081472, 16.364985, 15.221991>,  <24.896032, 16.471708, 14.884023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.081472, 16.364985, 15.221991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433812, -0.763124, -0.479008,
		0.772582, 0.588604, -0.238040,
		0.463600, -0.266808, 0.844919,
		25.220552, 16.284943, 15.475467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.570574, 16.517689, 14.734236>,  <24.896032, 16.471708, 14.884023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.570574, 16.517689, 14.734236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.455978, 16.225227, 14.981893>,  <25.387220, 16.049751, 15.130486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.455978, 16.225227, 14.981893>,  <25.570574, 16.517689, 14.734236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.455978, 16.225227, 14.981893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466884, -0.670849, -0.576178,
		0.836626, 0.123999, 0.533555,
		-0.286489, -0.731154, 0.619143,
		25.370031, 16.005880, 15.167636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201618, 16.042393, 15.000088>,  <25.570574, 16.517689, 14.734236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.201618, 16.042393, 15.000088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853058, 15.846589, 14.987195>,  <25.643921, 15.729107, 14.979460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.853058, 15.846589, 14.987195>,  <26.201618, 16.042393, 15.000088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.853058, 15.846589, 14.987195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413830, -0.698216, -0.584157,
		0.263446, -0.522374, 0.811000,
		-0.871402, -0.489510, -0.032232,
		25.591637, 15.699736, 14.977526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.272142, 15.326713, 15.173328>,  <26.201618, 16.042393, 15.000088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.272142, 15.326713, 15.173328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.938576, 15.290992, 14.955482>,  <25.738436, 15.269560, 14.824774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.938576, 15.290992, 14.955482>,  <26.272142, 15.326713, 15.173328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.938576, 15.290992, 14.955482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222404, -0.957522, -0.183540,
		-0.505091, -0.274182, 0.818356,
		-0.833918, -0.089301, -0.544616,
		25.688400, 15.264201, 14.792097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.890671, 15.388540, 14.791566>,  <26.272142, 15.326713, 15.173328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.890671, 15.388540, 14.791566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808475, 15.119352, 15.075788>,  <26.759157, 14.957840, 15.246321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.808475, 15.119352, 15.075788>,  <26.890671, 15.388540, 14.791566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.808475, 15.119352, 15.075788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941495, -0.062246, -0.331230,
		0.267137, -0.737046, -0.620806,
		-0.205490, -0.672970, 0.710554,
		26.746828, 14.917461, 15.288954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<13.256745, 15.759617, 24.981979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.897611, 15.618509, 24.876572>,  <12.682130, 15.533845, 24.813328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.897611, 15.618509, 24.876572>,  <13.256745, 15.759617, 24.981979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.897611, 15.618509, 24.876572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287412, -0.016114, -0.957672,
		0.333590, -0.935572, 0.115858,
		-0.897837, -0.352769, -0.263519,
		12.628260, 15.512679, 24.797516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.375195, 15.088238, 24.561541>,  <13.256745, 15.759617, 24.981979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.375195, 15.088238, 24.561541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.027366, 15.266253, 24.475952>,  <12.818668, 15.373063, 24.424599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.027366, 15.266253, 24.475952>,  <13.375195, 15.088238, 24.561541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.027366, 15.266253, 24.475952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211213, -0.056468, -0.975807,
		-0.446356, -0.893729, -0.044895,
		-0.869572, 0.445040, -0.213972,
		12.766494, 15.399765, 24.411760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.038630, 14.658553, 24.093740>,  <13.375195, 15.088238, 24.561541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.038630, 14.658553, 24.093740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.860748, 15.014309, 24.051361>,  <12.754019, 15.227762, 24.025934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.860748, 15.014309, 24.051361>,  <13.038630, 14.658553, 24.093740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.860748, 15.014309, 24.051361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143633, -0.045943, -0.988564,
		-0.884085, -0.454837, -0.107314,
		-0.444705, 0.889389, -0.105947,
		12.727337, 15.281125, 24.019577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.501516, 14.565853, 23.551762>,  <13.038630, 14.658553, 24.093740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.501516, 14.565853, 23.551762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.555209, 14.961541, 23.575165>,  <12.587424, 15.198955, 23.589207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.555209, 14.961541, 23.575165>,  <12.501516, 14.565853, 23.551762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.555209, 14.961541, 23.575165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031542, 0.054746, -0.998002,
		-0.990448, 0.135809, -0.023853,
		0.134232, 0.989221, 0.058507,
		12.595479, 15.258307, 23.592716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.113243, 14.805886, 22.985121>,  <12.501516, 14.565853, 23.551762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.113243, 14.805886, 22.985121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.347316, 15.123509, 23.050890>,  <12.487760, 15.314083, 23.090351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.347316, 15.123509, 23.050890>,  <12.113243, 14.805886, 22.985121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.347316, 15.123509, 23.050890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135007, 0.104534, -0.985315,
		-0.799584, 0.598787, -0.046032,
		0.585182, 0.794057, 0.164424,
		12.522870, 15.361727, 23.100218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.864390, 15.351604, 22.492159>,  <12.113243, 14.805886, 22.985121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.864390, 15.351604, 22.492159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.237424, 15.446702, 22.600798>,  <12.461244, 15.503761, 22.665981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.237424, 15.446702, 22.600798>,  <11.864390, 15.351604, 22.492159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.237424, 15.446702, 22.600798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242201, 0.145734, -0.959219,
		-0.267631, 0.960332, 0.078327,
		0.932584, 0.237746, 0.271596,
		12.517199, 15.518025, 22.682276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.960003, 15.955921, 22.174622>,  <11.864390, 15.351604, 22.492159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.960003, 15.955921, 22.174622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.313500, 15.783001, 22.246302>,  <12.525599, 15.679249, 22.289310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.313500, 15.783001, 22.246302>,  <11.960003, 15.955921, 22.174622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.313500, 15.783001, 22.246302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209630, 0.023343, -0.977502,
		0.418391, 0.901428, 0.111252,
		0.883745, -0.432299, 0.179200,
		12.578624, 15.653311, 22.300062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.415921, 16.353964, 21.712959>,  <11.960003, 15.955921, 22.174622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.415921, 16.353964, 21.712959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.601265, 16.013142, 21.810364>,  <12.712471, 15.808648, 21.868807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.601265, 16.013142, 21.810364>,  <12.415921, 16.353964, 21.712959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.601265, 16.013142, 21.810364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564648, 0.072090, -0.822177,
		0.682986, 0.518463, 0.514515,
		0.463359, -0.852056, 0.243513,
		12.740273, 15.757524, 21.883417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.128386, 16.356335, 21.441433>,  <12.415921, 16.353964, 21.712959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.128386, 16.356335, 21.441433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.170577, 15.966338, 21.519676>,  <13.195892, 15.732340, 21.566622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.170577, 15.966338, 21.519676>,  <13.128386, 16.356335, 21.441433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.170577, 15.966338, 21.519676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650181, -0.081219, -0.755426,
		0.752422, 0.206862, 0.625355,
		0.105479, -0.974993, 0.195608,
		13.202221, 15.673841, 21.578360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.905135, 16.188879, 21.524788>,  <13.128386, 16.356335, 21.441433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.905135, 16.188879, 21.524788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.719151, 15.848035, 21.428688>,  <13.607560, 15.643529, 21.371029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.719151, 15.848035, 21.428688>,  <13.905135, 16.188879, 21.524788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.719151, 15.848035, 21.428688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629193, -0.127133, -0.766781,
		0.622838, -0.507686, 0.595254,
		-0.464961, -0.852110, -0.240249,
		13.579662, 15.592402, 21.356613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.386059, 15.597005, 21.353626>,  <13.905135, 16.188879, 21.524788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.386059, 15.597005, 21.353626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.046753, 15.454148, 21.197218>,  <13.843169, 15.368435, 21.103373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.046753, 15.454148, 21.197218>,  <14.386059, 15.597005, 21.353626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.046753, 15.454148, 21.197218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517059, -0.398983, -0.757273,
		0.114443, -0.844549, 0.523106,
		-0.848265, -0.357141, -0.391021,
		13.792274, 15.347006, 21.079912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.501362, 14.877779, 21.190004>,  <14.386059, 15.597005, 21.353626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.501362, 14.877779, 21.190004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.204665, 15.005325, 20.953989>,  <14.026648, 15.081853, 20.812380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.204665, 15.005325, 20.953989>,  <14.501362, 14.877779, 21.190004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.204665, 15.005325, 20.953989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498017, -0.327395, -0.802989,
		-0.449221, -0.889459, 0.084043,
		-0.741741, 0.318865, -0.590038,
		13.982142, 15.100985, 20.776978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.350141, 14.327826, 20.758480>,  <14.501362, 14.877779, 21.190004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.350141, 14.327826, 20.758480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.182113, 14.642282, 20.577141>,  <14.081296, 14.830956, 20.468338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.182113, 14.642282, 20.577141>,  <14.350141, 14.327826, 20.758480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.182113, 14.642282, 20.577141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444473, -0.257308, -0.858042,
		-0.791192, -0.561938, -0.241331,
		-0.420070, 0.786141, -0.453346,
		14.056091, 14.878124, 20.441137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.077065, 14.032393, 20.224154>,  <14.350141, 14.327826, 20.758480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.077065, 14.032393, 20.224154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.109956, 14.422361, 20.141434>,  <14.129690, 14.656343, 20.091803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.109956, 14.422361, 20.141434>,  <14.077065, 14.032393, 20.224154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.109956, 14.422361, 20.141434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567048, -0.216407, -0.794748,
		-0.819570, -0.051917, -0.570622,
		0.082225, 0.974922, -0.206800,
		14.134624, 14.714838, 20.079393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.163043, 14.068949, 19.546440>,  <14.077065, 14.032393, 20.224154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.163043, 14.068949, 19.546440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.269474, 14.445644, 19.628736>,  <14.333333, 14.671661, 19.678114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.269474, 14.445644, 19.628736>,  <14.163043, 14.068949, 19.546440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.269474, 14.445644, 19.628736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585222, 0.011785, -0.810788,
		-0.765975, 0.336138, -0.547991,
		0.266079, 0.941739, 0.205742,
		14.349298, 14.728167, 19.690458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.282290, 14.458696, 18.913586>,  <14.163043, 14.068949, 19.546440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.282290, 14.458696, 18.913586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.489284, 14.725345, 19.128183>,  <14.613480, 14.885334, 19.256943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.489284, 14.725345, 19.128183>,  <14.282290, 14.458696, 18.913586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.489284, 14.725345, 19.128183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620920, 0.138875, -0.771474,
		-0.588787, 0.732345, -0.342054,
		0.517483, 0.666622, 0.536495,
		14.644528, 14.925331, 19.289131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.363644, 15.078881, 18.488024>,  <14.282290, 14.458696, 18.913586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.363644, 15.078881, 18.488024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.666249, 15.055053, 18.748528>,  <14.847813, 15.040755, 18.904829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.666249, 15.055053, 18.748528>,  <14.363644, 15.078881, 18.488024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.666249, 15.055053, 18.748528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653865, 0.087351, -0.751552,
		-0.012116, 0.994395, 0.105034,
		0.756514, -0.059572, 0.651259,
		14.893204, 15.037181, 18.943905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.829449, 15.559426, 18.285851>,  <14.363644, 15.078881, 18.488024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.829449, 15.559426, 18.285851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.043132, 15.325441, 18.529963>,  <15.171342, 15.185050, 18.676430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.043132, 15.325441, 18.529963>,  <14.829449, 15.559426, 18.285851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.043132, 15.325441, 18.529963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748955, -0.007286, -0.662581,
		0.392031, 0.811028, 0.434218,
		0.534208, -0.584962, 0.610279,
		15.203394, 15.149953, 18.713047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.475473, 15.882501, 18.370121>,  <14.829449, 15.559426, 18.285851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.475473, 15.882501, 18.370121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.511995, 15.488222, 18.426781>,  <15.533908, 15.251655, 18.460777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.511995, 15.488222, 18.426781>,  <15.475473, 15.882501, 18.370121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.511995, 15.488222, 18.426781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617650, -0.055523, -0.784491,
		0.781135, 0.159117, 0.603746,
		0.091304, -0.985697, 0.141649,
		15.539387, 15.192513, 18.469275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.066334, 15.708684, 18.023458>,  <15.475473, 15.882501, 18.370121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.066334, 15.708684, 18.023458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.928397, 15.336122, 18.070049>,  <15.845634, 15.112584, 18.098003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.928397, 15.336122, 18.070049>,  <16.066334, 15.708684, 18.023458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.928397, 15.336122, 18.070049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416382, -0.262999, -0.870320,
		0.841255, -0.251625, 0.478514,
		-0.344843, -0.931406, 0.116477,
		15.824944, 15.056700, 18.104992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.617323, 15.314308, 17.913698>,  <16.066334, 15.708684, 18.023458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.617323, 15.314308, 17.913698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.322346, 15.049617, 17.859596>,  <16.145359, 14.890802, 17.827135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.322346, 15.049617, 17.859596>,  <16.617323, 15.314308, 17.913698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.322346, 15.049617, 17.859596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470718, -0.359931, -0.805527,
		0.484358, -0.657696, 0.576916,
		-0.737442, -0.661729, -0.135254,
		16.101112, 14.851098, 17.819019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.889910, 14.702641, 17.683001>,  <16.617323, 15.314308, 17.913698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.889910, 14.702641, 17.683001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.506433, 14.694759, 17.569492>,  <16.276348, 14.690031, 17.501389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.506433, 14.694759, 17.569492>,  <16.889910, 14.702641, 17.683001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.506433, 14.694759, 17.569492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268719, -0.389902, -0.880776,
		-0.093288, -0.920645, 0.379090,
		-0.958690, -0.019703, -0.283768,
		16.218826, 14.688848, 17.484362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.367262, 14.668888, 17.148182>,  <16.889910, 14.702641, 17.683001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.367262, 14.668888, 17.148182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.733595, 14.829301, 17.156454>,  <17.953394, 14.925549, 17.161417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.733595, 14.829301, 17.156454>,  <17.367262, 14.668888, 17.148182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.733595, 14.829301, 17.156454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033796, 0.025663, 0.999099,
		0.400140, -0.915704, 0.037056,
		0.915831, 0.401032, 0.020678,
		18.008345, 14.949611, 17.162657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.747574, 14.239061, 17.630180>,  <17.367262, 14.668888, 17.148182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.747574, 14.239061, 17.630180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.902136, 14.607401, 17.609289>,  <17.994873, 14.828405, 17.596754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.902136, 14.607401, 17.609289>,  <17.747574, 14.239061, 17.630180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.902136, 14.607401, 17.609289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241924, 0.155834, 0.957700,
		0.890037, -0.357423, 0.282990,
		0.386403, 0.920850, -0.052229,
		18.018057, 14.883656, 17.593620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.171595, 14.251541, 18.136875>,  <17.747574, 14.239061, 17.630180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.171595, 14.251541, 18.136875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.106131, 14.642178, 18.081039>,  <18.066853, 14.876559, 18.047539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.106131, 14.642178, 18.081039>,  <18.171595, 14.251541, 18.136875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.106131, 14.642178, 18.081039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085232, 0.126971, 0.988238,
		0.982828, 0.173630, 0.062457,
		-0.163658, 0.976592, -0.139589,
		18.057034, 14.935155, 18.039162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.592089, 14.521626, 18.546862>,  <18.171595, 14.251541, 18.136875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.592089, 14.521626, 18.546862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.355928, 14.838848, 18.486874>,  <18.214231, 15.029181, 18.450880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.355928, 14.838848, 18.486874>,  <18.592089, 14.521626, 18.546862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.355928, 14.838848, 18.486874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012296, 0.176952, 0.984143,
		0.807017, 0.582882, -0.094721,
		-0.590400, 0.793055, -0.149971,
		18.178808, 15.076765, 18.441883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.921432, 15.083515, 18.808271>,  <18.592089, 14.521626, 18.546862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.921432, 15.083515, 18.808271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.530766, 15.169307, 18.803881>,  <18.296366, 15.220782, 18.801247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.530766, 15.169307, 18.803881>,  <18.921432, 15.083515, 18.808271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.530766, 15.169307, 18.803881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030580, 0.189467, 0.981411,
		0.212572, 0.958176, -0.191605,
		-0.976667, 0.214480, -0.010975,
		18.237766, 15.233651, 18.800589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.707407, 15.640297, 19.274363>,  <18.921432, 15.083515, 18.808271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.707407, 15.640297, 19.274363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.342655, 15.483040, 19.227186>,  <18.123804, 15.388685, 19.198879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.342655, 15.483040, 19.227186>,  <18.707407, 15.640297, 19.274363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.342655, 15.483040, 19.227186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270956, 0.360743, 0.892439,
		-0.308310, 0.845756, -0.435479,
		-0.911882, -0.393143, -0.117942,
		18.069090, 15.365097, 19.191803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.227581, 16.149622, 19.603014>,  <18.707407, 15.640297, 19.274363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.227581, 16.149622, 19.603014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.999756, 15.822330, 19.571791>,  <17.863060, 15.625954, 19.553057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.999756, 15.822330, 19.571791>,  <18.227581, 16.149622, 19.603014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.999756, 15.822330, 19.571791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529023, 0.292246, 0.796697,
		-0.629071, 0.495064, -0.599317,
		-0.569564, -0.818232, -0.078057,
		17.828886, 15.576859, 19.548374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.552261, 16.382713, 19.699673>,  <18.227581, 16.149622, 19.603014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.552261, 16.382713, 19.699673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.560356, 15.994397, 19.795305>,  <17.565212, 15.761408, 19.852684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.560356, 15.994397, 19.795305>,  <17.552261, 16.382713, 19.699673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.560356, 15.994397, 19.795305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478859, 0.200505, 0.854688,
		-0.877658, -0.131782, -0.460814,
		0.020236, -0.970789, 0.239080,
		17.566427, 15.703160, 19.867029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.866831, 16.198990, 19.907295>,  <17.552261, 16.382713, 19.699673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.866831, 16.198990, 19.907295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.076490, 15.886384, 20.042648>,  <17.202286, 15.698821, 20.123861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.076490, 15.886384, 20.042648>,  <16.866831, 16.198990, 19.907295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.076490, 15.886384, 20.042648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608656, -0.065856, 0.790697,
		-0.595655, -0.620404, -0.510191,
		0.524150, -0.781513, 0.338385,
		17.233736, 15.651930, 20.144163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.375160, 15.979562, 20.379961>,  <16.866831, 16.198990, 19.907295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.375160, 15.979562, 20.379961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.695057, 15.763885, 20.485558>,  <16.886995, 15.634480, 20.548916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.695057, 15.763885, 20.485558>,  <16.375160, 15.979562, 20.379961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.695057, 15.763885, 20.485558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386880, -0.126629, 0.913394,
		-0.459065, -0.832609, -0.309872,
		0.799739, -0.539190, 0.263989,
		16.934978, 15.602128, 20.564754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.208517, 15.292579, 20.484108>,  <16.375160, 15.979562, 20.379961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.208517, 15.292579, 20.484108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.531803, 15.383389, 20.701456>,  <16.725775, 15.437875, 20.831865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.531803, 15.383389, 20.701456>,  <16.208517, 15.292579, 20.484108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.531803, 15.383389, 20.701456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504414, -0.209291, 0.837713,
		0.303904, -0.951135, -0.054637,
		0.808213, 0.227025, 0.543370,
		16.774267, 15.451496, 20.864468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.192657, 14.771597, 20.986652>,  <16.208517, 15.292579, 20.484108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.192657, 14.771597, 20.986652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.414360, 15.066888, 21.140442>,  <16.547382, 15.244062, 21.232716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.414360, 15.066888, 21.140442>,  <16.192657, 14.771597, 20.986652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.414360, 15.066888, 21.140442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286204, -0.264715, 0.920876,
		0.781592, -0.620439, 0.064563,
		0.554257, 0.738228, 0.384472,
		16.580637, 15.288356, 21.255783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.326601, 14.516273, 21.611017>,  <16.192657, 14.771597, 20.986652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.326601, 14.516273, 21.611017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.451677, 14.895046, 21.640787>,  <16.526724, 15.122311, 21.658649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.451677, 14.895046, 21.640787>,  <16.326601, 14.516273, 21.611017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.451677, 14.895046, 21.640787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335928, 0.036956, 0.941162,
		0.888468, -0.319296, 0.329658,
		0.312692, 0.946934, 0.074426,
		16.545485, 15.179127, 21.663115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.754816, 14.507080, 22.208082>,  <16.326601, 14.516273, 21.611017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.754816, 14.507080, 22.208082> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.635157, 14.884449, 22.150862>,  <16.563362, 15.110870, 22.116529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.635157, 14.884449, 22.150862>,  <16.754816, 14.507080, 22.208082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.635157, 14.884449, 22.150862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361300, 0.026764, 0.932065,
		0.883161, 0.330508, 0.332852,
		-0.299147, 0.943423, -0.143049,
		16.545412, 15.167476, 22.107946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.056217, 14.908894, 22.709167>,  <16.754816, 14.507080, 22.208082>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.056217, 14.908894, 22.709167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.729179, 15.099949, 22.580545>,  <16.532957, 15.214582, 22.503372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.729179, 15.099949, 22.580545>,  <17.056217, 14.908894, 22.709167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.729179, 15.099949, 22.580545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347866, 0.035267, 0.936881,
		0.458830, 0.877848, 0.137320,
		-0.817596, 0.477638, -0.321556,
		16.483900, 15.243240, 22.484079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.930204, 15.251096, 23.310886>,  <17.056217, 14.908894, 22.709167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.930204, 15.251096, 23.310886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.620285, 15.331315, 23.071064>,  <16.434334, 15.379447, 22.927170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.620285, 15.331315, 23.071064>,  <16.930204, 15.251096, 23.310886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.620285, 15.331315, 23.071064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570985, 0.185159, 0.799808,
		0.271414, 0.962027, -0.028951,
		-0.774797, 0.200548, -0.599558,
		16.387846, 15.391479, 22.891197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.660526, 15.935918, 23.352669>,  <16.930204, 15.251096, 23.310886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.660526, 15.935918, 23.352669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.357647, 15.690347, 23.263456>,  <16.175919, 15.543004, 23.209929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.357647, 15.690347, 23.263456>,  <16.660526, 15.935918, 23.352669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.357647, 15.690347, 23.263456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429185, 0.210226, 0.878411,
		-0.492393, 0.760853, -0.422671,
		-0.757198, -0.613927, -0.223033,
		16.130487, 15.506168, 23.196547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.042591, 16.283239, 23.455173>,  <16.660526, 15.935918, 23.352669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.042591, 16.283239, 23.455173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.913333, 15.904726, 23.459604>,  <15.835777, 15.677618, 23.462263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.913333, 15.904726, 23.459604>,  <16.042591, 16.283239, 23.455173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.913333, 15.904726, 23.459604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493406, 0.178460, 0.851295,
		-0.807543, 0.269628, -0.524571,
		-0.323148, -0.946284, 0.011078,
		15.816389, 15.620841, 23.462927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<15.264315, 16.308872, 23.636328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.415441, 15.947529, 23.717516>,  <15.506116, 15.730722, 23.766230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.415441, 15.947529, 23.717516>,  <15.264315, 16.308872, 23.636328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.415441, 15.947529, 23.717516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609756, -0.077799, 0.788762,
		-0.696745, -0.421768, -0.580223,
		0.377816, -0.903360, 0.202970,
		15.528786, 15.676521, 23.778406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.663443, 15.961380, 23.896374>,  <15.264315, 16.308872, 23.636328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.663443, 15.961380, 23.896374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.958630, 15.712074, 23.999870>,  <15.135741, 15.562490, 24.061968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.958630, 15.712074, 23.999870>,  <14.663443, 15.961380, 23.896374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.958630, 15.712074, 23.999870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373369, -0.057710, 0.925886,
		-0.562140, -0.779879, -0.275295,
		0.737966, -0.623265, 0.258741,
		15.180019, 15.525095, 24.077494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.270049, 15.354499, 24.262291>,  <14.663443, 15.961380, 23.896374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.270049, 15.354499, 24.262291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.653463, 15.364587, 24.375834>,  <14.883512, 15.370640, 24.443958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.653463, 15.364587, 24.375834>,  <14.270049, 15.354499, 24.262291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.653463, 15.364587, 24.375834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272062, -0.215427, 0.937856,
		0.084804, -0.976194, -0.199633,
		0.958536, 0.025221, 0.283855,
		14.941024, 15.372153, 24.460989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.349194, 14.799642, 24.721884>,  <14.270049, 15.354499, 24.262291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.349194, 14.799642, 24.721884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.650323, 15.033941, 24.841988>,  <14.831000, 15.174521, 24.914049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.650323, 15.033941, 24.841988>,  <14.349194, 14.799642, 24.721884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.650323, 15.033941, 24.841988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327838, -0.061887, 0.942705,
		0.570771, -0.808126, 0.145441,
		0.752823, 0.585750, 0.300258,
		14.876170, 15.209666, 24.932064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.612531, 14.449343, 25.270527>,  <14.349194, 14.799642, 24.721884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.612531, 14.449343, 25.270527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.737191, 14.827230, 25.311281>,  <14.811988, 15.053963, 25.335733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.737191, 14.827230, 25.311281>,  <14.612531, 14.449343, 25.270527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.737191, 14.827230, 25.311281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179914, -0.046616, 0.982577,
		0.933008, -0.324552, 0.155440,
		0.311651, 0.944719, 0.101885,
		14.830687, 15.110646, 25.341846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.227833, 14.435624, 25.726952>,  <14.612531, 14.449343, 25.270527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.227833, 14.435624, 25.726952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.092593, 14.812030, 25.721592>,  <15.011449, 15.037873, 25.718376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.092593, 14.812030, 25.721592>,  <15.227833, 14.435624, 25.726952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.092593, 14.812030, 25.721592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002182, 0.013455, 0.999907,
		0.941108, 0.338097, -0.002495,
		-0.338100, 0.941015, -0.013401,
		14.991163, 15.094335, 25.717571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.411030, 14.668671, 26.342495>,  <15.227833, 14.435624, 25.726952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.411030, 14.668671, 26.342495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.167403, 14.968602, 26.239117>,  <15.021227, 15.148561, 26.177090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.167403, 14.968602, 26.239117>,  <15.411030, 14.668671, 26.342495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.167403, 14.968602, 26.239117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125405, 0.230713, 0.964906,
		0.783142, 0.620103, -0.046487,
		-0.609067, 0.749829, -0.258446,
		14.984683, 15.193551, 26.161583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.590217, 15.307880, 26.689775>,  <15.411030, 14.668671, 26.342495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.590217, 15.307880, 26.689775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.209228, 15.366780, 26.583107>,  <14.980635, 15.402120, 26.519106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.209228, 15.366780, 26.583107>,  <15.590217, 15.307880, 26.689775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.209228, 15.366780, 26.583107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214765, 0.296249, 0.930652,
		0.216039, 0.943692, -0.250545,
		-0.952472, 0.147249, -0.266673,
		14.923486, 15.410955, 26.503105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.446648, 15.945756, 26.994734>,  <15.590217, 15.307880, 26.689775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.446648, 15.945756, 26.994734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.112070, 15.728921, 26.962481>,  <14.911324, 15.598820, 26.943129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.112070, 15.728921, 26.962481>,  <15.446648, 15.945756, 26.994734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.112070, 15.728921, 26.962481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214873, 0.189028, 0.958174,
		-0.504172, 0.818785, -0.274592,
		-0.836445, -0.542087, -0.080632,
		14.861136, 15.566295, 26.938292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.902405, 16.331902, 27.313835>,  <15.446648, 15.945756, 26.994734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.902405, 16.331902, 27.313835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.792273, 15.947509, 27.303190>,  <14.726193, 15.716873, 27.296803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.792273, 15.947509, 27.303190>,  <14.902405, 16.331902, 27.313835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.792273, 15.947509, 27.303190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235077, 0.040459, 0.971134,
		-0.932165, 0.273639, -0.237044,
		-0.275330, -0.960981, -0.026612,
		14.709674, 15.659214, 27.295206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.262362, 16.363960, 27.569206>,  <14.902405, 16.331902, 27.313835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.262362, 16.363960, 27.569206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.396374, 15.989585, 27.612602>,  <14.476781, 15.764959, 27.638639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.396374, 15.989585, 27.612602>,  <14.262362, 16.363960, 27.569206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.396374, 15.989585, 27.612602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252807, 0.021626, 0.967275,
		-0.907658, -0.351494, -0.229367,
		0.335032, -0.935940, 0.108489,
		14.496883, 15.708803, 27.645149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.755600, 16.103632, 28.048470>,  <14.262362, 16.363960, 27.569206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.755600, 16.103632, 28.048470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.071783, 15.858886, 28.059759>,  <14.261493, 15.712038, 28.066532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.071783, 15.858886, 28.059759>,  <13.755600, 16.103632, 28.048470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.071783, 15.858886, 28.059759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105091, -0.090080, 0.990374,
		-0.603435, -0.785814, -0.135506,
		0.790457, -0.611867, 0.028224,
		14.308920, 15.675325, 28.068226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.536541, 15.592353, 28.619104>,  <13.755600, 16.103632, 28.048470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.536541, 15.592353, 28.619104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.935092, 15.569100, 28.594278>,  <14.174223, 15.555149, 28.579382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.935092, 15.569100, 28.594278>,  <13.536541, 15.592353, 28.619104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.935092, 15.569100, 28.594278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059421, -0.046180, 0.997164,
		-0.060843, -0.997240, -0.042558,
		0.996377, -0.058142, -0.062067,
		14.234005, 15.551661, 28.575659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.707579, 15.036620, 29.025648>,  <13.536541, 15.592353, 28.619104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.707579, 15.036620, 29.025648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.057561, 15.225606, 28.983261>,  <14.267550, 15.338998, 28.957829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.057561, 15.225606, 28.983261>,  <13.707579, 15.036620, 29.025648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.057561, 15.225606, 28.983261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238874, -0.230816, 0.943220,
		0.421179, -0.850589, -0.314814,
		0.874956, 0.472465, -0.105969,
		14.320047, 15.367345, 28.951471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.215827, 14.478092, 29.191553>,  <13.707579, 15.036620, 29.025648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.215827, 14.478092, 29.191553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.399181, 14.830779, 29.236195>,  <14.509194, 15.042392, 29.262980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.399181, 14.830779, 29.236195>,  <14.215827, 14.478092, 29.191553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.399181, 14.830779, 29.236195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310282, -0.276436, 0.909565,
		0.832831, -0.382304, -0.400296,
		0.458386, 0.881718, 0.111602,
		14.536697, 15.095295, 29.269676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.910927, 14.294873, 29.543785>,  <14.215827, 14.478092, 29.191553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.910927, 14.294873, 29.543785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.821106, 14.680523, 29.600410>,  <14.767214, 14.911913, 29.634386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.821106, 14.680523, 29.600410>,  <14.910927, 14.294873, 29.543785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.821106, 14.680523, 29.600410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378705, -0.047514, 0.924297,
		0.897863, 0.261164, -0.354450,
		-0.224552, 0.964124, 0.141565,
		14.753740, 14.969760, 29.642879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.400132, 14.466036, 29.929504>,  <14.910927, 14.294873, 29.543785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.400132, 14.466036, 29.929504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.137576, 14.767354, 29.945999>,  <14.980042, 14.948145, 29.955896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.137576, 14.767354, 29.945999>,  <15.400132, 14.466036, 29.929504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.137576, 14.767354, 29.945999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038071, -0.021514, 0.999043,
		0.753461, 0.657332, -0.014557,
		-0.656390, 0.753294, 0.041236,
		14.940660, 14.993342, 29.958370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.689049, 14.938150, 30.439905>,  <15.400132, 14.466036, 29.929504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.689049, 14.938150, 30.439905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.290391, 14.970876, 30.438738>,  <15.051196, 14.990511, 30.438038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.290391, 14.970876, 30.438738>,  <15.689049, 14.938150, 30.439905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.290391, 14.970876, 30.438738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013304, -0.126692, 0.991853,
		0.080776, 0.988563, 0.127355,
		-0.996643, 0.081813, -0.002918,
		14.991398, 14.995420, 30.437862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.542999, 15.222822, 31.122799>,  <15.689049, 14.938150, 30.439905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.542999, 15.222822, 31.122799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.204493, 15.050330, 30.997660>,  <15.001389, 14.946835, 30.922575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.204493, 15.050330, 30.997660>,  <15.542999, 15.222822, 31.122799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.204493, 15.050330, 30.997660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223230, -0.246174, 0.943169,
		-0.483738, 0.868009, 0.112065,
		-0.846266, -0.431230, -0.312849,
		14.950613, 14.920961, 30.903805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.188974, 15.244886, 31.773396>,  <15.542999, 15.222822, 31.122799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.188974, 15.244886, 31.773396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.950501, 15.037279, 31.528385>,  <14.807418, 14.912715, 31.381380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.950501, 15.037279, 31.528385>,  <15.188974, 15.244886, 31.773396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.950501, 15.037279, 31.528385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475576, -0.386375, 0.790280,
		-0.646834, 0.762453, -0.016482,
		-0.596183, -0.519018, -0.612524,
		14.771646, 14.881574, 31.344627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.488307, 15.462514, 31.850588>,  <15.188974, 15.244886, 31.773396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.488307, 15.462514, 31.850588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.505072, 15.083804, 31.722923>,  <14.515130, 14.856579, 31.646324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.505072, 15.083804, 31.722923>,  <14.488307, 15.462514, 31.850588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.505072, 15.083804, 31.722923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377492, -0.310768, 0.872309,
		-0.925064, 0.083922, -0.370424,
		0.041910, -0.946774, -0.319160,
		14.517645, 14.799772, 31.627174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.979383, 15.168294, 32.230885>,  <14.488307, 15.462514, 31.850588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.979383, 15.168294, 32.230885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.158326, 14.845228, 32.077236>,  <14.265692, 14.651388, 31.985048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.158326, 14.845228, 32.077236>,  <13.979383, 15.168294, 32.230885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.158326, 14.845228, 32.077236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335191, -0.549599, 0.765237,
		-0.829167, -0.213582, -0.516590,
		0.447358, -0.807665, -0.384119,
		14.292534, 14.602928, 31.962000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.560187, 15.872171, 32.253067>,  <13.979383, 15.168294, 32.230885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.560187, 15.872171, 32.253067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.690596, 16.117468, 31.965277>,  <13.768841, 16.264645, 31.792603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.690596, 16.117468, 31.965277>,  <13.560187, 15.872171, 32.253067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.690596, 16.117468, 31.965277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782568, -0.602042, -0.158536,
		-0.530376, -0.511353, -0.676180,
		0.326021, 0.613240, -0.719477,
		13.788402, 16.301439, 31.749434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.106447, 15.246161, 32.435383>,  <13.560187, 15.872171, 32.253067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.106447, 15.246161, 32.435383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.838530, 14.976346, 32.559563>,  <12.677779, 14.814457, 32.634071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.838530, 14.976346, 32.559563>,  <13.106447, 15.246161, 32.435383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.838530, 14.976346, 32.559563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298637, -0.138074, -0.944326,
		0.679847, -0.725214, -0.108960,
		-0.669794, -0.674537, 0.310445,
		12.637591, 14.773985, 32.652695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.005384, 14.552553, 32.080830>,  <13.106447, 15.246161, 32.435383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.005384, 14.552553, 32.080830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.645401, 14.681352, 32.198399>,  <12.429411, 14.758631, 32.268940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.645401, 14.681352, 32.198399>,  <13.005384, 14.552553, 32.080830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.645401, 14.681352, 32.198399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325288, -0.047057, -0.944443,
		-0.290278, -0.945570, 0.147091,
		-0.899959, 0.321998, 0.293923,
		12.375413, 14.777951, 32.286575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.594913, 14.164902, 31.765705>,  <13.005384, 14.552553, 32.080830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.594913, 14.164902, 31.765705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.348192, 14.465968, 31.857832>,  <12.200159, 14.646608, 31.913109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.348192, 14.465968, 31.857832>,  <12.594913, 14.164902, 31.765705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.348192, 14.465968, 31.857832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355092, -0.004937, -0.934818,
		-0.702469, -0.658384, 0.270311,
		-0.616804, 0.752666, 0.230318,
		12.163151, 14.691768, 31.926928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.956470, 13.943410, 31.528610>,  <12.594913, 14.164902, 31.765705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.956470, 13.943410, 31.528610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.880882, 14.333548, 31.574205>,  <11.835529, 14.567631, 31.601562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.880882, 14.333548, 31.574205>,  <11.956470, 13.943410, 31.528610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.880882, 14.333548, 31.574205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410550, 0.026976, -0.911439,
		-0.892042, -0.219033, 0.395330,
		-0.188971, 0.975344, 0.113987,
		11.824191, 14.626151, 31.608402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.280166, 13.943591, 31.315670>,  <11.956470, 13.943410, 31.528610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.280166, 13.943591, 31.315670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.447055, 14.305750, 31.284222>,  <11.547188, 14.523046, 31.265352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.447055, 14.305750, 31.284222>,  <11.280166, 13.943591, 31.315670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.447055, 14.305750, 31.284222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368098, 0.089262, -0.925492,
		-0.830921, 0.415076, 0.370517,
		0.417223, 0.905397, -0.078619,
		11.572222, 14.577369, 31.260635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.740115, 14.432768, 31.128405>,  <11.280166, 13.943591, 31.315670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.740115, 14.432768, 31.128405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.095339, 14.579159, 31.017113>,  <11.308474, 14.666993, 30.950338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.095339, 14.579159, 31.017113>,  <10.740115, 14.432768, 31.128405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.095339, 14.579159, 31.017113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314515, 0.042243, -0.948312,
		-0.335307, 0.929665, 0.152620,
		0.888059, 0.365977, -0.278229,
		11.361756, 14.688951, 30.933643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.578063, 14.884027, 30.603292>,  <10.740115, 14.432768, 31.128405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.578063, 14.884027, 30.603292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.969669, 14.855627, 30.526886>,  <11.204633, 14.838587, 30.481041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.969669, 14.855627, 30.526886>,  <10.578063, 14.884027, 30.603292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.969669, 14.855627, 30.526886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194441, -0.044855, -0.979888,
		0.061005, 0.996467, -0.057719,
		0.979015, -0.071001, -0.191018,
		11.263374, 14.834327, 30.469580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.719969, 15.092620, 29.936420>,  <10.578063, 14.884027, 30.603292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.719969, 15.092620, 29.936420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.081629, 14.929615, 29.987719>,  <11.298625, 14.831812, 30.018497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.081629, 14.929615, 29.987719>,  <10.719969, 15.092620, 29.936420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.081629, 14.929615, 29.987719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090990, -0.109608, -0.989801,
		0.417412, 0.906598, -0.062023,
		0.904150, -0.407512, 0.128243,
		11.352874, 14.807362, 30.026192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.115613, 15.393305, 29.502974>,  <10.719969, 15.092620, 29.936420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.115613, 15.393305, 29.502974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.290305, 15.040088, 29.571680>,  <11.395121, 14.828157, 29.612904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.290305, 15.040088, 29.571680>,  <11.115613, 15.393305, 29.502974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.290305, 15.040088, 29.571680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066869, -0.158544, -0.985085,
		0.897104, 0.441703, -0.010193,
		0.436731, -0.883042, 0.171767,
		11.421325, 14.775175, 29.623211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.843388, 15.476385, 29.319103>,  <11.115613, 15.393305, 29.502974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.843388, 15.476385, 29.319103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.764565, 15.084285, 29.325781>,  <11.717271, 14.849025, 29.329786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.764565, 15.084285, 29.325781>,  <11.843388, 15.476385, 29.319103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.764565, 15.084285, 29.325781> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273491, -0.071315, -0.959227,
		0.941473, -0.184458, 0.282143,
		-0.197058, -0.980250, 0.016693,
		11.705447, 14.790210, 29.330790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.478745, 15.119338, 29.117390>,  <11.843388, 15.476385, 29.319103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.478745, 15.119338, 29.117390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.172635, 14.873540, 29.040707>,  <11.988970, 14.726061, 28.994698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.172635, 14.873540, 29.040707>,  <12.478745, 15.119338, 29.117390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.172635, 14.873540, 29.040707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365553, -0.169737, -0.915183,
		0.529837, -0.770444, 0.354526,
		-0.765274, -0.614496, -0.191705,
		11.943053, 14.689191, 28.983194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.795007, 14.588244, 28.718937>,  <12.478745, 15.119338, 29.117390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.795007, 14.588244, 28.718937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.405542, 14.539633, 28.641773>,  <12.171864, 14.510466, 28.595474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.405542, 14.539633, 28.641773>,  <12.795007, 14.588244, 28.718937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.405542, 14.539633, 28.641773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194289, 0.000518, -0.980944,
		0.119314, -0.992588, 0.023108,
		-0.973661, -0.121530, -0.192911,
		12.113444, 14.503174, 28.583900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.705786, 14.136241, 28.217276>,  <12.795007, 14.588244, 28.718937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.705786, 14.136241, 28.217276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.349829, 14.315837, 28.185032>,  <12.136254, 14.423594, 28.165686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.349829, 14.315837, 28.185032>,  <12.705786, 14.136241, 28.217276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.349829, 14.315837, 28.185032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162438, 0.146771, -0.975742,
		-0.426269, -0.881400, -0.203544,
		-0.889893, 0.448991, -0.080609,
		12.082861, 14.450534, 28.160849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.377380, 13.853793, 27.535065>,  <12.705786, 14.136241, 28.217276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.377380, 13.853793, 27.535065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.186696, 14.192424, 27.629768>,  <12.072286, 14.395602, 27.686590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.186696, 14.192424, 27.629768>,  <12.377380, 13.853793, 27.535065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.186696, 14.192424, 27.629768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123167, 0.331000, -0.935558,
		-0.870389, -0.416831, -0.262062,
		-0.476712, 0.846576, 0.236759,
		12.043682, 14.446397, 27.700796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.830796, 13.955452, 27.023350>,  <12.377380, 13.853793, 27.535065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.830796, 13.955452, 27.023350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.907532, 14.318559, 27.172565>,  <11.953573, 14.536423, 27.262094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.907532, 14.318559, 27.172565>,  <11.830796, 13.955452, 27.023350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.907532, 14.318559, 27.172565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068763, 0.366732, -0.927782,
		-0.979015, 0.203635, 0.007933,
		0.191838, 0.907767, 0.373038,
		11.965083, 14.590889, 27.284477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.397335, 14.339497, 26.630547>,  <11.830796, 13.955452, 27.023350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.397335, 14.339497, 26.630547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.655614, 14.609525, 26.773294>,  <11.810581, 14.771542, 26.858944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.655614, 14.609525, 26.773294>,  <11.397335, 14.339497, 26.630547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.655614, 14.609525, 26.773294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032294, 0.491081, -0.870515,
		-0.762911, 0.550564, 0.338890,
		0.645696, 0.675070, 0.356872,
		11.849323, 14.812046, 26.880356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.132917, 14.863139, 26.427677>,  <11.397335, 14.339497, 26.630547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.132917, 14.863139, 26.427677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.515651, 14.958485, 26.494196>,  <11.745291, 15.015692, 26.534107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.515651, 14.958485, 26.494196>,  <11.132917, 14.863139, 26.427677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.515651, 14.958485, 26.494196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017961, 0.522583, -0.852399,
		-0.290084, 0.818590, 0.495743,
		0.956833, 0.238363, 0.166296,
		11.802701, 15.029994, 26.544085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.255850, 15.641686, 26.355465>,  <11.132917, 14.863139, 26.427677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.255850, 15.641686, 26.355465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.584347, 15.425877, 26.281195>,  <11.781445, 15.296391, 26.236631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.584347, 15.425877, 26.281195>,  <11.255850, 15.641686, 26.355465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.584347, 15.425877, 26.281195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103995, 0.461501, -0.881023,
		0.561024, 0.704223, 0.435112,
		0.821241, -0.539524, -0.185678,
		11.830719, 15.264019, 26.225491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.495970, 15.993624, 25.852114>,  <11.255850, 15.641686, 26.355465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.495970, 15.993624, 25.852114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.755374, 15.689628, 25.869316>,  <11.911016, 15.507230, 25.879637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.755374, 15.689628, 25.869316>,  <11.495970, 15.993624, 25.852114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.755374, 15.689628, 25.869316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399814, 0.292002, -0.868840,
		0.647752, 0.580646, 0.493221,
		0.648511, -0.759990, 0.043005,
		11.949927, 15.461631, 25.882217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.161679, 16.294136, 25.824537>,  <11.495970, 15.993624, 25.852114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.161679, 16.294136, 25.824537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.177649, 15.911723, 25.708326>,  <12.187230, 15.682275, 25.638599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.177649, 15.911723, 25.708326>,  <12.161679, 16.294136, 25.824537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.177649, 15.911723, 25.708326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483680, 0.272916, -0.831607,
		0.874334, -0.107321, 0.473310,
		0.039924, -0.956033, -0.290529,
		12.189626, 15.624913, 25.621168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.778981, 16.201605, 25.332949>,  <12.161679, 16.294136, 25.824537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.778981, 16.201605, 25.332949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.579326, 15.868342, 25.237690>,  <12.459533, 15.668386, 25.180534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.579326, 15.868342, 25.237690>,  <12.778981, 16.201605, 25.332949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.579326, 15.868342, 25.237690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339146, 0.065072, -0.938481,
		0.797397, -0.549198, 0.250081,
		-0.499138, -0.833155, -0.238146,
		12.429585, 15.618396, 25.166246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<24.649767, 22.976255, 6.179379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.031206, 23.022701, 6.290497>,  <25.260069, 23.050570, 6.357168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.031206, 23.022701, 6.290497>,  <24.649767, 22.976255, 6.179379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.031206, 23.022701, 6.290497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285084, 0.051436, 0.957122,
		0.096854, -0.991902, 0.082153,
		0.953597, 0.116121, 0.277794,
		25.317286, 23.057537, 6.373836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.931431, 22.527624, 6.699579>,  <24.649767, 22.976255, 6.179379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.931431, 22.527624, 6.699579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.134209, 22.869871, 6.741380>,  <25.255877, 23.075220, 6.766460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.134209, 22.869871, 6.741380>,  <24.931431, 22.527624, 6.699579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.134209, 22.869871, 6.741380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173556, -0.017433, 0.984670,
		0.844324, -0.517311, 0.139660,
		0.506946, 0.855619, 0.104502,
		25.286293, 23.126556, 6.772730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.447256, 22.405989, 7.158092>,  <24.931431, 22.527624, 6.699579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.447256, 22.405989, 7.158092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.363026, 22.795647, 7.190839>,  <25.312489, 23.029442, 7.210486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.363026, 22.795647, 7.190839>,  <25.447256, 22.405989, 7.158092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.363026, 22.795647, 7.190839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065878, -0.097694, 0.993034,
		0.975356, 0.203714, 0.084746,
		-0.210574, 0.974144, 0.081866,
		25.299854, 23.087891, 7.215399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.947710, 22.831011, 7.511461>,  <25.447256, 22.405989, 7.158092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.947710, 22.831011, 7.511461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.566072, 22.939249, 7.562807>,  <25.337090, 23.004192, 7.593614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.566072, 22.939249, 7.562807>,  <25.947710, 22.831011, 7.511461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.566072, 22.939249, 7.562807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079713, -0.183702, 0.979745,
		0.288697, 0.945003, 0.153699,
		-0.954096, 0.270598, 0.128363,
		25.279844, 23.020428, 7.601315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830708, 23.096895, 8.211766>,  <25.947710, 22.831011, 7.511461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830708, 23.096895, 8.211766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.452919, 23.019629, 8.105441>,  <25.226246, 22.973269, 8.041646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.452919, 23.019629, 8.105441>,  <25.830708, 23.096895, 8.211766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.452919, 23.019629, 8.105441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263040, -0.040345, 0.963941,
		-0.196928, 0.980335, -0.012707,
		-0.944473, -0.193169, -0.265813,
		25.169577, 22.961678, 8.025698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.376635, 23.575159, 8.567666>,  <25.830708, 23.096895, 8.211766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.376635, 23.575159, 8.567666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.173172, 23.244507, 8.471372>,  <25.051094, 23.046116, 8.413595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.173172, 23.244507, 8.471372>,  <25.376635, 23.575159, 8.567666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.173172, 23.244507, 8.471372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214813, -0.148920, 0.965235,
		-0.833742, 0.542685, -0.101822,
		-0.508655, -0.826629, -0.240736,
		25.020575, 22.996517, 8.399151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.670969, 23.697466, 8.803666>,  <25.376635, 23.575159, 8.567666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.670969, 23.697466, 8.803666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.784367, 23.313877, 8.804474>,  <24.852406, 23.083723, 8.804958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.784367, 23.313877, 8.804474>,  <24.670969, 23.697466, 8.803666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.784367, 23.313877, 8.804474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157239, -0.044405, 0.986562,
		-0.945996, -0.280000, -0.163377,
		0.283492, -0.958973, 0.002020,
		24.869413, 23.026186, 8.805079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.164068, 23.368633, 9.034906>,  <24.670969, 23.697466, 8.803666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.164068, 23.368633, 9.034906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.480736, 23.139362, 9.119499>,  <24.670736, 23.001801, 9.170255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.480736, 23.139362, 9.119499>,  <24.164068, 23.368633, 9.034906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.480736, 23.139362, 9.119499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302055, -0.066321, 0.950981,
		-0.531056, -0.816743, -0.225635,
		0.791671, -0.573178, 0.211481,
		24.718237, 22.967409, 9.182943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.021210, 23.135347, 9.703957>,  <24.164068, 23.368633, 9.034906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.021210, 23.135347, 9.703957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.385073, 22.974209, 9.663483>,  <24.603390, 22.877525, 9.639198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.385073, 22.974209, 9.663483>,  <24.021210, 23.135347, 9.703957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.385073, 22.974209, 9.663483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031764, -0.310366, 0.950086,
		-0.414142, -0.861039, -0.295123,
		0.909658, -0.402845, -0.101186,
		24.657970, 22.853355, 9.633127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.968769, 22.438803, 9.688056>,  <24.021210, 23.135347, 9.703957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.968769, 22.438803, 9.688056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.311144, 22.577557, 9.841438>,  <24.516569, 22.660809, 9.933468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.311144, 22.577557, 9.841438>,  <23.968769, 22.438803, 9.688056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.311144, 22.577557, 9.841438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273332, -0.325966, 0.905006,
		0.438928, -0.879440, -0.184192,
		0.855939, 0.346887, 0.383455,
		24.567926, 22.681623, 9.956474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.440918, 21.932104, 9.929732>,  <23.968769, 22.438803, 9.688056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.440918, 21.932104, 9.929732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.500412, 22.264927, 10.143485>,  <24.536108, 22.464621, 10.271736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.500412, 22.264927, 10.143485>,  <24.440918, 21.932104, 9.929732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.500412, 22.264927, 10.143485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414258, -0.438263, 0.797694,
		0.897925, -0.340014, 0.279501,
		0.148733, 0.832055, 0.534381,
		24.545033, 22.514544, 10.303800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.806168, 21.720850, 10.528716>,  <24.440918, 21.932104, 9.929732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.806168, 21.720850, 10.528716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.547274, 22.020952, 10.582682>,  <24.391937, 22.201014, 10.615061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.547274, 22.020952, 10.582682>,  <24.806168, 21.720850, 10.528716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.547274, 22.020952, 10.582682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534508, -0.572854, 0.621402,
		0.543497, 0.330080, 0.771789,
		-0.647235, 0.750257, 0.134914,
		24.353104, 22.246029, 10.623156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.734259, 21.808523, 11.225322>,  <24.806168, 21.720850, 10.528716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.734259, 21.808523, 11.225322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.413513, 21.997892, 11.079509>,  <24.221066, 22.111513, 10.992021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.413513, 21.997892, 11.079509>,  <24.734259, 21.808523, 11.225322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.413513, 21.997892, 11.079509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585128, -0.498634, 0.639523,
		0.120996, 0.726109, 0.676850,
		-0.801864, 0.473424, -0.364534,
		24.172955, 22.139919, 10.970149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.332218, 22.136806, 11.837370>,  <24.734259, 21.808523, 11.225322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.332218, 22.136806, 11.837370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.078854, 22.115963, 11.528547>,  <23.926834, 22.103456, 11.343253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.078854, 22.115963, 11.528547>,  <24.332218, 22.136806, 11.837370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.078854, 22.115963, 11.528547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730923, -0.287269, 0.619054,
		-0.254047, 0.956432, 0.143872,
		-0.633413, -0.052110, -0.772058,
		23.888830, 22.100330, 11.296930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.754690, 22.324303, 12.052134>,  <24.332218, 22.136806, 11.837370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.754690, 22.324303, 12.052134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.668741, 22.118738, 11.719934>,  <23.617172, 21.995399, 11.520616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.668741, 22.118738, 11.719934>,  <23.754690, 22.324303, 12.052134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.668741, 22.118738, 11.719934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694083, -0.517884, 0.500045,
		-0.687080, 0.683879, -0.245419,
		-0.214871, -0.513912, -0.830497,
		23.604280, 21.964565, 11.470785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.024992, 22.298096, 11.991765>,  <23.754690, 22.324303, 12.052134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.024992, 22.298096, 11.991765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.202791, 21.991098, 11.806993>,  <23.309471, 21.806900, 11.696131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.202791, 21.991098, 11.806993>,  <23.024992, 22.298096, 11.991765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.202791, 21.991098, 11.806993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698513, -0.619809, 0.357655,
		-0.560805, 0.163687, -0.811606,
		0.444497, -0.767492, -0.461929,
		23.336140, 21.760851, 11.668415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.339771, 21.926939, 11.743146>,  <23.024992, 22.298096, 11.991765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.339771, 21.926939, 11.743146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.632549, 21.656132, 11.712400>,  <22.808216, 21.493649, 11.693954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.632549, 21.656132, 11.712400>,  <22.339771, 21.926939, 11.743146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.632549, 21.656132, 11.712400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626912, -0.713338, 0.313256,
		-0.266908, -0.181100, -0.946553,
		0.731943, -0.677017, -0.076862,
		22.852133, 21.453026, 11.689342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.946348, 21.305241, 11.686244>,  <22.339771, 21.926939, 11.743146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.946348, 21.305241, 11.686244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.314676, 21.159285, 11.741298>,  <22.535673, 21.071711, 11.774330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.314676, 21.159285, 11.741298>,  <21.946348, 21.305241, 11.686244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.314676, 21.159285, 11.741298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388544, -0.828050, 0.404187,
		-0.033517, -0.425661, -0.904262,
		0.920821, -0.364892, 0.137634,
		22.590923, 21.049816, 11.782588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.067171, 20.661291, 11.308743>,  <21.946348, 21.305241, 11.686244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.067171, 20.661291, 11.308743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.343752, 20.634953, 11.596508>,  <22.509701, 20.619148, 11.769168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.343752, 20.634953, 11.596508>,  <22.067171, 20.661291, 11.308743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.343752, 20.634953, 11.596508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314349, -0.924043, 0.217553,
		0.650445, -0.376575, -0.659631,
		0.691453, -0.065848, 0.719415,
		22.551188, 20.615198, 11.812332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.330040, 20.055319, 11.261210>,  <22.067171, 20.661291, 11.308743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.330040, 20.055319, 11.261210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.451101, 20.140308, 11.632856>,  <22.523739, 20.191303, 11.855844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.451101, 20.140308, 11.632856>,  <22.330040, 20.055319, 11.261210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.451101, 20.140308, 11.632856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315810, -0.897407, 0.308097,
		0.899258, -0.386671, -0.204501,
		0.302653, 0.212475, 0.929115,
		22.541897, 20.204050, 11.911591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.798651, 19.524340, 11.468307>,  <22.330040, 20.055319, 11.261210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.798651, 19.524340, 11.468307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.652576, 19.685587, 11.803959>,  <22.564932, 19.782335, 12.005350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.652576, 19.685587, 11.803959>,  <22.798651, 19.524340, 11.468307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.652576, 19.685587, 11.803959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129843, -0.914628, 0.382880,
		0.921836, 0.030867, 0.386350,
		-0.365185, 0.403117, 0.839128,
		22.543020, 19.806522, 12.055697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.935219, 18.993715, 11.908303>,  <22.798651, 19.524340, 11.468307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.935219, 18.993715, 11.908303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.687445, 19.215248, 12.130859>,  <22.538780, 19.348167, 12.264393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.687445, 19.215248, 12.130859>,  <22.935219, 18.993715, 11.908303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.687445, 19.215248, 12.130859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267560, -0.815239, 0.513612,
		0.738045, 0.169282, 0.653171,
		-0.619436, 0.553831, 0.556390,
		22.501614, 19.381397, 12.297776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.086868, 18.883030, 12.657317>,  <22.935219, 18.993715, 11.908303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.086868, 18.883030, 12.657317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.710531, 19.017775, 12.671960>,  <22.484730, 19.098621, 12.680745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.710531, 19.017775, 12.671960>,  <23.086868, 18.883030, 12.657317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.710531, 19.017775, 12.671960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231812, -0.718683, 0.655559,
		0.247140, 0.608293, 0.754256,
		-0.940843, 0.336860, 0.036606,
		22.428278, 19.118834, 12.682941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.991632, 18.705309, 13.319454>,  <23.086868, 18.883030, 12.657317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.991632, 18.705309, 13.319454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.623663, 18.764431, 13.174187>,  <22.402882, 18.799904, 13.087027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.623663, 18.764431, 13.174187>,  <22.991632, 18.705309, 13.319454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.623663, 18.764431, 13.174187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374235, -0.607334, 0.700780,
		-0.116986, 0.780576, 0.614016,
		-0.919925, 0.147805, -0.363168,
		22.347685, 18.808773, 13.065236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.573017, 18.969324, 13.937683>,  <22.991632, 18.705309, 13.319454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.573017, 18.969324, 13.937683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.318224, 18.830906, 13.662146>,  <22.165348, 18.747854, 13.496823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.318224, 18.830906, 13.662146>,  <22.573017, 18.969324, 13.937683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.318224, 18.830906, 13.662146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231507, -0.766463, 0.599116,
		-0.735293, 0.541099, 0.408113,
		-0.636984, -0.346045, -0.688843,
		22.127129, 18.727093, 13.455493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.951168, 18.877167, 14.288720>,  <22.573017, 18.969324, 13.937683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.951168, 18.877167, 14.288720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.895317, 18.646540, 13.966707>,  <21.861807, 18.508163, 13.773499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.895317, 18.646540, 13.966707>,  <21.951168, 18.877167, 14.288720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.895317, 18.646540, 13.966707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306662, -0.747847, 0.588799,
		-0.941521, 0.329085, -0.072390,
		-0.139628, -0.576566, -0.805031,
		21.853428, 18.473570, 13.725198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.177790, 18.664680, 14.211251>,  <21.951168, 18.877167, 14.288720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.177790, 18.664680, 14.211251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.407425, 18.373205, 14.061887>,  <21.545206, 18.198320, 13.972268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.407425, 18.373205, 14.061887>,  <21.177790, 18.664680, 14.211251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.407425, 18.373205, 14.061887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422917, -0.654400, 0.626819,
		-0.701117, -0.201926, -0.683857,
		0.574087, -0.728689, -0.373413,
		21.579651, 18.154598, 13.949863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.766621, 18.017012, 14.096162>,  <21.177790, 18.664680, 14.211251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.766621, 18.017012, 14.096162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.127470, 17.848255, 14.059973>,  <21.343979, 17.747002, 14.038260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.127470, 17.848255, 14.059973>,  <20.766621, 18.017012, 14.096162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.127470, 17.848255, 14.059973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272062, -0.718918, 0.639640,
		-0.334900, -0.552420, -0.763331,
		0.902122, -0.421889, -0.090473,
		21.398108, 17.721689, 14.032831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.635098, 17.324036, 14.186327>,  <20.766621, 18.017012, 14.096162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.635098, 17.324036, 14.186327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.031347, 17.315027, 14.240228>,  <21.269096, 17.309622, 14.272568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.031347, 17.315027, 14.240228>,  <20.635098, 17.324036, 14.186327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.031347, 17.315027, 14.240228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114235, -0.677551, 0.726550,
		0.074938, -0.735131, -0.673770,
		0.990624, -0.022522, 0.134752,
		21.328535, 17.308271, 14.280653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.872726, 16.591982, 14.045713>,  <20.635098, 17.324036, 14.186327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.872726, 16.591982, 14.045713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.130821, 16.773102, 14.291850>,  <21.285677, 16.881773, 14.439532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.130821, 16.773102, 14.291850>,  <20.872726, 16.591982, 14.045713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.130821, 16.773102, 14.291850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041264, -0.824917, 0.563746,
		0.762868, -0.338357, -0.550950,
		0.645236, 0.452799, 0.615341,
		21.324392, 16.908941, 14.476452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.437675, 16.126629, 14.075521>,  <20.872726, 16.591982, 14.045713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.437675, 16.126629, 14.075521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.512182, 16.369343, 14.384614>,  <21.556887, 16.514971, 14.570070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.512182, 16.369343, 14.384614>,  <21.437675, 16.126629, 14.075521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.512182, 16.369343, 14.384614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267798, -0.788074, 0.554277,
		0.945298, 0.103694, -0.309287,
		0.186266, 0.606783, 0.772735,
		21.568062, 16.551378, 14.616434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.157183, 16.212421, 14.370287>,  <21.437675, 16.126629, 14.075521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.157183, 16.212421, 14.370287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.849869, 16.239735, 14.624869>,  <21.665480, 16.256123, 14.777618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.849869, 16.239735, 14.624869>,  <22.157183, 16.212421, 14.370287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.849869, 16.239735, 14.624869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270526, -0.866495, 0.419526,
		0.580132, 0.494493, 0.647243,
		-0.768285, 0.068285, 0.636455,
		21.619383, 16.260220, 14.815805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.522375, 16.190052, 15.027679>,  <22.157183, 16.212421, 14.370287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.522375, 16.190052, 15.027679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.143799, 16.083300, 15.100370>,  <21.916653, 16.019247, 15.143985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.143799, 16.083300, 15.100370>,  <22.522375, 16.190052, 15.027679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.143799, 16.083300, 15.100370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317479, -0.666708, 0.674320,
		-0.058805, 0.695898, 0.715729,
		-0.946440, -0.266882, 0.181728,
		21.859867, 16.003235, 15.154889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.821934, 16.454021, 14.432313>,  <22.522375, 16.190052, 15.027679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.821934, 16.454021, 14.432313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.171059, 16.309889, 14.563988>,  <23.380533, 16.223410, 14.642993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.171059, 16.309889, 14.563988>,  <22.821934, 16.454021, 14.432313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.171059, 16.309889, 14.563988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415153, 0.902760, -0.112573,
		-0.256614, 0.234917, 0.937530,
		0.872810, -0.360331, 0.329187,
		23.432901, 16.201790, 14.662744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.012920, 16.936388, 14.919943>,  <22.821934, 16.454021, 14.432313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.012920, 16.936388, 14.919943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.342474, 16.729912, 14.826341>,  <23.540207, 16.606026, 14.770180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.342474, 16.729912, 14.826341>,  <23.012920, 16.936388, 14.919943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.342474, 16.729912, 14.826341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492178, 0.856367, -0.156195,
		0.281021, 0.013515, 0.959607,
		0.823886, -0.516191, -0.234006,
		23.589640, 16.575054, 14.756139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.631413, 17.311066, 15.275347>,  <23.012920, 16.936388, 14.919943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.631413, 17.311066, 15.275347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.759174, 17.094408, 14.964323>,  <23.835833, 16.964413, 14.777709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.759174, 17.094408, 14.964323>,  <23.631413, 17.311066, 15.275347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.759174, 17.094408, 14.964323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588936, 0.756294, -0.284910,
		0.742384, -0.366931, 0.560560,
		0.319406, -0.541646, -0.777560,
		23.854996, 16.931913, 14.731055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.283966, 17.452753, 15.224264>,  <23.631413, 17.311066, 15.275347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.283966, 17.452753, 15.224264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.245743, 17.302195, 14.855658>,  <24.222809, 17.211859, 14.634494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.245743, 17.302195, 14.855658>,  <24.283966, 17.452753, 15.224264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.245743, 17.302195, 14.855658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558126, 0.746288, -0.362698,
		0.824235, -0.548981, 0.138765,
		-0.095556, -0.376397, -0.921517,
		24.217075, 17.189276, 14.579203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.964384, 17.280510, 14.907664>,  <24.283966, 17.452753, 15.224264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.964384, 17.280510, 14.907664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.702250, 17.319048, 14.607997>,  <24.544970, 17.342171, 14.428196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.702250, 17.319048, 14.607997>,  <24.964384, 17.280510, 14.907664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.702250, 17.319048, 14.607997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623128, 0.629524, -0.464123,
		0.426904, -0.770985, -0.472584,
		-0.655335, 0.096344, -0.749169,
		24.505650, 17.347952, 14.383246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.332035, 17.421629, 14.396786>,  <24.964384, 17.280510, 14.907664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.332035, 17.421629, 14.396786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.984200, 17.517576, 14.224146>,  <24.775497, 17.575144, 14.120562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.984200, 17.517576, 14.224146>,  <25.332035, 17.421629, 14.396786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.984200, 17.517576, 14.224146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471626, 0.662341, -0.582128,
		0.146232, -0.709766, -0.689093,
		-0.869589, 0.239868, -0.431599,
		24.723322, 17.589537, 14.094666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.500940, 17.526640, 13.698194>,  <25.332035, 17.421629, 14.396786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.500940, 17.526640, 13.698194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.142750, 17.695398, 13.754937>,  <24.927835, 17.796654, 13.788983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.142750, 17.695398, 13.754937>,  <25.500940, 17.526640, 13.698194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.142750, 17.695398, 13.754937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279143, 0.780548, -0.559306,
		-0.346695, -0.461248, -0.816733,
		-0.895479, 0.421894, 0.141858,
		24.874105, 17.821966, 13.797495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.257473, 17.647392, 13.068253>,  <25.500940, 17.526640, 13.698194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.257473, 17.647392, 13.068253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.067389, 17.891623, 13.321668>,  <24.953339, 18.038160, 13.473717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.067389, 17.891623, 13.321668>,  <25.257473, 17.647392, 13.068253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.067389, 17.891623, 13.321668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252960, 0.784443, -0.566269,
		-0.842725, -0.108837, -0.527227,
		-0.475210, 0.610576, 0.633539,
		24.924826, 18.074795, 13.511729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.909111, 18.083946, 12.705606>,  <25.257473, 17.647392, 13.068253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.909111, 18.083946, 12.705606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.924448, 18.285030, 13.051047>,  <24.933651, 18.405682, 13.258312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.924448, 18.285030, 13.051047>,  <24.909111, 18.083946, 12.705606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.924448, 18.285030, 13.051047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292889, 0.820629, -0.490698,
		-0.955377, 0.271755, -0.115773,
		0.038343, 0.502710, 0.863604,
		24.935951, 18.435843, 13.310128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.572647, 18.715368, 12.612476>,  <24.909111, 18.083946, 12.705606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.572647, 18.715368, 12.612476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.802174, 18.790682, 12.931296>,  <24.939890, 18.835869, 13.122588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.802174, 18.790682, 12.931296>,  <24.572647, 18.715368, 12.612476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.802174, 18.790682, 12.931296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444052, 0.746219, -0.495959,
		-0.688153, 0.638519, 0.344584,
		0.573814, 0.188282, 0.797049,
		24.974318, 18.847166, 13.170411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.529387, 19.481596, 12.685599>,  <24.572647, 18.715368, 12.612476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.529387, 19.481596, 12.685599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.839956, 19.327974, 12.885465>,  <25.026299, 19.235802, 13.005384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.839956, 19.327974, 12.885465>,  <24.529387, 19.481596, 12.685599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.839956, 19.327974, 12.885465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580225, 0.745087, -0.328915,
		-0.245971, 0.545295, 0.801343,
		0.776426, -0.384056, 0.499664,
		25.072884, 19.212757, 13.035364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.634247, 19.942453, 13.191423>,  <24.529387, 19.481596, 12.685599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.634247, 19.942453, 13.191423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.975872, 19.753382, 13.104568>,  <25.180847, 19.639938, 13.052454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.975872, 19.753382, 13.104568>,  <24.634247, 19.942453, 13.191423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.975872, 19.753382, 13.104568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365027, 0.842019, -0.397190,
		0.370579, 0.259964, 0.891679,
		0.854065, -0.472677, -0.217140,
		25.232092, 19.611578, 13.039426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.238731, 20.444197, 13.334659>,  <24.634247, 19.942453, 13.191423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.238731, 20.444197, 13.334659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.396986, 20.148680, 13.116426>,  <25.491940, 19.971371, 12.985487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.396986, 20.148680, 13.116426>,  <25.238731, 20.444197, 13.334659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.396986, 20.148680, 13.116426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524191, 0.669438, -0.526382,
		0.754118, -0.077731, 0.652122,
		0.395639, -0.738790, -0.545581,
		25.515678, 19.927042, 12.952752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.958202, 20.628511, 13.299897>,  <25.238731, 20.444197, 13.334659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.958202, 20.628511, 13.299897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.920456, 20.348156, 13.017097>,  <25.897808, 20.179943, 12.847418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.920456, 20.348156, 13.017097>,  <25.958202, 20.628511, 13.299897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.920456, 20.348156, 13.017097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664450, 0.484503, -0.569003,
		0.741351, -0.523461, 0.419986,
		-0.094366, -0.700890, -0.707000,
		25.892145, 20.137890, 12.804997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.623909, 20.545576, 13.036946>,  <25.958202, 20.628511, 13.299897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.623909, 20.545576, 13.036946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.390654, 20.385805, 12.753988>,  <26.250700, 20.289944, 12.584213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.390654, 20.385805, 12.753988>,  <26.623909, 20.545576, 13.036946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.390654, 20.385805, 12.753988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515580, 0.490964, -0.702234,
		0.627797, -0.774218, -0.080363,
		-0.583137, -0.399427, -0.707396,
		26.215712, 20.265978, 12.541769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013603, 20.184952, 12.407639>,  <26.623909, 20.545576, 13.036946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013603, 20.184952, 12.407639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.666557, 20.348568, 12.294552>,  <26.458330, 20.446737, 12.226700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.666557, 20.348568, 12.294552>,  <27.013603, 20.184952, 12.407639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.666557, 20.348568, 12.294552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493202, 0.635677, -0.593858,
		-0.063195, -0.654677, -0.753262,
		-0.867617, 0.409039, -0.282717,
		26.406273, 20.471279, 12.209737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189550, 20.466068, 11.783100>,  <27.013603, 20.184952, 12.407639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.189550, 20.466068, 11.783100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.826494, 20.624172, 11.839616>,  <26.608662, 20.719034, 11.873525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.826494, 20.624172, 11.839616>,  <27.189550, 20.466068, 11.783100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826494, 20.624172, 11.839616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265890, 0.801848, -0.535109,
		-0.324798, -0.448119, -0.832884,
		-0.907639, 0.395258, 0.141288,
		26.554203, 20.742750, 11.882002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.967272, 20.640844, 11.214634>,  <27.189550, 20.466068, 11.783100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.967272, 20.640844, 11.214634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.741024, 20.876659, 11.445291>,  <26.605274, 21.018148, 11.583685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.741024, 20.876659, 11.445291>,  <26.967272, 20.640844, 11.214634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741024, 20.876659, 11.445291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436650, 0.807280, -0.397033,
		-0.699579, 0.027221, -0.714037,
		-0.565620, 0.589540, 0.576642,
		26.571339, 21.053522, 11.618283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426258, 21.044641, 10.806359>,  <26.967272, 20.640844, 11.214634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426258, 21.044641, 10.806359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.519060, 21.244160, 11.140395>,  <26.574741, 21.363871, 11.340816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.519060, 21.244160, 11.140395>,  <26.426258, 21.044641, 10.806359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519060, 21.244160, 11.140395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431049, 0.716897, -0.547956,
		-0.871992, 0.487093, -0.048682,
		0.232006, 0.498798, 0.835089,
		26.588661, 21.393799, 11.390922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<17.472876, 16.064384, 21.734928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.209587, 15.808412, 21.576319>,  <17.051613, 15.654828, 21.481153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.209587, 15.808412, 21.576319>,  <17.472876, 16.064384, 21.734928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.209587, 15.808412, 21.576319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598849, -0.125897, -0.790904,
		0.456205, -0.758047, 0.466092,
		-0.658222, -0.639933, -0.396521,
		17.012121, 15.616431, 21.457363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.855438, 15.504008, 21.533573>,  <17.472876, 16.064384, 21.734928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.855438, 15.504008, 21.533573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.512207, 15.472610, 21.330578>,  <17.306269, 15.453772, 21.208780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.512207, 15.472610, 21.330578>,  <17.855438, 15.504008, 21.533573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.512207, 15.472610, 21.330578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507134, 0.025848, -0.861480,
		0.080741, -0.996579, 0.017629,
		-0.858077, -0.078497, -0.507486,
		17.254784, 15.449062, 21.178331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.124472, 15.252891, 20.982727>,  <17.855438, 15.504008, 21.533573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.124472, 15.252891, 20.982727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.758663, 15.345377, 20.849949>,  <17.539177, 15.400869, 20.770283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.758663, 15.345377, 20.849949>,  <18.124472, 15.252891, 20.982727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.758663, 15.345377, 20.849949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300546, -0.160902, -0.940097,
		-0.270779, -0.959504, 0.077656,
		-0.914522, 0.231219, -0.331944,
		17.484306, 15.414742, 20.750366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.907188, 14.664628, 20.576515>,  <18.124472, 15.252891, 20.982727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.907188, 14.664628, 20.576515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.703791, 14.988096, 20.458204>,  <17.581751, 15.182178, 20.387218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.703791, 14.988096, 20.458204>,  <17.907188, 14.664628, 20.576515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.703791, 14.988096, 20.458204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163359, -0.246663, -0.955234,
		-0.845426, -0.534050, -0.006676,
		-0.508496, 0.808670, -0.295777,
		17.551241, 15.230698, 20.369471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.446650, 14.436827, 20.076349>,  <17.907188, 14.664628, 20.576515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.446650, 14.436827, 20.076349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.516565, 14.828363, 20.033794>,  <17.558516, 15.063285, 20.008263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.516565, 14.828363, 20.033794>,  <17.446650, 14.436827, 20.076349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.516565, 14.828363, 20.033794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092793, -0.123945, -0.987941,
		-0.980223, 0.162811, -0.112494,
		0.174791, 0.978841, -0.106386,
		17.569002, 15.122016, 20.001879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.310366, 14.421578, 19.354975>,  <17.446650, 14.436827, 20.076349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.310366, 14.421578, 19.354975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.463034, 14.779434, 19.447882>,  <17.554634, 14.994147, 19.503626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.463034, 14.779434, 19.447882>,  <17.310366, 14.421578, 19.354975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.463034, 14.779434, 19.447882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323352, 0.106175, -0.940303,
		-0.865894, 0.433989, -0.248760,
		0.381669, 0.894640, 0.232268,
		17.577534, 15.047826, 19.517563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.885874, 15.002436, 19.015610>,  <17.310366, 14.421578, 19.354975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.885874, 15.002436, 19.015610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.271566, 15.100753, 19.055298>,  <17.502981, 15.159743, 19.079111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.271566, 15.100753, 19.055298>,  <16.885874, 15.002436, 19.015610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.271566, 15.100753, 19.055298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066523, 0.137955, -0.988202,
		-0.256580, 0.959455, 0.116669,
		0.964231, 0.245792, 0.099222,
		17.560835, 15.174491, 19.085064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.954704, 15.550529, 18.552597>,  <16.885874, 15.002436, 19.015610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.954704, 15.550529, 18.552597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.335764, 15.448324, 18.618532>,  <17.564400, 15.387001, 18.658092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.335764, 15.448324, 18.618532>,  <16.954704, 15.550529, 18.552597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.335764, 15.448324, 18.618532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212245, 0.170582, -0.962213,
		0.217739, 0.951638, 0.216736,
		0.952650, -0.255512, 0.164838,
		17.621559, 15.371671, 18.667984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.349688, 16.060505, 18.183950>,  <16.954704, 15.550529, 18.552597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.349688, 16.060505, 18.183950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.592632, 15.756763, 18.277321>,  <17.738400, 15.574516, 18.333344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.592632, 15.756763, 18.277321>,  <17.349688, 16.060505, 18.183950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.592632, 15.756763, 18.277321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398381, 0.036914, -0.916477,
		0.687318, 0.649625, 0.324933,
		0.607361, -0.759358, 0.233427,
		17.774841, 15.528955, 18.347349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.040337, 16.239965, 17.876663>,  <17.349688, 16.060505, 18.183950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.040337, 16.239965, 17.876663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.046297, 15.842721, 17.923155>,  <18.049873, 15.604374, 17.951050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.046297, 15.842721, 17.923155>,  <18.040337, 16.239965, 17.876663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.046297, 15.842721, 17.923155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264412, -0.108188, -0.958322,
		0.964295, 0.045013, 0.260978,
		0.014903, -0.993111, 0.116228,
		18.050768, 15.544787, 17.958023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.469587, 16.067713, 17.383745>,  <18.040337, 16.239965, 17.876663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.469587, 16.067713, 17.383745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.339777, 15.697137, 17.460051>,  <18.261890, 15.474791, 17.505833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.339777, 15.697137, 17.460051>,  <18.469587, 16.067713, 17.383745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.339777, 15.697137, 17.460051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291478, -0.289812, -0.911619,
		0.899847, -0.240241, 0.364088,
		-0.324526, -0.926441, 0.190762,
		18.242418, 15.419205, 17.517279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.103754, 15.676851, 17.225500>,  <18.469587, 16.067713, 17.383745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.103754, 15.676851, 17.225500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.765869, 15.464876, 17.195484>,  <18.563139, 15.337691, 17.177475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.765869, 15.464876, 17.195484>,  <19.103754, 15.676851, 17.225500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.765869, 15.464876, 17.195484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257166, -0.278898, -0.925246,
		0.469394, -0.800863, 0.371870,
		-0.844710, -0.529937, -0.075041,
		18.512457, 15.305895, 17.172972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.390709, 15.031853, 17.086725>,  <19.103754, 15.676851, 17.225500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.390709, 15.031853, 17.086725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.032143, 15.164314, 16.968895>,  <18.817003, 15.243792, 16.898197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.032143, 15.164314, 16.968895>,  <19.390709, 15.031853, 17.086725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.032143, 15.164314, 16.968895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215964, -0.254036, -0.942775,
		-0.387038, -0.908736, 0.156204,
		-0.896415, 0.331156, -0.294576,
		18.763218, 15.263660, 16.880522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.984383, 15.431141, 17.369835>,  <19.390709, 15.031853, 17.086725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.984383, 15.431141, 17.369835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.908468, 15.369956, 17.757771>,  <19.862919, 15.333245, 17.990532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.908468, 15.369956, 17.757771>,  <19.984383, 15.431141, 17.369835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.908468, 15.369956, 17.757771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233100, -0.966567, -0.106830,
		0.953754, 0.205794, 0.219096,
		-0.189786, -0.152961, 0.969837,
		19.851532, 15.324068, 18.048721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.344149, 15.003700, 16.841633>,  <19.984383, 15.431141, 17.369835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.344149, 15.003700, 16.841633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.703733, 14.842212, 16.909607>,  <20.919483, 14.745318, 16.950392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.703733, 14.842212, 16.909607>,  <20.344149, 15.003700, 16.841633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.703733, 14.842212, 16.909607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418629, -0.677680, 0.604566,
		-0.128916, -0.614621, -0.778217,
		0.898961, -0.403722, 0.169934,
		20.973421, 14.721095, 16.960587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.173807, 14.385792, 16.890217>,  <20.344149, 15.003700, 16.841633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.173807, 14.385792, 16.890217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.540085, 14.397558, 17.050533>,  <20.759851, 14.404618, 17.146723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.540085, 14.397558, 17.050533>,  <20.173807, 14.385792, 16.890217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.540085, 14.397558, 17.050533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343766, -0.459220, 0.819111,
		0.208146, -0.887836, -0.410394,
		0.915697, 0.029415, 0.400793,
		20.814795, 14.406383, 17.170771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.375610, 13.692649, 17.048531>,  <20.173807, 14.385792, 16.890217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.375610, 13.692649, 17.048531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.582623, 13.939033, 17.286102>,  <20.706831, 14.086863, 17.428646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.582623, 13.939033, 17.286102>,  <20.375610, 13.692649, 17.048531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.582623, 13.939033, 17.286102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299187, -0.520040, 0.800029,
		0.801654, -0.591736, -0.084849,
		0.517531, 0.615960, 0.593932,
		20.737883, 14.123820, 17.464281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.685116, 13.273611, 17.418159>,  <20.375610, 13.692649, 17.048531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.685116, 13.273611, 17.418159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.677763, 13.619474, 17.618969>,  <20.673351, 13.826992, 17.739454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.677763, 13.619474, 17.618969>,  <20.685116, 13.273611, 17.418159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.677763, 13.619474, 17.618969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131219, -0.499853, 0.856113,
		0.991183, -0.050138, 0.122648,
		-0.018383, 0.864658, 0.502024,
		20.672249, 13.878872, 17.769577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.075895, 13.138324, 18.005167>,  <20.685116, 13.273611, 17.418159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.075895, 13.138324, 18.005167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.881117, 13.472578, 18.106829>,  <20.764250, 13.673131, 18.167826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.881117, 13.472578, 18.106829>,  <21.075895, 13.138324, 18.005167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.881117, 13.472578, 18.106829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225084, -0.401213, 0.887899,
		0.843930, 0.375154, 0.383458,
		-0.486948, 0.835636, 0.254155,
		20.735033, 13.723269, 18.183075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.263269, 13.289870, 18.722918>,  <21.075895, 13.138324, 18.005167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.263269, 13.289870, 18.722918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.944323, 13.531247, 18.726057>,  <20.752954, 13.676073, 18.727942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.944323, 13.531247, 18.726057>,  <21.263269, 13.289870, 18.722918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.944323, 13.531247, 18.726057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297157, -0.403907, 0.865192,
		0.525262, 0.687545, 0.501380,
		-0.797369, 0.603441, 0.007849,
		20.705112, 13.712279, 18.728413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.228426, 13.659510, 19.379423>,  <21.263269, 13.289870, 18.722918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.228426, 13.659510, 19.379423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.850546, 13.671236, 19.248775>,  <20.623817, 13.678271, 19.170387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.850546, 13.671236, 19.248775>,  <21.228426, 13.659510, 19.379423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.850546, 13.671236, 19.248775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327204, -0.150521, 0.932889,
		-0.021815, 0.988172, 0.151790,
		-0.944702, 0.029315, -0.326617,
		20.567135, 13.680031, 19.150791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.903027, 14.172928, 19.759315>,  <21.228426, 13.659510, 19.379423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.903027, 14.172928, 19.759315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.618408, 13.927102, 19.623074>,  <20.447638, 13.779607, 19.541328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.618408, 13.927102, 19.623074>,  <20.903027, 14.172928, 19.759315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.618408, 13.927102, 19.623074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434598, 0.004040, 0.900615,
		-0.552110, 0.788856, -0.269963,
		-0.711547, -0.614564, -0.340605,
		20.404943, 13.742733, 19.520891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.192265, 14.460447, 19.692167>,  <20.903027, 14.172928, 19.759315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.192265, 14.460447, 19.692167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.125938, 14.066843, 19.718178>,  <20.086143, 13.830681, 19.733784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.125938, 14.066843, 19.718178>,  <20.192265, 14.460447, 19.692167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.125938, 14.066843, 19.718178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705387, 0.164426, 0.689488,
		-0.689155, 0.068458, -0.721373,
		-0.165813, -0.984011, 0.065025,
		20.076195, 13.771640, 19.737686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.640913, 14.484749, 19.993040>,  <20.192265, 14.460447, 19.692167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.640913, 14.484749, 19.993040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.695894, 14.089079, 20.013588>,  <19.728884, 13.851677, 20.025917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.695894, 14.089079, 20.013588>,  <19.640913, 14.484749, 19.993040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.695894, 14.089079, 20.013588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506774, -0.025670, 0.861697,
		-0.851051, -0.144476, -0.504816,
		0.137454, -0.989175, 0.051370,
		19.737131, 13.792326, 20.028999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.927109, 14.218534, 20.096674>,  <19.640913, 14.484749, 19.993040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.927109, 14.218534, 20.096674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.197968, 13.965136, 20.246422>,  <19.360483, 13.813097, 20.336271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.197968, 13.965136, 20.246422>,  <18.927109, 14.218534, 20.096674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.197968, 13.965136, 20.246422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555333, -0.106163, 0.824824,
		-0.482777, -0.766429, -0.423689,
		0.677149, -0.633495, 0.374371,
		19.401112, 13.775087, 20.358732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.508694, 13.657164, 20.319510>,  <18.927109, 14.218534, 20.096674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.508694, 13.657164, 20.319510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.851791, 13.587943, 20.513138>,  <19.057650, 13.546411, 20.629314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.851791, 13.587943, 20.513138>,  <18.508694, 13.657164, 20.319510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.851791, 13.587943, 20.513138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500324, -0.064682, 0.863419,
		-0.118104, -0.982787, -0.142062,
		0.857746, -0.173050, 0.484072,
		19.109116, 13.536028, 20.658360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.400450, 13.106375, 20.650141>,  <18.508694, 13.657164, 20.319510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.400450, 13.106375, 20.650141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.690479, 13.282464, 20.861979>,  <18.864496, 13.388118, 20.989080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.690479, 13.282464, 20.861979>,  <18.400450, 13.106375, 20.650141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.690479, 13.282464, 20.861979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414739, -0.334787, 0.846114,
		0.549782, -0.833139, -0.060167,
		0.725074, 0.440224, 0.529594,
		18.908001, 13.414531, 21.020857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.555222, 12.569640, 21.172733>,  <18.400450, 13.106375, 20.650141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.555222, 12.569640, 21.172733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.705721, 12.921689, 21.288540>,  <18.796021, 13.132918, 21.358025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.705721, 12.921689, 21.288540>,  <18.555222, 12.569640, 21.172733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.705721, 12.921689, 21.288540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524014, -0.055559, 0.849895,
		0.764097, -0.471485, 0.440292,
		0.376251, 0.880122, 0.289518,
		18.818596, 13.185725, 21.375395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.343332, 11.758208, 21.290663>,  <18.555222, 12.569640, 21.172733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.343332, 11.758208, 21.290663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.970373, 11.813308, 21.157001>,  <17.746597, 11.846368, 21.076805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.970373, 11.813308, 21.157001>,  <18.343332, 11.758208, 21.290663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.970373, 11.813308, 21.157001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351116, 0.125920, -0.927826,
		-0.085731, -0.982431, -0.165773,
		-0.932399, 0.137749, -0.334152,
		17.690653, 11.854632, 21.056755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.207523, 11.283396, 20.655109>,  <18.343332, 11.758208, 21.290663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.207523, 11.283396, 20.655109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.910259, 11.547842, 20.613852>,  <17.731901, 11.706510, 20.589098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.910259, 11.547842, 20.613852>,  <18.207523, 11.283396, 20.655109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.910259, 11.547842, 20.613852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090678, -0.053218, -0.994457,
		-0.662940, -0.748394, -0.020400,
		-0.743161, 0.661115, -0.103143,
		17.687311, 11.746177, 20.582909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.712286, 11.003336, 20.203545>,  <18.207523, 11.283396, 20.655109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.712286, 11.003336, 20.203545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.668402, 11.397416, 20.150869>,  <17.642071, 11.633864, 20.119265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.668402, 11.397416, 20.150869>,  <17.712286, 11.003336, 20.203545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.668402, 11.397416, 20.150869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144381, -0.146879, -0.978561,
		-0.983421, -0.088346, 0.158358,
		-0.109711, 0.985201, -0.131688,
		17.635489, 11.692977, 20.111362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.256733, 11.037354, 19.783672>,  <17.712286, 11.003336, 20.203545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.256733, 11.037354, 19.783672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.386730, 11.414794, 19.758373>,  <17.464729, 11.641258, 19.743193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.386730, 11.414794, 19.758373>,  <17.256733, 11.037354, 19.783672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.386730, 11.414794, 19.758373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275671, 0.030547, -0.960767,
		-0.904647, 0.329678, 0.270050,
		0.324993, 0.943599, -0.063249,
		17.484228, 11.697874, 19.739399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.710032, 11.419434, 19.542112>,  <17.256733, 11.037354, 19.783672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.710032, 11.419434, 19.542112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.046314, 11.619455, 19.459011>,  <17.248083, 11.739469, 19.409151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.046314, 11.619455, 19.459011>,  <16.710032, 11.419434, 19.542112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.046314, 11.619455, 19.459011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302328, 0.115165, -0.946221,
		-0.449237, 0.858302, 0.248000,
		0.840705, 0.500055, -0.207752,
		17.298525, 11.769472, 19.396685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.501827, 11.916417, 19.086168>,  <16.710032, 11.419434, 19.542112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.501827, 11.916417, 19.086168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.895899, 11.894076, 19.021299>,  <17.132341, 11.880672, 18.982378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.895899, 11.894076, 19.021299>,  <16.501827, 11.916417, 19.086168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.895899, 11.894076, 19.021299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161350, 0.018924, -0.986716,
		0.058179, 0.998260, 0.009632,
		0.985181, -0.055852, -0.162171,
		17.191454, 11.877320, 18.972649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.564045, 12.441305, 18.537363>,  <16.501827, 11.916417, 19.086168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.564045, 12.441305, 18.537363> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.900547, 12.225074, 18.534225>,  <17.102449, 12.095335, 18.532343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.900547, 12.225074, 18.534225>,  <16.564045, 12.441305, 18.537363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.900547, 12.225074, 18.534225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023688, -0.022360, -0.999469,
		0.540116, 0.840996, -0.031616,
		0.841257, -0.540579, -0.007844,
		17.152924, 12.062901, 18.531872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.032679, 12.708652, 17.865503>,  <16.564045, 12.441305, 18.537363>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.032679, 12.708652, 17.865503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.164383, 12.340770, 17.951042>,  <17.243404, 12.120041, 18.002365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.164383, 12.340770, 17.951042>,  <17.032679, 12.708652, 17.865503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.164383, 12.340770, 17.951042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005031, -0.228180, -0.973606,
		0.944226, 0.319493, -0.079757,
		0.329259, -0.919706, 0.213846,
		17.263161, 12.064858, 18.015196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.659697, 12.458022, 17.482580>,  <17.032679, 12.708652, 17.865503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.659697, 12.458022, 17.482580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.447462, 12.123851, 17.539902>,  <17.320122, 11.923348, 17.574295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.447462, 12.123851, 17.539902>,  <17.659697, 12.458022, 17.482580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.447462, 12.123851, 17.539902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002796, -0.170790, -0.985303,
		0.847625, -0.522389, 0.092955,
		-0.530588, -0.835428, 0.143305,
		17.288286, 11.873222, 17.582893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.644854, 12.042362, 16.801222>,  <17.659697, 12.458022, 17.482580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.644854, 12.042362, 16.801222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.365885, 11.842958, 17.007170>,  <17.198503, 11.723316, 17.130739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.365885, 11.842958, 17.007170>,  <17.644854, 12.042362, 16.801222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.365885, 11.842958, 17.007170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262427, -0.490889, -0.830759,
		0.666885, -0.714505, 0.211534,
		-0.697421, -0.498509, 0.514872,
		17.156658, 11.693406, 17.161631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.682701, 11.360709, 16.645668>,  <17.644854, 12.042362, 16.801222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.682701, 11.360709, 16.645668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.307219, 11.414697, 16.772547>,  <17.081928, 11.447089, 16.848675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.307219, 11.414697, 16.772547>,  <17.682701, 11.360709, 16.645668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.307219, 11.414697, 16.772547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340751, -0.502500, -0.794596,
		0.052148, -0.853978, 0.517690,
		-0.938706, 0.134967, 0.317198,
		17.025606, 11.455187, 16.867706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.397324, 10.694457, 16.618891>,  <17.682701, 11.360709, 16.645668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.397324, 10.694457, 16.618891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.099625, 10.961553, 16.624834>,  <16.921005, 11.121810, 16.628401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.099625, 10.961553, 16.624834>,  <17.397324, 10.694457, 16.618891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.099625, 10.961553, 16.624834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394447, -0.421469, -0.816563,
		-0.538989, -0.613586, 0.577064,
		-0.744247, 0.667739, 0.014860,
		16.876350, 11.161875, 16.629292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<14.561844, 11.558999, 25.700983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.810699, 11.270330, 25.822399>,  <14.960011, 11.097130, 25.895248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.810699, 11.270330, 25.822399>,  <14.561844, 11.558999, 25.700983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.810699, 11.270330, 25.822399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689961, 0.322162, -0.648202,
		0.369999, 0.612701, 0.698354,
		0.622137, -0.721671, 0.303540,
		14.997339, 11.053829, 25.913462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.201144, 11.903654, 25.994488>,  <14.561844, 11.558999, 25.700983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.201144, 11.903654, 25.994488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.285367, 11.530410, 25.877890>,  <15.335901, 11.306463, 25.807930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.285367, 11.530410, 25.877890>,  <15.201144, 11.903654, 25.994488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.285367, 11.530410, 25.877890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593873, 0.358947, -0.720050,
		0.776518, -0.021500, 0.629728,
		0.210558, -0.933110, -0.291497,
		15.348535, 11.250477, 25.790440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.816380, 11.981480, 25.783718>,  <15.201144, 11.903654, 25.994488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.816380, 11.981480, 25.783718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.680885, 11.652139, 25.601574>,  <15.599589, 11.454535, 25.492289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.680885, 11.652139, 25.601574>,  <15.816380, 11.981480, 25.783718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.680885, 11.652139, 25.601574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418813, 0.301433, -0.856582,
		0.842529, -0.480864, 0.242725,
		-0.338734, -0.823352, -0.455359,
		15.579265, 11.405133, 25.464966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.411453, 11.672793, 25.430655>,  <15.816380, 11.981480, 25.783718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.411453, 11.672793, 25.430655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.101757, 11.501160, 25.244562>,  <15.915939, 11.398180, 25.132906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.101757, 11.501160, 25.244562>,  <16.411453, 11.672793, 25.430655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.101757, 11.501160, 25.244562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352264, 0.318535, -0.880026,
		0.525797, -0.845235, -0.095471,
		-0.774240, -0.429084, -0.465230,
		15.869485, 11.372435, 25.104994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.631655, 11.063842, 25.010456>,  <16.411453, 11.672793, 25.430655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.631655, 11.063842, 25.010456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.298372, 11.207747, 24.842487>,  <16.098402, 11.294090, 24.741707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.298372, 11.207747, 24.842487>,  <16.631655, 11.063842, 25.010456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.298372, 11.207747, 24.842487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443965, -0.017463, -0.895874,
		-0.329637, -0.932880, -0.145173,
		-0.833208, 0.359765, -0.419922,
		16.048410, 11.315677, 24.716511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.627487, 10.727067, 24.295832>,  <16.631655, 11.063842, 25.010456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.627487, 10.727067, 24.295832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.352245, 11.017262, 24.290508>,  <16.187099, 11.191380, 24.287315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.352245, 11.017262, 24.290508>,  <16.627487, 10.727067, 24.295832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.352245, 11.017262, 24.290508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159085, 0.132944, -0.978273,
		-0.707956, -0.675272, -0.206893,
		-0.688106, 0.725488, -0.013307,
		16.145813, 11.234909, 24.286516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.256897, 10.625023, 23.630589>,  <16.627487, 10.727067, 24.295832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.256897, 10.625023, 23.630589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.187614, 11.004386, 23.736813>,  <16.146046, 11.232004, 23.800547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.187614, 11.004386, 23.736813>,  <16.256897, 10.625023, 23.630589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.187614, 11.004386, 23.736813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134297, 0.289858, -0.947600,
		-0.975686, -0.128466, -0.177573,
		-0.173205, 0.948409, 0.265558,
		16.135653, 11.288909, 23.816481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.953428, 10.925863, 23.117729>,  <16.256897, 10.625023, 23.630589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.953428, 10.925863, 23.117729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.089478, 11.253633, 23.302277>,  <16.171108, 11.450294, 23.413006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.089478, 11.253633, 23.302277>,  <15.953428, 10.925863, 23.117729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.089478, 11.253633, 23.302277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289439, 0.375580, -0.880434,
		-0.894729, 0.432995, -0.109429,
		0.340124, 0.819423, 0.461368,
		16.191515, 11.499459, 23.440687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.579192, 11.529429, 22.726461>,  <15.953428, 10.925863, 23.117729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.579192, 11.529429, 22.726461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.909035, 11.662458, 22.909512>,  <16.106941, 11.742275, 23.019341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.909035, 11.662458, 22.909512>,  <15.579192, 11.529429, 22.726461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.909035, 11.662458, 22.909512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331540, 0.371347, -0.867285,
		-0.458372, 0.866889, 0.195955,
		0.824607, 0.332572, 0.457623,
		16.156416, 11.762230, 23.046799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.645136, 12.115335, 22.479343>,  <15.579192, 11.529429, 22.726461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.645136, 12.115335, 22.479343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.004822, 12.019404, 22.625710>,  <16.220633, 11.961846, 22.713530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.004822, 12.019404, 22.625710>,  <15.645136, 12.115335, 22.479343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.004822, 12.019404, 22.625710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428260, 0.311455, -0.848286,
		0.089475, 0.919499, 0.382773,
		0.899215, -0.239827, 0.365917,
		16.274586, 11.947456, 22.735485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.131666, 12.636169, 22.205700>,  <15.645136, 12.115335, 22.479343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.131666, 12.636169, 22.205700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.361311, 12.327041, 22.313879>,  <16.499098, 12.141563, 22.378786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.361311, 12.327041, 22.313879>,  <16.131666, 12.636169, 22.205700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.361311, 12.327041, 22.313879> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540346, 0.109449, -0.834294,
		0.615161, 0.625114, 0.480427,
		0.574111, -0.772822, 0.270449,
		16.533545, 12.095194, 22.395014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.788361, 12.914478, 22.156967>,  <16.131666, 12.636169, 22.205700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.788361, 12.914478, 22.156967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.823151, 12.517479, 22.122599>,  <16.844025, 12.279280, 22.101976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.823151, 12.517479, 22.122599>,  <16.788361, 12.914478, 22.156967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.823151, 12.517479, 22.122599> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469860, 0.116923, -0.874963,
		0.878446, 0.035729, 0.476505,
		0.086976, -0.992498, -0.085923,
		16.849243, 12.219729, 22.096821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.478571, 12.826845, 21.869381>,  <16.788361, 12.914478, 22.156967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.478571, 12.826845, 21.869381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.302301, 12.471872, 21.815315>,  <17.196539, 12.258888, 21.782875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.302301, 12.471872, 21.815315>,  <17.478571, 12.826845, 21.869381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.302301, 12.471872, 21.815315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406437, -0.062994, -0.911504,
		0.800384, -0.456614, 0.388445,
		-0.440676, -0.887432, -0.135165,
		17.170099, 12.205643, 21.774765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.034826, 12.387064, 21.631191>,  <17.478571, 12.826845, 21.869381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.034826, 12.387064, 21.631191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.691608, 12.217492, 21.515230>,  <17.485678, 12.115749, 21.445654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.691608, 12.217492, 21.515230>,  <18.034826, 12.387064, 21.631191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.691608, 12.217492, 21.515230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338391, -0.042053, -0.940066,
		0.386331, -0.904718, 0.179537,
		-0.858044, -0.423930, -0.289902,
		17.434195, 12.090313, 21.428259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.700439, 12.430696, 21.898531>,  <18.034826, 12.387064, 21.631191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.700439, 12.430696, 21.898531> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.697334, 12.828804, 21.859791>,  <18.695471, 13.067669, 21.836548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.697334, 12.828804, 21.859791>,  <18.700439, 12.430696, 21.898531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.697334, 12.828804, 21.859791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392237, 0.086059, 0.915830,
		0.919831, 0.045097, 0.389714,
		-0.007763, 0.995269, -0.096849,
		18.695005, 13.127384, 21.830736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.886456, 12.593720, 22.498199>,  <18.700439, 12.430696, 21.898531>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.886456, 12.593720, 22.498199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.764242, 12.954284, 22.375488>,  <18.690914, 13.170622, 22.301863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.764242, 12.954284, 22.375488>,  <18.886456, 12.593720, 22.498199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.764242, 12.954284, 22.375488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264273, 0.229248, 0.936806,
		0.914773, 0.367297, 0.168175,
		-0.305532, 0.901409, -0.306777,
		18.672583, 13.224707, 22.283455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.114729, 13.054935, 23.059435>,  <18.886456, 12.593720, 22.498199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.114729, 13.054935, 23.059435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.831766, 13.266254, 22.871614>,  <18.661989, 13.393045, 22.758923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.831766, 13.266254, 22.871614>,  <19.114729, 13.054935, 23.059435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.831766, 13.266254, 22.871614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322139, 0.350333, 0.879485,
		0.629128, 0.773414, -0.077643,
		-0.707407, 0.528297, -0.469551,
		18.619545, 13.424744, 22.730749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.121599, 13.857751, 23.299810>,  <19.114729, 13.054935, 23.059435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.121599, 13.857751, 23.299810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.766602, 13.750674, 23.149773>,  <18.553602, 13.686428, 23.059750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.766602, 13.750674, 23.149773>,  <19.121599, 13.857751, 23.299810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.766602, 13.750674, 23.149773> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452715, 0.354492, 0.818159,
		-0.086046, 0.895922, -0.435798,
		-0.887494, -0.267692, -0.375095,
		18.500353, 13.670366, 23.037245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.737904, 14.382663, 23.478704>,  <19.121599, 13.857751, 23.299810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.737904, 14.382663, 23.478704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.483009, 14.082223, 23.409679>,  <18.330072, 13.901958, 23.368265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.483009, 14.082223, 23.409679>,  <18.737904, 14.382663, 23.478704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.483009, 14.082223, 23.409679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540907, 0.276407, 0.794367,
		-0.548952, 0.599539, -0.582413,
		-0.637237, -0.751101, -0.172561,
		18.291838, 13.856893, 23.357912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.134121, 14.664183, 23.652676>,  <18.737904, 14.382663, 23.478704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.134121, 14.664183, 23.652676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.086060, 14.267691, 23.674673>,  <18.057222, 14.029796, 23.687872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.086060, 14.267691, 23.674673>,  <18.134121, 14.664183, 23.652676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.086060, 14.267691, 23.674673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425322, 0.101454, 0.899337,
		-0.897030, 0.084670, -0.433783,
		-0.120156, -0.991230, 0.054995,
		18.050013, 13.970322, 23.691172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.586107, 14.631751, 23.999199>,  <18.134121, 14.664183, 23.652676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.586107, 14.631751, 23.999199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.709900, 14.253053, 24.034733>,  <17.784176, 14.025833, 24.056053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.709900, 14.253053, 24.034733>,  <17.586107, 14.631751, 23.999199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.709900, 14.253053, 24.034733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362865, -0.031229, 0.931318,
		-0.878948, -0.320460, -0.353206,
		0.309481, -0.946747, 0.088835,
		17.802744, 13.969028, 24.061384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.099546, 14.352406, 24.277655>,  <17.586107, 14.631751, 23.999199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.099546, 14.352406, 24.277655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.401955, 14.110142, 24.376938>,  <17.583401, 13.964783, 24.436508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.401955, 14.110142, 24.376938>,  <17.099546, 14.352406, 24.277655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.401955, 14.110142, 24.376938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385209, -0.105116, 0.916823,
		-0.529193, -0.788749, -0.312777,
		0.756021, -0.605661, 0.248207,
		17.628761, 13.928444, 24.451401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.796011, 13.789007, 24.479380>,  <17.099546, 14.352406, 24.277655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.796011, 13.789007, 24.479380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.147266, 13.795035, 24.670647>,  <17.358021, 13.798653, 24.785406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.147266, 13.795035, 24.670647>,  <16.796011, 13.789007, 24.479380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.147266, 13.795035, 24.670647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432591, -0.401805, 0.807104,
		0.204293, -0.915601, -0.346321,
		0.878140, 0.015070, 0.478167,
		17.410707, 13.799557, 24.814096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.819042, 13.208534, 24.940895>,  <16.796011, 13.789007, 24.479380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.819042, 13.208534, 24.940895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.118462, 13.434313, 25.080082>,  <17.298113, 13.569779, 25.163593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.118462, 13.434313, 25.080082>,  <16.819042, 13.208534, 24.940895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.118462, 13.434313, 25.080082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176461, -0.336274, 0.925085,
		0.639172, -0.753871, -0.152114,
		0.748546, 0.564446, 0.347965,
		17.343025, 13.603646, 25.184471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.234550, 12.770438, 25.422346>,  <16.819042, 13.208534, 24.940895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.234550, 12.770438, 25.422346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.317301, 13.141880, 25.545565>,  <17.366951, 13.364745, 25.619495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.317301, 13.141880, 25.545565>,  <17.234550, 12.770438, 25.422346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.317301, 13.141880, 25.545565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247879, -0.254837, 0.934673,
		0.946445, -0.269721, 0.177462,
		0.206877, 0.928606, 0.308048,
		17.379364, 13.420462, 25.637980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.637943, 12.612156, 25.981241>,  <17.234550, 12.770438, 25.422346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.637943, 12.612156, 25.981241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.516279, 12.990324, 26.028004>,  <17.443281, 13.217225, 26.056061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.516279, 12.990324, 26.028004>,  <17.637943, 12.612156, 25.981241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.516279, 12.990324, 26.028004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031400, -0.132603, 0.990672,
		0.952103, 0.297653, 0.070019,
		-0.304162, 0.945420, 0.116906,
		17.425032, 13.273950, 26.063076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.037977, 12.973866, 26.576147>,  <17.637943, 12.612156, 25.981241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.037977, 12.973866, 26.576147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.703087, 13.190749, 26.547686>,  <17.502151, 13.320879, 26.530609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.703087, 13.190749, 26.547686>,  <18.037977, 12.973866, 26.576147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.703087, 13.190749, 26.547686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176460, -0.144703, 0.973613,
		0.517603, 0.827691, 0.216827,
		-0.837227, 0.542207, -0.071155,
		17.451920, 13.353411, 26.526339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.063635, 13.541387, 27.047037>,  <18.037977, 12.973866, 26.576147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.063635, 13.541387, 27.047037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.670446, 13.477935, 27.009941>,  <17.434532, 13.439864, 26.987684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.670446, 13.477935, 27.009941>,  <18.063635, 13.541387, 27.047037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.670446, 13.477935, 27.009941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099636, 0.036078, 0.994370,
		-0.154390, 0.986679, -0.051269,
		-0.982973, -0.158629, -0.092739,
		17.375555, 13.430346, 26.982119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<9.998776, 12.626851, 25.505810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.390098, 12.586432, 25.578154>,  <10.624890, 12.562180, 25.621561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.390098, 12.586432, 25.578154>,  <9.998776, 12.626851, 25.505810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.390098, 12.586432, 25.578154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201816, 0.267551, -0.942171,
		0.046815, 0.958230, 0.282140,
		0.978304, -0.101048, 0.180861,
		10.683589, 12.556117, 25.632412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.284528, 13.201798, 25.223257>,  <9.998776, 12.626851, 25.505810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.284528, 13.201798, 25.223257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.573670, 12.926001, 25.241476>,  <10.747156, 12.760522, 25.252407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.573670, 12.926001, 25.241476>,  <10.284528, 13.201798, 25.223257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.573670, 12.926001, 25.241476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238740, 0.187346, -0.952840,
		0.648445, 0.699642, 0.300034,
		0.722857, -0.689494, 0.045549,
		10.790527, 12.719152, 25.255140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.802859, 13.563228, 25.091631>,  <10.284528, 13.201798, 25.223257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.802859, 13.563228, 25.091631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.928340, 13.193523, 25.004606>,  <11.003628, 12.971701, 24.952391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.928340, 13.193523, 25.004606>,  <10.802859, 13.563228, 25.091631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.928340, 13.193523, 25.004606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253005, 0.302209, -0.919053,
		0.915194, 0.233263, 0.328646,
		0.313701, -0.924261, -0.217563,
		11.022450, 12.916245, 24.939337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.340959, 13.660358, 24.694345>,  <10.802859, 13.563228, 25.091631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.340959, 13.660358, 24.694345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.290328, 13.268727, 24.630611>,  <11.259950, 13.033749, 24.592371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.290328, 13.268727, 24.630611>,  <11.340959, 13.660358, 24.694345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.290328, 13.268727, 24.630611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285019, 0.117957, -0.951236,
		0.950128, -0.165816, 0.264125,
		-0.126575, -0.979077, -0.159335,
		11.252356, 12.975004, 24.582811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.970551, 13.494110, 24.337893>,  <11.340959, 13.660358, 24.694345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.970551, 13.494110, 24.337893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.707240, 13.204151, 24.256708>,  <11.549253, 13.030176, 24.207996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.707240, 13.204151, 24.256708>,  <11.970551, 13.494110, 24.337893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.707240, 13.204151, 24.256708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175865, 0.114066, -0.977784,
		0.731943, -0.679348, 0.052397,
		-0.658279, -0.724897, -0.202963,
		11.509756, 12.986682, 24.195820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.332638, 13.051933, 23.830433>,  <11.970551, 13.494110, 24.337893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.332638, 13.051933, 23.830433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.937420, 13.000592, 23.796270>,  <11.700289, 12.969788, 23.775774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.937420, 13.000592, 23.796270>,  <12.332638, 13.051933, 23.830433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.937420, 13.000592, 23.796270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073141, 0.097410, -0.992553,
		0.135719, -0.986933, -0.086858,
		-0.988044, -0.128355, -0.085406,
		11.641006, 12.962087, 23.770649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.351007, 12.716673, 23.282755>,  <12.332638, 13.051933, 23.830433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.351007, 12.716673, 23.282755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.971724, 12.836524, 23.324936>,  <11.744153, 12.908435, 23.350245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.971724, 12.836524, 23.324936>,  <12.351007, 12.716673, 23.282755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.971724, 12.836524, 23.324936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081175, 0.092389, -0.992409,
		-0.307097, -0.949572, -0.063282,
		-0.948210, 0.299628, 0.105454,
		11.687261, 12.926413, 23.356571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.032606, 12.288892, 22.808601>,  <12.351007, 12.716673, 23.282755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.032606, 12.288892, 22.808601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.808787, 12.613781, 22.874569>,  <11.674496, 12.808715, 22.914150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.808787, 12.613781, 22.874569>,  <12.032606, 12.288892, 22.808601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.808787, 12.613781, 22.874569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069227, 0.152489, -0.985878,
		-0.825902, -0.563062, -0.029097,
		-0.559548, 0.812224, 0.164920,
		11.640923, 12.857449, 22.924046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.553563, 12.230272, 22.350052>,  <12.032606, 12.288892, 22.808601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.553563, 12.230272, 22.350052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.537829, 12.619699, 22.440044>,  <11.528389, 12.853356, 22.494040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.537829, 12.619699, 22.440044>,  <11.553563, 12.230272, 22.350052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.537829, 12.619699, 22.440044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084383, 0.227588, -0.970094,
		-0.995657, -0.019174, -0.091105,
		-0.039335, 0.973569, 0.224982,
		11.526029, 12.911770, 22.507540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.016378, 12.540035, 21.984982>,  <11.553563, 12.230272, 22.350052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.016378, 12.540035, 21.984982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.247115, 12.845647, 22.100578>,  <11.385557, 13.029014, 22.169935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.247115, 12.845647, 22.100578>,  <11.016378, 12.540035, 21.984982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.247115, 12.845647, 22.100578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224698, 0.191723, -0.955381,
		-0.785344, 0.616038, -0.061082,
		0.576841, 0.764028, 0.288991,
		11.420167, 13.074856, 22.187275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.981002, 13.044409, 21.457659>,  <11.016378, 12.540035, 21.984982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.981002, 13.044409, 21.457659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.306949, 13.165604, 21.655321>,  <11.502517, 13.238320, 21.773918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.306949, 13.165604, 21.655321>,  <10.981002, 13.044409, 21.457659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.306949, 13.165604, 21.655321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390447, 0.343183, -0.854270,
		-0.428420, 0.889058, 0.161347,
		0.814867, 0.302988, 0.494156,
		11.551409, 13.256500, 21.803568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.039680, 13.716878, 21.310951>,  <10.981002, 13.044409, 21.457659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.039680, 13.716878, 21.310951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.403275, 13.581676, 21.408514>,  <11.621433, 13.500554, 21.467051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.403275, 13.581676, 21.408514>,  <11.039680, 13.716878, 21.310951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.403275, 13.581676, 21.408514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375707, 0.411006, -0.830613,
		0.180506, 0.846656, 0.500592,
		0.908990, -0.338006, 0.243905,
		11.675972, 13.480273, 21.481686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.563350, 14.283623, 21.100973>,  <11.039680, 13.716878, 21.310951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.563350, 14.283623, 21.100973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.759766, 13.935564, 21.117586>,  <11.877615, 13.726728, 21.127554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.759766, 13.935564, 21.117586>,  <11.563350, 14.283623, 21.100973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.759766, 13.935564, 21.117586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384866, 0.173924, -0.906438,
		0.781510, 0.461081, 0.420293,
		0.491040, -0.870147, 0.041531,
		11.907078, 13.674520, 21.130045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.289238, 14.470588, 20.910393>,  <11.563350, 14.283623, 21.100973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.289238, 14.470588, 20.910393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.278770, 14.074144, 20.858206>,  <12.272490, 13.836279, 20.826895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.278770, 14.074144, 20.858206>,  <12.289238, 14.470588, 20.910393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.278770, 14.074144, 20.858206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342596, 0.113714, -0.932575,
		0.939118, -0.069102, 0.336574,
		-0.026170, -0.991107, -0.130465,
		12.270920, 13.776813, 20.819067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.951057, 14.472094, 21.088606>,  <12.289238, 14.470588, 20.910393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.951057, 14.472094, 21.088606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.142788, 14.807643, 21.191786>,  <13.257827, 15.008972, 21.253693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.142788, 14.807643, 21.191786>,  <12.951057, 14.472094, 21.088606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.142788, 14.807643, 21.191786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439542, -0.024939, 0.897876,
		0.759637, -0.543755, 0.356766,
		0.479327, 0.838873, 0.257948,
		13.286586, 15.059305, 21.269171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.316504, 14.406095, 21.762493>,  <12.951057, 14.472094, 21.088606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.316504, 14.406095, 21.762493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.288909, 14.801173, 21.706358>,  <13.272352, 15.038220, 21.672676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.288909, 14.801173, 21.706358>,  <13.316504, 14.406095, 21.762493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.288909, 14.801173, 21.706358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355255, 0.107130, 0.928610,
		0.932220, 0.113919, 0.343493,
		-0.068988, 0.987697, -0.140339,
		13.268212, 15.097483, 21.664257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.498407, 14.782281, 22.449984>,  <13.316504, 14.406095, 21.762493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.498407, 14.782281, 22.449984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.311975, 15.094835, 22.283995>,  <13.200115, 15.282368, 22.184401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.311975, 15.094835, 22.283995>,  <13.498407, 14.782281, 22.449984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.311975, 15.094835, 22.283995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280758, 0.314167, 0.906903,
		0.839013, 0.539199, 0.072953,
		-0.466082, 0.781386, -0.414975,
		13.172150, 15.329251, 22.159502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.844785, 15.392970, 22.694031>,  <13.498407, 14.782281, 22.449984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.844785, 15.392970, 22.694031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.471995, 15.485240, 22.582163>,  <13.248322, 15.540602, 22.515041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.471995, 15.485240, 22.582163>,  <13.844785, 15.392970, 22.694031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.471995, 15.485240, 22.582163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137393, 0.489155, 0.861308,
		0.335484, 0.841140, -0.424186,
		-0.931973, 0.230675, -0.279670,
		13.192404, 15.554442, 22.498262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.644990, 16.004114, 23.025749>,  <13.844785, 15.392970, 22.694031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.644990, 16.004114, 23.025749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.292883, 15.845197, 22.921989>,  <13.081618, 15.749846, 22.859734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.292883, 15.845197, 22.921989>,  <13.644990, 16.004114, 23.025749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.292883, 15.845197, 22.921989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346146, 0.163802, 0.923770,
		-0.324516, 0.902956, -0.281711,
		-0.880269, -0.397291, -0.259398,
		13.028802, 15.726009, 22.844170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.199227, 16.418692, 23.411743>,  <13.644990, 16.004114, 23.025749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.199227, 16.418692, 23.411743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.012536, 16.072702, 23.338005>,  <12.900521, 15.865108, 23.293762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.012536, 16.072702, 23.338005>,  <13.199227, 16.418692, 23.411743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.012536, 16.072702, 23.338005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428517, 0.038838, 0.902698,
		-0.773652, 0.500309, -0.388783,
		-0.466728, -0.864975, -0.184344,
		12.872518, 15.813210, 23.282701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.665379, 16.570728, 23.701599>,  <13.199227, 16.418692, 23.411743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.665379, 16.570728, 23.701599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.645833, 16.173050, 23.663263>,  <12.634106, 15.934443, 23.640261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.645833, 16.173050, 23.663263>,  <12.665379, 16.570728, 23.701599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.645833, 16.173050, 23.663263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400696, -0.068383, 0.913656,
		-0.914907, 0.083047, -0.395029,
		-0.048863, -0.994197, -0.095841,
		12.631174, 15.874791, 23.634512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.991772, 16.360165, 23.964964>,  <12.665379, 16.570728, 23.701599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.991772, 16.360165, 23.964964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.223522, 16.034229, 23.972578>,  <12.362573, 15.838668, 23.977146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.223522, 16.034229, 23.972578>,  <11.991772, 16.360165, 23.964964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.223522, 16.034229, 23.972578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334087, -0.216116, 0.917431,
		-0.743445, -0.537896, -0.397439,
		0.579376, -0.814839, 0.019033,
		12.397335, 15.789778, 23.978289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.516066, 15.837154, 24.254995>,  <11.991772, 16.360165, 23.964964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.516066, 15.837154, 24.254995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.892756, 15.706367, 24.286594>,  <12.118772, 15.627894, 24.305553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.892756, 15.706367, 24.286594>,  <11.516066, 15.837154, 24.254995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.892756, 15.706367, 24.286594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248240, -0.517061, 0.819161,
		-0.226992, -0.791037, -0.568097,
		0.941728, -0.326968, 0.078998,
		12.175275, 15.608276, 24.310293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.439291, 15.099471, 24.492273>,  <11.516066, 15.837154, 24.254995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.439291, 15.099471, 24.492273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.811257, 15.215534, 24.582664>,  <12.034437, 15.285172, 24.636900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.811257, 15.215534, 24.582664>,  <11.439291, 15.099471, 24.492273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.811257, 15.215534, 24.582664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103946, -0.382040, 0.918281,
		0.352780, -0.877413, -0.325104,
		0.929915, 0.290158, 0.225980,
		12.090232, 15.302582, 24.650459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.641084, 14.578714, 24.945513>,  <11.439291, 15.099471, 24.492273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.641084, 14.578714, 24.945513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.889715, 14.885095, 25.011189>,  <12.038895, 15.068923, 25.050594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.889715, 14.885095, 25.011189>,  <11.641084, 14.578714, 24.945513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.889715, 14.885095, 25.011189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105205, -0.289326, 0.951432,
		0.776254, -0.574117, -0.260421,
		0.621579, 0.765950, 0.164190,
		12.076189, 15.114880, 25.060446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.065128, 14.373479, 25.401781>,  <11.641084, 14.578714, 24.945513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.065128, 14.373479, 25.401781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.149011, 14.763031, 25.436613>,  <12.199340, 14.996762, 25.457512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.149011, 14.763031, 25.436613>,  <12.065128, 14.373479, 25.401781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.149011, 14.763031, 25.436613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168712, -0.123765, 0.977864,
		0.963099, -0.190371, -0.190259,
		0.209705, 0.973879, 0.087080,
		12.211922, 15.055195, 25.462738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.669394, 14.411951, 25.752882>,  <12.065128, 14.373479, 25.401781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.669394, 14.411951, 25.752882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.461812, 14.748809, 25.811502>,  <12.337262, 14.950924, 25.846676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.461812, 14.748809, 25.811502>,  <12.669394, 14.411951, 25.752882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.461812, 14.748809, 25.811502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157520, -0.074296, 0.984717,
		0.840162, 0.534110, -0.094099,
		-0.518956, 0.842144, 0.146554,
		12.306126, 15.001452, 25.855469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.091238, 14.971888, 26.107971>,  <12.669394, 14.411951, 25.752882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.091238, 14.971888, 26.107971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.705022, 15.039042, 26.187517>,  <12.473292, 15.079333, 26.235245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.705022, 15.039042, 26.187517>,  <13.091238, 14.971888, 26.107971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.705022, 15.039042, 26.187517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197946, -0.022361, 0.979958,
		0.168966, 0.985553, -0.011642,
		-0.965540, 0.167884, 0.198865,
		12.415359, 15.089407, 26.247177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.627256, 15.475130, 26.291811>,  <13.091238, 14.971888, 26.107971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.627256, 15.475130, 26.291811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.019838, 15.430765, 26.354349>,  <14.255387, 15.404146, 26.391872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.019838, 15.430765, 26.354349>,  <13.627256, 15.475130, 26.291811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.019838, 15.430765, 26.354349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163447, 0.058079, -0.984841,
		0.100150, 0.992132, 0.075130,
		0.981456, -0.110912, 0.156344,
		14.314275, 15.397491, 26.401253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.961083, 15.912534, 25.851095>,  <13.627256, 15.475130, 26.291811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.961083, 15.912534, 25.851095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.274481, 15.685390, 25.952030>,  <14.462520, 15.549105, 26.012590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.274481, 15.685390, 25.952030>,  <13.961083, 15.912534, 25.851095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.274481, 15.685390, 25.952030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402717, 0.154759, -0.902147,
		0.473239, 0.808448, 0.349938,
		0.783495, -0.567857, 0.252338,
		14.509529, 15.515034, 26.027731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.440037, 16.326803, 25.644047>,  <13.961083, 15.912534, 25.851095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.440037, 16.326803, 25.644047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.609029, 15.965812, 25.677622>,  <14.710424, 15.749217, 25.697767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.609029, 15.965812, 25.677622>,  <14.440037, 16.326803, 25.644047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.609029, 15.965812, 25.677622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305186, 0.054443, -0.950735,
		0.853447, 0.427284, 0.298424,
		0.422481, -0.902477, 0.083937,
		14.735773, 15.695068, 25.702803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.187218, 16.362646, 25.428123>,  <14.440037, 16.326803, 25.644047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.187218, 16.362646, 25.428123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.089159, 15.975757, 25.401632>,  <15.030324, 15.743624, 25.385736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.089159, 15.975757, 25.401632>,  <15.187218, 16.362646, 25.428123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.089159, 15.975757, 25.401632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285394, -0.006710, -0.958387,
		0.926528, -0.253846, 0.277685,
		-0.245146, -0.967221, -0.066229,
		15.015615, 15.685590, 25.381763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.808754, 16.108196, 25.218569>,  <15.187218, 16.362646, 25.428123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.808754, 16.108196, 25.218569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.532385, 15.832403, 25.131634>,  <15.366564, 15.666926, 25.079473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.532385, 15.832403, 25.131634>,  <15.808754, 16.108196, 25.218569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.532385, 15.832403, 25.131634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457531, -0.184281, -0.869888,
		0.559724, -0.700465, 0.442785,
		-0.690923, -0.689485, -0.217338,
		15.325108, 15.625558, 25.066433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.129261, 15.576649, 24.988182>,  <15.808754, 16.108196, 25.218569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.129261, 15.576649, 24.988182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.774057, 15.514528, 24.815058>,  <15.560936, 15.477256, 24.711184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.774057, 15.514528, 24.815058>,  <16.129261, 15.576649, 24.988182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.774057, 15.514528, 24.815058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453464, -0.139679, -0.880261,
		0.076252, -0.977942, 0.194460,
		-0.888007, -0.155303, -0.432811,
		15.507655, 15.467937, 24.685215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.263363, 14.962203, 24.500105>,  <16.129261, 15.576649, 24.988182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.263363, 14.962203, 24.500105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.924553, 15.126124, 24.364691>,  <15.721267, 15.224478, 24.283442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.924553, 15.126124, 24.364691>,  <16.263363, 14.962203, 24.500105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.924553, 15.126124, 24.364691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263857, -0.228721, -0.937052,
		-0.461439, -0.883033, 0.085603,
		-0.847026, 0.409805, -0.338535,
		15.670444, 15.249065, 24.263130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.916186, 14.484754, 24.020649>,  <16.263363, 14.962203, 24.500105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.916186, 14.484754, 24.020649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.815013, 14.862964, 23.938665>,  <15.754309, 15.089890, 23.889475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.815013, 14.862964, 23.938665>,  <15.916186, 14.484754, 24.020649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.815013, 14.862964, 23.938665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256930, -0.138593, -0.956441,
		-0.932744, -0.294575, -0.207879,
		-0.252933, 0.945525, -0.204957,
		15.739133, 15.146622, 23.877178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.422271, 14.407858, 23.405636>,  <15.916186, 14.484754, 24.020649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.422271, 14.407858, 23.405636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.540365, 14.789702, 23.421392>,  <15.611222, 15.018809, 23.430847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.540365, 14.789702, 23.421392>,  <15.422271, 14.407858, 23.405636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.540365, 14.789702, 23.421392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332787, -0.064100, -0.940821,
		-0.895594, 0.290874, -0.336607,
		0.295237, 0.954612, 0.039392,
		15.628936, 15.076086, 23.433210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.190791, 14.763284, 22.731169>,  <15.422271, 14.407858, 23.405636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.190791, 14.763284, 22.731169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.493885, 14.982569, 22.872761>,  <15.675741, 15.114140, 22.957716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.493885, 14.982569, 22.872761>,  <15.190791, 14.763284, 22.731169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.493885, 14.982569, 22.872761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466530, -0.075813, -0.881250,
		-0.456276, 0.832896, -0.313204,
		0.757735, 0.548212, 0.353979,
		15.721206, 15.147033, 22.978954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.229332, 15.383156, 22.262653>,  <15.190791, 14.763284, 22.731169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.229332, 15.383156, 22.262653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.574695, 15.343245, 22.460470>,  <15.781912, 15.319298, 22.579161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.574695, 15.343245, 22.460470>,  <15.229332, 15.383156, 22.262653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.574695, 15.343245, 22.460470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504461, 0.157276, -0.848990,
		0.006930, 0.982501, 0.186127,
		0.863407, -0.099778, 0.494543,
		15.833716, 15.313312, 22.608833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.505294, 15.966557, 22.086720>,  <15.229332, 15.383156, 22.262653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.505294, 15.966557, 22.086720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.806183, 15.730967, 22.204885>,  <15.986716, 15.589612, 22.275785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.806183, 15.730967, 22.204885>,  <15.505294, 15.966557, 22.086720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.806183, 15.730967, 22.204885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520235, 0.255730, -0.814836,
		0.404372, 0.766622, 0.498772,
		0.752223, -0.588975, 0.295413,
		16.031849, 15.554274, 22.293510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.086130, 16.321037, 21.944799>,  <15.505294, 15.966557, 22.086720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.086130, 16.321037, 21.944799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.249371, 15.958327, 21.987154>,  <16.347315, 15.740701, 22.012566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.249371, 15.958327, 21.987154>,  <16.086130, 16.321037, 21.944799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.249371, 15.958327, 21.987154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559956, 0.157017, -0.813508,
		0.721044, 0.391284, 0.571833,
		0.408100, -0.906776, 0.105885,
		16.371801, 15.686295, 22.018919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.801571, 16.383316, 21.949516>,  <16.086130, 16.321037, 21.944799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.801571, 16.383316, 21.949516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.749256, 15.997933, 21.856009>,  <16.717867, 15.766704, 21.799904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.749256, 15.997933, 21.856009>,  <16.801571, 16.383316, 21.949516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.749256, 15.997933, 21.856009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611356, 0.107251, -0.784054,
		0.780473, -0.245459, 0.574988,
		-0.130785, -0.963456, -0.233769,
		16.710020, 15.708897, 21.785877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<10.244657, 25.376036, 8.822691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.362757, 25.160015, 8.507433>,  <10.433617, 25.030403, 8.318278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.362757, 25.160015, 8.507433>,  <10.244657, 25.376036, 8.822691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.362757, 25.160015, 8.507433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867689, -0.496868, 0.015413,
		-0.399928, 0.679314, -0.615297,
		0.295251, -0.540051, -0.788145,
		10.451332, 24.997999, 8.270989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.709791, 25.295183, 8.203005>,  <10.244657, 25.376036, 8.822691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.709791, 25.295183, 8.203005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.936040, 24.976576, 8.288446>,  <10.071790, 24.785412, 8.339711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.936040, 24.976576, 8.288446>,  <9.709791, 25.295183, 8.203005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.936040, 24.976576, 8.288446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794015, -0.595974, -0.119812,
		0.222736, -0.101837, -0.969545,
		0.565623, -0.796520, 0.213605,
		10.105727, 24.737619, 8.352528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.603791, 24.733316, 7.649663>,  <9.709791, 25.295183, 8.203005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.603791, 24.733316, 7.649663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.710272, 24.583208, 8.004810>,  <9.774160, 24.493143, 8.217898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.710272, 24.583208, 8.004810>,  <9.603791, 24.733316, 7.649663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.710272, 24.583208, 8.004810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781265, -0.623511, -0.029297,
		0.564589, -0.685861, -0.459167,
		0.266201, -0.375272, 0.887867,
		9.790133, 24.470627, 8.271171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.675536, 24.011799, 7.726234>,  <9.603791, 24.733316, 7.649663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.675536, 24.011799, 7.726234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.576908, 24.135511, 8.093614>,  <9.517732, 24.209740, 8.314041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.576908, 24.135511, 8.093614>,  <9.675536, 24.011799, 7.726234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.576908, 24.135511, 8.093614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776126, -0.630565, 0.003978,
		0.580373, -0.711851, 0.395520,
		-0.246569, 0.309282, 0.918449,
		9.502937, 24.228296, 8.369148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.502780, 23.424362, 8.221822>,  <9.675536, 24.011799, 7.726234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.502780, 23.424362, 8.221822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.314613, 23.747610, 8.363611>,  <9.201714, 23.941559, 8.448685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.314613, 23.747610, 8.363611>,  <9.502780, 23.424362, 8.221822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.314613, 23.747610, 8.363611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834022, -0.538391, 0.120589,
		0.288296, -0.238911, 0.927258,
		-0.470417, 0.808119, 0.354473,
		9.173489, 23.990046, 8.469954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.276115, 23.268965, 8.887210>,  <9.502780, 23.424362, 8.221822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.276115, 23.268965, 8.887210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.059822, 23.557205, 8.713618>,  <8.930046, 23.730150, 8.609463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.059822, 23.557205, 8.713618>,  <9.276115, 23.268965, 8.887210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.059822, 23.557205, 8.713618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831706, -0.535258, 0.147526,
		-0.125983, 0.440716, 0.888762,
		-0.540734, 0.720603, -0.433979,
		8.897602, 23.773386, 8.583425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.960999, 22.827015, 9.342499>,  <9.276115, 23.268965, 8.887210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.960999, 22.827015, 9.342499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.942136, 23.173340, 9.541754>,  <8.930818, 23.381136, 9.661307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.942136, 23.173340, 9.541754>,  <8.960999, 22.827015, 9.342499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.942136, 23.173340, 9.541754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951495, 0.112848, -0.286220,
		-0.304027, -0.487474, 0.818497,
		-0.047159, 0.865815, 0.498138,
		8.927988, 23.433084, 9.691195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.227647, 22.501726, 9.973036>,  <8.960999, 22.827015, 9.342499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.227647, 22.501726, 9.973036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.207991, 22.230886, 9.679336>,  <9.196197, 22.068382, 9.503116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.207991, 22.230886, 9.679336>,  <9.227647, 22.501726, 9.973036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.207991, 22.230886, 9.679336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808154, 0.458942, -0.369134,
		0.586918, 0.575247, -0.569753,
		-0.049141, -0.677099, -0.734249,
		9.193249, 22.027758, 9.459061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.692085, 22.362434, 10.610108>,  <9.227647, 22.501726, 9.973036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.692085, 22.362434, 10.610108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.024145, 22.164877, 10.713585>,  <10.223381, 22.046343, 10.775671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.024145, 22.164877, 10.713585>,  <9.692085, 22.362434, 10.610108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.024145, 22.164877, 10.713585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556145, -0.700742, 0.446836,
		-0.039412, -0.514812, -0.856397,
		0.830150, -0.493891, 0.258692,
		10.273190, 22.016710, 10.791192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.745299, 21.632744, 10.222972>,  <9.692085, 22.362434, 10.610108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.745299, 21.632744, 10.222972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.850871, 21.702293, 10.602468>,  <9.914214, 21.744022, 10.830167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.850871, 21.702293, 10.602468>,  <9.745299, 21.632744, 10.222972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.850871, 21.702293, 10.602468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783972, -0.534340, 0.316018,
		0.561898, -0.827193, -0.004716,
		0.263928, 0.173873, 0.948741,
		9.930050, 21.754456, 10.887091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.846336, 21.059464, 10.526760>,  <9.745299, 21.632744, 10.222972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.846336, 21.059464, 10.526760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.737884, 21.303885, 10.824244>,  <9.672812, 21.450537, 11.002734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.737884, 21.303885, 10.824244>,  <9.846336, 21.059464, 10.526760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.737884, 21.303885, 10.824244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573442, -0.723110, 0.385067,
		0.773079, -0.322070, 0.546461,
		-0.271133, 0.611051, 0.743709,
		9.656544, 21.487200, 11.047357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.948791, 20.672693, 11.184995>,  <9.846336, 21.059464, 10.526760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.948791, 20.672693, 11.184995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.689605, 20.966982, 11.263845>,  <9.534094, 21.143555, 11.311156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.689605, 20.966982, 11.263845>,  <9.948791, 20.672693, 11.184995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.689605, 20.966982, 11.263845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598898, -0.652036, 0.464942,
		0.470601, 0.183207, 0.863117,
		-0.647963, 0.735721, 0.197127,
		9.495215, 21.187698, 11.322984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.758588, 20.546038, 11.873222>,  <9.948791, 20.672693, 11.184995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.758588, 20.546038, 11.873222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.477308, 20.788996, 11.725395>,  <9.308540, 20.934771, 11.636699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.477308, 20.788996, 11.725395>,  <9.758588, 20.546038, 11.873222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.477308, 20.788996, 11.725395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707456, -0.545974, 0.448797,
		0.070824, 0.577046, 0.813635,
		-0.703200, 0.607396, -0.369567,
		9.266348, 20.971214, 11.614525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.334040, 20.902761, 12.433206>,  <9.758588, 20.546038, 11.873222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.334040, 20.902761, 12.433206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.102782, 20.874939, 12.108020>,  <8.964027, 20.858246, 11.912909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.102782, 20.874939, 12.108020>,  <9.334040, 20.902761, 12.433206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.102782, 20.874939, 12.108020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709264, -0.449703, 0.542873,
		-0.403352, 0.890466, 0.210660,
		-0.578144, -0.069555, -0.812964,
		8.929339, 20.854073, 11.864130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.674790, 20.978891, 12.658985>,  <9.334040, 20.902761, 12.433206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.674790, 20.978891, 12.658985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.616174, 20.827572, 12.293381>,  <8.581004, 20.736780, 12.074018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.616174, 20.827572, 12.293381>,  <8.674790, 20.978891, 12.658985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.616174, 20.827572, 12.293381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801201, -0.496533, 0.333965,
		-0.580175, 0.781246, -0.230331,
		-0.146542, -0.378300, -0.914010,
		8.572211, 20.714083, 12.019177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.938299, 21.071531, 12.533473>,  <8.674790, 20.978891, 12.658985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.938299, 21.071531, 12.533473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.070172, 20.764004, 12.314302>,  <8.149296, 20.579487, 12.182800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.070172, 20.764004, 12.314302>,  <7.938299, 21.071531, 12.533473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.070172, 20.764004, 12.314302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721242, -0.579603, 0.379304,
		-0.609196, 0.270138, -0.745591,
		0.329682, -0.768821, -0.547927,
		8.169077, 20.533358, 12.149924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.278419, 20.794271, 12.379640>,  <7.938299, 21.071531, 12.533473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.278419, 20.794271, 12.379640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.530761, 20.503319, 12.271613>,  <7.682167, 20.328747, 12.206798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.530761, 20.503319, 12.271613>,  <7.278419, 20.794271, 12.379640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.530761, 20.503319, 12.271613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697065, -0.684185, 0.214455,
		-0.340766, 0.052964, -0.938655,
		0.630856, -0.727383, -0.270066,
		7.720018, 20.285105, 12.190593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.920871, 20.276752, 11.950930>,  <7.278419, 20.794271, 12.379640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.920871, 20.276752, 11.950930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.235853, 20.081722, 12.101759>,  <7.424843, 19.964705, 12.192257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.235853, 20.081722, 12.101759>,  <6.920871, 20.276752, 11.950930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.235853, 20.081722, 12.101759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583950, -0.785939, 0.203228,
		0.197269, -0.380225, -0.903612,
		0.787456, -0.487574, 0.377074,
		7.472090, 19.935450, 12.214881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.955679, 19.682894, 11.625303>,  <6.920871, 20.276752, 11.950930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.955679, 19.682894, 11.625303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.167394, 19.615685, 11.957959>,  <7.294423, 19.575359, 12.157553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.167394, 19.615685, 11.957959>,  <6.955679, 19.682894, 11.625303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.167394, 19.615685, 11.957959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621868, -0.743635, 0.245536,
		0.577180, -0.647128, -0.498085,
		0.529286, -0.168024, 0.831639,
		7.326180, 19.565277, 12.207451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.019355, 18.951385, 11.654492>,  <6.955679, 19.682894, 11.625303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.019355, 18.951385, 11.654492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.117433, 19.087337, 12.017670>,  <7.176280, 19.168909, 12.235577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.117433, 19.087337, 12.017670>,  <7.019355, 18.951385, 11.654492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.117433, 19.087337, 12.017670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486596, -0.766877, 0.418479,
		0.838513, -0.544410, -0.022650,
		0.245194, 0.339878, 0.907944,
		7.190991, 19.189301, 12.290053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.162636, 18.314575, 12.047854>,  <7.019355, 18.951385, 11.654492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.162636, 18.314575, 12.047854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.102474, 18.599791, 12.321774>,  <7.066377, 18.770920, 12.486127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.102474, 18.599791, 12.321774>,  <7.162636, 18.314575, 12.047854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.102474, 18.599791, 12.321774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615377, -0.609652, 0.499635,
		0.773750, -0.346263, 0.530483,
		-0.150405, 0.713040, 0.684801,
		7.057353, 18.813704, 12.527215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.162525, 17.995443, 12.636141>,  <7.162636, 18.314575, 12.047854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.162525, 17.995443, 12.636141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.982828, 18.339611, 12.732359>,  <6.875010, 18.546112, 12.790090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.982828, 18.339611, 12.732359>,  <7.162525, 17.995443, 12.636141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.982828, 18.339611, 12.732359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554626, -0.479668, 0.679932,
		0.700408, 0.172041, 0.692698,
		-0.449241, 0.860419, 0.240546,
		6.848056, 18.597736, 12.804523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.121896, 18.060839, 13.317451>,  <7.162525, 17.995443, 12.636141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.121896, 18.060839, 13.317451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.806352, 18.291990, 13.233783>,  <6.617025, 18.430681, 13.183581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.806352, 18.291990, 13.233783>,  <7.121896, 18.060839, 13.317451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.806352, 18.291990, 13.233783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535702, -0.479762, 0.694876,
		0.301202, 0.660214, 0.688037,
		-0.788861, 0.577880, -0.209173,
		6.569694, 18.465355, 13.171031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.765188, 18.223104, 13.990548>,  <7.121896, 18.060839, 13.317451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.765188, 18.223104, 13.990548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.490321, 18.262323, 13.702608>,  <6.325400, 18.285854, 13.529844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.490321, 18.262323, 13.702608>,  <6.765188, 18.223104, 13.990548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.490321, 18.262323, 13.702608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690583, -0.395839, 0.605316,
		-0.225596, 0.913071, 0.339717,
		-0.687169, 0.098046, -0.719851,
		6.284170, 18.291737, 13.486652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.121461, 18.379238, 14.370573>,  <6.765188, 18.223104, 13.990548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.121461, 18.379238, 14.370573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.076663, 18.210434, 14.010714>,  <6.049785, 18.109152, 13.794798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.076663, 18.210434, 14.010714>,  <6.121461, 18.379238, 14.370573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.076663, 18.210434, 14.010714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654552, -0.649861, 0.386320,
		-0.747676, 0.632131, -0.203446,
		-0.111993, -0.422008, -0.899648,
		6.043066, 18.083832, 13.740819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.481218, 18.192944, 14.434305>,  <6.121461, 18.379238, 14.370573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.481218, 18.192944, 14.434305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.580256, 18.000214, 14.098081>,  <5.639678, 17.884575, 13.896346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.580256, 18.000214, 14.098081>,  <5.481218, 18.192944, 14.434305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.580256, 18.000214, 14.098081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610416, -0.751307, 0.250859,
		-0.752396, 0.450995, -0.480108,
		0.247572, -0.481812, -0.840575,
		5.654533, 17.855667, 13.845912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.833894, 17.865444, 14.158004>,  <5.481218, 18.192944, 14.434305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.833894, 17.865444, 14.158004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.148274, 17.662958, 14.016001>,  <5.336903, 17.541468, 13.930799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.148274, 17.662958, 14.016001>,  <4.833894, 17.865444, 14.158004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.148274, 17.662958, 14.016001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429923, -0.860089, 0.274614,
		-0.444350, -0.063208, -0.893620,
		0.785951, -0.506213, -0.355006,
		5.384060, 17.511095, 13.909499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.600806, 17.247015, 13.868397>,  <4.833894, 17.865444, 14.158004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.600806, 17.247015, 13.868397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.988918, 17.151691, 13.885214>,  <5.221785, 17.094498, 13.895304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.988918, 17.151691, 13.885214>,  <4.600806, 17.247015, 13.868397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.988918, 17.151691, 13.885214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241949, -0.952311, 0.185913,
		-0.004267, -0.190560, -0.981666,
		0.970279, -0.238307, 0.042042,
		5.280002, 17.080200, 13.897826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.734571, 16.599449, 13.486962>,  <4.600806, 17.247015, 13.868397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.734571, 16.599449, 13.486962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.053378, 16.622057, 13.727484>,  <5.244663, 16.635622, 13.871797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.053378, 16.622057, 13.727484>,  <4.734571, 16.599449, 13.486962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.053378, 16.622057, 13.727484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021547, -0.992316, 0.121836,
		0.603570, -0.110062, -0.789677,
		0.797019, 0.056521, 0.601304,
		5.292484, 16.639013, 13.907875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.320935, 16.138741, 13.231194>,  <4.734571, 16.599449, 13.486962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.320935, 16.138741, 13.231194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.395902, 16.198517, 13.619532>,  <5.440882, 16.234383, 13.852534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.395902, 16.198517, 13.619532>,  <5.320935, 16.138741, 13.231194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.395902, 16.198517, 13.619532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293215, -0.951809, 0.089908,
		0.937496, 0.267817, -0.222205,
		0.187417, 0.149443, 0.970846,
		5.452127, 16.243349, 13.910786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.840325, 15.587751, 13.401668>,  <5.320935, 16.138741, 13.231194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.840325, 15.587751, 13.401668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.752208, 15.689463, 13.778351>,  <5.699337, 15.750489, 14.004361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.752208, 15.689463, 13.778351>,  <5.840325, 15.587751, 13.401668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.752208, 15.689463, 13.778351> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410929, -0.851382, 0.326017,
		0.884652, 0.458794, 0.083063,
		-0.220293, 0.254278, 0.941708,
		5.686120, 15.765746, 14.060863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.015948, 14.863976, 13.563593>,  <5.840325, 15.587751, 13.401668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.015948, 14.863976, 13.563593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.328548, 14.651634, 13.694711>,  <6.516109, 14.524229, 13.773381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.328548, 14.651634, 13.694711>,  <6.015948, 14.863976, 13.563593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.328548, 14.651634, 13.694711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620556, 0.715744, -0.320345,
		-0.064561, 0.453765, 0.888780,
		0.781500, -0.530856, 0.327796,
		6.562998, 14.492377, 13.793050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.303751, 15.325202, 14.002671>,  <6.015948, 14.863976, 13.563593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.303751, 15.325202, 14.002671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.588955, 15.070552, 13.885147>,  <6.760077, 14.917762, 13.814632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.588955, 15.070552, 13.885147>,  <6.303751, 15.325202, 14.002671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.588955, 15.070552, 13.885147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645737, 0.759501, -0.078627,
		0.273205, -0.133662, 0.952625,
		0.713010, -0.636626, -0.293809,
		6.802858, 14.879564, 13.797005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.874074, 15.517335, 14.416701>,  <6.303751, 15.325202, 14.002671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.874074, 15.517335, 14.416701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.993539, 15.331914, 14.083014>,  <7.065218, 15.220661, 13.882802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.993539, 15.331914, 14.083014>,  <6.874074, 15.517335, 14.416701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.993539, 15.331914, 14.083014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749437, 0.655120, -0.095722,
		0.590885, -0.596604, 0.543064,
		0.298664, -0.463553, -0.834217,
		7.083138, 15.192848, 13.832749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.541494, 15.537239, 14.585357>,  <6.874074, 15.517335, 14.416701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.541494, 15.537239, 14.585357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.509103, 15.439880, 14.198741>,  <7.489668, 15.381465, 13.966771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.509103, 15.439880, 14.198741>,  <7.541494, 15.537239, 14.585357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.509103, 15.439880, 14.198741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704270, 0.672227, -0.228288,
		0.705299, -0.699192, 0.116982,
		-0.080978, -0.243398, -0.966540,
		7.484809, 15.366861, 13.908779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.188418, 15.292812, 14.305736>,  <7.541494, 15.537239, 14.585357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.188418, 15.292812, 14.305736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.999610, 15.426463, 13.979409>,  <7.886325, 15.506654, 13.783613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.999610, 15.426463, 13.979409>,  <8.188418, 15.292812, 14.305736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.999610, 15.426463, 13.979409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782220, 0.585543, -0.212768,
		0.406603, -0.738578, -0.537751,
		-0.472022, 0.334128, -0.815815,
		7.858003, 15.526701, 13.734665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.688541, 15.460074, 13.871087>,  <8.188418, 15.292812, 14.305736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.688541, 15.460074, 13.871087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.392906, 15.672788, 13.705699>,  <8.215526, 15.800416, 13.606466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.392906, 15.672788, 13.705699>,  <8.688541, 15.460074, 13.871087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.392906, 15.672788, 13.705699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663496, 0.680680, -0.310561,
		0.116289, -0.503866, -0.855918,
		-0.739087, 0.531783, -0.413469,
		8.171180, 15.832323, 13.581658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.965235, 15.693016, 13.250065>,  <8.688541, 15.460074, 13.871087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.965235, 15.693016, 13.250065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.653875, 15.929820, 13.333607>,  <8.467060, 16.071903, 13.383732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.653875, 15.929820, 13.333607>,  <8.965235, 15.693016, 13.250065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.653875, 15.929820, 13.333607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551926, 0.803894, -0.221660,
		-0.299122, -0.057268, -0.952495,
		-0.778399, 0.592010, 0.208855,
		8.420356, 16.107424, 13.396263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.965874, 16.229088, 12.651202>,  <8.965235, 15.693016, 13.250065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.965874, 16.229088, 12.651202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.709386, 16.389017, 12.913188>,  <8.555492, 16.484974, 13.070379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.709386, 16.389017, 12.913188>,  <8.965874, 16.229088, 12.651202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.709386, 16.389017, 12.913188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490437, 0.869987, -0.050935,
		-0.590176, 0.288558, -0.753941,
		-0.641221, 0.399821, 0.654965,
		8.517019, 16.508963, 13.109677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.836688, 16.843660, 12.348774>,  <8.965874, 16.229088, 12.651202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.836688, 16.843660, 12.348774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.742907, 16.882568, 12.735673>,  <8.686638, 16.905912, 12.967813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.742907, 16.882568, 12.735673>,  <8.836688, 16.843660, 12.348774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.742907, 16.882568, 12.735673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401552, 0.915821, 0.005235,
		-0.885318, 0.389628, -0.253777,
		-0.234454, 0.097270, 0.967249,
		8.672570, 16.911749, 13.025847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.530972, 17.524815, 12.448125>,  <8.836688, 16.843660, 12.348774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.530972, 17.524815, 12.448125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.669573, 17.407106, 12.804403>,  <8.752733, 17.336481, 13.018170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.669573, 17.407106, 12.804403>,  <8.530972, 17.524815, 12.448125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.669573, 17.407106, 12.804403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448811, 0.885795, 0.118054,
		-0.823714, 0.358849, 0.439002,
		0.346502, -0.294272, 0.890697,
		8.773523, 17.318825, 13.071612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.443506, 18.168982, 12.892841>,  <8.530972, 17.524815, 12.448125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.443506, 18.168982, 12.892841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.689431, 17.931408, 13.100398>,  <8.836987, 17.788864, 13.224932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.689431, 17.931408, 13.100398>,  <8.443506, 18.168982, 12.892841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.689431, 17.931408, 13.100398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591157, 0.782556, 0.195292,
		-0.522052, 0.186678, 0.832234,
		0.614813, -0.593933, 0.518891,
		8.873875, 17.753227, 13.256065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.716566, 18.641598, 13.262368>,  <8.443506, 18.168982, 12.892841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.716566, 18.641598, 13.262368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.959893, 18.328163, 13.312876>,  <9.105889, 18.140102, 13.343181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.959893, 18.328163, 13.312876>,  <8.716566, 18.641598, 13.262368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.959893, 18.328163, 13.312876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755756, 0.620461, 0.209429,
		-0.242451, -0.031970, 0.969637,
		0.608318, -0.783585, 0.126270,
		9.142388, 18.093088, 13.350757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.945610, 18.658321, 14.010328>,  <8.716566, 18.641598, 13.262368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.945610, 18.658321, 14.010328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.204766, 18.506956, 13.745892>,  <9.360260, 18.416138, 13.587230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.204766, 18.506956, 13.745892>,  <8.945610, 18.658321, 14.010328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.204766, 18.506956, 13.745892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672114, 0.692412, 0.262351,
		0.358471, -0.614304, 0.702943,
		0.647890, -0.378412, -0.661092,
		9.399134, 18.393433, 13.547565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.739205, 18.657177, 14.432643>,  <8.945610, 18.658321, 14.010328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.739205, 18.657177, 14.432643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.741266, 18.645689, 14.032813>,  <9.742503, 18.638796, 13.792915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.741266, 18.645689, 14.032813>,  <9.739205, 18.657177, 14.432643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.741266, 18.645689, 14.032813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754030, 0.656669, -0.014981,
		0.656820, -0.753632, 0.025038,
		0.005152, -0.028719, -0.999574,
		9.742812, 18.637074, 13.732941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.450054, 18.919510, 14.420263>,  <9.739205, 18.657177, 14.432643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.450054, 18.919510, 14.420263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.315267, 18.926476, 14.043721>,  <10.234394, 18.930655, 13.817796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.315267, 18.926476, 14.043721>,  <10.450054, 18.919510, 14.420263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.315267, 18.926476, 14.043721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493891, 0.854492, -0.160984,
		0.801576, -0.519173, -0.296538,
		-0.336968, 0.017416, -0.941355,
		10.214176, 18.931700, 13.761314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.042070, 18.962276, 14.046609>,  <10.450054, 18.919510, 14.420263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.042070, 18.962276, 14.046609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.747655, 19.104572, 13.816236>,  <10.571006, 19.189949, 13.678012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.747655, 19.104572, 13.816236>,  <11.042070, 18.962276, 14.046609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.747655, 19.104572, 13.816236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578855, 0.771846, -0.263022,
		0.350964, -0.526976, -0.774029,
		-0.736038, 0.355739, -0.575933,
		10.526844, 19.211294, 13.643456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.354731, 19.115887, 13.478945>,  <11.042070, 18.962276, 14.046609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.354731, 19.115887, 13.478945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.020340, 19.335392, 13.479509>,  <10.819706, 19.467094, 13.479848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.020340, 19.335392, 13.479509>,  <11.354731, 19.115887, 13.478945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.020340, 19.335392, 13.479509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537399, 0.819180, -0.200366,
		-0.111109, -0.166743, -0.979720,
		-0.835977, 0.548763, 0.001411,
		10.769547, 19.500021, 13.479933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.439642, 19.599245, 12.984509>,  <11.354731, 19.115887, 13.478945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.439642, 19.599245, 12.984509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.160249, 19.774546, 13.210803>,  <10.992613, 19.879726, 13.346580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.160249, 19.774546, 13.210803>,  <11.439642, 19.599245, 12.984509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.160249, 19.774546, 13.210803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517913, 0.855124, -0.022986,
		-0.493849, 0.276947, -0.824265,
		-0.698484, 0.438249, 0.565737,
		10.950704, 19.906021, 13.380524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.365830, 20.212736, 12.591470>,  <11.439642, 19.599245, 12.984509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.365830, 20.212736, 12.591470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.231339, 20.264482, 12.964611>,  <11.150644, 20.295530, 13.188496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.231339, 20.264482, 12.964611>,  <11.365830, 20.212736, 12.591470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.231339, 20.264482, 12.964611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534464, 0.841776, 0.075901,
		-0.775435, 0.524096, -0.352170,
		-0.336228, 0.129366, 0.932853,
		11.130471, 20.303291, 13.244467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.325072, 20.916424, 12.634235>,  <11.365830, 20.212736, 12.591470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.325072, 20.916424, 12.634235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.298876, 20.830740, 13.024072>,  <11.283158, 20.779329, 13.257974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.298876, 20.830740, 13.024072>,  <11.325072, 20.916424, 12.634235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.298876, 20.830740, 13.024072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607846, 0.765999, 0.209209,
		-0.791350, 0.606102, 0.080041,
		-0.065491, -0.214210, 0.974590,
		11.279228, 20.766478, 13.316448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.236916, 21.658730, 12.997623>,  <11.325072, 20.916424, 12.634235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.236916, 21.658730, 12.997623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.353619, 21.397602, 13.277253>,  <11.423640, 21.240925, 13.445031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.353619, 21.397602, 13.277253>,  <11.236916, 21.658730, 12.997623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.353619, 21.397602, 13.277253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700847, 0.643282, 0.308223,
		-0.650916, 0.400017, 0.645209,
		0.291757, -0.652820, 0.699073,
		11.441146, 21.201756, 13.486976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.727552, 13.947126, 27.611776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.418139, 13.715387, 27.509016>,  <17.232491, 13.576344, 27.447359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.418139, 13.715387, 27.509016>,  <17.727552, 13.947126, 27.611776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.418139, 13.715387, 27.509016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317482, 0.003408, 0.948258,
		-0.548496, 0.815073, -0.186569,
		-0.773536, -0.579348, -0.256901,
		17.186077, 13.541583, 27.431946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.103542, 14.315408, 27.768417>,  <17.727552, 13.947126, 27.611776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.103542, 14.315408, 27.768417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.027666, 13.922932, 27.782730>,  <16.982140, 13.687446, 27.791317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.027666, 13.922932, 27.782730>,  <17.103542, 14.315408, 27.768417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.027666, 13.922932, 27.782730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471186, 0.122945, 0.873423,
		-0.861394, 0.148823, -0.485645,
		-0.189693, -0.981191, 0.035780,
		16.970758, 13.628574, 27.793465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.631397, 14.257683, 28.205708>,  <17.103542, 14.315408, 27.768417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.631397, 14.257683, 28.205708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.697458, 13.863285, 28.196407>,  <16.737095, 13.626647, 28.190826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.697458, 13.863285, 28.196407>,  <16.631397, 14.257683, 28.205708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.697458, 13.863285, 28.196407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352835, -0.081083, 0.932166,
		-0.920995, -0.145746, -0.361284,
		0.165154, -0.985994, -0.023252,
		16.747004, 13.567487, 28.189432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.976110, 14.030718, 28.489891>,  <16.631397, 14.257683, 28.205708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.976110, 14.030718, 28.489891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.248407, 13.739098, 28.518377>,  <16.411785, 13.564125, 28.535469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.248407, 13.739098, 28.518377>,  <15.976110, 14.030718, 28.489891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.248407, 13.739098, 28.518377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388871, -0.277284, 0.878575,
		-0.620779, -0.625778, -0.472266,
		0.680744, -0.729052, 0.071215,
		16.452631, 13.520382, 28.539742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.616230, 13.355799, 28.620495>,  <15.976110, 14.030718, 28.489891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.616230, 13.355799, 28.620495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.993704, 13.317916, 28.747297>,  <16.220188, 13.295186, 28.823378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.993704, 13.317916, 28.747297>,  <15.616230, 13.355799, 28.620495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.993704, 13.317916, 28.747297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328601, -0.379805, 0.864737,
		0.038503, -0.920206, -0.389537,
		0.943684, -0.094707, 0.317004,
		16.276810, 13.289504, 28.842398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.672355, 12.689126, 28.850901>,  <15.616230, 13.355799, 28.620495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.672355, 12.689126, 28.850901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.001293, 12.864587, 28.995859>,  <16.198656, 12.969863, 29.082834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.001293, 12.864587, 28.995859>,  <15.672355, 12.689126, 28.850901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.001293, 12.864587, 28.995859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136673, -0.465985, 0.874173,
		0.552329, -0.768403, -0.323249,
		0.822347, 0.438652, 0.362397,
		16.247997, 12.996182, 29.104578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.989619, 12.224088, 29.195208>,  <15.672355, 12.689126, 28.850901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.989619, 12.224088, 29.195208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.169191, 12.545404, 29.351761>,  <16.276936, 12.738194, 29.445694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.169191, 12.545404, 29.351761>,  <15.989619, 12.224088, 29.195208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.169191, 12.545404, 29.351761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120343, -0.379661, 0.917265,
		0.885426, -0.458889, -0.073771,
		0.448931, 0.803292, 0.391385,
		16.303871, 12.786392, 29.469177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.474771, 11.997770, 29.503902>,  <15.989619, 12.224088, 29.195208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.474771, 11.997770, 29.503902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.394646, 12.343460, 29.688505>,  <16.346571, 12.550874, 29.799267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.394646, 12.343460, 29.688505>,  <16.474771, 11.997770, 29.503902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.394646, 12.343460, 29.688505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231534, -0.499470, 0.834818,
		0.951980, 0.060370, 0.300147,
		-0.200313, 0.864225, 0.461508,
		16.334553, 12.602728, 29.826958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.557798, 11.813645, 30.165293>,  <16.474771, 11.997770, 29.503902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.557798, 11.813645, 30.165293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.434378, 12.193339, 30.189783>,  <16.360325, 12.421156, 30.204477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.434378, 12.193339, 30.189783>,  <16.557798, 11.813645, 30.165293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.434378, 12.193339, 30.189783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414988, -0.192253, 0.889283,
		0.855909, 0.248983, 0.453241,
		-0.308553, 0.949235, 0.061226,
		16.341812, 12.478109, 30.208151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.821951, 12.149289, 30.829487>,  <16.557798, 11.813645, 30.165293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.821951, 12.149289, 30.829487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.478954, 12.324586, 30.721670>,  <16.273157, 12.429764, 30.656981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.478954, 12.324586, 30.721670>,  <16.821951, 12.149289, 30.829487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.478954, 12.324586, 30.721670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383377, -0.194866, 0.902801,
		0.343121, 0.877480, 0.335107,
		-0.857491, 0.438242, -0.269543,
		16.221706, 12.456059, 30.640808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.621685, 12.383597, 31.449238>,  <16.821951, 12.149289, 30.829487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.621685, 12.383597, 31.449238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.270182, 12.411039, 31.260313>,  <16.059280, 12.427505, 31.146959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.270182, 12.411039, 31.260313>,  <16.621685, 12.383597, 31.449238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.270182, 12.411039, 31.260313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472871, -0.259164, 0.842156,
		-0.064629, 0.963394, 0.260184,
		-0.878759, 0.068606, -0.472310,
		16.006554, 12.431621, 31.118620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.146645, 12.700929, 31.855631>,  <16.621685, 12.383597, 31.449238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.146645, 12.700929, 31.855631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.924169, 12.488064, 31.600302>,  <15.790683, 12.360345, 31.447104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.924169, 12.488064, 31.600302>,  <16.146645, 12.700929, 31.855631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.924169, 12.488064, 31.600302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514583, -0.382604, 0.767345,
		-0.652576, 0.755260, -0.061041,
		-0.556191, -0.532162, -0.638323,
		15.757311, 12.328415, 31.408806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.633769, 12.808068, 32.183800>,  <16.146645, 12.700929, 31.855631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.633769, 12.808068, 32.183800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.554921, 12.503256, 31.937075>,  <15.507612, 12.320369, 31.789040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.554921, 12.503256, 31.937075>,  <15.633769, 12.808068, 32.183800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.554921, 12.503256, 31.937075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616100, -0.393110, 0.682557,
		-0.762603, 0.514562, -0.391997,
		-0.197120, -0.762030, -0.616809,
		15.495785, 12.274647, 31.752031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.447640, 13.499526, 32.100372>,  <15.633769, 12.808068, 32.183800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.447640, 13.499526, 32.100372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.379155, 13.307303, 32.444408>,  <15.338064, 13.191970, 32.650829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.379155, 13.307303, 32.444408>,  <15.447640, 13.499526, 32.100372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.379155, 13.307303, 32.444408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914618, -0.402070, -0.042580,
		0.366278, 0.779363, 0.508364,
		-0.171213, -0.480555, 0.860089,
		15.327791, 13.163136, 32.702435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.850489, 13.487597, 31.677916>,  <15.447640, 13.499526, 32.100372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.850489, 13.487597, 31.677916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.669020, 13.834308, 31.760742>,  <14.560138, 14.042335, 31.810438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.669020, 13.834308, 31.760742>,  <14.850489, 13.487597, 31.677916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.669020, 13.834308, 31.760742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017166, 0.223810, -0.974482,
		-0.891003, -0.445651, -0.086657,
		-0.453673, 0.866778, 0.207065,
		14.532918, 14.094341, 31.822863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.281289, 13.582994, 31.170118>,  <14.850489, 13.487597, 31.677916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.281289, 13.582994, 31.170118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.380881, 13.950022, 31.294104>,  <14.440637, 14.170238, 31.368494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.380881, 13.950022, 31.294104>,  <14.281289, 13.582994, 31.170118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.380881, 13.950022, 31.294104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007523, 0.321863, -0.946756,
		-0.968479, 0.233392, 0.087041,
		0.248981, 0.917569, 0.309962,
		14.455576, 14.225292, 31.387093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.998092, 14.035921, 30.687496>,  <14.281289, 13.582994, 31.170118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.998092, 14.035921, 30.687496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.222559, 14.317702, 30.861317>,  <14.357240, 14.486771, 30.965609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.222559, 14.317702, 30.861317>,  <13.998092, 14.035921, 30.687496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.222559, 14.317702, 30.861317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213472, 0.384070, -0.898287,
		-0.799700, 0.596855, 0.065147,
		0.561168, 0.704453, 0.434553,
		14.390909, 14.529038, 30.991682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.880557, 14.511930, 30.335932>,  <13.998092, 14.035921, 30.687496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.880557, 14.511930, 30.335932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.196515, 14.645885, 30.541424>,  <14.386089, 14.726258, 30.664719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.196515, 14.645885, 30.541424>,  <13.880557, 14.511930, 30.335932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.196515, 14.645885, 30.541424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307500, 0.508500, -0.804283,
		-0.530576, 0.793270, 0.298684,
		0.789894, 0.334888, 0.513728,
		14.433483, 14.746352, 30.695541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.716042, 15.257122, 30.397989>,  <13.880557, 14.511930, 30.335932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.716042, 15.257122, 30.397989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.106560, 15.170600, 30.401085>,  <14.340871, 15.118687, 30.402943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.106560, 15.170600, 30.401085>,  <13.716042, 15.257122, 30.397989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.106560, 15.170600, 30.401085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097621, 0.408130, -0.907690,
		0.193178, 0.886929, 0.419571,
		0.976295, -0.216304, 0.007741,
		14.399448, 15.105709, 30.403408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.098914, 15.891457, 30.371340>,  <13.716042, 15.257122, 30.397989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.098914, 15.891457, 30.371340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.336797, 15.619577, 30.199604>,  <14.479527, 15.456450, 30.096561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.336797, 15.619577, 30.199604>,  <14.098914, 15.891457, 30.371340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.336797, 15.619577, 30.199604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041735, 0.559427, -0.827829,
		0.802858, 0.474397, 0.361063,
		0.594707, -0.679698, -0.429341,
		14.515209, 15.415668, 30.070801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.379987, 16.205111, 29.771042>,  <14.098914, 15.891457, 30.371340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.379987, 16.205111, 29.771042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.486835, 15.821274, 29.735653>,  <14.550945, 15.590972, 29.714418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.486835, 15.821274, 29.735653>,  <14.379987, 16.205111, 29.771042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.486835, 15.821274, 29.735653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122541, 0.124889, -0.984574,
		0.955840, 0.252160, 0.150950,
		0.267122, -0.959593, -0.088474,
		14.566972, 15.533396, 29.709110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.888728, 16.330109, 29.357456>,  <14.379987, 16.205111, 29.771042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.888728, 16.330109, 29.357456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.817628, 15.937291, 29.332178>,  <14.774968, 15.701600, 29.317011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.817628, 15.937291, 29.332178>,  <14.888728, 16.330109, 29.357456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.817628, 15.937291, 29.332178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098926, 0.046059, -0.994028,
		0.979091, -0.182941, 0.088963,
		-0.177751, -0.982045, -0.063193,
		14.764302, 15.642678, 29.313221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.428658, 15.927065, 28.946327>,  <14.888728, 16.330109, 29.357456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.428658, 15.927065, 28.946327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.068026, 15.754190, 28.953987>,  <14.851646, 15.650466, 28.958584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.068026, 15.754190, 28.953987>,  <15.428658, 15.927065, 28.946327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.068026, 15.754190, 28.953987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032157, 0.022804, -0.999223,
		0.431415, -0.901496, -0.034458,
		-0.901581, -0.432187, 0.019151,
		14.797551, 15.624535, 28.959732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.486037, 15.330964, 28.414091>,  <15.428658, 15.927065, 28.946327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.486037, 15.330964, 28.414091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.092300, 15.377812, 28.466785>,  <14.856058, 15.405922, 28.498402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.092300, 15.377812, 28.466785>,  <15.486037, 15.330964, 28.414091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.092300, 15.377812, 28.466785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135680, -0.026349, -0.990402,
		-0.112529, -0.992768, 0.041828,
		-0.984341, 0.117124, 0.131733,
		14.796998, 15.412949, 28.506306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.264888, 14.800196, 28.105940>,  <15.486037, 15.330964, 28.414091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.264888, 14.800196, 28.105940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.961835, 15.061235, 28.101763>,  <14.780004, 15.217859, 28.099257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.961835, 15.061235, 28.101763>,  <15.264888, 14.800196, 28.105940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.961835, 15.061235, 28.101763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118172, -0.152894, -0.981152,
		-0.641896, -0.742117, 0.192956,
		-0.757631, 0.652599, -0.010444,
		14.734546, 15.257015, 28.098629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.781634, 14.446749, 27.702780>,  <15.264888, 14.800196, 28.105940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.781634, 14.446749, 27.702780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.698414, 14.837847, 27.691961>,  <14.648481, 15.072505, 27.685471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.698414, 14.837847, 27.691961>,  <14.781634, 14.446749, 27.702780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.698414, 14.837847, 27.691961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294900, -0.089066, -0.951368,
		-0.932603, -0.189958, 0.306867,
		-0.208052, 0.977744, -0.027045,
		14.635999, 15.131170, 27.683847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.101861, 14.533492, 27.339689>,  <14.781634, 14.446749, 27.702780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.101861, 14.533492, 27.339689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.306170, 14.876583, 27.316309>,  <14.428755, 15.082438, 27.302280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.306170, 14.876583, 27.316309>,  <14.101861, 14.533492, 27.339689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.306170, 14.876583, 27.316309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003317, -0.066023, -0.997813,
		-0.859711, 0.509848, -0.030877,
		0.510771, 0.857728, -0.058452,
		14.459401, 15.133902, 27.298773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.767901, 14.879032, 26.884501>,  <14.101861, 14.533492, 27.339689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.767901, 14.879032, 26.884501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.114775, 15.077776, 26.897902>,  <14.322899, 15.197022, 26.905941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.114775, 15.077776, 26.897902>,  <13.767901, 14.879032, 26.884501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.114775, 15.077776, 26.897902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091217, -0.092349, -0.991540,
		-0.489562, 0.862903, -0.125406,
		0.867184, 0.496860, 0.033500,
		14.374930, 15.226834, 26.907951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.107328, 15.143873, 26.847305>,  <13.767901, 14.879032, 26.884501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.107328, 15.143873, 26.847305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.712374, 15.160552, 26.786209>,  <12.475401, 15.170560, 26.749552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.712374, 15.160552, 26.786209>,  <13.107328, 15.143873, 26.847305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.712374, 15.160552, 26.786209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157424, -0.155503, 0.975211,
		0.016913, 0.986955, 0.160106,
		-0.987386, 0.041698, -0.152740,
		12.416158, 15.173061, 26.740387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.794002, 15.526181, 27.457653>,  <13.107328, 15.143873, 26.847305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.794002, 15.526181, 27.457653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.504859, 15.321260, 27.272171>,  <12.331373, 15.198308, 27.160881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.504859, 15.321260, 27.272171>,  <12.794002, 15.526181, 27.457653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.504859, 15.321260, 27.272171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431861, -0.188921, 0.881932,
		-0.539420, 0.837768, -0.084681,
		-0.722857, -0.512303, -0.463707,
		12.288002, 15.167569, 27.133059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.201672, 15.774634, 27.725821>,  <12.794002, 15.526181, 27.457653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.201672, 15.774634, 27.725821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.118508, 15.405683, 27.595598>,  <12.068610, 15.184311, 27.517464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.118508, 15.405683, 27.595598>,  <12.201672, 15.774634, 27.725821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.118508, 15.405683, 27.595598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312074, -0.252887, 0.915783,
		-0.927030, 0.291998, -0.235273,
		-0.207909, -0.922380, -0.325558,
		12.056135, 15.128968, 27.497931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.488741, 15.633505, 28.016973>,  <12.201672, 15.774634, 27.725821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.488741, 15.633505, 28.016973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.645001, 15.278785, 27.918201>,  <11.738758, 15.065952, 27.858938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.645001, 15.278785, 27.918201>,  <11.488741, 15.633505, 28.016973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.645001, 15.278785, 27.918201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399183, -0.404906, 0.822620,
		-0.829484, -0.222788, -0.512174,
		0.390652, -0.886801, -0.246930,
		11.762197, 15.012744, 27.844122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.933637, 15.085948, 28.107044>,  <11.488741, 15.633505, 28.016973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.933637, 15.085948, 28.107044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.284046, 14.894074, 28.126993>,  <11.494291, 14.778951, 28.138962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.284046, 14.894074, 28.126993>,  <10.933637, 15.085948, 28.107044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.284046, 14.894074, 28.126993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274514, -0.410944, 0.869349,
		-0.396515, -0.775262, -0.491676,
		0.876024, -0.479681, 0.049875,
		11.546853, 14.750170, 28.141954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.763274, 14.442260, 28.367315>,  <10.933637, 15.085948, 28.107044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.763274, 14.442260, 28.367315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.159103, 14.467656, 28.419031>,  <11.396601, 14.482894, 28.450060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.159103, 14.467656, 28.419031>,  <10.763274, 14.442260, 28.367315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.159103, 14.467656, 28.419031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087995, -0.444140, 0.891626,
		0.114034, -0.893705, -0.433921,
		0.989572, 0.063492, 0.129289,
		11.455976, 14.486704, 28.457817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.896549, 13.855792, 28.819450>,  <10.763274, 14.442260, 28.367315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.896549, 13.855792, 28.819450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.220506, 14.083107, 28.877588>,  <11.414880, 14.219496, 28.912472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.220506, 14.083107, 28.877588>,  <10.896549, 13.855792, 28.819450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.220506, 14.083107, 28.877588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089350, -0.125374, 0.988078,
		0.579736, -0.813222, -0.050762,
		0.809891, 0.568288, 0.145345,
		11.463473, 14.253593, 28.921192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.315043, 13.176542, 28.723442>,  <10.896549, 13.855792, 28.819450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.315043, 13.176542, 28.723442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.177038, 12.807470, 28.654591>,  <11.094234, 12.586027, 28.613279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.177038, 12.807470, 28.654591>,  <11.315043, 13.176542, 28.723442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.177038, 12.807470, 28.654591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063077, 0.205766, -0.976566,
		0.936476, -0.326072, -0.129192,
		-0.345014, -0.922679, -0.172128,
		11.073534, 12.530666, 28.602953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.739339, 12.823624, 28.269411>,  <11.315043, 13.176542, 28.723442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.739339, 12.823624, 28.269411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.409950, 12.605573, 28.206505>,  <11.212317, 12.474742, 28.168760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.409950, 12.605573, 28.206505>,  <11.739339, 12.823624, 28.269411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.409950, 12.605573, 28.206505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117249, 0.107701, -0.987245,
		0.555112, -0.831407, -0.024773,
		-0.823470, -0.545127, -0.157268,
		11.162910, 12.442035, 28.159325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.930036, 12.390375, 27.763914>,  <11.739339, 12.823624, 28.269411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.930036, 12.390375, 27.763914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.530495, 12.372623, 27.756695>,  <11.290771, 12.361972, 27.752363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.530495, 12.372623, 27.756695>,  <11.930036, 12.390375, 27.763914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.530495, 12.372623, 27.756695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018665, -0.013493, -0.999735,
		0.044128, -0.998923, 0.014306,
		-0.998851, -0.044384, -0.018050,
		11.230839, 12.359309, 27.751280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.715797, 11.856434, 27.348806>,  <11.930036, 12.390375, 27.763914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.715797, 11.856434, 27.348806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.392081, 12.091036, 27.335785>,  <11.197851, 12.231797, 27.327972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.392081, 12.091036, 27.335785>,  <11.715797, 11.856434, 27.348806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.392081, 12.091036, 27.335785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097342, -0.188559, -0.977226,
		-0.579287, -0.787690, 0.209691,
		-0.809290, 0.586506, -0.032554,
		11.149294, 12.266988, 27.326019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.287705, 11.501923, 26.901834>,  <11.715797, 11.856434, 27.348806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.287705, 11.501923, 26.901834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.118038, 11.863831, 26.917192>,  <11.016237, 12.080976, 26.926407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.118038, 11.863831, 26.917192>,  <11.287705, 11.501923, 26.901834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.118038, 11.863831, 26.917192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154325, -0.030443, -0.987551,
		-0.892337, -0.424814, 0.152541,
		-0.424169, 0.904769, 0.038394,
		10.990788, 12.135262, 26.928711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.828557, 11.465401, 26.362751>,  <11.287705, 11.501923, 26.901834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.828557, 11.465401, 26.362751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.803365, 11.858353, 26.433136>,  <10.788249, 12.094124, 26.475367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.803365, 11.858353, 26.433136>,  <10.828557, 11.465401, 26.362751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.803365, 11.858353, 26.433136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244053, 0.155798, -0.957165,
		-0.967715, -0.103227, 0.229941,
		-0.062981, 0.982381, 0.175961,
		10.784471, 12.153067, 26.485924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.203457, 11.794220, 26.081516>,  <10.828557, 11.465401, 26.362751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.203457, 11.794220, 26.081516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.503550, 12.058687, 26.080227>,  <10.683605, 12.217367, 26.079453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.503550, 12.058687, 26.080227>,  <10.203457, 11.794220, 26.081516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.503550, 12.058687, 26.080227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079497, 0.085361, -0.993174,
		-0.656380, 0.745366, 0.116602,
		0.750231, 0.661168, -0.003225,
		10.728619, 12.257038, 26.079260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<13.923777, 10.534855, 30.846411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.086531, 10.891447, 30.766706>,  <14.184183, 11.105403, 30.718884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.086531, 10.891447, 30.766706>,  <13.923777, 10.534855, 30.846411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.086531, 10.891447, 30.766706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069368, -0.247660, -0.966361,
		-0.910842, 0.379375, -0.162609,
		0.406885, 0.891481, -0.199263,
		14.208596, 11.158892, 30.706928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.510740, 10.835168, 30.337090>,  <13.923777, 10.534855, 30.846411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.510740, 10.835168, 30.337090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.897785, 10.933166, 30.312748>,  <14.130013, 10.991964, 30.298143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.897785, 10.933166, 30.312748>,  <13.510740, 10.835168, 30.337090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.897785, 10.933166, 30.312748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020542, -0.163854, -0.986271,
		-0.251601, 0.955578, -0.153515,
		0.967613, 0.244993, -0.060855,
		14.188069, 11.006663, 30.294491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.542453, 11.205459, 29.669140>,  <13.510740, 10.835168, 30.337090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.542453, 11.205459, 29.669140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.920819, 11.110501, 29.757584>,  <14.147839, 11.053527, 29.810650>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.920819, 11.110501, 29.757584>,  <13.542453, 11.205459, 29.669140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.920819, 11.110501, 29.757584> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213678, -0.056922, -0.975244,
		0.244103, 0.969744, -0.003118,
		0.945915, -0.237394, 0.221108,
		14.204594, 11.039283, 29.823915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.006783, 11.708869, 29.365471>,  <13.542453, 11.205459, 29.669140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.006783, 11.708869, 29.365471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.228086, 11.380903, 29.424328>,  <14.360867, 11.184124, 29.459642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.228086, 11.380903, 29.424328>,  <14.006783, 11.708869, 29.365471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.228086, 11.380903, 29.424328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154485, -0.072587, -0.985325,
		0.818562, 0.567867, 0.086506,
		0.553255, -0.819913, 0.147144,
		14.394062, 11.134930, 29.468472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.569839, 11.817638, 28.982117>,  <14.006783, 11.708869, 29.365471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.569839, 11.817638, 28.982117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.579528, 11.420201, 29.026278>,  <14.585340, 11.181739, 29.052774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.579528, 11.420201, 29.026278>,  <14.569839, 11.817638, 28.982117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.579528, 11.420201, 29.026278> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322196, -0.096785, -0.941712,
		0.946363, 0.058381, 0.317787,
		0.024221, -0.993592, 0.110404,
		14.586794, 11.122124, 29.059399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.222092, 11.499545, 28.816732>,  <14.569839, 11.817638, 28.982117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.222092, 11.499545, 28.816732> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.962515, 11.204752, 28.741119>,  <14.806768, 11.027876, 28.695751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.962515, 11.204752, 28.741119>,  <15.222092, 11.499545, 28.816732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.962515, 11.204752, 28.741119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391661, -0.110581, -0.913440,
		0.652286, -0.666805, 0.360408,
		-0.648942, -0.736982, -0.189031,
		14.767833, 10.983658, 28.684410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.532515, 11.172535, 28.263357>,  <15.222092, 11.499545, 28.816732>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.532515, 11.172535, 28.263357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.190580, 10.966072, 28.284674>,  <14.985420, 10.842195, 28.297464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.190580, 10.966072, 28.284674>,  <15.532515, 11.172535, 28.263357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.190580, 10.966072, 28.284674> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010779, -0.120342, -0.992674,
		0.518789, -0.847998, 0.108436,
		-0.854835, -0.516157, 0.053291,
		14.934130, 10.811225, 28.300661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.591999, 10.508485, 27.936617>,  <15.532515, 11.172535, 28.263357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.591999, 10.508485, 27.936617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.205894, 10.610489, 27.913855>,  <14.974232, 10.671691, 27.900196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.205894, 10.610489, 27.913855>,  <15.591999, 10.508485, 27.936617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.205894, 10.610489, 27.913855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006051, -0.195923, -0.980601,
		-0.261216, -0.946880, 0.187573,
		-0.965261, 0.255013, -0.056908,
		14.916316, 10.686992, 27.896782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.340311, 9.922526, 27.565033>,  <15.591999, 10.508485, 27.936617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.340311, 9.922526, 27.565033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.066312, 10.212108, 27.532366>,  <14.901913, 10.385857, 27.512766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.066312, 10.212108, 27.532366>,  <15.340311, 9.922526, 27.565033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.066312, 10.212108, 27.532366> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073958, -0.180618, -0.980769,
		-0.724782, -0.665784, 0.177265,
		-0.684997, 0.723954, -0.081669,
		14.860812, 10.429294, 27.507866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.772533, 9.691084, 27.228178>,  <15.340311, 9.922526, 27.565033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.772533, 9.691084, 27.228178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.792098, 10.083956, 27.155590>,  <14.803837, 10.319678, 27.112038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.792098, 10.083956, 27.155590>,  <14.772533, 9.691084, 27.228178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.792098, 10.083956, 27.155590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128465, -0.186366, -0.974046,
		-0.990507, 0.024330, -0.135291,
		0.048912, 0.982179, -0.181471,
		14.806771, 10.378610, 27.101149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.301159, 9.804524, 26.744429>,  <14.772533, 9.691084, 27.228178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.301159, 9.804524, 26.744429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.555053, 10.110524, 26.700813>,  <14.707389, 10.294124, 26.674644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.555053, 10.110524, 26.700813>,  <14.301159, 9.804524, 26.744429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.555053, 10.110524, 26.700813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030409, -0.165726, -0.985703,
		-0.772131, 0.622344, -0.128455,
		0.634735, 0.764998, -0.109037,
		14.745473, 10.340024, 26.668102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.026908, 10.094893, 26.201666>,  <14.301159, 9.804524, 26.744429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.026908, 10.094893, 26.201666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.413407, 10.191752, 26.236830>,  <14.645308, 10.249867, 26.257927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.413407, 10.191752, 26.236830>,  <14.026908, 10.094893, 26.201666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.413407, 10.191752, 26.236830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139449, -0.204725, -0.968835,
		-0.216603, 0.948395, -0.231582,
		0.966249, 0.242146, 0.087908,
		14.703282, 10.264397, 26.263203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.341350, 10.243890, 25.929142>,  <14.026908, 10.094893, 26.201666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.341350, 10.243890, 25.929142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.955640, 10.160484, 25.863787>,  <12.724214, 10.110441, 25.824574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.955640, 10.160484, 25.863787>,  <13.341350, 10.243890, 25.929142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.955640, 10.160484, 25.863787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171829, 0.022892, 0.984861,
		-0.201618, 0.977751, -0.057903,
		-0.964275, -0.208515, -0.163390,
		12.666357, 10.097930, 25.814770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.065238, 10.401548, 26.577381>,  <13.341350, 10.243890, 25.929142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.065238, 10.401548, 26.577381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.764116, 10.226883, 26.380360>,  <12.583444, 10.122084, 26.262146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.764116, 10.226883, 26.380360>,  <13.065238, 10.401548, 26.577381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.764116, 10.226883, 26.380360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497535, -0.112471, 0.860122,
		-0.430982, 0.892567, -0.132587,
		-0.752804, -0.436664, -0.492556,
		12.538275, 10.095883, 26.232594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.422958, 10.719480, 26.803833>,  <13.065238, 10.401548, 26.577381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.422958, 10.719480, 26.803833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.370265, 10.350340, 26.659061>,  <12.338649, 10.128856, 26.572199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.370265, 10.350340, 26.659061>,  <12.422958, 10.719480, 26.803833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.370265, 10.350340, 26.659061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512955, -0.248966, 0.821518,
		-0.848247, 0.293877, -0.440583,
		-0.131735, -0.922850, -0.361931,
		12.330745, 10.073484, 26.550482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.841184, 10.537269, 27.002314>,  <12.422958, 10.719480, 26.803833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.841184, 10.537269, 27.002314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.999496, 10.172397, 26.959820>,  <12.094484, 9.953474, 26.934324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.999496, 10.172397, 26.959820>,  <11.841184, 10.537269, 27.002314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.999496, 10.172397, 26.959820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445226, -0.291767, 0.846550,
		-0.803201, -0.287751, -0.521602,
		0.395781, -0.912179, -0.106234,
		12.118231, 9.898743, 26.927950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.266848, 10.069406, 27.150366>,  <11.841184, 10.537269, 27.002314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.266848, 10.069406, 27.150366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.618057, 9.882640, 27.192442>,  <11.828783, 9.770580, 27.217688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.618057, 9.882640, 27.192442>,  <11.266848, 10.069406, 27.150366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.618057, 9.882640, 27.192442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311399, -0.390390, 0.866387,
		-0.363458, -0.793468, -0.488168,
		0.878026, -0.466910, 0.105195,
		11.881464, 9.742565, 27.223999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.045335, 9.558333, 27.609173>,  <11.266848, 10.069406, 27.150366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.045335, 9.558333, 27.609173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.444365, 9.534355, 27.623327>,  <11.683783, 9.519968, 27.631821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.444365, 9.534355, 27.623327>,  <11.045335, 9.558333, 27.609173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.444365, 9.534355, 27.623327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035264, 0.003099, 0.999373,
		-0.060020, -0.998197, 0.000977,
		0.997574, -0.059948, 0.035386,
		11.743637, 9.516372, 27.633944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.145766, 8.984616, 28.019577>,  <11.045335, 9.558333, 27.609173>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.145766, 8.984616, 28.019577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.504449, 9.161230, 28.031992>,  <11.719659, 9.267199, 28.039440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.504449, 9.161230, 28.031992>,  <11.145766, 8.984616, 28.019577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.504449, 9.161230, 28.031992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088488, -0.247533, 0.964830,
		0.433689, -0.862424, -0.261035,
		0.896707, 0.441535, 0.031038,
		11.773461, 9.293691, 28.041304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.634312, 8.459751, 28.192900>,  <11.145766, 8.984616, 28.019577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.634312, 8.459751, 28.192900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.789687, 8.807574, 28.314873>,  <11.882913, 9.016269, 28.388056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.789687, 8.807574, 28.314873>,  <11.634312, 8.459751, 28.192900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.789687, 8.807574, 28.314873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166437, -0.391681, 0.904923,
		0.906319, -0.300755, -0.296871,
		0.388439, 0.869559, 0.304931,
		11.906219, 9.068442, 28.406351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.244651, 8.390646, 28.549316>,  <11.634312, 8.459751, 28.192900>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.244651, 8.390646, 28.549316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.196619, 8.759228, 28.697104>,  <12.167800, 8.980376, 28.785776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.196619, 8.759228, 28.697104>,  <12.244651, 8.390646, 28.549316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.196619, 8.759228, 28.697104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231252, -0.335959, 0.913046,
		0.965455, 0.195078, -0.172746,
		-0.120079, 0.921453, 0.369466,
		12.160595, 9.035664, 28.807943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.672482, 8.448805, 29.173325>,  <12.244651, 8.390646, 28.549316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.672482, 8.448805, 29.173325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.412644, 8.748836, 29.222986>,  <12.256742, 8.928854, 29.252783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.412644, 8.748836, 29.222986>,  <12.672482, 8.448805, 29.173325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.412644, 8.748836, 29.222986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022048, -0.144644, 0.989238,
		0.759963, 0.645339, 0.077422,
		-0.649592, 0.750077, 0.124153,
		12.217767, 8.973859, 29.260233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.998225, 8.805008, 29.679792>,  <12.672482, 8.448805, 29.173325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.998225, 8.805008, 29.679792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.619949, 8.934479, 29.691828>,  <12.392984, 9.012161, 29.699049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.619949, 8.934479, 29.691828>,  <12.998225, 8.805008, 29.679792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.619949, 8.934479, 29.691828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008906, -0.118323, 0.992935,
		0.324951, 0.938740, 0.114779,
		-0.945689, 0.323678, 0.030089,
		12.336243, 9.031582, 29.700855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.965984, 9.381207, 30.314159>,  <12.998225, 8.805008, 29.679792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.965984, 9.381207, 30.314159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.604736, 9.235894, 30.222595>,  <12.387987, 9.148706, 30.167656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.604736, 9.235894, 30.222595>,  <12.965984, 9.381207, 30.314159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.604736, 9.235894, 30.222595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161107, -0.207482, 0.964881,
		-0.398018, 0.908283, 0.128854,
		-0.903120, -0.363281, -0.228912,
		12.333800, 9.126910, 30.153921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.503500, 9.773055, 30.676109>,  <12.965984, 9.381207, 30.314159>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.503500, 9.773055, 30.676109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.346317, 9.411023, 30.611095>,  <12.252007, 9.193804, 30.572086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.346317, 9.411023, 30.611095>,  <12.503500, 9.773055, 30.676109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.346317, 9.411023, 30.611095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254991, -0.062573, 0.964917,
		-0.883496, 0.420615, -0.206199,
		-0.392956, -0.905079, -0.162536,
		12.228431, 9.139500, 30.562334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.864344, 9.687108, 31.060974>,  <12.503500, 9.773055, 30.676109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.864344, 9.687108, 31.060974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.974788, 9.310848, 30.982038>,  <12.041054, 9.085093, 30.934677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.974788, 9.310848, 30.982038>,  <11.864344, 9.687108, 31.060974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.974788, 9.310848, 30.982038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048945, -0.218815, 0.974538,
		-0.959879, -0.259421, -0.106457,
		0.276110, -0.940649, -0.197339,
		12.057621, 9.028653, 30.922836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.326495, 10.096129, 30.804888>,  <11.864344, 9.687108, 31.060974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.326495, 10.096129, 30.804888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.099653, 10.384712, 30.963829>,  <10.963548, 10.557862, 31.059195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.099653, 10.384712, 30.963829>,  <11.326495, 10.096129, 30.804888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.099653, 10.384712, 30.963829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197799, 0.587610, -0.784595,
		-0.799542, -0.366351, -0.475940,
		-0.567105, 0.721458, 0.397355,
		10.929522, 10.601150, 31.083036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.934842, 10.379190, 30.229565>,  <11.326495, 10.096129, 30.804888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.934842, 10.379190, 30.229565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.866248, 10.683469, 30.479982>,  <10.825091, 10.866036, 30.630234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.866248, 10.683469, 30.479982>,  <10.934842, 10.379190, 30.229565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.866248, 10.683469, 30.479982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127350, 0.647244, -0.751570,
		-0.976921, -0.049156, -0.207868,
		-0.171485, 0.760696, 0.626046,
		10.814802, 10.911677, 30.667797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.466179, 10.758549, 29.891241>,  <10.934842, 10.379190, 30.229565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.466179, 10.758549, 29.891241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.634744, 11.019276, 30.143446>,  <10.735883, 11.175712, 30.294769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.634744, 11.019276, 30.143446>,  <10.466179, 10.758549, 29.891241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.634744, 11.019276, 30.143446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074124, 0.668178, -0.740300,
		-0.903834, 0.358708, 0.233264,
		0.421413, 0.651818, 0.630511,
		10.761168, 11.214821, 30.332600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.071856, 11.394604, 29.846977>,  <10.466179, 10.758549, 29.891241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.071856, 11.394604, 29.846977> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.404407, 11.562507, 29.992643>,  <10.603937, 11.663248, 30.080042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.404407, 11.562507, 29.992643>,  <10.071856, 11.394604, 29.846977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.404407, 11.562507, 29.992643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088621, 0.546781, -0.832572,
		-0.548596, 0.724455, 0.417383,
		0.831378, 0.419757, 0.364164,
		10.653820, 11.688434, 30.101892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.931663, 12.084553, 29.879135>,  <10.071856, 11.394604, 29.846977>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.931663, 12.084553, 29.879135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.325677, 12.025049, 29.844318>,  <10.562085, 11.989347, 29.823429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.325677, 12.025049, 29.844318>,  <9.931663, 12.084553, 29.879135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.325677, 12.025049, 29.844318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002732, 0.518422, -0.855121,
		0.172331, 0.842086, 0.511070,
		0.985035, -0.148760, -0.087040,
		10.621187, 11.980421, 29.818207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.130297, 12.641795, 29.551014>,  <9.931663, 12.084553, 29.879135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.130297, 12.641795, 29.551014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.471951, 12.445035, 29.483500>,  <10.676943, 12.326979, 29.442991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.471951, 12.445035, 29.483500>,  <10.130297, 12.641795, 29.551014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.471951, 12.445035, 29.483500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061305, 0.417531, -0.906592,
		0.516426, 0.764005, 0.386783,
		0.854135, -0.491899, -0.168786,
		10.728191, 12.297465, 29.432863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.708038, 13.077983, 29.225065>,  <10.130297, 12.641795, 29.551014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.708038, 13.077983, 29.225065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.814204, 12.713169, 29.100008>,  <10.877904, 12.494281, 29.024973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.814204, 12.713169, 29.100008>,  <10.708038, 13.077983, 29.225065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.814204, 12.713169, 29.100008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147802, 0.281952, -0.947976,
		0.952738, 0.297816, -0.059966,
		0.265415, -0.912035, -0.312644,
		10.893828, 12.439558, 29.006214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.290819, 13.527167, 29.425873>,  <10.708038, 13.077983, 29.225065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.290819, 13.527167, 29.425873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.423326, 13.903048, 29.391878>,  <11.502831, 14.128576, 29.371481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.423326, 13.903048, 29.391878>,  <11.290819, 13.527167, 29.425873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.423326, 13.903048, 29.391878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164189, 0.031285, 0.985933,
		0.929141, -0.340562, -0.143925,
		0.331268, 0.939701, -0.084984,
		11.522707, 14.184958, 29.366383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.763537, 13.588611, 29.938084>,  <11.290819, 13.527167, 29.425873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.763537, 13.588611, 29.938084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.698442, 13.966396, 29.823889>,  <11.659386, 14.193068, 29.755371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.698442, 13.966396, 29.823889>,  <11.763537, 13.588611, 29.938084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.698442, 13.966396, 29.823889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078509, 0.300823, 0.950443,
		0.983541, 0.132259, -0.123104,
		-0.162737, 0.944464, -0.285489,
		11.649621, 14.249736, 29.738243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.327440, 14.024195, 30.100431>,  <11.763537, 13.588611, 29.938084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.327440, 14.024195, 30.100431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.989890, 14.238627, 30.091564>,  <11.787360, 14.367288, 30.086245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.989890, 14.238627, 30.091564>,  <12.327440, 14.024195, 30.100431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.989890, 14.238627, 30.091564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207382, 0.363998, 0.908019,
		0.494842, 0.761657, -0.418342,
		-0.843874, 0.536083, -0.022168,
		11.736728, 14.399452, 30.084913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.589003, 14.602434, 30.395597>,  <12.327440, 14.024195, 30.100431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.589003, 14.602434, 30.395597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.193277, 14.659149, 30.409182>,  <11.955842, 14.693178, 30.417332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.193277, 14.659149, 30.409182>,  <12.589003, 14.602434, 30.395597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.193277, 14.659149, 30.409182> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091380, 0.421513, 0.902206,
		0.113608, 0.895669, -0.429966,
		-0.989314, 0.141788, 0.033959,
		11.896483, 14.701686, 30.419369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.486363, 15.268843, 30.625280>,  <12.589003, 14.602434, 30.395597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.486363, 15.268843, 30.625280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.137531, 15.089942, 30.704721>,  <11.928232, 14.982601, 30.752386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.137531, 15.089942, 30.704721>,  <12.486363, 15.268843, 30.625280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.137531, 15.089942, 30.704721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053913, 0.315559, 0.947373,
		-0.486385, 0.836892, -0.251080,
		-0.872080, -0.447251, 0.198603,
		11.875907, 14.955767, 30.764303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.131108, 15.731913, 31.063087>,  <12.486363, 15.268843, 30.625280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.131108, 15.731913, 31.063087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.938020, 15.391219, 31.144600>,  <11.822166, 15.186803, 31.193508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.938020, 15.391219, 31.144600>,  <12.131108, 15.731913, 31.063087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.938020, 15.391219, 31.144600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065161, 0.197113, 0.978213,
		-0.873346, 0.485484, -0.039651,
		-0.482722, -0.851735, 0.203783,
		11.793203, 15.135698, 31.205734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.838881, 15.897614, 31.645369>,  <12.131108, 15.731913, 31.063087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.838881, 15.897614, 31.645369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.810946, 15.498590, 31.645412>,  <11.794186, 15.259176, 31.645439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.810946, 15.498590, 31.645412>,  <11.838881, 15.897614, 31.645369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.810946, 15.498590, 31.645412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177357, -0.012308, 0.984070,
		-0.981666, 0.068745, 0.177783,
		-0.069838, -0.997558, 0.000110,
		11.789995, 15.199323, 31.645445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.476526, 15.747479, 32.189579>,  <11.838881, 15.897614, 31.645369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.476526, 15.747479, 32.189579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.669010, 15.407745, 32.102802>,  <11.784500, 15.203905, 32.050735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.669010, 15.407745, 32.102802>,  <11.476526, 15.747479, 32.189579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.669010, 15.407745, 32.102802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187790, -0.141859, 0.971911,
		-0.856254, -0.508434, 0.091233,
		0.481210, -0.849336, -0.216946,
		11.813374, 15.152945, 32.037720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.153462, 15.212604, 32.584553>,  <11.476526, 15.747479, 32.189579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.153462, 15.212604, 32.584553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.522631, 15.077917, 32.509892>,  <11.744132, 14.997105, 32.465096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.522631, 15.077917, 32.509892>,  <11.153462, 15.212604, 32.584553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.522631, 15.077917, 32.509892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106440, -0.242751, 0.964231,
		-0.369984, -0.909776, -0.188200,
		0.922921, -0.336719, -0.186651,
		11.799507, 14.976902, 32.453896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<15.142966, 14.635993, 17.196857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.511806, 14.510149, 17.286974>,  <15.733109, 14.434643, 17.341043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.511806, 14.510149, 17.286974>,  <15.142966, 14.635993, 17.196857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.511806, 14.510149, 17.286974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190572, 0.137492, 0.971997,
		-0.336776, -0.939211, 0.066825,
		0.922098, -0.314610, 0.225291,
		15.788435, 14.415766, 17.354561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.064468, 14.039865, 17.672525>,  <15.142966, 14.635993, 17.196857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.064468, 14.039865, 17.672525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.393369, 14.261745, 17.723455>,  <15.590709, 14.394874, 17.754013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.393369, 14.261745, 17.723455>,  <15.064468, 14.039865, 17.672525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.393369, 14.261745, 17.723455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181207, 0.043091, 0.982501,
		0.539507, -0.830933, 0.135947,
		0.822251, 0.554701, 0.127323,
		15.640044, 14.428156, 17.761652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.416287, 13.851972, 18.198250>,  <15.064468, 14.039865, 17.672525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.416287, 13.851972, 18.198250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.514110, 14.239014, 18.173166>,  <15.572803, 14.471239, 18.158115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.514110, 14.239014, 18.173166>,  <15.416287, 13.851972, 18.198250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.514110, 14.239014, 18.173166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362647, 0.151252, 0.919570,
		0.899266, -0.202144, 0.387889,
		0.244555, 0.967605, -0.062709,
		15.587476, 14.529295, 18.154354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.783789, 13.909883, 18.834215>,  <15.416287, 13.851972, 18.198250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.783789, 13.909883, 18.834215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.697063, 14.283342, 18.720169>,  <15.645028, 14.507419, 18.651741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.697063, 14.283342, 18.720169>,  <15.783789, 13.909883, 18.834215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.697063, 14.283342, 18.720169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382950, 0.187308, 0.904580,
		0.897965, 0.305309, 0.316930,
		-0.216813, 0.933650, -0.285115,
		15.632020, 14.563437, 18.634634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.862324, 14.378315, 19.533762>,  <15.783789, 13.909883, 18.834215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.862324, 14.378315, 19.533762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.645996, 14.589912, 19.272173>,  <15.516199, 14.716871, 19.115219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.645996, 14.589912, 19.272173>,  <15.862324, 14.378315, 19.533762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.645996, 14.589912, 19.272173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601522, 0.300223, 0.740295,
		0.587949, 0.793745, 0.155836,
		-0.540820, 0.528995, -0.653971,
		15.483750, 14.748610, 19.075981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.892725, 15.077175, 19.800041>,  <15.862324, 14.378315, 19.533762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.892725, 15.077175, 19.800041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.578681, 15.035525, 19.555824>,  <15.390255, 15.010535, 19.409294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.578681, 15.035525, 19.555824>,  <15.892725, 15.077175, 19.800041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.578681, 15.035525, 19.555824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619141, 0.157977, 0.769226,
		0.016355, 0.981937, -0.188497,
		-0.785110, -0.104125, -0.610541,
		15.343148, 15.004288, 19.372662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.438526, 15.553041, 20.010050>,  <15.892725, 15.077175, 19.800041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.438526, 15.553041, 20.010050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.191390, 15.323415, 19.795118>,  <15.043108, 15.185639, 19.666159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.191390, 15.323415, 19.795118>,  <15.438526, 15.553041, 20.010050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.191390, 15.323415, 19.795118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737166, 0.185098, 0.649866,
		-0.273605, 0.797615, -0.537541,
		-0.617841, -0.574063, -0.537331,
		15.006038, 15.151196, 19.633919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.742323, 15.876603, 20.006765>,  <15.438526, 15.553041, 20.010050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.742323, 15.876603, 20.006765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.632302, 15.505017, 19.907673>,  <14.566290, 15.282065, 19.848217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.632302, 15.505017, 19.907673>,  <14.742323, 15.876603, 20.006765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.632302, 15.505017, 19.907673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875947, 0.135920, 0.462864,
		-0.396313, 0.344310, -0.851109,
		-0.275051, -0.928965, -0.247730,
		14.549787, 15.226328, 19.833353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.120549, 16.006226, 19.743656>,  <14.742323, 15.876603, 20.006765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.120549, 16.006226, 19.743656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.131789, 15.621599, 19.852909>,  <14.138534, 15.390823, 19.918461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.131789, 15.621599, 19.852909>,  <14.120549, 16.006226, 19.743656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.131789, 15.621599, 19.852909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857944, 0.117020, 0.500239,
		-0.512974, -0.248388, -0.821682,
		0.028100, -0.961566, 0.273131,
		14.140220, 15.333129, 19.934849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.505114, 15.752907, 19.657413>,  <14.120549, 16.006226, 19.743656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.505114, 15.752907, 19.657413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.660881, 15.488557, 19.914038>,  <13.754341, 15.329947, 20.068012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.660881, 15.488557, 19.914038>,  <13.505114, 15.752907, 19.657413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.660881, 15.488557, 19.914038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735980, 0.195533, 0.648151,
		-0.553793, -0.724576, -0.410247,
		0.389418, -0.660875, 0.641559,
		13.777706, 15.290295, 20.106504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.911924, 15.475796, 20.099596>,  <13.505114, 15.752907, 19.657413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.911924, 15.475796, 20.099596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.242666, 15.377706, 20.302052>,  <13.441112, 15.318851, 20.423525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.242666, 15.377706, 20.302052>,  <12.911924, 15.475796, 20.099596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.242666, 15.377706, 20.302052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524369, -0.010755, 0.851423,
		-0.203347, -0.969406, -0.137482,
		0.826854, -0.245226, 0.506139,
		13.490723, 15.304138, 20.453894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.672782, 14.977414, 20.591494>,  <12.911924, 15.475796, 20.099596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.672782, 14.977414, 20.591494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.028004, 15.076571, 20.746367>,  <13.241137, 15.136065, 20.839291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.028004, 15.076571, 20.746367>,  <12.672782, 14.977414, 20.591494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.028004, 15.076571, 20.746367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403818, 0.018033, 0.914662,
		0.219755, -0.968620, 0.116118,
		0.888053, 0.247892, 0.387183,
		13.294419, 15.150938, 20.862522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.864359, 14.311707, 20.401175>,  <12.672782, 14.977414, 20.591494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.864359, 14.311707, 20.401175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.621378, 13.993988, 20.397285>,  <12.475590, 13.803357, 20.394953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.621378, 13.993988, 20.397285>,  <12.864359, 14.311707, 20.401175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.621378, 13.993988, 20.397285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220322, -0.156712, -0.962756,
		0.763191, -0.586969, 0.270196,
		-0.607451, -0.794297, -0.009721,
		12.439142, 13.755699, 20.394369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.150469, 13.866420, 19.933456>,  <12.864359, 14.311707, 20.401175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.150469, 13.866420, 19.933456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.776221, 13.726403, 19.951725>,  <12.551673, 13.642393, 19.962687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.776221, 13.726403, 19.951725>,  <13.150469, 13.866420, 19.933456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.776221, 13.726403, 19.951725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066048, 0.046490, -0.996733,
		0.346776, -0.935579, -0.066617,
		-0.935619, -0.350043, 0.045672,
		12.495535, 13.621390, 19.965427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.135112, 13.248596, 19.523182>,  <13.150469, 13.866420, 19.933456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.135112, 13.248596, 19.523182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.744081, 13.332138, 19.533936>,  <12.509462, 13.382263, 19.540388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.744081, 13.332138, 19.533936>,  <13.135112, 13.248596, 19.523182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.744081, 13.332138, 19.533936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052977, -0.120357, -0.991316,
		-0.203805, -0.970512, 0.128723,
		-0.977577, 0.208855, 0.026885,
		12.450808, 13.394794, 19.542002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.798073, 12.795041, 19.059103>,  <13.135112, 13.248596, 19.523182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.798073, 12.795041, 19.059103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.527209, 13.086441, 19.100565>,  <12.364691, 13.261281, 19.125443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.527209, 13.086441, 19.100565>,  <12.798073, 12.795041, 19.059103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.527209, 13.086441, 19.100565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243501, -0.088921, -0.965816,
		-0.694381, -0.679250, 0.237604,
		-0.677158, 0.728500, 0.103653,
		12.324061, 13.304991, 19.131660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.035051, 12.569003, 18.905306>,  <12.798073, 12.795041, 19.059103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.035051, 12.569003, 18.905306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.040226, 12.966621, 18.862026>,  <12.043330, 13.205193, 18.836058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.040226, 12.966621, 18.862026>,  <12.035051, 12.569003, 18.905306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.040226, 12.966621, 18.862026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279243, -0.100312, -0.954966,
		-0.960133, 0.042567, 0.276283,
		0.012936, 0.994045, -0.108199,
		12.044106, 13.264835, 18.829567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.492713, 12.729521, 18.397657>,  <12.035051, 12.569003, 18.905306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.492713, 12.729521, 18.397657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.672456, 13.086786, 18.404997>,  <11.780301, 13.301146, 18.409401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.672456, 13.086786, 18.404997>,  <11.492713, 12.729521, 18.397657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.672456, 13.086786, 18.404997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325464, 0.182803, -0.927716,
		-0.831957, 0.410903, 0.372837,
		0.449357, 0.893164, 0.018349,
		11.807262, 13.354735, 18.410501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.940762, 13.160621, 18.051056>,  <11.492713, 12.729521, 18.397657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.940762, 13.160621, 18.051056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.298216, 13.340050, 18.056711>,  <11.512689, 13.447707, 18.060104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.298216, 13.340050, 18.056711>,  <10.940762, 13.160621, 18.051056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.298216, 13.340050, 18.056711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205412, 0.436823, -0.875781,
		-0.399028, 0.779723, 0.482502,
		0.893635, 0.448572, 0.014140,
		11.566306, 13.474622, 18.060953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.755224, 13.849086, 17.819248>,  <10.940762, 13.160621, 18.051056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.755224, 13.849086, 17.819248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.149560, 13.817162, 17.760252>,  <11.386161, 13.798007, 17.724855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.149560, 13.817162, 17.760252>,  <10.755224, 13.849086, 17.819248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.149560, 13.817162, 17.760252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097973, 0.439678, -0.892796,
		0.136102, 0.894602, 0.425632,
		0.985838, -0.079811, -0.147488,
		11.445312, 13.793219, 17.716005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.903064, 14.470079, 17.442835>,  <10.755224, 13.849086, 17.819248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.903064, 14.470079, 17.442835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.184836, 14.196206, 17.368017>,  <11.353900, 14.031882, 17.323126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.184836, 14.196206, 17.368017>,  <10.903064, 14.470079, 17.442835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.184836, 14.196206, 17.368017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001468, 0.262124, -0.965033,
		0.709771, 0.680074, 0.183643,
		0.704431, -0.684683, -0.187046,
		11.396166, 13.990801, 17.311903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.350613, 14.800383, 16.959616>,  <10.903064, 14.470079, 17.442835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.350613, 14.800383, 16.959616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.451733, 14.413833, 16.940796>,  <11.512404, 14.181903, 16.929504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.451733, 14.413833, 16.940796>,  <11.350613, 14.800383, 16.959616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.451733, 14.413833, 16.940796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090103, 0.024905, -0.995621,
		0.963314, 0.255933, -0.080777,
		0.252800, -0.966374, -0.047051,
		11.527573, 14.123920, 16.926680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.709555, 14.793785, 16.391859>,  <11.350613, 14.800383, 16.959616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.709555, 14.793785, 16.391859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.664244, 14.400020, 16.445673>,  <11.637057, 14.163760, 16.477961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.664244, 14.400020, 16.445673>,  <11.709555, 14.793785, 16.391859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.664244, 14.400020, 16.445673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282268, -0.161711, -0.945608,
		0.952624, -0.069141, 0.296187,
		-0.113277, -0.984413, 0.134533,
		11.630260, 14.104695, 16.486032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.324942, 14.549991, 16.187672>,  <11.709555, 14.793785, 16.391859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.324942, 14.549991, 16.187672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.051799, 14.261416, 16.141651>,  <11.887914, 14.088272, 16.114038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.051799, 14.261416, 16.141651>,  <12.324942, 14.549991, 16.187672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.051799, 14.261416, 16.141651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280463, -0.113464, -0.953135,
		0.674572, -0.683122, 0.279816,
		-0.682856, -0.721437, -0.115051,
		11.846942, 14.044986, 16.107136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.643981, 13.931963, 15.891257>,  <12.324942, 14.549991, 16.187672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.643981, 13.931963, 15.891257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.253037, 13.919218, 15.807587>,  <12.018472, 13.911572, 15.757384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.253037, 13.919218, 15.807587>,  <12.643981, 13.931963, 15.891257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.253037, 13.919218, 15.807587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211590, -0.148942, -0.965943,
		-0.000378, -0.988332, 0.152312,
		-0.977359, -0.031863, -0.209177,
		11.959830, 13.909659, 15.744833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.196218, 13.444399, 15.864195>,  <12.643981, 13.931963, 15.891257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.196218, 13.444399, 15.864195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.946333, 13.265616, 16.120308>,  <12.796402, 13.158347, 16.273975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.946333, 13.265616, 16.120308>,  <13.196218, 13.444399, 15.864195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.946333, 13.265616, 16.120308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636939, -0.182664, -0.748961,
		0.451710, -0.875707, -0.170572,
		-0.624714, -0.446957, 0.640283,
		12.758919, 13.131529, 16.312393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.100771, 12.878674, 15.534136>,  <13.196218, 13.444399, 15.864195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.100771, 12.878674, 15.534136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.800209, 12.892311, 15.797720>,  <12.619872, 12.900494, 15.955871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.800209, 12.892311, 15.797720>,  <13.100771, 12.878674, 15.534136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.800209, 12.892311, 15.797720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652267, -0.189259, -0.733981,
		0.099689, -0.981335, 0.164450,
		-0.751405, 0.034095, 0.658960,
		12.574787, 12.902539, 15.995408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.773569, 12.556048, 15.518829>,  <13.100771, 12.878674, 15.534136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.773569, 12.556048, 15.518829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.090108, 12.319940, 15.455144>,  <14.280031, 12.178274, 15.416933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.090108, 12.319940, 15.455144>,  <13.773569, 12.556048, 15.518829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.090108, 12.319940, 15.455144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389607, -0.687595, 0.612715,
		-0.471142, -0.422841, -0.774100,
		0.791348, -0.590271, -0.159213,
		14.327513, 12.142859, 15.407380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.389853, 12.001328, 15.478897>,  <13.773569, 12.556048, 15.518829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.389853, 12.001328, 15.478897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.776843, 11.955447, 15.569087>,  <14.009037, 11.927918, 15.623201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.776843, 11.955447, 15.569087>,  <13.389853, 12.001328, 15.478897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.776843, 11.955447, 15.569087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252968, -0.432074, 0.865633,
		-0.001869, -0.894514, -0.447036,
		0.967473, -0.114703, 0.225476,
		14.067085, 11.921036, 15.636729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.694901, 11.205683, 15.675459>,  <13.389853, 12.001328, 15.478897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.694901, 11.205683, 15.675459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.928043, 11.467030, 15.868701>,  <14.067928, 11.623837, 15.984647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.928043, 11.467030, 15.868701>,  <13.694901, 11.205683, 15.675459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.928043, 11.467030, 15.868701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208679, -0.454240, 0.866094,
		0.785324, -0.605621, -0.128412,
		0.582855, 0.653367, 0.483106,
		14.102900, 11.663039, 16.013634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.901189, 10.846671, 16.249987>,  <13.694901, 11.205683, 15.675459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.901189, 10.846671, 16.249987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.027867, 11.208447, 16.364313>,  <14.103874, 11.425513, 16.432909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.027867, 11.208447, 16.364313>,  <13.901189, 10.846671, 16.249987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.027867, 11.208447, 16.364313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190248, -0.234633, 0.953285,
		0.929252, -0.356277, 0.097761,
		0.316696, 0.904441, 0.285814,
		14.122876, 11.479780, 16.450058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.315593, 10.642759, 16.859261>,  <13.901189, 10.846671, 16.249987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.315593, 10.642759, 16.859261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.228247, 11.032635, 16.878448>,  <14.175839, 11.266560, 16.889961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.228247, 11.032635, 16.878448>,  <14.315593, 10.642759, 16.859261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.228247, 11.032635, 16.878448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012462, -0.051939, 0.998573,
		0.975788, 0.217455, 0.023488,
		-0.218364, 0.974688, 0.047971,
		14.162738, 11.325041, 16.892839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.874545, 10.937449, 17.261051>,  <14.315593, 10.642759, 16.859261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.874545, 10.937449, 17.261051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.545027, 11.160206, 17.303446>,  <14.347316, 11.293859, 17.328882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.545027, 11.160206, 17.303446>,  <14.874545, 10.937449, 17.261051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.545027, 11.160206, 17.303446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145775, 0.027429, 0.988938,
		0.547822, 0.830133, -0.103776,
		-0.823797, 0.556890, 0.105986,
		14.297888, 11.327272, 17.335241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.119012, 11.411532, 17.806795>,  <14.874545, 10.937449, 17.261051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.119012, 11.411532, 17.806795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.720462, 11.392765, 17.778418>,  <14.481332, 11.381505, 17.761391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.720462, 11.392765, 17.778418>,  <15.119012, 11.411532, 17.806795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.720462, 11.392765, 17.778418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071728, 0.015196, 0.997308,
		-0.045714, 0.998783, -0.018506,
		-0.996376, -0.046919, -0.070946,
		14.421549, 11.378690, 17.757133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.975349, 11.862696, 18.306593>,  <15.119012, 11.411532, 17.806795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.975349, 11.862696, 18.306593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.641716, 11.652817, 18.238480>,  <14.441536, 11.526890, 18.197611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.641716, 11.652817, 18.238480>,  <14.975349, 11.862696, 18.306593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.641716, 11.652817, 18.238480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160562, -0.064407, 0.984922,
		-0.527753, 0.848849, -0.030525,
		-0.834084, -0.524697, -0.170284,
		14.391491, 11.495408, 18.187395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.490902, 12.192823, 18.702278>,  <14.975349, 11.862696, 18.306593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.490902, 12.192823, 18.702278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.353160, 11.828230, 18.612286>,  <14.270514, 11.609474, 18.558290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.353160, 11.828230, 18.612286>,  <14.490902, 12.192823, 18.702278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.353160, 11.828230, 18.612286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234399, -0.148580, 0.960719,
		-0.909108, 0.383564, -0.162487,
		-0.344355, -0.911484, -0.224982,
		14.249853, 11.554785, 18.544790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.994209, 12.107606, 19.180490>,  <14.490902, 12.192823, 18.702278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.994209, 12.107606, 19.180490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.065774, 11.730906, 19.066582>,  <14.108713, 11.504885, 18.998238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.065774, 11.730906, 19.066582>,  <13.994209, 12.107606, 19.180490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.065774, 11.730906, 19.066582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309826, -0.328644, 0.892189,
		-0.933809, -0.071393, -0.350578,
		0.178912, -0.941751, -0.284771,
		14.119448, 11.448380, 18.981150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.429583, 11.862537, 19.242863>,  <13.994209, 12.107606, 19.180490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.429583, 11.862537, 19.242863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.685001, 11.555593, 19.266249>,  <13.838252, 11.371428, 19.280281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.685001, 11.555593, 19.266249>,  <13.429583, 11.862537, 19.242863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.685001, 11.555593, 19.266249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320479, -0.196073, 0.926741,
		-0.699680, -0.610503, -0.371124,
		0.638546, -0.767360, 0.058465,
		13.876565, 11.325386, 19.283789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.034696, 11.261123, 19.282183>,  <13.429583, 11.862537, 19.242863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.034696, 11.261123, 19.282183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.394711, 11.178870, 19.435884>,  <13.610720, 11.129519, 19.528105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.394711, 11.178870, 19.435884>,  <13.034696, 11.261123, 19.282183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.394711, 11.178870, 19.435884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435615, -0.397840, 0.807442,
		-0.013163, -0.894114, -0.447646,
		0.900037, -0.205630, 0.384252,
		13.664721, 11.117181, 19.551161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.005177, 10.631063, 19.516249>,  <13.034696, 11.261123, 19.282183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.005177, 10.631063, 19.516249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.314746, 10.791590, 19.712204>,  <13.500487, 10.887906, 19.829777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.314746, 10.791590, 19.712204>,  <13.005177, 10.631063, 19.516249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.314746, 10.791590, 19.712204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384904, -0.316202, 0.867102,
		0.502887, -0.859628, -0.090247,
		0.773921, 0.401318, 0.489888,
		13.546923, 10.911985, 19.859171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.974890, 10.268620, 20.181116>,  <13.005177, 10.631063, 19.516249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.974890, 10.268620, 20.181116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.268292, 10.514470, 20.297186>,  <13.444334, 10.661981, 20.366827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.268292, 10.514470, 20.297186>,  <12.974890, 10.268620, 20.181116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.268292, 10.514470, 20.297186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157800, -0.261263, 0.952282,
		0.661109, -0.744295, -0.094650,
		0.733507, 0.614627, 0.290174,
		13.488345, 10.698858, 20.384237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.458462, 9.821637, 20.581043>,  <12.974890, 10.268620, 20.181116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.458462, 9.821637, 20.581043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.516993, 10.198457, 20.701794>,  <13.552112, 10.424549, 20.774244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.516993, 10.198457, 20.701794>,  <13.458462, 9.821637, 20.581043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.516993, 10.198457, 20.701794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124658, -0.285171, 0.950336,
		0.981350, -0.176692, 0.075705,
		0.146328, 0.942050, 0.301878,
		13.560891, 10.481071, 20.792356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.955205, 9.876677, 21.115091>,  <13.458462, 9.821637, 20.581043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.955205, 9.876677, 21.115091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.741269, 10.212977, 21.148754>,  <13.612907, 10.414758, 21.168951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.741269, 10.212977, 21.148754>,  <13.955205, 9.876677, 21.115091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.741269, 10.212977, 21.148754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137773, -0.185040, 0.973025,
		0.833646, 0.508817, 0.214800,
		-0.534839, 0.840753, 0.084157,
		13.580817, 10.465203, 21.174002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.276579, 10.337379, 21.650530>,  <13.955205, 9.876677, 21.115091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.276579, 10.337379, 21.650530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.884560, 10.407261, 21.612621>,  <13.649348, 10.449190, 21.589876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.884560, 10.407261, 21.612621>,  <14.276579, 10.337379, 21.650530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.884560, 10.407261, 21.612621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107515, -0.064955, 0.992079,
		0.167167, 0.982476, 0.082443,
		-0.980049, 0.174707, -0.094772,
		13.590545, 10.459673, 21.584190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.089156, 10.643886, 22.240601>,  <14.276579, 10.337379, 21.650530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.089156, 10.643886, 22.240601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.710418, 10.597179, 22.120701>,  <13.483175, 10.569156, 22.048761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.710418, 10.597179, 22.120701>,  <14.089156, 10.643886, 22.240601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.710418, 10.597179, 22.120701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288703, -0.102565, 0.951909,
		-0.141895, 0.987849, 0.063403,
		-0.946845, -0.116767, -0.299749,
		13.426364, 10.562149, 22.030777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.645689, 11.116038, 22.567780>,  <14.089156, 10.643886, 22.240601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.645689, 11.116038, 22.567780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.391389, 10.828298, 22.455812>,  <13.238809, 10.655653, 22.388632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.391389, 10.828298, 22.455812>,  <13.645689, 11.116038, 22.567780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.391389, 10.828298, 22.455812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364611, -0.039772, 0.930310,
		-0.680352, 0.693508, -0.236998,
		-0.635751, -0.719351, -0.279920,
		13.200664, 10.612493, 22.371836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.954973, 11.344178, 22.822723>,  <13.645689, 11.116038, 22.567780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.954973, 11.344178, 22.822723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.937354, 10.951668, 22.747723>,  <12.926783, 10.716162, 22.702723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.937354, 10.951668, 22.747723>,  <12.954973, 11.344178, 22.822723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.937354, 10.951668, 22.747723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460941, -0.146550, 0.875247,
		-0.886337, 0.124979, -0.445855,
		-0.044048, -0.981276, -0.187501,
		12.924140, 10.657285, 22.691473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.229063, 11.106774, 22.979788>,  <12.954973, 11.344178, 22.822723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.229063, 11.106774, 22.979788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.469481, 10.788426, 23.009010>,  <12.613732, 10.597418, 23.026545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.469481, 10.788426, 23.009010>,  <12.229063, 11.106774, 22.979788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.469481, 10.788426, 23.009010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363181, -0.190556, 0.912024,
		-0.711930, -0.574700, -0.403577,
		0.601045, -0.795869, 0.073058,
		12.649795, 10.549665, 23.030928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.855921, 10.738781, 23.468615>,  <12.229063, 11.106774, 22.979788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.855921, 10.738781, 23.468615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.207789, 10.549989, 23.491976>,  <12.418911, 10.436713, 23.505993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.207789, 10.549989, 23.491976>,  <11.855921, 10.738781, 23.468615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.207789, 10.549989, 23.491976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160870, -0.179739, 0.970471,
		-0.447546, -0.863092, -0.234039,
		0.879673, -0.471981, 0.058405,
		12.471691, 10.408395, 23.509497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.699062, 10.010311, 23.742943>,  <11.855921, 10.738781, 23.468615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.699062, 10.010311, 23.742943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.092404, 10.077030, 23.771761>,  <12.328410, 10.117062, 23.789051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.092404, 10.077030, 23.771761>,  <11.699062, 10.010311, 23.742943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.092404, 10.077030, 23.771761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016312, -0.313864, 0.949328,
		0.180957, -0.934702, -0.305919,
		0.983356, 0.166798, 0.072043,
		12.387411, 10.127069, 23.793373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.059496, 9.367356, 23.942684>,  <11.699062, 10.010311, 23.742943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.059496, 9.367356, 23.942684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.272797, 9.678753, 24.075106>,  <12.400777, 9.865591, 24.154558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.272797, 9.678753, 24.075106>,  <12.059496, 9.367356, 23.942684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.272797, 9.678753, 24.075106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019660, -0.402633, 0.915150,
		0.845729, -0.481496, -0.230009,
		0.533251, 0.778491, 0.331052,
		12.432772, 9.912300, 24.174421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.484288, 9.159150, 24.492165>,  <12.059496, 9.367356, 23.942684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.484288, 9.159150, 24.492165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.505547, 9.555026, 24.545368>,  <12.518302, 9.792551, 24.577291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.505547, 9.555026, 24.545368>,  <12.484288, 9.159150, 24.492165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.505547, 9.555026, 24.545368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032564, -0.134845, 0.990331,
		0.998056, -0.048301, -0.039395,
		0.053146, 0.989689, 0.133010,
		12.521490, 9.851933, 24.585272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.140882, 9.466163, 24.863819>,  <12.484288, 9.159150, 24.492165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.140882, 9.466163, 24.863819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.904170, 9.783765, 24.919466>,  <12.762143, 9.974326, 24.952854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.904170, 9.783765, 24.919466>,  <13.140882, 9.466163, 24.863819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.904170, 9.783765, 24.919466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136886, -0.071088, 0.988033,
		0.794393, 0.603740, -0.066620,
		-0.591779, 0.794005, 0.139116,
		12.726636, 10.021966, 24.961201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.394185, 9.716377, 25.422960>,  <13.140882, 9.466163, 24.863819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.394185, 9.716377, 25.422960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.024103, 9.863011, 25.383741>,  <12.802054, 9.950992, 25.360210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.024103, 9.863011, 25.383741>,  <13.394185, 9.716377, 25.422960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.024103, 9.863011, 25.383741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088433, 0.042978, 0.995154,
		0.369022, 0.929391, -0.007346,
		-0.925204, 0.366584, -0.098049,
		12.746542, 9.972986, 25.354326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
