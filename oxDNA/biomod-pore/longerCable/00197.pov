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
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<23.752686, 35.058342, 34.957832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.081553, 34.996174, 35.176880>,  <24.278872, 34.958874, 35.308308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.081553, 34.996174, 35.176880>,  <23.752686, 35.058342, 34.957832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.081553, 34.996174, 35.176880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519011, -0.190479, -0.833274,
		0.233820, 0.969310, -0.075939,
		0.822166, -0.155423, 0.547620,
		24.328201, 34.949547, 35.341167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.403835, 35.288891, 34.575878>,  <23.752686, 35.058342, 34.957832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.403835, 35.288891, 34.575878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.550163, 35.054600, 34.865181>,  <24.637960, 34.914024, 35.038765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.550163, 35.054600, 34.865181>,  <24.403835, 35.288891, 34.575878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.550163, 35.054600, 34.865181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745617, -0.280636, -0.604400,
		0.556984, 0.760376, 0.334063,
		0.365821, -0.585724, 0.723259,
		24.659910, 34.878883, 35.082157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.087095, 35.298008, 34.663460>,  <24.403835, 35.288891, 34.575878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.087095, 35.298008, 34.663460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.035357, 34.931576, 34.815285>,  <25.004313, 34.711716, 34.906380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.035357, 34.931576, 34.815285>,  <25.087095, 35.298008, 34.663460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.035357, 34.931576, 34.815285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886642, -0.278241, -0.369388,
		0.443998, 0.288755, 0.848225,
		-0.129348, -0.916080, 0.379561,
		24.996552, 34.656754, 34.929153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.644466, 35.012596, 35.099903>,  <25.087095, 35.298008, 34.663460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.644466, 35.012596, 35.099903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437260, 34.699547, 34.961826>,  <25.312935, 34.511719, 34.878983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.437260, 34.699547, 34.961826>,  <25.644466, 35.012596, 35.099903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.437260, 34.699547, 34.961826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854539, -0.455721, -0.249163,
		0.037691, -0.424049, 0.904855,
		-0.518019, -0.782624, -0.345189,
		25.281855, 34.464760, 34.858269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.747519, 35.465439, 34.445339>,  <25.644466, 35.012596, 35.099903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.747519, 35.465439, 34.445339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.980330, 35.474072, 34.120186>,  <26.120016, 35.479252, 33.925095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.980330, 35.474072, 34.120186>,  <25.747519, 35.465439, 34.445339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.980330, 35.474072, 34.120186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704328, -0.512979, 0.490687,
		-0.406402, -0.858130, -0.313768,
		0.582030, 0.021580, -0.812881,
		26.154938, 35.480545, 33.876320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017469, 34.794689, 34.218243>,  <25.747519, 35.465439, 34.445339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017469, 34.794689, 34.218243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288582, 35.026127, 34.036762>,  <26.451248, 35.164989, 33.927876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288582, 35.026127, 34.036762>,  <26.017469, 34.794689, 34.218243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288582, 35.026127, 34.036762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735007, -0.549527, 0.397223,
		-0.019490, -0.602702, -0.797729,
		0.677780, 0.578594, -0.453700,
		26.491917, 35.199703, 33.900654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.566202, 34.288651, 34.045738>,  <26.017469, 34.794689, 34.218243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.566202, 34.288651, 34.045738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731743, 34.650436, 34.004429>,  <26.831068, 34.867508, 33.979645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731743, 34.650436, 34.004429>,  <26.566202, 34.288651, 34.045738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731743, 34.650436, 34.004429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870415, -0.359918, 0.335912,
		0.266653, -0.228905, -0.936215,
		0.413853, 0.904468, -0.103269,
		26.855898, 34.921776, 33.973450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.088274, 34.242168, 33.556866>,  <26.566202, 34.288651, 34.045738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.088274, 34.242168, 33.556866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174278, 34.517014, 33.834469>,  <27.225882, 34.681923, 34.001030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174278, 34.517014, 33.834469>,  <27.088274, 34.242168, 33.556866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.174278, 34.517014, 33.834469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805506, -0.526580, 0.271796,
		0.552204, 0.500585, -0.666697,
		0.215012, 0.687116, 0.694004,
		27.238783, 34.723148, 34.042671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742226, 34.451477, 33.497452>,  <27.088274, 34.242168, 33.556866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.742226, 34.451477, 33.497452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639215, 34.532936, 33.875278>,  <27.577410, 34.581810, 34.101974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639215, 34.532936, 33.875278>,  <27.742226, 34.451477, 33.497452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639215, 34.532936, 33.875278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788700, -0.520450, 0.327238,
		0.558241, 0.829253, -0.026587,
		-0.257526, 0.203647, 0.944568,
		27.561958, 34.594028, 34.158649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.309855, 34.721729, 33.855919>,  <27.742226, 34.451477, 33.497452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.309855, 34.721729, 33.855919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.085045, 34.554131, 34.141178>,  <27.950159, 34.453571, 34.312332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.085045, 34.554131, 34.141178>,  <28.309855, 34.721729, 33.855919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085045, 34.554131, 34.141178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798001, -0.501444, 0.334287,
		0.217538, 0.756967, 0.616180,
		-0.562024, -0.418992, 0.713144,
		27.916437, 34.428432, 34.355122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687935, 34.690689, 34.431801>,  <28.309855, 34.721729, 33.855919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687935, 34.690689, 34.431801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414972, 34.421684, 34.546375>,  <28.251194, 34.260281, 34.615120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414972, 34.421684, 34.546375>,  <28.687935, 34.690689, 34.431801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414972, 34.421684, 34.546375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719709, -0.549643, 0.424159,
		-0.127817, 0.495597, 0.859096,
		-0.682408, -0.672514, 0.286432,
		28.210249, 34.219929, 34.632305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811079, 34.495205, 35.118073>,  <28.687935, 34.690689, 34.431801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811079, 34.495205, 35.118073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591246, 34.189415, 34.983295>,  <28.459347, 34.005939, 34.902428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591246, 34.189415, 34.983295>,  <28.811079, 34.495205, 35.118073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591246, 34.189415, 34.983295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610577, -0.642822, 0.462575,
		-0.570224, 0.048493, 0.820057,
		-0.549582, -0.764479, -0.336944,
		28.426371, 33.960072, 34.882214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.206507, 33.921780, 35.187649>,  <28.811079, 34.495205, 35.118073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.206507, 33.921780, 35.187649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160856, 33.524395, 35.186943>,  <29.133465, 33.285965, 35.186520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160856, 33.524395, 35.186943>,  <29.206507, 33.921780, 35.187649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160856, 33.524395, 35.186943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933173, 0.107810, -0.342878,
		0.340827, -0.037487, -0.939378,
		-0.114128, -0.993465, -0.001763,
		29.126617, 33.226357, 35.186413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059313, 33.563755, 34.505634>,  <29.206507, 33.921780, 35.187649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059313, 33.563755, 34.505634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866377, 33.375900, 34.801414>,  <28.750616, 33.263187, 34.978882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.866377, 33.375900, 34.801414>,  <29.059313, 33.563755, 34.505634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866377, 33.375900, 34.801414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872214, 0.335726, -0.355713,
		-0.081195, -0.816533, -0.571561,
		-0.482339, -0.469641, 0.739450,
		28.721676, 33.235008, 35.023251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484755, 33.066734, 34.352886>,  <29.059313, 33.563755, 34.505634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484755, 33.066734, 34.352886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.426516, 33.241161, 34.708111>,  <28.391573, 33.345818, 34.921246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.426516, 33.241161, 34.708111>,  <28.484755, 33.066734, 34.352886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426516, 33.241161, 34.708111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815647, 0.455114, -0.357200,
		-0.559930, -0.776351, 0.289410,
		-0.145598, 0.436063, 0.888060,
		28.382835, 33.371979, 34.974529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768177, 33.014839, 34.570244>,  <28.484755, 33.066734, 34.352886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768177, 33.014839, 34.570244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936808, 33.324005, 34.759926>,  <28.037987, 33.509506, 34.873734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.936808, 33.324005, 34.759926>,  <27.768177, 33.014839, 34.570244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936808, 33.324005, 34.759926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799094, 0.563850, -0.208621,
		-0.428628, -0.290985, 0.855340,
		0.421577, 0.772918, 0.474206,
		28.063280, 33.555882, 34.902187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252396, 33.489117, 35.035110>,  <27.768177, 33.014839, 34.570244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252396, 33.489117, 35.035110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555304, 33.718449, 34.910000>,  <27.737049, 33.856049, 34.834934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.555304, 33.718449, 34.910000>,  <27.252396, 33.489117, 35.035110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555304, 33.718449, 34.910000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639773, 0.747474, -0.178812,
		0.131276, 0.335517, 0.932843,
		0.757270, 0.573333, -0.312780,
		27.782484, 33.890450, 34.816166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153215, 34.150993, 35.305904>,  <27.252396, 33.489117, 35.035110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153215, 34.150993, 35.305904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405497, 34.222267, 35.003788>,  <27.556866, 34.265034, 34.822517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.405497, 34.222267, 35.003788>,  <27.153215, 34.150993, 35.305904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405497, 34.222267, 35.003788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463700, 0.866955, -0.182678,
		0.622251, 0.465443, 0.629418,
		0.630704, 0.178189, -0.755289,
		27.594707, 34.275723, 34.777203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.323828, 34.761593, 35.411186>,  <27.153215, 34.150993, 35.305904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.323828, 34.761593, 35.411186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400707, 34.721138, 35.020733>,  <27.446835, 34.696865, 34.786461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400707, 34.721138, 35.020733>,  <27.323828, 34.761593, 35.411186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.400707, 34.721138, 35.020733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580335, 0.790399, -0.196163,
		0.791373, 0.604185, 0.093218,
		0.192199, -0.101140, -0.976130,
		27.458366, 34.690796, 34.727894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386347, 35.440685, 35.168713>,  <27.323828, 34.761593, 35.411186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386347, 35.440685, 35.168713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.321125, 35.231720, 34.833931>,  <27.281992, 35.106339, 34.633060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.321125, 35.231720, 34.833931>,  <27.386347, 35.440685, 35.168713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.321125, 35.231720, 34.833931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400870, 0.810209, -0.427626,
		0.901508, 0.265784, -0.341530,
		-0.163054, -0.522418, -0.836955,
		27.272209, 35.074993, 34.582844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276335, 35.955559, 34.611649>,  <27.386347, 35.440685, 35.168713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276335, 35.955559, 34.611649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269604, 35.604706, 34.419670>,  <27.265566, 35.394192, 34.304482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269604, 35.604706, 34.419670>,  <27.276335, 35.955559, 34.611649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.269604, 35.604706, 34.419670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524795, 0.416330, -0.742468,
		0.851062, 0.239383, -0.467321,
		-0.016826, -0.877134, -0.479950,
		27.264557, 35.341564, 34.275684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474520, 36.153713, 33.898754>,  <27.276335, 35.955559, 34.611649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474520, 36.153713, 33.898754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302385, 35.792732, 33.890827>,  <27.199104, 35.576145, 33.886070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302385, 35.792732, 33.890827>,  <27.474520, 36.153713, 33.898754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302385, 35.792732, 33.890827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780331, 0.382959, -0.494394,
		0.453757, -0.197289, -0.869012,
		-0.430334, -0.902452, -0.019820,
		27.173285, 35.521996, 33.884884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281706, 36.056805, 33.199966>,  <27.474520, 36.153713, 33.898754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281706, 36.056805, 33.199966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047907, 35.812519, 33.413651>,  <26.907627, 35.665947, 33.541862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047907, 35.812519, 33.413651>,  <27.281706, 36.056805, 33.199966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047907, 35.812519, 33.413651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771857, 0.215486, -0.598166,
		0.250200, -0.761959, -0.597343,
		-0.584497, -0.610724, 0.534209,
		26.872557, 35.629303, 33.573914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658541, 36.211971, 32.570992>,  <27.281706, 36.056805, 33.199966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658541, 36.211971, 32.570992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012045, 36.381870, 32.649536>,  <28.224148, 36.483810, 32.696663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.012045, 36.381870, 32.649536>,  <27.658541, 36.211971, 32.570992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.012045, 36.381870, 32.649536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404748, 0.904444, -0.134759,
		-0.234835, 0.039618, 0.971227,
		0.883760, 0.424748, 0.196360,
		28.277172, 36.509296, 32.708443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657084, 36.740074, 33.041103>,  <27.658541, 36.211971, 32.570992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657084, 36.740074, 33.041103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.954704, 36.813671, 32.784191>,  <28.133278, 36.857830, 32.630043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.954704, 36.813671, 32.784191>,  <27.657084, 36.740074, 33.041103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.954704, 36.813671, 32.784191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433080, 0.864842, -0.253950,
		0.508749, 0.467113, 0.723173,
		0.744054, 0.183994, -0.642285,
		28.177921, 36.868870, 32.591507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193754, 37.140408, 33.493515>,  <27.657084, 36.740074, 33.041103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193754, 37.140408, 33.493515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.522364, 37.133438, 33.265553>,  <28.719528, 37.129257, 33.128773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.522364, 37.133438, 33.265553>,  <28.193754, 37.140408, 33.493515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522364, 37.133438, 33.265553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277245, 0.861209, -0.425975,
		0.498234, 0.507953, 0.702672,
		0.821522, -0.017423, -0.569911,
		28.768820, 37.128212, 33.094578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674026, 37.739799, 33.617332>,  <28.193754, 37.140408, 33.493515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.674026, 37.739799, 33.617332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725531, 37.623535, 33.238083>,  <28.756433, 37.553776, 33.010532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.725531, 37.623535, 33.238083>,  <28.674026, 37.739799, 33.617332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.725531, 37.623535, 33.238083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427692, 0.846316, -0.317536,
		0.894707, 0.446390, -0.015344,
		0.128759, -0.290664, -0.948122,
		28.764158, 37.536335, 32.953648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.015469, 38.348717, 33.234020>,  <28.674026, 37.739799, 33.617332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.015469, 38.348717, 33.234020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809835, 38.121506, 32.976940>,  <28.686457, 37.985180, 32.822693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.809835, 38.121506, 32.976940>,  <29.015469, 38.348717, 33.234020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809835, 38.121506, 32.976940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274548, 0.818843, -0.504102,
		0.812600, -0.082714, -0.576922,
		-0.514105, -0.568026, -0.642683,
		28.655611, 37.951096, 32.784130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084341, 38.678074, 32.704227>,  <29.015469, 38.348717, 33.234020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084341, 38.678074, 32.704227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770906, 38.460419, 32.584290>,  <28.582846, 38.329826, 32.512325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.770906, 38.460419, 32.584290>,  <29.084341, 38.678074, 32.704227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770906, 38.460419, 32.584290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390290, 0.806634, -0.443864,
		0.483390, -0.230778, -0.844438,
		-0.783587, -0.544136, -0.299848,
		28.535831, 38.297176, 32.494335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014729, 38.784142, 31.999149>,  <29.084341, 38.678074, 32.704227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014729, 38.784142, 31.999149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647533, 38.666782, 32.105896>,  <28.427217, 38.596367, 32.169945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647533, 38.666782, 32.105896>,  <29.014729, 38.784142, 31.999149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647533, 38.666782, 32.105896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384493, 0.823405, -0.417336,
		-0.097295, -0.485717, -0.868684,
		-0.917986, -0.293398, 0.266868,
		28.372137, 38.578762, 32.185955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458683, 38.949261, 31.366114>,  <29.014729, 38.784142, 31.999149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458683, 38.949261, 31.366114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236624, 38.923512, 31.697817>,  <28.103388, 38.908062, 31.896839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236624, 38.923512, 31.697817>,  <28.458683, 38.949261, 31.366114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236624, 38.923512, 31.697817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543018, 0.783256, -0.302724,
		-0.630035, -0.618358, -0.469776,
		-0.555147, -0.064371, 0.829258,
		28.070080, 38.904202, 31.946594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764217, 39.048492, 31.138296>,  <28.458683, 38.949261, 31.366114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.764217, 39.048492, 31.138296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794271, 39.152088, 31.523478>,  <27.812304, 39.214245, 31.754587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794271, 39.152088, 31.523478>,  <27.764217, 39.048492, 31.138296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794271, 39.152088, 31.523478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420874, 0.883691, -0.204831,
		-0.904002, -0.389893, 0.175397,
		0.075135, 0.258988, 0.962954,
		27.816813, 39.229786, 31.812365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078026, 39.318382, 31.284317>,  <27.764217, 39.048492, 31.138296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.078026, 39.318382, 31.284317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.374239, 39.460819, 31.512285>,  <27.551966, 39.546280, 31.649067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.374239, 39.460819, 31.512285>,  <27.078026, 39.318382, 31.284317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.374239, 39.460819, 31.512285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231233, 0.931303, -0.281434,
		-0.630987, 0.076626, 0.772000,
		0.740531, 0.356093, 0.569922,
		27.596397, 39.567646, 31.683262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826914, 39.861763, 31.812449>,  <27.078026, 39.318382, 31.284317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826914, 39.861763, 31.812449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193014, 39.889137, 31.653639>,  <27.412674, 39.905563, 31.558353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193014, 39.889137, 31.653639>,  <26.826914, 39.861763, 31.812449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193014, 39.889137, 31.653639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203612, 0.928924, -0.309260,
		0.347641, 0.363890, 0.864135,
		0.915253, 0.068437, -0.397025,
		27.467590, 39.909668, 31.534531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291147, 40.379272, 32.115089>,  <26.826914, 39.861763, 31.812449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.291147, 40.379272, 32.115089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384384, 40.317852, 31.730988>,  <27.440327, 40.280998, 31.500526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384384, 40.317852, 31.730988>,  <27.291147, 40.379272, 32.115089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384384, 40.317852, 31.730988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053306, 0.983953, -0.170281,
		0.970993, 0.090879, 0.221165,
		0.233090, -0.153553, -0.960255,
		27.454311, 40.271786, 31.442911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.987646, 40.669319, 31.837425>,  <27.291147, 40.379272, 32.115089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.987646, 40.669319, 31.837425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.705107, 40.659588, 31.554447>,  <27.535583, 40.653748, 31.384661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.705107, 40.659588, 31.554447>,  <27.987646, 40.669319, 31.837425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.705107, 40.659588, 31.554447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145303, 0.973143, -0.178549,
		0.692791, -0.228912, -0.683843,
		-0.706349, -0.024333, -0.707446,
		27.493202, 40.652287, 31.342213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636896, 40.212807, 32.042782>,  <27.987646, 40.669319, 31.837425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636896, 40.212807, 32.042782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.247961, 40.134186, 31.992304>,  <28.014599, 40.087013, 31.962017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.247961, 40.134186, 31.992304>,  <28.636896, 40.212807, 32.042782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.247961, 40.134186, 31.992304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107425, -0.856056, 0.505597,
		-0.207403, 0.478056, 0.853491,
		-0.972339, -0.196549, -0.126194,
		27.956259, 40.075222, 31.954445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430185, 39.824230, 32.613705>,  <28.636896, 40.212807, 32.042782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430185, 39.824230, 32.613705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140274, 39.747459, 32.349022>,  <27.966328, 39.701397, 32.190212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140274, 39.747459, 32.349022>,  <28.430185, 39.824230, 32.613705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140274, 39.747459, 32.349022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013629, -0.956236, 0.292278,
		-0.688845, 0.220856, 0.690446,
		-0.724780, -0.191925, -0.661709,
		27.922840, 39.689880, 32.150509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927456, 39.594776, 33.002422>,  <28.430185, 39.824230, 32.613705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927456, 39.594776, 33.002422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906960, 39.470707, 32.622704>,  <27.894661, 39.396267, 32.394871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.906960, 39.470707, 32.622704>,  <27.927456, 39.594776, 33.002422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906960, 39.470707, 32.622704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070630, -0.949292, 0.306359,
		-0.996186, -0.051350, 0.070552,
		-0.051243, -0.310174, -0.949298,
		27.891586, 39.377655, 32.337914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605030, 38.964561, 33.091232>,  <27.927456, 39.594776, 33.002422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605030, 38.964561, 33.091232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.733530, 38.930676, 32.713955>,  <27.810631, 38.910343, 32.487587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.733530, 38.930676, 32.713955>,  <27.605030, 38.964561, 33.091232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733530, 38.930676, 32.713955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181546, -0.972008, 0.149137,
		-0.929429, -0.219144, -0.296879,
		0.321251, -0.084716, -0.943197,
		27.829905, 38.905262, 32.430996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.268764, 38.343632, 32.825836>,  <27.605030, 38.964561, 33.091232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.268764, 38.343632, 32.825836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607895, 38.418610, 32.627419>,  <27.811373, 38.463596, 32.508369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607895, 38.418610, 32.627419>,  <27.268764, 38.343632, 32.825836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607895, 38.418610, 32.627419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308296, -0.935338, 0.173483,
		-0.431446, -0.300011, -0.850792,
		0.847825, 0.187447, -0.496040,
		27.862242, 38.474842, 32.478607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408720, 37.750462, 32.394184>,  <27.268764, 38.343632, 32.825836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408720, 37.750462, 32.394184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753498, 37.939503, 32.467606>,  <27.960365, 38.052929, 32.511658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753498, 37.939503, 32.467606>,  <27.408720, 37.750462, 32.394184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753498, 37.939503, 32.467606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460676, -0.881250, 0.105712,
		0.211719, -0.006559, -0.977309,
		0.861947, 0.472604, 0.183556,
		28.012083, 38.081284, 32.522671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895823, 37.322456, 31.954472>,  <27.408720, 37.750462, 32.394184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.895823, 37.322456, 31.954472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130154, 37.518696, 32.212502>,  <28.270752, 37.636440, 32.367321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.130154, 37.518696, 32.212502>,  <27.895823, 37.322456, 31.954472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.130154, 37.518696, 32.212502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559891, -0.820473, 0.115527,
		0.585944, 0.293493, -0.755335,
		0.585826, 0.490598, 0.645075,
		28.305901, 37.665874, 32.406025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593777, 37.251526, 31.706085>,  <27.895823, 37.322456, 31.954472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593777, 37.251526, 31.706085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581121, 37.301258, 32.102779>,  <28.573528, 37.331097, 32.340797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581121, 37.301258, 32.102779>,  <28.593777, 37.251526, 31.706085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581121, 37.301258, 32.102779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542003, -0.831542, 0.121537,
		0.839781, 0.541369, -0.041079,
		-0.031637, 0.124329, 0.991737,
		28.571630, 37.338558, 32.400299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.202478, 37.130501, 32.188931>,  <28.593777, 37.251526, 31.706085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.202478, 37.130501, 32.188931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896706, 37.090851, 32.443748>,  <28.713242, 37.067062, 32.596638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896706, 37.090851, 32.443748>,  <29.202478, 37.130501, 32.188931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896706, 37.090851, 32.443748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461328, -0.774343, 0.433093,
		0.450359, 0.624954, 0.637660,
		-0.764430, -0.099123, 0.637041,
		28.667377, 37.061115, 32.634861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418045, 37.155930, 32.933525>,  <29.202478, 37.130501, 32.188931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418045, 37.155930, 32.933525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082655, 36.949512, 32.863495>,  <28.881420, 36.825661, 32.821476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.082655, 36.949512, 32.863495>,  <29.418045, 37.155930, 32.933525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082655, 36.949512, 32.863495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422003, -0.818168, 0.390532,
		-0.344775, 0.253569, 0.903788,
		-0.838477, -0.516047, -0.175077,
		28.831112, 36.794697, 32.810970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121330, 36.777966, 33.569489>,  <29.418045, 37.155930, 32.933525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.121330, 36.777966, 33.569489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035671, 36.588455, 33.227802>,  <28.984276, 36.474751, 33.022789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035671, 36.588455, 33.227802>,  <29.121330, 36.777966, 33.569489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035671, 36.588455, 33.227802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429062, -0.831243, 0.353469,
		-0.877523, -0.290817, 0.381285,
		-0.214146, -0.473772, -0.854214,
		28.971428, 36.446323, 32.971539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175970, 36.085617, 33.558575>,  <29.121330, 36.777966, 33.569489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175970, 36.085617, 33.558575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365919, 36.231201, 33.879082>,  <29.479889, 36.318550, 34.071384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365919, 36.231201, 33.879082>,  <29.175970, 36.085617, 33.558575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365919, 36.231201, 33.879082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046219, -0.898905, 0.435699,
		0.878841, -0.243935, -0.410043,
		0.474872, 0.363958, 0.801269,
		29.508381, 36.340389, 34.119461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.831156, 35.715240, 33.577339>,  <29.175970, 36.085617, 33.558575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.831156, 35.715240, 33.577339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681681, 35.851940, 33.922260>,  <29.591995, 35.933960, 34.129211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681681, 35.851940, 33.922260>,  <29.831156, 35.715240, 33.577339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681681, 35.851940, 33.922260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124961, -0.902628, 0.411883,
		0.919099, 0.261669, 0.294594,
		-0.373686, 0.341749, 0.862303,
		29.569574, 35.954464, 34.180950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254328, 35.634010, 34.211193>,  <29.831156, 35.715240, 33.577339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254328, 35.634010, 34.211193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864820, 35.576374, 34.281631>,  <29.631115, 35.541790, 34.323895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864820, 35.576374, 34.281631>,  <30.254328, 35.634010, 34.211193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864820, 35.576374, 34.281631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206235, -0.885883, 0.415545,
		0.096120, 0.440962, 0.892364,
		-0.973770, -0.144095, 0.176093,
		29.572689, 35.533146, 34.334461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952219, 36.183109, 34.688126>,  <30.254328, 35.634010, 34.211193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952219, 36.183109, 34.688126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.202656, 36.494976, 34.683495>,  <30.352917, 36.682095, 34.680717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.202656, 36.494976, 34.683495>,  <29.952219, 36.183109, 34.688126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202656, 36.494976, 34.683495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125456, 0.115372, 0.985368,
		0.769592, -0.615478, 0.170047,
		0.626091, 0.779665, -0.011574,
		30.390484, 36.728874, 34.680023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408838, 36.018944, 35.279274>,  <29.952219, 36.183109, 34.688126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408838, 36.018944, 35.279274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433083, 36.403214, 35.170887>,  <30.447630, 36.633778, 35.105854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.433083, 36.403214, 35.170887>,  <30.408838, 36.018944, 35.279274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433083, 36.403214, 35.170887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029280, 0.269643, 0.962515,
		0.997732, -0.066273, -0.011785,
		0.060611, 0.960677, -0.270972,
		30.451265, 36.691418, 35.089596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904007, 36.510460, 35.730072>,  <30.408838, 36.018944, 35.279274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904007, 36.510460, 35.730072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.635128, 36.745754, 35.550236>,  <30.473801, 36.886932, 35.442333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.635128, 36.745754, 35.550236>,  <30.904007, 36.510460, 35.730072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635128, 36.745754, 35.550236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239271, 0.402061, 0.883796,
		0.700642, 0.701659, -0.129516,
		-0.672198, 0.588236, -0.449588,
		30.433468, 36.922226, 35.415359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372536, 36.027199, 35.887524>,  <30.904007, 36.510460, 35.730072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372536, 36.027199, 35.887524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643236, 35.842571, 35.658104>,  <31.805656, 35.731792, 35.520454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643236, 35.842571, 35.658104>,  <31.372536, 36.027199, 35.887524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643236, 35.842571, 35.658104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735531, 0.457366, 0.499811,
		0.031622, -0.760110, 0.649025,
		0.676753, -0.461573, -0.573546,
		31.846262, 35.704098, 35.486038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915396, 35.573921, 36.183990>,  <31.372536, 36.027199, 35.887524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915396, 35.573921, 36.183990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101383, 35.739075, 35.870728>,  <32.212975, 35.838169, 35.682770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101383, 35.739075, 35.870728>,  <31.915396, 35.573921, 36.183990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101383, 35.739075, 35.870728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744571, 0.296210, 0.598226,
		0.478977, -0.861269, -0.169695,
		0.464968, 0.412886, -0.783154,
		32.240875, 35.862942, 35.635780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579720, 35.337440, 36.010132>,  <31.915396, 35.573921, 36.183990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579720, 35.337440, 36.010132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552849, 35.727036, 35.923557>,  <32.536724, 35.960793, 35.871613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552849, 35.727036, 35.923557>,  <32.579720, 35.337440, 36.010132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552849, 35.727036, 35.923557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731007, 0.195686, 0.653709,
		0.679055, -0.114299, -0.725135,
		-0.067180, 0.973983, -0.216435,
		32.532696, 36.019230, 35.858627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271286, 35.622669, 35.956490>,  <32.579720, 35.337440, 36.010132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271286, 35.622669, 35.956490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061466, 35.953930, 36.035496>,  <32.935574, 36.152687, 36.082901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061466, 35.953930, 36.035496>,  <33.271286, 35.622669, 35.956490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061466, 35.953930, 36.035496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763639, 0.355072, 0.539240,
		0.376439, 0.433690, -0.818661,
		-0.524547, 0.828153, 0.197520,
		32.904102, 36.202377, 36.094753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657665, 36.278584, 35.815437>,  <33.271286, 35.622669, 35.956490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657665, 36.278584, 35.815437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370964, 36.360893, 36.081947>,  <33.198944, 36.410278, 36.241852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370964, 36.360893, 36.081947>,  <33.657665, 36.278584, 35.815437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370964, 36.360893, 36.081947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695214, 0.285197, 0.659804,
		-0.054248, 0.936119, -0.347473,
		-0.716753, 0.205775, 0.666274,
		33.155937, 36.422626, 36.281830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728851, 37.002941, 36.062981>,  <33.657665, 36.278584, 35.815437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728851, 37.002941, 36.062981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552620, 36.788177, 36.350761>,  <33.446880, 36.659321, 36.523430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552620, 36.788177, 36.350761>,  <33.728851, 37.002941, 36.062981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552620, 36.788177, 36.350761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804464, 0.119544, 0.581847,
		-0.398406, 0.835127, 0.379257,
		-0.440578, -0.536910, 0.719457,
		33.420448, 36.627106, 36.566597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726189, 37.433968, 36.753494>,  <33.728851, 37.002941, 36.062981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726189, 37.433968, 36.753494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767807, 37.036144, 36.755905>,  <33.792778, 36.797451, 36.757351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767807, 37.036144, 36.755905>,  <33.726189, 37.433968, 36.753494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767807, 37.036144, 36.755905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892699, 0.096059, 0.440297,
		-0.438478, -0.040433, 0.897832,
		0.104047, -0.994554, 0.006025,
		33.799023, 36.737778, 36.757713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760918, 37.162193, 37.369545>,  <33.726189, 37.433968, 36.753494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760918, 37.162193, 37.369545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984062, 36.967442, 37.100700>,  <34.117950, 36.850590, 36.939392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984062, 36.967442, 37.100700>,  <33.760918, 37.162193, 37.369545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984062, 36.967442, 37.100700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829602, 0.350067, 0.434987,
		0.023496, -0.800249, 0.599207,
		0.557861, -0.486883, -0.672113,
		34.151421, 36.821377, 36.899067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075947, 36.759895, 37.298943>,  <33.760918, 37.162193, 37.369545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075947, 36.759895, 37.298943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185822, 36.877838, 36.932861>,  <33.251747, 36.948605, 36.713211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185822, 36.877838, 36.932861>,  <33.075947, 36.759895, 37.298943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185822, 36.877838, 36.932861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704560, -0.585992, -0.400260,
		-0.654324, 0.754766, 0.046779,
		0.274691, 0.294859, -0.915207,
		33.268230, 36.966297, 36.658298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485695, 37.162407, 36.846600>,  <33.075947, 36.759895, 37.298943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485695, 37.162407, 36.846600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744926, 36.981941, 36.601181>,  <32.900467, 36.873661, 36.453930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744926, 36.981941, 36.601181>,  <32.485695, 37.162407, 36.846600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744926, 36.981941, 36.601181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758866, -0.450396, -0.470389,
		-0.064119, 0.770453, -0.634264,
		0.648083, -0.451160, -0.613550,
		32.939350, 36.846592, 36.417118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145802, 37.214821, 36.251076>,  <32.485695, 37.162407, 36.846600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145802, 37.214821, 36.251076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395535, 36.911400, 36.176445>,  <32.545376, 36.729347, 36.131664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395535, 36.911400, 36.176445>,  <32.145802, 37.214821, 36.251076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395535, 36.911400, 36.176445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598459, -0.310958, -0.738344,
		0.502052, 0.572632, -0.648102,
		0.624333, -0.758550, -0.186580,
		32.582832, 36.683834, 36.120472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349842, 37.249233, 35.533249>,  <32.145802, 37.214821, 36.251076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349842, 37.249233, 35.533249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401623, 36.866123, 35.635933>,  <32.432693, 36.636257, 35.697544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401623, 36.866123, 35.635933>,  <32.349842, 37.249233, 35.533249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401623, 36.866123, 35.635933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617493, -0.280433, -0.734888,
		0.775851, -0.063385, -0.627725,
		0.129454, -0.957779, 0.256714,
		32.440460, 36.578789, 35.712948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547329, 36.916496, 34.976089>,  <32.349842, 37.249233, 35.533249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547329, 36.916496, 34.976089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393661, 36.624081, 35.201653>,  <32.301460, 36.448631, 35.336990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393661, 36.624081, 35.201653>,  <32.547329, 36.916496, 34.976089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393661, 36.624081, 35.201653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388265, -0.426225, -0.817057,
		0.837655, -0.532834, -0.120096,
		-0.384168, -0.731041, 0.563910,
		32.278412, 36.404770, 35.370827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724125, 36.242397, 34.615200>,  <32.547329, 36.916496, 34.976089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724125, 36.242397, 34.615200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394955, 36.220718, 34.841427>,  <32.197453, 36.207710, 34.977161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394955, 36.220718, 34.841427>,  <32.724125, 36.242397, 34.615200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394955, 36.220718, 34.841427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509586, -0.369777, -0.776908,
		0.251238, -0.927539, 0.276680,
		-0.822922, -0.054196, 0.565563,
		32.148079, 36.204460, 35.011097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335751, 35.742722, 34.532841>,  <32.724125, 36.242397, 34.615200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335751, 35.742722, 34.532841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593304, 35.921986, 34.284782>,  <33.747833, 36.029545, 34.135948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593304, 35.921986, 34.284782>,  <33.335751, 35.742722, 34.532841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593304, 35.921986, 34.284782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400829, -0.492815, -0.772314,
		-0.651734, 0.745847, -0.137678,
		0.643878, 0.448158, -0.620141,
		33.786469, 36.056435, 34.098740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940487, 35.911629, 33.861977>,  <33.335751, 35.742722, 34.532841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940487, 35.911629, 33.861977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333523, 35.858288, 33.810242>,  <33.569344, 35.826283, 33.779202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333523, 35.858288, 33.810242>,  <32.940487, 35.911629, 33.861977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333523, 35.858288, 33.810242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175773, -0.442109, -0.879570,
		0.060110, 0.886993, -0.457853,
		0.982594, -0.133349, -0.129335,
		33.628300, 35.818283, 33.771442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101204, 36.206219, 33.125149>,  <32.940487, 35.911629, 33.861977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101204, 36.206219, 33.125149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412563, 35.972530, 33.217037>,  <33.599380, 35.832317, 33.272171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412563, 35.972530, 33.217037>,  <33.101204, 36.206219, 33.125149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412563, 35.972530, 33.217037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025739, -0.395333, -0.918177,
		0.627239, 0.708797, -0.322765,
		0.778401, -0.584224, 0.229725,
		33.646084, 35.797264, 33.285954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385017, 36.125294, 32.469303>,  <33.101204, 36.206219, 33.125149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385017, 36.125294, 32.469303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573818, 35.846405, 32.685112>,  <33.687099, 35.679070, 32.814598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573818, 35.846405, 32.685112>,  <33.385017, 36.125294, 32.469303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573818, 35.846405, 32.685112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076418, -0.577325, -0.812930,
		0.878277, 0.424937, -0.219220,
		0.472005, -0.697226, 0.539525,
		33.715420, 35.637238, 32.846970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062336, 35.985844, 32.196922>,  <33.385017, 36.125294, 32.469303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062336, 35.985844, 32.196922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927658, 35.663750, 32.392159>,  <33.846851, 35.470493, 32.509300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927658, 35.663750, 32.392159>,  <34.062336, 35.985844, 32.196922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927658, 35.663750, 32.392159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073034, -0.539131, -0.839049,
		0.938777, -0.246856, 0.240332,
		-0.336695, -0.805233, 0.488095,
		33.826649, 35.422180, 32.538586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516853, 35.369926, 32.156887>,  <34.062336, 35.985844, 32.196922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516853, 35.369926, 32.156887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154785, 35.211941, 32.219723>,  <33.937546, 35.117149, 32.257423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154785, 35.211941, 32.219723>,  <34.516853, 35.369926, 32.156887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154785, 35.211941, 32.219723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125747, -0.601854, -0.788644,
		0.406029, -0.694102, 0.594444,
		-0.905168, -0.394961, 0.157089,
		33.883236, 35.093452, 32.266850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503075, 34.745766, 31.782019>,  <34.516853, 35.369926, 32.156887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503075, 34.745766, 31.782019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113567, 34.749653, 31.872953>,  <33.879864, 34.751984, 31.927513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113567, 34.749653, 31.872953>,  <34.503075, 34.745766, 31.782019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113567, 34.749653, 31.872953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189609, -0.586976, -0.787088,
		0.125794, -0.809546, 0.573421,
		-0.973768, 0.009715, 0.227335,
		33.821438, 34.752567, 31.941154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306751, 34.113476, 31.931017>,  <34.503075, 34.745766, 31.782019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306751, 34.113476, 31.931017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948990, 34.264694, 31.835415>,  <33.734333, 34.355423, 31.778053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.948990, 34.264694, 31.835415>,  <34.306751, 34.113476, 31.931017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948990, 34.264694, 31.835415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138473, -0.742180, -0.655739,
		-0.425283, -0.553400, 0.716158,
		-0.894405, 0.378043, -0.239006,
		33.680668, 34.378109, 31.763714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816963, 33.571156, 31.912880>,  <34.306751, 34.113476, 31.931017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816963, 33.571156, 31.912880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621456, 33.855190, 31.710146>,  <33.504150, 34.025612, 31.588507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621456, 33.855190, 31.710146>,  <33.816963, 33.571156, 31.912880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621456, 33.855190, 31.710146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314707, -0.685349, -0.656701,
		-0.813672, -0.161472, 0.558448,
		-0.488771, 0.710087, -0.506834,
		33.474823, 34.068214, 31.558096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314075, 33.256454, 31.646196>,  <33.816963, 33.571156, 31.912880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314075, 33.256454, 31.646196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336460, 33.589367, 31.425591>,  <33.349892, 33.789116, 31.293226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336460, 33.589367, 31.425591>,  <33.314075, 33.256454, 31.646196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336460, 33.589367, 31.425591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328030, -0.506393, -0.797473,
		-0.943008, 0.225541, 0.244677,
		0.055960, 0.832285, -0.551517,
		33.353249, 33.839054, 31.260136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718094, 33.184376, 31.251099>,  <33.314075, 33.256454, 31.646196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718094, 33.184376, 31.251099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944771, 33.445438, 31.049940>,  <33.080776, 33.602077, 30.929245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.944771, 33.445438, 31.049940>,  <32.718094, 33.184376, 31.251099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944771, 33.445438, 31.049940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463983, -0.251596, -0.849364,
		-0.680868, 0.714661, 0.160244,
		0.566691, 0.652655, -0.502895,
		33.114777, 33.641235, 30.899073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239254, 33.675140, 30.835180>,  <32.718094, 33.184376, 31.251099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239254, 33.675140, 30.835180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610603, 33.683121, 30.686739>,  <32.833412, 33.687908, 30.597673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610603, 33.683121, 30.686739>,  <32.239254, 33.675140, 30.835180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610603, 33.683121, 30.686739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369004, -0.069263, -0.926843,
		-0.044195, 0.997399, -0.056940,
		0.928376, 0.019950, -0.371106,
		32.889114, 33.689106, 30.575407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054245, 34.077042, 30.326435>,  <32.239254, 33.675140, 30.835180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054245, 34.077042, 30.326435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405533, 33.923107, 30.212852>,  <32.616306, 33.830746, 30.144703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405533, 33.923107, 30.212852>,  <32.054245, 34.077042, 30.326435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405533, 33.923107, 30.212852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359710, -0.140230, -0.922467,
		0.315179, 0.912271, -0.261581,
		0.878220, -0.384835, -0.283955,
		32.668999, 33.807655, 30.127666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289085, 34.421986, 29.666378>,  <32.054245, 34.077042, 30.326435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289085, 34.421986, 29.666378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549404, 34.118286, 29.667143>,  <32.705597, 33.936066, 29.667603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549404, 34.118286, 29.667143>,  <32.289085, 34.421986, 29.666378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549404, 34.118286, 29.667143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039766, -0.036601, -0.998538,
		0.758206, 0.649774, -0.054012,
		0.650801, -0.759246, 0.001912,
		32.744644, 33.890511, 29.667717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741310, 34.527985, 29.176905>,  <32.289085, 34.421986, 29.666378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741310, 34.527985, 29.176905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734539, 34.130589, 29.221975>,  <32.730476, 33.892151, 29.249018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734539, 34.130589, 29.221975>,  <32.741310, 34.527985, 29.176905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734539, 34.130589, 29.221975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125776, -0.109679, -0.985977,
		0.991914, -0.030866, -0.123100,
		-0.016931, -0.993488, 0.112674,
		32.729458, 33.832542, 29.255777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297951, 34.273113, 28.763983>,  <32.741310, 34.527985, 29.176905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297951, 34.273113, 28.763983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068264, 33.948429, 28.806694>,  <32.930450, 33.753620, 28.832321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.068264, 33.948429, 28.806694>,  <33.297951, 34.273113, 28.763983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068264, 33.948429, 28.806694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065911, -0.175835, -0.982211,
		0.816043, -0.556968, 0.154468,
		-0.574221, -0.811707, 0.106779,
		32.895996, 33.704918, 28.838728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566055, 33.846798, 28.296427>,  <33.297951, 34.273113, 28.763983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566055, 33.846798, 28.296427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196716, 33.705788, 28.357298>,  <32.975113, 33.621181, 28.393820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196716, 33.705788, 28.357298>,  <33.566055, 33.846798, 28.296427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196716, 33.705788, 28.357298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087486, -0.192752, -0.977340,
		0.373867, -0.915737, 0.147136,
		-0.923347, -0.352523, 0.152178,
		32.919712, 33.600033, 28.402950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559200, 33.379253, 27.667395>,  <33.566055, 33.846798, 28.296427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559200, 33.379253, 27.667395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186718, 33.448402, 27.795755>,  <32.963230, 33.489891, 27.872772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186718, 33.448402, 27.795755>,  <33.559200, 33.379253, 27.667395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186718, 33.448402, 27.795755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353655, -0.215343, -0.910250,
		-0.088249, -0.961116, 0.261664,
		-0.931204, 0.172867, 0.320900,
		32.907356, 33.500263, 27.892025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173634, 32.858128, 27.300962>,  <33.559200, 33.379253, 27.667395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173634, 32.858128, 27.300962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889706, 33.113361, 27.420292>,  <32.719349, 33.266502, 27.491890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889706, 33.113361, 27.420292>,  <33.173634, 32.858128, 27.300962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889706, 33.113361, 27.420292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420105, -0.043556, -0.906430,
		-0.565387, -0.768732, 0.298980,
		-0.709824, 0.638087, 0.298322,
		32.676758, 33.304787, 27.509789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539806, 32.533672, 27.204485>,  <33.173634, 32.858128, 27.300962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539806, 32.533672, 27.204485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457439, 32.924522, 27.225739>,  <32.408020, 33.159031, 27.238491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457439, 32.924522, 27.225739>,  <32.539806, 32.533672, 27.204485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457439, 32.924522, 27.225739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534351, -0.066787, -0.842620,
		-0.819797, -0.201899, 0.535881,
		-0.205914, 0.977126, 0.053133,
		32.395664, 33.217659, 27.241678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836336, 32.604027, 27.157074>,  <32.539806, 32.533672, 27.204485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836336, 32.604027, 27.157074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992266, 32.954365, 27.043278>,  <32.085823, 33.164566, 26.975000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992266, 32.954365, 27.043278>,  <31.836336, 32.604027, 27.157074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992266, 32.954365, 27.043278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491103, -0.063613, -0.868776,
		-0.779008, 0.478386, 0.405331,
		0.389826, 0.875843, -0.284492,
		32.109215, 33.217117, 26.957930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252981, 32.929832, 26.706535>,  <31.836336, 32.604027, 27.157074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252981, 32.929832, 26.706535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580227, 33.138126, 26.608942>,  <31.776575, 33.263103, 26.550386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580227, 33.138126, 26.608942>,  <31.252981, 32.929832, 26.706535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580227, 33.138126, 26.608942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330029, 0.077720, -0.940766,
		-0.470924, 0.850176, 0.235440,
		0.818115, 0.520731, -0.243983,
		31.825661, 33.294346, 26.535748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988230, 33.422077, 26.206421>,  <31.252981, 32.929832, 26.706535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988230, 33.422077, 26.206421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386721, 33.414879, 26.172462>,  <31.625814, 33.410561, 26.152086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386721, 33.414879, 26.172462>,  <30.988230, 33.422077, 26.206421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386721, 33.414879, 26.172462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085845, -0.060821, -0.994450,
		0.012729, 0.997986, -0.062136,
		0.996227, -0.017993, -0.084898,
		31.685589, 33.409481, 26.146994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215128, 33.920143, 25.797148>,  <30.988230, 33.422077, 26.206421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215128, 33.920143, 25.797148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512033, 33.652794, 25.777861>,  <31.690178, 33.492386, 25.766289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512033, 33.652794, 25.777861>,  <31.215128, 33.920143, 25.797148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512033, 33.652794, 25.777861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042563, 0.024788, -0.998786,
		0.668753, 0.743417, -0.010048,
		0.742266, -0.668369, -0.048219,
		31.734713, 33.452282, 25.763395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727741, 34.182461, 25.224201>,  <31.215128, 33.920143, 25.797148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727741, 34.182461, 25.224201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782167, 33.787544, 25.257025>,  <31.814823, 33.550594, 25.276718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782167, 33.787544, 25.257025>,  <31.727741, 34.182461, 25.224201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782167, 33.787544, 25.257025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028249, -0.086661, -0.995837,
		0.990297, 0.133183, -0.039682,
		0.136067, -0.987295, 0.082058,
		31.822987, 33.491356, 25.281643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176365, 34.034092, 24.752388>,  <31.727741, 34.182461, 25.224201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176365, 34.034092, 24.752388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989634, 33.690449, 24.836298>,  <31.877596, 33.484264, 24.886644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989634, 33.690449, 24.836298>,  <32.176365, 34.034092, 24.752388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989634, 33.690449, 24.836298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027831, -0.222821, -0.974462,
		0.883912, -0.460741, 0.080109,
		-0.466824, -0.859109, 0.209777,
		31.849586, 33.432716, 24.899231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567581, 33.455109, 24.477100>,  <32.176365, 34.034092, 24.752388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567581, 33.455109, 24.477100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185207, 33.343113, 24.512417>,  <31.955782, 33.275917, 24.533607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185207, 33.343113, 24.512417>,  <32.567581, 33.455109, 24.477100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185207, 33.343113, 24.512417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058993, -0.111411, -0.992022,
		0.287589, -0.953517, 0.089984,
		-0.955936, -0.279986, 0.088291,
		31.898426, 33.259117, 24.538904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471684, 32.956463, 23.975271>,  <32.567581, 33.455109, 24.477100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471684, 32.956463, 23.975271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086777, 33.030212, 24.055319>,  <31.855833, 33.074463, 24.103348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.086777, 33.030212, 24.055319>,  <32.471684, 32.956463, 23.975271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086777, 33.030212, 24.055319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251684, -0.323564, -0.912119,
		-0.103416, -0.928070, 0.357758,
		-0.962268, 0.184369, 0.200119,
		31.798096, 33.085522, 24.115355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181667, 32.404743, 23.586403>,  <32.471684, 32.956463, 23.975271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181667, 32.404743, 23.586403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869659, 32.625450, 23.704470>,  <31.682455, 32.757874, 23.775311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869659, 32.625450, 23.704470>,  <32.181667, 32.404743, 23.586403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869659, 32.625450, 23.704470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403732, -0.083370, -0.911071,
		-0.478089, -0.829822, 0.287796,
		-0.780020, 0.551766, 0.295167,
		31.635653, 32.790981, 23.793020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665844, 32.046520, 23.334291>,  <32.181667, 32.404743, 23.586403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665844, 32.046520, 23.334291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516756, 32.411625, 23.401165>,  <31.427303, 32.630688, 23.441290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516756, 32.411625, 23.401165>,  <31.665844, 32.046520, 23.334291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516756, 32.411625, 23.401165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407099, 0.001063, -0.913383,
		-0.833876, -0.408498, 0.371187,
		-0.372721, 0.912759, 0.167185,
		31.404940, 32.685452, 23.451321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984495, 32.041527, 23.109451>,  <31.665844, 32.046520, 23.334291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984495, 32.041527, 23.109451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088352, 32.427200, 23.087805>,  <31.150667, 32.658604, 23.074816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088352, 32.427200, 23.087805>,  <30.984495, 32.041527, 23.109451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088352, 32.427200, 23.087805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297382, 0.026514, -0.954390,
		-0.918776, 0.263895, 0.293617,
		0.259644, 0.964187, -0.054117,
		31.166245, 32.716457, 23.071569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280724, 32.405918, 22.936083>,  <30.984495, 32.041527, 23.109451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280724, 32.405918, 22.936083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601950, 32.615734, 22.822987>,  <30.794685, 32.741623, 22.755129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601950, 32.615734, 22.822987>,  <30.280724, 32.405918, 22.936083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601950, 32.615734, 22.822987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357446, 0.044400, -0.932878,
		-0.476776, 0.850228, 0.223150,
		0.803067, 0.524538, -0.282742,
		30.842871, 32.773094, 22.738165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006474, 32.927238, 22.416775>,  <30.280724, 32.405918, 22.936083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006474, 32.927238, 22.416775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403870, 32.930325, 22.371315>,  <30.642307, 32.932175, 22.344040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403870, 32.930325, 22.371315>,  <30.006474, 32.927238, 22.416775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.403870, 32.930325, 22.371315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113662, 0.001237, -0.993519,
		-0.007526, 0.999969, 0.002106,
		0.993491, 0.007717, -0.113650,
		30.701918, 32.932640, 22.337219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134720, 33.525879, 21.921270>,  <30.006474, 32.927238, 22.416775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134720, 33.525879, 21.921270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450399, 33.280235, 21.918749>,  <30.639807, 33.132851, 21.917236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450399, 33.280235, 21.918749>,  <30.134720, 33.525879, 21.921270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450399, 33.280235, 21.918749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023164, 0.040024, -0.998930,
		0.613702, 0.788208, 0.045812,
		0.789198, -0.614107, -0.006305,
		30.687159, 33.096004, 21.916857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625191, 33.855762, 21.463995>,  <30.134720, 33.525879, 21.921270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625191, 33.855762, 21.463995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683723, 33.460976, 21.490770>,  <30.718843, 33.224102, 21.506836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683723, 33.460976, 21.490770>,  <30.625191, 33.855762, 21.463995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683723, 33.460976, 21.490770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032585, -0.062822, -0.997493,
		0.988699, 0.148144, 0.022967,
		0.146330, -0.986969, 0.066939,
		30.727623, 33.164886, 21.510853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257090, 33.600136, 21.118092>,  <30.625191, 33.855762, 21.463995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257090, 33.600136, 21.118092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018717, 33.278961, 21.123219>,  <30.875694, 33.086258, 21.126295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018717, 33.278961, 21.123219>,  <31.257090, 33.600136, 21.118092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018717, 33.278961, 21.123219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070656, -0.068323, -0.995158,
		0.799922, -0.592139, 0.097448,
		-0.595930, -0.802934, 0.012815,
		30.839937, 33.038082, 21.127064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573231, 33.100121, 20.703888>,  <31.257090, 33.600136, 21.118092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573231, 33.100121, 20.703888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176249, 33.051487, 20.710169>,  <30.938059, 33.022308, 20.713938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176249, 33.051487, 20.710169>,  <31.573231, 33.100121, 20.703888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176249, 33.051487, 20.710169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039936, 0.199540, -0.979075,
		0.115902, -0.972318, -0.202890,
		-0.992458, -0.121580, 0.015703,
		30.878511, 33.015011, 20.714880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331905, 32.593243, 20.130297>,  <31.573231, 33.100121, 20.703888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331905, 32.593243, 20.130297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051098, 32.862530, 20.223206>,  <30.882612, 33.024101, 20.278952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.051098, 32.862530, 20.223206>,  <31.331905, 32.593243, 20.130297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051098, 32.862530, 20.223206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004255, 0.322181, -0.946668,
		-0.712144, -0.665568, -0.223313,
		-0.702020, 0.673214, 0.232272,
		30.840492, 33.064495, 20.292887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264452, 32.872398, 19.542097>,  <31.331905, 32.593243, 20.130297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264452, 32.872398, 19.542097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035965, 33.135761, 19.738140>,  <30.898872, 33.293781, 19.855766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.035965, 33.135761, 19.738140>,  <31.264452, 32.872398, 19.542097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.035965, 33.135761, 19.738140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146819, 0.505521, -0.850231,
		-0.807562, -0.557623, -0.192095,
		-0.571217, 0.658411, 0.490109,
		30.864599, 33.333286, 19.885172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615002, 32.979630, 19.069731>,  <31.264452, 32.872398, 19.542097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615002, 32.979630, 19.069731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.599417, 33.283520, 19.329361>,  <30.590065, 33.465855, 19.485140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.599417, 33.283520, 19.329361>,  <30.615002, 32.979630, 19.069731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599417, 33.283520, 19.329361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195131, 0.631277, -0.750608,
		-0.980003, -0.155902, 0.123649,
		-0.038964, 0.759726, 0.649075,
		30.587727, 33.511436, 19.524084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059978, 33.384533, 18.901459>,  <30.615002, 32.979630, 19.069731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059978, 33.384533, 18.901459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289507, 33.644833, 19.100357>,  <30.427225, 33.801010, 19.219696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289507, 33.644833, 19.100357>,  <30.059978, 33.384533, 18.901459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289507, 33.644833, 19.100357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089645, 0.653415, -0.751673,
		-0.814058, 0.386752, 0.433281,
		0.573823, 0.650747, 0.497248,
		30.461655, 33.840057, 19.249531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677269, 34.004715, 19.003195>,  <30.059978, 33.384533, 18.901459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677269, 34.004715, 19.003195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070175, 34.079453, 19.009411>,  <30.305920, 34.124294, 19.013140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.070175, 34.079453, 19.009411>,  <29.677269, 34.004715, 19.003195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070175, 34.079453, 19.009411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117882, 0.679904, -0.723764,
		-0.145800, 0.709097, 0.689872,
		0.982266, 0.186848, 0.015541,
		30.364855, 34.135506, 19.014072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653860, 34.790791, 19.191135>,  <29.677269, 34.004715, 19.003195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653860, 34.790791, 19.191135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995640, 34.692062, 19.008270>,  <30.200706, 34.632824, 18.898552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995640, 34.692062, 19.008270>,  <29.653860, 34.790791, 19.191135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995640, 34.692062, 19.008270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075117, 0.812002, -0.578800,
		0.514078, 0.528895, 0.675273,
		0.854448, -0.246824, -0.457162,
		30.251974, 34.618015, 18.871122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105162, 35.347836, 19.123308>,  <29.653860, 34.790791, 19.191135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105162, 35.347836, 19.123308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151636, 35.103939, 18.809692>,  <30.179520, 34.957600, 18.621523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151636, 35.103939, 18.809692>,  <30.105162, 35.347836, 19.123308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151636, 35.103939, 18.809692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268439, 0.740731, -0.615839,
		0.956264, 0.282018, -0.077616,
		0.116185, -0.609740, -0.784040,
		30.186491, 34.921017, 18.574480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479181, 35.761051, 18.610949>,  <30.105162, 35.347836, 19.123308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479181, 35.761051, 18.610949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304867, 35.463696, 18.407986>,  <30.200277, 35.285282, 18.286209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304867, 35.463696, 18.407986>,  <30.479181, 35.761051, 18.610949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304867, 35.463696, 18.407986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359860, 0.660641, -0.658828,
		0.824980, -0.104513, -0.555414,
		-0.435785, -0.743392, -0.507406,
		30.174131, 35.240677, 18.255764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642143, 35.955246, 19.255980>,  <30.479181, 35.761051, 18.610949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642143, 35.955246, 19.255980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684956, 36.198006, 19.570995>,  <30.710644, 36.343662, 19.760006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.684956, 36.198006, 19.570995>,  <30.642143, 35.955246, 19.255980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684956, 36.198006, 19.570995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374663, -0.758320, 0.533459,
		0.920963, 0.237965, -0.308546,
		0.107031, 0.606897, 0.787541,
		30.717066, 36.380074, 19.807257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071409, 36.388290, 19.099857>,  <30.642143, 35.955246, 19.255980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071409, 36.388290, 19.099857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283134, 36.676247, 18.920263>,  <30.410170, 36.849022, 18.812508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283134, 36.676247, 18.920263>,  <30.071409, 36.388290, 19.099857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283134, 36.676247, 18.920263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247591, -0.637226, -0.729823,
		-0.811497, 0.275140, -0.515529,
		0.529312, 0.719890, -0.448985,
		30.441929, 36.892212, 18.785568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943489, 36.388359, 18.361546>,  <30.071409, 36.388290, 19.099857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943489, 36.388359, 18.361546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300688, 36.565891, 18.391401>,  <30.515007, 36.672413, 18.409315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300688, 36.565891, 18.391401>,  <29.943489, 36.388359, 18.361546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300688, 36.565891, 18.391401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357877, -0.599681, -0.715756,
		-0.272916, 0.665879, -0.694350,
		0.892995, 0.443833, 0.074640,
		30.568586, 36.699039, 18.413794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144718, 36.681751, 17.703329>,  <29.943489, 36.388359, 18.361546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144718, 36.681751, 17.703329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467751, 36.594086, 17.922337>,  <30.661570, 36.541485, 18.053741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.467751, 36.594086, 17.922337>,  <30.144718, 36.681751, 17.703329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.467751, 36.594086, 17.922337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373886, -0.527707, -0.762715,
		0.456092, 0.820665, -0.344223,
		0.807582, -0.219168, 0.547518,
		30.710026, 36.528336, 18.086592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738361, 37.160156, 17.417223>,  <30.144718, 36.681751, 17.703329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.738361, 37.160156, 17.417223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789982, 36.783920, 17.542854>,  <30.820955, 36.558178, 17.618233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789982, 36.783920, 17.542854>,  <30.738361, 37.160156, 17.417223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789982, 36.783920, 17.542854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094027, -0.303691, -0.948120,
		0.987170, 0.151890, 0.049248,
		0.129053, -0.940586, 0.314076,
		30.828697, 36.501743, 17.637077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234198, 36.759842, 17.037127>,  <30.738361, 37.160156, 17.417223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234198, 36.759842, 17.037127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009634, 36.452530, 17.160133>,  <30.874895, 36.268143, 17.233938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009634, 36.452530, 17.160133>,  <31.234198, 36.759842, 17.037127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009634, 36.452530, 17.160133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208267, -0.490818, -0.846004,
		0.800902, -0.410909, 0.435557,
		-0.561410, -0.768278, 0.307519,
		30.841211, 36.222046, 17.252388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657833, 36.273579, 16.852268>,  <31.234198, 36.759842, 17.037127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657833, 36.273579, 16.852268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293053, 36.115986, 16.898087>,  <31.074184, 36.021431, 16.925577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293053, 36.115986, 16.898087>,  <31.657833, 36.273579, 16.852268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293053, 36.115986, 16.898087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268503, -0.784157, -0.559468,
		0.310245, -0.479451, 0.820899,
		-0.911951, -0.393986, 0.114546,
		31.019466, 35.997791, 16.932451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855873, 36.147038, 17.641470>,  <31.657833, 36.273579, 16.852268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855873, 36.147038, 17.641470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606989, 35.925621, 17.862900>,  <31.457659, 35.792770, 17.995758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606989, 35.925621, 17.862900>,  <31.855873, 36.147038, 17.641470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606989, 35.925621, 17.862900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573656, 0.158784, 0.803558,
		-0.532700, 0.817546, 0.218744,
		-0.622213, -0.553540, 0.553575,
		31.420324, 35.759560, 18.028973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.540285, 36.487938, 18.383808>,  <31.855873, 36.147038, 17.641470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.540285, 36.487938, 18.383808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649738, 36.103828, 18.361885>,  <31.715410, 35.873363, 18.348732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649738, 36.103828, 18.361885>,  <31.540285, 36.487938, 18.383808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649738, 36.103828, 18.361885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611719, 0.129774, 0.780358,
		-0.742242, -0.247059, 0.622927,
		0.273634, -0.960271, -0.054807,
		31.731829, 35.815746, 18.345444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564707, 36.211647, 19.061457>,  <31.540285, 36.487938, 18.383808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564707, 36.211647, 19.061457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787193, 35.947971, 18.859035>,  <31.920685, 35.789764, 18.737583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787193, 35.947971, 18.859035>,  <31.564707, 36.211647, 19.061457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787193, 35.947971, 18.859035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603864, -0.097764, 0.791070,
		-0.570939, -0.745595, 0.343682,
		0.556218, -0.659190, -0.506055,
		31.954058, 35.750214, 18.707218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822023, 35.854752, 19.549137>,  <31.564707, 36.211647, 19.061457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822023, 35.854752, 19.549137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066536, 35.764503, 19.245708>,  <32.213242, 35.710354, 19.063650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066536, 35.764503, 19.245708>,  <31.822023, 35.854752, 19.549137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066536, 35.764503, 19.245708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769870, -0.052602, 0.636029,
		-0.183402, -0.972795, 0.141542,
		0.611281, -0.225618, -0.758573,
		32.249920, 35.696819, 19.018137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103172, 35.193306, 19.670219>,  <31.822023, 35.854752, 19.549137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103172, 35.193306, 19.670219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333912, 35.393417, 19.411926>,  <32.472355, 35.513485, 19.256950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333912, 35.393417, 19.411926>,  <32.103172, 35.193306, 19.670219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333912, 35.393417, 19.411926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793913, -0.157336, 0.587323,
		0.192230, -0.851448, -0.487938,
		0.576845, 0.500281, -0.645731,
		32.506966, 35.543503, 19.218206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683491, 34.777321, 19.559868>,  <32.103172, 35.193306, 19.670219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683491, 34.777321, 19.559868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783958, 35.155914, 19.478786>,  <32.844238, 35.383068, 19.430138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783958, 35.155914, 19.478786>,  <32.683491, 34.777321, 19.559868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783958, 35.155914, 19.478786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790978, -0.079989, 0.606593,
		0.557915, -0.312691, -0.768736,
		0.251167, 0.946481, -0.202704,
		32.859310, 35.439857, 19.417974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449390, 34.828777, 19.629885>,  <32.683491, 34.777321, 19.559868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449390, 34.828777, 19.629885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322765, 35.207367, 19.604670>,  <33.246792, 35.434521, 19.589540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.322765, 35.207367, 19.604670>,  <33.449390, 34.828777, 19.629885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322765, 35.207367, 19.604670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682117, 0.273318, 0.678243,
		0.659170, 0.171705, -0.732129,
		-0.316562, 0.946475, -0.063040,
		33.227798, 35.491310, 19.585758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996655, 35.335293, 19.461168>,  <33.449390, 34.828777, 19.629885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996655, 35.335293, 19.461168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742722, 35.569832, 19.662437>,  <33.590363, 35.710556, 19.783199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742722, 35.569832, 19.662437>,  <33.996655, 35.335293, 19.461168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742722, 35.569832, 19.662437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685238, 0.126384, 0.717270,
		0.356975, 0.800142, -0.482019,
		-0.634837, 0.586345, 0.503172,
		33.552269, 35.745735, 19.813389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435223, 35.744675, 19.841026>,  <33.996655, 35.335293, 19.461168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435223, 35.744675, 19.841026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081142, 35.816319, 20.012768>,  <33.868694, 35.859303, 20.115812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081142, 35.816319, 20.012768>,  <34.435223, 35.744675, 19.841026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081142, 35.816319, 20.012768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465131, 0.358287, 0.809495,
		-0.008847, 0.916270, -0.400463,
		-0.885197, 0.179106, 0.429356,
		33.815582, 35.870052, 20.141575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514214, 36.285992, 20.130489>,  <34.435223, 35.744675, 19.841026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514214, 36.285992, 20.130489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212360, 36.115044, 20.329639>,  <34.031246, 36.012474, 20.449129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212360, 36.115044, 20.329639>,  <34.514214, 36.285992, 20.130489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212360, 36.115044, 20.329639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465035, 0.186945, 0.865329,
		-0.462888, 0.884539, 0.057664,
		-0.754637, -0.427366, 0.497876,
		33.985970, 35.986835, 20.479002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477646, 36.633301, 20.673899>,  <34.514214, 36.285992, 20.130489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477646, 36.633301, 20.673899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249958, 36.326969, 20.793560>,  <34.113346, 36.143169, 20.865356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249958, 36.326969, 20.793560>,  <34.477646, 36.633301, 20.673899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249958, 36.326969, 20.793560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283735, 0.158527, 0.945708,
		-0.771678, 0.623193, 0.127057,
		-0.569217, -0.765833, 0.299153,
		34.079193, 36.097218, 20.883307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251614, 36.832756, 21.224571>,  <34.477646, 36.633301, 20.673899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251614, 36.832756, 21.224571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205193, 36.436314, 21.250645>,  <34.177341, 36.198448, 21.266289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205193, 36.436314, 21.250645>,  <34.251614, 36.832756, 21.224571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205193, 36.436314, 21.250645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193824, 0.041766, 0.980147,
		-0.974148, 0.126379, 0.187253,
		-0.116049, -0.991103, 0.065182,
		34.170380, 36.138985, 21.270199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797398, 36.731010, 21.616085>,  <34.251614, 36.832756, 21.224571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797398, 36.731010, 21.616085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986202, 36.378414, 21.621557>,  <34.099483, 36.166859, 21.624840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986202, 36.378414, 21.621557>,  <33.797398, 36.731010, 21.616085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986202, 36.378414, 21.621557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019148, 0.025762, 0.999485,
		-0.881384, -0.471507, 0.029038,
		0.472012, -0.881486, 0.013678,
		34.127808, 36.113968, 21.625660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418362, 36.312855, 22.120174>,  <33.797398, 36.731010, 21.616085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418362, 36.312855, 22.120174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775902, 36.138889, 22.076567>,  <33.990425, 36.034508, 22.050402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.775902, 36.138889, 22.076567>,  <33.418362, 36.312855, 22.120174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775902, 36.138889, 22.076567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062804, -0.119308, 0.990869,
		-0.443954, -0.892531, -0.079329,
		0.893846, -0.434918, -0.109021,
		34.044056, 36.008415, 22.043859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373642, 35.765060, 22.615284>,  <33.418362, 36.312855, 22.120174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373642, 35.765060, 22.615284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763493, 35.827614, 22.551226>,  <33.997402, 35.865147, 22.512791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.763493, 35.827614, 22.551226>,  <33.373642, 35.765060, 22.615284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763493, 35.827614, 22.551226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182246, -0.139028, 0.973374,
		0.129958, -0.977862, -0.164001,
		0.974627, 0.156386, -0.160143,
		34.055882, 35.874531, 22.503183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673035, 35.434105, 23.100895>,  <33.373642, 35.765060, 22.615284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673035, 35.434105, 23.100895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944435, 35.704262, 22.985329>,  <34.107277, 35.866356, 22.915989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944435, 35.704262, 22.985329>,  <33.673035, 35.434105, 23.100895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944435, 35.704262, 22.985329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208449, 0.200117, 0.957341,
		0.704402, -0.709784, -0.005006,
		0.678504, 0.675396, -0.288916,
		34.147987, 35.906879, 22.898653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318657, 35.108589, 23.416212>,  <33.673035, 35.434105, 23.100895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318657, 35.108589, 23.416212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367558, 35.490917, 23.309280>,  <34.396896, 35.720314, 23.245121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367558, 35.490917, 23.309280>,  <34.318657, 35.108589, 23.416212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367558, 35.490917, 23.309280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279366, 0.225321, 0.933373,
		0.952370, -0.188787, -0.239478,
		0.122249, 0.955819, -0.267330,
		34.404232, 35.777664, 23.229082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.046947, 35.325500, 23.637934>,  <34.318657, 35.108589, 23.416212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.046947, 35.325500, 23.637934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860752, 35.677181, 23.597286>,  <34.749035, 35.888191, 23.572897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860752, 35.677181, 23.597286>,  <35.046947, 35.325500, 23.637934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860752, 35.677181, 23.597286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333247, 0.280479, 0.900154,
		0.819918, 0.385147, -0.423551,
		-0.465489, 0.879200, -0.101621,
		34.721104, 35.940941, 23.566799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539322, 35.833935, 23.852186>,  <35.046947, 35.325500, 23.637934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539322, 35.833935, 23.852186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185383, 36.018513, 23.877850>,  <34.973019, 36.129257, 23.893248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.185383, 36.018513, 23.877850>,  <35.539322, 35.833935, 23.852186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185383, 36.018513, 23.877850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253506, 0.361357, 0.897305,
		0.390869, 0.810243, -0.436724,
		-0.884848, 0.461441, 0.064158,
		34.919930, 36.156944, 23.897097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763203, 36.468712, 24.046757>,  <35.539322, 35.833935, 23.852186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763203, 36.468712, 24.046757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378326, 36.439571, 24.151741>,  <35.147400, 36.422089, 24.214731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378326, 36.439571, 24.151741>,  <35.763203, 36.468712, 24.046757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378326, 36.439571, 24.151741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183216, 0.539916, 0.821537,
		-0.201555, 0.838561, -0.506154,
		-0.962189, -0.072849, 0.262461,
		35.089668, 36.417717, 24.230478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477615, 37.131195, 24.469496>,  <35.763203, 36.468712, 24.046757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477615, 37.131195, 24.469496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220608, 36.835270, 24.549339>,  <35.066402, 36.657715, 24.597246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220608, 36.835270, 24.549339>,  <35.477615, 37.131195, 24.469496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220608, 36.835270, 24.549339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055680, 0.214730, 0.975085,
		-0.764245, 0.637624, -0.096775,
		-0.642518, -0.739815, 0.199609,
		35.027851, 36.613327, 24.609222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881485, 37.407162, 24.934860>,  <35.477615, 37.131195, 24.469496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881485, 37.407162, 24.934860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883972, 37.008316, 24.965145>,  <34.885464, 36.769009, 24.983316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883972, 37.008316, 24.965145>,  <34.881485, 37.407162, 24.934860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883972, 37.008316, 24.965145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045551, 0.075917, 0.996073,
		-0.998943, -0.002747, 0.045891,
		0.006220, -0.997110, 0.075712,
		34.885838, 36.709183, 24.987858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430531, 37.279480, 25.413715>,  <34.881485, 37.407162, 24.934860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430531, 37.279480, 25.413715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636089, 36.936367, 25.409479>,  <34.759426, 36.730499, 25.406939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636089, 36.936367, 25.409479>,  <34.430531, 37.279480, 25.413715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636089, 36.936367, 25.409479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162574, 0.085264, 0.983005,
		-0.842305, -0.506887, 0.183270,
		0.513899, -0.857785, -0.010588,
		34.790260, 36.679031, 25.406303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025944, 36.846874, 25.797899>,  <34.430531, 37.279480, 25.413715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025944, 36.846874, 25.797899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401356, 36.708828, 25.794611>,  <34.626602, 36.625999, 25.792639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401356, 36.708828, 25.794611>,  <34.025944, 36.846874, 25.797899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401356, 36.708828, 25.794611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025079, 0.044412, 0.998698,
		-0.344298, -0.937510, 0.050337,
		0.938526, -0.345113, -0.008221,
		34.682915, 36.605293, 25.792145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948654, 36.387928, 26.283342>,  <34.025944, 36.846874, 25.797899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948654, 36.387928, 26.283342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342171, 36.439175, 26.233156>,  <34.578281, 36.469921, 26.203045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.342171, 36.439175, 26.233156>,  <33.948654, 36.387928, 26.283342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342171, 36.439175, 26.233156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146167, -0.167639, 0.974952,
		0.103871, -0.977489, -0.183648,
		0.983792, 0.128113, -0.125464,
		34.637310, 36.477608, 26.195517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279560, 35.740391, 26.495195>,  <33.948654, 36.387928, 26.283342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279560, 35.740391, 26.495195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551689, 36.031544, 26.529497>,  <34.714966, 36.206234, 26.550077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551689, 36.031544, 26.529497>,  <34.279560, 35.740391, 26.495195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551689, 36.031544, 26.529497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203743, -0.300216, 0.931858,
		0.704028, -0.616488, -0.352544,
		0.680318, 0.727883, 0.085755,
		34.755783, 36.249908, 26.555223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859219, 35.429829, 26.955273>,  <34.279560, 35.740391, 26.495195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859219, 35.429829, 26.955273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965794, 35.814999, 26.972191>,  <35.029739, 36.046101, 26.982342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965794, 35.814999, 26.972191>,  <34.859219, 35.429829, 26.955273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965794, 35.814999, 26.972191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149546, -0.084648, 0.985125,
		0.952179, -0.256154, -0.166555,
		0.266442, 0.962923, 0.042293,
		35.045727, 36.103874, 26.984879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349892, 35.485367, 27.423319>,  <34.859219, 35.429829, 26.955273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349892, 35.485367, 27.423319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257431, 35.874523, 27.426258>,  <35.201954, 36.108017, 27.428020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257431, 35.874523, 27.426258>,  <35.349892, 35.485367, 27.423319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257431, 35.874523, 27.426258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081618, 0.011867, 0.996593,
		0.969487, 0.230968, -0.082148,
		-0.231156, 0.972889, 0.007346,
		35.188084, 36.166389, 27.428461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839394, 35.779243, 27.805439>,  <35.349892, 35.485367, 27.423319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839394, 35.779243, 27.805439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544605, 36.049400, 27.794735>,  <35.367733, 36.211494, 27.788313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544605, 36.049400, 27.794735>,  <35.839394, 35.779243, 27.805439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544605, 36.049400, 27.794735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041261, 0.084468, 0.995572,
		0.674662, 0.732605, -0.090118,
		-0.736973, 0.675392, -0.026759,
		35.323513, 36.252018, 27.786707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023449, 36.423237, 28.348263>,  <35.839394, 35.779243, 27.805439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023449, 36.423237, 28.348263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628639, 36.433445, 28.284859>,  <35.391754, 36.439571, 28.246817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628639, 36.433445, 28.284859>,  <36.023449, 36.423237, 28.348263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628639, 36.433445, 28.284859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146641, 0.258676, 0.954769,
		0.065372, 0.965627, -0.251577,
		-0.987027, 0.025523, -0.158511,
		35.332531, 36.441101, 28.237305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822002, 37.003414, 28.612259>,  <36.023449, 36.423237, 28.348263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822002, 37.003414, 28.612259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478104, 36.799793, 28.595730>,  <35.271767, 36.677620, 28.585814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478104, 36.799793, 28.595730>,  <35.822002, 37.003414, 28.612259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478104, 36.799793, 28.595730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170392, 0.209624, 0.962821,
		-0.481464, 0.834820, -0.266962,
		-0.859744, -0.509051, -0.041321,
		35.220181, 36.647079, 28.583334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318253, 37.543571, 28.839582>,  <35.822002, 37.003414, 28.612259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318253, 37.543571, 28.839582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166706, 37.180290, 28.910723>,  <35.075779, 36.962322, 28.953407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166706, 37.180290, 28.910723>,  <35.318253, 37.543571, 28.839582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166706, 37.180290, 28.910723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216142, 0.273699, 0.937215,
		-0.899859, 0.316635, -0.299995,
		-0.378863, -0.908202, 0.177852,
		35.053047, 36.907829, 28.964079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833153, 37.671532, 29.223639>,  <35.318253, 37.543571, 28.839582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833153, 37.671532, 29.223639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876797, 37.280586, 29.296144>,  <34.902985, 37.046021, 29.339649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876797, 37.280586, 29.296144>,  <34.833153, 37.671532, 29.223639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876797, 37.280586, 29.296144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024352, 0.179673, 0.983425,
		-0.993731, -0.111719, -0.004196,
		0.109113, -0.977362, 0.181267,
		34.909531, 36.987377, 29.350525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366608, 37.584774, 29.735678>,  <34.833153, 37.671532, 29.223639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366608, 37.584774, 29.735678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587414, 37.251350, 29.744282>,  <34.719898, 37.051296, 29.749445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587414, 37.251350, 29.744282>,  <34.366608, 37.584774, 29.735678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587414, 37.251350, 29.744282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125070, -0.057266, 0.990494,
		-0.824403, -0.549455, -0.135865,
		0.552012, -0.833559, 0.021510,
		34.753017, 37.001282, 29.750734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933357, 37.077988, 30.080009>,  <34.366608, 37.584774, 29.735678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933357, 37.077988, 30.080009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314934, 36.961506, 30.108829>,  <34.543880, 36.891617, 30.126122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314934, 36.961506, 30.108829>,  <33.933357, 37.077988, 30.080009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314934, 36.961506, 30.108829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062181, 0.043021, 0.997137,
		-0.293466, -0.955694, 0.022933,
		0.953945, -0.291200, 0.072051,
		34.601116, 36.874146, 30.130445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992966, 36.539654, 30.623573>,  <33.933357, 37.077988, 30.080009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992966, 36.539654, 30.623573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367580, 36.670826, 30.573994>,  <34.592350, 36.749531, 30.544245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367580, 36.670826, 30.573994>,  <33.992966, 36.539654, 30.623573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367580, 36.670826, 30.573994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117374, 0.039855, 0.992288,
		0.330342, -0.943860, -0.001165,
		0.936535, 0.327931, -0.123951,
		34.648540, 36.769203, 30.536808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450756, 36.126171, 31.055300>,  <33.992966, 36.539654, 30.623573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450756, 36.126171, 31.055300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619106, 36.485737, 31.006599>,  <34.720116, 36.701477, 30.977379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619106, 36.485737, 31.006599>,  <34.450756, 36.126171, 31.055300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619106, 36.485737, 31.006599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180580, 0.048506, 0.982363,
		0.888964, -0.435435, -0.141911,
		0.420872, 0.898912, -0.121751,
		34.745369, 36.755409, 30.970074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166641, 36.085232, 31.333893>,  <34.450756, 36.126171, 31.055300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166641, 36.085232, 31.333893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064453, 36.471909, 31.340189>,  <35.003139, 36.703915, 31.343967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064453, 36.471909, 31.340189>,  <35.166641, 36.085232, 31.333893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064453, 36.471909, 31.340189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354841, 0.078603, 0.931617,
		0.899347, 0.243584, -0.363102,
		-0.255468, 0.966689, 0.015742,
		34.987812, 36.761917, 31.344912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781204, 36.330624, 31.570127>,  <35.166641, 36.085232, 31.333893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781204, 36.330624, 31.570127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524647, 36.637035, 31.587120>,  <35.370712, 36.820885, 31.597317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524647, 36.637035, 31.587120>,  <35.781204, 36.330624, 31.570127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524647, 36.637035, 31.587120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406856, 0.292668, 0.865340,
		0.650445, 0.572311, -0.499381,
		-0.641397, 0.766032, 0.042484,
		35.332230, 36.866844, 31.599865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158112, 37.068794, 31.618967>,  <35.781204, 36.330624, 31.570127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158112, 37.068794, 31.618967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797237, 37.066105, 31.791485>,  <35.580711, 37.064491, 31.894995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797237, 37.066105, 31.791485>,  <36.158112, 37.068794, 31.618967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797237, 37.066105, 31.791485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389145, 0.418660, 0.820543,
		-0.186078, 0.908118, -0.375094,
		-0.902187, -0.006719, 0.431293,
		35.526581, 37.064091, 31.920874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643547, 36.727222, 31.198196>,  <36.158112, 37.068794, 31.618967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643547, 36.727222, 31.198196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934719, 36.457275, 31.246643>,  <37.109425, 36.295307, 31.275711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934719, 36.457275, 31.246643>,  <36.643547, 36.727222, 31.198196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934719, 36.457275, 31.246643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273707, 0.124056, -0.953779,
		0.628646, 0.727440, 0.275019,
		0.727935, -0.674864, 0.121118,
		37.153099, 36.254818, 31.282978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238499, 37.073643, 30.881853>,  <36.643547, 36.727222, 31.198196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238499, 37.073643, 30.881853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291111, 36.677265, 30.870995>,  <37.322678, 36.439438, 30.864479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291111, 36.677265, 30.870995>,  <37.238499, 37.073643, 30.881853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291111, 36.677265, 30.870995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255837, 0.060387, -0.964832,
		0.957730, 0.119959, 0.261462,
		0.131529, -0.990941, -0.027145,
		37.330570, 36.379982, 30.862852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775043, 37.035999, 30.344000>,  <37.238499, 37.073643, 30.881853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775043, 37.035999, 30.344000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657742, 36.656731, 30.392941>,  <37.587360, 36.429169, 30.422304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657742, 36.656731, 30.392941>,  <37.775043, 37.035999, 30.344000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657742, 36.656731, 30.392941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209154, -0.188507, -0.959542,
		0.932874, -0.255805, 0.253595,
		-0.293259, -0.948171, 0.122350,
		37.569763, 36.372280, 30.429646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379753, 36.598701, 30.142563>,  <37.775043, 37.035999, 30.344000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379753, 36.598701, 30.142563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021328, 36.423626, 30.112911>,  <37.806271, 36.318581, 30.095121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.021328, 36.423626, 30.112911>,  <38.379753, 36.598701, 30.142563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021328, 36.423626, 30.112911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172613, -0.189687, -0.966552,
		0.408989, -0.878889, 0.245523,
		-0.896065, -0.437690, -0.074128,
		37.752510, 36.292320, 30.090673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468056, 36.038620, 29.647455>,  <38.379753, 36.598701, 30.142563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468056, 36.038620, 29.647455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073078, 36.100239, 29.661400>,  <37.836090, 36.137211, 29.669767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073078, 36.100239, 29.661400>,  <38.468056, 36.038620, 29.647455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073078, 36.100239, 29.661400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030578, 0.030105, -0.999079,
		-0.154960, -0.987604, -0.025017,
		-0.987447, 0.154053, 0.034864,
		37.776844, 36.146454, 29.671860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193668, 35.645531, 29.101303>,  <38.468056, 36.038620, 29.647455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193668, 35.645531, 29.101303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908371, 35.918808, 29.163954>,  <37.737194, 36.082775, 29.201544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.908371, 35.918808, 29.163954>,  <38.193668, 35.645531, 29.101303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908371, 35.918808, 29.163954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011490, 0.212033, -0.977195,
		-0.700822, -0.698778, -0.143382,
		-0.713244, 0.683192, 0.156626,
		37.694397, 36.123764, 29.210941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653378, 35.464241, 28.618450>,  <38.193668, 35.645531, 29.101303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653378, 35.464241, 28.618450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534901, 35.830246, 28.728014>,  <37.463814, 36.049847, 28.793753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534901, 35.830246, 28.728014>,  <37.653378, 35.464241, 28.618450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534901, 35.830246, 28.728014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180580, 0.227959, -0.956779,
		-0.937902, -0.332855, 0.097712,
		-0.296194, 0.915010, 0.273910,
		37.446041, 36.104748, 28.810186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.078785, 35.673996, 28.221668>,  <37.653378, 35.464241, 28.618450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.078785, 35.673996, 28.221668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206703, 36.027611, 28.358023>,  <37.283455, 36.239780, 28.439835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206703, 36.027611, 28.358023>,  <37.078785, 35.673996, 28.221668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206703, 36.027611, 28.358023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038900, 0.371725, -0.927527,
		-0.946688, 0.283357, 0.153264,
		0.319794, 0.884041, 0.340885,
		37.302643, 36.292824, 28.460289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647038, 36.188019, 27.931576>,  <37.078785, 35.673996, 28.221668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647038, 36.188019, 27.931576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984074, 36.376591, 28.035721>,  <37.186295, 36.489735, 28.098207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984074, 36.376591, 28.035721>,  <36.647038, 36.188019, 27.931576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984074, 36.376591, 28.035721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123405, 0.301577, -0.945422,
		-0.524219, 0.828738, 0.195930,
		0.842595, 0.471429, 0.260363,
		37.236851, 36.518021, 28.113831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686146, 36.804470, 27.512087>,  <36.647038, 36.188019, 27.931576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686146, 36.804470, 27.512087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067081, 36.732971, 27.610956>,  <37.295643, 36.690071, 27.670279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.067081, 36.732971, 27.610956>,  <36.686146, 36.804470, 27.512087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067081, 36.732971, 27.610956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257225, 0.035053, -0.965716,
		0.163955, 0.983270, 0.079361,
		0.952341, -0.178747, 0.247175,
		37.352783, 36.679348, 27.685108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024170, 37.292145, 27.063168>,  <36.686146, 36.804470, 27.512087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024170, 37.292145, 27.063168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321072, 37.057144, 27.192104>,  <37.499214, 36.916145, 27.269466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321072, 37.057144, 27.192104>,  <37.024170, 37.292145, 27.063168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321072, 37.057144, 27.192104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331979, -0.095466, -0.938443,
		0.582107, 0.803575, 0.124177,
		0.742254, -0.587498, 0.322342,
		37.543747, 36.880894, 27.288807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472343, 37.569107, 26.744926>,  <37.024170, 37.292145, 27.063168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472343, 37.569107, 26.744926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604984, 37.207428, 26.852612>,  <37.684566, 36.990421, 26.917223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604984, 37.207428, 26.852612>,  <37.472343, 37.569107, 26.744926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604984, 37.207428, 26.852612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442385, -0.103012, -0.890889,
		0.833269, 0.414514, 0.365843,
		0.331600, -0.904194, 0.269212,
		37.704464, 36.936169, 26.933374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100685, 37.530151, 26.401630>,  <37.472343, 37.569107, 26.744926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100685, 37.530151, 26.401630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003021, 37.147034, 26.462326>,  <37.944424, 36.917164, 26.498743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003021, 37.147034, 26.462326>,  <38.100685, 37.530151, 26.401630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003021, 37.147034, 26.462326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254550, -0.214289, -0.943019,
		0.935730, -0.191623, 0.296126,
		-0.244161, -0.957790, 0.151739,
		37.929771, 36.859695, 26.507847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588207, 37.147335, 26.034409>,  <38.100685, 37.530151, 26.401630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588207, 37.147335, 26.034409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271137, 36.912022, 26.098392>,  <38.080894, 36.770832, 26.136784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.271137, 36.912022, 26.098392>,  <38.588207, 37.147335, 26.034409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271137, 36.912022, 26.098392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013939, -0.244824, -0.969467,
		0.609484, -0.770703, 0.185865,
		-0.792676, -0.588285, 0.159959,
		38.033333, 36.735535, 26.146379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712585, 36.593746, 25.785625>,  <38.588207, 37.147335, 26.034409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712585, 36.593746, 25.785625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316250, 36.543514, 25.805481>,  <38.078449, 36.513374, 25.817394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316250, 36.543514, 25.805481>,  <38.712585, 36.593746, 25.785625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316250, 36.543514, 25.805481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011738, -0.446315, -0.894799,
		0.134526, -0.886020, 0.443702,
		-0.990841, -0.125582, 0.049640,
		38.018997, 36.505840, 25.820374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497467, 35.818993, 25.637922>,  <38.712585, 36.593746, 25.785625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497467, 35.818993, 25.637922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191341, 36.051723, 25.527809>,  <38.007668, 36.191360, 25.461740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191341, 36.051723, 25.527809>,  <38.497467, 35.818993, 25.637922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191341, 36.051723, 25.527809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031683, -0.393115, -0.918943,
		-0.642881, -0.711999, 0.282421,
		-0.765311, 0.581823, -0.275284,
		37.961746, 36.226269, 25.445225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143497, 35.364174, 25.202034>,  <38.497467, 35.818993, 25.637922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143497, 35.364174, 25.202034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010563, 35.729595, 25.108257>,  <37.930801, 35.948849, 25.051992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010563, 35.729595, 25.108257>,  <38.143497, 35.364174, 25.202034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010563, 35.729595, 25.108257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158666, -0.299181, -0.940912,
		-0.929718, -0.275506, 0.244381,
		-0.332341, 0.913557, -0.234440,
		37.910862, 36.003662, 25.037926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647881, 35.190384, 24.761602>,  <38.143497, 35.364174, 25.202034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647881, 35.190384, 24.761602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659485, 35.582966, 24.685801>,  <37.666447, 35.818516, 24.640320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659485, 35.582966, 24.685801>,  <37.647881, 35.190384, 24.761602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659485, 35.582966, 24.685801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283959, -0.173682, -0.942975,
		-0.958398, 0.081165, 0.273654,
		0.029008, 0.981451, -0.189504,
		37.668186, 35.877399, 24.628950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026405, 35.334244, 24.435413>,  <37.647881, 35.190384, 24.761602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026405, 35.334244, 24.435413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290478, 35.617142, 24.334253>,  <37.448921, 35.786880, 24.273558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290478, 35.617142, 24.334253>,  <37.026405, 35.334244, 24.435413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290478, 35.617142, 24.334253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287512, -0.073106, -0.954983,
		-0.693897, 0.703177, 0.155079,
		0.660184, 0.707247, -0.252900,
		37.488533, 35.829315, 24.258383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648438, 35.860523, 23.992292>,  <37.026405, 35.334244, 24.435413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648438, 35.860523, 23.992292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041901, 35.869907, 23.920893>,  <37.277981, 35.875538, 23.878054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041901, 35.869907, 23.920893>,  <36.648438, 35.860523, 23.992292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041901, 35.869907, 23.920893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173080, -0.149621, -0.973477,
		-0.049549, 0.988465, -0.143115,
		0.983661, 0.023465, -0.178498,
		37.336998, 35.876945, 23.867344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700249, 36.160828, 23.415682>,  <36.648438, 35.860523, 23.992292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700249, 36.160828, 23.415682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063370, 35.994293, 23.435911>,  <37.281242, 35.894371, 23.448048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063370, 35.994293, 23.435911>,  <36.700249, 36.160828, 23.415682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063370, 35.994293, 23.435911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158818, -0.452856, -0.877324,
		0.388167, 0.788404, -0.477226,
		0.907801, -0.416341, 0.050571,
		37.335709, 35.869392, 23.451082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034492, 36.392342, 22.839226>,  <36.700249, 36.160828, 23.415682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034492, 36.392342, 22.839226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180958, 36.040794, 22.961544>,  <37.268837, 35.829865, 23.034935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180958, 36.040794, 22.961544>,  <37.034492, 36.392342, 22.839226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180958, 36.040794, 22.961544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324567, -0.428602, -0.843182,
		0.872111, 0.209495, -0.442192,
		0.366167, -0.878870, 0.305794,
		37.290810, 35.777134, 23.053282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329029, 36.077572, 22.236851>,  <37.034492, 36.392342, 22.839226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329029, 36.077572, 22.236851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287849, 35.778320, 22.499058>,  <37.263142, 35.598770, 22.656382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.287849, 35.778320, 22.499058>,  <37.329029, 36.077572, 22.236851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287849, 35.778320, 22.499058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194712, -0.631114, -0.750855,
		0.975443, -0.204935, -0.080699,
		-0.102946, -0.748129, 0.655519,
		37.256966, 35.553883, 22.695713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.642441, 35.490917, 21.920071>,  <37.329029, 36.077572, 22.236851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.642441, 35.490917, 21.920071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369747, 35.356243, 22.179880>,  <37.206131, 35.275440, 22.335766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.369747, 35.356243, 22.179880>,  <37.642441, 35.490917, 21.920071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369747, 35.356243, 22.179880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306047, -0.675152, -0.671197,
		0.664508, -0.656363, 0.357234,
		-0.681736, -0.336685, 0.649522,
		37.165226, 35.255238, 22.374737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492577, 34.925190, 21.469633>,  <37.642441, 35.490917, 21.920071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492577, 34.925190, 21.469633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217751, 34.936661, 21.760044>,  <37.052856, 34.943542, 21.934292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217751, 34.936661, 21.760044>,  <37.492577, 34.925190, 21.469633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217751, 34.936661, 21.760044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673915, -0.398685, -0.622004,
		0.271622, -0.916640, 0.293246,
		-0.687066, 0.028673, 0.726029,
		37.011631, 34.945263, 21.977852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304131, 34.244015, 21.584064>,  <37.492577, 34.925190, 21.469633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304131, 34.244015, 21.584064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016762, 34.482052, 21.728146>,  <36.844341, 34.624874, 21.814594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016762, 34.482052, 21.728146>,  <37.304131, 34.244015, 21.584064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016762, 34.482052, 21.728146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649660, -0.388916, -0.653212,
		-0.248631, -0.703287, 0.666010,
		-0.718418, 0.595090, 0.360201,
		36.801235, 34.660580, 21.836206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837334, 33.804646, 21.875862>,  <37.304131, 34.244015, 21.584064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837334, 33.804646, 21.875862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651691, 34.142181, 21.768122>,  <36.540306, 34.344704, 21.703478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651691, 34.142181, 21.768122>,  <36.837334, 33.804646, 21.875862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651691, 34.142181, 21.768122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730837, -0.536601, -0.421825,
		-0.500485, 0.001083, 0.865744,
		-0.464102, 0.843835, -0.269352,
		36.512459, 34.395332, 21.687317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202003, 33.614563, 21.993858>,  <36.837334, 33.804646, 21.875862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202003, 33.614563, 21.993858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164680, 33.943859, 21.769871>,  <36.142288, 34.141438, 21.635479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164680, 33.943859, 21.769871>,  <36.202003, 33.614563, 21.993858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164680, 33.943859, 21.769871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787043, -0.405455, -0.464942,
		-0.609802, 0.397336, 0.685759,
		-0.093306, 0.823244, -0.559968,
		36.136688, 34.190834, 21.601881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450340, 33.646877, 21.812370>,  <36.202003, 33.614563, 21.993858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450340, 33.646877, 21.812370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603821, 33.893978, 21.537807>,  <35.695911, 34.042240, 21.373070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603821, 33.893978, 21.537807>,  <35.450340, 33.646877, 21.812370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603821, 33.893978, 21.537807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731441, -0.250425, -0.634257,
		-0.563706, 0.745433, 0.355759,
		0.383705, 0.617751, -0.686407,
		35.718933, 34.079304, 21.331886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926735, 33.825813, 21.387167>,  <35.450340, 33.646877, 21.812370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926735, 33.825813, 21.387167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246586, 33.926540, 21.169109>,  <35.438496, 33.986977, 21.038275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246586, 33.926540, 21.169109>,  <34.926735, 33.825813, 21.387167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246586, 33.926540, 21.169109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440216, -0.371620, -0.817379,
		-0.408418, 0.893580, -0.186303,
		0.799628, 0.251819, -0.545144,
		35.486473, 34.002087, 21.005566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648327, 34.213928, 20.933598>,  <34.926735, 33.825813, 21.387167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648327, 34.213928, 20.933598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992107, 34.093628, 20.768242>,  <35.198376, 34.021446, 20.669029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992107, 34.093628, 20.768242>,  <34.648327, 34.213928, 20.933598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992107, 34.093628, 20.768242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492108, -0.267698, -0.828352,
		0.138467, 0.915360, -0.378077,
		0.859451, -0.300754, -0.413389,
		35.249943, 34.003403, 20.644226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714531, 34.553780, 20.267263>,  <34.648327, 34.213928, 20.933598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714531, 34.553780, 20.267263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928295, 34.216232, 20.248112>,  <35.056553, 34.013702, 20.236622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928295, 34.216232, 20.248112>,  <34.714531, 34.553780, 20.267263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928295, 34.216232, 20.248112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558587, -0.310101, -0.769297,
		0.634337, 0.437866, -0.637095,
		0.534413, -0.843867, -0.047877,
		35.088619, 33.963074, 20.233749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608818, 34.351410, 19.574556>,  <34.714531, 34.553780, 20.267263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608818, 34.351410, 19.574556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740711, 34.021023, 19.757444>,  <34.819847, 33.822788, 19.867178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.740711, 34.021023, 19.757444>,  <34.608818, 34.351410, 19.574556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740711, 34.021023, 19.757444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479087, -0.563708, -0.672837,
		0.813481, 0.002809, -0.581584,
		0.329733, -0.825970, 0.457220,
		34.839630, 33.773232, 19.894609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877712, 33.962975, 19.059364>,  <34.608818, 34.351410, 19.574556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877712, 33.962975, 19.059364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804211, 33.691586, 19.343874>,  <34.760109, 33.528751, 19.514580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804211, 33.691586, 19.343874>,  <34.877712, 33.962975, 19.059364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804211, 33.691586, 19.343874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461065, -0.579566, -0.671954,
		0.868131, -0.451420, -0.206320,
		-0.183758, -0.678472, 0.711273,
		34.749084, 33.488045, 19.557257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055508, 33.343616, 18.640587>,  <34.877712, 33.962975, 19.059364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055508, 33.343616, 18.640587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845402, 33.259140, 18.970312>,  <34.719337, 33.208454, 19.168148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.845402, 33.259140, 18.970312>,  <35.055508, 33.343616, 18.640587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845402, 33.259140, 18.970312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664881, -0.502702, -0.552471,
		0.531063, -0.838265, 0.123633,
		-0.525267, -0.211195, 0.824312,
		34.687820, 33.195782, 19.217606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982716, 32.624252, 18.728804>,  <35.055508, 33.343616, 18.640587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982716, 32.624252, 18.728804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666775, 32.782066, 18.916626>,  <34.477211, 32.876755, 19.029320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666775, 32.782066, 18.916626>,  <34.982716, 32.624252, 18.728804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666775, 32.782066, 18.916626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599313, -0.659093, -0.454335,
		0.130230, -0.640267, 0.757033,
		-0.789850, 0.394532, 0.469554,
		34.429821, 32.900425, 19.057491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693649, 32.081116, 18.982561>,  <34.982716, 32.624252, 18.728804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693649, 32.081116, 18.982561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402336, 32.353115, 19.016506>,  <34.227547, 32.516315, 19.036873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402336, 32.353115, 19.016506>,  <34.693649, 32.081116, 18.982561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402336, 32.353115, 19.016506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674187, -0.688794, -0.266523,
		-0.122784, -0.251317, 0.960085,
		-0.728283, 0.680002, 0.084862,
		34.183853, 32.557117, 19.041965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148735, 31.734123, 19.342793>,  <34.693649, 32.081116, 18.982561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148735, 31.734123, 19.342793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001015, 32.038223, 19.129013>,  <33.912384, 32.220684, 19.000746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001015, 32.038223, 19.129013>,  <34.148735, 31.734123, 19.342793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001015, 32.038223, 19.129013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644137, -0.623945, -0.442470,
		-0.669858, 0.180860, 0.720125,
		-0.369293, 0.760251, -0.534453,
		33.890224, 32.266300, 18.968678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926773, 31.031158, 19.418194>,  <34.148735, 31.734123, 19.342793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926773, 31.031158, 19.418194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183414, 30.861700, 19.162420>,  <34.337399, 30.760025, 19.008957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.183414, 30.861700, 19.162420>,  <33.926773, 31.031158, 19.418194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183414, 30.861700, 19.162420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736622, 0.107878, 0.667645,
		-0.213866, -0.899381, 0.381282,
		0.641599, -0.423647, -0.639432,
		34.375893, 30.734606, 18.970591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307350, 30.540043, 19.768988>,  <33.926773, 31.031158, 19.418194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307350, 30.540043, 19.768988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526604, 30.618002, 19.443642>,  <34.658157, 30.664778, 19.248434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526604, 30.618002, 19.443642>,  <34.307350, 30.540043, 19.768988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526604, 30.618002, 19.443642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833287, -0.043596, 0.551119,
		0.071952, -0.979854, -0.186302,
		0.548138, 0.194897, -0.813363,
		34.691044, 30.676472, 19.199633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837597, 30.130016, 19.941820>,  <34.307350, 30.540043, 19.768988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837597, 30.130016, 19.941820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970463, 30.398539, 19.676788>,  <35.050182, 30.559652, 19.517769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970463, 30.398539, 19.676788>,  <34.837597, 30.130016, 19.941820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970463, 30.398539, 19.676788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858085, 0.076580, 0.507765,
		0.391606, -0.737213, -0.550601,
		0.332166, 0.671307, -0.662581,
		35.070114, 30.599930, 19.478014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591717, 29.953196, 19.848583>,  <34.837597, 30.130016, 19.941820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591717, 29.953196, 19.848583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563477, 30.336111, 19.736431>,  <35.546532, 30.565861, 19.669140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563477, 30.336111, 19.736431>,  <35.591717, 29.953196, 19.848583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563477, 30.336111, 19.736431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778177, 0.228708, 0.584922,
		0.624065, -0.176890, -0.761087,
		-0.070600, 0.957289, -0.280381,
		35.542297, 30.623299, 19.652317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194405, 30.099983, 19.571167>,  <35.591717, 29.953196, 19.848583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194405, 30.099983, 19.571167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074574, 30.469902, 19.664978>,  <36.002674, 30.691853, 19.721264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074574, 30.469902, 19.664978>,  <36.194405, 30.099983, 19.571167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074574, 30.469902, 19.664978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794838, 0.105952, 0.597500,
		0.527718, 0.365409, -0.766805,
		-0.299576, 0.924798, 0.234528,
		35.984699, 30.747341, 19.735336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786903, 30.555004, 19.488766>,  <36.194405, 30.099983, 19.571167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786903, 30.555004, 19.488766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509670, 30.705988, 19.734419>,  <36.343330, 30.796577, 19.881811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.509670, 30.705988, 19.734419>,  <36.786903, 30.555004, 19.488766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509670, 30.705988, 19.734419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698312, 0.140159, 0.701937,
		0.178876, 0.915357, -0.360727,
		-0.693083, 0.377460, 0.614134,
		36.301746, 30.819225, 19.918659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234116, 30.960062, 19.844406>,  <36.786903, 30.555004, 19.488766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234116, 30.960062, 19.844406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892136, 30.977242, 20.051178>,  <36.686947, 30.987549, 20.175241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892136, 30.977242, 20.051178>,  <37.234116, 30.960062, 19.844406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892136, 30.977242, 20.051178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506776, 0.281692, 0.814756,
		-0.110623, 0.958543, -0.262597,
		-0.854951, 0.042947, 0.516928,
		36.635651, 30.990126, 20.206257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137226, 31.671595, 20.189562>,  <37.234116, 30.960062, 19.844406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137226, 31.671595, 20.189562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944775, 31.389429, 20.397758>,  <36.829304, 31.220131, 20.522676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944775, 31.389429, 20.397758>,  <37.137226, 31.671595, 20.189562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944775, 31.389429, 20.397758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375853, 0.370406, 0.849432,
		-0.791993, 0.604311, 0.086919,
		-0.481126, -0.705413, 0.520491,
		36.800438, 31.177805, 20.553905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085934, 32.037563, 20.800800>,  <37.137226, 31.671595, 20.189562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085934, 32.037563, 20.800800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010319, 31.659502, 20.907347>,  <36.964951, 31.432665, 20.971275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010319, 31.659502, 20.907347>,  <37.085934, 32.037563, 20.800800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010319, 31.659502, 20.907347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352796, 0.187775, 0.916666,
		-0.916406, 0.267257, 0.297949,
		-0.189037, -0.945153, 0.266366,
		36.953609, 31.375956, 20.987257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763096, 32.150799, 21.419878>,  <37.085934, 32.037563, 20.800800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763096, 32.150799, 21.419878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883705, 31.769524, 21.428999>,  <36.956070, 31.540758, 21.434471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.883705, 31.769524, 21.428999>,  <36.763096, 32.150799, 21.419878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883705, 31.769524, 21.428999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212664, 0.090545, 0.972921,
		-0.929439, -0.288510, 0.230010,
		0.301524, -0.953186, 0.022801,
		36.974163, 31.483568, 21.435839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499203, 31.855961, 22.018162>,  <36.763096, 32.150799, 21.419878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499203, 31.855961, 22.018162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821121, 31.637110, 21.926107>,  <37.014271, 31.505800, 21.870874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821121, 31.637110, 21.926107>,  <36.499203, 31.855961, 22.018162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821121, 31.637110, 21.926107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345042, 0.115755, 0.931422,
		-0.482965, -0.829008, 0.281940,
		0.804792, -0.547126, -0.230136,
		37.062557, 31.472973, 21.857067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647907, 31.629444, 22.625832>,  <36.499203, 31.855961, 22.018162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647907, 31.629444, 22.625832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992920, 31.551859, 22.438890>,  <37.199928, 31.505308, 22.326725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.992920, 31.551859, 22.438890>,  <36.647907, 31.629444, 22.625832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992920, 31.551859, 22.438890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495182, 0.133545, 0.858464,
		-0.104100, -0.971876, 0.211234,
		0.862530, -0.193965, -0.467354,
		37.251678, 31.493670, 22.298685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939781, 31.107204, 22.976042>,  <36.647907, 31.629444, 22.625832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939781, 31.107204, 22.976042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202408, 31.354269, 22.802877>,  <37.359985, 31.502508, 22.698978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202408, 31.354269, 22.802877>,  <36.939781, 31.107204, 22.976042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202408, 31.354269, 22.802877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351412, 0.257362, 0.900153,
		0.667404, -0.743142, -0.048077,
		0.656569, 0.617661, -0.432913,
		37.399380, 31.539568, 22.673004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434837, 31.120359, 23.463112>,  <36.939781, 31.107204, 22.976042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434837, 31.120359, 23.463112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534431, 31.420033, 23.217596>,  <37.594189, 31.599836, 23.070288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534431, 31.420033, 23.217596>,  <37.434837, 31.120359, 23.463112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534431, 31.420033, 23.217596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550728, 0.411794, 0.726033,
		0.796685, -0.518798, -0.310067,
		0.248981, 0.749182, -0.613787,
		37.609127, 31.644787, 23.033461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248394, 31.261284, 23.487888>,  <37.434837, 31.120359, 23.463112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248394, 31.261284, 23.487888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068760, 31.595942, 23.362446>,  <37.960979, 31.796736, 23.287180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068760, 31.595942, 23.362446>,  <38.248394, 31.261284, 23.487888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068760, 31.595942, 23.362446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480382, 0.522032, 0.704780,
		0.753364, 0.165853, -0.636345,
		-0.449082, 0.836645, -0.313608,
		37.934036, 31.846935, 23.268364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778103, 31.784418, 23.470058>,  <38.248394, 31.261284, 23.487888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778103, 31.784418, 23.470058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439587, 31.997059, 23.456285>,  <38.236477, 32.124641, 23.448021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439587, 31.997059, 23.456285>,  <38.778103, 31.784418, 23.470058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439587, 31.997059, 23.456285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384569, 0.654395, 0.651056,
		0.368636, 0.537743, -0.758248,
		-0.846294, 0.531601, -0.034435,
		38.185699, 32.156540, 23.445955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955822, 32.446857, 23.413523>,  <38.778103, 31.784418, 23.470058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955822, 32.446857, 23.413523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589626, 32.461292, 23.573811>,  <38.369907, 32.469952, 23.669983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.589626, 32.461292, 23.573811>,  <38.955822, 32.446857, 23.413523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.589626, 32.461292, 23.573811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311964, 0.692630, 0.650341,
		-0.254080, 0.720390, -0.645354,
		-0.915490, 0.036088, 0.400719,
		38.314980, 32.472118, 23.694027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784397, 33.188431, 23.391525>,  <38.955822, 32.446857, 23.413523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784397, 33.188431, 23.391525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547531, 33.017960, 23.665081>,  <38.405411, 32.915676, 23.829214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.547531, 33.017960, 23.665081>,  <38.784397, 33.188431, 23.391525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547531, 33.017960, 23.665081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223089, 0.728818, 0.647344,
		-0.774317, 0.535906, -0.336508,
		-0.592169, -0.426178, 0.683891,
		38.369881, 32.890106, 23.870249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535870, 33.685898, 23.760807>,  <38.784397, 33.188431, 23.391525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535870, 33.685898, 23.760807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412365, 33.400539, 24.012436>,  <38.338261, 33.229324, 24.163414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.412365, 33.400539, 24.012436>,  <38.535870, 33.685898, 23.760807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412365, 33.400539, 24.012436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156615, 0.614230, 0.773430,
		-0.938155, 0.337331, -0.077925,
		-0.308766, -0.713393, 0.629074,
		38.319736, 33.186520, 24.201159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965176, 33.931339, 24.228518>,  <38.535870, 33.685898, 23.760807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965176, 33.931339, 24.228518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112812, 33.625469, 24.439816>,  <38.201393, 33.441948, 24.566595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112812, 33.625469, 24.439816>,  <37.965176, 33.931339, 24.228518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112812, 33.625469, 24.439816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047285, 0.583093, 0.811028,
		-0.928189, -0.274366, 0.251372,
		0.369091, -0.764674, 0.528247,
		38.223541, 33.396069, 24.598289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750900, 34.003857, 24.907013>,  <37.965176, 33.931339, 24.228518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750900, 34.003857, 24.907013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050640, 33.746284, 24.968761>,  <38.230484, 33.591740, 25.005812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050640, 33.746284, 24.968761>,  <37.750900, 34.003857, 24.907013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050640, 33.746284, 24.968761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157422, 0.399683, 0.903035,
		-0.643192, -0.652385, 0.400870,
		0.749348, -0.643931, 0.154373,
		38.275444, 33.553104, 25.015074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.593487, 33.704395, 25.594175>,  <37.750900, 34.003857, 24.907013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.593487, 33.704395, 25.594175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985741, 33.687092, 25.517775>,  <38.221092, 33.676708, 25.471935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985741, 33.687092, 25.517775>,  <37.593487, 33.704395, 25.594175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985741, 33.687092, 25.517775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192464, 0.393134, 0.899112,
		0.036192, -0.918463, 0.393848,
		0.980636, -0.043261, -0.191000,
		38.279930, 33.674114, 25.460474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881981, 33.343475, 26.161076>,  <37.593487, 33.704395, 25.594175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881981, 33.343475, 26.161076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201538, 33.514633, 25.991997>,  <38.393272, 33.617329, 25.890551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201538, 33.514633, 25.991997>,  <37.881981, 33.343475, 26.161076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201538, 33.514633, 25.991997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278274, 0.360084, 0.890451,
		0.533226, -0.829002, 0.168597,
		0.798896, 0.427896, -0.422696,
		38.441208, 33.643002, 25.865189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500233, 33.240894, 26.602371>,  <37.881981, 33.343475, 26.161076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500233, 33.240894, 26.602371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616497, 33.565464, 26.399548>,  <38.686256, 33.760204, 26.277853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616497, 33.565464, 26.399548>,  <38.500233, 33.240894, 26.602371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616497, 33.565464, 26.399548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410923, 0.372720, 0.831999,
		0.864095, -0.450189, -0.225099,
		0.290658, 0.811424, -0.507058,
		38.703693, 33.808891, 26.247431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039684, 33.544395, 27.028898>,  <38.500233, 33.240894, 26.602371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039684, 33.544395, 27.028898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988014, 33.863304, 26.793043>,  <38.957012, 34.054649, 26.651529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988014, 33.863304, 26.793043>,  <39.039684, 33.544395, 27.028898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988014, 33.863304, 26.793043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370816, 0.590318, 0.716952,
		0.919679, -0.126033, -0.371896,
		-0.129177, 0.797270, -0.589638,
		38.949261, 34.102486, 26.616152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681835, 33.913219, 26.936918>,  <39.039684, 33.544395, 27.028898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681835, 33.913219, 26.936918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417126, 34.195843, 26.836651>,  <39.258301, 34.365417, 26.776491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417126, 34.195843, 26.836651>,  <39.681835, 33.913219, 26.936918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417126, 34.195843, 26.836651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434393, 0.633882, 0.639918,
		0.611033, 0.314592, -0.726409,
		-0.661772, 0.706558, -0.250666,
		39.218594, 34.407810, 26.761452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053238, 34.517776, 26.718515>,  <39.681835, 33.913219, 26.936918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053238, 34.517776, 26.718515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693932, 34.617435, 26.863317>,  <39.478348, 34.677231, 26.950199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693932, 34.617435, 26.863317>,  <40.053238, 34.517776, 26.718515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693932, 34.617435, 26.863317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437626, 0.431996, 0.788583,
		0.040091, 0.866778, -0.497080,
		-0.898263, 0.249150, 0.362005,
		39.424454, 34.692181, 26.971920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123276, 35.183659, 26.975893>,  <40.053238, 34.517776, 26.718515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123276, 35.183659, 26.975893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799675, 35.050007, 27.169334>,  <39.605515, 34.969818, 27.285398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799675, 35.050007, 27.169334>,  <40.123276, 35.183659, 26.975893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799675, 35.050007, 27.169334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322953, 0.434763, 0.840644,
		-0.491132, 0.836266, -0.243819,
		-0.809006, -0.334125, 0.483601,
		39.556973, 34.949768, 27.314415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075829, 35.616478, 27.607721>,  <40.123276, 35.183659, 26.975893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075829, 35.616478, 27.607721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803486, 35.338573, 27.700439>,  <39.640079, 35.171829, 27.756071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.803486, 35.338573, 27.700439>,  <40.075829, 35.616478, 27.607721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803486, 35.338573, 27.700439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149969, 0.177532, 0.972621,
		-0.716894, 0.696982, -0.016682,
		-0.680861, -0.694765, 0.231797,
		39.599228, 35.130142, 27.769979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736961, 35.885159, 28.211298>,  <40.075829, 35.616478, 27.607721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736961, 35.885159, 28.211298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691216, 35.489510, 28.248297>,  <39.663769, 35.252121, 28.270496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.691216, 35.489510, 28.248297>,  <39.736961, 35.885159, 28.211298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691216, 35.489510, 28.248297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023180, 0.090427, 0.995633,
		-0.993169, 0.116006, 0.012586,
		-0.114362, -0.989124, 0.092498,
		39.656906, 35.192772, 28.276047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267544, 35.781822, 28.765661>,  <39.736961, 35.885159, 28.211298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267544, 35.781822, 28.765661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427963, 35.418152, 28.720840>,  <39.524216, 35.199947, 28.693949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427963, 35.418152, 28.720840>,  <39.267544, 35.781822, 28.765661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427963, 35.418152, 28.720840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057195, -0.146932, 0.987491,
		-0.914270, -0.389623, -0.110927,
		0.401048, -0.909178, -0.112051,
		39.548279, 35.145397, 28.687225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962231, 35.389915, 29.347729>,  <39.267544, 35.781822, 28.765661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962231, 35.389915, 29.347729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267445, 35.165524, 29.219299>,  <39.450573, 35.030888, 29.142241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267445, 35.165524, 29.219299>,  <38.962231, 35.389915, 29.347729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267445, 35.165524, 29.219299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267004, -0.178817, 0.946960,
		-0.588636, -0.808288, 0.013340,
		0.763031, -0.560977, -0.321075,
		39.496353, 34.997231, 29.122976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918217, 34.781845, 29.839054>,  <38.962231, 35.389915, 29.347729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918217, 34.781845, 29.839054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285271, 34.770451, 29.680492>,  <39.505505, 34.763615, 29.585356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285271, 34.770451, 29.680492>,  <38.918217, 34.781845, 29.839054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285271, 34.770451, 29.680492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381123, -0.219662, 0.898050,
		-0.112661, -0.975160, -0.190711,
		0.917634, -0.028491, -0.396403,
		39.560562, 34.761902, 29.561571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275890, 34.114693, 30.017101>,  <38.918217, 34.781845, 29.839054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275890, 34.114693, 30.017101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556492, 34.389118, 29.939943>,  <39.724854, 34.553772, 29.893648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.556492, 34.389118, 29.939943>,  <39.275890, 34.114693, 30.017101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.556492, 34.389118, 29.939943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352353, -0.098618, 0.930657,
		0.619467, -0.720826, -0.310917,
		0.701504, 0.686064, -0.192894,
		39.766945, 34.594936, 29.882074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882729, 33.812798, 30.400614>,  <39.275890, 34.114693, 30.017101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882729, 33.812798, 30.400614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977619, 34.193401, 30.322279>,  <40.034554, 34.421764, 30.275278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977619, 34.193401, 30.322279>,  <39.882729, 33.812798, 30.400614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977619, 34.193401, 30.322279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476586, 0.061677, 0.876962,
		0.846517, -0.301371, -0.438845,
		0.237224, 0.951510, -0.195839,
		40.048786, 34.478855, 30.263527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600189, 33.943047, 30.588291>,  <39.882729, 33.812798, 30.400614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600189, 33.943047, 30.588291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449299, 34.313198, 30.603104>,  <40.358765, 34.535290, 30.611990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449299, 34.313198, 30.603104>,  <40.600189, 33.943047, 30.588291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449299, 34.313198, 30.603104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127907, 0.012456, 0.991708,
		0.917248, 0.378830, -0.123062,
		-0.377222, 0.925382, 0.037030,
		40.336132, 34.590813, 30.614212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090332, 34.273846, 30.957996>,  <40.600189, 33.943047, 30.588291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090332, 34.273846, 30.957996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742126, 34.469769, 30.977165>,  <40.533203, 34.587322, 30.988667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742126, 34.469769, 30.977165>,  <41.090332, 34.273846, 30.957996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742126, 34.469769, 30.977165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039156, -0.028131, 0.998837,
		0.490587, 0.871376, 0.005310,
		-0.870512, 0.489809, 0.047920,
		40.480972, 34.616711, 30.991541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188412, 34.898674, 31.340015>,  <41.090332, 34.273846, 30.957996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188412, 34.898674, 31.340015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793507, 34.838551, 31.360867>,  <40.556564, 34.802475, 31.373377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793507, 34.838551, 31.360867>,  <41.188412, 34.898674, 31.340015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793507, 34.838551, 31.360867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052693, 0.000219, 0.998611,
		-0.150115, 0.988638, 0.007704,
		-0.987263, -0.150313, 0.052127,
		40.497326, 34.793457, 31.376505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902889, 35.288403, 31.867773>,  <41.188412, 34.898674, 31.340015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902889, 35.288403, 31.867773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622147, 35.009937, 31.807432>,  <40.453701, 34.842857, 31.771229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.622147, 35.009937, 31.807432>,  <40.902889, 35.288403, 31.867773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622147, 35.009937, 31.807432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061005, -0.152251, 0.986457,
		-0.709704, 0.701551, 0.064388,
		-0.701853, -0.696165, -0.150851,
		40.411591, 34.801086, 31.762177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375584, 35.429047, 32.283367>,  <40.902889, 35.288403, 31.867773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375584, 35.429047, 32.283367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279415, 35.046188, 32.218784>,  <40.221714, 34.816471, 32.180035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279415, 35.046188, 32.218784>,  <40.375584, 35.429047, 32.283367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279415, 35.046188, 32.218784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285490, -0.089250, 0.954217,
		-0.927736, 0.275505, -0.251799,
		-0.240419, -0.957148, -0.161454,
		40.207291, 34.759045, 32.170349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843693, 35.375786, 32.594604>,  <40.375584, 35.429047, 32.283367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843693, 35.375786, 32.594604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963543, 34.996418, 32.553181>,  <40.035454, 34.768799, 32.528328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963543, 34.996418, 32.553181>,  <39.843693, 35.375786, 32.594604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963543, 34.996418, 32.553181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157605, -0.156260, 0.975061,
		-0.940949, -0.275834, -0.196295,
		0.299628, -0.948419, -0.103560,
		40.053432, 34.711891, 32.522114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416691, 35.090252, 32.915745>,  <39.843693, 35.375786, 32.594604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416691, 35.090252, 32.915745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704063, 34.812950, 32.892925>,  <39.876488, 34.646568, 32.879234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704063, 34.812950, 32.892925>,  <39.416691, 35.090252, 32.915745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704063, 34.812950, 32.892925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020558, -0.103141, 0.994454,
		-0.695298, -0.713271, -0.088352,
		0.718428, -0.693258, -0.057050,
		39.919590, 34.604973, 32.875809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161861, 34.602055, 33.308857>,  <39.416691, 35.090252, 32.915745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161861, 34.602055, 33.308857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551453, 34.514404, 33.285686>,  <39.785206, 34.461815, 33.271786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551453, 34.514404, 33.285686>,  <39.161861, 34.602055, 33.308857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551453, 34.514404, 33.285686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002013, -0.263921, 0.964542,
		-0.226639, -0.939325, -0.257494,
		0.973977, -0.219121, -0.057924,
		39.843647, 34.448666, 33.268311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249752, 33.939404, 33.664536>,  <39.161861, 34.602055, 33.308857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249752, 33.939404, 33.664536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587288, 34.154030, 33.662075>,  <39.789810, 34.282806, 33.660599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587288, 34.154030, 33.662075>,  <39.249752, 33.939404, 33.664536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587288, 34.154030, 33.662075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098912, -0.144269, 0.984583,
		0.527404, -0.831436, -0.174812,
		0.843837, 0.536564, -0.006151,
		39.840439, 34.314999, 33.660229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585011, 33.595951, 34.140255>,  <39.249752, 33.939404, 33.664536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585011, 33.595951, 34.140255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816223, 33.920864, 34.109062>,  <39.954948, 34.115810, 34.090347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816223, 33.920864, 34.109062>,  <39.585011, 33.595951, 34.140255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816223, 33.920864, 34.109062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340064, -0.152916, 0.927887,
		0.741781, -0.562864, -0.364618,
		0.578030, 0.812281, -0.077979,
		39.989632, 34.164547, 34.085667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253674, 33.447071, 34.416019>,  <39.585011, 33.595951, 34.140255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253674, 33.447071, 34.416019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217930, 33.845085, 34.433556>,  <40.196484, 34.083893, 34.444077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217930, 33.845085, 34.433556>,  <40.253674, 33.447071, 34.416019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217930, 33.845085, 34.433556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576107, 0.015728, 0.817223,
		0.812475, 0.098280, -0.574652,
		-0.089355, 0.995034, 0.043841,
		40.191124, 34.143597, 34.446709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897533, 33.503704, 34.596527>,  <40.253674, 33.447071, 34.416019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897533, 33.503704, 34.596527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720005, 33.842758, 34.712830>,  <40.613487, 34.046192, 34.782612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720005, 33.842758, 34.712830>,  <40.897533, 33.503704, 34.596527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720005, 33.842758, 34.712830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577748, 0.022636, 0.815901,
		0.685006, 0.530094, -0.499767,
		-0.443818, 0.847636, 0.290755,
		40.586861, 34.097050, 34.800056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403229, 33.998676, 34.762409>,  <40.897533, 33.503704, 34.596527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403229, 33.998676, 34.762409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079037, 34.078377, 34.982746>,  <40.884521, 34.126198, 35.114948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079037, 34.078377, 34.982746>,  <41.403229, 33.998676, 34.762409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079037, 34.078377, 34.982746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573521, 0.078632, 0.815409,
		0.119161, 0.976788, -0.178007,
		-0.810478, 0.199255, 0.550838,
		40.835892, 34.138153, 35.147999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593731, 34.536198, 35.181179>,  <41.403229, 33.998676, 34.762409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593731, 34.536198, 35.181179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276093, 34.371555, 35.360062>,  <41.085510, 34.272770, 35.467392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.276093, 34.371555, 35.360062>,  <41.593731, 34.536198, 35.181179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.276093, 34.371555, 35.360062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376624, 0.244268, 0.893581,
		-0.477038, 0.878019, -0.038954,
		-0.794096, -0.411601, 0.447208,
		41.037865, 34.248074, 35.494225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508770, 34.969379, 35.690319>,  <41.593731, 34.536198, 35.181179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508770, 34.969379, 35.690319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307587, 34.637596, 35.787510>,  <41.186878, 34.438526, 35.845825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307587, 34.637596, 35.787510>,  <41.508770, 34.969379, 35.690319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307587, 34.637596, 35.787510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256417, 0.125265, 0.958415,
		-0.825399, 0.544345, 0.149683,
		-0.502958, -0.829456, 0.242973,
		41.156700, 34.388760, 35.860401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585545, 34.998070, 36.327709>,  <41.508770, 34.969379, 35.690319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585545, 34.998070, 36.327709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356689, 34.671932, 36.363220>,  <41.219376, 34.476250, 36.384525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.356689, 34.671932, 36.363220>,  <41.585545, 34.998070, 36.327709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356689, 34.671932, 36.363220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219202, -0.047710, 0.974512,
		-0.790324, 0.577012, 0.206020,
		-0.572135, -0.815341, 0.088776,
		41.185047, 34.427330, 36.389854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173222, 34.982296, 36.945210>,  <41.585545, 34.998070, 36.327709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173222, 34.982296, 36.945210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244877, 34.598011, 36.860416>,  <41.287868, 34.367439, 36.809540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.244877, 34.598011, 36.860416>,  <41.173222, 34.982296, 36.945210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244877, 34.598011, 36.860416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293093, -0.153574, 0.943669,
		-0.939152, -0.231175, 0.254069,
		0.179134, -0.960715, -0.211985,
		41.298618, 34.309795, 36.796822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875801, 34.558537, 37.571274>,  <41.173222, 34.982296, 36.945210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875801, 34.558537, 37.571274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123466, 34.317719, 37.369610>,  <41.272064, 34.173229, 37.248611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.123466, 34.317719, 37.369610>,  <40.875801, 34.558537, 37.571274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123466, 34.317719, 37.369610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389695, -0.321822, 0.862884,
		-0.681743, -0.730737, 0.035352,
		0.619164, -0.602042, -0.504164,
		41.309216, 34.137108, 37.218361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755104, 33.912376, 37.835609>,  <40.875801, 34.558537, 37.571274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755104, 33.912376, 37.835609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122704, 33.949562, 37.682350>,  <41.343262, 33.971874, 37.590397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.122704, 33.949562, 37.682350>,  <40.755104, 33.912376, 37.835609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122704, 33.949562, 37.682350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385207, -0.418804, 0.822325,
		-0.084015, -0.903306, -0.420691,
		0.918998, 0.092965, -0.383145,
		41.398403, 33.977451, 37.567406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019283, 33.266342, 37.906609>,  <40.755104, 33.912376, 37.835609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019283, 33.266342, 37.906609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321274, 33.522762, 37.851379>,  <41.502468, 33.676617, 37.818241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.321274, 33.522762, 37.851379>,  <41.019283, 33.266342, 37.906609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.321274, 33.522762, 37.851379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540872, -0.489695, 0.683854,
		0.370770, -0.590974, -0.716435,
		0.754974, 0.641053, -0.138077,
		41.547768, 33.715076, 37.809956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630859, 32.863354, 37.922554>,  <41.019283, 33.266342, 37.906609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630859, 32.863354, 37.922554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719238, 33.232452, 38.048866>,  <41.772266, 33.453911, 38.124653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719238, 33.232452, 38.048866>,  <41.630859, 32.863354, 37.922554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719238, 33.232452, 38.048866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454169, -0.383878, 0.803970,
		0.863083, -0.034221, -0.503902,
		0.220950, 0.922750, 0.315776,
		41.785522, 33.509277, 38.143600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105984, 32.683384, 38.446823>,  <41.630859, 32.863354, 37.922554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105984, 32.683384, 38.446823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100872, 33.083168, 38.458916>,  <42.097805, 33.323040, 38.466171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100872, 33.083168, 38.458916>,  <42.105984, 32.683384, 38.446823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100872, 33.083168, 38.458916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376712, -0.023190, 0.926040,
		0.926242, 0.023221, -0.376213,
		-0.012779, 0.999461, 0.030228,
		42.097038, 33.383007, 38.467983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786495, 32.888401, 38.604824>,  <42.105984, 32.683384, 38.446823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786495, 32.888401, 38.604824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501163, 33.139671, 38.729122>,  <42.329964, 33.290432, 38.803699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.501163, 33.139671, 38.729122>,  <42.786495, 32.888401, 38.604824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.501163, 33.139671, 38.729122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349101, -0.065985, 0.934759,
		0.607697, 0.775269, -0.172228,
		-0.713325, 0.628175, 0.310746,
		42.287167, 33.328125, 38.822346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111301, 33.394844, 39.126957>,  <42.786495, 32.888401, 38.604824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111301, 33.394844, 39.126957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715530, 33.422977, 39.177692>,  <42.478069, 33.439857, 39.208134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.715530, 33.422977, 39.177692>,  <43.111301, 33.394844, 39.126957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715530, 33.422977, 39.177692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120761, -0.084824, 0.989051,
		0.080320, 0.993911, 0.075434,
		-0.989427, 0.070331, 0.126839,
		42.418701, 33.444077, 39.215744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.870632, 33.990036, 39.580914>,  <43.111301, 33.394844, 39.126957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.870632, 33.990036, 39.580914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618313, 33.681576, 39.615349>,  <42.466919, 33.496498, 39.636009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.618313, 33.681576, 39.615349>,  <42.870632, 33.990036, 39.580914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.618313, 33.681576, 39.615349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135076, 0.000119, 0.990835,
		-0.764096, 0.636649, 0.104089,
		-0.630802, -0.771154, 0.086087,
		42.429073, 33.450230, 39.641174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555519, 34.030724, 40.336246>,  <42.870632, 33.990036, 39.580914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.555519, 34.030724, 40.336246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412220, 33.671482, 40.234211>,  <42.326241, 33.455936, 40.172989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412220, 33.671482, 40.234211>,  <42.555519, 34.030724, 40.336246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412220, 33.671482, 40.234211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096160, -0.236278, 0.966915,
		-0.928662, 0.370922, -0.001716,
		-0.358245, -0.898103, -0.255091,
		42.304745, 33.402050, 40.157684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902363, 33.869255, 40.735409>,  <42.555519, 34.030724, 40.336246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902363, 33.869255, 40.735409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.154373, 33.571987, 40.645283>,  <42.305580, 33.393627, 40.591206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.154373, 33.571987, 40.645283>,  <41.902363, 33.869255, 40.735409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154373, 33.571987, 40.645283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289016, -0.044913, 0.956270,
		-0.720790, -0.667595, 0.186492,
		0.630025, -0.743169, -0.225319,
		42.343380, 33.349037, 40.577686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715256, 33.155334, 41.020432>,  <41.902363, 33.869255, 40.735409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.715256, 33.155334, 41.020432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097153, 33.266724, 40.978630>,  <42.326290, 33.333557, 40.953548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097153, 33.266724, 40.978630>,  <41.715256, 33.155334, 41.020432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097153, 33.266724, 40.978630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096725, 0.041580, 0.994442,
		0.281270, -0.959544, 0.012763,
		0.954742, 0.278472, -0.104507,
		42.383575, 33.350266, 40.947277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237625, 32.775639, 40.629025>,  <41.715256, 33.155334, 41.020432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237625, 32.775639, 40.629025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947510, 33.044346, 40.568779>,  <41.773441, 33.205570, 40.532631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947510, 33.044346, 40.568779>,  <42.237625, 32.775639, 40.629025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947510, 33.044346, 40.568779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157041, -0.051576, -0.986244,
		-0.670300, -0.738960, -0.068089,
		-0.725284, 0.671772, -0.150618,
		41.729923, 33.245876, 40.523594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.929592, 32.662914, 39.970615>,  <42.237625, 32.775639, 40.629025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.929592, 32.662914, 39.970615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874619, 33.057762, 40.003380>,  <41.841633, 33.294670, 40.023037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.874619, 33.057762, 40.003380>,  <41.929592, 32.662914, 39.970615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.874619, 33.057762, 40.003380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297839, 0.120054, -0.947037,
		-0.944671, -0.105759, -0.310501,
		-0.137434, 0.987118, 0.081912,
		41.833389, 33.353897, 40.027954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494797, 32.855854, 39.449818>,  <41.929592, 32.662914, 39.970615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494797, 32.855854, 39.449818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708355, 33.173538, 39.565876>,  <41.836491, 33.364151, 39.635509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708355, 33.173538, 39.565876>,  <41.494797, 32.855854, 39.449818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708355, 33.173538, 39.565876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097335, 0.283131, -0.954129,
		-0.839932, 0.537643, 0.073857,
		0.533892, 0.794215, 0.290142,
		41.868523, 33.411804, 39.652920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144093, 33.520588, 39.397022>,  <41.494797, 32.855854, 39.449818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144093, 33.520588, 39.397022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539803, 33.527138, 39.338959>,  <41.777229, 33.531067, 39.304123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539803, 33.527138, 39.338959>,  <41.144093, 33.520588, 39.397022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539803, 33.527138, 39.338959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145351, 0.209140, -0.967023,
		0.014527, 0.977749, 0.209276,
		0.989274, 0.016371, -0.145154,
		41.836586, 33.532047, 39.295414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340225, 34.229568, 39.137840>,  <41.144093, 33.520588, 39.397022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340225, 34.229568, 39.137840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643253, 33.981739, 39.055660>,  <41.825069, 33.833042, 39.006351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.643253, 33.981739, 39.055660>,  <41.340225, 34.229568, 39.137840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643253, 33.981739, 39.055660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060029, 0.379539, -0.923226,
		0.649984, 0.687079, 0.324721,
		0.757574, -0.619575, -0.205450,
		41.870525, 33.795868, 38.994026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782082, 34.570820, 38.953720>,  <41.340225, 34.229568, 39.137840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782082, 34.570820, 38.953720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865902, 34.220249, 38.780304>,  <41.916195, 34.009907, 38.676254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.865902, 34.220249, 38.780304>,  <41.782082, 34.570820, 38.953720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865902, 34.220249, 38.780304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005182, 0.444379, -0.895824,
		0.977783, 0.185476, 0.097663,
		0.209553, -0.876428, -0.433545,
		41.928768, 33.957321, 38.650242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.372543, 34.661720, 38.475079>,  <41.782082, 34.570820, 38.953720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.372543, 34.661720, 38.475079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188202, 34.327667, 38.354965>,  <42.077595, 34.127235, 38.282898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188202, 34.327667, 38.354965>,  <42.372543, 34.661720, 38.475079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188202, 34.327667, 38.354965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112986, 0.280395, -0.953212,
		0.880253, -0.473222, -0.034864,
		-0.460857, -0.835128, -0.300286,
		42.049946, 34.077129, 38.264881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743946, 34.448635, 37.806953>,  <42.372543, 34.661720, 38.475079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743946, 34.448635, 37.806953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382267, 34.277977, 37.798843>,  <42.165260, 34.175583, 37.793976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382267, 34.277977, 37.798843>,  <42.743946, 34.448635, 37.806953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382267, 34.277977, 37.798843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005096, 0.058252, -0.998289,
		0.427094, -0.902542, -0.054845,
		-0.904193, -0.426643, -0.020279,
		42.111008, 34.149982, 37.792759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651806, 34.289680, 37.076057>,  <42.743946, 34.448635, 37.806953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651806, 34.289680, 37.076057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300652, 34.165123, 37.221573>,  <42.089958, 34.090389, 37.308884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300652, 34.165123, 37.221573>,  <42.651806, 34.289680, 37.076057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300652, 34.165123, 37.221573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377403, -0.017691, -0.925880,
		0.294754, -0.950115, -0.101992,
		-0.877888, -0.311399, 0.363790,
		42.037285, 34.071705, 37.330711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387348, 33.985207, 36.522667>,  <42.651806, 34.289680, 37.076057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387348, 33.985207, 36.522667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082687, 34.002140, 36.781307>,  <41.899891, 34.012299, 36.936493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082687, 34.002140, 36.781307>,  <42.387348, 33.985207, 36.522667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082687, 34.002140, 36.781307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646971, 0.006095, -0.762490,
		-0.036219, -0.999085, 0.022745,
		-0.761654, 0.042332, 0.646600,
		41.854191, 34.014839, 36.975288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940254, 33.391472, 36.358730>,  <42.387348, 33.985207, 36.522667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940254, 33.391472, 36.358730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801552, 33.741440, 36.493950>,  <41.718330, 33.951420, 36.575081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801552, 33.741440, 36.493950>,  <41.940254, 33.391472, 36.358730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801552, 33.741440, 36.493950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604803, 0.066919, -0.793559,
		-0.716922, -0.479624, 0.505949,
		-0.346752, 0.874919, 0.338053,
		41.697525, 34.003914, 36.595367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505657, 33.452404, 35.833229>,  <41.940254, 33.391472, 36.358730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505657, 33.452404, 35.833229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392414, 33.742474, 36.084297>,  <41.324467, 33.916515, 36.234940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.392414, 33.742474, 36.084297>,  <41.505657, 33.452404, 35.833229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392414, 33.742474, 36.084297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794584, 0.189160, -0.576935,
		-0.537108, -0.662075, 0.522658,
		-0.283109, 0.725173, 0.627674,
		41.307480, 33.960026, 36.272598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838383, 33.235695, 36.248024>,  <41.505657, 33.452404, 35.833229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838383, 33.235695, 36.248024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912327, 33.614342, 36.142384>,  <40.956692, 33.841530, 36.078999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.912327, 33.614342, 36.142384>,  <40.838383, 33.235695, 36.248024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.912327, 33.614342, 36.142384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574502, -0.113942, -0.810534,
		-0.797355, 0.301562, 0.522768,
		0.184861, 0.946614, -0.264100,
		40.967785, 33.898327, 36.063152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151180, 33.585415, 36.107738>,  <40.838383, 33.235695, 36.248024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151180, 33.585415, 36.107738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453381, 33.750862, 35.904507>,  <40.634701, 33.850132, 35.782570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453381, 33.750862, 35.904507>,  <40.151180, 33.585415, 36.107738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453381, 33.750862, 35.904507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555008, -0.008016, -0.831807,
		-0.348127, 0.910413, 0.223508,
		0.755496, 0.413622, -0.508077,
		40.680031, 33.874950, 35.752083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008900, 34.333405, 36.148872>,  <40.151180, 33.585415, 36.107738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008900, 34.333405, 36.148872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331467, 34.407448, 35.924221>,  <40.525005, 34.451874, 35.789429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331467, 34.407448, 35.924221>,  <40.008900, 34.333405, 36.148872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331467, 34.407448, 35.924221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536106, -0.171967, -0.826449,
		-0.249564, 0.967555, -0.039440,
		0.806417, 0.185108, -0.561628,
		40.573391, 34.462978, 35.755733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763668, 34.671425, 35.673592>,  <40.008900, 34.333405, 36.148872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763668, 34.671425, 35.673592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103836, 34.549534, 35.502045>,  <40.307938, 34.476398, 35.399117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.103836, 34.549534, 35.502045>,  <39.763668, 34.671425, 35.673592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103836, 34.549534, 35.502045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354009, 0.271564, -0.894947,
		0.389180, 0.912904, 0.123068,
		0.850422, -0.304728, -0.428863,
		40.358963, 34.458115, 35.373386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854786, 35.120815, 35.218788>,  <39.763668, 34.671425, 35.673592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854786, 35.120815, 35.218788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104546, 34.836441, 35.089359>,  <40.254402, 34.665817, 35.011703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104546, 34.836441, 35.089359>,  <39.854786, 35.120815, 35.218788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104546, 34.836441, 35.089359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181528, 0.270830, -0.945356,
		0.759722, 0.649013, 0.040050,
		0.624396, -0.710938, -0.323569,
		40.291862, 34.623161, 34.992287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219688, 35.321926, 34.624699>,  <39.854786, 35.120815, 35.218788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219688, 35.321926, 34.624699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274628, 34.933308, 34.547508>,  <40.307590, 34.700138, 34.501194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274628, 34.933308, 34.547508>,  <40.219688, 35.321926, 34.624699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274628, 34.933308, 34.547508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119470, 0.177153, -0.976905,
		0.983291, 0.157232, -0.091738,
		0.137349, -0.971543, -0.192978,
		40.315834, 34.641846, 34.489616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570232, 35.333466, 33.990387>,  <40.219688, 35.321926, 34.624699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570232, 35.333466, 33.990387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429848, 34.959663, 34.014149>,  <40.345619, 34.735382, 34.028404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429848, 34.959663, 34.014149>,  <40.570232, 35.333466, 33.990387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429848, 34.959663, 34.014149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032736, -0.075643, -0.996597,
		0.935819, -0.347818, 0.057140,
		-0.350957, -0.934505, 0.059402,
		40.324562, 34.679314, 34.031971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877117, 35.002331, 33.461113>,  <40.570232, 35.333466, 33.990387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877117, 35.002331, 33.461113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566189, 34.763893, 33.541546>,  <40.379631, 34.620831, 33.589806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.566189, 34.763893, 33.541546>,  <40.877117, 35.002331, 33.461113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566189, 34.763893, 33.541546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068389, -0.237674, -0.968934,
		0.625371, -0.766929, 0.143983,
		-0.777325, -0.596096, 0.201084,
		40.332993, 34.585064, 33.601871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138584, 34.359791, 33.343002>,  <40.877117, 35.002331, 33.461113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138584, 34.359791, 33.343002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741474, 34.361774, 33.295055>,  <40.503208, 34.362965, 33.266285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741474, 34.361774, 33.295055>,  <41.138584, 34.359791, 33.343002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741474, 34.361774, 33.295055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112681, -0.304472, -0.945833,
		-0.041186, -0.952509, 0.301714,
		-0.992777, 0.004958, -0.119870,
		40.443642, 34.363262, 33.259094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888958, 33.780148, 32.876499>,  <41.138584, 34.359791, 33.343002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888958, 33.780148, 32.876499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616249, 34.072433, 32.862331>,  <40.452625, 34.247803, 32.853828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616249, 34.072433, 32.862331>,  <40.888958, 33.780148, 32.876499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616249, 34.072433, 32.862331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050161, -0.094997, -0.994213,
		-0.729847, -0.676045, 0.101419,
		-0.681768, 0.730711, -0.035422,
		40.411720, 34.291645, 32.851704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326912, 33.445724, 32.415066>,  <40.888958, 33.780148, 32.876499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326912, 33.445724, 32.415066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266171, 33.840485, 32.436832>,  <40.229725, 34.077343, 32.449894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.266171, 33.840485, 32.436832>,  <40.326912, 33.445724, 32.415066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266171, 33.840485, 32.436832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079790, 0.042639, -0.995899,
		-0.985177, -0.155572, 0.072271,
		-0.151852, 0.986904, 0.054420,
		40.220615, 34.136555, 32.453159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955616, 32.898701, 32.174053>,  <40.326912, 33.445724, 32.415066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955616, 32.898701, 32.174053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090328, 33.274986, 32.157848>,  <41.171154, 33.500755, 32.148125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090328, 33.274986, 32.157848>,  <40.955616, 32.898701, 32.174053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.090328, 33.274986, 32.157848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810745, -0.267836, 0.520534,
		0.478822, -0.208150, -0.852879,
		0.336781, 0.940711, -0.040511,
		41.191364, 33.557201, 32.145695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560776, 32.915771, 31.763821>,  <40.955616, 32.898701, 32.174053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560776, 32.915771, 31.763821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.537922, 33.161118, 32.078911>,  <41.524208, 33.308327, 32.267963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.537922, 33.161118, 32.078911>,  <41.560776, 32.915771, 31.763821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537922, 33.161118, 32.078911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847289, -0.387531, 0.363210,
		0.528050, 0.688184, -0.497559,
		-0.057136, 0.613369, 0.787727,
		41.520782, 33.345127, 32.315228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069351, 33.507416, 31.928120>,  <41.560776, 32.915771, 31.763821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069351, 33.507416, 31.928120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929783, 33.360958, 32.273186>,  <41.846043, 33.273083, 32.480225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.929783, 33.360958, 32.273186>,  <42.069351, 33.507416, 31.928120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.929783, 33.360958, 32.273186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928546, -0.259539, 0.265407,
		0.126718, 0.893631, 0.430541,
		-0.348918, -0.366146, 0.862666,
		41.825108, 33.251114, 32.531986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467316, 33.804737, 32.507553>,  <42.069351, 33.507416, 31.928120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467316, 33.804737, 32.507553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296490, 33.456547, 32.605446>,  <42.193993, 33.247635, 32.664181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296490, 33.456547, 32.605446>,  <42.467316, 33.804737, 32.507553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296490, 33.456547, 32.605446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869061, -0.320400, 0.376931,
		-0.249698, 0.373658, 0.893326,
		-0.427065, -0.870473, 0.244728,
		42.168369, 33.195404, 32.678864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671860, 33.680973, 33.211407>,  <42.467316, 33.804737, 32.507553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671860, 33.680973, 33.211407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537636, 33.320095, 33.103004>,  <42.457100, 33.103569, 33.037964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.537636, 33.320095, 33.103004>,  <42.671860, 33.680973, 33.211407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.537636, 33.320095, 33.103004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771003, -0.428331, 0.471262,
		-0.541250, -0.050810, 0.839325,
		-0.335564, -0.902192, -0.271008,
		42.436966, 33.049438, 33.021702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187599, 34.201992, 32.918301>,  <42.671860, 33.680973, 33.211407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187599, 34.201992, 32.918301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048168, 34.217236, 32.543697>,  <42.964508, 34.226379, 32.318935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048168, 34.217236, 32.543697>,  <43.187599, 34.201992, 32.918301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048168, 34.217236, 32.543697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356666, -0.929395, 0.094940,
		-0.866765, 0.367113, 0.337561,
		-0.348581, 0.038105, -0.936504,
		42.943592, 34.228668, 32.262745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.850079, 34.526615, 32.537178>,  <43.187599, 34.201992, 32.918301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.850079, 34.526615, 32.537178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.249229, 34.542908, 32.516827>,  <44.488720, 34.552685, 32.504616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.249229, 34.542908, 32.516827>,  <43.850079, 34.526615, 32.537178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.249229, 34.542908, 32.516827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016265, 0.600319, 0.799596,
		0.063113, -0.798723, 0.598380,
		0.997874, 0.040733, -0.050879,
		44.548592, 34.555126, 32.501564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.974384, 35.296017, 32.312580>,  <43.850079, 34.526615, 32.537178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.974384, 35.296017, 32.312580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.578197, 35.347263, 32.332806>,  <43.340485, 35.378014, 32.344940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.578197, 35.347263, 32.332806>,  <43.974384, 35.296017, 32.312580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.578197, 35.347263, 32.332806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011156, -0.291276, 0.956574,
		0.137284, 0.948021, 0.287070,
		-0.990469, 0.128120, 0.050564,
		43.281055, 35.385700, 32.347973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.663708, 35.919052, 32.745186>,  <43.974384, 35.296017, 32.312580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.663708, 35.919052, 32.745186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.479630, 35.565117, 32.716129>,  <43.369183, 35.352757, 32.698696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.479630, 35.565117, 32.716129>,  <43.663708, 35.919052, 32.745186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.479630, 35.565117, 32.716129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279131, -0.221875, 0.934268,
		-0.842798, 0.409666, 0.349092,
		-0.460193, -0.884842, -0.072645,
		43.341572, 35.299664, 32.694336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272572, 35.656944, 33.255154>,  <43.663708, 35.919052, 32.745186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272572, 35.656944, 33.255154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496643, 35.985771, 33.295956>,  <44.631084, 36.183067, 33.320438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.496643, 35.985771, 33.295956>,  <44.272572, 35.656944, 33.255154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496643, 35.985771, 33.295956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824687, -0.565044, 0.024837,
		0.078055, 0.070208, -0.994474,
		0.560178, 0.822068, 0.102004,
		44.664696, 36.232391, 33.326557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.760345, 35.806320, 32.655258>,  <44.272572, 35.656944, 33.255154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.760345, 35.806320, 32.655258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.863880, 35.933014, 33.020264>,  <44.926003, 36.009029, 33.239265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.863880, 35.933014, 33.020264>,  <44.760345, 35.806320, 32.655258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.863880, 35.933014, 33.020264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605049, -0.789571, 0.102434,
		0.752939, 0.525602, -0.396012,
		0.258841, 0.316733, 0.912514,
		44.941532, 36.028034, 33.294018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.413254, 35.722931, 32.752052>,  <44.760345, 35.806320, 32.655258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.413254, 35.722931, 32.752052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.292179, 35.720375, 33.133278>,  <45.219532, 35.718842, 33.362015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.292179, 35.720375, 33.133278>,  <45.413254, 35.722931, 32.752052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.292179, 35.720375, 33.133278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606973, -0.772265, 0.187591,
		0.734822, 0.635268, 0.237636,
		-0.302689, -0.006393, 0.953068,
		45.201374, 35.718456, 33.419197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.036839, 35.828827, 33.173630>,  <45.413254, 35.722931, 32.752052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.036839, 35.828827, 33.173630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.756542, 35.625324, 33.373680>,  <45.588364, 35.503223, 33.493710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.756542, 35.625324, 33.373680>,  <46.036839, 35.828827, 33.173630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.756542, 35.625324, 33.373680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645219, -0.751055, 0.140029,
		0.304382, 0.420816, 0.854555,
		-0.700745, -0.508753, 0.500127,
		45.546318, 35.472698, 33.523720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.155632, 35.715355, 33.856579>,  <46.036839, 35.828827, 33.173630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.155632, 35.715355, 33.856579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.917988, 35.419250, 33.730698>,  <45.775402, 35.241589, 33.655170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.917988, 35.419250, 33.730698>,  <46.155632, 35.715355, 33.856579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.917988, 35.419250, 33.730698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730942, -0.660160, 0.172955,
		-0.335787, -0.127275, 0.933300,
		-0.594114, -0.740263, -0.314704,
		45.739754, 35.197170, 33.636288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.170376, 35.163094, 34.360172>,  <46.155632, 35.715355, 33.856579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.170376, 35.163094, 34.360172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.143929, 35.053394, 33.976418>,  <46.128059, 34.987576, 33.746166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.143929, 35.053394, 33.976418>,  <46.170376, 35.163094, 34.360172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.143929, 35.053394, 33.976418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929721, -0.366026, 0.040555,
		-0.362281, -0.889276, 0.279179,
		-0.066122, -0.274251, -0.959382,
		46.124092, 34.971119, 33.688602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.254013, 34.479633, 34.191528>,  <46.170376, 35.163094, 34.360172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.254013, 34.479633, 34.191528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.403233, 34.693558, 33.888264>,  <46.492764, 34.821911, 33.706306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.403233, 34.693558, 33.888264>,  <46.254013, 34.479633, 34.191528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.403233, 34.693558, 33.888264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909777, -0.371181, 0.185822,
		-0.182035, -0.759079, -0.625030,
		0.373053, 0.534812, -0.758161,
		46.515148, 34.854000, 33.660816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.664570, 34.104248, 33.708126>,  <46.254013, 34.479633, 34.191528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.664570, 34.104248, 33.708126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.777412, 34.488003, 33.708107>,  <46.845119, 34.718254, 33.708096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.777412, 34.488003, 33.708107>,  <46.664570, 34.104248, 33.708126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.777412, 34.488003, 33.708107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853207, -0.250862, 0.457281,
		0.438694, -0.129047, -0.889322,
		0.282108, 0.959383, -0.000052,
		46.862045, 34.775818, 33.708092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.404209, 34.036743, 33.581017>,  <46.664570, 34.104248, 33.708126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.404209, 34.036743, 33.581017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.295986, 34.371784, 33.770844>,  <47.231052, 34.572807, 33.884739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.295986, 34.371784, 33.770844>,  <47.404209, 34.036743, 33.581017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.295986, 34.371784, 33.770844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683262, -0.180200, 0.707588,
		0.678195, 0.515703, -0.523547,
		-0.270562, 0.837603, 0.474571,
		47.214817, 34.623066, 33.913216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.982063, 34.195728, 33.967823>,  <47.404209, 34.036743, 33.581017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.982063, 34.195728, 33.967823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.678600, 34.405060, 34.123032>,  <47.496521, 34.530659, 34.216156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.678600, 34.405060, 34.123032>,  <47.982063, 34.195728, 33.967823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.678600, 34.405060, 34.123032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566399, 0.235525, 0.789760,
		0.321914, 0.818935, -0.475096,
		-0.758659, 0.523329, 0.388025,
		47.451004, 34.562057, 34.239441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.039043, 34.935726, 34.174831>,  <47.982063, 34.195728, 33.967823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.039043, 34.935726, 34.174831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.831226, 34.725567, 34.444359>,  <47.706535, 34.599472, 34.606075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.831226, 34.725567, 34.444359>,  <48.039043, 34.935726, 34.174831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.831226, 34.725567, 34.444359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669008, 0.240420, 0.703297,
		-0.531509, 0.816185, 0.226584,
		-0.519545, -0.525395, 0.673820,
		47.675362, 34.567947, 34.646503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.905525, 35.310028, 34.852974>,  <48.039043, 34.935726, 34.174831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.905525, 35.310028, 34.852974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.892094, 34.916607, 34.923973>,  <47.884037, 34.680553, 34.966572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.892094, 34.916607, 34.923973>,  <47.905525, 35.310028, 34.852974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.892094, 34.916607, 34.923973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667274, 0.110155, 0.736622,
		-0.744055, 0.143170, 0.652598,
		-0.033575, -0.983549, 0.177495,
		47.882023, 34.621544, 34.977222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.136177, 30.195553, 25.495247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.741028, 30.256880, 25.485405>,  <33.503941, 30.293676, 25.479500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.741028, 30.256880, 25.485405>,  <34.136177, 30.195553, 25.495247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741028, 30.256880, 25.485405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048238, 0.453627, 0.889885,
		0.147594, 0.877905, -0.455520,
		-0.987871, 0.153316, -0.024604,
		33.444668, 30.302874, 25.478024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044338, 30.865503, 25.706587>,  <34.136177, 30.195553, 25.495247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044338, 30.865503, 25.706587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.698402, 30.680828, 25.785482>,  <33.490841, 30.570023, 25.832819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.698402, 30.680828, 25.785482>,  <34.044338, 30.865503, 25.706587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698402, 30.680828, 25.785482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017346, 0.420107, 0.907309,
		-0.501756, 0.781252, -0.371331,
		-0.864836, -0.461688, 0.197240,
		33.438953, 30.542322, 25.844654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684864, 31.438042, 25.987541>,  <34.044338, 30.865503, 25.706587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684864, 31.438042, 25.987541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.513344, 31.095585, 26.102882>,  <33.410431, 30.890110, 26.172087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.513344, 31.095585, 26.102882>,  <33.684864, 31.438042, 25.987541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513344, 31.095585, 26.102882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125287, 0.372462, 0.919552,
		-0.894668, 0.358179, -0.266976,
		-0.428803, -0.856142, 0.288355,
		33.384705, 30.838741, 26.189388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108742, 31.651402, 26.400782>,  <33.684864, 31.438042, 25.987541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108742, 31.651402, 26.400782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.146675, 31.265263, 26.498032>,  <33.169437, 31.033579, 26.556381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.146675, 31.265263, 26.498032>,  <33.108742, 31.651402, 26.400782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146675, 31.265263, 26.498032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239581, 0.214914, 0.946791,
		-0.966234, -0.148037, -0.210897,
		0.094835, -0.965348, 0.243124,
		33.175125, 30.975658, 26.570969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491673, 31.462814, 26.732538>,  <33.108742, 31.651402, 26.400782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491673, 31.462814, 26.732538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.775864, 31.209520, 26.855333>,  <32.946377, 31.057545, 26.929010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.775864, 31.209520, 26.855333>,  <32.491673, 31.462814, 26.732538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.775864, 31.209520, 26.855333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170483, 0.268360, 0.948113,
		-0.682761, -0.725946, 0.082707,
		0.710474, -0.633234, 0.306987,
		32.989006, 31.019550, 26.947430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352623, 31.205229, 27.495665>,  <32.491673, 31.462814, 26.732538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352623, 31.205229, 27.495665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.736649, 31.113270, 27.431892>,  <32.967064, 31.058094, 27.393629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.736649, 31.113270, 27.431892>,  <32.352623, 31.205229, 27.495665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736649, 31.113270, 27.431892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209074, 0.210910, 0.954885,
		-0.185901, -0.950086, 0.250554,
		0.960067, -0.229898, -0.159429,
		33.024670, 31.044300, 27.384064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497921, 30.867439, 28.133121>,  <32.352623, 31.205229, 27.495665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497921, 30.867439, 28.133121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.849464, 30.982939, 27.981207>,  <33.060390, 31.052238, 27.890059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.849464, 30.982939, 27.981207>,  <32.497921, 30.867439, 28.133121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849464, 30.982939, 27.981207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296130, 0.293981, 0.908780,
		0.374060, -0.911152, 0.172859,
		0.878855, 0.288750, -0.379787,
		33.113121, 31.069563, 27.867271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011593, 30.755188, 28.720846>,  <32.497921, 30.867439, 28.133121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011593, 30.755188, 28.720846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.224968, 30.976011, 28.464510>,  <33.352993, 31.108505, 28.310709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.224968, 30.976011, 28.464510>,  <33.011593, 30.755188, 28.720846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224968, 30.976011, 28.464510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570906, 0.324030, 0.754367,
		0.624105, -0.768268, -0.142322,
		0.533440, 0.552058, -0.640838,
		33.384998, 31.141628, 28.272259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720886, 30.498161, 28.675905>,  <33.011593, 30.755188, 28.720846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720886, 30.498161, 28.675905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.731052, 30.881556, 28.562304>,  <33.737152, 31.111593, 28.494143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.731052, 30.881556, 28.562304>,  <33.720886, 30.498161, 28.675905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731052, 30.881556, 28.562304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612812, 0.209518, 0.761947,
		0.789820, -0.193406, -0.582047,
		0.025416, 0.958486, -0.284003,
		33.738678, 31.169102, 28.477102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520763, 30.729549, 28.758169>,  <33.720886, 30.498161, 28.675905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520763, 30.729549, 28.758169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.287163, 31.054220, 28.762568>,  <34.147003, 31.249023, 28.765207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.287163, 31.054220, 28.762568>,  <34.520763, 30.729549, 28.758169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287163, 31.054220, 28.762568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647264, 0.457448, 0.609746,
		0.489886, 0.363212, -0.792521,
		-0.584004, 0.811677, 0.010997,
		34.111961, 31.297724, 28.765867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009682, 31.301744, 28.797840>,  <34.520763, 30.729549, 28.758169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009682, 31.301744, 28.797840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.659977, 31.461031, 28.908903>,  <34.450153, 31.556602, 28.975542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.659977, 31.461031, 28.908903>,  <35.009682, 31.301744, 28.797840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659977, 31.461031, 28.908903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466166, 0.529005, 0.709114,
		0.135498, 0.749385, -0.648122,
		-0.874259, 0.398216, 0.277659,
		34.397697, 31.580496, 28.992201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065224, 32.057381, 28.850733>,  <35.009682, 31.301744, 28.797840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065224, 32.057381, 28.850733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.760372, 31.992872, 29.101542>,  <34.577461, 31.954168, 29.252028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.760372, 31.992872, 29.101542>,  <35.065224, 32.057381, 28.850733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760372, 31.992872, 29.101542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405710, 0.635776, 0.656649,
		-0.504542, 0.754839, -0.419113,
		-0.762126, -0.161269, 0.627022,
		34.531734, 31.944492, 29.289648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768375, 32.660923, 28.946484>,  <35.065224, 32.057381, 28.850733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768375, 32.660923, 28.946484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.705505, 32.438450, 29.272909>,  <34.667782, 32.304966, 29.468765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.705505, 32.438450, 29.272909>,  <34.768375, 32.660923, 28.946484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705505, 32.438450, 29.272909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474074, 0.682406, 0.556395,
		-0.866342, 0.474328, 0.156410,
		-0.157178, -0.556179, 0.816064,
		34.658352, 32.271595, 29.517729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003998, 33.067368, 29.473751>,  <34.768375, 32.660923, 28.946484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003998, 33.067368, 29.473751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.956886, 32.743450, 29.703661>,  <34.928619, 32.549099, 29.841606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.956886, 32.743450, 29.703661>,  <35.003998, 33.067368, 29.473751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956886, 32.743450, 29.703661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444444, 0.474610, 0.759747,
		-0.888030, 0.344939, 0.304007,
		-0.117781, -0.809792, 0.574774,
		34.921551, 32.500511, 29.876093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815491, 33.314854, 30.114014>,  <35.003998, 33.067368, 29.473751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815491, 33.314854, 30.114014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.941978, 32.947231, 30.208109>,  <35.017872, 32.726658, 30.264566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.941978, 32.947231, 30.208109>,  <34.815491, 33.314854, 30.114014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941978, 32.947231, 30.208109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514919, 0.374533, 0.771093,
		-0.796784, -0.122704, 0.591675,
		0.316218, -0.919059, 0.235239,
		35.036842, 32.671513, 30.278681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698078, 33.218334, 30.756872>,  <34.815491, 33.314854, 30.114014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698078, 33.218334, 30.756872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.984051, 32.944920, 30.698013>,  <35.155632, 32.780869, 30.662699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.984051, 32.944920, 30.698013>,  <34.698078, 33.218334, 30.756872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984051, 32.944920, 30.698013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491275, 0.341330, 0.801338,
		-0.497520, -0.645190, 0.579831,
		0.714929, -0.683538, -0.147147,
		35.198528, 32.739857, 30.653870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770332, 32.838444, 31.445841>,  <34.698078, 33.218334, 30.756872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770332, 32.838444, 31.445841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.113697, 32.778641, 31.249565>,  <35.319717, 32.742760, 31.131800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.113697, 32.778641, 31.249565>,  <34.770332, 32.838444, 31.445841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113697, 32.778641, 31.249565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509265, 0.133769, 0.850150,
		-0.061469, -0.979669, 0.190970,
		0.858412, -0.149512, -0.490689,
		35.371220, 32.733788, 31.102358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089390, 32.274860, 31.800684>,  <34.770332, 32.838444, 31.445841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089390, 32.274860, 31.800684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.388027, 32.461700, 31.611198>,  <35.567211, 32.573807, 31.497507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.388027, 32.461700, 31.611198>,  <35.089390, 32.274860, 31.800684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388027, 32.461700, 31.611198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504402, 0.066851, 0.860878,
		0.433789, -0.881671, -0.185698,
		0.746597, 0.467105, -0.473716,
		35.612007, 32.601833, 31.469084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751511, 31.893763, 32.052685>,  <35.089390, 32.274860, 31.800684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751511, 31.893763, 32.052685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.814766, 32.263737, 31.914413>,  <35.852718, 32.485722, 31.831451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.814766, 32.263737, 31.914413>,  <35.751511, 31.893763, 32.052685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814766, 32.263737, 31.914413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577271, 0.197421, 0.792328,
		0.801094, -0.324841, -0.502719,
		0.158133, 0.924934, -0.345674,
		35.862206, 32.541218, 31.810711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436768, 32.117813, 32.213009>,  <35.751511, 31.893763, 32.052685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436768, 32.117813, 32.213009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.243874, 32.462639, 32.150650>,  <36.128139, 32.669533, 32.113235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.243874, 32.462639, 32.150650>,  <36.436768, 32.117813, 32.213009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243874, 32.462639, 32.150650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487163, 0.411785, 0.770133,
		0.728096, 0.295437, -0.618540,
		-0.482232, 0.862061, -0.155893,
		36.099205, 32.721256, 32.103882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997162, 32.562378, 32.264095>,  <36.436768, 32.117813, 32.213009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997162, 32.562378, 32.264095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.664944, 32.777760, 32.321033>,  <36.465614, 32.906990, 32.355198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.664944, 32.777760, 32.321033>,  <36.997162, 32.562378, 32.264095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664944, 32.777760, 32.321033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373078, 0.348102, 0.860022,
		0.413531, 0.767393, -0.490000,
		-0.830545, 0.538454, 0.142347,
		36.415779, 32.939297, 32.363739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409180, 32.579147, 31.650585>,  <36.997162, 32.562378, 32.264095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409180, 32.579147, 31.650585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.790119, 32.581455, 31.772564>,  <38.018684, 32.582840, 31.845751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.790119, 32.581455, 31.772564>,  <37.409180, 32.579147, 31.650585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790119, 32.581455, 31.772564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269076, -0.486657, -0.831122,
		0.143613, 0.873574, -0.465019,
		0.952352, 0.005765, 0.304948,
		38.075825, 32.583183, 31.864048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661350, 32.932884, 31.178782>,  <37.409180, 32.579147, 31.650585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661350, 32.932884, 31.178782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.945606, 32.689884, 31.320728>,  <38.116158, 32.544083, 31.405897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.945606, 32.689884, 31.320728>,  <37.661350, 32.932884, 31.178782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945606, 32.689884, 31.320728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077129, -0.434082, -0.897565,
		0.699317, 0.665215, -0.261619,
		0.710638, -0.607504, 0.354869,
		38.158798, 32.507633, 31.427189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150459, 33.045292, 30.696835>,  <37.661350, 32.932884, 31.178782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150459, 33.045292, 30.696835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.246616, 32.695652, 30.865669>,  <38.304310, 32.485867, 30.966970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.246616, 32.695652, 30.865669>,  <38.150459, 33.045292, 30.696835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246616, 32.695652, 30.865669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037127, -0.426240, -0.903848,
		0.969965, 0.232952, -0.070014,
		0.240396, -0.874101, 0.422087,
		38.318737, 32.433422, 30.992294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748100, 32.682858, 30.324512>,  <38.150459, 33.045292, 30.696835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748100, 32.682858, 30.324512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.576885, 32.387951, 30.533596>,  <38.474155, 32.211006, 30.659046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.576885, 32.387951, 30.533596>,  <38.748100, 32.682858, 30.324512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576885, 32.387951, 30.533596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135831, -0.624281, -0.769300,
		0.893497, -0.258287, 0.367357,
		-0.428034, -0.737266, 0.522710,
		38.448475, 32.166771, 30.690409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148685, 32.081669, 30.286177>,  <38.748100, 32.682858, 30.324512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148685, 32.081669, 30.286177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.787598, 31.936226, 30.378174>,  <38.570946, 31.848961, 30.433372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.787598, 31.936226, 30.378174>,  <39.148685, 32.081669, 30.286177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787598, 31.936226, 30.378174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093413, -0.687461, -0.720188,
		0.419973, -0.628641, 0.654547,
		-0.902716, -0.363603, 0.229992,
		38.516785, 31.827145, 30.447172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159733, 31.404953, 29.946150>,  <39.148685, 32.081669, 30.286177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159733, 31.404953, 29.946150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777256, 31.411434, 30.063072>,  <38.547771, 31.415323, 30.133224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.777256, 31.411434, 30.063072>,  <39.159733, 31.404953, 29.946150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777256, 31.411434, 30.063072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209508, -0.735258, -0.644594,
		0.204477, -0.677594, 0.706439,
		-0.956188, 0.016200, 0.292305,
		38.490398, 31.416294, 30.150764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947098, 30.726128, 29.873783>,  <39.159733, 31.404953, 29.946150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947098, 30.726128, 29.873783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.614971, 30.947691, 29.849289>,  <38.415695, 31.080629, 29.834593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.614971, 30.947691, 29.849289>,  <38.947098, 30.726128, 29.873783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614971, 30.947691, 29.849289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290545, -0.524041, -0.800603,
		-0.475548, -0.646969, 0.596059,
		-0.830324, 0.553907, -0.061233,
		38.365875, 31.113865, 29.830917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492470, 30.247839, 29.804728>,  <38.947098, 30.726128, 29.873783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492470, 30.247839, 29.804728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.296185, 30.573599, 29.680822>,  <38.178413, 30.769054, 29.606480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.296185, 30.573599, 29.680822>,  <38.492470, 30.247839, 29.804728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296185, 30.573599, 29.680822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371817, -0.517235, -0.770857,
		-0.788006, -0.263095, 0.556622,
		-0.490713, 0.814401, -0.309761,
		38.148972, 30.817919, 29.587894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794289, 30.046465, 29.623590>,  <38.492470, 30.247839, 29.804728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794289, 30.046465, 29.623590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.883686, 30.382433, 29.425770>,  <37.937325, 30.584015, 29.307077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.883686, 30.382433, 29.425770>,  <37.794289, 30.046465, 29.623590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883686, 30.382433, 29.425770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420741, -0.374547, -0.826252,
		-0.879219, 0.392743, 0.269679,
		0.223497, 0.839921, -0.494552,
		37.950737, 30.634409, 29.277405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231129, 30.198048, 29.063828>,  <37.794289, 30.046465, 29.623590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231129, 30.198048, 29.063828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.545723, 30.420538, 28.956457>,  <37.734478, 30.554031, 28.892035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.545723, 30.420538, 28.956457>,  <37.231129, 30.198048, 29.063828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545723, 30.420538, 28.956457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103925, -0.309232, -0.945291,
		-0.608801, 0.771355, -0.185401,
		0.786487, 0.556226, -0.268424,
		37.781670, 30.587406, 28.875931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015781, 30.447817, 28.469250>,  <37.231129, 30.198048, 29.063828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.015781, 30.447817, 28.469250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.410538, 30.507561, 28.444799>,  <37.647392, 30.543407, 28.430130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.410538, 30.507561, 28.444799>,  <37.015781, 30.447817, 28.469250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410538, 30.507561, 28.444799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002835, -0.362652, -0.931920,
		-0.161357, 0.919878, -0.357475,
		0.986892, 0.149359, -0.061124,
		37.706604, 30.552368, 28.426462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141861, 30.776855, 27.847136>,  <37.015781, 30.447817, 28.469250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141861, 30.776855, 27.847136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.503120, 30.633539, 27.941751>,  <37.719875, 30.547550, 27.998522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.503120, 30.633539, 27.941751>,  <37.141861, 30.776855, 27.847136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503120, 30.633539, 27.941751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108170, -0.343283, -0.932982,
		0.415477, 0.868209, -0.271280,
		0.903149, -0.358288, 0.236541,
		37.774067, 30.526052, 28.012714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643379, 31.002968, 27.389719>,  <37.141861, 30.776855, 27.847136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643379, 31.002968, 27.389719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.761292, 30.649132, 27.534277>,  <37.832039, 30.436831, 27.621012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.761292, 30.649132, 27.534277>,  <37.643379, 31.002968, 27.389719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761292, 30.649132, 27.534277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146814, -0.331786, -0.931860,
		0.944220, 0.327750, 0.032067,
		0.294778, -0.884589, 0.361397,
		37.849724, 30.383755, 27.642696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972820, 30.680155, 26.853487>,  <37.643379, 31.002968, 27.389719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972820, 30.680155, 26.853487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.937923, 30.369307, 27.102797>,  <37.916985, 30.182796, 27.252382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.937923, 30.369307, 27.102797>,  <37.972820, 30.680155, 26.853487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937923, 30.369307, 27.102797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138486, -0.610123, -0.780110,
		0.986514, -0.154372, -0.054393,
		-0.087240, -0.777122, 0.623274,
		37.911751, 30.136169, 27.289778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403774, 30.194248, 26.589622>,  <37.972820, 30.680155, 26.853487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403774, 30.194248, 26.589622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.109123, 30.038263, 26.810640>,  <37.932331, 29.944672, 26.943251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.109123, 30.038263, 26.810640>,  <38.403774, 30.194248, 26.589622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109123, 30.038263, 26.810640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330959, -0.504638, -0.797375,
		0.589780, -0.770241, 0.242670,
		-0.736631, -0.389962, 0.552544,
		37.888134, 29.921274, 26.976404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342861, 29.429783, 26.287239>,  <38.403774, 30.194248, 26.589622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342861, 29.429783, 26.287239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.021427, 29.550142, 26.492653>,  <37.828568, 29.622358, 26.615902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.021427, 29.550142, 26.492653>,  <38.342861, 29.429783, 26.287239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021427, 29.550142, 26.492653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595032, -0.426335, -0.681304,
		0.013934, -0.853052, 0.521639,
		-0.803581, 0.300899, 0.513534,
		37.780354, 29.640411, 26.646713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918556, 28.896755, 26.147596>,  <38.342861, 29.429783, 26.287239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918556, 28.896755, 26.147596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.678474, 29.185453, 26.285488>,  <37.534428, 29.358673, 26.368223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.678474, 29.185453, 26.285488>,  <37.918556, 28.896755, 26.147596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678474, 29.185453, 26.285488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769967, -0.404659, -0.493357,
		-0.216581, -0.561544, 0.798599,
		-0.600202, 0.721747, 0.344730,
		37.498413, 29.401978, 26.388906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307297, 28.448336, 26.398590>,  <37.918556, 28.896755, 26.147596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307297, 28.448336, 26.398590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.230801, 28.823799, 26.283808>,  <37.184902, 29.049078, 26.214939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.230801, 28.823799, 26.283808>,  <37.307297, 28.448336, 26.398590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230801, 28.823799, 26.283808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826037, -0.311823, -0.469500,
		-0.530180, 0.147250, 0.835001,
		-0.191239, 0.938661, -0.286956,
		37.173428, 29.105398, 26.197721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588379, 28.476191, 26.381575>,  <37.307297, 28.448336, 26.398590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588379, 28.476191, 26.381575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.691845, 28.803759, 26.176651>,  <36.753925, 29.000299, 26.053696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.691845, 28.803759, 26.176651>,  <36.588379, 28.476191, 26.381575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691845, 28.803759, 26.176651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625282, -0.262305, -0.734995,
		-0.736284, 0.510458, 0.444206,
		0.258667, 0.818919, -0.512311,
		36.769444, 29.049435, 26.022957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.964378, 28.769789, 26.117929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.232670, 28.951710, 25.883572>,  <36.393646, 29.060863, 25.742958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.232670, 28.951710, 25.883572>,  <35.964378, 28.769789, 26.117929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232670, 28.951710, 25.883572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635861, -0.054069, -0.769907,
		-0.381835, 0.888949, 0.252926,
		0.670733, 0.454804, -0.585893,
		36.433891, 29.088150, 25.707804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482178, 29.224218, 25.829134>,  <35.964378, 28.769789, 26.117929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482178, 29.224218, 25.829134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.801151, 29.227934, 25.587799>,  <35.992535, 29.230164, 25.442999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.801151, 29.227934, 25.587799>,  <35.482178, 29.224218, 25.829134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801151, 29.227934, 25.587799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599171, 0.130480, -0.789917,
		0.071387, 0.991408, 0.109614,
		0.797432, 0.009287, -0.603337,
		36.040382, 29.230721, 25.406797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287868, 29.663506, 25.256386>,  <35.482178, 29.224218, 25.829134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287868, 29.663506, 25.256386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.604389, 29.471485, 25.104914>,  <35.794300, 29.356274, 25.014030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.604389, 29.471485, 25.104914>,  <35.287868, 29.663506, 25.256386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604389, 29.471485, 25.104914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418376, 0.026539, -0.907886,
		0.445881, 0.876839, -0.179841,
		0.791298, -0.480050, -0.378681,
		35.841778, 29.327471, 24.991310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432484, 30.012522, 24.688978>,  <35.287868, 29.663506, 25.256386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432484, 30.012522, 24.688978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.578056, 29.643511, 24.637604>,  <35.665401, 29.422104, 24.606779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.578056, 29.643511, 24.637604>,  <35.432484, 30.012522, 24.688978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578056, 29.643511, 24.637604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402407, -0.031370, -0.914923,
		0.840013, 0.384653, -0.382648,
		0.363931, -0.922528, -0.128436,
		35.687237, 29.366753, 24.599073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587658, 30.169565, 24.061155>,  <35.432484, 30.012522, 24.688978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587658, 30.169565, 24.061155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.634003, 29.774374, 24.102089>,  <35.661812, 29.537258, 24.126650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.634003, 29.774374, 24.102089>,  <35.587658, 30.169565, 24.061155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634003, 29.774374, 24.102089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274369, -0.130855, -0.952680,
		0.954619, 0.082304, -0.286232,
		0.115864, -0.987979, 0.102335,
		35.668762, 29.477980, 24.132790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061417, 29.896473, 23.507780>,  <35.587658, 30.169565, 24.061155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061417, 29.896473, 23.507780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.817055, 29.610182, 23.643148>,  <35.670437, 29.438408, 23.724369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.817055, 29.610182, 23.643148>,  <36.061417, 29.896473, 23.507780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817055, 29.610182, 23.643148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317721, -0.169890, -0.932840,
		0.725155, -0.677400, -0.123616,
		-0.610904, -0.715729, 0.338420,
		35.633785, 29.395464, 23.744675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949818, 29.362358, 22.948206>,  <36.061417, 29.896473, 23.507780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949818, 29.362358, 22.948206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.631123, 29.276922, 23.174335>,  <35.439907, 29.225660, 23.310013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.631123, 29.276922, 23.174335>,  <35.949818, 29.362358, 22.948206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631123, 29.276922, 23.174335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565167, -0.067924, -0.822175,
		0.214007, -0.974559, -0.066596,
		-0.796735, -0.213589, 0.565325,
		35.392101, 29.212845, 23.343933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633564, 28.758991, 22.703028>,  <35.949818, 29.362358, 22.948206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633564, 28.758991, 22.703028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.330002, 28.910162, 22.915154>,  <35.147865, 29.000866, 23.042429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.330002, 28.910162, 22.915154>,  <35.633564, 28.758991, 22.703028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330002, 28.910162, 22.915154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605270, -0.108950, -0.788529,
		-0.240229, -0.919402, 0.311432,
		-0.758906, 0.377928, 0.530314,
		35.102329, 29.023540, 23.074247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147774, 28.173595, 22.719616>,  <35.633564, 28.758991, 22.703028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147774, 28.173595, 22.719616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.933037, 28.503582, 22.790306>,  <34.804195, 28.701574, 22.832720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.933037, 28.503582, 22.790306>,  <35.147774, 28.173595, 22.719616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933037, 28.503582, 22.790306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606462, -0.231714, -0.760600,
		-0.586520, -0.515498, 0.624705,
		-0.536840, 0.824967, 0.176725,
		34.771984, 28.751072, 22.843325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476677, 28.001293, 22.644438>,  <35.147774, 28.173595, 22.719616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476677, 28.001293, 22.644438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.463833, 28.398819, 22.601912>,  <34.456127, 28.637335, 22.576397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.463833, 28.398819, 22.601912>,  <34.476677, 28.001293, 22.644438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463833, 28.398819, 22.601912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552559, -0.106287, -0.826668,
		-0.832854, 0.032200, 0.552554,
		-0.032110, 0.993814, -0.106314,
		34.454201, 28.696962, 22.570017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777611, 28.127949, 22.496582>,  <34.476677, 28.001293, 22.644438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777611, 28.127949, 22.496582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.952942, 28.475592, 22.404911>,  <34.058140, 28.684177, 22.349909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.952942, 28.475592, 22.404911>,  <33.777611, 28.127949, 22.496582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952942, 28.475592, 22.404911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596262, 0.090375, -0.797687,
		-0.672565, 0.486295, 0.557829,
		0.438325, 0.869108, -0.229176,
		34.084438, 28.736324, 22.336159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217552, 28.593172, 22.330032>,  <33.777611, 28.127949, 22.496582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217552, 28.593172, 22.330032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.539509, 28.730658, 22.136534>,  <33.732681, 28.813148, 22.020433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.539509, 28.730658, 22.136534>,  <33.217552, 28.593172, 22.330032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539509, 28.730658, 22.136534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548996, 0.121814, -0.826901,
		-0.225290, 0.931140, 0.286745,
		0.804890, 0.343714, -0.483749,
		33.780975, 28.833773, 21.991409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048401, 29.174103, 22.130306>,  <33.217552, 28.593172, 22.330032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048401, 29.174103, 22.130306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.363888, 29.104792, 21.894375>,  <33.553181, 29.063206, 21.752817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.363888, 29.104792, 21.894375>,  <33.048401, 29.174103, 22.130306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363888, 29.104792, 21.894375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519498, 0.325139, -0.790194,
		0.328699, 0.929656, 0.166426,
		0.788720, -0.173278, -0.589827,
		33.600502, 29.052809, 21.717426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099037, 29.731459, 21.770712>,  <33.048401, 29.174103, 22.130306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099037, 29.731459, 21.770712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.277786, 29.447681, 21.552725>,  <33.385036, 29.277414, 21.421932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.277786, 29.447681, 21.552725>,  <33.099037, 29.731459, 21.770712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277786, 29.447681, 21.552725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502678, 0.304782, -0.808964,
		0.740011, 0.635451, -0.220421,
		0.446877, -0.709443, -0.544969,
		33.411850, 29.234848, 21.389235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415634, 30.024033, 21.112183>,  <33.099037, 29.731459, 21.770712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415634, 30.024033, 21.112183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.351833, 29.633574, 21.053268>,  <33.313553, 29.399298, 21.017920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.351833, 29.633574, 21.053268>,  <33.415634, 30.024033, 21.112183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351833, 29.633574, 21.053268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385169, 0.198904, -0.901156,
		0.908958, -0.087002, -0.407707,
		-0.159497, -0.976149, -0.147285,
		33.303986, 29.340729, 21.009083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692310, 29.899876, 20.509726>,  <33.415634, 30.024033, 21.112183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692310, 29.899876, 20.509726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.422020, 29.608679, 20.556063>,  <33.259846, 29.433960, 20.583864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.422020, 29.608679, 20.556063>,  <33.692310, 29.899876, 20.509726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422020, 29.608679, 20.556063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268278, 0.096496, -0.958497,
		0.686601, -0.678760, -0.260509,
		-0.675727, -0.727993, 0.115842,
		33.219303, 29.390282, 20.590815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909729, 29.406765, 20.027054>,  <33.692310, 29.899876, 20.509726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909729, 29.406765, 20.027054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.531189, 29.311686, 20.114614>,  <33.304066, 29.254637, 20.167150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.531189, 29.311686, 20.114614>,  <33.909729, 29.406765, 20.027054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531189, 29.311686, 20.114614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231186, 0.024736, -0.972595,
		0.225772, -0.971023, -0.078361,
		-0.946351, -0.237701, 0.218902,
		33.247284, 29.240376, 20.180285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695614, 29.003277, 19.482315>,  <33.909729, 29.406765, 20.027054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695614, 29.003277, 19.482315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.330791, 29.070992, 19.631710>,  <33.111897, 29.111620, 19.721348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.330791, 29.070992, 19.631710>,  <33.695614, 29.003277, 19.482315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330791, 29.070992, 19.631710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393762, -0.107308, -0.912927,
		-0.114467, -0.979708, 0.164529,
		-0.912057, 0.169286, 0.373489,
		33.057175, 29.121778, 19.743757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291420, 28.501888, 19.164770>,  <33.695614, 29.003277, 19.482315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291420, 28.501888, 19.164770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.050236, 28.799139, 19.280838>,  <32.905525, 28.977489, 19.350479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.050236, 28.799139, 19.280838>,  <33.291420, 28.501888, 19.164770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050236, 28.799139, 19.280838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360901, 0.070287, -0.929952,
		-0.711467, -0.665449, 0.225814,
		-0.602963, 0.743127, 0.290168,
		32.869347, 29.022078, 19.367887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640614, 28.271120, 18.956493>,  <33.291420, 28.501888, 19.164770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640614, 28.271120, 18.956493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.634861, 28.670467, 18.978607>,  <32.631409, 28.910076, 18.991875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.634861, 28.670467, 18.978607>,  <32.640614, 28.271120, 18.956493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634861, 28.670467, 18.978607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409578, 0.044558, -0.911186,
		-0.912162, -0.035744, 0.408268,
		-0.014378, 0.998367, 0.055284,
		32.630547, 28.969978, 18.995192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019604, 28.430197, 18.636347>,  <32.640614, 28.271120, 18.956493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019604, 28.430197, 18.636347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.210396, 28.781616, 18.626276>,  <32.324871, 28.992468, 18.620234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.210396, 28.781616, 18.626276>,  <32.019604, 28.430197, 18.636347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210396, 28.781616, 18.626276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480411, 0.236625, -0.844520,
		-0.735996, 0.414918, 0.534932,
		0.476985, 0.878551, -0.025177,
		32.353493, 29.045181, 18.618723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531094, 28.867046, 18.406637>,  <32.019604, 28.430197, 18.636347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531094, 28.867046, 18.406637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.893061, 29.028566, 18.352871>,  <32.110241, 29.125479, 18.320612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.893061, 29.028566, 18.352871>,  <31.531094, 28.867046, 18.406637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893061, 29.028566, 18.352871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274031, 0.311195, -0.909981,
		-0.325621, 0.860293, 0.392260,
		0.904919, 0.403800, -0.134415,
		32.164536, 29.149706, 18.312546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518492, 29.601450, 18.321859>,  <31.531094, 28.867046, 18.406637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518492, 29.601450, 18.321859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.841413, 29.445126, 18.144985>,  <32.035168, 29.351332, 18.038860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.841413, 29.445126, 18.144985>,  <31.518492, 29.601450, 18.321859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841413, 29.445126, 18.144985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351661, 0.283141, -0.892281,
		0.473914, 0.875841, 0.091148,
		0.807304, -0.390812, -0.442184,
		32.083603, 29.327883, 18.012331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242048, 30.061460, 17.738024>,  <31.518492, 29.601450, 18.321859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242048, 30.061460, 17.738024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.878860, 30.228804, 17.728510>,  <30.660948, 30.329208, 17.722801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.878860, 30.228804, 17.728510>,  <31.242048, 30.061460, 17.738024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878860, 30.228804, 17.728510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090997, 0.252268, 0.963369,
		0.409033, 0.872547, -0.267121,
		-0.907971, 0.418357, -0.023787,
		30.606468, 30.354311, 17.721375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274845, 30.792997, 18.032631>,  <31.242048, 30.061460, 17.738024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274845, 30.792997, 18.032631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.905907, 30.646931, 18.083120>,  <30.684544, 30.559290, 18.113415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.905907, 30.646931, 18.083120>,  <31.274845, 30.792997, 18.032631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905907, 30.646931, 18.083120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011599, 0.352715, 0.935659,
		-0.386194, 0.861536, -0.329560,
		-0.922344, -0.365169, 0.126224,
		30.629204, 30.537380, 18.120987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038845, 31.335850, 18.361435>,  <31.274845, 30.792997, 18.032631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038845, 31.335850, 18.361435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.768106, 31.046087, 18.413759>,  <30.605663, 30.872229, 18.445154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.768106, 31.046087, 18.413759>,  <31.038845, 31.335850, 18.361435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768106, 31.046087, 18.413759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134392, 0.296320, 0.945586,
		-0.723753, 0.622436, -0.297918,
		-0.676846, -0.724408, 0.130812,
		30.565052, 30.828764, 18.453003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.468977, 31.642124, 18.478859>,  <31.038845, 31.335850, 18.361435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.468977, 31.642124, 18.478859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455582, 31.281816, 18.652061>,  <30.447544, 31.065632, 18.755983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.455582, 31.281816, 18.652061>,  <30.468977, 31.642124, 18.478859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455582, 31.281816, 18.652061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010686, 0.433548, 0.901067,
		-0.999382, 0.025547, -0.024144,
		-0.033488, -0.900768, 0.433007,
		30.445536, 31.011585, 18.781963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964314, 31.631071, 19.031902>,  <30.468977, 31.642124, 18.478859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964314, 31.631071, 19.031902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.187937, 31.316519, 19.137022>,  <30.322111, 31.127789, 19.200094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.187937, 31.316519, 19.137022>,  <29.964314, 31.631071, 19.031902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187937, 31.316519, 19.137022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154215, 0.212806, 0.964848,
		-0.814661, -0.579933, -0.002300,
		0.559057, -0.786379, 0.262799,
		30.355654, 31.080605, 19.215862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660553, 31.386389, 19.669729>,  <29.964314, 31.631071, 19.031902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660553, 31.386389, 19.669729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.030991, 31.235819, 19.679937>,  <30.253254, 31.145477, 19.686062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.030991, 31.235819, 19.679937>,  <29.660553, 31.386389, 19.669729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030991, 31.235819, 19.679937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062117, 0.218839, 0.973782,
		-0.372139, -0.900230, 0.226048,
		0.926096, -0.376424, 0.025519,
		30.308819, 31.122892, 19.687593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540306, 30.840158, 20.117102>,  <29.660553, 31.386389, 19.669729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540306, 30.840158, 20.117102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.932089, 30.920710, 20.121353>,  <30.167158, 30.969040, 20.123903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.932089, 30.920710, 20.121353>,  <29.540306, 30.840158, 20.117102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932089, 30.920710, 20.121353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007247, -0.017515, 0.999820,
		0.201528, -0.979357, -0.015696,
		0.979456, 0.201378, 0.010627,
		30.225925, 30.981123, 20.124542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.001684, 30.248518, 20.539066>,  <29.540306, 30.840158, 20.117102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.001684, 30.248518, 20.539066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.225958, 30.579721, 20.536659>,  <30.360523, 30.778442, 20.535215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.225958, 30.579721, 20.536659>,  <30.001684, 30.248518, 20.539066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225958, 30.579721, 20.536659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080721, 0.061888, 0.994814,
		0.824085, -0.557293, 0.101537,
		0.560686, 0.828007, -0.006016,
		30.394163, 30.828123, 20.534855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622561, 30.052999, 20.865089>,  <30.001684, 30.248518, 20.539066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622561, 30.052999, 20.865089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.614092, 30.451422, 20.899555>,  <30.609011, 30.690475, 20.920235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.614092, 30.451422, 20.899555>,  <30.622561, 30.052999, 20.865089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614092, 30.451422, 20.899555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211217, -0.079784, 0.974177,
		0.977210, 0.038824, -0.208695,
		-0.021171, 0.996056, 0.086166,
		30.607740, 30.750238, 20.925406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307535, 30.316797, 20.834669>,  <30.622561, 30.052999, 20.865089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307535, 30.316797, 20.834669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.271595, 30.667082, 21.024429>,  <31.250031, 30.877253, 21.138287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.271595, 30.667082, 21.024429>,  <31.307535, 30.316797, 20.834669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271595, 30.667082, 21.024429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733694, -0.263919, 0.626131,
		0.673513, 0.404323, -0.618791,
		-0.089849, 0.875711, 0.474403,
		31.244640, 30.929794, 21.166750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891159, 30.490524, 20.946039>,  <31.307535, 30.316797, 20.834669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891159, 30.490524, 20.946039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.712042, 30.754110, 21.187782>,  <31.604572, 30.912262, 21.332829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.712042, 30.754110, 21.187782>,  <31.891159, 30.490524, 20.946039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712042, 30.754110, 21.187782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740506, -0.105511, 0.663715,
		0.501133, 0.744735, -0.440722,
		-0.447791, 0.658967, 0.604356,
		31.577705, 30.951801, 21.369089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483440, 31.038141, 21.136877>,  <31.891159, 30.490524, 20.946039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483440, 31.038141, 21.136877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.190834, 31.046951, 21.409466>,  <32.015270, 31.052237, 21.573019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.190834, 31.046951, 21.409466>,  <32.483440, 31.038141, 21.136877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190834, 31.046951, 21.409466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669113, -0.168934, 0.723706,
		0.131062, 0.985381, 0.108841,
		-0.731513, 0.022023, 0.681472,
		31.971380, 31.053558, 21.613907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684505, 31.524483, 21.613918>,  <32.483440, 31.038141, 21.136877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684505, 31.524483, 21.613918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.436565, 31.271133, 21.799227>,  <32.287800, 31.119123, 21.910412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.436565, 31.271133, 21.799227>,  <32.684505, 31.524483, 21.613918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436565, 31.271133, 21.799227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674926, -0.129133, 0.726498,
		-0.400322, 0.762994, 0.507525,
		-0.619852, -0.633375, 0.463270,
		32.250610, 31.081121, 21.938208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654640, 31.776773, 22.273569>,  <32.684505, 31.524483, 21.613918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654640, 31.776773, 22.273569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.542683, 31.393147, 22.290754>,  <32.475510, 31.162970, 22.301065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.542683, 31.393147, 22.290754>,  <32.654640, 31.776773, 22.273569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542683, 31.393147, 22.290754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603811, -0.141072, 0.784545,
		-0.746372, 0.245531, 0.618581,
		-0.279895, -0.959069, 0.042961,
		32.458714, 31.105425, 22.303642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436989, 31.685411, 22.898336>,  <32.654640, 31.776773, 22.273569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436989, 31.685411, 22.898336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.502159, 31.307762, 22.783733>,  <32.541260, 31.081173, 22.714972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.502159, 31.307762, 22.783733>,  <32.436989, 31.685411, 22.898336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502159, 31.307762, 22.783733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496090, -0.172621, 0.850938,
		-0.852849, -0.280770, 0.440247,
		0.162922, -0.944124, -0.286507,
		32.551037, 31.024525, 22.697781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142982, 31.328339, 23.420906>,  <32.436989, 31.685411, 22.898336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142982, 31.328339, 23.420906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.374424, 31.042164, 23.264257>,  <32.513290, 30.870459, 23.170269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.374424, 31.042164, 23.264257>,  <32.142982, 31.328339, 23.420906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374424, 31.042164, 23.264257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270038, -0.285034, 0.919693,
		-0.769606, -0.637892, 0.028272,
		0.578607, -0.715436, -0.391619,
		32.548004, 30.827534, 23.146772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020306, 30.652708, 23.707785>,  <32.142982, 31.328339, 23.420906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020306, 30.652708, 23.707785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.393650, 30.600895, 23.573885>,  <32.617657, 30.569807, 23.493546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.393650, 30.600895, 23.573885>,  <32.020306, 30.652708, 23.707785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393650, 30.600895, 23.573885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262479, -0.389806, 0.882698,
		-0.244825, -0.911742, -0.329831,
		0.933362, -0.129533, -0.334747,
		32.673660, 30.562035, 23.473461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115807, 29.998259, 23.898678>,  <32.020306, 30.652708, 23.707785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115807, 29.998259, 23.898678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.494102, 30.120998, 23.855934>,  <32.721081, 30.194643, 23.830288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.494102, 30.120998, 23.855934>,  <32.115807, 29.998259, 23.898678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494102, 30.120998, 23.855934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240602, -0.440316, 0.865005,
		0.218376, -0.843780, -0.490253,
		0.945739, 0.306852, -0.106861,
		32.777824, 30.213055, 23.823875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445366, 29.450302, 24.164309>,  <32.115807, 29.998259, 23.898678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445366, 29.450302, 24.164309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.669186, 29.781742, 24.171535>,  <32.803478, 29.980606, 24.175871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.669186, 29.781742, 24.171535>,  <32.445366, 29.450302, 24.164309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669186, 29.781742, 24.171535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349501, -0.255673, 0.901377,
		0.751499, -0.498053, -0.432658,
		0.559552, 0.828598, 0.018068,
		32.837051, 30.030321, 24.176956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827339, 29.230911, 24.635571>,  <32.445366, 29.450302, 24.164309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827339, 29.230911, 24.635571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.928005, 29.616787, 24.604486>,  <32.988403, 29.848312, 24.585836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.928005, 29.616787, 24.604486>,  <32.827339, 29.230911, 24.635571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928005, 29.616787, 24.604486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484478, -0.056062, 0.873005,
		0.837823, -0.257352, -0.481479,
		0.251663, 0.964690, -0.077711,
		33.003506, 29.906195, 24.581173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534706, 29.335321, 24.902397>,  <32.827339, 29.230911, 24.635571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534706, 29.335321, 24.902397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.354855, 29.690985, 24.936422>,  <33.246944, 29.904383, 24.956839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.354855, 29.690985, 24.936422>,  <33.534706, 29.335321, 24.902397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354855, 29.690985, 24.936422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336234, 0.080255, 0.938353,
		0.827515, 0.450511, -0.335050,
		-0.449627, 0.889156, 0.085065,
		33.219967, 29.957731, 24.961943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.429577, 29.308956, 28.122599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.266651, 29.639612, 27.967283>,  <38.168896, 29.838005, 27.874094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.266651, 29.639612, 27.967283>,  <38.429577, 29.308956, 28.122599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266651, 29.639612, 27.967283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272659, 0.515828, 0.812145,
		0.871640, 0.224924, -0.435492,
		-0.407310, 0.826638, -0.388288,
		38.144459, 29.887604, 27.850798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874760, 29.918507, 28.175388>,  <38.429577, 29.308956, 28.122599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874760, 29.918507, 28.175388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.519833, 30.099785, 28.141247>,  <38.306877, 30.208551, 28.120762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.519833, 30.099785, 28.141247>,  <38.874760, 29.918507, 28.175388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519833, 30.099785, 28.141247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206218, 0.555470, 0.805560,
		0.412489, 0.697184, -0.586334,
		-0.887314, 0.453198, -0.085353,
		38.253639, 30.235744, 28.115641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048397, 30.633820, 28.272440>,  <38.874760, 29.918507, 28.175388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048397, 30.633820, 28.272440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.654766, 30.598967, 28.334414>,  <38.418587, 30.578054, 28.371597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.654766, 30.598967, 28.334414>,  <39.048397, 30.633820, 28.272440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654766, 30.598967, 28.334414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078297, 0.570029, 0.817886,
		-0.159582, 0.816992, -0.554129,
		-0.984075, -0.087133, 0.154934,
		38.359543, 30.572826, 28.380894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722305, 31.413300, 28.461061>,  <39.048397, 30.633820, 28.272440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722305, 31.413300, 28.461061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.432388, 31.168993, 28.588583>,  <38.258438, 31.022409, 28.665096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.432388, 31.168993, 28.588583>,  <38.722305, 31.413300, 28.461061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432388, 31.168993, 28.588583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099911, 0.551018, 0.828491,
		-0.681680, 0.568635, -0.460398,
		-0.724796, -0.610765, 0.318805,
		38.214951, 30.985764, 28.684225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199821, 31.848433, 28.800579>,  <38.722305, 31.413300, 28.461061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199821, 31.848433, 28.800579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.129543, 31.476755, 28.930647>,  <38.087376, 31.253750, 29.008688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.129543, 31.476755, 28.930647>,  <38.199821, 31.848433, 28.800579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129543, 31.476755, 28.930647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209283, 0.358009, 0.909961,
		-0.961942, 0.091821, -0.257364,
		-0.175693, -0.929192, 0.325167,
		38.076836, 31.197998, 29.028196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481010, 31.871460, 29.169847>,  <38.199821, 31.848433, 28.800579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.481010, 31.871460, 29.169847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.709412, 31.567427, 29.293936>,  <37.846451, 31.385008, 29.368389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.709412, 31.567427, 29.293936>,  <37.481010, 31.871460, 29.169847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709412, 31.567427, 29.293936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025029, 0.393820, 0.918847,
		-0.820569, -0.516897, 0.243895,
		0.571000, -0.760081, 0.310219,
		37.880711, 31.339403, 29.387001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245232, 31.902885, 29.924377>,  <37.481010, 31.871460, 29.169847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245232, 31.902885, 29.924377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.568310, 31.670967, 29.881565>,  <37.762157, 31.531816, 29.855879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.568310, 31.670967, 29.881565>,  <37.245232, 31.902885, 29.924377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568310, 31.670967, 29.881565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269627, 0.201795, 0.941584,
		-0.524330, -0.789375, 0.319319,
		0.807700, -0.579798, -0.107030,
		37.810619, 31.497028, 29.849457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215317, 31.465656, 30.474613>,  <37.245232, 31.902885, 29.924377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215317, 31.465656, 30.474613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.601833, 31.473736, 30.371944>,  <37.833744, 31.478584, 30.310343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.601833, 31.473736, 30.371944>,  <37.215317, 31.465656, 30.474613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601833, 31.473736, 30.371944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249927, 0.165914, 0.953944,
		0.061855, -0.985933, 0.155272,
		0.966287, 0.020199, -0.256673,
		37.891720, 31.479795, 30.294943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538406, 31.252794, 31.004118>,  <37.215317, 31.465656, 30.474613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538406, 31.252794, 31.004118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.808853, 31.469652, 30.804539>,  <37.971123, 31.599766, 30.684792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.808853, 31.469652, 30.804539>,  <37.538406, 31.252794, 31.004118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808853, 31.469652, 30.804539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300145, 0.415788, 0.858507,
		0.672889, -0.730206, 0.118400,
		0.676116, 0.542143, -0.498946,
		38.011688, 31.632296, 30.654854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007336, 31.199146, 31.468649>,  <37.538406, 31.252794, 31.004118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007336, 31.199146, 31.468649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.120403, 31.493647, 31.222710>,  <38.188244, 31.670347, 31.075146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.120403, 31.493647, 31.222710>,  <38.007336, 31.199146, 31.468649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120403, 31.493647, 31.222710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289686, 0.545537, 0.786430,
		0.914430, -0.400409, -0.059077,
		0.282665, 0.736249, -0.614848,
		38.205204, 31.714521, 31.038256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706284, 31.361895, 31.663479>,  <38.007336, 31.199146, 31.468649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706284, 31.361895, 31.663479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.582409, 31.684969, 31.462784>,  <38.508083, 31.878813, 31.342367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.582409, 31.684969, 31.462784>,  <38.706284, 31.361895, 31.663479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582409, 31.684969, 31.462784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162916, 0.564947, 0.808884,
		0.936778, 0.168758, -0.306541,
		-0.309685, 0.807685, -0.501737,
		38.489502, 31.927275, 31.312263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184071, 31.872643, 31.832457>,  <38.706284, 31.361895, 31.663479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184071, 31.872643, 31.832457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.855446, 32.064163, 31.708658>,  <38.658272, 32.179077, 31.634380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.855446, 32.064163, 31.708658>,  <39.184071, 31.872643, 31.832457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855446, 32.064163, 31.708658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011218, 0.529177, 0.848437,
		0.570010, 0.700515, -0.429380,
		-0.821561, 0.478801, -0.309495,
		38.608978, 32.207802, 31.615810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349339, 32.453171, 32.068703>,  <39.184071, 31.872643, 31.832457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349339, 32.453171, 32.068703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.952236, 32.480267, 32.028999>,  <38.713974, 32.496525, 32.005177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.952236, 32.480267, 32.028999>,  <39.349339, 32.453171, 32.068703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952236, 32.480267, 32.028999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019006, 0.727086, 0.686283,
		0.118658, 0.683197, -0.720530,
		-0.992753, 0.067738, -0.099259,
		38.654411, 32.500587, 31.999222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155708, 33.122601, 31.931877>,  <39.349339, 32.453171, 32.068703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155708, 33.122601, 31.931877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.874763, 32.907051, 32.117912>,  <38.706196, 32.777721, 32.229534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.874763, 32.907051, 32.117912>,  <39.155708, 33.122601, 31.931877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874763, 32.907051, 32.117912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019630, 0.638466, 0.769400,
		-0.711551, 0.549525, -0.437855,
		-0.702360, -0.538872, 0.465088,
		38.664055, 32.745388, 32.257439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776863, 33.545784, 31.995289>,  <39.155708, 33.122601, 31.931877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776863, 33.545784, 31.995289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.929943, 33.912365, 32.042038>,  <40.021790, 34.132313, 32.070087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.929943, 33.912365, 32.042038>,  <39.776863, 33.545784, 31.995289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929943, 33.912365, 32.042038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111233, 0.171286, -0.978922,
		-0.917153, 0.361632, 0.167490,
		0.382698, 0.916452, 0.116871,
		40.044754, 34.187302, 32.077099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413357, 34.023502, 31.574141>,  <39.776863, 33.545784, 31.995289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413357, 34.023502, 31.574141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.724804, 34.263836, 31.646526>,  <39.911674, 34.408035, 31.689959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.724804, 34.263836, 31.646526>,  <39.413357, 34.023502, 31.574141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724804, 34.263836, 31.646526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069042, 0.368673, -0.926992,
		-0.623683, 0.709282, 0.328540,
		0.778622, 0.600832, 0.180965,
		39.958389, 34.444084, 31.700815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183533, 34.746368, 31.444092>,  <39.413357, 34.023502, 31.574141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183533, 34.746368, 31.444092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.582531, 34.745510, 31.415840>,  <39.821930, 34.744995, 31.398890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.582531, 34.745510, 31.415840>,  <39.183533, 34.746368, 31.444092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.582531, 34.745510, 31.415840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065266, 0.355184, -0.932515,
		0.027089, 0.934794, 0.354156,
		0.997500, -0.002147, -0.070631,
		39.881783, 34.744865, 31.394651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288242, 35.316139, 31.063848>,  <39.183533, 34.746368, 31.444092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288242, 35.316139, 31.063848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.633572, 35.116577, 31.033453>,  <39.840767, 34.996841, 31.015217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.633572, 35.116577, 31.033453>,  <39.288242, 35.316139, 31.063848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633572, 35.116577, 31.033453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130721, 0.366509, -0.921186,
		0.487433, 0.785345, 0.381631,
		0.863320, -0.498904, -0.075988,
		39.892567, 34.966908, 31.010656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610367, 35.621429, 30.559351>,  <39.288242, 35.316139, 31.063848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610367, 35.621429, 30.559351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.855381, 35.305607, 30.574301>,  <40.002388, 35.116112, 30.583271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.855381, 35.305607, 30.574301>,  <39.610367, 35.621429, 30.559351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855381, 35.305607, 30.574301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039453, -0.016684, -0.999082,
		0.789460, 0.613445, 0.020931,
		0.612533, -0.789561, 0.037373,
		40.039143, 35.068737, 30.585512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357861, 35.774620, 30.313137>,  <39.610367, 35.621429, 30.559351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357861, 35.774620, 30.313137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.263039, 35.388992, 30.265184>,  <40.206146, 35.157616, 30.236412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.263039, 35.388992, 30.265184>,  <40.357861, 35.774620, 30.313137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263039, 35.388992, 30.265184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008060, 0.125346, -0.992080,
		0.971464, -0.234206, -0.037484,
		-0.237050, -0.964072, -0.119881,
		40.191925, 35.099770, 30.229219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705475, 35.413326, 29.657204>,  <40.357861, 35.774620, 30.313137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705475, 35.413326, 29.657204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.398205, 35.169899, 29.736752>,  <40.213840, 35.023842, 29.784479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.398205, 35.169899, 29.736752>,  <40.705475, 35.413326, 29.657204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398205, 35.169899, 29.736752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077636, -0.219783, -0.972455,
		0.635512, -0.762458, 0.121586,
		-0.768178, -0.608567, 0.198868,
		40.167751, 34.987328, 29.796412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827312, 34.857563, 29.176613>,  <40.705475, 35.413326, 29.657204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827312, 34.857563, 29.176613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.439449, 34.849316, 29.274046>,  <40.206730, 34.844368, 29.332506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.439449, 34.849316, 29.274046>,  <40.827312, 34.857563, 29.176613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439449, 34.849316, 29.274046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235173, -0.193260, -0.952546,
		0.066712, -0.980931, 0.182548,
		-0.969662, -0.020615, 0.243581,
		40.148552, 34.843132, 29.347120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579483, 34.441566, 28.693163>,  <40.827312, 34.857563, 29.176613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579483, 34.441566, 28.693163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.237759, 34.598824, 28.829157>,  <40.032722, 34.693176, 28.910753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.237759, 34.598824, 28.829157>,  <40.579483, 34.441566, 28.693163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237759, 34.598824, 28.829157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419724, -0.136017, -0.897402,
		-0.306562, -0.909362, 0.281212,
		-0.854314, 0.393141, 0.339983,
		39.981464, 34.716766, 28.931152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142937, 34.028202, 28.412403>,  <40.579483, 34.441566, 28.693163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142937, 34.028202, 28.412403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.938633, 34.357735, 28.510731>,  <39.816051, 34.555454, 28.569727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.938633, 34.357735, 28.510731>,  <40.142937, 34.028202, 28.412403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938633, 34.357735, 28.510731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453202, -0.015029, -0.891281,
		-0.730573, -0.566632, 0.381040,
		-0.510755, 0.823834, 0.245819,
		39.785408, 34.604885, 28.584476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415829, 33.891655, 28.311581>,  <40.142937, 34.028202, 28.412403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415829, 33.891655, 28.311581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.464279, 34.288544, 28.300129>,  <39.493351, 34.526676, 28.293259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.464279, 34.288544, 28.300129>,  <39.415829, 33.891655, 28.311581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464279, 34.288544, 28.300129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566590, 0.045427, -0.822747,
		-0.815049, 0.115877, 0.567687,
		0.121126, 0.992224, -0.028630,
		39.500618, 34.586212, 28.291540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789310, 34.186661, 28.203661>,  <39.415829, 33.891655, 28.311581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789310, 34.186661, 28.203661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.045422, 34.460419, 28.064148>,  <39.199089, 34.624672, 27.980440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.045422, 34.460419, 28.064148>,  <38.789310, 34.186661, 28.203661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045422, 34.460419, 28.064148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417805, -0.070729, -0.905779,
		-0.644578, 0.725675, 0.240657,
		0.640280, 0.684393, -0.348781,
		39.237507, 34.665737, 27.959513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424332, 34.567070, 27.852247>,  <38.789310, 34.186661, 28.203661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424332, 34.567070, 27.852247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.779106, 34.670506, 27.699156>,  <38.991970, 34.732567, 27.607300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.779106, 34.670506, 27.699156>,  <38.424332, 34.567070, 27.852247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779106, 34.670506, 27.699156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352443, -0.156703, -0.922620,
		-0.298552, 0.953193, -0.047848,
		0.886934, 0.258586, -0.382730,
		39.045185, 34.748081, 27.584337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231789, 35.063042, 27.315109>,  <38.424332, 34.567070, 27.852247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231789, 35.063042, 27.315109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.595455, 34.924595, 27.222486>,  <38.813656, 34.841526, 27.166914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.595455, 34.924595, 27.222486>,  <38.231789, 35.063042, 27.315109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595455, 34.924595, 27.222486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290759, -0.129543, -0.947986,
		0.298116, 0.929205, -0.218412,
		0.909168, -0.346115, -0.231556,
		38.868206, 34.820759, 27.153019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199074, 35.729347, 27.047333>,  <38.231789, 35.063042, 27.315109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199074, 35.729347, 27.047333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.054855, 36.101749, 27.024551>,  <37.968327, 36.325191, 27.010881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.054855, 36.101749, 27.024551>,  <38.199074, 35.729347, 27.047333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054855, 36.101749, 27.024551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010394, 0.065068, 0.997827,
		0.932685, 0.359167, -0.033136,
		-0.360543, 0.931002, -0.056954,
		37.946693, 36.381050, 27.007465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521790, 36.053158, 27.561640>,  <38.199074, 35.729347, 27.047333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521790, 36.053158, 27.561640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.220909, 36.304924, 27.483644>,  <38.040379, 36.455986, 27.436848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.220909, 36.304924, 27.483644>,  <38.521790, 36.053158, 27.561640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220909, 36.304924, 27.483644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066565, 0.221821, 0.972813,
		0.655559, 0.744733, -0.124957,
		-0.752204, 0.629419, -0.194990,
		37.995247, 36.493752, 27.425148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670349, 36.680813, 28.005379>,  <38.521790, 36.053158, 27.561640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670349, 36.680813, 28.005379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.278927, 36.677536, 27.923048>,  <38.044075, 36.675568, 27.873650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.278927, 36.677536, 27.923048>,  <38.670349, 36.680813, 28.005379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278927, 36.677536, 27.923048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201205, 0.252135, 0.946543,
		0.044139, 0.967657, -0.248377,
		-0.978554, -0.008195, -0.205827,
		37.985359, 36.675079, 27.861300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302486, 37.173954, 28.487150>,  <38.670349, 36.680813, 28.005379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302486, 37.173954, 28.487150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.979630, 36.967064, 28.373310>,  <37.785915, 36.842930, 28.305006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.979630, 36.967064, 28.373310>,  <38.302486, 37.173954, 28.487150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979630, 36.967064, 28.373310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257606, -0.125187, 0.958106,
		-0.531187, 0.846642, -0.032197,
		-0.807143, -0.517227, -0.284598,
		37.737488, 36.811897, 28.287931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759689, 37.358788, 28.957645>,  <38.302486, 37.173954, 28.487150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759689, 37.358788, 28.957645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.608139, 37.022148, 28.803677>,  <37.517208, 36.820164, 28.711294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.608139, 37.022148, 28.803677>,  <37.759689, 37.358788, 28.957645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608139, 37.022148, 28.803677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303138, -0.280126, 0.910844,
		-0.874392, 0.461781, -0.148988,
		-0.378875, -0.841598, -0.384924,
		37.494476, 36.769669, 28.688200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108051, 37.322777, 29.218853>,  <37.759689, 37.358788, 28.957645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108051, 37.322777, 29.218853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.207638, 36.948563, 29.118618>,  <37.267391, 36.724033, 29.058477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.207638, 36.948563, 29.118618>,  <37.108051, 37.322777, 29.218853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207638, 36.948563, 29.118618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194422, -0.301743, 0.933355,
		-0.948796, -0.183657, -0.257013,
		0.248969, -0.935533, -0.250585,
		37.282330, 36.667904, 29.043442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796429, 36.991192, 29.643944>,  <37.108051, 37.322777, 29.218853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796429, 36.991192, 29.643944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.049671, 36.717484, 29.499197>,  <37.201618, 36.553257, 29.412350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.049671, 36.717484, 29.499197>,  <36.796429, 36.991192, 29.643944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049671, 36.717484, 29.499197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000195, -0.467629, 0.883925,
		-0.774064, -0.559549, -0.296192,
		0.633108, -0.684272, -0.361866,
		37.239605, 36.512203, 29.390636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453342, 36.264091, 29.646454>,  <36.796429, 36.991192, 29.643944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453342, 36.264091, 29.646454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.851177, 36.222534, 29.647089>,  <37.089878, 36.197601, 29.647470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.851177, 36.222534, 29.647089>,  <36.453342, 36.264091, 29.646454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851177, 36.222534, 29.647089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032778, -0.299208, 0.953625,
		-0.098595, -0.948516, -0.300993,
		0.994588, -0.103888, 0.001590,
		37.149555, 36.191368, 29.647566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641361, 35.658569, 30.045919>,  <36.453342, 36.264091, 29.646454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641361, 35.658569, 30.045919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.990696, 35.853268, 30.038399>,  <37.200298, 35.970089, 30.033886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.990696, 35.853268, 30.038399>,  <36.641361, 35.658569, 30.045919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.990696, 35.853268, 30.038399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199860, -0.322858, 0.925105,
		0.444223, -0.811689, -0.379246,
		0.873340, 0.486748, -0.018803,
		37.252697, 35.999290, 30.032757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027458, 35.167038, 30.429213>,  <36.641361, 35.658569, 30.045919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027458, 35.167038, 30.429213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.199070, 35.528355, 30.428703>,  <37.302036, 35.745144, 30.428398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.199070, 35.528355, 30.428703>,  <37.027458, 35.167038, 30.429213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199070, 35.528355, 30.428703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035269, -0.015345, 0.999260,
		0.902601, -0.428758, -0.038442,
		0.429031, 0.903289, -0.001271,
		37.327778, 35.799343, 30.428322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599083, 35.115555, 30.772881>,  <37.027458, 35.167038, 30.429213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599083, 35.115555, 30.772881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.508762, 35.503040, 30.814081>,  <37.454571, 35.735531, 30.838800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.508762, 35.503040, 30.814081>,  <37.599083, 35.115555, 30.772881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508762, 35.503040, 30.814081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073587, -0.088467, 0.993357,
		0.971391, 0.231877, -0.051309,
		-0.225798, 0.968714, 0.102999,
		37.441025, 35.793655, 30.844980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013981, 35.297024, 31.330185>,  <37.599083, 35.115555, 30.772881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013981, 35.297024, 31.330185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.749336, 35.596897, 31.323992>,  <37.590549, 35.776821, 31.320276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.749336, 35.596897, 31.323992>,  <38.013981, 35.297024, 31.330185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749336, 35.596897, 31.323992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210842, 0.205806, 0.955610,
		0.719595, 0.628978, -0.294228,
		-0.661611, 0.749687, -0.015482,
		37.550854, 35.821804, 31.319347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.432926, 35.209831, 23.432253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080841, 35.398430, 23.453865>,  <37.869591, 35.511589, 23.466833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080841, 35.398430, 23.453865>,  <38.432926, 35.209831, 23.432253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080841, 35.398430, 23.453865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320584, 0.506769, 0.800257,
		0.349939, 0.721715, -0.597218,
		-0.880209, 0.471500, 0.054033,
		37.816780, 35.539879, 23.470076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657875, 35.961826, 23.650911>,  <38.432926, 35.209831, 23.432253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657875, 35.961826, 23.650911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262962, 35.949783, 23.713350>,  <38.026016, 35.942558, 23.750814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262962, 35.949783, 23.713350>,  <38.657875, 35.961826, 23.650911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262962, 35.949783, 23.713350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113402, 0.554774, 0.824236,
		-0.111415, 0.831456, -0.544305,
		-0.987282, -0.030107, 0.156099,
		37.966778, 35.940750, 23.760180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501122, 36.621548, 23.955015>,  <38.657875, 35.961826, 23.650911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501122, 36.621548, 23.955015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192730, 36.385586, 24.051018>,  <38.007694, 36.244007, 24.108620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192730, 36.385586, 24.051018>,  <38.501122, 36.621548, 23.955015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192730, 36.385586, 24.051018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084449, 0.468227, 0.879563,
		-0.631236, 0.657857, -0.410810,
		-0.770979, -0.589905, 0.240006,
		37.961437, 36.208614, 24.123020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967781, 37.119667, 24.278166>,  <38.501122, 36.621548, 23.955015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967781, 37.119667, 24.278166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872620, 36.746193, 24.385229>,  <37.815525, 36.522110, 24.449467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872620, 36.746193, 24.385229>,  <37.967781, 37.119667, 24.278166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872620, 36.746193, 24.385229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140747, 0.305802, 0.941634,
		-0.961038, 0.186343, -0.204163,
		-0.237900, -0.933682, 0.267660,
		37.801250, 36.466087, 24.465527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345387, 37.160431, 24.784988>,  <37.967781, 37.119667, 24.278166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345387, 37.160431, 24.784988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535145, 36.815212, 24.854372>,  <37.649002, 36.608082, 24.896002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.535145, 36.815212, 24.854372>,  <37.345387, 37.160431, 24.784988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535145, 36.815212, 24.854372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035724, 0.215756, 0.975794,
		-0.879584, -0.456720, 0.133186,
		0.474400, -0.863051, 0.173460,
		37.677464, 36.556297, 24.906410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033108, 37.026081, 25.392639>,  <37.345387, 37.160431, 24.784988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033108, 37.026081, 25.392639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303581, 36.732098, 25.372181>,  <37.465866, 36.555706, 25.359907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303581, 36.732098, 25.372181>,  <37.033108, 37.026081, 25.392639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303581, 36.732098, 25.372181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000682, -0.068794, 0.997630,
		-0.736737, -0.674612, -0.046016,
		0.676179, -0.734960, -0.051144,
		37.506435, 36.511608, 25.356838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730137, 36.547691, 25.794006>,  <37.033108, 37.026081, 25.392639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730137, 36.547691, 25.794006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128651, 36.515606, 25.806578>,  <37.367760, 36.496353, 25.814119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128651, 36.515606, 25.806578>,  <36.730137, 36.547691, 25.794006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128651, 36.515606, 25.806578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029513, 0.024925, 0.999254,
		-0.080939, -0.996466, 0.022465,
		0.996282, -0.080216, 0.031426,
		37.427536, 36.491543, 25.816006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951454, 36.027885, 26.287521>,  <36.730137, 36.547691, 25.794006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951454, 36.027885, 26.287521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297012, 36.224197, 26.242249>,  <37.504349, 36.341984, 26.215086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297012, 36.224197, 26.242249>,  <36.951454, 36.027885, 26.287521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297012, 36.224197, 26.242249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209920, -0.146587, 0.966667,
		0.457833, -0.858863, -0.229661,
		0.863900, 0.490783, -0.113181,
		37.556183, 36.371433, 26.208294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525124, 35.627728, 26.510727>,  <36.951454, 36.027885, 26.287521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525124, 35.627728, 26.510727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635403, 36.011528, 26.533878>,  <37.701569, 36.241810, 26.547770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635403, 36.011528, 26.533878>,  <37.525124, 35.627728, 26.510727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635403, 36.011528, 26.533878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280617, -0.137929, 0.949858,
		0.919373, -0.245628, -0.307278,
		0.275694, 0.959501, 0.057881,
		37.718109, 36.299377, 26.551243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240345, 35.231255, 26.546709>,  <37.525124, 35.627728, 26.510727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240345, 35.231255, 26.546709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548908, 34.983055, 26.603146>,  <38.734047, 34.834137, 26.637007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548908, 34.983055, 26.603146>,  <38.240345, 35.231255, 26.546709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548908, 34.983055, 26.603146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296506, -0.546678, -0.783088,
		0.563037, 0.562248, -0.605695,
		0.771410, -0.620500, 0.141090,
		38.780331, 34.796906, 26.645472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526630, 35.142998, 25.926741>,  <38.240345, 35.231255, 26.546709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526630, 35.142998, 25.926741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661354, 34.822464, 26.124496>,  <38.742188, 34.630142, 26.243151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661354, 34.822464, 26.124496>,  <38.526630, 35.142998, 25.926741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661354, 34.822464, 26.124496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069909, -0.544902, -0.835581,
		0.938973, 0.246870, -0.239549,
		0.336811, -0.801335, 0.494390,
		38.762398, 34.582062, 26.272814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970402, 34.818249, 25.453115>,  <38.526630, 35.142998, 25.926741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970402, 34.818249, 25.453115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889801, 34.525257, 25.713230>,  <38.841442, 34.349461, 25.869299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889801, 34.525257, 25.713230>,  <38.970402, 34.818249, 25.453115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889801, 34.525257, 25.713230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089119, -0.647441, -0.756887,
		0.975426, -0.210464, 0.065181,
		-0.201498, -0.732479, 0.650287,
		38.829353, 34.305515, 25.908316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402931, 34.308369, 25.274969>,  <38.970402, 34.818249, 25.453115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402931, 34.308369, 25.274969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114887, 34.100666, 25.459066>,  <38.942062, 33.976044, 25.569525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114887, 34.100666, 25.459066>,  <39.402931, 34.308369, 25.274969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114887, 34.100666, 25.459066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101278, -0.577541, -0.810055,
		0.686434, -0.629937, 0.363302,
		-0.720105, -0.519254, 0.460242,
		38.898857, 33.944889, 25.597139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.556644, 33.557137, 25.247551>,  <39.402931, 34.308369, 25.274969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.556644, 33.557137, 25.247551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163525, 33.580116, 25.317753>,  <38.927650, 33.593906, 25.359873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163525, 33.580116, 25.317753>,  <39.556644, 33.557137, 25.247551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163525, 33.580116, 25.317753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172163, -0.628824, -0.758248,
		0.066798, -0.775422, 0.627900,
		-0.982801, 0.057452, 0.175503,
		38.868683, 33.597351, 25.370403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364017, 32.860916, 25.117672>,  <39.556644, 33.557137, 25.247551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364017, 32.860916, 25.117672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032131, 33.082478, 25.090061>,  <38.833000, 33.215412, 25.073494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032131, 33.082478, 25.090061>,  <39.364017, 32.860916, 25.117672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032131, 33.082478, 25.090061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355991, -0.620350, -0.698882,
		-0.429932, -0.555301, 0.711898,
		-0.829716, 0.553901, -0.069026,
		38.783215, 33.248650, 25.069353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898041, 32.450706, 25.291744>,  <39.364017, 32.860916, 25.117672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898041, 32.450706, 25.291744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734554, 32.732960, 25.060215>,  <38.636463, 32.902309, 24.921297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734554, 32.732960, 25.060215>,  <38.898041, 32.450706, 25.291744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734554, 32.732960, 25.060215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285647, -0.701255, -0.653182,
		-0.866807, -0.101629, 0.488177,
		-0.408719, 0.705630, -0.578823,
		38.611938, 32.944649, 24.886568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299019, 32.074177, 24.953825>,  <38.898041, 32.450706, 25.291744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299019, 32.074177, 24.953825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319271, 32.409130, 24.736116>,  <38.331425, 32.610100, 24.605492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319271, 32.409130, 24.736116>,  <38.299019, 32.074177, 24.953825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319271, 32.409130, 24.736116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438190, -0.471087, -0.765550,
		-0.897455, 0.277256, 0.343079,
		0.050633, 0.837381, -0.544270,
		38.334461, 32.660343, 24.572836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613621, 32.220470, 24.660633>,  <38.299019, 32.074177, 24.953825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613621, 32.220470, 24.660633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849926, 32.435745, 24.420185>,  <37.991711, 32.564911, 24.275915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849926, 32.435745, 24.420185>,  <37.613621, 32.220470, 24.660633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849926, 32.435745, 24.420185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452384, -0.395964, -0.799100,
		-0.668089, 0.744020, 0.009546,
		0.590767, 0.538189, -0.601122,
		38.027157, 32.597202, 24.239849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109638, 32.610313, 24.169516>,  <37.613621, 32.220470, 24.660633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109638, 32.610313, 24.169516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475136, 32.575283, 24.010822>,  <37.694435, 32.554264, 23.915606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475136, 32.575283, 24.010822>,  <37.109638, 32.610313, 24.169516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475136, 32.575283, 24.010822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400508, -0.358255, -0.843355,
		-0.068275, 0.929507, -0.362429,
		0.913746, -0.087575, -0.396735,
		37.749260, 32.549011, 23.891802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047218, 32.833172, 23.514448>,  <37.109638, 32.610313, 24.169516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047218, 32.833172, 23.514448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382034, 32.614971, 23.497566>,  <37.582924, 32.484051, 23.487436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382034, 32.614971, 23.497566>,  <37.047218, 32.833172, 23.514448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382034, 32.614971, 23.497566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289722, -0.376479, -0.879957,
		0.464132, 0.748791, -0.473174,
		0.837044, -0.545505, -0.042205,
		37.633148, 32.451321, 23.484905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331131, 32.956303, 22.844513>,  <37.047218, 32.833172, 23.514448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331131, 32.956303, 22.844513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513748, 32.619823, 22.960413>,  <37.623318, 32.417938, 23.029953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513748, 32.619823, 22.960413>,  <37.331131, 32.956303, 22.844513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513748, 32.619823, 22.960413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220695, -0.422570, -0.879050,
		0.861894, 0.337378, -0.378570,
		0.456544, -0.841196, 0.289752,
		37.650711, 32.367466, 23.047338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819294, 32.740211, 22.355457>,  <37.331131, 32.956303, 22.844513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819294, 32.740211, 22.355457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758060, 32.400894, 22.558226>,  <37.721321, 32.197304, 22.679886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758060, 32.400894, 22.558226>,  <37.819294, 32.740211, 22.355457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758060, 32.400894, 22.558226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004470, -0.512368, -0.858754,
		0.988203, -0.133729, 0.074645,
		-0.153086, -0.848290, 0.506921,
		37.712135, 32.146408, 22.710302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270473, 32.293613, 22.061609>,  <37.819294, 32.740211, 22.355457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270473, 32.293613, 22.061609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990444, 32.069473, 22.238653>,  <37.822426, 31.934990, 22.344879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990444, 32.069473, 22.238653>,  <38.270473, 32.293613, 22.061609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990444, 32.069473, 22.238653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137086, -0.502847, -0.853436,
		0.700784, -0.658147, 0.275216,
		-0.700078, -0.560346, 0.442610,
		37.780422, 31.901369, 22.371435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.589590, 33.291039, 24.500458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.950827, 33.203678, 24.352552>,  <31.167568, 33.151260, 24.263809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.950827, 33.203678, 24.352552>,  <30.589590, 33.291039, 24.500458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950827, 33.203678, 24.352552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373462, -0.025683, 0.927290,
		-0.212022, -0.975520, 0.058372,
		0.903091, -0.218406, -0.369765,
		31.221754, 33.138157, 24.241623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752197, 32.718422, 24.817102>,  <30.589590, 33.291039, 24.500458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752197, 32.718422, 24.817102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.115770, 32.843060, 24.706284>,  <31.333914, 32.917843, 24.639791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.115770, 32.843060, 24.706284>,  <30.752197, 32.718422, 24.817102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115770, 32.843060, 24.706284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324644, -0.111939, 0.939189,
		0.261633, -0.943599, -0.202902,
		0.908930, 0.311594, -0.277046,
		31.388449, 32.936539, 24.623169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342777, 32.266857, 25.223291>,  <30.752197, 32.718422, 24.817102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342777, 32.266857, 25.223291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.508404, 32.614399, 25.114740>,  <31.607780, 32.822922, 25.049610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.508404, 32.614399, 25.114740>,  <31.342777, 32.266857, 25.223291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.508404, 32.614399, 25.114740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286553, 0.158552, 0.944854,
		0.863964, -0.468998, -0.183321,
		0.414068, 0.868851, -0.271376,
		31.632624, 32.875053, 25.033327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996523, 32.218102, 25.463186>,  <31.342777, 32.266857, 25.223291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996523, 32.218102, 25.463186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.928829, 32.607834, 25.403811>,  <31.888212, 32.841675, 25.368185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.928829, 32.607834, 25.403811>,  <31.996523, 32.218102, 25.463186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928829, 32.607834, 25.403811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372507, 0.202676, 0.905628,
		0.912468, 0.097970, -0.397246,
		-0.169237, 0.974333, -0.148441,
		31.878057, 32.900135, 25.359278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626694, 32.553902, 25.733654>,  <31.996523, 32.218102, 25.463186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626694, 32.553902, 25.733654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.334198, 32.826599, 25.724586>,  <32.158699, 32.990215, 25.719145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.334198, 32.826599, 25.724586>,  <32.626694, 32.553902, 25.733654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334198, 32.826599, 25.724586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268092, 0.317802, 0.909466,
		0.627224, 0.658963, -0.415160,
		-0.731243, 0.681740, -0.022671,
		32.114826, 33.031120, 25.717785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970173, 33.255173, 25.885706>,  <32.626694, 32.553902, 25.733654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970173, 33.255173, 25.885706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.582695, 33.314732, 25.965158>,  <32.350208, 33.350468, 26.012831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.582695, 33.314732, 25.965158>,  <32.970173, 33.255173, 25.885706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582695, 33.314732, 25.965158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231010, 0.247779, 0.940872,
		0.090872, 0.957307, -0.274419,
		-0.968698, 0.148893, 0.198631,
		32.292084, 33.359398, 26.024748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932266, 33.951767, 26.238768>,  <32.970173, 33.255173, 25.885706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932266, 33.951767, 26.238768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.598644, 33.752579, 26.333754>,  <32.398472, 33.633068, 26.390745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.598644, 33.752579, 26.333754>,  <32.932266, 33.951767, 26.238768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598644, 33.752579, 26.333754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099347, 0.287825, 0.952516,
		-0.542670, 0.818038, -0.190590,
		-0.834050, -0.497967, 0.237463,
		32.348431, 33.603188, 26.404993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550415, 34.426964, 26.660534>,  <32.932266, 33.951767, 26.238768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550415, 34.426964, 26.660534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.421413, 34.055923, 26.735941>,  <32.344013, 33.833298, 26.781185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.421413, 34.055923, 26.735941>,  <32.550415, 34.426964, 26.660534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421413, 34.055923, 26.735941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146720, 0.147765, 0.978079,
		-0.935127, 0.343097, 0.088443,
		-0.322507, -0.927604, 0.188518,
		32.324661, 33.777641, 26.792496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055416, 34.515259, 27.183073>,  <32.550415, 34.426964, 26.660534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055416, 34.515259, 27.183073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.175430, 34.133686, 27.183353>,  <32.247440, 33.904743, 27.183521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.175430, 34.133686, 27.183353>,  <32.055416, 34.515259, 27.183073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175430, 34.133686, 27.183353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123666, 0.039623, 0.991532,
		-0.945878, -0.297409, 0.129857,
		0.300036, -0.953927, 0.000699,
		32.265442, 33.847507, 27.183563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930820, 34.296040, 27.795471>,  <32.055416, 34.515259, 27.183073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930820, 34.296040, 27.795471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.159901, 33.979477, 27.709967>,  <32.297348, 33.789539, 27.658665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.159901, 33.979477, 27.709967>,  <31.930820, 34.296040, 27.795471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159901, 33.979477, 27.709967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210405, -0.110115, 0.971393,
		-0.792303, -0.601293, 0.103452,
		0.572701, -0.791404, -0.213760,
		32.331711, 33.742054, 27.645840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704216, 33.769356, 28.298609>,  <31.930820, 34.296040, 27.795471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704216, 33.769356, 28.298609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.073879, 33.667065, 28.185097>,  <32.295677, 33.605690, 28.116989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.073879, 33.667065, 28.185097>,  <31.704216, 33.769356, 28.298609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073879, 33.667065, 28.185097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268563, -0.093362, 0.958727,
		-0.271667, -0.962230, -0.017603,
		0.924160, -0.255727, -0.283782,
		32.351128, 33.590347, 28.099962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729898, 33.143208, 28.559641>,  <31.704216, 33.769356, 28.298609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729898, 33.143208, 28.559641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.095154, 33.297192, 28.506008>,  <32.314308, 33.389584, 28.473827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.095154, 33.297192, 28.506008>,  <31.729898, 33.143208, 28.559641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095154, 33.297192, 28.506008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197194, -0.129266, 0.971805,
		0.356777, -0.913834, -0.193950,
		0.913140, 0.384964, -0.134083,
		32.369095, 33.412682, 28.465782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173672, 32.677467, 28.915705>,  <31.729898, 33.143208, 28.559641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173672, 32.677467, 28.915705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.413555, 32.994797, 28.873783>,  <32.557487, 33.185196, 28.848631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.413555, 32.994797, 28.873783>,  <32.173672, 32.677467, 28.915705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413555, 32.994797, 28.873783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392038, -0.177101, 0.902741,
		0.697606, -0.582470, -0.417222,
		0.599710, 0.793325, -0.104804,
		32.593468, 33.232796, 28.842342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790733, 32.551029, 29.219481>,  <32.173672, 32.677467, 28.915705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790733, 32.551029, 29.219481> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.793694, 32.950562, 29.238558>,  <32.795467, 33.190281, 29.250004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.793694, 32.950562, 29.238558>,  <32.790733, 32.551029, 29.219481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793694, 32.950562, 29.238558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584170, -0.043028, 0.810490,
		0.811598, 0.021867, -0.583808,
		0.007397, 0.998834, 0.047695,
		32.795914, 33.250214, 29.252867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360420, 32.314396, 28.817038>,  <32.790733, 32.551029, 29.219481>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360420, 32.314396, 28.817038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.612953, 32.005772, 28.785767>,  <33.764473, 31.820597, 28.767004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.612953, 32.005772, 28.785767>,  <33.360420, 32.314396, 28.817038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612953, 32.005772, 28.785767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470141, -0.300612, -0.829819,
		0.616759, 0.560643, -0.552530,
		0.631329, -0.771565, -0.078176,
		33.802353, 31.774302, 28.762314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747936, 32.406231, 28.113853>,  <33.360420, 32.314396, 28.817038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747936, 32.406231, 28.113853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.740124, 32.024864, 28.234261>,  <33.735435, 31.796043, 28.306505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.740124, 32.024864, 28.234261>,  <33.747936, 32.406231, 28.113853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740124, 32.024864, 28.234261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288142, -0.282932, -0.914835,
		0.957388, -0.104607, -0.269193,
		-0.019535, -0.953418, 0.301018,
		33.734264, 31.738838, 28.324566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891937, 32.036938, 27.564219>,  <33.747936, 32.406231, 28.113853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891937, 32.036938, 27.564219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.743580, 31.735901, 27.781858>,  <33.654568, 31.555279, 27.912443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.743580, 31.735901, 27.781858>,  <33.891937, 32.036938, 27.564219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743580, 31.735901, 27.781858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110400, -0.546002, -0.830478,
		0.922092, -0.368084, 0.119420,
		-0.370889, -0.752593, 0.544101,
		33.632313, 31.510122, 27.945089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163666, 31.521318, 27.254873>,  <33.891937, 32.036938, 27.564219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163666, 31.521318, 27.254873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.859455, 31.354340, 27.453802>,  <33.676929, 31.254152, 27.573158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.859455, 31.354340, 27.453802>,  <34.163666, 31.521318, 27.254873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859455, 31.354340, 27.453802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090481, -0.690322, -0.717822,
		0.642966, -0.590924, 0.487240,
		-0.760531, -0.417449, 0.497321,
		33.631294, 31.229105, 27.602999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311451, 30.797806, 27.396887>,  <34.163666, 31.521318, 27.254873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311451, 30.797806, 27.396887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.915054, 30.848791, 27.380463>,  <33.677216, 30.879383, 27.370609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.915054, 30.848791, 27.380463>,  <34.311451, 30.797806, 27.396887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915054, 30.848791, 27.380463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049005, -0.630513, -0.774631,
		-0.124625, -0.765641, 0.631080,
		-0.990993, 0.127464, -0.041058,
		33.617756, 30.887030, 27.368145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971569, 30.130690, 27.124609>,  <34.311451, 30.797806, 27.396887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971569, 30.130690, 27.124609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.679775, 30.403139, 27.099552>,  <33.504700, 30.566608, 27.084518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.679775, 30.403139, 27.099552>,  <33.971569, 30.130690, 27.124609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679775, 30.403139, 27.099552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253021, -0.353795, -0.900449,
		-0.635480, -0.641014, 0.430427,
		-0.729483, 0.681124, -0.062640,
		33.460930, 30.607477, 27.080761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375278, 29.717253, 26.859673>,  <33.971569, 30.130690, 27.124609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375278, 29.717253, 26.859673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.319500, 30.104286, 26.775450>,  <33.286034, 30.336506, 26.724916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.319500, 30.104286, 26.775450>,  <33.375278, 29.717253, 26.859673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319500, 30.104286, 26.775450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169963, -0.232867, -0.957541,
		-0.975534, -0.097739, 0.196927,
		-0.139447, 0.967585, -0.210558,
		33.277664, 30.394562, 26.712282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647800, 29.854828, 26.541477>,  <33.375278, 29.717253, 26.859673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647800, 29.854828, 26.541477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.906265, 30.141115, 26.435480>,  <33.061344, 30.312887, 26.371881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.906265, 30.141115, 26.435480>,  <32.647800, 29.854828, 26.541477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906265, 30.141115, 26.435480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377132, -0.002424, -0.926156,
		-0.663511, 0.698383, 0.268354,
		0.646162, 0.715720, -0.264991,
		33.100113, 30.355831, 26.355982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246601, 30.203730, 26.046652>,  <32.647800, 29.854828, 26.541477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246601, 30.203730, 26.046652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.629864, 30.298296, 25.982098>,  <32.859821, 30.355036, 25.943365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.629864, 30.298296, 25.982098>,  <32.246601, 30.203730, 26.046652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629864, 30.298296, 25.982098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104752, -0.235102, -0.966310,
		-0.266391, 0.942781, -0.200499,
		0.958156, 0.236414, -0.161387,
		32.917309, 30.369221, 25.933681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250401, 30.649193, 25.469761>,  <32.246601, 30.203730, 26.046652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250401, 30.649193, 25.469761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.622009, 30.501991, 25.454344>,  <32.844975, 30.413670, 25.445093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.622009, 30.501991, 25.454344>,  <32.250401, 30.649193, 25.469761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622009, 30.501991, 25.454344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056880, -0.039114, -0.997615,
		0.365619, 0.929001, -0.057270,
		0.929025, -0.368005, -0.038541,
		32.900715, 30.391590, 25.442781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653687, 31.110020, 25.020380>,  <32.250401, 30.649193, 25.469761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653687, 31.110020, 25.020380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.834702, 30.753366, 25.014675>,  <32.943310, 30.539375, 25.011251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.834702, 30.753366, 25.014675>,  <32.653687, 31.110020, 25.020380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834702, 30.753366, 25.014675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053198, -0.011029, -0.998523,
		0.890158, 0.452627, -0.052424,
		0.452537, -0.891632, -0.014262,
		32.970463, 30.485876, 25.010397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363373, 31.176039, 24.786613>,  <32.653687, 31.110020, 25.020380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363373, 31.176039, 24.786613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.232315, 30.807133, 24.704563>,  <33.153679, 30.585789, 24.655333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.232315, 30.807133, 24.704563>,  <33.363373, 31.176039, 24.786613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232315, 30.807133, 24.704563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143523, 0.166004, -0.975625,
		0.933836, -0.349100, 0.077975,
		-0.327646, -0.922265, -0.205124,
		33.134022, 30.530453, 24.643026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740959, 31.022690, 24.241962>,  <33.363373, 31.176039, 24.786613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740959, 31.022690, 24.241962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.477730, 30.722561, 24.216793>,  <33.319794, 30.542484, 24.201691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.477730, 30.722561, 24.216793>,  <33.740959, 31.022690, 24.241962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477730, 30.722561, 24.216793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002730, 0.081192, -0.996695,
		0.752951, -0.656067, -0.051382,
		-0.658071, -0.750322, -0.062924,
		33.280308, 30.497465, 24.197916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027645, 30.419746, 23.902403>,  <33.740959, 31.022690, 24.241962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027645, 30.419746, 23.902403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.634396, 30.402161, 23.831375>,  <33.398445, 30.391609, 23.788759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.634396, 30.402161, 23.831375>,  <34.027645, 30.419746, 23.902403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634396, 30.402161, 23.831375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167826, 0.169453, -0.971144,
		0.072785, -0.984557, -0.159215,
		-0.983126, -0.043964, -0.177568,
		33.339458, 30.388971, 23.778105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207886, 29.633188, 23.760939>,  <34.027645, 30.419746, 23.902403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207886, 29.633188, 23.760939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.467937, 29.433456, 23.531853>,  <34.623966, 29.313618, 23.394402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.467937, 29.433456, 23.531853>,  <34.207886, 29.633188, 23.760939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467937, 29.433456, 23.531853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575743, -0.168138, 0.800156,
		-0.495839, -0.849940, 0.178176,
		0.650126, -0.499332, -0.572716,
		34.662975, 29.283657, 23.360039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284794, 28.882938, 23.979498>,  <34.207886, 29.633188, 23.760939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284794, 28.882938, 23.979498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.622715, 29.007769, 23.805643>,  <34.825470, 29.082666, 23.701330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.622715, 29.007769, 23.805643>,  <34.284794, 28.882938, 23.979498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622715, 29.007769, 23.805643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500550, -0.173897, 0.848062,
		0.189079, -0.934006, -0.303120,
		0.844807, 0.312078, -0.434636,
		34.876156, 29.101393, 23.675253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881603, 28.390369, 24.184814>,  <34.284794, 28.882938, 23.979498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881603, 28.390369, 24.184814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.092262, 28.698317, 24.040623>,  <35.218658, 28.883085, 23.954107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.092262, 28.698317, 24.040623>,  <34.881603, 28.390369, 24.184814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092262, 28.698317, 24.040623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670928, -0.116033, 0.732388,
		0.522016, -0.627564, -0.577635,
		0.526645, 0.769870, -0.360479,
		35.250256, 28.929277, 23.932480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717514, 28.206232, 24.297083>,  <34.881603, 28.390369, 24.184814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717514, 28.206232, 24.297083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.689667, 28.603970, 24.265009>,  <35.672958, 28.842613, 24.245764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.689667, 28.603970, 24.265009>,  <35.717514, 28.206232, 24.297083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689667, 28.603970, 24.265009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583916, 0.105791, 0.804892,
		0.808824, 0.009213, -0.587979,
		-0.069619, 0.994346, -0.080186,
		35.668781, 28.902273, 24.240953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384689, 28.359774, 24.182884>,  <35.717514, 28.206232, 24.297083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384689, 28.359774, 24.182884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.185062, 28.675682, 24.325541>,  <36.065285, 28.865227, 24.411135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.185062, 28.675682, 24.325541>,  <36.384689, 28.359774, 24.182884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185062, 28.675682, 24.325541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673881, 0.094959, 0.732712,
		0.544808, 0.606008, -0.579603,
		-0.499067, 0.789771, 0.356643,
		36.035343, 28.912613, 24.432533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829456, 28.596325, 24.730417>,  <36.384689, 28.359774, 24.182884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829456, 28.596325, 24.730417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.524342, 28.849024, 24.785627>,  <36.341274, 29.000643, 24.818752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.524342, 28.849024, 24.785627>,  <36.829456, 28.596325, 24.730417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524342, 28.849024, 24.785627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415773, 0.315668, 0.852928,
		0.495265, 0.707990, -0.503451,
		-0.762788, 0.631747, 0.138024,
		36.295506, 29.038548, 24.827034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065193, 29.276970, 24.561609>,  <36.829456, 28.596325, 24.730417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065193, 29.276970, 24.561609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.764374, 29.275620, 24.825249>,  <36.583881, 29.274809, 24.983433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.764374, 29.275620, 24.825249>,  <37.065193, 29.276970, 24.561609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764374, 29.275620, 24.825249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643283, 0.214039, 0.735102,
		-0.143555, 0.976819, -0.158796,
		-0.752050, -0.003376, 0.659097,
		36.538757, 29.274607, 25.022978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150341, 29.805353, 24.877007>,  <37.065193, 29.276970, 24.561609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150341, 29.805353, 24.877007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.926079, 29.592371, 25.130671>,  <36.791523, 29.464581, 25.282869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.926079, 29.592371, 25.130671>,  <37.150341, 29.805353, 24.877007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926079, 29.592371, 25.130671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566305, 0.312183, 0.762784,
		-0.604123, 0.786786, 0.126506,
		-0.560655, -0.532457, 0.634158,
		36.757881, 29.432634, 25.320917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048492, 30.174391, 25.459532>,  <37.150341, 29.805353, 24.877007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048492, 30.174391, 25.459532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.964611, 29.820007, 25.624990>,  <36.914280, 29.607378, 25.724266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.964611, 29.820007, 25.624990>,  <37.048492, 30.174391, 25.459532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964611, 29.820007, 25.624990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378321, 0.316583, 0.869856,
		-0.901608, 0.338905, 0.268786,
		-0.209706, -0.885956, 0.413648,
		36.901699, 29.554220, 25.749084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719830, 30.326326, 25.991144>,  <37.048492, 30.174391, 25.459532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719830, 30.326326, 25.991144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.850136, 29.955526, 26.065491>,  <36.928322, 29.733046, 26.110098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.850136, 29.955526, 26.065491>,  <36.719830, 30.326326, 25.991144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850136, 29.955526, 26.065491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214969, 0.264065, 0.940244,
		-0.920687, -0.266346, 0.285300,
		0.325768, -0.927000, 0.185865,
		36.947865, 29.677425, 26.121250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520012, 30.214165, 26.700640>,  <36.719830, 30.326326, 25.991144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520012, 30.214165, 26.700640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.828415, 29.977024, 26.607630>,  <37.013458, 29.834740, 26.551823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.828415, 29.977024, 26.607630>,  <36.520012, 30.214165, 26.700640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828415, 29.977024, 26.607630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433987, 0.221937, 0.873155,
		-0.466047, -0.774125, 0.428406,
		0.771010, -0.592854, -0.232527,
		37.059719, 29.799168, 26.537872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702652, 29.766281, 27.254498>,  <36.520012, 30.214165, 26.700640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702652, 29.766281, 27.254498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.043102, 29.765884, 27.044512>,  <37.247372, 29.765646, 26.918520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.043102, 29.765884, 27.044512>,  <36.702652, 29.766281, 27.254498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043102, 29.765884, 27.044512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497031, 0.323374, 0.805226,
		0.168960, -0.946271, 0.275724,
		0.851124, -0.000992, -0.524963,
		37.298439, 29.765587, 26.887022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036613, 29.464327, 27.795132>,  <36.702652, 29.766281, 27.254498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036613, 29.464327, 27.795132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.314564, 29.568249, 27.526909>,  <37.481335, 29.630602, 27.365974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.314564, 29.568249, 27.526909>,  <37.036613, 29.464327, 27.795132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314564, 29.568249, 27.526909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476608, 0.531877, 0.699966,
		0.538523, -0.805977, 0.245750,
		0.694865, 0.259822, -0.670563,
		37.523026, 29.646189, 27.325741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695953, 29.135649, 28.035410>,  <37.036613, 29.464327, 27.795132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695953, 29.135649, 28.035410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.748009, 29.452595, 27.797007>,  <37.779243, 29.642761, 27.653965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.748009, 29.452595, 27.797007>,  <37.695953, 29.135649, 28.035410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748009, 29.452595, 27.797007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466132, 0.481652, 0.742114,
		0.875092, -0.374394, -0.306665,
		0.130137, 0.792364, -0.596006,
		37.787048, 29.690304, 27.618204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<38.436394, 31.385370, 21.806181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.065914, 31.403292, 21.955921>,  <37.843624, 31.414045, 22.045765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.065914, 31.403292, 21.955921>,  <38.436394, 31.385370, 21.806181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065914, 31.403292, 21.955921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360336, -0.397325, -0.843973,
		0.110925, -0.916583, 0.384149,
		-0.926204, 0.044805, 0.374352,
		37.788052, 31.416733, 22.068226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072151, 30.762947, 21.537622>,  <38.436394, 31.385370, 21.806181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072151, 30.762947, 21.537622> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.743641, 30.963062, 21.647324>,  <37.546535, 31.083132, 21.713144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.743641, 30.963062, 21.647324>,  <38.072151, 30.762947, 21.537622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743641, 30.963062, 21.647324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472746, -0.327629, -0.818029,
		-0.319372, -0.801495, 0.505575,
		-0.821287, 0.500264, 0.274268,
		37.497257, 31.113150, 21.729599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470104, 30.194265, 21.444532>,  <38.072151, 30.762947, 21.537622>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470104, 30.194265, 21.444532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.322311, 30.565945, 21.447987>,  <37.233635, 30.788952, 21.450060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.322311, 30.565945, 21.447987>,  <37.470104, 30.194265, 21.444532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322311, 30.565945, 21.447987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459830, -0.174755, -0.870642,
		-0.807489, -0.325659, 0.491841,
		-0.369484, 0.929197, 0.008635,
		37.211468, 30.844704, 21.450577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761375, 30.119709, 21.358704>,  <37.470104, 30.194265, 21.444532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761375, 30.119709, 21.358704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.809551, 30.501780, 21.250534>,  <36.838459, 30.731022, 21.185633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.809551, 30.501780, 21.250534>,  <36.761375, 30.119709, 21.358704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809551, 30.501780, 21.250534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623342, -0.139243, -0.769452,
		-0.772618, 0.261240, 0.578632,
		0.120441, 0.955178, -0.270423,
		36.845684, 30.788334, 21.169407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039978, 30.380175, 21.262543>,  <36.761375, 30.119709, 21.358704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039978, 30.380175, 21.262543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.258358, 30.626909, 21.035755>,  <36.389385, 30.774950, 20.899683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.258358, 30.626909, 21.035755>,  <36.039978, 30.380175, 21.262543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258358, 30.626909, 21.035755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657027, -0.104685, -0.746563,
		-0.519859, 0.780100, 0.348124,
		0.545951, 0.616835, -0.566968,
		36.422142, 30.811960, 20.865665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610516, 30.863884, 21.010918>,  <36.039978, 30.380175, 21.262543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610516, 30.863884, 21.010918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.924358, 30.891220, 20.764431>,  <36.112663, 30.907621, 20.616539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.924358, 30.891220, 20.764431>,  <35.610516, 30.863884, 21.010918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924358, 30.891220, 20.764431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610581, -0.087353, -0.787122,
		-0.107619, 0.993830, -0.026812,
		0.784608, 0.068338, -0.616215,
		36.159740, 30.911722, 20.579567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401608, 31.382145, 20.649954>,  <35.610516, 30.863884, 21.010918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401608, 31.382145, 20.649954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.697765, 31.221313, 20.434494>,  <35.875462, 31.124815, 20.305218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.697765, 31.221313, 20.434494>,  <35.401608, 31.382145, 20.649954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697765, 31.221313, 20.434494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633640, -0.150095, -0.758928,
		0.224300, 0.903219, -0.365903,
		0.740399, -0.402078, -0.538649,
		35.919884, 31.100691, 20.272900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436916, 31.876055, 19.967731>,  <35.401608, 31.382145, 20.649954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436916, 31.876055, 19.967731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.603844, 31.519409, 19.897451>,  <35.703999, 31.305422, 19.855284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.603844, 31.519409, 19.897451>,  <35.436916, 31.876055, 19.967731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603844, 31.519409, 19.897451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631829, -0.145704, -0.761290,
		0.653176, 0.428712, -0.624153,
		0.417316, -0.891615, -0.175702,
		35.729038, 31.251925, 19.844740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545372, 31.859472, 19.233034>,  <35.436916, 31.876055, 19.967731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545372, 31.859472, 19.233034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.544239, 31.479931, 19.359316>,  <35.543560, 31.252207, 19.435085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.544239, 31.479931, 19.359316>,  <35.545372, 31.859472, 19.233034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544239, 31.479931, 19.359316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605044, -0.249736, -0.756012,
		0.796187, -0.193159, -0.573389,
		-0.002835, -0.948853, 0.315706,
		35.543388, 31.195274, 19.454027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562801, 31.439224, 18.678602>,  <35.545372, 31.859472, 19.233034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562801, 31.439224, 18.678602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.406658, 31.189049, 18.948845>,  <35.312973, 31.038944, 19.110991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.406658, 31.189049, 18.948845>,  <35.562801, 31.439224, 18.678602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406658, 31.189049, 18.948845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754271, -0.203523, -0.624223,
		0.527913, -0.753265, -0.392301,
		-0.390363, -0.625437, 0.675608,
		35.289551, 31.001417, 19.151527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506714, 30.884762, 18.268227>,  <35.562801, 31.439224, 18.678602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506714, 30.884762, 18.268227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.231476, 30.844381, 18.555653>,  <35.066334, 30.820154, 18.728109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.231476, 30.844381, 18.555653>,  <35.506714, 30.884762, 18.268227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231476, 30.844381, 18.555653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694296, -0.196236, -0.692420,
		0.210908, -0.975346, 0.064939,
		-0.688092, -0.100950, 0.718566,
		35.025047, 30.814096, 18.771223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062550, 30.379244, 17.968716>,  <35.506714, 30.884762, 18.268227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062550, 30.379244, 17.968716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.855225, 30.547432, 18.266592>,  <34.730831, 30.648344, 18.445318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.855225, 30.547432, 18.266592>,  <35.062550, 30.379244, 17.968716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855225, 30.547432, 18.266592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847966, -0.139711, -0.511307,
		-0.110946, -0.896487, 0.428954,
		-0.518310, 0.420466, 0.744690,
		34.699734, 30.673573, 18.489998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512459, 29.975201, 18.023911>,  <35.062550, 30.379244, 17.968716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512459, 29.975201, 18.023911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.461193, 30.346214, 18.164339>,  <34.430435, 30.568823, 18.248596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.461193, 30.346214, 18.164339>,  <34.512459, 29.975201, 18.023911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461193, 30.346214, 18.164339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800006, 0.112528, -0.589346,
		-0.586145, -0.356392, 0.727612,
		-0.128162, 0.927535, 0.351074,
		34.422745, 30.624475, 18.269661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922203, 30.066252, 18.443396>,  <34.512459, 29.975201, 18.023911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922203, 30.066252, 18.443396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.026192, 30.380114, 18.218281>,  <34.088585, 30.568432, 18.083212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.026192, 30.380114, 18.218281>,  <33.922203, 30.066252, 18.443396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026192, 30.380114, 18.218281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857535, -0.080322, -0.508117,
		-0.443901, 0.614707, 0.651988,
		0.259974, 0.784655, -0.562787,
		34.104183, 30.615511, 18.049444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.327747, 29.691984, 18.070637>,  <33.922203, 30.066252, 18.443396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.327747, 29.691984, 18.070637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.954750, 29.575090, 18.155544>,  <32.730953, 29.504955, 18.206490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.954750, 29.575090, 18.155544>,  <33.327747, 29.691984, 18.070637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954750, 29.575090, 18.155544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218231, 0.012453, 0.975818,
		-0.287809, 0.956266, 0.052162,
		-0.932492, -0.292232, 0.212270,
		32.675003, 29.487421, 18.219225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025375, 30.151329, 18.612188>,  <33.327747, 29.691984, 18.070637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025375, 30.151329, 18.612188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.815983, 29.810726, 18.624241>,  <32.690350, 29.606365, 18.631472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.815983, 29.810726, 18.624241>,  <33.025375, 30.151329, 18.612188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815983, 29.810726, 18.624241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047956, 0.005860, 0.998832,
		-0.850689, 0.524311, 0.037767,
		-0.523477, -0.851507, 0.030129,
		32.658939, 29.555275, 18.633280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607162, 30.232866, 19.103468>,  <33.025375, 30.151329, 18.612188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607162, 30.232866, 19.103468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.603886, 29.833792, 19.076479>,  <32.601921, 29.594347, 19.060286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.603886, 29.833792, 19.076479>,  <32.607162, 30.232866, 19.103468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603886, 29.833792, 19.076479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133304, -0.067962, 0.988742,
		-0.991041, -0.000895, 0.133553,
		-0.008192, -0.997688, -0.067472,
		32.601429, 29.534485, 19.056238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.175034, 30.003319, 19.767538>,  <32.607162, 30.232866, 19.103468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.175034, 30.003319, 19.767538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.370232, 29.677256, 19.642715>,  <32.487350, 29.481617, 19.567822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.370232, 29.677256, 19.642715>,  <32.175034, 30.003319, 19.767538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370232, 29.677256, 19.642715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212507, -0.235803, 0.948281,
		-0.846583, -0.529070, 0.058156,
		0.487994, -0.815157, -0.312058,
		32.516628, 29.432709, 19.549097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840147, 29.382986, 20.092976>,  <32.175034, 30.003319, 19.767538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840147, 29.382986, 20.092976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.225677, 29.330858, 19.999979>,  <32.456997, 29.299582, 19.944181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.225677, 29.330858, 19.999979>,  <31.840147, 29.382986, 20.092976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225677, 29.330858, 19.999979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176639, -0.340882, 0.923362,
		-0.199582, -0.931030, -0.305533,
		0.963828, -0.130317, -0.232490,
		32.514828, 29.291763, 19.930231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041965, 28.823006, 20.554340>,  <31.840147, 29.382986, 20.092976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041965, 28.823006, 20.554340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.394852, 28.965178, 20.430819>,  <32.606583, 29.050480, 20.356705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.394852, 28.965178, 20.430819>,  <32.041965, 28.823006, 20.554340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394852, 28.965178, 20.430819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412821, -0.268504, 0.870335,
		0.226427, -0.895307, -0.383608,
		0.882218, 0.355429, -0.308805,
		32.659515, 29.071806, 20.338177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508343, 28.329456, 20.652473>,  <32.041965, 28.823006, 20.554340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508343, 28.329456, 20.652473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.731712, 28.660616, 20.631510>,  <32.865734, 28.859312, 20.618933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.731712, 28.660616, 20.631510>,  <32.508343, 28.329456, 20.652473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731712, 28.660616, 20.631510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570475, -0.337388, 0.748817,
		0.602264, -0.448054, -0.660701,
		0.558423, 0.827899, -0.052408,
		32.899239, 28.908985, 20.615788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293320, 28.082253, 20.819376>,  <32.508343, 28.329456, 20.652473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293320, 28.082253, 20.819376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.299244, 28.480492, 20.856392>,  <33.302799, 28.719435, 20.878601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.299244, 28.480492, 20.856392>,  <33.293320, 28.082253, 20.819376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299244, 28.480492, 20.856392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684953, -0.077525, 0.724451,
		0.728436, 0.052658, -0.683087,
		0.014807, 0.995599, 0.092540,
		33.303688, 28.779171, 20.884153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981159, 28.303358, 20.704304>,  <33.293320, 28.082253, 20.819376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981159, 28.303358, 20.704304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.812244, 28.595964, 20.918428>,  <33.710896, 28.771528, 21.046904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.812244, 28.595964, 20.918428>,  <33.981159, 28.303358, 20.704304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812244, 28.595964, 20.918428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741496, -0.060923, 0.668186,
		0.521402, 0.679096, -0.516690,
		-0.422284, 0.731516, 0.535313,
		33.685558, 28.815420, 21.079021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547077, 28.690411, 20.963350>,  <33.981159, 28.303358, 20.704304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547077, 28.690411, 20.963350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.266163, 28.845421, 21.202219>,  <34.097614, 28.938427, 21.345541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.266163, 28.845421, 21.202219>,  <34.547077, 28.690411, 20.963350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266163, 28.845421, 21.202219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670087, 0.076618, 0.738318,
		0.240362, 0.918670, -0.313483,
		-0.702289, 0.387525, 0.597173,
		34.055477, 28.961678, 21.381371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816963, 29.304789, 21.327801>,  <34.547077, 28.690411, 20.963350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816963, 29.304789, 21.327801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.512852, 29.168123, 21.548796>,  <34.330383, 29.086124, 21.681393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.512852, 29.168123, 21.548796>,  <34.816963, 29.304789, 21.327801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512852, 29.168123, 21.548796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554289, 0.102290, 0.826015,
		-0.338732, 0.934240, 0.111610,
		-0.760279, -0.341662, 0.552488,
		34.284767, 29.065624, 21.714542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658062, 29.798485, 21.833591>,  <34.816963, 29.304789, 21.327801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658062, 29.798485, 21.833591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.497028, 29.470373, 21.996107>,  <34.400410, 29.273506, 22.093616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.497028, 29.470373, 21.996107>,  <34.658062, 29.798485, 21.833591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497028, 29.470373, 21.996107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360054, 0.266169, 0.894156,
		-0.841599, 0.506257, 0.188189,
		-0.402583, -0.820279, 0.406287,
		34.376255, 29.224289, 22.117994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445641, 29.987658, 22.470240>,  <34.658062, 29.798485, 21.833591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445641, 29.987658, 22.470240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.452751, 29.589031, 22.502596>,  <34.457016, 29.349855, 22.522009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.452751, 29.589031, 22.502596>,  <34.445641, 29.987658, 22.470240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452751, 29.589031, 22.502596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281177, 0.082621, 0.956093,
		-0.959491, 0.005750, 0.281679,
		0.017775, -0.996564, 0.080891,
		34.458084, 29.290062, 22.526863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219704, 29.899942, 23.066761>,  <34.445641, 29.987658, 22.470240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219704, 29.899942, 23.066761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.390728, 29.546421, 22.990784>,  <34.493343, 29.334309, 22.945198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.390728, 29.546421, 22.990784>,  <34.219704, 29.899942, 23.066761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390728, 29.546421, 22.990784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354235, -0.029509, 0.934691,
		-0.831690, -0.466923, 0.300458,
		0.427563, -0.883805, -0.189943,
		34.518997, 29.281279, 22.933800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801392, 30.511471, 22.814379>,  <34.219704, 29.899942, 23.066761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801392, 30.511471, 22.814379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.476032, 30.501568, 23.046852>,  <33.280815, 30.495626, 23.186337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.476032, 30.501568, 23.046852>,  <33.801392, 30.511471, 22.814379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476032, 30.501568, 23.046852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578098, -0.076729, -0.812352,
		0.064708, -0.996744, 0.048097,
		-0.813397, -0.024761, 0.581181,
		33.232014, 30.494141, 23.221207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391075, 30.019255, 22.483461>,  <33.801392, 30.511471, 22.814379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391075, 30.019255, 22.483461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.165058, 30.284067, 22.680414>,  <33.029449, 30.442955, 22.798586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.165058, 30.284067, 22.680414>,  <33.391075, 30.019255, 22.483461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165058, 30.284067, 22.680414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697439, -0.064423, -0.713743,
		-0.440801, -0.746701, 0.498129,
		-0.565043, 0.662033, 0.492380,
		32.995544, 30.482677, 22.828129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694675, 29.754261, 22.538132>,  <33.391075, 30.019255, 22.483461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694675, 29.754261, 22.538132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.647243, 30.148617, 22.585400>,  <32.618782, 30.385229, 22.613760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.647243, 30.148617, 22.585400>,  <32.694675, 29.754261, 22.538132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647243, 30.148617, 22.585400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703087, 0.000667, -0.711103,
		-0.701146, -0.167408, 0.693086,
		-0.118582, 0.985887, 0.118170,
		32.611668, 30.444384, 22.620852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988525, 29.908453, 22.459801>,  <32.694675, 29.754261, 22.538132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988525, 29.908453, 22.459801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.121208, 30.284447, 22.427807>,  <32.200817, 30.510044, 22.408611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.121208, 30.284447, 22.427807>,  <31.988525, 29.908453, 22.459801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121208, 30.284447, 22.427807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782749, 0.226912, -0.579496,
		-0.526569, 0.254830, 0.811041,
		0.331708, 0.939986, -0.079983,
		32.220722, 30.566442, 22.403812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441660, 30.365271, 22.638760>,  <31.988525, 29.908453, 22.459801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441660, 30.365271, 22.638760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.692640, 30.569153, 22.403301>,  <31.843229, 30.691483, 22.262026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.692640, 30.569153, 22.403301>,  <31.441660, 30.365271, 22.638760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692640, 30.569153, 22.403301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778346, 0.389229, -0.492624,
		-0.021974, 0.767269, 0.640949,
		0.627451, 0.509705, -0.588648,
		31.880877, 30.722065, 22.226707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073633, 30.986250, 22.555731>,  <31.441660, 30.365271, 22.638760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073633, 30.986250, 22.555731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.341524, 30.989687, 22.258709>,  <31.502258, 30.991749, 22.080496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.341524, 30.989687, 22.258709>,  <31.073633, 30.986250, 22.555731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341524, 30.989687, 22.258709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716885, 0.268375, -0.643468,
		0.193754, 0.963276, 0.185898,
		0.669728, 0.008593, -0.742557,
		31.542442, 30.992266, 22.035942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007301, 31.638971, 22.271545>,  <31.073633, 30.986250, 22.555731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007301, 31.638971, 22.271545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.188889, 31.433020, 21.980667>,  <31.297840, 31.309448, 21.806141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.188889, 31.433020, 21.980667>,  <31.007301, 31.638971, 22.271545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188889, 31.433020, 21.980667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691751, 0.310745, -0.651858,
		0.561601, 0.798960, -0.215101,
		0.453967, -0.514880, -0.727195,
		31.325079, 31.278555, 21.762508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169666, 31.907391, 21.537514>,  <31.007301, 31.638971, 22.271545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169666, 31.907391, 21.537514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.045000, 32.287411, 21.530926>,  <30.970201, 32.515423, 21.526974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.045000, 32.287411, 21.530926>,  <31.169666, 31.907391, 21.537514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045000, 32.287411, 21.530926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269135, 0.104888, 0.957374,
		0.911280, 0.293947, -0.288381,
		-0.311665, 0.950049, -0.016471,
		30.951500, 32.572426, 21.525984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707222, 32.290722, 21.794363>,  <31.169666, 31.907391, 21.537514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707222, 32.290722, 21.794363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.400990, 32.544193, 21.838791>,  <31.217249, 32.696274, 21.865448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.400990, 32.544193, 21.838791>,  <31.707222, 32.290722, 21.794363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400990, 32.544193, 21.838791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200790, 0.071330, 0.977034,
		0.611200, 0.770303, -0.181845,
		-0.765583, 0.633676, 0.111072,
		31.171314, 32.734295, 21.872112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960485, 32.893772, 22.137596>,  <31.707222, 32.290722, 21.794363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.960485, 32.893772, 22.137596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.568829, 32.913223, 22.216503>,  <31.333834, 32.924892, 22.263847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.568829, 32.913223, 22.216503>,  <31.960485, 32.893772, 22.137596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568829, 32.913223, 22.216503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201230, 0.366032, 0.908585,
		-0.028023, 0.929331, -0.368183,
		-0.979143, 0.048629, 0.197266,
		31.275085, 32.927811, 22.275682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848778, 33.507675, 22.421356>,  <31.960485, 32.893772, 22.137596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848778, 33.507675, 22.421356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.540493, 33.282669, 22.541075>,  <31.355522, 33.147667, 22.612906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.540493, 33.282669, 22.541075>,  <31.848778, 33.507675, 22.421356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540493, 33.282669, 22.541075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185902, 0.250771, 0.950029,
		-0.609461, 0.787839, -0.088699,
		-0.770712, -0.562516, 0.299296,
		31.309278, 33.113914, 22.630863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444431, 33.949745, 22.941870>,  <31.848778, 33.507675, 22.421356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444431, 33.949745, 22.941870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.342762, 33.567478, 23.001326>,  <31.281761, 33.338120, 23.036999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.342762, 33.567478, 23.001326>,  <31.444431, 33.949745, 22.941870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342762, 33.567478, 23.001326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216240, 0.093643, 0.971839,
		-0.942675, 0.279158, 0.182853,
		-0.254173, -0.955668, 0.148640,
		31.266510, 33.280777, 23.045918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977247, 33.939472, 23.509903>,  <31.444431, 33.949745, 22.941870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977247, 33.939472, 23.509903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.127880, 33.569550, 23.488287>,  <31.218260, 33.347595, 23.475317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.127880, 33.569550, 23.488287>,  <30.977247, 33.939472, 23.509903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127880, 33.569550, 23.488287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059420, -0.082330, 0.994832,
		-0.924476, -0.371424, -0.085956,
		0.376582, -0.924806, -0.054042,
		31.240854, 33.292107, 23.472075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518467, 33.437763, 23.770821>,  <30.977247, 33.939472, 23.509903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518467, 33.437763, 23.770821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.881584, 33.272850, 23.801636>,  <31.099455, 33.173901, 23.820126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.881584, 33.272850, 23.801636>,  <30.518467, 33.437763, 23.770821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881584, 33.272850, 23.801636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037961, 0.102158, 0.994044,
		-0.417697, -0.905310, 0.077088,
		0.907793, -0.412283, 0.077038,
		31.153923, 33.149166, 23.824747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.299950, 33.294098, 18.453104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.478901, 32.975941, 18.616667>,  <33.586273, 32.785046, 18.714804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.478901, 32.975941, 18.616667>,  <33.299950, 33.294098, 18.453104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478901, 32.975941, 18.616667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501213, 0.601649, 0.621936,
		-0.740700, -0.073293, 0.667826,
		0.447380, -0.795391, 0.408906,
		33.613113, 32.737324, 18.739338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136894, 33.316639, 19.234854>,  <33.299950, 33.294098, 18.453104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136894, 33.316639, 19.234854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.462837, 33.101357, 19.148750>,  <33.658405, 32.972187, 19.097088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.462837, 33.101357, 19.148750>,  <33.136894, 33.316639, 19.234854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462837, 33.101357, 19.148750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515281, 0.502477, 0.694264,
		-0.265494, -0.676648, 0.686776,
		0.814861, -0.538206, -0.215259,
		33.707294, 32.939896, 19.084173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414715, 33.237896, 19.815376>,  <33.136894, 33.316639, 19.234854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414715, 33.237896, 19.815376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.733677, 33.155121, 19.588636>,  <33.925056, 33.105453, 19.452593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.733677, 33.155121, 19.588636>,  <33.414715, 33.237896, 19.815376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733677, 33.155121, 19.588636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603389, 0.260989, 0.753529,
		-0.007995, -0.942900, 0.332981,
		0.797407, -0.206941, -0.566849,
		33.972900, 33.093037, 19.418581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894028, 32.907429, 20.251623>,  <33.414715, 33.237896, 19.815376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894028, 32.907429, 20.251623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.139874, 32.986252, 19.946098>,  <34.287380, 33.033546, 19.762783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.139874, 32.986252, 19.946098>,  <33.894028, 32.907429, 20.251623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139874, 32.986252, 19.946098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623975, 0.470940, 0.623595,
		0.482595, -0.859874, 0.166488,
		0.614619, 0.197059, -0.763814,
		34.324257, 33.045372, 19.716953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523182, 32.542065, 20.423393>,  <33.894028, 32.907429, 20.251623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523182, 32.542065, 20.423393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.613766, 32.832180, 20.163342>,  <34.668118, 33.006248, 20.007311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.613766, 32.832180, 20.163342>,  <34.523182, 32.542065, 20.423393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613766, 32.832180, 20.163342> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725372, 0.319871, 0.609524,
		0.650039, -0.609619, -0.453667,
		0.226462, 0.725292, -0.650128,
		34.681705, 33.049767, 19.968304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270844, 32.699429, 20.510172>,  <34.523182, 32.542065, 20.423393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270844, 32.699429, 20.510172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.152824, 33.026833, 20.313000>,  <35.082012, 33.223274, 20.194696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.152824, 33.026833, 20.313000>,  <35.270844, 32.699429, 20.510172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152824, 33.026833, 20.313000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594923, 0.561068, 0.575560,
		0.747672, -0.123439, -0.652495,
		-0.295047, 0.818514, -0.492932,
		35.064312, 33.272388, 20.165121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832088, 32.913578, 20.085546>,  <35.270844, 32.699429, 20.510172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832088, 32.913578, 20.085546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.605648, 33.236935, 20.150074>,  <35.469784, 33.430950, 20.188791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.605648, 33.236935, 20.150074>,  <35.832088, 32.913578, 20.085546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605648, 33.236935, 20.150074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737626, 0.409399, 0.536936,
		0.368011, 0.422957, -0.828055,
		-0.566106, 0.808394, 0.161321,
		35.435818, 33.479454, 20.198471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286301, 33.446987, 20.097553>,  <35.832088, 32.913578, 20.085546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286301, 33.446987, 20.097553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.969894, 33.621986, 20.268614>,  <35.780052, 33.726986, 20.371250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.969894, 33.621986, 20.268614>,  <36.286301, 33.446987, 20.097553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969894, 33.621986, 20.268614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608914, 0.495263, 0.619627,
		0.059290, 0.750537, -0.658163,
		-0.791017, 0.437502, 0.427649,
		35.732590, 33.753239, 20.396908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431622, 34.148891, 20.147802>,  <36.286301, 33.446987, 20.097553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431622, 34.148891, 20.147802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.128929, 34.125843, 20.408276>,  <35.947315, 34.112015, 20.564560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.128929, 34.125843, 20.408276>,  <36.431622, 34.148891, 20.147802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128929, 34.125843, 20.408276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506058, 0.578946, 0.639318,
		-0.413839, 0.813327, -0.408945,
		-0.756732, -0.057624, 0.651181,
		35.901909, 34.108555, 20.603630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218575, 34.823383, 20.417543>,  <36.431622, 34.148891, 20.147802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218575, 34.823383, 20.417543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.081608, 34.587032, 20.709738>,  <35.999428, 34.445221, 20.885056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.081608, 34.587032, 20.709738>,  <36.218575, 34.823383, 20.417543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081608, 34.587032, 20.709738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467911, 0.566966, 0.677944,
		-0.814744, 0.573945, 0.082338,
		-0.342420, -0.590878, 0.730488,
		35.978882, 34.409767, 20.928885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873230, 35.211571, 20.836216>,  <36.218575, 34.823383, 20.417543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873230, 35.211571, 20.836216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.988373, 34.916332, 21.080297>,  <36.057457, 34.739189, 21.226746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.988373, 34.916332, 21.080297>,  <35.873230, 35.211571, 20.836216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988373, 34.916332, 21.080297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400868, 0.671531, 0.623178,
		-0.869739, 0.065227, 0.489183,
		0.287853, -0.738100, 0.610204,
		36.074730, 34.694901, 21.263359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817638, 35.484802, 21.496685>,  <35.873230, 35.211571, 20.836216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817638, 35.484802, 21.496685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.048950, 35.161732, 21.542736>,  <36.187737, 34.967892, 21.570368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.048950, 35.161732, 21.542736>,  <35.817638, 35.484802, 21.496685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048950, 35.161732, 21.542736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489180, 0.456208, 0.743355,
		-0.652910, -0.373551, 0.658915,
		0.578284, -0.807672, 0.115129,
		36.222435, 34.919430, 21.577274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163273, 35.432510, 21.903868>,  <35.817638, 35.484802, 21.496685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163273, 35.432510, 21.903868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.803658, 35.604263, 21.938179>,  <34.587887, 35.707314, 21.958765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.803658, 35.604263, 21.938179>,  <35.163273, 35.432510, 21.903868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803658, 35.604263, 21.938179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182455, -0.189280, -0.964823,
		-0.398043, -0.883065, 0.248513,
		-0.899040, 0.429383, 0.085778,
		34.533947, 35.733078, 21.963913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749836, 34.948364, 21.563974>,  <35.163273, 35.432510, 21.903868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749836, 34.948364, 21.563974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.552002, 35.295715, 21.578409>,  <34.433300, 35.504128, 21.587070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.552002, 35.295715, 21.578409>,  <34.749836, 34.948364, 21.563974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552002, 35.295715, 21.578409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445957, -0.217919, -0.868121,
		-0.745995, -0.445452, 0.495039,
		-0.494585, 0.868380, 0.036086,
		34.403625, 35.556229, 21.589235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985733, 34.857208, 21.441574>,  <34.749836, 34.948364, 21.563974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985733, 34.857208, 21.441574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.050621, 35.248470, 21.389578>,  <34.089554, 35.483227, 21.358379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.050621, 35.248470, 21.389578>,  <33.985733, 34.857208, 21.441574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.050621, 35.248470, 21.389578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596194, -0.007814, -0.802802,
		-0.786281, 0.207731, 0.581903,
		0.162220, 0.978155, -0.129992,
		34.099285, 35.541916, 21.350580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314034, 35.105843, 21.285019>,  <33.985733, 34.857208, 21.441574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314034, 35.105843, 21.285019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.553318, 35.403118, 21.165144>,  <33.696888, 35.581482, 21.093218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.553318, 35.403118, 21.165144>,  <33.314034, 35.105843, 21.285019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553318, 35.403118, 21.165144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576158, 0.138973, -0.805437,
		-0.556944, 0.654488, 0.511330,
		0.598210, 0.743190, -0.299688,
		33.732780, 35.626076, 21.075237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907860, 35.602524, 21.094501>,  <33.314034, 35.105843, 21.285019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907860, 35.602524, 21.094501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.243874, 35.689476, 20.895670>,  <33.445480, 35.741646, 20.776371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.243874, 35.689476, 20.895670>,  <32.907860, 35.602524, 21.094501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243874, 35.689476, 20.895670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538104, 0.216990, -0.814469,
		-0.069188, 0.951662, 0.299252,
		0.840034, 0.217381, -0.497080,
		33.495884, 35.754692, 20.746546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688580, 36.128246, 20.741701>,  <32.907860, 35.602524, 21.094501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688580, 36.128246, 20.741701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.032925, 36.037319, 20.559608>,  <33.239532, 35.982765, 20.450352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.032925, 36.037319, 20.559608>,  <32.688580, 36.128246, 20.741701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032925, 36.037319, 20.559608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436142, 0.131173, -0.890266,
		0.262086, 0.964946, 0.013780,
		0.860866, -0.227316, -0.455232,
		33.291183, 35.969124, 20.423038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632118, 36.508850, 20.165237>,  <32.688580, 36.128246, 20.741701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632118, 36.508850, 20.165237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.919353, 36.243702, 20.080431>,  <33.091694, 36.084614, 20.029547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.919353, 36.243702, 20.080431>,  <32.632118, 36.508850, 20.165237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919353, 36.243702, 20.080431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307231, -0.028584, -0.951206,
		0.624465, 0.748189, -0.224180,
		0.718090, -0.662870, -0.212017,
		33.134781, 36.044842, 20.016827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781872, 36.697197, 19.562195>,  <32.632118, 36.508850, 20.165237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781872, 36.697197, 19.562195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.916218, 36.320461, 19.557684>,  <32.996826, 36.094418, 19.554977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.916218, 36.320461, 19.557684>,  <32.781872, 36.697197, 19.562195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916218, 36.320461, 19.557684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364460, -0.118907, -0.923596,
		0.868542, 0.314311, -0.383201,
		0.335862, -0.941844, -0.011278,
		33.016975, 36.037907, 19.554300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203648, 36.554001, 18.918737>,  <32.781872, 36.697197, 19.562195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203648, 36.554001, 18.918737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.075706, 36.206947, 19.071007>,  <32.998940, 35.998714, 19.162369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.075706, 36.206947, 19.071007>,  <33.203648, 36.554001, 18.918737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075706, 36.206947, 19.071007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522306, -0.173749, -0.834870,
		0.790499, -0.465865, -0.397594,
		-0.319855, -0.867630, 0.380673,
		32.979752, 35.946659, 19.185209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271519, 36.150097, 18.381109>,  <33.203648, 36.554001, 18.918737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271519, 36.150097, 18.381109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.033211, 35.952812, 18.634661>,  <32.890228, 35.834442, 18.786793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.033211, 35.952812, 18.634661>,  <33.271519, 36.150097, 18.381109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033211, 35.952812, 18.634661> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558006, -0.313462, -0.768356,
		0.577659, -0.811470, -0.088465,
		-0.595767, -0.493212, 0.633880,
		32.854481, 35.804848, 18.824825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098251, 35.415852, 18.065342>,  <33.271519, 36.150097, 18.381109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098251, 35.415852, 18.065342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.825600, 35.521233, 18.338390>,  <32.662006, 35.584461, 18.502220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.825600, 35.521233, 18.338390>,  <33.098251, 35.415852, 18.065342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825600, 35.521233, 18.338390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719981, -0.407766, -0.561563,
		0.130406, -0.874254, 0.467626,
		-0.681631, 0.263451, 0.682622,
		32.621109, 35.600269, 18.543177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646732, 34.848057, 18.100306>,  <33.098251, 35.415852, 18.065342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646732, 34.848057, 18.100306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.437260, 35.142406, 18.272003>,  <32.311577, 35.319016, 18.375023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.437260, 35.142406, 18.272003>,  <32.646732, 34.848057, 18.100306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437260, 35.142406, 18.272003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803877, -0.260035, -0.534942,
		-0.282032, -0.625197, 0.727727,
		-0.523678, 0.735874, 0.429243,
		32.280155, 35.363167, 18.400776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054668, 34.505795, 18.294239>,  <32.646732, 34.848057, 18.100306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054668, 34.505795, 18.294239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.949278, 34.891033, 18.316254>,  <31.886044, 35.122177, 18.329462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.949278, 34.891033, 18.316254>,  <32.054668, 34.505795, 18.294239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949278, 34.891033, 18.316254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735257, -0.163554, -0.657759,
		-0.624483, -0.213769, 0.751215,
		-0.263472, 0.963095, 0.055039,
		31.870235, 35.179962, 18.332766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456995, 34.367241, 18.458876>,  <32.054668, 34.505795, 18.294239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456995, 34.367241, 18.458876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.105740, 34.495525, 18.600872>,  <30.894987, 34.572498, 18.686069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.105740, 34.495525, 18.600872>,  <31.456995, 34.367241, 18.458876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105740, 34.495525, 18.600872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131721, -0.551261, 0.823870,
		0.459918, 0.770230, 0.441838,
		-0.878137, 0.320713, 0.354990,
		30.842299, 34.591740, 18.707369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562706, 34.570633, 19.108593>,  <31.456995, 34.367241, 18.458876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562706, 34.570633, 19.108593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.173515, 34.479362, 19.094418>,  <30.940001, 34.424603, 19.085913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.173515, 34.479362, 19.094418>,  <31.562706, 34.570633, 19.108593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173515, 34.479362, 19.094418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104512, -0.572013, 0.813559,
		-0.205901, 0.787869, 0.580402,
		-0.972976, -0.228172, -0.035436,
		30.881622, 34.410912, 19.083786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360830, 34.581196, 19.763487>,  <31.562706, 34.570633, 19.108593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360830, 34.581196, 19.763487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.053539, 34.368740, 19.620535>,  <30.869165, 34.241268, 19.534763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.053539, 34.368740, 19.620535>,  <31.360830, 34.581196, 19.763487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053539, 34.368740, 19.620535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066330, -0.489210, 0.869640,
		-0.636732, 0.691786, 0.340594,
		-0.768227, -0.531136, -0.357382,
		30.823071, 34.209400, 19.513321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821075, 34.615665, 20.265888>,  <31.360830, 34.581196, 19.763487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821075, 34.615665, 20.265888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.743677, 34.292580, 20.043119>,  <30.697239, 34.098728, 19.909458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.743677, 34.292580, 20.043119>,  <30.821075, 34.615665, 20.265888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743677, 34.292580, 20.043119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104542, -0.547444, 0.830287,
		-0.975516, 0.218878, 0.021488,
		-0.193495, -0.807711, -0.556922,
		30.685629, 34.050266, 19.876043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328667, 34.306595, 20.587049>,  <30.821075, 34.615665, 20.265888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328667, 34.306595, 20.587049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.462757, 34.002403, 20.364594>,  <30.543211, 33.819889, 20.231119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.462757, 34.002403, 20.364594>,  <30.328667, 34.306595, 20.587049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462757, 34.002403, 20.364594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178110, -0.630806, 0.755222,
		-0.925148, -0.154118, -0.346913,
		0.335228, -0.760481, -0.556140,
		30.563326, 33.774258, 20.197752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752481, 33.727161, 20.621300>,  <30.328667, 34.306595, 20.587049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752481, 33.727161, 20.621300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.095631, 33.548187, 20.520220>,  <30.301519, 33.440804, 20.459572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.095631, 33.548187, 20.520220>,  <29.752481, 33.727161, 20.621300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.095631, 33.548187, 20.520220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105841, -0.635075, 0.765165,
		-0.502846, -0.629667, -0.592170,
		0.857872, -0.447436, -0.252700,
		30.352993, 33.413956, 20.444410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619373, 33.111656, 20.746029>,  <29.752481, 33.727161, 20.621300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619373, 33.111656, 20.746029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.018955, 33.093681, 20.742666>,  <30.258705, 33.082897, 20.740648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.018955, 33.093681, 20.742666>,  <29.619373, 33.111656, 20.746029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018955, 33.093681, 20.742666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022917, -0.651322, 0.758455,
		-0.039560, -0.757469, -0.651671,
		0.998954, -0.044939, -0.008407,
		30.318642, 33.080200, 20.740145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763840, 32.451134, 20.938829>,  <29.619373, 33.111656, 20.746029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763840, 32.451134, 20.938829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.105434, 32.636284, 21.033871>,  <30.310390, 32.747375, 21.090897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.105434, 32.636284, 21.033871>,  <29.763840, 32.451134, 20.938829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105434, 32.636284, 21.033871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073766, -0.559772, 0.825357,
		0.515042, -0.687315, -0.512182,
		0.853985, 0.462875, 0.237606,
		30.361629, 32.775146, 21.105152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907667, 31.770641, 21.305552>,  <29.763840, 32.451134, 20.938829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907667, 31.770641, 21.305552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.217495, 31.517908, 21.294052>,  <30.403391, 31.366268, 21.287151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.217495, 31.517908, 21.294052>,  <29.907667, 31.770641, 21.305552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217495, 31.517908, 21.294052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125715, 0.198344, -0.972036,
		0.619869, 0.749295, 0.233063,
		0.774569, -0.631835, -0.028750,
		30.449865, 31.328358, 21.285427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536463, 32.068756, 20.992203>,  <29.907667, 31.770641, 21.305552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536463, 32.068756, 20.992203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.586664, 31.672834, 20.965260>,  <30.616785, 31.435282, 20.949093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.586664, 31.672834, 20.965260>,  <30.536463, 32.068756, 20.992203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586664, 31.672834, 20.965260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093135, 0.079352, -0.992486,
		0.987712, 0.118289, 0.102145,
		0.125505, -0.989804, -0.067360,
		30.624315, 31.375893, 20.945051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174139, 31.842194, 20.488638>,  <30.536463, 32.068756, 20.992203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174139, 31.842194, 20.488638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.929832, 31.526781, 20.517429>,  <30.783249, 31.337534, 20.534704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.929832, 31.526781, 20.517429>,  <31.174139, 31.842194, 20.488638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929832, 31.526781, 20.517429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184169, -0.229879, -0.955635,
		0.770095, -0.570414, 0.285626,
		-0.610767, -0.788533, 0.071976,
		30.746603, 31.290222, 20.539022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475664, 31.275764, 20.153591>,  <31.174139, 31.842194, 20.488638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475664, 31.275764, 20.153591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.089024, 31.173525, 20.146067>,  <30.857040, 31.112181, 20.141552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.089024, 31.173525, 20.146067>,  <31.475664, 31.275764, 20.153591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089024, 31.173525, 20.146067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108597, -0.341978, -0.933412,
		0.232147, -0.904278, 0.358313,
		-0.966599, -0.255601, -0.018813,
		30.799044, 31.096846, 20.140423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483713, 30.677429, 19.703779>,  <31.475664, 31.275764, 20.153591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483713, 30.677429, 19.703779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.098370, 30.784201, 19.714289>,  <30.867163, 30.848263, 19.720594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.098370, 30.784201, 19.714289>,  <31.483713, 30.677429, 19.703779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098370, 30.784201, 19.714289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114789, -0.321780, -0.939830,
		-0.242412, -0.908410, 0.340630,
		-0.963359, 0.266926, 0.026272,
		30.809362, 30.864279, 19.722170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019516, 30.004642, 19.556116>,  <31.483713, 30.677429, 19.703779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019516, 30.004642, 19.556116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.819796, 30.339159, 19.465506>,  <30.699963, 30.539869, 19.411139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.819796, 30.339159, 19.465506>,  <31.019516, 30.004642, 19.556116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819796, 30.339159, 19.465506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291841, -0.408503, -0.864843,
		-0.815799, -0.365707, 0.448030,
		-0.499301, 0.836291, -0.226528,
		30.670006, 30.590046, 19.397547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274401, 29.914055, 19.457777>,  <31.019516, 30.004642, 19.556116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274401, 29.914055, 19.457777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.361280, 30.234198, 19.234257>,  <30.413408, 30.426283, 19.100145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.361280, 30.234198, 19.234257>,  <30.274401, 29.914055, 19.457777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361280, 30.234198, 19.234257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100454, -0.551099, -0.828372,
		-0.970945, 0.236055, -0.039299,
		0.217198, 0.800355, -0.558799,
		30.426439, 30.474304, 19.066618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739147, 29.903170, 18.907452>,  <30.274401, 29.914055, 19.457777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739147, 29.903170, 18.907452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.981117, 30.180553, 18.750900>,  <30.126299, 30.346985, 18.656969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.981117, 30.180553, 18.750900>,  <29.739147, 29.903170, 18.907452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981117, 30.180553, 18.750900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168255, -0.369096, -0.914034,
		-0.778303, 0.618774, -0.106597,
		0.604925, 0.693460, -0.391380,
		30.162594, 30.388592, 18.633486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371857, 30.082499, 18.375046>,  <29.739147, 29.903170, 18.907452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371857, 30.082499, 18.375046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.744171, 30.204824, 18.294933>,  <29.967560, 30.278219, 18.246866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.744171, 30.204824, 18.294933>,  <29.371857, 30.082499, 18.375046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744171, 30.204824, 18.294933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061128, -0.409950, -0.910057,
		-0.360413, 0.859313, -0.362883,
		0.930788, 0.305814, -0.200279,
		30.023407, 30.296568, 18.234850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.409901, 33.431667, 33.054245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.764370, 33.371605, 32.878902>,  <35.977051, 33.335567, 32.773697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.764370, 33.371605, 32.878902>,  <35.409901, 33.431667, 33.054245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764370, 33.371605, 32.878902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444822, -0.010757, -0.895555,
		0.129758, 0.988604, -0.076326,
		0.886170, -0.150157, -0.438356,
		36.030220, 33.326557, 32.747395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348068, 33.704025, 32.355156>,  <35.409901, 33.431667, 33.054245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348068, 33.704025, 32.355156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.685879, 33.489834, 32.357674>,  <35.888565, 33.361320, 32.359184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.685879, 33.489834, 32.357674>,  <35.348068, 33.704025, 32.355156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685879, 33.489834, 32.357674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132999, -0.221107, -0.966138,
		0.518735, 0.815093, -0.257948,
		0.844527, -0.535477, 0.006290,
		35.939236, 33.329189, 32.359562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686096, 33.890900, 31.747478>,  <35.348068, 33.704025, 32.355156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686096, 33.890900, 31.747478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.829929, 33.538445, 31.870308>,  <35.916229, 33.326969, 31.944006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.829929, 33.538445, 31.870308>,  <35.686096, 33.890900, 31.747478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829929, 33.538445, 31.870308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005349, -0.331027, -0.943606,
		0.933099, 0.337659, -0.123744,
		0.359580, -0.881140, 0.307075,
		35.937805, 33.274101, 31.962431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221439, 33.701038, 31.276484>,  <35.686096, 33.890900, 31.747478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221439, 33.701038, 31.276484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.120510, 33.350155, 31.439871>,  <36.059952, 33.139626, 31.537903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.120510, 33.350155, 31.439871>,  <36.221439, 33.701038, 31.276484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120510, 33.350155, 31.439871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057244, -0.407857, -0.911250,
		0.965949, -0.253309, 0.052697,
		-0.252320, -0.877204, 0.408470,
		36.044815, 33.086994, 31.562412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553959, 33.134903, 30.766811>,  <36.221439, 33.701038, 31.276484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553959, 33.134903, 30.766811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.258106, 32.969780, 30.979425>,  <36.080593, 32.870705, 31.106995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.258106, 32.969780, 30.979425>,  <36.553959, 33.134903, 30.766811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258106, 32.969780, 30.979425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375349, -0.402526, -0.834916,
		0.558617, -0.817045, 0.142775,
		-0.739635, -0.412808, 0.531535,
		36.036217, 32.845936, 31.138885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404144, 32.523235, 30.466032>,  <36.553959, 33.134903, 30.766811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404144, 32.523235, 30.466032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.073090, 32.572983, 30.684958>,  <35.874458, 32.602829, 30.816313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.073090, 32.572983, 30.684958>,  <36.404144, 32.523235, 30.466032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073090, 32.572983, 30.684958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523721, -0.521788, -0.673389,
		0.201836, -0.843961, 0.496984,
		-0.827634, 0.124367, 0.547316,
		35.824799, 32.610294, 30.849152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108723, 31.881416, 30.439495>,  <36.404144, 32.523235, 30.466032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108723, 31.881416, 30.439495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.813084, 32.136890, 30.525106>,  <35.635700, 32.290176, 30.576473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.813084, 32.136890, 30.525106>,  <36.108723, 31.881416, 30.439495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813084, 32.136890, 30.525106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632235, -0.548146, -0.547554,
		-0.232395, -0.540015, 0.808935,
		-0.739101, 0.638686, 0.214030,
		35.591354, 32.328495, 30.589315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536423, 31.463896, 30.456779>,  <36.108723, 31.881416, 30.439495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536423, 31.463896, 30.456779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.377651, 31.827749, 30.407770>,  <35.282387, 32.046062, 30.378365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.377651, 31.827749, 30.407770>,  <35.536423, 31.463896, 30.456779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377651, 31.827749, 30.407770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563103, -0.346758, -0.750116,
		-0.724817, -0.228751, 0.649857,
		-0.396933, 0.909632, -0.122526,
		35.258572, 32.100639, 30.371012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829330, 31.423382, 30.596163>,  <35.536423, 31.463896, 30.456779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829330, 31.423382, 30.596163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.874378, 31.751257, 30.371510>,  <34.901405, 31.947981, 30.236717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.874378, 31.751257, 30.371510>,  <34.829330, 31.423382, 30.596163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874378, 31.751257, 30.371510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704933, -0.332440, -0.626540,
		-0.700276, 0.466473, 0.540385,
		0.112619, 0.819687, -0.561632,
		34.908165, 31.997164, 30.203020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140236, 31.633106, 30.513155>,  <34.829330, 31.423382, 30.596163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140236, 31.633106, 30.513155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335453, 31.797386, 30.205093>,  <34.452583, 31.895954, 30.020256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335453, 31.797386, 30.205093>,  <34.140236, 31.633106, 30.513155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335453, 31.797386, 30.205093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682062, -0.371122, -0.630127,
		-0.544615, 0.832823, 0.098999,
		0.488043, 0.410700, -0.770155,
		34.481865, 31.920597, 29.974047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560757, 31.674807, 30.040737>,  <34.140236, 31.633106, 30.513155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560757, 31.674807, 30.040737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.886120, 31.737959, 29.816792>,  <34.081337, 31.775850, 29.682425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.886120, 31.737959, 29.816792>,  <33.560757, 31.674807, 30.040737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886120, 31.737959, 29.816792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455959, -0.424602, -0.782186,
		-0.361210, 0.891508, -0.273386,
		0.813405, 0.157880, -0.559862,
		34.130142, 31.785322, 29.648832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278664, 31.957954, 29.510242>,  <33.560757, 31.674807, 30.040737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278664, 31.957954, 29.510242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.629173, 31.842306, 29.356073>,  <33.839478, 31.772917, 29.263571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.629173, 31.842306, 29.356073>,  <33.278664, 31.957954, 29.510242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629173, 31.842306, 29.356073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446813, -0.188316, -0.874583,
		0.180277, 0.938588, -0.294199,
		0.876275, -0.289119, -0.385424,
		33.892056, 31.755569, 29.240446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371498, 32.756908, 29.590176>,  <33.278664, 31.957954, 29.510242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371498, 32.756908, 29.590176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.168007, 33.098484, 29.633972>,  <33.045910, 33.303429, 29.660250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.168007, 33.098484, 29.633972>,  <33.371498, 32.756908, 29.590176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168007, 33.098484, 29.633972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539688, 0.217230, 0.813357,
		0.670769, 0.472869, -0.571370,
		-0.508730, 0.853936, 0.109490,
		33.015388, 33.354664, 29.666819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826427, 33.169548, 29.860199>,  <33.371498, 32.756908, 29.590176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826427, 33.169548, 29.860199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.486179, 33.363251, 29.942110>,  <33.282028, 33.479473, 29.991257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.486179, 33.363251, 29.942110>,  <33.826427, 33.169548, 29.860199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486179, 33.363251, 29.942110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402458, 0.349079, 0.846269,
		0.338328, 0.802271, -0.491828,
		-0.850624, 0.484257, 0.204777,
		33.230991, 33.508530, 30.003544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097343, 33.808250, 30.090986>,  <33.826427, 33.169548, 29.860199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097343, 33.808250, 30.090986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.720871, 33.777668, 30.222643>,  <33.494987, 33.759319, 30.301638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.720871, 33.777668, 30.222643>,  <34.097343, 33.808250, 30.090986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720871, 33.777668, 30.222643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259265, 0.461297, 0.848520,
		-0.216709, 0.883945, -0.414341,
		-0.941180, -0.076458, 0.329143,
		33.438519, 33.754730, 30.321386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871075, 34.494900, 30.231182>,  <34.097343, 33.808250, 30.090986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871075, 34.494900, 30.231182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.640232, 34.236698, 30.431293>,  <33.501728, 34.081776, 30.551359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.640232, 34.236698, 30.431293>,  <33.871075, 34.494900, 30.231182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640232, 34.236698, 30.431293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062867, 0.575649, 0.815277,
		-0.814247, 0.501951, -0.291628,
		-0.577104, -0.645503, 0.500277,
		33.467102, 34.043049, 30.581377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380131, 34.894947, 30.522709>,  <33.871075, 34.494900, 30.231182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380131, 34.894947, 30.522709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.359814, 34.567760, 30.751913>,  <33.347622, 34.371449, 30.889437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.359814, 34.567760, 30.751913>,  <33.380131, 34.894947, 30.522709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359814, 34.567760, 30.751913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000189, 0.573745, 0.819034,
		-0.998709, 0.041712, -0.028989,
		-0.050796, -0.817971, 0.573013,
		33.344574, 34.322369, 30.923817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864647, 35.046806, 30.933786>,  <33.380131, 34.894947, 30.522709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864647, 35.046806, 30.933786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035633, 34.739407, 31.124229>,  <33.138226, 34.554966, 31.238495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035633, 34.739407, 31.124229>,  <32.864647, 35.046806, 30.933786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035633, 34.739407, 31.124229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095698, 0.562157, 0.821475,
		-0.898951, -0.305591, 0.313848,
		0.427467, -0.768501, 0.476107,
		33.163872, 34.508858, 31.267061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496845, 34.954556, 31.568005>,  <32.864647, 35.046806, 30.933786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496845, 34.954556, 31.568005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.850510, 34.777805, 31.628677>,  <33.062710, 34.671757, 31.665081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.850510, 34.777805, 31.628677>,  <32.496845, 34.954556, 31.568005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850510, 34.777805, 31.628677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084617, 0.470768, 0.878190,
		-0.459456, -0.763626, 0.453625,
		0.884161, -0.441874, 0.151681,
		33.115757, 34.645245, 31.674181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528084, 34.717667, 32.256077>,  <32.496845, 34.954556, 31.568005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528084, 34.717667, 32.256077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.920139, 34.726715, 32.177261>,  <33.155373, 34.732143, 32.129971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.920139, 34.726715, 32.177261>,  <32.528084, 34.717667, 32.256077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920139, 34.726715, 32.177261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155581, 0.528471, 0.834573,
		0.123007, -0.848650, 0.514454,
		0.980134, 0.022619, -0.197039,
		33.214180, 34.733501, 32.118149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904686, 34.469257, 32.832401>,  <32.528084, 34.717667, 32.256077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904686, 34.469257, 32.832401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.178349, 34.673164, 32.623760>,  <33.342545, 34.795509, 32.498577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.178349, 34.673164, 32.623760>,  <32.904686, 34.469257, 32.832401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178349, 34.673164, 32.623760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199887, 0.556735, 0.806282,
		0.701409, -0.655885, 0.278998,
		0.684157, 0.509766, -0.521602,
		33.383595, 34.826096, 32.467281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448078, 34.414230, 33.246864>,  <32.904686, 34.469257, 32.832401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448078, 34.414230, 33.246864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.537193, 34.728382, 33.015850>,  <33.590664, 34.916874, 32.877243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.537193, 34.728382, 33.015850>,  <33.448078, 34.414230, 33.246864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537193, 34.728382, 33.015850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266629, 0.520748, 0.811006,
		0.937696, -0.334671, -0.093388,
		0.222788, 0.785377, -0.577536,
		33.604031, 34.963997, 32.842590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187572, 34.624634, 33.524666>,  <33.448078, 34.414230, 33.246864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187572, 34.624634, 33.524666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.048927, 34.926971, 33.302475>,  <33.965740, 35.108376, 33.169159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.048927, 34.926971, 33.302475>,  <34.187572, 34.624634, 33.524666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048927, 34.926971, 33.302475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189058, 0.636327, 0.747894,
		0.918759, 0.154211, -0.363458,
		-0.346611, 0.755849, -0.555476,
		33.944942, 35.153725, 33.135834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733093, 35.082226, 33.414944>,  <34.187572, 34.624634, 33.524666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733093, 35.082226, 33.414944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.391525, 35.286869, 33.376846>,  <34.186584, 35.409657, 33.353989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.391525, 35.286869, 33.376846>,  <34.733093, 35.082226, 33.414944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391525, 35.286869, 33.376846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272354, 0.595307, 0.755932,
		0.443438, 0.619569, -0.647686,
		-0.853924, 0.511609, -0.095239,
		34.135349, 35.440353, 33.348274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951057, 35.863766, 33.429020>,  <34.733093, 35.082226, 33.414944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951057, 35.863766, 33.429020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.563576, 35.859627, 33.528221>,  <34.331085, 35.857143, 33.587742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.563576, 35.859627, 33.528221>,  <34.951057, 35.863766, 33.429020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563576, 35.859627, 33.528221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196365, 0.579189, 0.791190,
		-0.151825, 0.815128, -0.559031,
		-0.968705, -0.010348, 0.247998,
		34.272964, 35.856522, 33.602619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756779, 36.563385, 33.674488>,  <34.951057, 35.863766, 33.429020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756779, 36.563385, 33.674488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.511730, 36.294426, 33.840656>,  <34.364700, 36.133049, 33.940357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.511730, 36.294426, 33.840656>,  <34.756779, 36.563385, 33.674488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511730, 36.294426, 33.840656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256934, 0.327623, 0.909202,
		-0.747446, 0.663734, -0.027948,
		-0.612625, -0.672399, 0.415416,
		34.327942, 36.092705, 33.965282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259064, 36.538776, 33.083916>,  <34.756779, 36.563385, 33.674488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259064, 36.538776, 33.083916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.349201, 36.915661, 32.984760>,  <35.403286, 37.141792, 32.925266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.349201, 36.915661, 32.984760>,  <35.259064, 36.538776, 33.083916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349201, 36.915661, 32.984760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228681, -0.196171, -0.953531,
		-0.947060, 0.271563, 0.171260,
		0.225348, 0.942216, -0.247887,
		35.416805, 37.198326, 32.910393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671909, 36.750080, 32.627968>,  <35.259064, 36.538776, 33.083916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671909, 36.750080, 32.627968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.964245, 37.011364, 32.548790>,  <35.139648, 37.168137, 32.501282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.964245, 37.011364, 32.548790>,  <34.671909, 36.750080, 32.627968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964245, 37.011364, 32.548790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250036, -0.013628, -0.968141,
		-0.635099, 0.757053, 0.153367,
		0.730843, 0.653212, -0.197945,
		35.183498, 37.207329, 32.489407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374310, 37.395794, 32.333496>,  <34.671909, 36.750080, 32.627968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374310, 37.395794, 32.333496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.746433, 37.312309, 32.212852>,  <34.969707, 37.262218, 32.140469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.746433, 37.312309, 32.212852>,  <34.374310, 37.395794, 32.333496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746433, 37.312309, 32.212852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319541, -0.057523, -0.945825,
		0.180054, 0.976284, -0.120206,
		0.930309, -0.208710, -0.301606,
		35.025524, 37.249695, 32.122372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493176, 37.850712, 31.769171>,  <34.374310, 37.395794, 32.333496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493176, 37.850712, 31.769171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.736504, 37.539474, 31.706541>,  <34.882500, 37.352730, 31.668962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.736504, 37.539474, 31.706541>,  <34.493176, 37.850712, 31.769171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736504, 37.539474, 31.706541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196012, 0.043886, -0.979619,
		0.769110, 0.626610, -0.125820,
		0.608317, -0.778097, -0.156576,
		34.918999, 37.306046, 31.659569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895119, 38.065025, 31.179636>,  <34.493176, 37.850712, 31.769171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895119, 38.065025, 31.179636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.943844, 37.670265, 31.221947>,  <34.973080, 37.433411, 31.247334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.943844, 37.670265, 31.221947>,  <34.895119, 38.065025, 31.179636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943844, 37.670265, 31.221947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063478, -0.098607, -0.993100,
		0.990522, 0.127683, 0.050636,
		0.121809, -0.986901, 0.105777,
		34.980385, 37.374195, 31.253679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470264, 37.825230, 30.811993>,  <34.895119, 38.065025, 31.179636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470264, 37.825230, 30.811993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.219452, 37.517113, 30.858423>,  <35.068962, 37.332241, 30.886282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.219452, 37.517113, 30.858423>,  <35.470264, 37.825230, 30.811993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219452, 37.517113, 30.858423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066683, -0.201535, -0.977208,
		0.776131, -0.605004, 0.177735,
		-0.627035, -0.770294, 0.116075,
		35.031342, 37.286026, 30.893246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810013, 37.174286, 30.551083>,  <35.470264, 37.825230, 30.811993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810013, 37.174286, 30.551083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.415237, 37.116627, 30.522312>,  <35.178371, 37.082031, 30.505051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.415237, 37.116627, 30.522312>,  <35.810013, 37.174286, 30.551083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415237, 37.116627, 30.522312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112908, -0.300471, -0.947084,
		0.114913, -0.942835, 0.312822,
		-0.986938, -0.144152, -0.071925,
		35.119156, 37.073380, 30.500734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689293, 36.392757, 30.456209>,  <35.810013, 37.174286, 30.551083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689293, 36.392757, 30.456209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.370640, 36.593430, 30.321341>,  <35.179447, 36.713833, 30.240419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.370640, 36.593430, 30.321341>,  <35.689293, 36.392757, 30.456209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370640, 36.593430, 30.321341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079495, -0.466010, -0.881201,
		-0.599212, -0.728798, 0.331358,
		-0.796634, 0.501685, -0.337174,
		35.131649, 36.743935, 30.220188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630966, 36.081924, 29.803267>,  <35.689293, 36.392757, 30.456209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630966, 36.081924, 29.803267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.334274, 36.350105, 29.810600>,  <35.156261, 36.511013, 29.815001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.334274, 36.350105, 29.810600>,  <35.630966, 36.081924, 29.803267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334274, 36.350105, 29.810600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219629, -0.216970, -0.951150,
		-0.633723, -0.709520, 0.308183,
		-0.741727, 0.670451, 0.018332,
		35.111755, 36.551239, 29.816099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063953, 35.722614, 29.540586>,  <35.630966, 36.081924, 29.803267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063953, 35.722614, 29.540586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.018925, 36.117188, 29.492807>,  <34.991905, 36.353931, 29.464140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.018925, 36.117188, 29.492807>,  <35.063953, 35.722614, 29.540586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018925, 36.117188, 29.492807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144270, -0.135166, -0.980263,
		-0.983114, -0.093119, 0.157529,
		-0.112574, 0.986438, -0.119450,
		34.985153, 36.413120, 29.456972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519978, 35.729794, 29.098057>,  <35.063953, 35.722614, 29.540586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519978, 35.729794, 29.098057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.698502, 36.085407, 29.057207>,  <34.805614, 36.298775, 29.032698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.698502, 36.085407, 29.057207>,  <34.519978, 35.729794, 29.098057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698502, 36.085407, 29.057207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006608, -0.117391, -0.993064,
		-0.894854, 0.442540, -0.058268,
		0.446311, 0.889032, -0.102123,
		34.832394, 36.352116, 29.026569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111217, 35.988613, 28.603243>,  <34.519978, 35.729794, 29.098057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111217, 35.988613, 28.603243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.454807, 36.193336, 28.597292>,  <34.660961, 36.316170, 28.593721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.454807, 36.193336, 28.597292>,  <34.111217, 35.988613, 28.603243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454807, 36.193336, 28.597292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031259, -0.081416, -0.996190,
		-0.511066, 0.855235, -0.085933,
		0.858973, 0.511805, -0.014875,
		34.712498, 36.346878, 28.592829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068710, 36.438366, 28.087667>,  <34.111217, 35.988613, 28.603243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068710, 36.438366, 28.087667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.466106, 36.452198, 28.131084>,  <34.704544, 36.460499, 28.157135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.466106, 36.452198, 28.131084>,  <34.068710, 36.438366, 28.087667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466106, 36.452198, 28.131084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107857, 0.021135, -0.993942,
		-0.036665, 0.999179, 0.017268,
		0.993490, 0.034580, 0.108543,
		34.764153, 36.462574, 28.163647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260952, 37.038490, 27.736904>,  <34.068710, 36.438366, 28.087667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260952, 37.038490, 27.736904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.581890, 36.802055, 27.770025>,  <34.774452, 36.660194, 27.789898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.581890, 36.802055, 27.770025>,  <34.260952, 37.038490, 27.736904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581890, 36.802055, 27.770025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115912, 0.018224, -0.993092,
		0.585500, 0.806398, 0.083137,
		0.802343, -0.591092, 0.082801,
		34.822594, 36.624729, 27.794865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818604, 37.401424, 27.516905>,  <34.260952, 37.038490, 27.736904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818604, 37.401424, 27.516905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.926167, 37.018768, 27.472128>,  <34.990704, 36.789173, 27.445263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.926167, 37.018768, 27.472128>,  <34.818604, 37.401424, 27.516905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926167, 37.018768, 27.472128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095309, 0.142080, -0.985256,
		0.958439, 0.254271, 0.129383,
		0.268905, -0.956640, -0.111940,
		35.006840, 36.731777, 27.438545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297565, 37.408070, 27.069822>,  <34.818604, 37.401424, 27.516905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297565, 37.408070, 27.069822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.243294, 37.011772, 27.071110>,  <35.210732, 36.773994, 27.071882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.243294, 37.011772, 27.071110>,  <35.297565, 37.408070, 27.069822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243294, 37.011772, 27.071110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149141, -0.023636, -0.988534,
		0.979464, -0.133640, 0.150968,
		-0.135676, -0.990748, 0.003219,
		35.202591, 36.714546, 27.072075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664452, 37.221611, 26.512653>,  <35.297565, 37.408070, 27.069822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664452, 37.221611, 26.512653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.415718, 36.911190, 26.554749>,  <35.266479, 36.724937, 26.580006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.415718, 36.911190, 26.554749>,  <35.664452, 37.221611, 26.512653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415718, 36.911190, 26.554749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073140, -0.191334, -0.978796,
		0.779730, -0.600947, 0.175737,
		-0.621829, -0.776050, 0.105236,
		35.229168, 36.678375, 26.586319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939426, 36.647224, 26.168962>,  <35.664452, 37.221611, 26.512653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939426, 36.647224, 26.168962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.546135, 36.574528, 26.162897>,  <35.310162, 36.530910, 26.159258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.546135, 36.574528, 26.162897>,  <35.939426, 36.647224, 26.168962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546135, 36.574528, 26.162897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054803, -0.215119, -0.975049,
		0.173949, -0.959527, 0.221472,
		-0.983229, -0.181746, -0.015165,
		35.251167, 36.520004, 26.158348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858978, 36.081673, 25.762846>,  <35.939426, 36.647224, 26.168962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858978, 36.081673, 25.762846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.478016, 36.202747, 25.777313>,  <35.249439, 36.275391, 25.785994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.478016, 36.202747, 25.777313>,  <35.858978, 36.081673, 25.762846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478016, 36.202747, 25.777313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108806, -0.226720, -0.967863,
		-0.284758, -0.925732, 0.248863,
		-0.952405, 0.302684, 0.036165,
		35.192295, 36.293552, 25.788162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391727, 35.540047, 25.469347>,  <35.858978, 36.081673, 25.762846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391727, 35.540047, 25.469347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.227261, 35.902164, 25.426676>,  <35.128578, 36.119434, 25.401073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.227261, 35.902164, 25.426676>,  <35.391727, 35.540047, 25.469347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227261, 35.902164, 25.426676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227623, -0.215285, -0.949653,
		-0.882682, -0.366186, 0.294585,
		-0.411169, 0.905295, -0.106676,
		35.103909, 36.173752, 25.394672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714401, 35.403610, 25.041607>,  <35.391727, 35.540047, 25.469347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714401, 35.403610, 25.041607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.756809, 35.801128, 25.028177>,  <34.782253, 36.039639, 25.020119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.756809, 35.801128, 25.028177>,  <34.714401, 35.403610, 25.041607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756809, 35.801128, 25.028177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328629, 0.003148, -0.944454,
		-0.938490, 0.111161, 0.326924,
		0.106016, 0.993798, -0.033576,
		34.788612, 36.099266, 25.018105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103546, 35.735153, 24.900877>,  <34.714401, 35.403610, 25.041607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103546, 35.735153, 24.900877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.378231, 36.006306, 24.795885>,  <34.543041, 36.168999, 24.732889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.378231, 36.006306, 24.795885>,  <34.103546, 35.735153, 24.900877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378231, 36.006306, 24.795885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409488, 0.062396, -0.910179,
		-0.600616, 0.732519, 0.320433,
		0.686717, 0.677881, -0.262482,
		34.584248, 36.209671, 24.717140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809490, 36.212734, 24.348078>,  <34.103546, 35.735153, 24.900877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809490, 36.212734, 24.348078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.196144, 36.314766, 24.338755>,  <34.428139, 36.375984, 24.333160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.196144, 36.314766, 24.338755>,  <33.809490, 36.212734, 24.348078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196144, 36.314766, 24.338755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051931, 0.106054, -0.993003,
		-0.250822, 0.961087, 0.115763,
		0.966639, 0.255079, -0.023309,
		34.486137, 36.391289, 24.331762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799675, 36.825020, 23.991034>,  <33.809490, 36.212734, 24.348078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799675, 36.825020, 23.991034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.145329, 36.625156, 23.967010>,  <34.352722, 36.505238, 23.952597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.145329, 36.625156, 23.967010>,  <33.799675, 36.825020, 23.991034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145329, 36.625156, 23.967010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000256, 0.119772, -0.992801,
		0.503255, 0.857902, 0.103628,
		0.864138, -0.499658, -0.060056,
		34.404572, 36.475258, 23.948994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213070, 37.126789, 23.513874>,  <33.799675, 36.825020, 23.991034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213070, 37.126789, 23.513874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.368114, 36.758099, 23.508564>,  <34.461143, 36.536884, 23.505379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.368114, 36.758099, 23.508564>,  <34.213070, 37.126789, 23.513874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368114, 36.758099, 23.508564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072049, -0.015937, -0.997274,
		0.919001, 0.387516, -0.072587,
		0.387616, -0.921725, -0.013274,
		34.484398, 36.481583, 23.504581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654499, 37.045773, 22.933496>,  <34.213070, 37.126789, 23.513874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654499, 37.045773, 22.933496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.609726, 36.663277, 23.041628>,  <34.582863, 36.433781, 23.106506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.609726, 36.663277, 23.041628>,  <34.654499, 37.045773, 22.933496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609726, 36.663277, 23.041628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050852, -0.277191, -0.959468,
		0.992414, -0.093648, 0.079654,
		-0.111932, -0.956240, 0.270326,
		34.576145, 36.376404, 23.122726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153374, 36.618629, 22.482422>,  <34.654499, 37.045773, 22.933496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153374, 36.618629, 22.482422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850563, 36.396137, 22.619545>,  <34.668877, 36.262642, 22.701818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.850563, 36.396137, 22.619545>,  <35.153374, 36.618629, 22.482422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850563, 36.396137, 22.619545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040580, -0.483626, -0.874333,
		0.652126, -0.675802, 0.343544,
		-0.757024, -0.556235, 0.342810,
		34.623455, 36.229267, 22.722387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375771, 35.968002, 22.402262>,  <35.153374, 36.618629, 22.482422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375771, 35.968002, 22.402262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.977318, 35.933861, 22.410654>,  <34.738247, 35.913376, 22.415689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.977318, 35.933861, 22.410654>,  <35.375771, 35.968002, 22.402262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977318, 35.933861, 22.410654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013137, -0.380598, -0.924647,
		0.086904, -0.920794, 0.380246,
		-0.996130, -0.085350, 0.020979,
		34.678478, 35.908257, 22.416948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789246, 35.357590, 22.271959>,  <35.375771, 35.968002, 22.402262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789246, 35.357590, 22.271959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.100494, 35.145172, 22.137783>,  <36.287243, 35.017719, 22.057278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.100494, 35.145172, 22.137783>,  <35.789246, 35.357590, 22.271959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100494, 35.145172, 22.137783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473979, 0.145998, 0.868348,
		-0.412160, -0.834670, 0.365309,
		0.778119, -0.531047, -0.335441,
		36.333931, 34.985859, 22.037151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967628, 34.928570, 22.864246>,  <35.789246, 35.357590, 22.271959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967628, 34.928570, 22.864246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.291191, 34.943390, 22.629538>,  <36.485329, 34.952282, 22.488712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.291191, 34.943390, 22.629538>,  <35.967628, 34.928570, 22.864246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291191, 34.943390, 22.629538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558436, 0.263778, 0.786493,
		0.183917, -0.963872, 0.192680,
		0.808903, 0.037050, -0.586774,
		36.533863, 34.954506, 22.453505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396503, 34.564369, 23.159525>,  <35.967628, 34.928570, 22.864246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396503, 34.564369, 23.159525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.627991, 34.793190, 22.927029>,  <36.766884, 34.930481, 22.787531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.627991, 34.793190, 22.927029>,  <36.396503, 34.564369, 23.159525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627991, 34.793190, 22.927029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566408, 0.230836, 0.791136,
		0.586742, -0.787065, -0.190426,
		0.578719, 0.572052, -0.581241,
		36.801605, 34.964806, 22.752657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068027, 34.553059, 23.511730>,  <36.396503, 34.564369, 23.159525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068027, 34.553059, 23.511730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.124863, 34.856834, 23.257780>,  <37.158966, 35.039101, 23.105410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.124863, 34.856834, 23.257780>,  <37.068027, 34.553059, 23.511730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124863, 34.856834, 23.257780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592884, 0.448309, 0.668960,
		0.792653, -0.471460, -0.386558,
		0.142090, 0.759437, -0.634875,
		37.167488, 35.084667, 23.067318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777615, 34.627895, 23.443979>,  <37.068027, 34.553059, 23.511730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777615, 34.627895, 23.443979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.633343, 34.980099, 23.320940>,  <37.546780, 35.191422, 23.247116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.633343, 34.980099, 23.320940>,  <37.777615, 34.627895, 23.443979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633343, 34.980099, 23.320940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540818, 0.466130, 0.700171,
		0.759886, 0.086182, -0.644318,
		-0.360678, 0.880509, -0.307597,
		37.525139, 35.244251, 23.228661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
