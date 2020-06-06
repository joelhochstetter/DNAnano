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
	<24.157640, 35.076122, 34.719765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.434656, 35.258671, 34.943233>,  <24.600866, 35.368202, 35.077312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.434656, 35.258671, 34.943233>,  <24.157640, 35.076122, 34.719765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.434656, 35.258671, 34.943233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363488, 0.889710, -0.276211,
		-0.623109, -0.011783, 0.782046,
		0.692539, 0.456374, 0.558670,
		24.642418, 35.395584, 35.110836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.533375, 34.350555, 34.335987>,  <24.157640, 35.076122, 34.719765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.533375, 34.350555, 34.335987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.788992, 34.063969, 34.224056>,  <24.942362, 33.892017, 34.156898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.788992, 34.063969, 34.224056>,  <24.533375, 34.350555, 34.335987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.788992, 34.063969, 34.224056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674456, 0.347055, 0.651660,
		-0.369776, -0.605170, 0.705007,
		0.639042, -0.716465, -0.279828,
		24.980705, 33.849030, 34.140106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.481668, 34.651283, 33.628941>,  <24.533375, 34.350555, 34.335987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.481668, 34.651283, 33.628941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.831369, 34.810970, 33.739437>,  <25.041189, 34.906784, 33.805737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.831369, 34.810970, 33.739437>,  <24.481668, 34.651283, 33.628941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.831369, 34.810970, 33.739437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317580, -0.900669, 0.296543,
		0.367189, -0.171523, -0.914195,
		0.874251, 0.399217, 0.276243,
		25.093645, 34.930737, 33.822311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.122879, 34.324402, 33.237385>,  <24.481668, 34.651283, 33.628941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.122879, 34.324402, 33.237385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.276443, 34.489845, 33.567608>,  <25.368582, 34.589111, 33.765739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.276443, 34.489845, 33.567608>,  <25.122879, 34.324402, 33.237385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.276443, 34.489845, 33.567608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523356, -0.834058, 0.174488,
		0.760730, 0.365071, -0.536669,
		0.383912, 0.413607, 0.825555,
		25.391617, 34.613926, 33.815273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823599, 34.327103, 33.261833>,  <25.122879, 34.324402, 33.237385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823599, 34.327103, 33.261833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718615, 34.307728, 33.647324>,  <25.655624, 34.296104, 33.878616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718615, 34.307728, 33.647324>,  <25.823599, 34.327103, 33.261833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.718615, 34.307728, 33.647324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610449, -0.781814, 0.126957,
		0.747306, 0.621627, 0.234762,
		-0.262460, -0.048434, 0.963726,
		25.639877, 34.293198, 33.936443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426279, 34.319893, 33.609249>,  <25.823599, 34.327103, 33.261833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426279, 34.319893, 33.609249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.135281, 34.171917, 33.840385>,  <25.960682, 34.083130, 33.979065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.135281, 34.171917, 33.840385>,  <26.426279, 34.319893, 33.609249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.135281, 34.171917, 33.840385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507894, -0.856596, 0.091033,
		0.461295, 0.359706, 0.811060,
		-0.727496, -0.369939, 0.577836,
		25.917032, 34.060936, 34.013737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.715921, 34.215584, 34.239529>,  <26.426279, 34.319893, 33.609249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.715921, 34.215584, 34.239529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405220, 33.967052, 34.198326>,  <26.218800, 33.817936, 34.173603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405220, 33.967052, 34.198326>,  <26.715921, 34.215584, 34.239529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405220, 33.967052, 34.198326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591264, -0.775735, 0.220549,
		-0.216938, 0.110408, 0.969922,
		-0.776752, -0.621326, -0.103006,
		26.172194, 33.780655, 34.167423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612856, 33.674107, 34.875751>,  <26.715921, 34.215584, 34.239529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612856, 33.674107, 34.875751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509853, 33.492035, 34.534809>,  <26.448051, 33.382793, 34.330246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.509853, 33.492035, 34.534809>,  <26.612856, 33.674107, 34.875751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.509853, 33.492035, 34.534809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657422, -0.728995, 0.190689,
		-0.708158, -0.511251, 0.486965,
		-0.257505, -0.455179, -0.852351,
		26.432602, 33.355480, 34.279102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754251, 33.045891, 35.026917>,  <26.612856, 33.674107, 34.875751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754251, 33.045891, 35.026917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678852, 32.996021, 34.637264>,  <26.633612, 32.966099, 34.403473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678852, 32.996021, 34.637264>,  <26.754251, 33.045891, 35.026917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678852, 32.996021, 34.637264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573683, -0.819054, -0.006183,
		-0.797092, -0.560006, 0.225916,
		-0.188500, -0.124676, -0.974127,
		26.622303, 32.958618, 34.345028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414753, 32.417088, 35.052505>,  <26.754251, 33.045891, 35.026917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.414753, 32.417088, 35.052505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608570, 32.489590, 34.710194>,  <26.724859, 32.533089, 34.504807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.608570, 32.489590, 34.710194>,  <26.414753, 32.417088, 35.052505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.608570, 32.489590, 34.710194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604976, -0.776054, 0.178169,
		-0.631841, -0.604059, -0.485685,
		0.484542, 0.181253, -0.855784,
		26.753933, 32.543964, 34.453457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.456432, 31.733688, 34.752998>,  <26.414753, 32.417088, 35.052505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.456432, 31.733688, 34.752998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703079, 31.958029, 34.532009>,  <26.851068, 32.092632, 34.399418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.703079, 31.958029, 34.532009>,  <26.456432, 31.733688, 34.752998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.703079, 31.958029, 34.532009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740113, -0.652187, 0.163966,
		-0.268354, -0.509996, -0.817246,
		0.616619, 0.560853, -0.552471,
		26.888065, 32.126286, 34.366268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768475, 31.249752, 34.290524>,  <26.456432, 31.733688, 34.752998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768475, 31.249752, 34.290524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986803, 31.581888, 34.335453>,  <27.117800, 31.781170, 34.362411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986803, 31.581888, 34.335453>,  <26.768475, 31.249752, 34.290524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986803, 31.581888, 34.335453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819754, -0.556927, 0.133552,
		0.173452, 0.019186, -0.984655,
		0.545819, 0.830340, 0.112328,
		27.150549, 31.830990, 34.369152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313608, 31.150160, 33.789097>,  <26.768475, 31.249752, 34.290524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.313608, 31.150160, 33.789097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400194, 31.393984, 34.094143>,  <27.452145, 31.540277, 34.277172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400194, 31.393984, 34.094143>,  <27.313608, 31.150160, 33.789097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.400194, 31.393984, 34.094143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794702, -0.563747, 0.225031,
		0.567092, 0.557341, -0.606448,
		0.216464, 0.609558, 0.762615,
		27.465134, 31.576851, 34.322929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690022, 31.146490, 34.419678>,  <27.313608, 31.150160, 33.789097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690022, 31.146490, 34.419678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958246, 31.389254, 34.249027>,  <28.119181, 31.534912, 34.146637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.958246, 31.389254, 34.249027>,  <27.690022, 31.146490, 34.419678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958246, 31.389254, 34.249027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592332, 0.784252, 0.184639,
		0.446639, 0.128891, 0.885381,
		0.670564, 0.606907, -0.426624,
		28.159416, 31.571325, 34.121040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.842274, 31.783766, 34.819675>,  <27.690022, 31.146490, 34.419678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.842274, 31.783766, 34.819675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855314, 31.811661, 34.420864>,  <27.863138, 31.828398, 34.181576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855314, 31.811661, 34.420864>,  <27.842274, 31.783766, 34.819675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855314, 31.811661, 34.420864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713964, 0.699715, 0.025596,
		0.699423, 0.711011, 0.072603,
		0.032602, 0.069739, -0.997033,
		27.865095, 31.832582, 34.121754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016685, 32.515644, 34.547249>,  <27.842274, 31.783766, 34.819675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016685, 32.515644, 34.547249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780394, 32.315929, 34.293713>,  <27.638618, 32.196102, 34.141590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780394, 32.315929, 34.293713>,  <28.016685, 32.515644, 34.547249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780394, 32.315929, 34.293713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715210, 0.687662, 0.124883,
		0.373518, 0.527102, -0.763314,
		-0.590728, -0.499284, -0.633843,
		27.603176, 32.166145, 34.103561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861504, 32.830624, 33.764767>,  <28.016685, 32.515644, 34.547249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861504, 32.830624, 33.764767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556662, 32.632027, 33.930992>,  <27.373756, 32.512867, 34.030727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556662, 32.632027, 33.930992>,  <27.861504, 32.830624, 33.764767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556662, 32.632027, 33.930992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605669, 0.773535, -0.186569,
		-0.228821, -0.393877, -0.890226,
		-0.762107, -0.496492, 0.415560,
		27.328030, 32.483078, 34.055660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.326448, 32.826523, 33.289833>,  <27.861504, 32.830624, 33.764767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.326448, 32.826523, 33.289833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.168871, 32.758610, 33.651161>,  <27.074326, 32.717861, 33.867958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.168871, 32.758610, 33.651161>,  <27.326448, 32.826523, 33.289833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.168871, 32.758610, 33.651161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637883, 0.758083, -0.135702,
		-0.661752, -0.629671, -0.406939,
		-0.393942, -0.169778, 0.903319,
		27.050688, 32.707676, 33.922157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588648, 32.825741, 33.068302>,  <27.326448, 32.826523, 33.289833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.588648, 32.825741, 33.068302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580805, 32.855709, 33.467102>,  <26.576099, 32.873688, 33.706383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580805, 32.855709, 33.467102>,  <26.588648, 32.825741, 33.068302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580805, 32.855709, 33.467102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821993, 0.566461, -0.058732,
		-0.569160, -0.820676, 0.050477,
		-0.019607, 0.074920, 0.996997,
		26.574923, 32.878185, 33.766201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.968609, 32.590279, 33.234119>,  <26.588648, 32.825741, 33.068302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.968609, 32.590279, 33.234119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112062, 32.820538, 33.528061>,  <26.198135, 32.958694, 33.704426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112062, 32.820538, 33.528061>,  <25.968609, 32.590279, 33.234119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112062, 32.820538, 33.528061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821779, 0.568106, -0.043971,
		-0.442786, -0.588117, 0.676801,
		0.358635, 0.575651, 0.734852,
		26.219652, 32.993233, 33.748516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.540697, 32.541359, 33.798454>,  <25.968609, 32.590279, 33.234119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.540697, 32.541359, 33.798454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749172, 32.882729, 33.800808>,  <25.874258, 33.087551, 33.802219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749172, 32.882729, 33.800808>,  <25.540697, 32.541359, 33.798454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.749172, 32.882729, 33.800808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839432, 0.511375, 0.183982,
		0.154004, -0.100830, 0.982912,
		0.521187, 0.853422, 0.005886,
		25.905529, 33.138756, 33.802574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.046465, 33.060757, 33.782040>,  <25.540697, 32.541359, 33.798454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.046465, 33.060757, 33.782040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366266, 33.263969, 33.910229>,  <25.558147, 33.385895, 33.987141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366266, 33.263969, 33.910229>,  <25.046465, 33.060757, 33.782040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.366266, 33.263969, 33.910229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577302, 0.797253, 0.176380,
		-0.165891, -0.326025, 0.930692,
		0.799502, 0.508030, 0.320472,
		25.606117, 33.416378, 34.006371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.945562, 33.294384, 34.461807>,  <25.046465, 33.060757, 33.782040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.945562, 33.294384, 34.461807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.218420, 33.542187, 34.306427>,  <25.382135, 33.690868, 34.213200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.218420, 33.542187, 34.306427>,  <24.945562, 33.294384, 34.461807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.218420, 33.542187, 34.306427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500873, 0.782908, 0.369027,
		0.532733, -0.057167, 0.844351,
		0.682145, 0.619505, -0.388448,
		25.423063, 33.728039, 34.189892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.336273, 33.803539, 34.807808>,  <24.945562, 33.294384, 34.461807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.336273, 33.803539, 34.807808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662102, 34.016331, 34.715317>,  <25.857599, 34.144005, 34.659821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662102, 34.016331, 34.715317>,  <25.336273, 33.803539, 34.807808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.662102, 34.016331, 34.715317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533682, 0.531134, -0.658088,
		-0.227275, 0.659464, 0.716556,
		0.814573, 0.531980, -0.231231,
		25.906473, 34.175926, 34.645947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.317423, 34.487953, 34.984241>,  <25.336273, 33.803539, 34.807808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.317423, 34.487953, 34.984241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568172, 34.466839, 34.673309>,  <25.718622, 34.454170, 34.486752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.568172, 34.466839, 34.673309>,  <25.317423, 34.487953, 34.984241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.568172, 34.466839, 34.673309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438546, 0.800739, -0.408037,
		0.643976, 0.596683, 0.478816,
		0.626875, -0.052784, -0.777330,
		25.756235, 34.451004, 34.440109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.766554, 35.202812, 34.932590>,  <25.317423, 34.487953, 34.984241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.766554, 35.202812, 34.932590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.686687, 35.031860, 34.579891>,  <25.638767, 34.929287, 34.368271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.686687, 35.031860, 34.579891>,  <25.766554, 35.202812, 34.932590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686687, 35.031860, 34.579891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281155, 0.887016, -0.366272,
		0.938661, 0.174775, -0.297269,
		-0.199667, -0.427384, -0.881746,
		25.626787, 34.903645, 34.315369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214842, 35.533745, 34.329868>,  <25.766554, 35.202812, 34.932590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.214842, 35.533745, 34.329868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.883430, 35.354801, 34.195164>,  <25.684584, 35.247437, 34.114342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.883430, 35.354801, 34.195164>,  <26.214842, 35.533745, 34.329868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.883430, 35.354801, 34.195164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346007, 0.881887, -0.320240,
		0.440245, -0.148808, -0.885460,
		-0.828530, -0.447360, -0.336758,
		25.634871, 35.220592, 34.094135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982534, 35.878021, 33.761776>,  <26.214842, 35.533745, 34.329868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982534, 35.878021, 33.761776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638487, 35.698448, 33.858650>,  <25.432058, 35.590702, 33.916775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638487, 35.698448, 33.858650>,  <25.982534, 35.878021, 33.761776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.638487, 35.698448, 33.858650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509581, 0.777505, -0.368528,
		-0.022853, -0.440390, -0.897516,
		-0.860119, -0.448935, 0.242183,
		25.380451, 35.563766, 33.931305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.503984, 35.697956, 33.123646>,  <25.982534, 35.878021, 33.761776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.503984, 35.697956, 33.123646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.281088, 35.788464, 33.443214>,  <25.147350, 35.842770, 33.634956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.281088, 35.788464, 33.443214>,  <25.503984, 35.697956, 33.123646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.281088, 35.788464, 33.443214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418421, 0.754551, -0.505547,
		-0.717220, -0.615999, -0.325792,
		-0.557243, 0.226270, 0.798926,
		25.113914, 35.856346, 33.682892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.892572, 35.115307, 33.153843>,  <25.503984, 35.697956, 33.123646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.892572, 35.115307, 33.153843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015673, 35.162361, 32.776176>,  <26.089533, 35.190594, 32.549576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015673, 35.162361, 32.776176>,  <25.892572, 35.115307, 33.153843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.015673, 35.162361, 32.776176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767015, -0.556513, -0.319345,
		-0.563007, 0.822469, -0.081040,
		0.307751, 0.117634, -0.944167,
		26.107998, 35.197651, 32.492928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.302942, 34.998001, 32.850590>,  <25.892572, 35.115307, 33.153843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.302942, 34.998001, 32.850590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.571745, 34.983585, 32.554722>,  <25.733027, 34.974937, 32.377201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.571745, 34.983585, 32.554722>,  <25.302942, 34.998001, 32.850590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.571745, 34.983585, 32.554722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539235, -0.708407, -0.455395,
		-0.507575, 0.704883, -0.495486,
		0.672007, -0.036036, -0.739668,
		25.773348, 34.972775, 32.332821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.044189, 35.087574, 32.160221>,  <25.302942, 34.998001, 32.850590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.044189, 35.087574, 32.160221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.369654, 34.855518, 32.175133>,  <25.564934, 34.716286, 32.184078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.369654, 34.855518, 32.175133>,  <25.044189, 35.087574, 32.160221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.369654, 34.855518, 32.175133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547626, -0.786422, -0.285738,
		0.195084, 0.212081, -0.957582,
		0.813663, -0.580140, 0.037278,
		25.613752, 34.681477, 32.186317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.059340, 34.673283, 31.477539>,  <25.044189, 35.087574, 32.160221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.059340, 34.673283, 31.477539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.278275, 34.457222, 31.733244>,  <25.409636, 34.327583, 31.886667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.278275, 34.457222, 31.733244>,  <25.059340, 34.673283, 31.477539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.278275, 34.457222, 31.733244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600805, -0.785351, -0.149187,
		0.582629, -0.302417, -0.754379,
		0.547336, -0.540156, 0.639262,
		25.442474, 34.295174, 31.925022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.355177, 34.097027, 31.155334>,  <25.059340, 34.673283, 31.477539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.355177, 34.097027, 31.155334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303217, 34.021503, 31.544687>,  <25.272041, 33.976189, 31.778299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303217, 34.021503, 31.544687>,  <25.355177, 34.097027, 31.155334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.303217, 34.021503, 31.544687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642493, -0.731688, -0.227672,
		0.755201, -0.654967, -0.026264,
		-0.129900, -0.188812, 0.973384,
		25.264246, 33.964859, 31.836702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.537231, 33.383827, 31.236126>,  <25.355177, 34.097027, 31.155334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.537231, 33.383827, 31.236126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.294844, 33.505451, 31.530159>,  <25.149410, 33.578426, 31.706579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.294844, 33.505451, 31.530159>,  <25.537231, 33.383827, 31.236126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.294844, 33.505451, 31.530159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695629, -0.650793, -0.304250,
		0.385876, -0.695712, 0.605875,
		-0.605970, 0.304062, 0.735083,
		25.113052, 33.596668, 31.750685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.841064, 33.383404, 31.883492>,  <25.537231, 33.383827, 31.236126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.841064, 33.383404, 31.883492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.531935, 33.315228, 32.128014>,  <25.346457, 33.274323, 32.274727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.531935, 33.315228, 32.128014>,  <25.841064, 33.383404, 31.883492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.531935, 33.315228, 32.128014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485119, -0.462368, -0.742210,
		0.409150, -0.870153, 0.274646,
		-0.772823, -0.170439, 0.611306,
		25.300087, 33.264095, 32.311405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789272, 32.616718, 31.984297>,  <25.841064, 33.383404, 31.883492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789272, 32.616718, 31.984297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447842, 32.817158, 32.041302>,  <25.242983, 32.937420, 32.075504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447842, 32.817158, 32.041302>,  <25.789272, 32.616718, 31.984297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.447842, 32.817158, 32.041302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451858, -0.575949, -0.681254,
		-0.259294, -0.645898, 0.718041,
		-0.853575, 0.501098, 0.142514,
		25.191769, 32.967487, 32.084057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.222752, 32.099892, 32.179249>,  <25.789272, 32.616718, 31.984297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.222752, 32.099892, 32.179249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.024326, 32.430035, 32.071392>,  <24.905272, 32.628120, 32.006676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.024326, 32.430035, 32.071392>,  <25.222752, 32.099892, 32.179249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.024326, 32.430035, 32.071392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639218, -0.557310, -0.529911,
		-0.587644, -0.090503, 0.804042,
		-0.496059, 0.825357, -0.269648,
		24.875507, 32.677643, 31.990498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.492836, 31.783504, 32.116310>,  <25.222752, 32.099892, 32.179249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.492836, 31.783504, 32.116310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.431576, 31.396553, 32.035587>,  <24.394819, 31.164383, 31.987154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.431576, 31.396553, 32.035587>,  <24.492836, 31.783504, 32.116310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.431576, 31.396553, 32.035587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944675, 0.083379, 0.317233,
		-0.290058, 0.239224, -0.926628,
		-0.153151, -0.967378, -0.201804,
		24.385630, 31.106340, 31.975046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.532486, 31.533388, 31.467344>,  <24.492836, 31.783504, 32.116310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.532486, 31.533388, 31.467344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.245325, 31.701492, 31.245354>,  <24.073029, 31.802355, 31.112160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.245325, 31.701492, 31.245354>,  <24.532486, 31.533388, 31.467344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.245325, 31.701492, 31.245354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275640, 0.903663, 0.327743,
		0.639249, 0.082314, -0.764581,
		-0.717902, 0.420259, -0.554977,
		24.029955, 31.827570, 31.078861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.740808, 32.107868, 31.043249>,  <24.532486, 31.533388, 31.467344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.740808, 32.107868, 31.043249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361582, 32.190327, 31.140137>,  <24.134045, 32.239799, 31.198269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361582, 32.190327, 31.140137>,  <24.740808, 32.107868, 31.043249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.361582, 32.190327, 31.140137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285540, 0.887103, 0.362650,
		-0.140115, 0.412980, -0.899897,
		-0.948069, 0.206144, 0.242219,
		24.077162, 32.252171, 31.212803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.615479, 32.784336, 30.855124>,  <24.740808, 32.107868, 31.043249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.615479, 32.784336, 30.855124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.345922, 32.683865, 31.133053>,  <24.184189, 32.623581, 31.299810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.345922, 32.683865, 31.133053>,  <24.615479, 32.784336, 30.855124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.345922, 32.683865, 31.133053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169186, 0.862984, 0.476062,
		-0.719198, 0.438369, -0.539061,
		-0.673891, -0.251182, 0.694822,
		24.143755, 32.608509, 31.341499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.018421, 33.260181, 31.058140>,  <24.615479, 32.784336, 30.855124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.018421, 33.260181, 31.058140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.164064, 33.043812, 31.361410>,  <24.251450, 32.913990, 31.543371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.164064, 33.043812, 31.361410>,  <24.018421, 33.260181, 31.058140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.164064, 33.043812, 31.361410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560204, 0.777527, 0.285697,
		-0.744041, 0.320708, 0.586130,
		0.364107, -0.540923, 0.758174,
		24.273296, 32.881535, 31.588863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.067192, 33.690617, 31.682915>,  <24.018421, 33.260181, 31.058140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.067192, 33.690617, 31.682915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.333773, 33.404358, 31.766531>,  <24.493721, 33.232605, 31.816700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.333773, 33.404358, 31.766531>,  <24.067192, 33.690617, 31.682915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.333773, 33.404358, 31.766531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556811, 0.664228, 0.498761,
		-0.495785, -0.216004, 0.841154,
		0.666452, -0.715642, 0.209040,
		24.533709, 33.189667, 31.829243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.151886, 33.715305, 32.356342>,  <24.067192, 33.690617, 31.682915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.151886, 33.715305, 32.356342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.471565, 33.500626, 32.248096>,  <24.663374, 33.371819, 32.183147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.471565, 33.500626, 32.248096>,  <24.151886, 33.715305, 32.356342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.471565, 33.500626, 32.248096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591326, 0.621329, 0.514085,
		-0.107766, -0.570881, 0.813930,
		0.799199, -0.536699, -0.270619,
		24.711325, 33.339615, 32.166912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.608330, 33.577831, 32.888599>,  <24.151886, 33.715305, 32.356342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.608330, 33.577831, 32.888599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818130, 33.569439, 32.548138>,  <24.944010, 33.564404, 32.343861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818130, 33.569439, 32.548138>,  <24.608330, 33.577831, 32.888599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.818130, 33.569439, 32.548138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689875, 0.596347, 0.410417,
		0.498971, -0.802452, 0.327259,
		0.524500, -0.020981, -0.851152,
		24.975481, 33.563145, 32.292793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.397360, 33.540375, 33.009060>,  <24.608330, 33.577831, 32.888599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.397360, 33.540375, 33.009060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.357738, 33.663681, 32.630608>,  <25.333965, 33.737663, 32.403538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.357738, 33.663681, 32.630608>,  <25.397360, 33.540375, 33.009060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.357738, 33.663681, 32.630608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778502, 0.616207, 0.119268,
		0.619777, -0.724749, -0.301023,
		-0.099053, 0.308267, -0.946129,
		25.328022, 33.756161, 32.346767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131069, 33.632397, 32.730274>,  <25.397360, 33.540375, 33.009060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131069, 33.632397, 32.730274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925743, 33.850967, 32.465572>,  <25.802547, 33.982109, 32.306751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925743, 33.850967, 32.465572>,  <26.131069, 33.632397, 32.730274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.925743, 33.850967, 32.465572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738726, 0.673800, -0.016646,
		0.436798, -0.497403, -0.749532,
		-0.513314, 0.546428, -0.661759,
		25.771749, 34.014896, 32.267044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635780, 33.840839, 32.173222>,  <26.131069, 33.632397, 32.730274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635780, 33.840839, 32.173222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331211, 34.100101, 32.177719>,  <26.148468, 34.255657, 32.180420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331211, 34.100101, 32.177719>,  <26.635780, 33.840839, 32.173222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331211, 34.100101, 32.177719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648174, 0.760949, 0.028741,
		0.010070, 0.029175, -0.999524,
		-0.761426, 0.648155, 0.011247,
		26.102783, 34.294548, 32.181091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777905, 34.362347, 31.663912>,  <26.635780, 33.840839, 32.173222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777905, 34.362347, 31.663912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.529671, 34.518929, 31.935686>,  <26.380730, 34.612877, 32.098751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.529671, 34.518929, 31.935686>,  <26.777905, 34.362347, 31.663912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.529671, 34.518929, 31.935686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571217, 0.819293, 0.049704,
		-0.537200, 0.418951, -0.732049,
		-0.620586, 0.391458, 0.679437,
		26.343494, 34.636364, 32.139519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.614655, 35.102261, 31.397867>,  <26.777905, 34.362347, 31.663912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.614655, 35.102261, 31.397867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617990, 35.042038, 31.793293>,  <26.619991, 35.005905, 32.030548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617990, 35.042038, 31.793293>,  <26.614655, 35.102261, 31.397867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.617990, 35.042038, 31.793293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647275, 0.754361, 0.109427,
		-0.762211, 0.638962, 0.103742,
		0.008339, -0.150556, 0.988566,
		26.620493, 34.996872, 32.089863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329609, 35.278545, 31.547903>,  <26.614655, 35.102261, 31.397867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329609, 35.278545, 31.547903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.348953, 35.677998, 31.539961>,  <27.360559, 35.917671, 31.535194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.348953, 35.677998, 31.539961>,  <27.329609, 35.278545, 31.547903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.348953, 35.677998, 31.539961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971870, -0.042460, 0.231656,
		0.230496, -0.030503, -0.972595,
		0.048362, 0.998632, -0.019858,
		27.363462, 35.977589, 31.534004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709244, 35.593456, 31.024731>,  <27.329609, 35.278545, 31.547903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709244, 35.593456, 31.024731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734507, 35.835381, 31.342274>,  <27.749664, 35.980537, 31.532801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734507, 35.835381, 31.342274>,  <27.709244, 35.593456, 31.024731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734507, 35.835381, 31.342274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983818, -0.171370, 0.052293,
		0.167671, 0.777710, -0.605849,
		0.063156, 0.604814, 0.793859,
		27.753454, 36.016823, 31.580431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369661, 36.087284, 30.975277>,  <27.709244, 35.593456, 31.024731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369661, 36.087284, 30.975277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264959, 36.009655, 31.353445>,  <28.202137, 35.963078, 31.580345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.264959, 36.009655, 31.353445>,  <28.369661, 36.087284, 30.975277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264959, 36.009655, 31.353445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965118, -0.058269, 0.255250,
		0.005551, 0.979255, 0.202557,
		-0.261757, -0.194074, 0.945420,
		28.186432, 35.951431, 31.637072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855829, 36.462872, 31.364677>,  <28.369661, 36.087284, 30.975277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855829, 36.462872, 31.364677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.713751, 36.172180, 31.599861>,  <28.628504, 35.997765, 31.740971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.713751, 36.172180, 31.599861>,  <28.855829, 36.462872, 31.364677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713751, 36.172180, 31.599861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911415, -0.129449, 0.390597,
		-0.207749, 0.674613, 0.708335,
		-0.355195, -0.726733, 0.587959,
		28.607193, 35.954159, 31.776249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052761, 36.487438, 32.037697>,  <28.855829, 36.462872, 31.364677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052761, 36.487438, 32.037697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977230, 36.098282, 31.984299>,  <28.931911, 35.864788, 31.952259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.977230, 36.098282, 31.984299>,  <29.052761, 36.487438, 32.037697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.977230, 36.098282, 31.984299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896276, -0.226294, 0.381420,
		-0.401290, -0.047626, 0.914712,
		-0.188829, -0.972894, -0.133495,
		28.920582, 35.806412, 31.944250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060425, 36.088814, 32.701332>,  <29.052761, 36.487438, 32.037697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060425, 36.088814, 32.701332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181461, 35.901791, 32.369110>,  <29.254084, 35.789577, 32.169777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181461, 35.901791, 32.369110>,  <29.060425, 36.088814, 32.701332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181461, 35.901791, 32.369110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939824, 0.001318, 0.341657,
		-0.158650, -0.883961, 0.439822,
		0.302591, -0.467559, -0.830558,
		29.272238, 35.761524, 32.119942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408518, 35.408543, 32.880936>,  <29.060425, 36.088814, 32.701332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408518, 35.408543, 32.880936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545792, 35.550415, 32.533047>,  <29.628155, 35.635540, 32.324314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545792, 35.550415, 32.533047>,  <29.408518, 35.408543, 32.880936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545792, 35.550415, 32.533047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936019, -0.206102, 0.285290,
		-0.078065, -0.911987, -0.402724,
		0.343183, 0.354686, -0.869726,
		29.648746, 35.656822, 32.272129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919600, 34.945198, 32.529030>,  <29.408518, 35.408543, 32.880936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919600, 34.945198, 32.529030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993624, 35.329670, 32.447166>,  <30.038038, 35.560352, 32.398048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993624, 35.329670, 32.447166>,  <29.919600, 34.945198, 32.529030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993624, 35.329670, 32.447166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938572, -0.111146, 0.326695,
		0.291266, -0.252543, -0.922706,
		0.185060, 0.961181, -0.204656,
		30.049141, 35.618023, 32.385769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512367, 35.070400, 32.090652>,  <29.919600, 34.945198, 32.529030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512367, 35.070400, 32.090652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487360, 35.419979, 32.283447>,  <30.472355, 35.629726, 32.399124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487360, 35.419979, 32.283447>,  <30.512367, 35.070400, 32.090652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487360, 35.419979, 32.283447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979235, -0.039600, 0.198821,
		0.192845, 0.484411, -0.853321,
		-0.062520, 0.873944, 0.481989,
		30.468603, 35.682163, 32.428043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839100, 35.693676, 31.871136>,  <30.512367, 35.070400, 32.090652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839100, 35.693676, 31.871136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822493, 35.805428, 32.254848>,  <30.812529, 35.872478, 32.485077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.822493, 35.805428, 32.254848>,  <30.839100, 35.693676, 31.871136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822493, 35.805428, 32.254848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989205, 0.146538, 0.000135,
		-0.140534, 0.948934, -0.282442,
		-0.041516, 0.279374, 0.959284,
		30.810038, 35.889240, 32.542633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145926, 36.237511, 31.965746>,  <30.839100, 35.693676, 31.871136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145926, 36.237511, 31.965746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168234, 36.147232, 32.354786>,  <31.181618, 36.093063, 32.588211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168234, 36.147232, 32.354786>,  <31.145926, 36.237511, 31.965746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168234, 36.147232, 32.354786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985459, 0.169032, -0.017282,
		-0.160500, 0.959421, 0.231841,
		0.055769, -0.225696, 0.972600,
		31.184965, 36.079525, 32.646564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663960, 36.859787, 31.935553>,  <31.145926, 36.237511, 31.965746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663960, 36.859787, 31.935553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010448, 36.838623, 31.736813>,  <31.218342, 36.825924, 31.617569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010448, 36.838623, 31.736813>,  <30.663960, 36.859787, 31.935553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010448, 36.838623, 31.736813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389554, 0.694226, 0.605226,
		0.312903, -0.717809, 0.621965,
		0.866222, -0.052912, -0.496851,
		31.270315, 36.822750, 31.587757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293175, 36.867584, 32.441200>,  <30.663960, 36.859787, 31.935553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293175, 36.867584, 32.441200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389822, 36.993896, 32.074177>,  <31.447811, 37.069683, 31.853964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389822, 36.993896, 32.074177>,  <31.293175, 36.867584, 32.441200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389822, 36.993896, 32.074177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491349, 0.775577, 0.396302,
		0.836777, -0.546594, 0.032239,
		0.241620, 0.315776, -0.917554,
		31.462309, 37.088631, 31.798910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102081, 37.042770, 32.336479>,  <31.293175, 36.867584, 32.441200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102081, 37.042770, 32.336479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888277, 37.235794, 32.058937>,  <31.759996, 37.351608, 31.892412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888277, 37.235794, 32.058937>,  <32.102081, 37.042770, 32.336479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888277, 37.235794, 32.058937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493499, 0.844681, 0.207297,
		0.686121, -0.231615, -0.689632,
		-0.534506, 0.482564, -0.693855,
		31.727924, 37.380562, 31.850780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416641, 37.368591, 32.930679>,  <32.102081, 37.042770, 32.336479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416641, 37.368591, 32.930679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426670, 37.249012, 33.312256>,  <32.432690, 37.177265, 33.541203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426670, 37.249012, 33.312256>,  <32.416641, 37.368591, 32.930679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426670, 37.249012, 33.312256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830303, -0.525209, -0.186420,
		0.556747, 0.796733, 0.235051,
		0.025076, -0.298952, 0.953939,
		32.434193, 37.159325, 33.598438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101372, 37.381767, 33.252415>,  <32.416641, 37.368591, 32.930679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101372, 37.381767, 33.252415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875927, 37.090759, 33.408901>,  <32.740658, 36.916153, 33.502792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875927, 37.090759, 33.408901>,  <33.101372, 37.381767, 33.252415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875927, 37.090759, 33.408901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696471, -0.673185, -0.248493,
		0.444145, 0.132417, 0.886115,
		-0.563615, -0.727521, 0.391217,
		32.706841, 36.872501, 33.526268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781864, 37.764519, 33.062923>,  <33.101372, 37.381767, 33.252415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781864, 37.764519, 33.062923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954342, 37.999020, 32.788586>,  <34.057827, 38.139721, 32.623985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954342, 37.999020, 32.788586>,  <33.781864, 37.764519, 33.062923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954342, 37.999020, 32.788586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216015, -0.670954, -0.709336,
		-0.876019, 0.454014, -0.162672,
		0.431194, 0.586252, -0.685843,
		34.083698, 38.174896, 32.582832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329479, 37.769215, 32.402363>,  <33.781864, 37.764519, 33.062923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329479, 37.769215, 32.402363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692055, 37.902767, 32.298916>,  <33.909599, 37.982899, 32.236847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692055, 37.902767, 32.298916>,  <33.329479, 37.769215, 32.402363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692055, 37.902767, 32.298916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028652, -0.659572, -0.751095,
		-0.421358, 0.673414, -0.607430,
		0.906442, 0.333884, -0.258622,
		33.963985, 38.002934, 32.221329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215553, 37.842129, 31.677969>,  <33.329479, 37.769215, 32.402363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215553, 37.842129, 31.677969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601215, 37.798004, 31.774494>,  <33.832615, 37.771530, 31.832409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601215, 37.798004, 31.774494>,  <33.215553, 37.842129, 31.677969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601215, 37.798004, 31.774494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100132, -0.690942, -0.715942,
		0.245711, 0.714444, -0.655131,
		0.964157, -0.110315, 0.241311,
		33.890461, 37.764908, 31.846888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576946, 37.833939, 31.020241>,  <33.215553, 37.842129, 31.677969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576946, 37.833939, 31.020241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836403, 37.674156, 31.279375>,  <33.992077, 37.578285, 31.434856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836403, 37.674156, 31.279375>,  <33.576946, 37.833939, 31.020241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836403, 37.674156, 31.279375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217145, -0.718685, -0.660560,
		0.729456, 0.569145, -0.379432,
		0.648646, -0.399458, 0.647836,
		34.030998, 37.554317, 31.473726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292480, 37.801609, 30.661781>,  <33.576946, 37.833939, 31.020241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292480, 37.801609, 30.661781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266747, 37.532150, 30.956280>,  <34.251308, 37.370476, 31.132978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266747, 37.532150, 30.956280>,  <34.292480, 37.801609, 30.661781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266747, 37.532150, 30.956280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168379, -0.734523, -0.657362,
		0.983621, 0.081679, 0.160681,
		-0.064331, -0.673651, 0.736245,
		34.247448, 37.330055, 31.177153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711624, 37.412365, 30.376545>,  <34.292480, 37.801609, 30.661781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711624, 37.412365, 30.376545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551292, 37.202400, 30.676893>,  <34.455093, 37.076420, 30.857101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551292, 37.202400, 30.676893>,  <34.711624, 37.412365, 30.376545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551292, 37.202400, 30.676893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213769, -0.850552, -0.480482,
		0.890865, -0.032077, 0.453134,
		-0.400827, -0.524911, 0.750870,
		34.431046, 37.044926, 30.902155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200783, 36.920124, 30.531078>,  <34.711624, 37.412365, 30.376545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200783, 36.920124, 30.531078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835377, 36.786972, 30.624617>,  <34.616135, 36.707081, 30.680738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.835377, 36.786972, 30.624617>,  <35.200783, 36.920124, 30.531078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835377, 36.786972, 30.624617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137210, -0.793270, -0.593208,
		0.382967, -0.509819, 0.770338,
		-0.913515, -0.332877, 0.233844,
		34.561321, 36.687107, 30.694769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252094, 36.238838, 30.746082>,  <35.200783, 36.920124, 30.531078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252094, 36.238838, 30.746082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863232, 36.263405, 30.655632>,  <34.629913, 36.278145, 30.601362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.863232, 36.263405, 30.655632>,  <35.252094, 36.238838, 30.746082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863232, 36.263405, 30.655632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094735, -0.779630, -0.619033,
		-0.214310, -0.623221, 0.752108,
		-0.972161, 0.061414, -0.226123,
		34.571583, 36.281830, 30.587795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157608, 35.601093, 30.604607>,  <35.252094, 36.238838, 30.746082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157608, 35.601093, 30.604607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833973, 35.775383, 30.446863>,  <34.639793, 35.879959, 30.352217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833973, 35.775383, 30.446863>,  <35.157608, 35.601093, 30.604607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833973, 35.775383, 30.446863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035288, -0.633803, -0.772689,
		-0.586622, -0.639092, 0.497429,
		-0.809092, 0.435723, -0.394355,
		34.591248, 35.906101, 30.328556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830456, 35.051804, 30.445107>,  <35.157608, 35.601093, 30.604607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830456, 35.051804, 30.445107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671265, 35.355366, 30.238932>,  <34.575748, 35.537502, 30.115227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671265, 35.355366, 30.238932>,  <34.830456, 35.051804, 30.445107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671265, 35.355366, 30.238932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014824, -0.567094, -0.823520,
		-0.917276, -0.320100, 0.236940,
		-0.397976, 0.758908, -0.515436,
		34.551872, 35.583038, 30.084301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253971, 34.791130, 30.202240>,  <34.830456, 35.051804, 30.445107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253971, 34.791130, 30.202240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355782, 35.091896, 29.958982>,  <34.416870, 35.272354, 29.813028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.355782, 35.091896, 29.958982>,  <34.253971, 34.791130, 30.202240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355782, 35.091896, 29.958982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123080, -0.598556, -0.791569,
		-0.959201, 0.276328, -0.059804,
		0.254529, 0.751913, -0.608146,
		34.432140, 35.317471, 29.776539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767899, 34.795509, 29.734968>,  <34.253971, 34.791130, 30.202240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767899, 34.795509, 29.734968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069450, 34.997482, 29.566816>,  <34.250381, 35.118664, 29.465925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069450, 34.997482, 29.566816>,  <33.767899, 34.795509, 29.734968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069450, 34.997482, 29.566816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108495, -0.535376, -0.837617,
		-0.647998, 0.677068, -0.348824,
		0.753875, 0.504928, -0.420381,
		34.295612, 35.148960, 29.440702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598381, 34.873875, 29.021311>,  <33.767899, 34.795509, 29.734968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598381, 34.873875, 29.021311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991562, 34.946617, 29.032135>,  <34.227470, 34.990261, 29.038630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991562, 34.946617, 29.032135>,  <33.598381, 34.873875, 29.021311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991562, 34.946617, 29.032135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094149, -0.371456, -0.923665,
		-0.157920, 0.910467, -0.382245,
		0.982953, 0.181853, 0.027059,
		34.286449, 35.001175, 29.040253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764881, 35.047470, 28.368092>,  <33.598381, 34.873875, 29.021311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764881, 35.047470, 28.368092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130795, 34.983521, 28.516470>,  <34.350342, 34.945148, 28.605497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130795, 34.983521, 28.516470>,  <33.764881, 35.047470, 28.368092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130795, 34.983521, 28.516470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319386, -0.275936, -0.906561,
		0.247296, 0.947786, -0.201361,
		0.914788, -0.159877, 0.370947,
		34.405231, 34.935558, 28.627754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307987, 35.477440, 27.919880>,  <33.764881, 35.047470, 28.368092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307987, 35.477440, 27.919880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511608, 35.174873, 28.084173>,  <34.633781, 34.993332, 28.182749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511608, 35.174873, 28.084173>,  <34.307987, 35.477440, 27.919880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511608, 35.174873, 28.084173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468259, -0.157026, -0.869527,
		0.722220, 0.634962, 0.274265,
		0.509050, -0.756416, 0.410734,
		34.664322, 34.947948, 28.207394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043598, 35.478992, 27.750778>,  <34.307987, 35.477440, 27.919880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043598, 35.478992, 27.750778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907509, 35.111397, 27.830486>,  <34.825855, 34.890839, 27.878311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907509, 35.111397, 27.830486>,  <35.043598, 35.478992, 27.750778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907509, 35.111397, 27.830486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179801, -0.271575, -0.945473,
		0.922996, -0.285841, 0.257631,
		-0.340221, -0.918989, 0.199268,
		34.805443, 34.835701, 27.890266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488346, 35.230850, 27.329235>,  <35.043598, 35.478992, 27.750778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488346, 35.230850, 27.329235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220764, 34.938553, 27.383648>,  <35.060215, 34.763172, 27.416296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220764, 34.938553, 27.383648>,  <35.488346, 35.230850, 27.329235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220764, 34.938553, 27.383648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244969, -0.389530, -0.887838,
		0.701772, -0.560604, 0.439590,
		-0.668959, -0.730746, 0.136031,
		35.020077, 34.719330, 27.424458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740875, 34.702763, 26.928503>,  <35.488346, 35.230850, 27.329235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740875, 34.702763, 26.928503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356197, 34.600033, 26.966848>,  <35.125393, 34.538395, 26.989855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356197, 34.600033, 26.966848>,  <35.740875, 34.702763, 26.928503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356197, 34.600033, 26.966848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041869, -0.483197, -0.874510,
		0.270918, -0.836995, 0.475439,
		-0.961691, -0.256827, 0.095863,
		35.067692, 34.522984, 26.995607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859306, 34.019138, 26.778418>,  <35.740875, 34.702763, 26.928503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859306, 34.019138, 26.778418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468174, 34.095131, 26.743210>,  <35.233494, 34.140724, 26.722086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.468174, 34.095131, 26.743210>,  <35.859306, 34.019138, 26.778418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468174, 34.095131, 26.743210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005866, -0.395363, -0.918506,
		-0.209293, -0.898664, 0.385485,
		-0.977835, 0.189976, -0.088018,
		35.174824, 34.152122, 26.716805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492649, 33.394997, 26.473989>,  <35.859306, 34.019138, 26.778418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492649, 33.394997, 26.473989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231068, 33.686161, 26.391527>,  <35.074120, 33.860859, 26.342051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231068, 33.686161, 26.391527>,  <35.492649, 33.394997, 26.473989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231068, 33.686161, 26.391527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054232, -0.316899, -0.946908,
		-0.754592, -0.608049, 0.246711,
		-0.653949, 0.727909, -0.206154,
		35.034882, 33.904533, 26.329681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072605, 33.124073, 25.978456>,  <35.492649, 33.394997, 26.473989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072605, 33.124073, 25.978456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017448, 33.518314, 25.939333>,  <34.984356, 33.754860, 25.915859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017448, 33.518314, 25.939333>,  <35.072605, 33.124073, 25.978456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017448, 33.518314, 25.939333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047796, -0.105261, -0.993295,
		-0.989294, -0.132290, 0.061622,
		-0.137889, 0.985606, -0.097811,
		34.976082, 33.813995, 25.909990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.489536, 33.165215, 25.479391>,  <35.072605, 33.124073, 25.978456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.489536, 33.165215, 25.479391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652069, 33.530640, 25.486223>,  <34.749588, 33.749897, 25.490322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652069, 33.530640, 25.486223>,  <34.489536, 33.165215, 25.479391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652069, 33.530640, 25.486223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011504, 0.013575, -0.999842,
		-0.913653, 0.406465, -0.004994,
		0.406333, 0.913566, 0.017079,
		34.773968, 33.804710, 25.491346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156178, 33.579887, 24.982353>,  <34.489536, 33.165215, 25.479391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156178, 33.579887, 24.982353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514637, 33.742199, 25.054205>,  <34.729713, 33.839584, 25.097317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514637, 33.742199, 25.054205>,  <34.156178, 33.579887, 24.982353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514637, 33.742199, 25.054205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161234, 0.079392, -0.983718,
		-0.413433, 0.910516, 0.005721,
		0.896145, 0.405779, 0.179629,
		34.783482, 33.863934, 25.108093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203671, 33.983337, 24.353846>,  <34.156178, 33.579887, 24.982353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203671, 33.983337, 24.353846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571274, 34.003464, 24.510248>,  <34.791836, 34.015541, 24.604090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571274, 34.003464, 24.510248>,  <34.203671, 33.983337, 24.353846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571274, 34.003464, 24.510248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373895, 0.203172, -0.904944,
		-0.124976, 0.977849, 0.167903,
		0.919012, 0.050318, 0.391004,
		34.846977, 34.018559, 24.627550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537315, 34.490971, 24.080118>,  <34.203671, 33.983337, 24.353846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537315, 34.490971, 24.080118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834919, 34.256676, 24.208719>,  <35.013481, 34.116100, 24.285879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834919, 34.256676, 24.208719>,  <34.537315, 34.490971, 24.080118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834919, 34.256676, 24.208719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457705, 0.096237, -0.883880,
		0.486778, 0.804770, 0.339695,
		0.744012, -0.585733, 0.321502,
		35.058121, 34.080956, 24.305170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254395, 34.888279, 24.087112>,  <34.537315, 34.490971, 24.080118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254395, 34.888279, 24.087112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357330, 34.501854, 24.078241>,  <35.419094, 34.269997, 24.072920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.357330, 34.501854, 24.078241>,  <35.254395, 34.888279, 24.087112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.357330, 34.501854, 24.078241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628952, 0.184875, -0.755143,
		0.733617, 0.180383, 0.655185,
		0.257342, -0.966066, -0.022176,
		35.434532, 34.212032, 24.071589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926723, 34.958084, 23.924965>,  <35.254395, 34.888279, 24.087112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926723, 34.958084, 23.924965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830853, 34.573635, 23.870132>,  <35.773331, 34.342964, 23.837233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830853, 34.573635, 23.870132>,  <35.926723, 34.958084, 23.924965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830853, 34.573635, 23.870132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670649, -0.061814, -0.739195,
		0.701986, -0.269101, 0.659394,
		-0.239677, -0.961126, -0.137080,
		35.758949, 34.285297, 23.829008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617165, 34.560623, 23.932224>,  <35.926723, 34.958084, 23.924965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617165, 34.560623, 23.932224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359192, 34.296158, 23.778898>,  <36.204411, 34.137478, 23.686903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359192, 34.296158, 23.778898>,  <36.617165, 34.560623, 23.932224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359192, 34.296158, 23.778898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673927, -0.255480, -0.693219,
		0.360400, -0.705404, 0.610342,
		-0.644929, -0.661162, -0.383315,
		36.165714, 34.097809, 23.663904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006447, 33.942326, 23.697386>,  <36.617165, 34.560623, 23.932224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006447, 33.942326, 23.697386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659302, 33.933777, 23.498846>,  <36.451015, 33.928650, 23.379723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659302, 33.933777, 23.498846>,  <37.006447, 33.942326, 23.697386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659302, 33.933777, 23.498846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494146, -0.140404, -0.857967,
		-0.051356, -0.989864, 0.132410,
		-0.867861, -0.021368, -0.496347,
		36.398945, 33.927364, 23.349941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993893, 33.294140, 23.252293>,  <37.006447, 33.942326, 23.697386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993893, 33.294140, 23.252293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760761, 33.576473, 23.091242>,  <36.620884, 33.745872, 22.994612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760761, 33.576473, 23.091242>,  <36.993893, 33.294140, 23.252293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760761, 33.576473, 23.091242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629533, 0.078907, -0.772956,
		-0.513811, -0.703966, -0.490336,
		-0.582826, 0.705836, -0.402627,
		36.585915, 33.788223, 22.970453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851540, 33.076126, 22.497849>,  <36.993893, 33.294140, 23.252293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851540, 33.076126, 22.497849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758472, 33.463795, 22.530252>,  <36.702633, 33.696396, 22.549694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758472, 33.463795, 22.530252>,  <36.851540, 33.076126, 22.497849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758472, 33.463795, 22.530252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438877, 0.178962, -0.880545,
		-0.867900, -0.169325, -0.466989,
		-0.232672, 0.969175, 0.081008,
		36.688671, 33.754547, 22.554556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508415, 33.237244, 21.927147>,  <36.851540, 33.076126, 22.497849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508415, 33.237244, 21.927147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630905, 33.594875, 22.057899>,  <36.704399, 33.809456, 22.136351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630905, 33.594875, 22.057899>,  <36.508415, 33.237244, 21.927147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630905, 33.594875, 22.057899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406420, 0.187721, -0.894194,
		-0.860842, 0.406675, -0.305887,
		0.306225, 0.894079, 0.326879,
		36.722771, 33.863098, 22.155964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321312, 33.687119, 21.385647>,  <36.508415, 33.237244, 21.927147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321312, 33.687119, 21.385647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611412, 33.859455, 21.600456>,  <36.785473, 33.962856, 21.729342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.611412, 33.859455, 21.600456>,  <36.321312, 33.687119, 21.385647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611412, 33.859455, 21.600456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478426, 0.245538, -0.843101,
		-0.495103, 0.868382, -0.028051,
		0.725246, 0.430842, 0.537023,
		36.828987, 33.988708, 21.761562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503593, 34.339622, 20.996119>,  <36.321312, 33.687119, 21.385647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503593, 34.339622, 20.996119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808891, 34.311775, 21.253057>,  <36.992069, 34.295067, 21.407221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.808891, 34.311775, 21.253057>,  <36.503593, 34.339622, 20.996119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808891, 34.311775, 21.253057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638228, 0.236015, -0.732776,
		-0.100592, 0.969253, 0.224568,
		0.763247, -0.069614, 0.642346,
		37.037865, 34.290890, 21.445761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933395, 35.001896, 20.985802>,  <36.503593, 34.339622, 20.996119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933395, 35.001896, 20.985802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140282, 34.675629, 21.089470>,  <37.264416, 34.479870, 21.151670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140282, 34.675629, 21.089470>,  <36.933395, 35.001896, 20.985802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140282, 34.675629, 21.089470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720642, 0.251700, -0.646005,
		0.461691, 0.520898, 0.717988,
		0.517220, -0.815667, 0.259173,
		37.295448, 34.430927, 21.167221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683453, 35.175011, 20.893051>,  <36.933395, 35.001896, 20.985802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683453, 35.175011, 20.893051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708153, 34.777020, 20.924541>,  <37.722973, 34.538223, 20.943436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708153, 34.777020, 20.924541>,  <37.683453, 35.175011, 20.893051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708153, 34.777020, 20.924541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819708, 0.005554, -0.572755,
		0.569443, 0.099902, 0.815937,
		0.061751, -0.994982, 0.078728,
		37.726677, 34.478523, 20.948160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368210, 35.128834, 21.025688>,  <37.683453, 35.175011, 20.893051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368210, 35.128834, 21.025688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214909, 34.776707, 20.913857>,  <38.122929, 34.565430, 20.846758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214909, 34.776707, 20.913857>,  <38.368210, 35.128834, 21.025688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214909, 34.776707, 20.913857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817220, -0.182130, -0.546791,
		0.430429, -0.438035, 0.789212,
		-0.383253, -0.880315, -0.279577,
		38.099934, 34.512611, 20.829983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991455, 34.671841, 20.942640>,  <38.368210, 35.128834, 21.025688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991455, 34.671841, 20.942640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694550, 34.502213, 20.735100>,  <38.516407, 34.400436, 20.610577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694550, 34.502213, 20.735100>,  <38.991455, 34.671841, 20.942640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694550, 34.502213, 20.735100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551634, 0.052906, -0.832407,
		0.380450, -0.904082, 0.194662,
		-0.742265, -0.424071, -0.518850,
		38.471870, 34.374992, 20.579445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303246, 34.144634, 20.456520>,  <38.991455, 34.671841, 20.942640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303246, 34.144634, 20.456520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942192, 34.181782, 20.288408>,  <38.725559, 34.204071, 20.187542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942192, 34.181782, 20.288408>,  <39.303246, 34.144634, 20.456520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942192, 34.181782, 20.288408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419691, -0.026727, -0.907273,
		-0.095491, -0.995319, -0.014852,
		-0.902630, 0.092869, -0.420279,
		38.671402, 34.209641, 20.162325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196808, 33.592884, 20.021927>,  <39.303246, 34.144634, 20.456520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196808, 33.592884, 20.021927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956436, 33.864586, 19.853411>,  <38.812214, 34.027607, 19.752300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956436, 33.864586, 19.853411>,  <39.196808, 33.592884, 20.021927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956436, 33.864586, 19.853411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473692, -0.121895, -0.872214,
		-0.643813, -0.723705, -0.248509,
		-0.600933, 0.679259, -0.421291,
		38.776157, 34.068363, 19.727024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831154, 33.282600, 19.447842>,  <39.196808, 33.592884, 20.021927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831154, 33.282600, 19.447842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794304, 33.677288, 19.394331>,  <38.772194, 33.914101, 19.362225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794304, 33.677288, 19.394331>,  <38.831154, 33.282600, 19.447842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794304, 33.677288, 19.394331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374023, -0.090221, -0.923020,
		-0.922832, -0.135071, -0.360744,
		-0.092127, 0.986720, -0.133779,
		38.766666, 33.973305, 19.354197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593052, 33.388451, 18.808212>,  <38.831154, 33.282600, 19.447842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593052, 33.388451, 18.808212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740707, 33.750584, 18.892220>,  <38.829300, 33.967865, 18.942623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740707, 33.750584, 18.892220>,  <38.593052, 33.388451, 18.808212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740707, 33.750584, 18.892220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271353, 0.111141, -0.956041,
		-0.888878, 0.409900, -0.204639,
		0.369138, 0.905334, 0.210019,
		38.851448, 34.022182, 18.955225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410599, 33.764153, 18.185760>,  <38.593052, 33.388451, 18.808212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410599, 33.764153, 18.185760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708366, 33.952507, 18.375122>,  <38.887028, 34.065521, 18.488739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708366, 33.952507, 18.375122>,  <38.410599, 33.764153, 18.185760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708366, 33.952507, 18.375122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436599, 0.193159, -0.878676,
		-0.505198, 0.860788, -0.061798,
		0.744417, 0.470886, 0.473403,
		38.931690, 34.093773, 18.517143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397060, 34.422443, 17.907728>,  <38.410599, 33.764153, 18.185760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397060, 34.422443, 17.907728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759842, 34.301060, 18.024588>,  <38.977512, 34.228230, 18.094704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759842, 34.301060, 18.024588>,  <38.397060, 34.422443, 17.907728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759842, 34.301060, 18.024588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330684, 0.083307, -0.940057,
		0.260928, 0.949197, 0.175903,
		0.906953, -0.303456, 0.292147,
		39.031929, 34.210022, 18.112232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991779, 34.890533, 17.941408>,  <38.397060, 34.422443, 17.907728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991779, 34.890533, 17.941408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157024, 35.233894, 17.819765>,  <39.256172, 35.439911, 17.746778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.157024, 35.233894, 17.819765>,  <38.991779, 34.890533, 17.941408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157024, 35.233894, 17.819765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086329, -0.295519, -0.951429,
		-0.906579, 0.419299, -0.047977,
		0.413111, 0.858404, -0.304109,
		39.280956, 35.491417, 17.728533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614056, 34.927742, 17.361994>,  <38.991779, 34.890533, 17.941408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614056, 34.927742, 17.361994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907787, 35.197552, 17.331558>,  <39.084026, 35.359436, 17.313297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907787, 35.197552, 17.331558>,  <38.614056, 34.927742, 17.361994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907787, 35.197552, 17.331558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077537, -0.194712, -0.977791,
		-0.674355, 0.712116, -0.195283,
		0.734325, 0.674520, -0.076090,
		39.128086, 35.399906, 17.308731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494862, 35.276951, 16.646048>,  <38.614056, 34.927742, 17.361994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494862, 35.276951, 16.646048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877342, 35.310406, 16.758251>,  <39.106831, 35.330479, 16.825573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877342, 35.310406, 16.758251>,  <38.494862, 35.276951, 16.646048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877342, 35.310406, 16.758251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292204, -0.216343, -0.931565,
		-0.017228, 0.972728, -0.231306,
		0.956201, 0.083638, 0.280508,
		39.164204, 35.335499, 16.842403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721699, 35.471863, 15.987962>,  <38.494862, 35.276951, 16.646048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721699, 35.471863, 15.987962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093006, 35.395199, 15.860472>,  <39.315792, 35.349201, 15.783978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.093006, 35.395199, 15.860472>,  <38.721699, 35.471863, 15.987962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093006, 35.395199, 15.860472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347592, 0.142267, 0.926790,
		-0.132289, -0.971095, 0.198682,
		0.928267, -0.191664, -0.318725,
		39.371487, 35.337700, 15.764854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181892, 34.960846, 16.345261>,  <38.721699, 35.471863, 15.987962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181892, 34.960846, 16.345261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379333, 35.279648, 16.206041>,  <39.497799, 35.470928, 16.122511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379333, 35.279648, 16.206041>,  <39.181892, 34.960846, 16.345261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379333, 35.279648, 16.206041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219164, 0.273287, 0.936633,
		0.841621, -0.538602, -0.039780,
		0.493601, 0.797008, -0.348046,
		39.527412, 35.518749, 16.101627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927479, 35.005749, 16.642120>,  <39.181892, 34.960846, 16.345261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927479, 35.005749, 16.642120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751400, 35.349361, 16.537594>,  <39.645752, 35.555531, 16.474878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751400, 35.349361, 16.537594>,  <39.927479, 35.005749, 16.642120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751400, 35.349361, 16.537594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033197, 0.306402, 0.951323,
		0.897287, 0.410095, -0.163395,
		-0.440198, 0.859034, -0.261317,
		39.619339, 35.607071, 16.459198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271080, 35.545788, 16.880909>,  <39.927479, 35.005749, 16.642120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271080, 35.545788, 16.880909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874874, 35.584850, 16.842255>,  <39.637150, 35.608288, 16.819061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874874, 35.584850, 16.842255>,  <40.271080, 35.545788, 16.880909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874874, 35.584850, 16.842255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089560, 0.074416, 0.993198,
		0.104182, 0.992434, -0.064964,
		-0.990518, 0.097655, -0.096636,
		39.577721, 35.614147, 16.813265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167530, 36.167370, 17.183064>,  <40.271080, 35.545788, 16.880909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167530, 36.167370, 17.183064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843655, 35.934753, 17.214624>,  <39.649330, 35.795185, 17.233561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.843655, 35.934753, 17.214624>,  <40.167530, 36.167370, 17.183064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.843655, 35.934753, 17.214624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081158, 0.244111, 0.966345,
		-0.581227, 0.776031, -0.244850,
		-0.809684, -0.581537, 0.078903,
		39.600750, 35.760292, 17.238295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700260, 36.643578, 17.319824>,  <40.167530, 36.167370, 17.183064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700260, 36.643578, 17.319824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593262, 36.282604, 17.454912>,  <39.529064, 36.066021, 17.535965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593262, 36.282604, 17.454912>,  <39.700260, 36.643578, 17.319824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593262, 36.282604, 17.454912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127196, 0.380497, 0.915993,
		-0.955128, 0.202065, -0.216566,
		-0.267493, -0.902437, 0.337721,
		39.513012, 36.011871, 17.556229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162292, 36.773903, 17.730648>,  <39.700260, 36.643578, 17.319824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162292, 36.773903, 17.730648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266426, 36.404102, 17.842016>,  <39.328907, 36.182220, 17.908836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266426, 36.404102, 17.842016>,  <39.162292, 36.773903, 17.730648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266426, 36.404102, 17.842016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414405, 0.153459, 0.897061,
		-0.872062, -0.348916, -0.343168,
		0.260337, -0.924504, 0.278418,
		39.344528, 36.126751, 17.925541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541939, 36.636311, 18.148920>,  <39.162292, 36.773903, 17.730648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541939, 36.636311, 18.148920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855804, 36.402592, 18.231775>,  <39.044125, 36.262360, 18.281488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855804, 36.402592, 18.231775>,  <38.541939, 36.636311, 18.148920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855804, 36.402592, 18.231775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126189, 0.176600, 0.976160,
		-0.606944, -0.792095, 0.064840,
		0.784662, -0.584293, 0.207140,
		39.091202, 36.227303, 18.293917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326580, 36.250629, 18.697460>,  <38.541939, 36.636311, 18.148920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326580, 36.250629, 18.697460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726482, 36.244602, 18.704037>,  <38.966423, 36.240986, 18.707983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726482, 36.244602, 18.704037>,  <38.326580, 36.250629, 18.697460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726482, 36.244602, 18.704037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012340, 0.240423, 0.970590,
		-0.018578, -0.970551, 0.240177,
		0.999751, -0.015068, 0.016443,
		39.026409, 36.240082, 18.708969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467430, 35.999084, 19.398563>,  <38.326580, 36.250629, 18.697460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467430, 35.999084, 19.398563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814156, 36.146622, 19.264351>,  <39.022190, 36.235146, 19.183823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814156, 36.146622, 19.264351>,  <38.467430, 35.999084, 19.398563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814156, 36.146622, 19.264351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196457, 0.365850, 0.909702,
		0.458292, -0.854464, 0.244663,
		0.866818, 0.368843, -0.335532,
		39.074200, 36.257275, 19.163691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019405, 35.741467, 19.862953>,  <38.467430, 35.999084, 19.398563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019405, 35.741467, 19.862953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144943, 36.080219, 19.691238>,  <39.220264, 36.283470, 19.588209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144943, 36.080219, 19.691238>,  <39.019405, 35.741467, 19.862953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144943, 36.080219, 19.691238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375680, 0.304474, 0.875306,
		0.871990, -0.435985, -0.222600,
		0.313845, 0.846884, -0.429289,
		39.239098, 36.334286, 19.562452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616261, 35.869633, 20.184685>,  <39.019405, 35.741467, 19.862953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616261, 35.869633, 20.184685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541004, 36.223927, 20.014942>,  <39.495850, 36.436504, 19.913097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541004, 36.223927, 20.014942>,  <39.616261, 35.869633, 20.184685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541004, 36.223927, 20.014942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220831, 0.459156, 0.860470,
		0.956994, 0.068176, -0.281983,
		-0.188137, 0.885736, -0.424355,
		39.484562, 36.489647, 19.887636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211395, 36.205215, 20.311121>,  <39.616261, 35.869633, 20.184685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211395, 36.205215, 20.311121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929520, 36.476501, 20.227757>,  <39.760395, 36.639275, 20.177738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.929520, 36.476501, 20.227757>,  <40.211395, 36.205215, 20.311121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929520, 36.476501, 20.227757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274532, 0.531490, 0.801343,
		0.654254, 0.507480, -0.560728,
		-0.704687, 0.678219, -0.208410,
		39.718113, 36.679966, 20.165234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533268, 36.964531, 20.490892>,  <40.211395, 36.205215, 20.311121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533268, 36.964531, 20.490892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135395, 36.988289, 20.457253>,  <39.896671, 37.002544, 20.437069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135395, 36.988289, 20.457253>,  <40.533268, 36.964531, 20.490892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135395, 36.988289, 20.457253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034211, 0.579767, 0.814064,
		0.097108, 0.812615, -0.574654,
		-0.994686, 0.059393, -0.084100,
		39.836990, 37.006107, 20.432022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374584, 37.671001, 20.620890>,  <40.533268, 36.964531, 20.490892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374584, 37.671001, 20.620890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028641, 37.473415, 20.656696>,  <39.821075, 37.354866, 20.678181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028641, 37.473415, 20.656696>,  <40.374584, 37.671001, 20.620890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028641, 37.473415, 20.656696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136676, 0.403275, 0.904814,
		-0.483045, 0.770305, -0.416290,
		-0.864862, -0.493963, 0.089518,
		39.769180, 37.325226, 20.683552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887581, 38.175022, 20.857437>,  <40.374584, 37.671001, 20.620890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887581, 38.175022, 20.857437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769955, 37.812748, 20.979593>,  <39.699379, 37.595383, 21.052887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769955, 37.812748, 20.979593>,  <39.887581, 38.175022, 20.857437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769955, 37.812748, 20.979593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241101, 0.379476, 0.893234,
		-0.924876, 0.189040, -0.329952,
		-0.294067, -0.905683, 0.305391,
		39.681736, 37.541042, 21.071211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158623, 38.195541, 21.308817>,  <39.887581, 38.175022, 20.857437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158623, 38.195541, 21.308817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340832, 37.850056, 21.395067>,  <39.450157, 37.642765, 21.446817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.340832, 37.850056, 21.395067>,  <39.158623, 38.195541, 21.308817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340832, 37.850056, 21.395067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253368, 0.106409, 0.961500,
		-0.853407, -0.492617, -0.170366,
		0.455523, -0.863716, 0.215624,
		39.477489, 37.590942, 21.459755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685421, 37.893291, 21.772514>,  <39.158623, 38.195541, 21.308817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685421, 37.893291, 21.772514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012222, 37.676926, 21.852436>,  <39.208302, 37.547108, 21.900389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012222, 37.676926, 21.852436>,  <38.685421, 37.893291, 21.772514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012222, 37.676926, 21.852436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208382, 0.046127, 0.976959,
		-0.537667, -0.839812, -0.075031,
		0.817001, -0.540914, 0.199803,
		39.257324, 37.514652, 21.912376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474911, 37.281929, 22.135921>,  <38.685421, 37.893291, 21.772514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474911, 37.281929, 22.135921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859379, 37.341309, 22.228971>,  <39.090061, 37.376934, 22.284801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859379, 37.341309, 22.228971>,  <38.474911, 37.281929, 22.135921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859379, 37.341309, 22.228971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248815, 0.101660, 0.963201,
		0.119348, -0.983679, 0.134652,
		0.961170, 0.148460, 0.232621,
		39.147732, 37.385841, 22.298758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537380, 36.892559, 22.647058>,  <38.474911, 37.281929, 22.135921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537380, 36.892559, 22.647058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838459, 37.153255, 22.684320>,  <39.019108, 37.309673, 22.706676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838459, 37.153255, 22.684320>,  <38.537380, 36.892559, 22.647058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838459, 37.153255, 22.684320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201691, 0.093581, 0.974968,
		0.626709, -0.752646, 0.201889,
		0.752699, 0.651741, 0.093154,
		39.064270, 37.348778, 22.712267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757698, 36.680912, 23.293087>,  <38.537380, 36.892559, 22.647058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757698, 36.680912, 23.293087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936264, 37.033958, 23.234152>,  <39.043404, 37.245785, 23.198792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936264, 37.033958, 23.234152>,  <38.757698, 36.680912, 23.293087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936264, 37.033958, 23.234152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212677, 0.264592, 0.940616,
		0.869184, -0.388572, 0.305830,
		0.446417, 0.882611, -0.147339,
		39.070190, 37.298740, 23.189951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130756, 36.871708, 23.997299>,  <38.757698, 36.680912, 23.293087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130756, 36.871708, 23.997299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079369, 37.198135, 23.771898>,  <39.048534, 37.393990, 23.636658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.079369, 37.198135, 23.771898>,  <39.130756, 36.871708, 23.997299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079369, 37.198135, 23.771898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254867, 0.521955, 0.814006,
		0.958404, 0.248194, 0.140932,
		-0.128471, 0.816065, -0.563500,
		39.040829, 37.442955, 23.602848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560547, 37.438213, 24.156361>,  <39.130756, 36.871708, 23.997299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560547, 37.438213, 24.156361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250015, 37.628880, 23.991385>,  <39.063698, 37.743279, 23.892399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250015, 37.628880, 23.991385>,  <39.560547, 37.438213, 24.156361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250015, 37.628880, 23.991385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116748, 0.534266, 0.837216,
		0.619421, 0.698107, -0.359116,
		-0.776329, 0.476663, -0.412438,
		39.017117, 37.771877, 23.867653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580223, 38.164627, 24.349606>,  <39.560547, 37.438213, 24.156361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580223, 38.164627, 24.349606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206718, 38.096714, 24.223585>,  <38.982616, 38.055965, 24.147972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206718, 38.096714, 24.223585>,  <39.580223, 38.164627, 24.349606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206718, 38.096714, 24.223585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357597, 0.478032, 0.802253,
		0.014396, 0.861777, -0.507083,
		-0.933765, -0.169782, -0.315051,
		38.926590, 38.045780, 24.129070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155804, 38.710575, 24.595066>,  <39.580223, 38.164627, 24.349606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155804, 38.710575, 24.595066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840702, 38.476643, 24.517683>,  <38.651642, 38.336285, 24.471252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.840702, 38.476643, 24.517683>,  <39.155804, 38.710575, 24.595066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.840702, 38.476643, 24.517683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472925, 0.372951, 0.798279,
		-0.394705, 0.720335, -0.570372,
		-0.787750, -0.584828, -0.193459,
		38.604378, 38.301193, 24.459644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667816, 39.061516, 25.000109>,  <39.155804, 38.710575, 24.595066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667816, 39.061516, 25.000109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460697, 38.734638, 24.898849>,  <38.336426, 38.538513, 24.838095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460697, 38.734638, 24.898849>,  <38.667816, 39.061516, 25.000109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460697, 38.734638, 24.898849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544330, 0.086420, 0.834408,
		-0.659997, 0.569847, -0.489570,
		-0.517793, -0.817194, -0.253148,
		38.305359, 38.489479, 24.822905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907188, 39.211868, 25.078119>,  <38.667816, 39.061516, 25.000109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907188, 39.211868, 25.078119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964039, 38.816700, 25.102850>,  <37.998150, 38.579601, 25.117687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964039, 38.816700, 25.102850>,  <37.907188, 39.211868, 25.078119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964039, 38.816700, 25.102850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499849, -0.017718, 0.865931,
		-0.854372, -0.153971, -0.496327,
		0.142122, -0.987917, 0.061824,
		38.006676, 38.520325, 25.121397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261276, 39.030544, 25.230738>,  <37.907188, 39.211868, 25.078119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261276, 39.030544, 25.230738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528702, 38.760860, 25.356249>,  <37.689159, 38.599049, 25.431557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528702, 38.760860, 25.356249>,  <37.261276, 39.030544, 25.230738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528702, 38.760860, 25.356249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465210, -0.050001, 0.883787,
		-0.580169, -0.736845, -0.347079,
		0.668568, -0.674211, 0.313779,
		37.729271, 38.558598, 25.450382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878433, 38.556183, 25.552149>,  <37.261276, 39.030544, 25.230738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878433, 38.556183, 25.552149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239647, 38.469582, 25.700560>,  <37.456375, 38.417622, 25.789606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.239647, 38.469582, 25.700560>,  <36.878433, 38.556183, 25.552149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239647, 38.469582, 25.700560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372903, 0.033688, 0.927259,
		-0.213257, -0.975700, -0.050315,
		0.903031, -0.216508, 0.371025,
		37.510555, 38.404629, 25.811867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799400, 37.941792, 25.931402>,  <36.878433, 38.556183, 25.552149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799400, 37.941792, 25.931402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119381, 38.119442, 26.092810>,  <37.311371, 38.226032, 26.189653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119381, 38.119442, 26.092810>,  <36.799400, 37.941792, 25.931402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119381, 38.119442, 26.092810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386156, -0.133702, 0.912692,
		0.459303, -0.885931, 0.064548,
		0.799952, 0.444128, 0.403517,
		37.359367, 38.252682, 26.213865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039043, 37.541325, 26.552977>,  <36.799400, 37.941792, 25.931402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039043, 37.541325, 26.552977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223267, 37.887508, 26.631830>,  <37.333801, 38.095219, 26.679142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223267, 37.887508, 26.631830>,  <37.039043, 37.541325, 26.552977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223267, 37.887508, 26.631830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543464, 0.099345, 0.833533,
		0.701805, -0.491029, 0.516101,
		0.460561, 0.865460, 0.197136,
		37.361435, 38.147148, 26.690971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279549, 37.506798, 27.339378>,  <37.039043, 37.541325, 26.552977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279549, 37.506798, 27.339378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267475, 37.888962, 27.221878>,  <37.260231, 38.118259, 27.151379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.267475, 37.888962, 27.221878>,  <37.279549, 37.506798, 27.339378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267475, 37.888962, 27.221878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533944, 0.233027, 0.812774,
		0.844981, 0.181378, 0.503100,
		-0.030183, 0.955406, -0.293749,
		37.258419, 38.175583, 27.133753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525463, 37.900494, 27.853296>,  <37.279549, 37.506798, 27.339378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525463, 37.900494, 27.853296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348415, 38.196224, 27.650326>,  <37.242188, 38.373661, 27.528543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348415, 38.196224, 27.650326>,  <37.525463, 37.900494, 27.853296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348415, 38.196224, 27.650326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438084, 0.315459, 0.841765,
		0.782413, 0.594878, 0.184258,
		-0.442621, 0.739328, -0.507426,
		37.215630, 38.418022, 27.498098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750950, 38.586697, 28.265192>,  <37.525463, 37.900494, 27.853296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750950, 38.586697, 28.265192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431309, 38.648964, 28.032915>,  <37.239525, 38.686325, 27.893549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431309, 38.648964, 28.032915>,  <37.750950, 38.586697, 28.265192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431309, 38.648964, 28.032915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509778, 0.336560, 0.791741,
		0.318690, 0.928705, -0.189587,
		-0.799101, 0.155672, -0.580692,
		37.191578, 38.695667, 27.858707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516415, 39.226379, 28.358145>,  <37.750950, 38.586697, 28.265192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516415, 39.226379, 28.358145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180592, 39.056908, 28.222124>,  <36.979099, 38.955223, 28.140511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180592, 39.056908, 28.222124>,  <37.516415, 39.226379, 28.358145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180592, 39.056908, 28.222124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519856, 0.444745, 0.729350,
		-0.157776, 0.789110, -0.593643,
		-0.839557, -0.423683, -0.340054,
		36.928726, 38.929802, 28.120108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040909, 39.631100, 28.683447>,  <37.516415, 39.226379, 28.358145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040909, 39.631100, 28.683447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825294, 39.332836, 28.526760>,  <36.695927, 39.153877, 28.432747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825294, 39.332836, 28.526760>,  <37.040909, 39.631100, 28.683447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825294, 39.332836, 28.526760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744034, 0.203546, 0.636382,
		-0.394788, 0.634483, -0.664511,
		-0.539032, -0.745655, -0.391719,
		36.663586, 39.109138, 28.409245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314079, 39.875130, 28.494253>,  <37.040909, 39.631100, 28.683447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314079, 39.875130, 28.494253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312618, 39.479420, 28.552660>,  <36.311741, 39.241993, 28.587704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312618, 39.479420, 28.552660>,  <36.314079, 39.875130, 28.494253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312618, 39.479420, 28.552660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659609, 0.112127, 0.743199,
		-0.751601, -0.093602, -0.652944,
		-0.003648, -0.989276, 0.146015,
		36.311523, 39.182636, 28.596464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626080, 39.766678, 28.613798>,  <36.314079, 39.875130, 28.494253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626080, 39.766678, 28.613798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809010, 39.436718, 28.746702>,  <35.918766, 39.238743, 28.826445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809010, 39.436718, 28.746702>,  <35.626080, 39.766678, 28.613798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809010, 39.436718, 28.746702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606791, -0.016311, 0.794694,
		-0.650121, -0.565047, -0.508000,
		0.457325, -0.824897, 0.332262,
		35.946209, 39.189247, 28.846380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119789, 39.334782, 28.859032>,  <35.626080, 39.766678, 28.613798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119789, 39.334782, 28.859032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436405, 39.174892, 29.043932>,  <35.626377, 39.078957, 29.154873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436405, 39.174892, 29.043932>,  <35.119789, 39.334782, 28.859032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436405, 39.174892, 29.043932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522567, -0.050566, 0.851098,
		-0.316834, -0.915237, -0.248911,
		0.791543, -0.399729, 0.462251,
		35.673870, 39.054974, 29.182608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946484, 38.715099, 29.164280>,  <35.119789, 39.334782, 28.859032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946484, 38.715099, 29.164280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263905, 38.832508, 29.377491>,  <35.454357, 38.902954, 29.505419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.263905, 38.832508, 29.377491>,  <34.946484, 38.715099, 29.164280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263905, 38.832508, 29.377491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537646, -0.072028, 0.840088,
		0.284976, -0.953236, 0.100652,
		0.793552, 0.293520, 0.533030,
		35.501972, 38.920563, 29.537399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070045, 38.168545, 29.778305>,  <34.946484, 38.715099, 29.164280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070045, 38.168545, 29.778305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220322, 38.534477, 29.837566>,  <35.310486, 38.754036, 29.873123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220322, 38.534477, 29.837566>,  <35.070045, 38.168545, 29.778305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220322, 38.534477, 29.837566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566161, 0.099995, 0.818207,
		0.733704, -0.391269, 0.555506,
		0.375687, 0.914828, 0.148155,
		35.333027, 38.808926, 29.882013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174355, 38.257542, 30.494511>,  <35.070045, 38.168545, 29.778305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174355, 38.257542, 30.494511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244072, 38.646042, 30.429657>,  <35.285904, 38.879143, 30.390745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244072, 38.646042, 30.429657>,  <35.174355, 38.257542, 30.494511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244072, 38.646042, 30.429657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464281, 0.226259, 0.856300,
		0.868369, -0.073973, 0.490370,
		0.174293, 0.971254, -0.162132,
		35.296360, 38.937420, 30.381018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483227, 38.505878, 31.122086>,  <35.174355, 38.257542, 30.494511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483227, 38.505878, 31.122086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335770, 38.817787, 30.919680>,  <35.247295, 39.004932, 30.798235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335770, 38.817787, 30.919680>,  <35.483227, 38.505878, 31.122086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335770, 38.817787, 30.919680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515831, 0.281251, 0.809207,
		0.773316, 0.559330, 0.298550,
		-0.368647, 0.779774, -0.506016,
		35.225174, 39.051720, 30.767876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709873, 39.164326, 31.459118>,  <35.483227, 38.505878, 31.122086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709873, 39.164326, 31.459118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428837, 39.301876, 31.209923>,  <35.260216, 39.384407, 31.060406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428837, 39.301876, 31.209923>,  <35.709873, 39.164326, 31.459118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428837, 39.301876, 31.209923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441002, 0.476668, 0.760464,
		0.558460, 0.809036, -0.183256,
		-0.702595, 0.343873, -0.622986,
		35.218060, 39.405037, 31.023027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665981, 39.975849, 31.369507>,  <35.709873, 39.164326, 31.459118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665981, 39.975849, 31.369507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315472, 39.808681, 31.273600>,  <35.105167, 39.708382, 31.216055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315472, 39.808681, 31.273600>,  <35.665981, 39.975849, 31.369507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315472, 39.808681, 31.273600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449351, 0.529292, 0.719677,
		-0.173856, 0.738375, -0.651596,
		-0.876275, -0.417915, -0.239769,
		35.052589, 39.683308, 31.201670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449417, 40.319782, 31.449837>,  <35.665981, 39.975849, 31.369507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449417, 40.319782, 31.449837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764954, 40.194092, 31.661118>,  <36.954273, 40.118679, 31.787886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764954, 40.194092, 31.661118>,  <36.449417, 40.319782, 31.449837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764954, 40.194092, 31.661118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440293, -0.310695, -0.842384,
		0.428806, 0.897069, -0.106738,
		0.788839, -0.314223, 0.528201,
		37.001606, 40.099823, 31.819578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018822, 40.509430, 31.107082>,  <36.449417, 40.319782, 31.449837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018822, 40.509430, 31.107082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114281, 40.197193, 31.338156>,  <37.171558, 40.009850, 31.476799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114281, 40.197193, 31.338156>,  <37.018822, 40.509430, 31.107082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114281, 40.197193, 31.338156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555785, -0.378023, -0.740406,
		0.796335, 0.497765, 0.343628,
		0.238649, -0.780595, 0.577684,
		37.185875, 39.963017, 31.511461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609665, 40.445477, 30.927422>,  <37.018822, 40.509430, 31.107082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609665, 40.445477, 30.927422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532238, 40.100185, 31.113916>,  <37.485783, 39.893013, 31.225813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532238, 40.100185, 31.113916>,  <37.609665, 40.445477, 30.927422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532238, 40.100185, 31.113916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593338, -0.481468, -0.645088,
		0.781334, 0.151771, 0.605378,
		-0.193564, -0.863223, 0.466239,
		37.474167, 39.841217, 31.253788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342937, 40.131855, 31.051126>,  <37.609665, 40.445477, 30.927422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342937, 40.131855, 31.051126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047070, 39.863354, 31.070356>,  <37.869549, 39.702255, 31.081894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047070, 39.863354, 31.070356>,  <38.342937, 40.131855, 31.051126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047070, 39.863354, 31.070356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552300, -0.646309, -0.526544,
		0.384514, -0.362917, 0.848787,
		-0.739671, -0.671249, 0.048075,
		37.825169, 39.661980, 31.084780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703037, 39.682178, 31.431711>,  <38.342937, 40.131855, 31.051126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703037, 39.682178, 31.431711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398926, 39.500084, 31.246355>,  <38.216457, 39.390827, 31.135141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.398926, 39.500084, 31.246355>,  <38.703037, 39.682178, 31.431711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398926, 39.500084, 31.246355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644816, -0.615250, -0.453519,
		-0.078642, -0.643604, 0.761308,
		-0.760282, -0.455238, -0.463390,
		38.170841, 39.363514, 31.107338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777702, 38.956074, 31.454098>,  <38.703037, 39.682178, 31.431711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777702, 38.956074, 31.454098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559158, 39.031429, 31.127661>,  <38.428032, 39.076641, 30.931799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559158, 39.031429, 31.127661>,  <38.777702, 38.956074, 31.454098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559158, 39.031429, 31.127661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630432, -0.548987, -0.548788,
		-0.551409, -0.814324, 0.181176,
		-0.546355, 0.188388, -0.816092,
		38.395252, 39.087944, 30.882833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681770, 38.346214, 31.092018>,  <38.777702, 38.956074, 31.454098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681770, 38.346214, 31.092018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634441, 38.636078, 30.820471>,  <38.606045, 38.809998, 30.657543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634441, 38.636078, 30.820471>,  <38.681770, 38.346214, 31.092018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634441, 38.636078, 30.820471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655065, -0.456834, -0.601824,
		-0.746250, -0.515913, -0.420648,
		-0.118322, 0.724663, -0.678869,
		38.598946, 38.853477, 30.616810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794613, 37.957211, 30.516409>,  <38.681770, 38.346214, 31.092018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794613, 37.957211, 30.516409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804256, 38.322609, 30.353960>,  <38.810043, 38.541847, 30.256491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804256, 38.322609, 30.353960>,  <38.794613, 37.957211, 30.516409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804256, 38.322609, 30.353960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655999, -0.321007, -0.683096,
		-0.754377, -0.249946, -0.606995,
		0.024112, 0.913500, -0.406124,
		38.811489, 38.596661, 30.232122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700802, 37.818695, 29.732088>,  <38.794613, 37.957211, 30.516409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700802, 37.818695, 29.732088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863419, 38.178486, 29.796165>,  <38.960991, 38.394360, 29.834612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863419, 38.178486, 29.796165>,  <38.700802, 37.818695, 29.732088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863419, 38.178486, 29.796165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779354, -0.249920, -0.574584,
		-0.476790, 0.358442, -0.802615,
		0.406545, 0.899477, 0.160193,
		38.985382, 38.448330, 29.844223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625553, 38.194630, 29.077162>,  <38.700802, 37.818695, 29.732088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625553, 38.194630, 29.077162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927883, 38.364101, 29.276850>,  <39.109283, 38.465786, 29.396662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927883, 38.364101, 29.276850>,  <38.625553, 38.194630, 29.077162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927883, 38.364101, 29.276850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515713, 0.084572, -0.852577,
		-0.403441, 0.901855, -0.154576,
		0.755828, 0.423681, 0.499218,
		39.154633, 38.491207, 29.426615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785770, 38.674423, 28.581749>,  <38.625553, 38.194630, 29.077162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785770, 38.674423, 28.581749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092983, 38.655407, 28.837206>,  <39.277309, 38.643997, 28.990480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092983, 38.655407, 28.837206>,  <38.785770, 38.674423, 28.581749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092983, 38.655407, 28.837206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639001, -0.009242, -0.769151,
		0.042470, 0.998826, 0.023282,
		0.768033, -0.047543, 0.638643,
		39.323395, 38.641144, 29.028799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200920, 39.251888, 28.410185>,  <38.785770, 38.674423, 28.581749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200920, 39.251888, 28.410185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424206, 38.963600, 28.574604>,  <39.558178, 38.790627, 28.673256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424206, 38.963600, 28.574604>,  <39.200920, 39.251888, 28.410185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424206, 38.963600, 28.574604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666997, 0.095156, -0.738959,
		0.493467, 0.686667, 0.533834,
		0.558216, -0.720717, 0.411049,
		39.591671, 38.747383, 28.697918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846577, 39.453125, 28.337427>,  <39.200920, 39.251888, 28.410185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846577, 39.453125, 28.337427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879173, 39.065296, 28.429773>,  <39.898731, 38.832600, 28.485180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879173, 39.065296, 28.429773>,  <39.846577, 39.453125, 28.337427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879173, 39.065296, 28.429773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703023, -0.108275, -0.702876,
		0.706483, 0.219580, 0.672805,
		0.081490, -0.969568, 0.230864,
		39.903622, 38.774426, 28.499033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556377, 39.343246, 28.318445>,  <39.846577, 39.453125, 28.337427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556377, 39.343246, 28.318445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368954, 38.996155, 28.252102>,  <40.256500, 38.787899, 28.212296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368954, 38.996155, 28.252102>,  <40.556377, 39.343246, 28.318445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368954, 38.996155, 28.252102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593995, -0.170469, -0.786200,
		0.653932, -0.466897, 0.595298,
		-0.468554, -0.867725, -0.165860,
		40.228386, 38.735836, 28.202343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048988, 38.846565, 28.270443>,  <40.556377, 39.343246, 28.318445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048988, 38.846565, 28.270443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725800, 38.679043, 28.104652>,  <40.531887, 38.578529, 28.005178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.725800, 38.679043, 28.104652>,  <41.048988, 38.846565, 28.270443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725800, 38.679043, 28.104652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499861, -0.114743, -0.858471,
		0.311974, -0.900798, 0.302053,
		-0.807968, -0.418805, -0.414477,
		40.483410, 38.553402, 27.980309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381912, 38.466743, 27.763458>,  <41.048988, 38.846565, 28.270443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381912, 38.466743, 27.763458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000015, 38.438194, 27.647966>,  <40.770878, 38.421066, 27.578671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000015, 38.438194, 27.647966>,  <41.381912, 38.466743, 27.763458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000015, 38.438194, 27.647966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296748, -0.163258, -0.940897,
		0.020019, -0.983998, 0.177050,
		-0.954746, -0.071375, -0.288731,
		40.713593, 38.416782, 27.561348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330887, 37.812916, 27.470509>,  <41.381912, 38.466743, 27.763458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330887, 37.812916, 27.470509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035267, 38.045631, 27.334665>,  <40.857895, 38.185261, 27.253159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035267, 38.045631, 27.334665>,  <41.330887, 37.812916, 27.470509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035267, 38.045631, 27.334665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171062, -0.325531, -0.929928,
		-0.651575, -0.745354, 0.141060,
		-0.739045, 0.581788, -0.339610,
		40.813553, 38.220169, 27.232782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931343, 37.377037, 27.064184>,  <41.330887, 37.812916, 27.470509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931343, 37.377037, 27.064184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810661, 37.739990, 26.947136>,  <40.738255, 37.957764, 26.876907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810661, 37.739990, 26.947136>,  <40.931343, 37.377037, 27.064184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810661, 37.739990, 26.947136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009707, -0.309832, -0.950742,
		-0.953353, -0.284000, 0.102285,
		-0.301702, 0.907385, -0.292622,
		40.720150, 38.012207, 26.859348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343830, 37.335606, 26.634130>,  <40.931343, 37.377037, 27.064184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343830, 37.335606, 26.634130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512417, 37.687946, 26.547909>,  <40.613567, 37.899353, 26.496176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512417, 37.687946, 26.547909>,  <40.343830, 37.335606, 26.634130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512417, 37.687946, 26.547909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102004, -0.190139, -0.976444,
		-0.901089, 0.433526, 0.009713,
		0.421467, 0.880853, -0.215553,
		40.638855, 37.952202, 26.483242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959534, 37.597912, 26.105404>,  <40.343830, 37.335606, 26.634130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959534, 37.597912, 26.105404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308041, 37.794231, 26.106899>,  <40.517143, 37.912025, 26.107796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308041, 37.794231, 26.106899>,  <39.959534, 37.597912, 26.105404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308041, 37.794231, 26.106899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013875, 0.032245, -0.999384,
		-0.490619, 0.870675, 0.034904,
		0.871264, 0.490801, 0.003739,
		40.569420, 37.941471, 26.108021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922783, 37.954025, 25.570683>,  <39.959534, 37.597912, 26.105404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922783, 37.954025, 25.570683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316544, 37.974800, 25.637913>,  <40.552799, 37.987263, 25.678251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316544, 37.974800, 25.637913>,  <39.922783, 37.954025, 25.570683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316544, 37.974800, 25.637913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168469, -0.003240, -0.985702,
		-0.050647, 0.998645, -0.011939,
		0.984405, 0.051934, 0.168077,
		40.611866, 37.990379, 25.688335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178455, 38.606491, 25.138470>,  <39.922783, 37.954025, 25.570683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178455, 38.606491, 25.138470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507538, 38.390739, 25.210270>,  <40.704987, 38.261288, 25.253349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507538, 38.390739, 25.210270>,  <40.178455, 38.606491, 25.138470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507538, 38.390739, 25.210270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259219, 0.074935, -0.962907,
		0.505921, 0.838722, 0.201467,
		0.822708, -0.539379, 0.179501,
		40.754349, 38.228924, 25.264120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734356, 39.002640, 24.865589>,  <40.178455, 38.606491, 25.138470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734356, 39.002640, 24.865589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871162, 38.627434, 24.888042>,  <40.953247, 38.402309, 24.901514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871162, 38.627434, 24.888042>,  <40.734356, 39.002640, 24.865589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871162, 38.627434, 24.888042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263076, 0.038234, -0.964017,
		0.902118, 0.344475, 0.259846,
		0.342015, -0.938016, 0.056131,
		40.973766, 38.346027, 24.904882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552887, 38.975502, 24.603628>,  <40.734356, 39.002640, 24.865589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552887, 38.975502, 24.603628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368992, 38.621159, 24.578672>,  <41.258656, 38.408554, 24.563700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368992, 38.621159, 24.578672>,  <41.552887, 38.975502, 24.603628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368992, 38.621159, 24.578672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423652, -0.157037, -0.892109,
		0.780486, -0.436568, 0.447493,
		-0.459739, -0.885860, -0.062388,
		41.231071, 38.355400, 24.559956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023361, 38.594669, 24.238157>,  <41.552887, 38.975502, 24.603628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023361, 38.594669, 24.238157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697853, 38.364357, 24.206539>,  <41.502548, 38.226170, 24.187569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.697853, 38.364357, 24.206539>,  <42.023361, 38.594669, 24.238157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.697853, 38.364357, 24.206539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360041, -0.392675, -0.846273,
		0.456232, -0.717132, 0.526854,
		-0.813771, -0.575785, -0.079046,
		41.453720, 38.191620, 24.182825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.353992, 37.984097, 24.093103>,  <42.023361, 38.594669, 24.238157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.353992, 37.984097, 24.093103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969978, 37.903439, 24.015467>,  <41.739571, 37.855042, 23.968884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969978, 37.903439, 24.015467>,  <42.353992, 37.984097, 24.093103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969978, 37.903439, 24.015467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277952, -0.605593, -0.745654,
		0.032819, -0.769802, 0.637439,
		-0.960034, -0.201649, -0.194093,
		41.681969, 37.842945, 23.957239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.295216, 37.231567, 24.078505>,  <42.353992, 37.984097, 24.093103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.295216, 37.231567, 24.078505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987709, 37.374886, 23.866611>,  <41.803204, 37.460876, 23.739475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.987709, 37.374886, 23.866611>,  <42.295216, 37.231567, 24.078505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987709, 37.374886, 23.866611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232610, -0.614932, -0.753493,
		-0.595717, -0.702486, 0.389402,
		-0.768774, 0.358290, -0.529730,
		41.757076, 37.482372, 23.707691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990940, 36.625328, 23.835159>,  <42.295216, 37.231567, 24.078505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990940, 36.625328, 23.835159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856525, 36.915165, 23.594479>,  <41.775879, 37.089066, 23.450069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.856525, 36.915165, 23.594479>,  <41.990940, 36.625328, 23.835159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856525, 36.915165, 23.594479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015311, -0.634566, -0.772717,
		-0.941726, -0.268871, 0.202141,
		-0.336033, 0.724592, -0.601704,
		41.755714, 37.132542, 23.413967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389523, 36.368332, 23.600044>,  <41.990940, 36.625328, 23.835159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389523, 36.368332, 23.600044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470833, 36.645947, 23.323784>,  <41.519619, 36.812515, 23.158028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.470833, 36.645947, 23.323784>,  <41.389523, 36.368332, 23.600044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.470833, 36.645947, 23.323784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042527, -0.710970, -0.701935,
		-0.978197, 0.113316, -0.174039,
		0.203277, 0.694032, -0.690650,
		41.531815, 36.854156, 23.116589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968410, 36.232132, 22.948231>,  <41.389523, 36.368332, 23.600044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968410, 36.232132, 22.948231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284309, 36.448223, 22.831989>,  <41.473850, 36.577877, 22.762243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284309, 36.448223, 22.831989>,  <40.968410, 36.232132, 22.948231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284309, 36.448223, 22.831989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251264, -0.717054, -0.650154,
		-0.559611, 0.440439, -0.702032,
		0.789748, 0.540228, -0.290605,
		41.521233, 36.610291, 22.744808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827610, 36.336483, 22.281376>,  <40.968410, 36.232132, 22.948231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827610, 36.336483, 22.281376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222313, 36.374096, 22.334248>,  <41.459133, 36.396664, 22.365971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.222313, 36.374096, 22.334248>,  <40.827610, 36.336483, 22.281376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222313, 36.374096, 22.334248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159521, -0.710312, -0.685573,
		0.029426, 0.697578, -0.715904,
		0.986756, 0.094028, 0.132179,
		41.518341, 36.402306, 22.373901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060406, 36.236465, 21.584126>,  <40.827610, 36.336483, 22.281376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060406, 36.236465, 21.584126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393677, 36.192883, 21.800993>,  <41.593639, 36.166733, 21.931114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393677, 36.192883, 21.800993>,  <41.060406, 36.236465, 21.584126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393677, 36.192883, 21.800993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430931, -0.486514, -0.760002,
		0.346578, 0.866853, -0.358400,
		0.833176, -0.108954, 0.542169,
		41.643631, 36.160198, 21.963644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621155, 36.545170, 21.100468>,  <41.060406, 36.236465, 21.584126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621155, 36.545170, 21.100468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762280, 36.282925, 21.367512>,  <41.846954, 36.125580, 21.527739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762280, 36.282925, 21.367512>,  <41.621155, 36.545170, 21.100468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762280, 36.282925, 21.367512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463574, -0.497299, -0.733344,
		0.812788, 0.568218, 0.128472,
		0.352810, -0.655609, 0.667609,
		41.868122, 36.086243, 21.567795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361095, 36.431255, 20.925636>,  <41.621155, 36.545170, 21.100468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.361095, 36.431255, 20.925636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184868, 36.125454, 21.113863>,  <42.079132, 35.941975, 21.226799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184868, 36.125454, 21.113863>,  <42.361095, 36.431255, 20.925636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184868, 36.125454, 21.113863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192225, -0.592361, -0.782405,
		0.876899, -0.254245, 0.407930,
		-0.440564, -0.764505, 0.470569,
		42.052700, 35.896103, 21.255033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545486, 35.936035, 20.501179>,  <42.361095, 36.431255, 20.925636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.545486, 35.936035, 20.501179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318775, 35.714931, 20.745546>,  <42.182751, 35.582268, 20.892168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318775, 35.714931, 20.745546>,  <42.545486, 35.936035, 20.501179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318775, 35.714931, 20.745546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235101, -0.819202, -0.523102,
		0.789617, -0.152853, 0.594256,
		-0.566774, -0.552761, 0.610920,
		42.148743, 35.549103, 20.928822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871044, 35.354500, 20.703165>,  <42.545486, 35.936035, 20.501179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871044, 35.354500, 20.703165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.483589, 35.258789, 20.729979>,  <42.251118, 35.201363, 20.746067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.483589, 35.258789, 20.729979>,  <42.871044, 35.354500, 20.703165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483589, 35.258789, 20.729979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139602, -0.747179, -0.649796,
		0.205564, -0.620058, 0.757147,
		-0.968635, -0.239274, 0.067032,
		42.192997, 35.187008, 20.750088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903950, 34.692745, 20.756630>,  <42.871044, 35.354500, 20.703165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903950, 34.692745, 20.756630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533615, 34.775639, 20.630215>,  <42.311413, 34.825375, 20.554365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.533615, 34.775639, 20.630215>,  <42.903950, 34.692745, 20.756630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.533615, 34.775639, 20.630215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144272, -0.579104, -0.802386,
		-0.349302, -0.788474, 0.506258,
		-0.925837, 0.207236, -0.316037,
		42.255863, 34.837811, 20.535404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582588, 34.096672, 20.693817>,  <42.903950, 34.692745, 20.756630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582588, 34.096672, 20.693817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437431, 34.375996, 20.447023>,  <42.350338, 34.543591, 20.298946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437431, 34.375996, 20.447023>,  <42.582588, 34.096672, 20.693817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437431, 34.375996, 20.447023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107749, -0.626235, -0.772153,
		-0.925582, -0.346685, 0.152011,
		-0.362888, 0.698312, -0.616986,
		42.328564, 34.585491, 20.261927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491291, 33.401894, 20.343805>,  <42.582588, 34.096672, 20.693817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491291, 33.401894, 20.343805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811035, 33.167381, 20.396412>,  <43.002880, 33.026672, 20.427977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811035, 33.167381, 20.396412>,  <42.491291, 33.401894, 20.343805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811035, 33.167381, 20.396412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008369, 0.229729, 0.973219,
		-0.600793, -0.776852, 0.188543,
		0.799361, -0.586280, 0.131517,
		43.050842, 32.991497, 20.435867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363514, 32.865532, 20.970795>,  <42.491291, 33.401894, 20.343805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363514, 32.865532, 20.970795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756168, 32.923168, 20.920786>,  <42.991760, 32.957748, 20.890781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756168, 32.923168, 20.920786>,  <42.363514, 32.865532, 20.970795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.756168, 32.923168, 20.920786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120053, 0.042714, 0.991848,
		0.148253, -0.988643, 0.024631,
		0.981635, 0.144088, -0.125022,
		43.050659, 32.966393, 20.883280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622185, 32.456223, 21.437733>,  <42.363514, 32.865532, 20.970795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622185, 32.456223, 21.437733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897854, 32.734585, 21.356977>,  <43.063255, 32.901604, 21.308525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.897854, 32.734585, 21.356977>,  <42.622185, 32.456223, 21.437733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897854, 32.734585, 21.356977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002211, 0.276601, 0.960982,
		0.724594, -0.662729, 0.189087,
		0.689172, 0.695904, -0.201889,
		43.104607, 32.943356, 21.296412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.059807, 32.514256, 21.969543>,  <42.622185, 32.456223, 21.437733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.059807, 32.514256, 21.969543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.160217, 32.852200, 21.780571>,  <43.220463, 33.054966, 21.667187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.160217, 32.852200, 21.780571>,  <43.059807, 32.514256, 21.969543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.160217, 32.852200, 21.780571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150427, 0.448081, 0.881246,
		0.956221, -0.292280, -0.014612,
		0.251024, 0.844864, -0.472431,
		43.235523, 33.105659, 21.638842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613354, 32.627869, 22.271614>,  <43.059807, 32.514256, 21.969543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613354, 32.627869, 22.271614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484943, 32.978107, 22.127243>,  <43.407898, 33.188251, 22.040621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484943, 32.978107, 22.127243>,  <43.613354, 32.627869, 22.271614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484943, 32.978107, 22.127243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337456, 0.461842, 0.820259,
		0.884909, 0.141531, -0.443741,
		-0.321030, 0.875597, -0.360928,
		43.388634, 33.240788, 22.018965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.136784, 33.026974, 22.463556>,  <43.613354, 32.627869, 22.271614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.136784, 33.026974, 22.463556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844238, 33.281254, 22.364767>,  <43.668713, 33.433823, 22.305494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844238, 33.281254, 22.364767>,  <44.136784, 33.026974, 22.463556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844238, 33.281254, 22.364767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225268, 0.566985, 0.792327,
		0.643713, 0.523842, -0.557874,
		-0.731360, 0.635703, -0.246971,
		43.624832, 33.471966, 22.290676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.387794, 33.702702, 22.559523>,  <44.136784, 33.026974, 22.463556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.387794, 33.702702, 22.559523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991508, 33.756474, 22.567696>,  <43.753738, 33.788738, 22.572599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991508, 33.756474, 22.567696>,  <44.387794, 33.702702, 22.559523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.991508, 33.756474, 22.567696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111305, 0.715436, 0.689755,
		0.078105, 0.685624, -0.723754,
		-0.990712, 0.134431, 0.020435,
		43.694294, 33.796803, 22.573826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.109009, 34.509945, 22.434795>,  <44.387794, 33.702702, 22.559523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.109009, 34.509945, 22.434795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877018, 34.273476, 22.658991>,  <43.737823, 34.131596, 22.793509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877018, 34.273476, 22.658991>,  <44.109009, 34.509945, 22.434795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877018, 34.273476, 22.658991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028091, 0.673103, 0.739015,
		-0.814151, 0.444353, -0.373775,
		-0.579973, -0.591170, 0.560490,
		43.703026, 34.096123, 22.827137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.756470, 35.009235, 22.799938>,  <44.109009, 34.509945, 22.434795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.756470, 35.009235, 22.799938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.600086, 34.690468, 22.984140>,  <43.506256, 34.499207, 23.094662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.600086, 34.690468, 22.984140>,  <43.756470, 35.009235, 22.799938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.600086, 34.690468, 22.984140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307694, 0.584705, 0.750629,
		-0.867454, 0.151770, -0.473803,
		-0.390959, -0.796923, 0.460506,
		43.482800, 34.451389, 23.122292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118607, 35.211376, 23.089815>,  <43.756470, 35.009235, 22.799938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118607, 35.211376, 23.089815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197876, 34.890732, 23.315432>,  <43.245438, 34.698345, 23.450802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197876, 34.890732, 23.315432>,  <43.118607, 35.211376, 23.089815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197876, 34.890732, 23.315432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143834, 0.545442, 0.825715,
		-0.969555, -0.244766, -0.007205,
		0.198177, -0.801613, 0.564042,
		43.257328, 34.650249, 23.484644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.516041, 35.089142, 23.579874>,  <43.118607, 35.211376, 23.089815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.516041, 35.089142, 23.579874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842800, 34.909733, 23.724932>,  <43.038857, 34.802086, 23.811966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842800, 34.909733, 23.724932>,  <42.516041, 35.089142, 23.579874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842800, 34.909733, 23.724932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193401, 0.379337, 0.904820,
		-0.543396, -0.809279, 0.223134,
		0.816895, -0.448522, 0.362646,
		43.087868, 34.775177, 23.833725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290581, 34.806259, 24.184996>,  <42.516041, 35.089142, 23.579874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290581, 34.806259, 24.184996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687916, 34.811058, 24.230839>,  <42.926315, 34.813938, 24.258345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.687916, 34.811058, 24.230839>,  <42.290581, 34.806259, 24.184996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687916, 34.811058, 24.230839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114294, 0.229442, 0.966588,
		-0.014699, -0.973248, 0.229285,
		0.993338, 0.011998, 0.114609,
		42.985916, 34.814659, 24.265221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.462742, 34.313126, 24.684965>,  <42.290581, 34.806259, 24.184996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.462742, 34.313126, 24.684965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.701431, 34.633163, 24.660366>,  <42.844643, 34.825184, 24.645607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.701431, 34.633163, 24.660366>,  <42.462742, 34.313126, 24.684965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701431, 34.633163, 24.660366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123731, 0.167461, 0.978084,
		0.792854, -0.576031, 0.198923,
		0.596719, 0.800090, -0.061500,
		42.880447, 34.873192, 24.641916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.855274, 34.213737, 25.270679>,  <42.462742, 34.313126, 24.684965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.855274, 34.213737, 25.270679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896793, 34.597881, 25.167189>,  <42.921703, 34.828369, 25.105095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896793, 34.597881, 25.167189>,  <42.855274, 34.213737, 25.270679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896793, 34.597881, 25.167189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040465, 0.263993, 0.963675,
		0.993775, -0.089554, 0.066262,
		0.103794, 0.960358, -0.258726,
		42.927933, 34.885990, 25.089571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272770, 34.489391, 25.848526>,  <42.855274, 34.213737, 25.270679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272770, 34.489391, 25.848526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130909, 34.809231, 25.654675>,  <43.045792, 35.001133, 25.538364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130909, 34.809231, 25.654675>,  <43.272770, 34.489391, 25.848526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130909, 34.809231, 25.654675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070412, 0.494010, 0.866601,
		0.932342, 0.341469, -0.118902,
		-0.354656, 0.799596, -0.484629,
		43.024513, 35.049110, 25.509285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661346, 35.071381, 26.122829>,  <43.272770, 34.489391, 25.848526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661346, 35.071381, 26.122829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324577, 35.236443, 25.983757>,  <43.122517, 35.335480, 25.900314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324577, 35.236443, 25.983757>,  <43.661346, 35.071381, 26.122829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.324577, 35.236443, 25.983757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141406, 0.453088, 0.880179,
		0.520737, 0.790209, -0.323115,
		-0.841925, 0.412651, -0.347680,
		43.071999, 35.360237, 25.879454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690556, 35.638020, 26.471479>,  <43.661346, 35.071381, 26.122829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690556, 35.638020, 26.471479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.320068, 35.662838, 26.322735>,  <43.097778, 35.677727, 26.233488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.320068, 35.662838, 26.322735>,  <43.690556, 35.638020, 26.471479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.320068, 35.662838, 26.322735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326272, 0.362254, 0.873109,
		0.188879, 0.930012, -0.315281,
		-0.926213, 0.062044, -0.371859,
		43.042206, 35.681450, 26.211178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.467911, 36.119682, 26.827503>,  <43.690556, 35.638020, 26.471479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.467911, 36.119682, 26.827503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.120369, 35.945946, 26.732473>,  <42.911842, 35.841705, 26.675455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.120369, 35.945946, 26.732473>,  <43.467911, 36.119682, 26.827503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.120369, 35.945946, 26.732473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454441, 0.509338, 0.730793,
		-0.196404, 0.742917, -0.639922,
		-0.868855, -0.434337, -0.237576,
		42.859711, 35.815643, 26.661201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835667, 36.630096, 26.731386>,  <43.467911, 36.119682, 26.827503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835667, 36.630096, 26.731386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695915, 36.266266, 26.821362>,  <42.612064, 36.047966, 26.875347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695915, 36.266266, 26.821362>,  <42.835667, 36.630096, 26.731386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695915, 36.266266, 26.821362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539370, 0.391539, 0.745505,
		-0.766169, 0.139138, -0.627396,
		-0.349378, -0.909581, 0.224939,
		42.591103, 35.993393, 26.888844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.082436, 36.682327, 26.883312>,  <42.835667, 36.630096, 26.731386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.082436, 36.682327, 26.883312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173763, 36.331844, 27.053080>,  <42.228561, 36.121555, 27.154940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173763, 36.331844, 27.053080>,  <42.082436, 36.682327, 26.883312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173763, 36.331844, 27.053080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567522, 0.234427, 0.789280,
		-0.791067, -0.421077, -0.443742,
		0.228323, -0.876207, 0.424418,
		42.242260, 36.068981, 27.180405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.476501, 36.527107, 27.209293>,  <42.082436, 36.682327, 26.883312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.476501, 36.527107, 27.209293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731743, 36.275314, 27.386642>,  <41.884888, 36.124237, 27.493052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731743, 36.275314, 27.386642>,  <41.476501, 36.527107, 27.209293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731743, 36.275314, 27.386642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513494, 0.081162, 0.854246,
		-0.573718, -0.772764, -0.271446,
		0.638100, -0.629482, 0.443374,
		41.923172, 36.086472, 27.519655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109127, 36.054123, 27.579527>,  <41.476501, 36.527107, 27.209293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109127, 36.054123, 27.579527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469707, 36.037689, 27.751900>,  <41.686054, 36.027828, 27.855324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.469707, 36.037689, 27.751900>,  <41.109127, 36.054123, 27.579527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469707, 36.037689, 27.751900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418677, 0.170217, 0.892040,
		-0.110003, -0.984550, 0.136240,
		0.901448, -0.041087, 0.430933,
		41.740143, 36.025364, 27.881180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066700, 35.660534, 28.224478>,  <41.109127, 36.054123, 27.579527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066700, 35.660534, 28.224478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382603, 35.901070, 28.272924>,  <41.572144, 36.045391, 28.301992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382603, 35.901070, 28.272924>,  <41.066700, 35.660534, 28.224478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382603, 35.901070, 28.272924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329700, 0.249626, 0.910486,
		0.517276, -0.758998, 0.395407,
		0.789761, 0.601338, 0.121116,
		41.619530, 36.081470, 28.309259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245609, 35.518211, 28.918140>,  <41.066700, 35.660534, 28.224478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245609, 35.518211, 28.918140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411530, 35.874382, 28.843218>,  <41.511082, 36.088085, 28.798264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411530, 35.874382, 28.843218>,  <41.245609, 35.518211, 28.918140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411530, 35.874382, 28.843218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387664, 0.359176, 0.848946,
		0.823198, -0.279534, 0.494172,
		0.414804, 0.890423, -0.187308,
		41.535973, 36.141510, 28.787025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.330807, 35.767994, 29.627844>,  <41.245609, 35.518211, 28.918140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.330807, 35.767994, 29.627844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395531, 36.085918, 29.393890>,  <41.434364, 36.276672, 29.253519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395531, 36.085918, 29.393890>,  <41.330807, 35.767994, 29.627844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395531, 36.085918, 29.393890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257408, 0.606171, 0.752528,
		0.952658, 0.028784, 0.302678,
		0.161814, 0.794813, -0.584883,
		41.444077, 36.324364, 29.218426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904915, 36.216160, 29.935869>,  <41.330807, 35.767994, 29.627844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904915, 36.216160, 29.935869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681503, 36.438206, 29.689327>,  <41.547455, 36.571434, 29.541401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681503, 36.438206, 29.689327>,  <41.904915, 36.216160, 29.935869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681503, 36.438206, 29.689327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216689, 0.619614, 0.754403,
		0.800681, 0.554915, -0.225787,
		-0.558531, 0.555111, -0.616357,
		41.513943, 36.604740, 29.504419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.106548, 36.898586, 30.179941>,  <41.904915, 36.216160, 29.935869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.106548, 36.898586, 30.179941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776730, 36.955746, 29.960964>,  <41.578838, 36.990044, 29.829578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.776730, 36.955746, 29.960964>,  <42.106548, 36.898586, 30.179941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776730, 36.955746, 29.960964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249067, 0.777104, 0.577992,
		0.508016, 0.612934, -0.605170,
		-0.824551, 0.142901, -0.547443,
		41.529366, 36.998615, 29.796732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107021, 37.506386, 30.038509>,  <42.106548, 36.898586, 30.179941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107021, 37.506386, 30.038509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.722908, 37.398857, 30.008595>,  <41.492439, 37.334339, 29.990646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.722908, 37.398857, 30.008595>,  <42.107021, 37.506386, 30.038509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722908, 37.398857, 30.008595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229595, 0.608921, 0.759277,
		-0.158573, 0.746290, -0.646456,
		-0.960281, -0.268824, -0.074786,
		41.434822, 37.318211, 29.986158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616924, 38.077141, 30.044180>,  <42.107021, 37.506386, 30.038509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616924, 38.077141, 30.044180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380444, 37.778423, 30.166016>,  <41.238556, 37.599194, 30.239117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380444, 37.778423, 30.166016>,  <41.616924, 38.077141, 30.044180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380444, 37.778423, 30.166016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282403, 0.545431, 0.789147,
		-0.755463, 0.380531, -0.533359,
		-0.591206, -0.746794, 0.304590,
		41.203083, 37.554386, 30.257393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.091072, 38.510639, 30.324234>,  <41.616924, 38.077141, 30.044180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.091072, 38.510639, 30.324234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062389, 38.136051, 30.461575>,  <41.045181, 37.911301, 30.543980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062389, 38.136051, 30.461575>,  <41.091072, 38.510639, 30.324234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062389, 38.136051, 30.461575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336162, 0.346788, 0.875633,
		-0.939071, -0.052637, -0.339669,
		-0.071702, -0.936466, 0.343353,
		41.040878, 37.855110, 30.564581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411930, 38.402042, 30.579979>,  <41.091072, 38.510639, 30.324234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411930, 38.402042, 30.579979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677765, 38.162430, 30.758635>,  <40.837265, 38.018661, 30.865828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.677765, 38.162430, 30.758635>,  <40.411930, 38.402042, 30.579979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.677765, 38.162430, 30.758635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398621, 0.221345, 0.890004,
		-0.632000, -0.769526, -0.091682,
		0.664588, -0.599029, 0.446639,
		40.877140, 37.982719, 30.892626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119476, 38.273418, 31.183617>,  <40.411930, 38.402042, 30.579979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119476, 38.273418, 31.183617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480534, 38.127678, 31.275249>,  <40.697166, 38.040234, 31.330229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480534, 38.127678, 31.275249>,  <40.119476, 38.273418, 31.183617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480534, 38.127678, 31.275249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153382, 0.224996, 0.962211,
		-0.402130, -0.903671, 0.147206,
		0.902644, -0.364356, 0.229084,
		40.751328, 38.018372, 31.343975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970074, 37.831635, 31.744759>,  <40.119476, 38.273418, 31.183617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970074, 37.831635, 31.744759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362461, 37.909286, 31.743061>,  <40.597893, 37.955879, 31.742043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.362461, 37.909286, 31.743061>,  <39.970074, 37.831635, 31.744759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362461, 37.909286, 31.743061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023221, 0.138982, 0.990023,
		0.192784, -0.971080, 0.140844,
		0.980966, 0.194131, -0.004244,
		40.656750, 37.967525, 31.741789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183525, 37.444855, 32.245117>,  <39.970074, 37.831635, 31.744759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183525, 37.444855, 32.245117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487972, 37.699684, 32.196411>,  <40.670643, 37.852581, 32.167187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487972, 37.699684, 32.196411>,  <40.183525, 37.444855, 32.245117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487972, 37.699684, 32.196411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046927, 0.133153, 0.989984,
		0.646910, -0.759211, 0.071449,
		0.761121, 0.637078, -0.121765,
		40.716309, 37.890808, 32.159882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788151, 37.264595, 32.707146>,  <40.183525, 37.444855, 32.245117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788151, 37.264595, 32.707146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800224, 37.655602, 32.623669>,  <40.807468, 37.890205, 32.573582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800224, 37.655602, 32.623669>,  <40.788151, 37.264595, 32.707146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800224, 37.655602, 32.623669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036356, 0.209722, 0.977085,
		0.998883, -0.021901, 0.041868,
		0.030180, 0.977516, -0.208692,
		40.809277, 37.948856, 32.561062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161896, 37.463879, 33.254940>,  <40.788151, 37.264595, 32.707146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161896, 37.463879, 33.254940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991127, 37.795540, 33.110584>,  <40.888664, 37.994537, 33.023972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991127, 37.795540, 33.110584>,  <41.161896, 37.463879, 33.254940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991127, 37.795540, 33.110584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224576, 0.289373, 0.930499,
		0.875959, 0.478298, 0.062668,
		-0.426922, 0.829152, -0.360893,
		40.863052, 38.044285, 33.002316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378151, 37.962231, 33.693718>,  <41.161896, 37.463879, 33.254940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378151, 37.962231, 33.693718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046612, 38.116379, 33.531479>,  <40.847691, 38.208866, 33.434135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.046612, 38.116379, 33.531479>,  <41.378151, 37.962231, 33.693718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046612, 38.116379, 33.531479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290749, 0.322686, 0.900743,
		0.477998, 0.864503, -0.155410,
		-0.828844, 0.385369, -0.405597,
		40.797958, 38.231991, 33.409801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292564, 38.551422, 34.083508>,  <41.378151, 37.962231, 33.693718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292564, 38.551422, 34.083508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934223, 38.480598, 33.920483>,  <40.719219, 38.438103, 33.822670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934223, 38.480598, 33.920483>,  <41.292564, 38.551422, 34.083508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934223, 38.480598, 33.920483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418685, 0.029096, 0.907665,
		-0.148852, 0.983770, -0.100198,
		-0.895849, -0.177059, -0.407559,
		40.665470, 38.427479, 33.798214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864925, 39.133942, 34.264950>,  <41.292564, 38.551422, 34.083508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864925, 39.133942, 34.264950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621208, 38.823914, 34.197975>,  <40.474979, 38.637897, 34.157791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.621208, 38.823914, 34.197975>,  <40.864925, 39.133942, 34.264950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621208, 38.823914, 34.197975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493483, 0.205353, 0.845165,
		-0.620678, 0.597577, -0.507603,
		-0.609289, -0.775069, -0.167437,
		40.438423, 38.591393, 34.147743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185215, 39.364155, 34.489094>,  <40.864925, 39.133942, 34.264950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185215, 39.364155, 34.489094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153519, 38.965420, 34.486969>,  <40.134502, 38.726177, 34.485695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153519, 38.965420, 34.486969>,  <40.185215, 39.364155, 34.489094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153519, 38.965420, 34.486969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457159, 0.031600, 0.888823,
		-0.885848, 0.072859, -0.458219,
		-0.079238, -0.996842, -0.005315,
		40.129745, 38.666367, 34.485374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427555, 39.117981, 34.623375>,  <40.185215, 39.364155, 34.489094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427555, 39.117981, 34.623375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694603, 38.847511, 34.748001>,  <39.854832, 38.685230, 34.822777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.694603, 38.847511, 34.748001>,  <39.427555, 39.117981, 34.623375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694603, 38.847511, 34.748001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467042, -0.054474, 0.882556,
		-0.579785, -0.734729, -0.352168,
		0.667623, -0.676170, 0.311566,
		39.894890, 38.644661, 34.841473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078632, 38.478790, 35.035286>,  <39.427555, 39.117981, 34.623375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078632, 38.478790, 35.035286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466503, 38.500359, 35.130627>,  <39.699226, 38.513302, 35.187832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466503, 38.500359, 35.130627>,  <39.078632, 38.478790, 35.035286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466503, 38.500359, 35.130627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241228, 0.055170, 0.968899,
		0.039094, -0.997020, 0.066505,
		0.969681, 0.053921, 0.238352,
		39.757408, 38.516537, 35.202133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165810, 38.102436, 35.570038>,  <39.078632, 38.478790, 35.035286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165810, 38.102436, 35.570038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503906, 38.311390, 35.615097>,  <39.706764, 38.436764, 35.642132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503906, 38.311390, 35.615097>,  <39.165810, 38.102436, 35.570038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503906, 38.311390, 35.615097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214072, 0.137843, 0.967043,
		0.489640, -0.841495, 0.228337,
		0.845237, 0.522384, 0.112647,
		39.757477, 38.468105, 35.648891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508713, 37.737114, 36.128433>,  <39.165810, 38.102436, 35.570038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508713, 37.737114, 36.128433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651730, 38.110657, 36.125187>,  <39.737541, 38.334782, 36.123241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651730, 38.110657, 36.125187>,  <39.508713, 37.737114, 36.128433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651730, 38.110657, 36.125187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126010, 0.056849, 0.990399,
		0.925356, -0.353088, 0.138002,
		0.357543, 0.933861, -0.008113,
		39.758991, 38.390816, 36.122753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877693, 37.908424, 36.743385>,  <39.508713, 37.737114, 36.128433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877693, 37.908424, 36.743385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743397, 38.258007, 36.602829>,  <39.662819, 38.467758, 36.518497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743397, 38.258007, 36.602829>,  <39.877693, 37.908424, 36.743385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743397, 38.258007, 36.602829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502919, 0.149106, 0.851375,
		0.796463, 0.462557, 0.389471,
		-0.335737, 0.873961, -0.351387,
		39.642677, 38.520195, 36.497414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918194, 38.308899, 37.332458>,  <39.877693, 37.908424, 36.743385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918194, 38.308899, 37.332458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690289, 38.511024, 37.073219>,  <39.553547, 38.632301, 36.917675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690289, 38.511024, 37.073219>,  <39.918194, 38.308899, 37.332458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690289, 38.511024, 37.073219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472095, 0.444258, 0.761421,
		0.672679, 0.739791, -0.014564,
		-0.569763, 0.505316, -0.648095,
		39.519360, 38.662621, 36.878792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944870, 38.939808, 37.601269>,  <39.918194, 38.308899, 37.332458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944870, 38.939808, 37.601269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606552, 38.943092, 37.387890>,  <39.403561, 38.945065, 37.259861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606552, 38.943092, 37.387890>,  <39.944870, 38.939808, 37.601269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606552, 38.943092, 37.387890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520181, 0.209453, 0.827974,
		0.118532, 0.977784, -0.172881,
		-0.845791, 0.008212, -0.533451,
		39.352814, 38.945557, 37.227856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.497028, 39.363312, 37.934090>,  <39.944870, 38.939808, 37.601269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.497028, 39.363312, 37.934090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247044, 39.154190, 37.702190>,  <39.097054, 39.028717, 37.563053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247044, 39.154190, 37.702190>,  <39.497028, 39.363312, 37.934090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247044, 39.154190, 37.702190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718768, 0.095561, 0.688651,
		-0.304627, 0.847081, -0.435495,
		-0.624959, -0.522802, -0.579745,
		39.059555, 38.997349, 37.528267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983444, 39.851311, 37.683762>,  <39.497028, 39.363312, 37.934090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983444, 39.851311, 37.683762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888271, 39.470505, 37.760765>,  <38.831165, 39.242023, 37.806965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888271, 39.470505, 37.760765>,  <38.983444, 39.851311, 37.683762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888271, 39.470505, 37.760765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626344, 0.301873, 0.718725,
		-0.742348, 0.050435, -0.668114,
		-0.237935, -0.952013, 0.192505,
		38.816891, 39.184902, 37.818516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226646, 39.837551, 37.637146>,  <38.983444, 39.851311, 37.683762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226646, 39.837551, 37.637146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377850, 39.550259, 37.870815>,  <38.468571, 39.377884, 38.011017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.377850, 39.550259, 37.870815>,  <38.226646, 39.837551, 37.637146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377850, 39.550259, 37.870815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584298, 0.304361, 0.752303,
		-0.718124, -0.625708, -0.304608,
		0.378012, -0.718230, 0.584169,
		38.491253, 39.334789, 38.046066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759247, 39.855511, 38.156010>,  <38.226646, 39.837551, 37.637146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759247, 39.855511, 38.156010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941517, 39.524059, 38.286076>,  <38.050880, 39.325188, 38.364117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941517, 39.524059, 38.286076>,  <37.759247, 39.855511, 38.156010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941517, 39.524059, 38.286076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654523, -0.064329, 0.753300,
		-0.603289, -0.556090, -0.571670,
		0.455678, -0.828629, 0.325165,
		38.078220, 39.275471, 38.383625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200737, 39.580837, 38.397125>,  <37.759247, 39.855511, 38.156010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200737, 39.580837, 38.397125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508453, 39.367607, 38.537991>,  <37.693085, 39.239670, 38.622509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508453, 39.367607, 38.537991>,  <37.200737, 39.580837, 38.397125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508453, 39.367607, 38.537991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436832, -0.036635, 0.898797,
		-0.466222, -0.845276, -0.261046,
		0.769295, -0.533072, 0.352164,
		37.739243, 39.207687, 38.643639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990780, 38.987587, 38.773819>,  <37.200737, 39.580837, 38.397125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990780, 38.987587, 38.773819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315456, 39.139935, 38.950951>,  <37.510262, 39.231342, 39.057228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.315456, 39.139935, 38.950951>,  <36.990780, 38.987587, 38.773819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315456, 39.139935, 38.950951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453680, -0.066391, 0.888688,
		0.367872, -0.922243, 0.118903,
		0.811693, 0.380867, 0.442827,
		37.558964, 39.254192, 39.083797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911152, 38.644138, 39.327343>,  <36.990780, 38.987587, 38.773819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911152, 38.644138, 39.327343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142426, 38.963543, 39.394386>,  <37.281189, 39.155186, 39.434612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.142426, 38.963543, 39.394386>,  <36.911152, 38.644138, 39.327343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142426, 38.963543, 39.394386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382446, 0.083775, 0.920172,
		0.720724, -0.596126, 0.353823,
		0.578180, 0.798508, 0.167607,
		37.315880, 39.203094, 39.444668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159199, 38.509636, 39.998989>,  <36.911152, 38.644138, 39.327343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159199, 38.509636, 39.998989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171589, 38.903564, 39.930668>,  <37.179024, 39.139919, 39.889675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171589, 38.903564, 39.930668>,  <37.159199, 38.509636, 39.998989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171589, 38.903564, 39.930668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476736, 0.164753, 0.863470,
		0.878501, 0.054684, 0.474601,
		0.030974, 0.984818, -0.170806,
		37.180882, 39.199009, 39.879425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255672, 38.887516, 40.691685>,  <37.159199, 38.509636, 39.998989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255672, 38.887516, 40.691685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082420, 39.159786, 40.455357>,  <36.978470, 39.323151, 40.313560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.082420, 39.159786, 40.455357>,  <37.255672, 38.887516, 40.691685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082420, 39.159786, 40.455357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575626, 0.295515, 0.762447,
		0.693580, 0.670332, 0.263820,
		-0.433130, 0.680680, -0.590824,
		36.952480, 39.363991, 40.278111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165279, 39.466518, 41.102459>,  <37.255672, 38.887516, 40.691685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165279, 39.466518, 41.102459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904198, 39.500259, 40.801300>,  <36.747547, 39.520504, 40.620605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904198, 39.500259, 40.801300>,  <37.165279, 39.466518, 41.102459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904198, 39.500259, 40.801300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710404, 0.277168, 0.646919,
		0.263250, 0.957112, -0.120984,
		-0.652706, 0.084354, -0.752900,
		36.708385, 39.525566, 40.575432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770107, 40.051647, 41.321838>,  <37.165279, 39.466518, 41.102459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770107, 40.051647, 41.321838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563587, 39.846703, 41.047344>,  <36.439674, 39.723736, 40.882648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563587, 39.846703, 41.047344>,  <36.770107, 40.051647, 41.321838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563587, 39.846703, 41.047344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854832, 0.259753, 0.449213,
		-0.051907, 0.818545, -0.572093,
		-0.516303, -0.512360, -0.686235,
		36.408695, 39.692993, 40.841473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181862, 40.459778, 41.162331>,  <36.770107, 40.051647, 41.321838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181862, 40.459778, 41.162331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074558, 40.092186, 41.046730>,  <36.010178, 39.871632, 40.977367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.074558, 40.092186, 41.046730>,  <36.181862, 40.459778, 41.162331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074558, 40.092186, 41.046730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896560, 0.128401, 0.423902,
		-0.352447, 0.372824, -0.858361,
		-0.268256, -0.918975, -0.289005,
		35.994080, 39.816494, 40.960030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538795, 40.583534, 40.873711>,  <36.181862, 40.459778, 41.162331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538795, 40.583534, 40.873711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602650, 40.218758, 41.024910>,  <35.640961, 39.999893, 41.115631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602650, 40.218758, 41.024910>,  <35.538795, 40.583534, 40.873711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602650, 40.218758, 41.024910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811537, 0.096789, 0.576229,
		-0.562072, -0.398750, -0.724620,
		0.159636, -0.911938, 0.378002,
		35.650539, 39.945175, 41.138309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330921, 39.822639, 40.726326>,  <35.538795, 40.583534, 40.873711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330921, 39.822639, 40.726326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949226, 39.754692, 40.627876>,  <34.720211, 39.713924, 40.568806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949226, 39.754692, 40.627876>,  <35.330921, 39.822639, 40.726326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949226, 39.754692, 40.627876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161074, -0.401481, 0.901592,
		-0.251961, 0.899977, 0.355748,
		-0.954238, -0.169864, -0.246121,
		34.662956, 39.703732, 40.554039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941811, 40.267830, 41.099930>,  <35.330921, 39.822639, 40.726326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941811, 40.267830, 41.099930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760983, 39.932827, 40.977150>,  <34.652485, 39.731827, 40.903481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760983, 39.932827, 40.977150>,  <34.941811, 40.267830, 41.099930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760983, 39.932827, 40.977150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084853, -0.302184, 0.949465,
		-0.887936, 0.455273, 0.065545,
		-0.452072, -0.837503, -0.306952,
		34.625362, 39.681576, 40.885063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965340, 40.332752, 41.784466>,  <34.941811, 40.267830, 41.099930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965340, 40.332752, 41.784466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862476, 39.947784, 41.819370>,  <34.800758, 39.716805, 41.840313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862476, 39.947784, 41.819370>,  <34.965340, 40.332752, 41.784466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862476, 39.947784, 41.819370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810236, -0.263948, -0.523307,
		0.526674, -0.063869, 0.847664,
		-0.257162, -0.962420, 0.087266,
		34.785328, 39.659058, 41.845551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478710, 39.865627, 42.175976>,  <34.965340, 40.332752, 41.784466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478710, 39.865627, 42.175976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280815, 39.655373, 41.899155>,  <35.162079, 39.529221, 41.733063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280815, 39.655373, 41.899155>,  <35.478710, 39.865627, 42.175976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280815, 39.655373, 41.899155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834615, -0.065476, -0.546927,
		0.242173, -0.848185, 0.471099,
		-0.494741, -0.525638, -0.692052,
		35.132393, 39.497681, 41.691540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835857, 39.121254, 42.003731>,  <35.478710, 39.865627, 42.175976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835857, 39.121254, 42.003731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596813, 39.249943, 41.709969>,  <35.453384, 39.327156, 41.533710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596813, 39.249943, 41.709969>,  <35.835857, 39.121254, 42.003731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596813, 39.249943, 41.709969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771566, -0.018336, -0.635885,
		-0.218044, -0.946657, -0.237271,
		-0.597615, 0.321721, -0.734406,
		35.417530, 39.346458, 41.489647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848320, 38.780037, 41.360626>,  <35.835857, 39.121254, 42.003731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848320, 38.780037, 41.360626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712406, 39.132607, 41.229397>,  <35.630859, 39.344151, 41.150658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712406, 39.132607, 41.229397>,  <35.848320, 38.780037, 41.360626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712406, 39.132607, 41.229397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568802, -0.085214, -0.818048,
		-0.749007, -0.464568, -0.472403,
		-0.339784, 0.881428, -0.328073,
		35.610470, 39.397034, 41.130974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609734, 38.688431, 40.583672>,  <35.848320, 38.780037, 41.360626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609734, 38.688431, 40.583672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690765, 39.070553, 40.669796>,  <35.739384, 39.299824, 40.721470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690765, 39.070553, 40.669796>,  <35.609734, 38.688431, 40.583672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690765, 39.070553, 40.669796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649569, 0.033447, -0.759567,
		-0.732817, 0.293733, -0.613758,
		0.202582, 0.955302, 0.215311,
		35.751541, 39.357143, 40.734390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612247, 39.106712, 39.967354>,  <35.609734, 38.688431, 40.583672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612247, 39.106712, 39.967354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843491, 39.286869, 40.239510>,  <35.982235, 39.394962, 40.402805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843491, 39.286869, 40.239510>,  <35.612247, 39.106712, 39.967354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843491, 39.286869, 40.239510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711760, 0.129381, -0.690405,
		-0.398984, 0.883405, -0.245776,
		0.578109, 0.450395, 0.680393,
		36.016922, 39.421986, 40.443626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869347, 39.681274, 39.655560>,  <35.612247, 39.106712, 39.967354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869347, 39.681274, 39.655560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135563, 39.598358, 39.942360>,  <36.295292, 39.548607, 40.114441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135563, 39.598358, 39.942360>,  <35.869347, 39.681274, 39.655560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135563, 39.598358, 39.942360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745747, 0.223723, -0.627543,
		-0.030327, 0.952354, 0.303482,
		0.665539, -0.207289, 0.717000,
		36.335224, 39.536171, 40.157459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400005, 40.313976, 39.635986>,  <35.869347, 39.681274, 39.655560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400005, 40.313976, 39.635986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581234, 40.004051, 39.812344>,  <36.689972, 39.818096, 39.918156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581234, 40.004051, 39.812344>,  <36.400005, 40.313976, 39.635986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581234, 40.004051, 39.812344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827526, 0.181605, -0.531244,
		0.331549, 0.605540, 0.723462,
		0.453073, -0.774817, 0.440889,
		36.717155, 39.771606, 39.944611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047981, 40.481319, 39.778385>,  <36.400005, 40.313976, 39.635986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047981, 40.481319, 39.778385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080593, 40.082729, 39.770531>,  <37.100163, 39.843575, 39.765820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080593, 40.082729, 39.770531>,  <37.047981, 40.481319, 39.778385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080593, 40.082729, 39.770531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787755, 0.076497, -0.611220,
		0.610569, 0.034369, 0.791217,
		0.081533, -0.996477, -0.019633,
		37.105053, 39.783787, 39.764641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740906, 40.440277, 39.581829>,  <37.047981, 40.481319, 39.778385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740906, 40.440277, 39.581829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622120, 40.059723, 39.549137>,  <37.550850, 39.831390, 39.529522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622120, 40.059723, 39.549137>,  <37.740906, 40.440277, 39.581829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622120, 40.059723, 39.549137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727432, -0.169948, -0.664801,
		0.618590, -0.256879, 0.742536,
		-0.296966, -0.951384, -0.081734,
		37.533031, 39.774307, 39.524616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395828, 40.058910, 39.593037>,  <37.740906, 40.440277, 39.581829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395828, 40.058910, 39.593037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125069, 39.826031, 39.412880>,  <37.962612, 39.686302, 39.304787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125069, 39.826031, 39.412880>,  <38.395828, 40.058910, 39.593037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125069, 39.826031, 39.412880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615800, -0.112714, -0.779799,
		0.403234, -0.805195, 0.434814,
		-0.676899, -0.582200, -0.450389,
		37.921997, 39.651371, 39.277763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790695, 39.534058, 39.313118>,  <38.395828, 40.058910, 39.593037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790695, 39.534058, 39.313118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450634, 39.497250, 39.105747>,  <38.246597, 39.475166, 38.981323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450634, 39.497250, 39.105747>,  <38.790695, 39.534058, 39.313118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450634, 39.497250, 39.105747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523636, -0.250831, -0.814180,
		-0.055117, -0.963647, 0.261430,
		-0.850157, -0.092019, -0.518426,
		38.195587, 39.469643, 38.950218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044701, 39.016624, 39.083153>,  <38.790695, 39.534058, 39.313118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044701, 39.016624, 39.083153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711231, 39.042770, 38.863800>,  <38.511150, 39.058460, 38.732189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711231, 39.042770, 38.863800>,  <39.044701, 39.016624, 39.083153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711231, 39.042770, 38.863800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479573, -0.406732, -0.777547,
		-0.273871, -0.911206, 0.307732,
		-0.833670, 0.065367, -0.548381,
		38.461132, 39.062382, 38.699287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873245, 38.321743, 38.779293>,  <39.044701, 39.016624, 39.083153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873245, 38.321743, 38.779293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761841, 38.638660, 38.562149>,  <38.694996, 38.828812, 38.431862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761841, 38.638660, 38.562149>,  <38.873245, 38.321743, 38.779293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761841, 38.638660, 38.562149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423281, -0.406116, -0.809878,
		-0.862127, -0.455346, -0.222254,
		-0.278514, 0.792294, -0.542863,
		38.678288, 38.876350, 38.399292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658566, 37.993778, 38.226082>,  <38.873245, 38.321743, 38.779293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658566, 37.993778, 38.226082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705910, 38.380001, 38.133392>,  <38.734318, 38.611732, 38.077778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705910, 38.380001, 38.133392>,  <38.658566, 37.993778, 38.226082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705910, 38.380001, 38.133392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613121, -0.254630, -0.747827,
		-0.781071, -0.053558, -0.622141,
		0.118364, 0.965554, -0.231722,
		38.741417, 38.669666, 38.063877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550362, 38.162384, 37.517639>,  <38.658566, 37.993778, 38.226082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550362, 38.162384, 37.517639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824726, 38.410923, 37.669140>,  <38.989346, 38.560047, 37.760040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.824726, 38.410923, 37.669140>,  <38.550362, 38.162384, 37.517639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824726, 38.410923, 37.669140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635370, -0.257660, -0.727954,
		-0.354721, 0.739962, -0.571516,
		0.685915, 0.621344, 0.378752,
		39.030502, 38.597324, 37.782764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302208, 38.210140, 36.869846>,  <38.550362, 38.162384, 37.517639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302208, 38.210140, 36.869846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513775, 38.482796, 37.072079>,  <38.640717, 38.646389, 37.193420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513775, 38.482796, 37.072079>,  <38.302208, 38.210140, 36.869846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513775, 38.482796, 37.072079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402218, 0.323241, -0.856584,
		-0.747307, 0.656416, -0.103201,
		0.528916, 0.681641, 0.505582,
		38.672451, 38.687286, 37.223755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305527, 38.731586, 36.457264>,  <38.302208, 38.210140, 36.869846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305527, 38.731586, 36.457264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623135, 38.783184, 36.694881>,  <38.813698, 38.814140, 36.837452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623135, 38.783184, 36.694881>,  <38.305527, 38.731586, 36.457264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623135, 38.783184, 36.694881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594286, 0.040879, -0.803214,
		-0.127890, 0.990803, -0.044198,
		0.794020, 0.128990, 0.594048,
		38.861340, 38.821880, 36.873096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754791, 39.356071, 36.203861>,  <38.305527, 38.731586, 36.457264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754791, 39.356071, 36.203861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009518, 39.136036, 36.419960>,  <39.162354, 39.004013, 36.549622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.009518, 39.136036, 36.419960>,  <38.754791, 39.356071, 36.203861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009518, 39.136036, 36.419960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637398, -0.018645, -0.770309,
		0.433812, 0.834897, 0.338753,
		0.636813, -0.550090, 0.540250,
		39.200562, 38.971008, 36.582035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445427, 39.758915, 36.072994>,  <38.754791, 39.356071, 36.203861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445427, 39.758915, 36.072994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497204, 39.380684, 36.192413>,  <39.528271, 39.153748, 36.264065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.497204, 39.380684, 36.192413>,  <39.445427, 39.758915, 36.072994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497204, 39.380684, 36.192413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665872, -0.140211, -0.732773,
		0.734752, 0.293647, 0.611483,
		0.129440, -0.945575, 0.298552,
		39.536037, 39.097012, 36.281979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195457, 39.531231, 36.222363>,  <39.445427, 39.758915, 36.072994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195457, 39.531231, 36.222363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002163, 39.193974, 36.128056>,  <39.886185, 38.991619, 36.071472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002163, 39.193974, 36.128056>,  <40.195457, 39.531231, 36.222363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002163, 39.193974, 36.128056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655407, -0.169854, -0.735929,
		0.580449, -0.510152, 0.634684,
		-0.483239, -0.843146, -0.235765,
		39.857193, 38.941029, 36.057327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848339, 39.111809, 35.939968>,  <40.195457, 39.531231, 36.222363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848339, 39.111809, 35.939968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520378, 38.907593, 35.836346>,  <40.323601, 38.785065, 35.774174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520378, 38.907593, 35.836346>,  <40.848339, 39.111809, 35.939968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520378, 38.907593, 35.836346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360803, -0.109466, -0.926196,
		0.444500, -0.852859, 0.273955,
		-0.819903, -0.510538, -0.259057,
		40.274406, 38.754433, 35.758629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993847, 38.402599, 35.636284>,  <40.848339, 39.111809, 35.939968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993847, 38.402599, 35.636284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629051, 38.459934, 35.482540>,  <40.410175, 38.494335, 35.390293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629051, 38.459934, 35.482540>,  <40.993847, 38.402599, 35.636284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629051, 38.459934, 35.482540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325463, -0.317502, -0.890655,
		-0.249697, -0.937362, 0.242908,
		-0.911990, 0.143336, -0.384356,
		40.355453, 38.502937, 35.367233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947746, 37.965679, 35.169556>,  <40.993847, 38.402599, 35.636284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947746, 37.965679, 35.169556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617348, 38.157799, 35.051540>,  <40.419109, 38.273071, 34.980732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.617348, 38.157799, 35.051540>,  <40.947746, 37.965679, 35.169556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617348, 38.157799, 35.051540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178311, -0.273888, -0.945088,
		-0.534734, -0.833244, 0.140587,
		-0.825994, 0.480302, -0.295034,
		40.369549, 38.301888, 34.963032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523720, 37.439095, 34.735893>,  <40.947746, 37.965679, 35.169556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523720, 37.439095, 34.735893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431858, 37.823120, 34.671978>,  <40.376740, 38.053535, 34.633629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431858, 37.823120, 34.671978>,  <40.523720, 37.439095, 34.735893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431858, 37.823120, 34.671978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138047, -0.130389, -0.981805,
		-0.963431, -0.247539, -0.102589,
		-0.229658, 0.960064, -0.159793,
		40.362961, 38.111141, 34.624039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789665, 37.301105, 35.365406>,  <40.523720, 37.439095, 34.735893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789665, 37.301105, 35.365406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125439, 37.267220, 35.580135>,  <41.326900, 37.246887, 35.708973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125439, 37.267220, 35.580135>,  <40.789665, 37.301105, 35.365406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125439, 37.267220, 35.580135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112142, -0.939516, -0.323625,
		0.531770, 0.331861, -0.779159,
		0.839431, -0.084718, 0.536823,
		41.377270, 37.241806, 35.741180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023441, 36.640579, 35.121235>,  <40.789665, 37.301105, 35.365406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023441, 36.640579, 35.121235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301010, 36.716640, 35.399033>,  <41.467552, 36.762276, 35.565712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.301010, 36.716640, 35.399033>,  <41.023441, 36.640579, 35.121235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.301010, 36.716640, 35.399033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358072, -0.927915, -0.103717,
		0.624708, 0.320649, -0.711985,
		0.693919, 0.190150, 0.694492,
		41.509186, 36.773685, 35.607380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821030, 36.719891, 34.948605>,  <41.023441, 36.640579, 35.121235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821030, 36.719891, 34.948605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.688137, 36.544464, 35.282619>,  <41.608402, 36.439209, 35.483028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.688137, 36.544464, 35.282619>,  <41.821030, 36.719891, 34.948605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.688137, 36.544464, 35.282619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304340, -0.887814, -0.345200,
		0.892748, 0.139448, 0.428433,
		-0.332232, -0.438566, 0.835034,
		41.588467, 36.412895, 35.533131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333557, 36.198540, 35.322662>,  <41.821030, 36.719891, 34.948605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333557, 36.198540, 35.322662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947342, 36.110081, 35.377544>,  <41.715611, 36.057007, 35.410473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947342, 36.110081, 35.377544>,  <42.333557, 36.198540, 35.322662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947342, 36.110081, 35.377544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163755, -0.926002, -0.340153,
		0.202278, -0.305963, 0.930307,
		-0.965540, -0.221148, 0.137207,
		41.657681, 36.043736, 35.418705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.920803, 36.586521, 35.792408>,  <42.333557, 36.198540, 35.322662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.920803, 36.586521, 35.792408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.074306, 36.867374, 35.552498>,  <43.166409, 37.035889, 35.408550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.074306, 36.867374, 35.552498>,  <42.920803, 36.586521, 35.792408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.074306, 36.867374, 35.552498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905661, -0.159356, 0.392917,
		0.180303, -0.693980, -0.697053,
		0.383756, 0.702138, -0.599778,
		43.189434, 37.078014, 35.372566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.560768, 36.370987, 35.400166>,  <42.920803, 36.586521, 35.792408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.560768, 36.370987, 35.400166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.546268, 36.765511, 35.464504>,  <43.537567, 37.002224, 35.503109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.546268, 36.765511, 35.464504>,  <43.560768, 36.370987, 35.400166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.546268, 36.765511, 35.464504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964024, -0.007896, 0.265698,
		0.263331, 0.164695, -0.950543,
		-0.036254, 0.986313, 0.160849,
		43.535393, 37.061405, 35.512760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997250, 36.758862, 34.986328>,  <43.560768, 36.370987, 35.400166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997250, 36.758862, 34.986328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956013, 36.947460, 35.336658>,  <43.931271, 37.060619, 35.546856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956013, 36.947460, 35.336658>,  <43.997250, 36.758862, 34.986328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.956013, 36.947460, 35.336658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994335, 0.025912, 0.103089,
		0.025912, 0.881489, -0.471492,
		-0.103089, 0.471492, 0.875824,
		43.925087, 37.088909, 35.599407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.528847, 37.297340, 34.913132>,  <43.997250, 36.758862, 34.986328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.528847, 37.297340, 34.913132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.425819, 37.219467, 35.291710>,  <44.364002, 37.172745, 35.518856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.425819, 37.219467, 35.291710>,  <44.528847, 37.297340, 34.913132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.425819, 37.219467, 35.291710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964228, 0.011719, 0.264816,
		-0.062646, 0.980797, 0.184698,
		-0.257566, -0.194680, 0.946445,
		44.348549, 37.161064, 35.575645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.823708, 37.778511, 35.481705>,  <44.528847, 37.297340, 34.913132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.823708, 37.778511, 35.481705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780548, 37.407837, 35.625713>,  <44.754654, 37.185432, 35.712120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780548, 37.407837, 35.625713>,  <44.823708, 37.778511, 35.481705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780548, 37.407837, 35.625713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993720, -0.089735, 0.066839,
		-0.029632, 0.364975, 0.930546,
		-0.107897, -0.926683, 0.360024,
		44.748180, 37.129833, 35.733719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.135635, 37.793522, 36.163109>,  <44.823708, 37.778511, 35.481705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.135635, 37.793522, 36.163109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.139542, 37.436665, 35.982449>,  <45.141884, 37.222549, 35.874054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.139542, 37.436665, 35.982449>,  <45.135635, 37.793522, 36.163109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.139542, 37.436665, 35.982449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983293, -0.073536, 0.166513,
		-0.181766, -0.445731, 0.876518,
		0.009765, -0.892141, -0.451651,
		45.142471, 37.169022, 35.846954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.692997, 37.527493, 35.784935>,  <45.135635, 37.793522, 36.163109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.692997, 37.527493, 35.784935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.887623, 37.876408, 35.765495>,  <46.004398, 38.085758, 35.753830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.887623, 37.876408, 35.765495>,  <45.692997, 37.527493, 35.784935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.887623, 37.876408, 35.765495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482675, -0.314774, -0.817277,
		-0.728204, 0.374198, -0.574191,
		0.486564, 0.872292, -0.048603,
		46.033592, 38.138096, 35.750916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.694489, 37.707985, 35.062336>,  <45.692997, 37.527493, 35.784935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.694489, 37.707985, 35.062336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.000088, 37.868214, 35.264660>,  <46.183449, 37.964352, 35.386055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.000088, 37.868214, 35.264660>,  <45.694489, 37.707985, 35.062336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.000088, 37.868214, 35.264660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624560, -0.262367, -0.735588,
		-0.161950, 0.877898, -0.450631,
		0.764001, 0.400574, 0.505809,
		46.229286, 37.988384, 35.416401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.120113, 38.174339, 34.628918>,  <45.694489, 37.707985, 35.062336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.120113, 38.174339, 34.628918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.349651, 38.003395, 34.908363>,  <46.487373, 37.900829, 35.076031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.349651, 38.003395, 34.908363>,  <46.120113, 38.174339, 34.628918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.349651, 38.003395, 34.908363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609362, -0.347122, -0.712871,
		0.547161, 0.834785, 0.061227,
		0.573841, -0.427365, 0.698617,
		46.521805, 37.875187, 35.117950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.774265, 38.250877, 34.412289>,  <46.120113, 38.174339, 34.628918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.774265, 38.250877, 34.412289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.769485, 37.934952, 34.657578>,  <46.766617, 37.745396, 34.804752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.769485, 37.934952, 34.657578>,  <46.774265, 38.250877, 34.412289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.769485, 37.934952, 34.657578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559173, -0.513692, -0.650728,
		0.828965, 0.335125, 0.447781,
		-0.011947, -0.789818, 0.613225,
		46.765900, 37.698006, 34.841545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.404907, 38.076221, 34.303661>,  <46.774265, 38.250877, 34.412289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.404907, 38.076221, 34.303661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.211002, 37.763531, 34.460590>,  <47.094658, 37.575916, 34.554749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.211002, 37.763531, 34.460590>,  <47.404907, 38.076221, 34.303661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.211002, 37.763531, 34.460590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616243, -0.623568, -0.481048,
		0.620684, 0.008569, 0.784014,
		-0.484764, -0.781722, 0.392319,
		47.065575, 37.529015, 34.578285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.851395, 37.482983, 34.679256>,  <47.404907, 38.076221, 34.303661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.851395, 37.482983, 34.679256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.535809, 37.300934, 34.514141>,  <47.346458, 37.191704, 34.415070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.535809, 37.300934, 34.514141>,  <47.851395, 37.482983, 34.679256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.535809, 37.300934, 34.514141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582699, -0.767335, -0.267693,
		-0.194918, -0.451735, 0.870599,
		-0.788967, -0.455119, -0.412793,
		47.299118, 37.164398, 34.390305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.569645, 36.928612, 34.867729>,  <47.851395, 37.482983, 34.679256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.569645, 36.928612, 34.867729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.602821, 37.031116, 35.252945>,  <47.622726, 37.092621, 35.484074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.602821, 37.031116, 35.252945>,  <47.569645, 36.928612, 34.867729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.602821, 37.031116, 35.252945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663998, -0.706403, 0.245157,
		0.743120, -0.659791, 0.111568,
		0.082940, 0.256262, 0.963043,
		47.627705, 37.107994, 35.541859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.914860, 36.397179, 35.253296>,  <47.569645, 36.928612, 34.867729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.914860, 36.397179, 35.253296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.635490, 36.597172, 35.458126>,  <47.467869, 36.717167, 35.581024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.635490, 36.597172, 35.458126>,  <47.914860, 36.397179, 35.253296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.635490, 36.597172, 35.458126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535031, -0.839980, 0.090414,
		0.475339, -0.210829, 0.854169,
		-0.698423, 0.499984, 0.512076,
		47.425964, 36.747166, 35.611748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.707245, 35.885929, 35.715267>,  <47.914860, 36.397179, 35.253296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.707245, 35.885929, 35.715267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.427395, 36.170795, 35.692139>,  <47.259483, 36.341717, 35.678261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.427395, 36.170795, 35.692139>,  <47.707245, 35.885929, 35.715267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.427395, 36.170795, 35.692139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700208, -0.699483, -0.142943,
		-0.142246, -0.059517, 0.988040,
		-0.699625, 0.712167, -0.057824,
		47.217506, 36.384445, 35.674789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.836143, 35.158466, 35.418941>,  <47.707245, 35.885929, 35.715267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.836143, 35.158466, 35.418941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.680977, 34.834553, 35.242859>,  <47.587879, 34.640205, 35.137211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.680977, 34.834553, 35.242859>,  <47.836143, 35.158466, 35.418941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.680977, 34.834553, 35.242859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827111, -0.516584, 0.221426,
		-0.406708, -0.278201, 0.870168,
		-0.387913, -0.809781, -0.440202,
		47.564602, 34.591618, 35.110798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.060730, 31.411360, 26.580860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.716015, 31.576584, 26.463074>,  <37.509186, 31.675718, 26.392403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.716015, 31.576584, 26.463074>,  <38.060730, 31.411360, 26.580860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716015, 31.576584, 26.463074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193339, 0.269222, 0.943472,
		0.468986, 0.870001, -0.152151,
		-0.861784, 0.413059, -0.294466,
		37.457481, 31.700502, 26.374733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980503, 32.115345, 26.812685>,  <38.060730, 31.411360, 26.580860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980503, 32.115345, 26.812685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.599018, 32.025032, 26.733225>,  <37.370129, 31.970846, 26.685549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.599018, 32.025032, 26.733225>,  <37.980503, 32.115345, 26.812685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599018, 32.025032, 26.733225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279956, 0.425325, 0.860653,
		-0.109826, 0.876426, -0.468845,
		-0.953710, -0.225778, -0.198649,
		37.312904, 31.957298, 26.673630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580898, 32.702671, 26.947905>,  <37.980503, 32.115345, 26.812685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580898, 32.702671, 26.947905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.305618, 32.412540, 26.954540>,  <37.140450, 32.238461, 26.958521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.305618, 32.412540, 26.954540>,  <37.580898, 32.702671, 26.947905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305618, 32.412540, 26.954540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432784, 0.428765, 0.793006,
		-0.582303, 0.538569, -0.608988,
		-0.688201, -0.725330, 0.016587,
		37.099159, 32.194942, 26.959517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969883, 33.061771, 26.984661>,  <37.580898, 32.702671, 26.947905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969883, 33.061771, 26.984661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.909901, 32.692612, 27.126518>,  <36.873913, 32.471115, 27.211634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.909901, 32.692612, 27.126518>,  <36.969883, 33.061771, 26.984661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909901, 32.692612, 27.126518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406318, 0.384535, 0.828878,
		-0.901343, -0.019804, -0.432653,
		-0.149956, -0.922897, 0.354645,
		36.864914, 32.415741, 27.232912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225452, 33.039040, 27.167688>,  <36.969883, 33.061771, 26.984661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225452, 33.039040, 27.167688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.391094, 32.734516, 27.367260>,  <36.490479, 32.551804, 27.487003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.391094, 32.734516, 27.367260>,  <36.225452, 33.039040, 27.167688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391094, 32.734516, 27.367260> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483228, 0.280638, 0.829297,
		-0.771366, -0.584515, -0.251669,
		0.414109, -0.761304, 0.498928,
		36.515327, 32.506126, 27.516939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640270, 32.617435, 27.531343>,  <36.225452, 33.039040, 27.167688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640270, 32.617435, 27.531343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.976440, 32.549637, 27.737242>,  <36.178143, 32.508957, 27.860781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.976440, 32.549637, 27.737242>,  <35.640270, 32.617435, 27.531343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976440, 32.549637, 27.737242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453856, 0.298930, 0.839438,
		-0.296152, -0.939102, 0.174302,
		0.840422, -0.169493, 0.514745,
		36.228565, 32.498791, 27.891665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418495, 32.551418, 28.232946>,  <35.640270, 32.617435, 27.531343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418495, 32.551418, 28.232946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.811745, 32.599968, 28.287703>,  <36.047695, 32.629097, 28.320557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.811745, 32.599968, 28.287703>,  <35.418495, 32.551418, 28.232946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811745, 32.599968, 28.287703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174380, 0.395384, 0.901811,
		0.055330, -0.910462, 0.409876,
		0.983123, 0.121371, 0.136889,
		36.106682, 32.636379, 28.328770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566853, 32.248695, 28.817423>,  <35.418495, 32.551418, 28.232946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566853, 32.248695, 28.817423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.875778, 32.497456, 28.765612>,  <36.061134, 32.646713, 28.734526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.875778, 32.497456, 28.765612>,  <35.566853, 32.248695, 28.817423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875778, 32.497456, 28.765612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030028, 0.167934, 0.985341,
		0.634536, -0.764878, 0.111022,
		0.772310, 0.621900, -0.129528,
		36.107471, 32.684025, 28.726753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155582, 32.029366, 29.371248>,  <35.566853, 32.248695, 28.817423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155582, 32.029366, 29.371248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.185066, 32.404545, 29.235708>,  <36.202755, 32.629654, 29.154385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.185066, 32.404545, 29.235708>,  <36.155582, 32.029366, 29.371248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185066, 32.404545, 29.235708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014770, 0.338712, 0.940774,
		0.997171, -0.074348, 0.011112,
		0.073709, 0.937948, -0.338852,
		36.207180, 32.685928, 29.134052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701855, 32.295280, 29.735153>,  <36.155582, 32.029366, 29.371248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701855, 32.295280, 29.735153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.489109, 32.602379, 29.592220>,  <36.361462, 32.786636, 29.506460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.489109, 32.602379, 29.592220>,  <36.701855, 32.295280, 29.735153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489109, 32.602379, 29.592220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063560, 0.456967, 0.887210,
		0.844441, 0.449163, -0.291842,
		-0.531864, 0.767746, -0.357332,
		36.329548, 32.832703, 29.485020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070332, 32.824310, 29.901060>,  <36.701855, 32.295280, 29.735153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070332, 32.824310, 29.901060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.748219, 33.035412, 29.792990>,  <36.554951, 33.162071, 29.728148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.748219, 33.035412, 29.792990>,  <37.070332, 32.824310, 29.901060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748219, 33.035412, 29.792990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052752, 0.517663, 0.853957,
		0.590540, 0.673424, -0.444705,
		-0.805282, 0.527755, -0.270176,
		36.506634, 33.193737, 29.711937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245941, 33.570705, 29.959080>,  <37.070332, 32.824310, 29.901060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245941, 33.570705, 29.959080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.848255, 33.533131, 29.979876>,  <36.609642, 33.510586, 29.992353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.848255, 33.533131, 29.979876>,  <37.245941, 33.570705, 29.959080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848255, 33.533131, 29.979876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001994, 0.500311, 0.865843,
		-0.107349, 0.860735, -0.497607,
		-0.994219, -0.093940, 0.051992,
		36.549988, 33.504948, 29.995474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119926, 34.290443, 30.090832>,  <37.245941, 33.570705, 29.959080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119926, 34.290443, 30.090832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.804489, 34.063885, 30.186596>,  <36.615227, 33.927948, 30.244055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.804489, 34.063885, 30.186596>,  <37.119926, 34.290443, 30.090832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804489, 34.063885, 30.186596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153094, 0.557918, 0.815653,
		-0.595556, 0.606564, -0.526682,
		-0.788591, -0.566399, 0.239410,
		36.567913, 33.893967, 30.258419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570793, 34.721085, 30.308184>,  <37.119926, 34.290443, 30.090832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570793, 34.721085, 30.308184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.458027, 34.374527, 30.473051>,  <36.390369, 34.166592, 30.571972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.458027, 34.374527, 30.473051>,  <36.570793, 34.721085, 30.308184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458027, 34.374527, 30.473051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293652, 0.486895, 0.822619,
		-0.913397, 0.110873, -0.391681,
		-0.281913, -0.866395, 0.412170,
		36.373451, 34.114609, 30.596703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940765, 34.789371, 30.544142>,  <36.570793, 34.721085, 30.308184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940765, 34.789371, 30.544142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.068138, 34.476501, 30.758360>,  <36.144562, 34.288780, 30.886890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.068138, 34.476501, 30.758360>,  <35.940765, 34.789371, 30.544142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068138, 34.476501, 30.758360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409626, 0.395945, 0.821848,
		-0.854874, -0.481073, -0.194318,
		0.318430, -0.782174, 0.535543,
		36.163666, 34.241848, 30.919024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604355, 34.894817, 31.093897>,  <35.940765, 34.789371, 30.544142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604355, 34.894817, 31.093897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.864502, 34.630146, 31.243135>,  <36.020592, 34.471344, 31.332678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.864502, 34.630146, 31.243135>,  <35.604355, 34.894817, 31.093897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864502, 34.630146, 31.243135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001963, 0.489697, 0.871891,
		-0.759615, -0.567784, 0.317186,
		0.650370, -0.661678, 0.373096,
		36.059612, 34.431644, 31.355064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366302, 34.586960, 31.635458>,  <35.604355, 34.894817, 31.093897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366302, 34.586960, 31.635458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.761543, 34.550919, 31.685326>,  <35.998688, 34.529293, 31.715246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.761543, 34.550919, 31.685326>,  <35.366302, 34.586960, 31.635458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761543, 34.550919, 31.685326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087135, 0.340008, 0.936377,
		-0.126762, -0.936096, 0.328110,
		0.988098, -0.090108, 0.124667,
		36.057972, 34.523888, 31.722725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587372, 34.323029, 32.366459>,  <35.366302, 34.586960, 31.635458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587372, 34.323029, 32.366459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.888630, 34.535828, 32.211670>,  <36.069386, 34.663506, 32.118797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.888630, 34.535828, 32.211670>,  <35.587372, 34.323029, 32.366459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888630, 34.535828, 32.211670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167470, 0.413810, 0.894827,
		0.636182, -0.738741, 0.222565,
		0.753145, 0.532000, -0.386975,
		36.114574, 34.695427, 32.095577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850681, 34.355461, 32.934032>,  <35.587372, 34.323029, 32.366459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850681, 34.355461, 32.934032> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.052868, 34.614216, 32.705635>,  <36.174179, 34.769470, 32.568596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.052868, 34.614216, 32.705635>,  <35.850681, 34.355461, 32.934032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052868, 34.614216, 32.705635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382484, 0.425206, 0.820308,
		0.773438, -0.633039, -0.032495,
		0.505470, 0.646886, -0.570998,
		36.204510, 34.808281, 32.534336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558876, 34.448193, 33.165550>,  <35.850681, 34.355461, 32.934032>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558876, 34.448193, 33.165550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.489162, 34.785686, 32.962479>,  <36.447334, 34.988182, 32.840637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.489162, 34.785686, 32.962479>,  <36.558876, 34.448193, 33.165550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489162, 34.785686, 32.962479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375553, 0.533555, 0.757813,
		0.910267, -0.058589, -0.409854,
		-0.174280, 0.843734, -0.507680,
		36.436878, 35.038807, 32.810173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197235, 34.900196, 33.204300>,  <36.558876, 34.448193, 33.165550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197235, 34.900196, 33.204300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.901226, 35.152931, 33.112080>,  <36.723621, 35.304573, 33.056747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.901226, 35.152931, 33.112080>,  <37.197235, 34.900196, 33.204300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901226, 35.152931, 33.112080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134623, 0.474986, 0.869635,
		0.658976, 0.612509, -0.436559,
		-0.740018, 0.631839, -0.230547,
		36.679222, 35.342484, 33.042915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472439, 35.561279, 33.333817>,  <37.197235, 34.900196, 33.204300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472439, 35.561279, 33.333817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.075455, 35.609257, 33.343853>,  <36.837265, 35.638042, 33.349873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.075455, 35.609257, 33.343853>,  <37.472439, 35.561279, 33.333817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075455, 35.609257, 33.343853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081647, 0.494586, 0.865285,
		0.091381, 0.860812, -0.500651,
		-0.992463, 0.119947, 0.025087,
		36.777718, 35.645241, 33.351379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914383, 35.673668, 33.876831>,  <37.472439, 35.561279, 33.333817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914383, 35.673668, 33.876831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.299465, 35.732189, 33.967857>,  <38.530514, 35.767303, 34.022472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.299465, 35.732189, 33.967857>,  <37.914383, 35.673668, 33.876831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299465, 35.732189, 33.967857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255405, -0.768900, -0.586141,
		0.089218, 0.622405, -0.777594,
		0.962709, 0.146307, 0.227565,
		38.588280, 35.776081, 34.036125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239697, 35.663441, 33.212318>,  <37.914383, 35.673668, 33.876831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239697, 35.663441, 33.212318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.537590, 35.594234, 33.470139>,  <38.716324, 35.552711, 33.624828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.537590, 35.594234, 33.470139>,  <38.239697, 35.663441, 33.212318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537590, 35.594234, 33.470139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367449, -0.699921, -0.612448,
		0.557096, 0.692946, -0.457678,
		0.744732, -0.173019, 0.644546,
		38.761009, 35.542328, 33.663502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788509, 35.992954, 32.961342>,  <38.239697, 35.663441, 33.212318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788509, 35.992954, 32.961342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.936523, 35.712921, 33.205624>,  <39.025330, 35.544903, 33.352192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.936523, 35.712921, 33.205624>,  <38.788509, 35.992954, 32.961342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936523, 35.712921, 33.205624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329412, -0.515781, -0.790859,
		0.868657, 0.493816, 0.039760,
		0.370032, -0.700082, 0.610706,
		39.047531, 35.502895, 33.388836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382755, 35.778084, 32.576469>,  <38.788509, 35.992954, 32.961342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382755, 35.778084, 32.576469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.324024, 35.498470, 32.856411>,  <39.288784, 35.330704, 33.024376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.324024, 35.498470, 32.856411>,  <39.382755, 35.778084, 32.576469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324024, 35.498470, 32.856411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428478, -0.682643, -0.591951,
		0.891543, 0.212957, 0.399750,
		-0.146826, -0.699034, 0.699853,
		39.279976, 35.288761, 33.066368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012257, 35.386101, 32.584431>,  <39.382755, 35.778084, 32.576469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012257, 35.386101, 32.584431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.754356, 35.136856, 32.761528>,  <39.599617, 34.987309, 32.867786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.754356, 35.136856, 32.761528>,  <40.012257, 35.386101, 32.584431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754356, 35.136856, 32.761528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415181, -0.771798, -0.481615,
		0.641808, -0.126706, 0.756326,
		-0.644754, -0.623116, 0.442740,
		39.560928, 34.949921, 32.894352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437077, 34.901299, 32.760620>,  <40.012257, 35.386101, 32.584431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437077, 34.901299, 32.760620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.071167, 34.739788, 32.755722>,  <39.851620, 34.642883, 32.752781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.071167, 34.739788, 32.755722>,  <40.437077, 34.901299, 32.760620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071167, 34.739788, 32.755722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348356, -0.773136, -0.530009,
		0.204535, -0.489106, 0.847904,
		-0.914775, -0.403777, -0.012249,
		39.796734, 34.618656, 32.752048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527061, 34.123531, 32.746464>,  <40.437077, 34.901299, 32.760620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527061, 34.123531, 32.746464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.158909, 34.212856, 32.618076>,  <39.938015, 34.266453, 32.541046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.158909, 34.212856, 32.618076>,  <40.527061, 34.123531, 32.746464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158909, 34.212856, 32.618076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118624, -0.622705, -0.773413,
		-0.372582, -0.749913, 0.546638,
		-0.920386, 0.223315, -0.320966,
		39.882793, 34.279850, 32.521786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244183, 33.499584, 32.559216>,  <40.527061, 34.123531, 32.746464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244183, 33.499584, 32.559216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.039642, 33.776737, 32.355873>,  <39.916920, 33.943031, 32.233868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.039642, 33.776737, 32.355873>,  <40.244183, 33.499584, 32.559216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039642, 33.776737, 32.355873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059415, -0.561628, -0.825254,
		-0.857317, -0.452196, 0.246019,
		-0.511348, 0.692887, -0.508361,
		39.886238, 33.984604, 32.203365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856098, 33.108276, 32.081406>,  <40.244183, 33.499584, 32.559216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856098, 33.108276, 32.081406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.792645, 33.466084, 31.914234>,  <39.754574, 33.680771, 31.813931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.792645, 33.466084, 31.914234>,  <39.856098, 33.108276, 32.081406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792645, 33.466084, 31.914234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105192, -0.405569, -0.907991,
		-0.981719, -0.187997, -0.029761,
		-0.158630, 0.894523, -0.417931,
		39.745056, 33.734440, 31.788855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297237, 33.009720, 31.554249>,  <39.856098, 33.108276, 32.081406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297237, 33.009720, 31.554249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.499859, 33.341026, 31.458437>,  <39.621433, 33.539810, 31.400949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.499859, 33.341026, 31.458437>,  <39.297237, 33.009720, 31.554249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499859, 33.341026, 31.458437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111506, -0.338410, -0.934369,
		-0.854968, 0.446599, -0.263780,
		0.506554, 0.828268, -0.239531,
		39.651825, 33.589508, 31.386578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943069, 33.329380, 30.989580>,  <39.297237, 33.009720, 31.554249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943069, 33.329380, 30.989580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.306087, 33.494698, 30.959780>,  <39.523899, 33.593887, 30.941898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.306087, 33.494698, 30.959780>,  <38.943069, 33.329380, 30.989580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306087, 33.494698, 30.959780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056235, -0.056209, -0.996834,
		-0.416175, 0.908860, -0.027770,
		0.907544, 0.413296, -0.074502,
		39.578350, 33.618687, 30.937429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946075, 34.032806, 30.637375>,  <38.943069, 33.329380, 30.989580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946075, 34.032806, 30.637375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.322357, 33.899326, 30.612959>,  <39.548126, 33.819237, 30.598310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.322357, 33.899326, 30.612959>,  <38.946075, 34.032806, 30.637375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322357, 33.899326, 30.612959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079167, -0.040987, -0.996018,
		0.329869, 0.941788, -0.064974,
		0.940702, -0.333699, -0.061039,
		39.604568, 33.799217, 30.594646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226181, 34.399704, 30.052898>,  <38.946075, 34.032806, 30.637375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226181, 34.399704, 30.052898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.449913, 34.075954, 30.124510>,  <39.584152, 33.881702, 30.167477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.449913, 34.075954, 30.124510>,  <39.226181, 34.399704, 30.052898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449913, 34.075954, 30.124510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019050, -0.203367, -0.978917,
		0.828723, 0.550952, -0.098331,
		0.559334, -0.809379, 0.179030,
		39.617714, 33.833141, 30.178219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907440, 34.457447, 29.596626>,  <39.226181, 34.399704, 30.052898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907440, 34.457447, 29.596626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.833977, 34.081318, 29.711212>,  <39.789898, 33.855640, 29.779963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.833977, 34.081318, 29.711212>,  <39.907440, 34.457447, 29.596626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833977, 34.081318, 29.711212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043807, -0.298961, -0.953259,
		0.982014, -0.162523, 0.096099,
		-0.183657, -0.940324, 0.286464,
		39.778881, 33.799221, 29.797152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524761, 34.014828, 29.315947>,  <39.907440, 34.457447, 29.596626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524761, 34.014828, 29.315947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.196312, 33.797562, 29.386065>,  <39.999241, 33.667202, 29.428135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.196312, 33.797562, 29.386065>,  <40.524761, 34.014828, 29.315947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196312, 33.797562, 29.386065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004493, -0.300967, -0.953624,
		0.570732, -0.783831, 0.244691,
		-0.821124, -0.543164, 0.175293,
		39.949974, 33.634613, 29.438652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669750, 33.335537, 28.939133>,  <40.524761, 34.014828, 29.315947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669750, 33.335537, 28.939133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.272736, 33.325775, 28.986917>,  <40.034527, 33.319920, 29.015589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.272736, 33.325775, 28.986917>,  <40.669750, 33.335537, 28.939133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272736, 33.325775, 28.986917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084068, -0.572673, -0.815462,
		0.088315, -0.819421, 0.566348,
		-0.992539, -0.024406, 0.119462,
		39.974976, 33.318455, 29.022757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443619, 32.667850, 28.848454>,  <40.669750, 33.335537, 28.939133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443619, 32.667850, 28.848454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.103992, 32.869751, 28.786087>,  <39.900215, 32.990891, 28.748667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.103992, 32.869751, 28.786087>,  <40.443619, 32.667850, 28.848454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103992, 32.869751, 28.786087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187720, -0.564144, -0.804054,
		-0.493802, -0.653430, 0.573749,
		-0.849070, 0.504748, -0.155913,
		39.849270, 33.021175, 28.739313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961693, 32.171165, 28.662209>,  <40.443619, 32.667850, 28.848454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961693, 32.171165, 28.662209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.826633, 32.518166, 28.516090>,  <39.745598, 32.726364, 28.428419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.826633, 32.518166, 28.516090>,  <39.961693, 32.171165, 28.662209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826633, 32.518166, 28.516090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122435, -0.425266, -0.896749,
		-0.933277, -0.258057, 0.249801,
		-0.337644, 0.867500, -0.365295,
		39.725342, 32.778416, 28.406502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.283875, 31.958664, 28.368902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.365181, 32.317101, 28.211065>,  <39.413963, 32.532162, 28.116364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.365181, 32.317101, 28.211065>,  <39.283875, 31.958664, 28.368902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365181, 32.317101, 28.211065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049015, -0.393189, -0.918150,
		-0.977896, 0.205968, -0.036000,
		0.203264, 0.896091, -0.394593,
		39.426159, 32.585926, 28.092688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844872, 32.010014, 27.728952>,  <39.283875, 31.958664, 28.368902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844872, 32.010014, 27.728952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.092442, 32.312923, 27.645552>,  <39.240982, 32.494671, 27.595512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.092442, 32.312923, 27.645552>,  <38.844872, 32.010014, 27.728952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092442, 32.312923, 27.645552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003481, -0.268095, -0.963386,
		-0.785445, 0.595535, -0.168565,
		0.618921, 0.757274, -0.208501,
		39.278118, 32.540104, 27.583002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613777, 32.299568, 27.166653>,  <38.844872, 32.010014, 27.728952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613777, 32.299568, 27.166653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.983452, 32.451202, 27.148043>,  <39.205257, 32.542183, 27.136877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.983452, 32.451202, 27.148043>,  <38.613777, 32.299568, 27.166653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983452, 32.451202, 27.148043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024138, -0.179549, -0.983453,
		-0.381170, 0.907774, -0.175088,
		0.924190, 0.379089, -0.046527,
		39.260708, 32.564930, 27.134085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618473, 32.802341, 26.647585>,  <38.613777, 32.299568, 27.166653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618473, 32.802341, 26.647585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.006416, 32.709888, 26.678442>,  <39.239182, 32.654415, 26.696957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.006416, 32.709888, 26.678442>,  <38.618473, 32.802341, 26.647585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006416, 32.709888, 26.678442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095673, 0.070044, -0.992945,
		0.224098, 0.970398, 0.090046,
		0.969859, -0.231132, 0.077144,
		39.297375, 32.640549, 26.701586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978222, 33.028381, 26.087458>,  <38.618473, 32.802341, 26.647585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978222, 33.028381, 26.087458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.245380, 32.759617, 26.215492>,  <39.405674, 32.598358, 26.292313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.245380, 32.759617, 26.215492>,  <38.978222, 33.028381, 26.087458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245380, 32.759617, 26.215492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296954, -0.153778, -0.942428,
		0.682448, 0.724494, 0.096818,
		0.667895, -0.671908, 0.320087,
		39.445747, 32.558044, 26.311518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569042, 33.188599, 25.706301>,  <38.978222, 33.028381, 26.087458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569042, 33.188599, 25.706301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.658901, 32.818020, 25.827120>,  <39.712814, 32.595673, 25.899612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.658901, 32.818020, 25.827120>,  <39.569042, 33.188599, 25.706301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658901, 32.818020, 25.827120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365454, -0.207246, -0.907465,
		0.903316, 0.314241, 0.292017,
		0.224644, -0.926446, 0.302049,
		39.726295, 32.540085, 25.917734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347191, 33.081699, 25.588066>,  <39.569042, 33.188599, 25.706301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347191, 33.081699, 25.588066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.172707, 32.722919, 25.616926>,  <40.068016, 32.507652, 25.634243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.172707, 32.722919, 25.616926>,  <40.347191, 33.081699, 25.588066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172707, 32.722919, 25.616926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445278, -0.284836, -0.848879,
		0.781951, -0.338163, 0.523639,
		-0.436211, -0.896947, 0.072151,
		40.041843, 32.453835, 25.638571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867649, 32.619965, 25.317860>,  <40.347191, 33.081699, 25.588066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867649, 32.619965, 25.317860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.552601, 32.373924, 25.332325>,  <40.363571, 32.226299, 25.341003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.552601, 32.373924, 25.332325>,  <40.867649, 32.619965, 25.317860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552601, 32.373924, 25.332325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465216, -0.632125, -0.619672,
		0.404020, -0.471241, 0.784028,
		-0.787618, -0.615102, 0.036162,
		40.316315, 32.189392, 25.343174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106430, 31.907078, 25.306599>,  <40.867649, 32.619965, 25.317860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106430, 31.907078, 25.306599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.738281, 31.915545, 25.150408>,  <40.517391, 31.920624, 25.056692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.738281, 31.915545, 25.150408>,  <41.106430, 31.907078, 25.306599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738281, 31.915545, 25.150408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315832, -0.548569, -0.774159,
		-0.230591, -0.835837, 0.498201,
		-0.920368, 0.021166, -0.390479,
		40.462170, 31.921894, 25.033264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995640, 31.276976, 25.044918>,  <41.106430, 31.907078, 25.306599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995640, 31.276976, 25.044918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.726768, 31.502348, 24.852787>,  <40.565445, 31.637571, 24.737509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.726768, 31.502348, 24.852787>,  <40.995640, 31.276976, 25.044918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726768, 31.502348, 24.852787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159266, -0.523532, -0.836988,
		-0.723056, -0.639106, 0.262171,
		-0.672179, 0.563434, -0.480330,
		40.525116, 31.671377, 24.708689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591740, 30.878853, 24.598221>,  <40.995640, 31.276976, 25.044918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591740, 30.878853, 24.598221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.555500, 31.250317, 24.454340>,  <40.533756, 31.473194, 24.368011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.555500, 31.250317, 24.454340>,  <40.591740, 30.878853, 24.598221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555500, 31.250317, 24.454340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116696, -0.348798, -0.929904,
		-0.989027, -0.126221, -0.076771,
		-0.090596, 0.928660, -0.359700,
		40.528320, 31.528915, 24.346430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413006, 30.740210, 23.866716>,  <40.591740, 30.878853, 24.598221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413006, 30.740210, 23.866716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.457123, 31.137329, 23.848026>,  <40.483593, 31.375601, 23.836811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.457123, 31.137329, 23.848026>,  <40.413006, 30.740210, 23.866716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457123, 31.137329, 23.848026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220617, -0.070297, -0.972824,
		-0.969104, 0.096989, -0.226782,
		0.110296, 0.992800, -0.046727,
		40.490211, 31.435169, 23.834007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069397, 30.995054, 23.211905>,  <40.413006, 30.740210, 23.866716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069397, 30.995054, 23.211905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.352669, 31.259020, 23.312304>,  <40.522633, 31.417398, 23.372543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.352669, 31.259020, 23.312304>,  <40.069397, 30.995054, 23.211905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352669, 31.259020, 23.312304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336971, -0.003511, -0.941509,
		-0.620433, 0.751333, -0.224858,
		0.708176, 0.659914, 0.250999,
		40.565121, 31.456993, 23.387604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124161, 31.495407, 22.577677>,  <40.069397, 30.995054, 23.211905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124161, 31.495407, 22.577677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.461216, 31.553167, 22.785179>,  <40.663448, 31.587824, 22.909679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.461216, 31.553167, 22.785179>,  <40.124161, 31.495407, 22.577677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461216, 31.553167, 22.785179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533231, -0.089623, -0.841209,
		-0.074979, 0.985452, -0.152519,
		0.842640, 0.144401, 0.518754,
		40.714008, 31.596487, 22.940805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451126, 31.993727, 22.212025>,  <40.124161, 31.495407, 22.577677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451126, 31.993727, 22.212025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.727921, 31.816429, 22.439949>,  <40.893997, 31.710051, 22.576704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.727921, 31.816429, 22.439949>,  <40.451126, 31.993727, 22.212025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727921, 31.816429, 22.439949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584589, -0.119056, -0.802547,
		0.423562, 0.888461, 0.176729,
		0.691991, -0.443242, 0.569812,
		40.935516, 31.683456, 22.610893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097130, 32.299652, 22.116951>,  <40.451126, 31.993727, 22.212025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097130, 32.299652, 22.116951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.197235, 31.928280, 22.226778>,  <41.257298, 31.705458, 22.292675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.197235, 31.928280, 22.226778>,  <41.097130, 32.299652, 22.116951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197235, 31.928280, 22.226778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546257, -0.098737, -0.831778,
		0.799356, 0.358150, 0.482450,
		0.250266, -0.928429, 0.274568,
		41.272316, 31.649752, 22.309149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772404, 32.264103, 21.948786>,  <41.097130, 32.299652, 22.116951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772404, 32.264103, 21.948786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.672325, 31.879374, 21.993153>,  <41.612278, 31.648537, 22.019773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.672325, 31.879374, 21.993153>,  <41.772404, 32.264103, 21.948786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672325, 31.879374, 21.993153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532482, -0.232372, -0.813920,
		0.808620, -0.144575, 0.570290,
		-0.250192, -0.961822, 0.110917,
		41.597267, 31.590828, 22.026428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285385, 31.880449, 21.752811>,  <41.772404, 32.264103, 21.948786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285385, 31.880449, 21.752811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.986454, 31.619749, 21.701092>,  <41.807095, 31.463329, 21.670059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.986454, 31.619749, 21.701092>,  <42.285385, 31.880449, 21.752811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.986454, 31.619749, 21.701092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429347, -0.325152, -0.842578,
		0.507110, -0.685197, 0.522823,
		-0.747329, -0.651752, -0.129299,
		41.762257, 31.424223, 21.662302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599419, 31.168571, 21.712475>,  <42.285385, 31.880449, 21.752811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599419, 31.168571, 21.712475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.235233, 31.175873, 21.547199>,  <42.016724, 31.180254, 21.448034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.235233, 31.175873, 21.547199>,  <42.599419, 31.168571, 21.712475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235233, 31.175873, 21.547199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360335, -0.455381, -0.814118,
		-0.203019, -0.890110, 0.408029,
		-0.910462, 0.018254, -0.413189,
		41.962093, 31.181349, 21.423243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538605, 30.516403, 21.557205>,  <42.599419, 31.168571, 21.712475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538605, 30.516403, 21.557205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.311146, 30.740374, 21.316166>,  <42.174671, 30.874756, 21.171543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.311146, 30.740374, 21.316166>,  <42.538605, 30.516403, 21.557205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311146, 30.740374, 21.316166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400018, -0.451881, -0.797364,
		-0.718766, -0.694469, 0.032981,
		-0.568648, 0.559926, -0.602596,
		42.140553, 30.908352, 21.135387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.460823, 30.127180, 20.907335>,  <42.538605, 30.516403, 21.557205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.460823, 30.127180, 20.907335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.319122, 30.488853, 20.811874>,  <42.234100, 30.705858, 20.754597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.319122, 30.488853, 20.811874>,  <42.460823, 30.127180, 20.907335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319122, 30.488853, 20.811874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224852, -0.165359, -0.960259,
		-0.907714, -0.393839, -0.144728,
		-0.354255, 0.904183, -0.238654,
		42.212845, 30.760109, 20.740278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189461, 29.994440, 20.326342>,  <42.460823, 30.127180, 20.907335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.189461, 29.994440, 20.326342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.255920, 30.388725, 20.337410>,  <42.295795, 30.625296, 20.344051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.255920, 30.388725, 20.337410>,  <42.189461, 29.994440, 20.326342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255920, 30.388725, 20.337410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412234, -0.043943, -0.910018,
		-0.895799, 0.162609, -0.413645,
		0.166154, 0.985712, 0.027669,
		42.305767, 30.684439, 20.345711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927189, 30.331848, 19.728813>,  <42.189461, 29.994440, 20.326342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927189, 30.331848, 19.728813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.221664, 30.576559, 19.844576>,  <42.398350, 30.723385, 19.914034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.221664, 30.576559, 19.844576>,  <41.927189, 30.331848, 19.728813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221664, 30.576559, 19.844576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378832, -0.018155, -0.925287,
		-0.560815, 0.790822, -0.245126,
		0.736188, 0.611776, 0.289408,
		42.442520, 30.760092, 19.931398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919289, 30.991512, 19.237896>,  <41.927189, 30.331848, 19.728813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919289, 30.991512, 19.237896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.259624, 30.922020, 19.436243>,  <42.463825, 30.880323, 19.555252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.259624, 30.922020, 19.436243>,  <41.919289, 30.991512, 19.237896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259624, 30.922020, 19.436243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513021, 0.070851, -0.855447,
		0.113486, 0.982241, 0.149412,
		0.850841, -0.173733, 0.495869,
		42.514877, 30.869900, 19.585003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213001, 30.993361, 19.313250>,  <41.919289, 30.991512, 19.237896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213001, 30.993361, 19.313250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.826439, 31.028086, 19.216490>,  <40.594501, 31.048922, 19.158434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.826439, 31.028086, 19.216490>,  <41.213001, 30.993361, 19.313250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826439, 31.028086, 19.216490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184898, 0.418881, 0.889017,
		0.178507, 0.903881, -0.388759,
		-0.966410, 0.086815, -0.241899,
		40.536514, 31.054131, 19.143921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964069, 31.654617, 19.669039>,  <41.213001, 30.993361, 19.313250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964069, 31.654617, 19.669039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.614857, 31.498587, 19.551966>,  <40.405331, 31.404968, 19.481722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.614857, 31.498587, 19.551966>,  <40.964069, 31.654617, 19.669039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614857, 31.498587, 19.551966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459103, 0.455010, 0.763015,
		-0.164461, 0.800504, -0.576321,
		-0.873028, -0.390077, -0.292682,
		40.352947, 31.381563, 19.464161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488926, 32.237888, 19.707621>,  <40.964069, 31.654617, 19.669039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488926, 32.237888, 19.707621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.261063, 31.909170, 19.702763>,  <40.124344, 31.711941, 19.699848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.261063, 31.909170, 19.702763>,  <40.488926, 32.237888, 19.707621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261063, 31.909170, 19.702763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563093, 0.379478, 0.734114,
		-0.598680, 0.425032, -0.678918,
		-0.569657, -0.821793, -0.012147,
		40.090164, 31.662632, 19.699120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731213, 32.505539, 19.726385>,  <40.488926, 32.237888, 19.707621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731213, 32.505539, 19.726385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.752472, 32.130795, 19.864643>,  <39.765228, 31.905949, 19.947598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.752472, 32.130795, 19.864643>,  <39.731213, 32.505539, 19.726385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752472, 32.130795, 19.864643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526921, 0.267711, 0.806651,
		-0.848251, -0.224998, -0.479422,
		0.053148, -0.936860, 0.345643,
		39.768417, 31.849737, 19.968336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076424, 32.294979, 19.831488>,  <39.731213, 32.505539, 19.726385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076424, 32.294979, 19.831488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.257824, 32.030296, 20.070312>,  <39.366665, 31.871487, 20.213608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.257824, 32.030296, 20.070312>,  <39.076424, 32.294979, 19.831488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257824, 32.030296, 20.070312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663089, 0.197124, 0.722118,
		-0.595527, -0.723384, -0.349376,
		0.453498, -0.661708, 0.597061,
		39.393875, 31.831783, 20.249432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523769, 31.903662, 20.138918>,  <39.076424, 32.294979, 19.831488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523769, 31.903662, 20.138918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.833893, 31.820333, 20.377411>,  <39.019966, 31.770336, 20.520506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.833893, 31.820333, 20.377411>,  <38.523769, 31.903662, 20.138918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833893, 31.820333, 20.377411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587236, 0.109713, 0.801946,
		-0.232478, -0.971887, -0.037274,
		0.775311, -0.208324, 0.596233,
		39.066486, 31.757837, 20.556280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195976, 31.386124, 20.590334>,  <38.523769, 31.903662, 20.138918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195976, 31.386124, 20.590334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.520321, 31.552877, 20.754633>,  <38.714928, 31.652929, 20.853212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.520321, 31.552877, 20.754633>,  <38.195976, 31.386124, 20.590334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520321, 31.552877, 20.754633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512606, 0.167259, 0.842176,
		0.282389, -0.893438, 0.349321,
		0.810859, 0.416885, 0.410749,
		38.763580, 31.677942, 20.877857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381550, 31.023987, 21.144188>,  <38.195976, 31.386124, 20.590334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381550, 31.023987, 21.144188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.544769, 31.382467, 21.213837>,  <38.642700, 31.597555, 21.255627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.544769, 31.382467, 21.213837>,  <38.381550, 31.023987, 21.144188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544769, 31.382467, 21.213837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264794, -0.066348, 0.962020,
		0.873715, -0.438661, 0.210235,
		0.408051, 0.896200, 0.174124,
		38.667183, 31.651327, 21.266073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483997, 30.943617, 21.879847>,  <38.381550, 31.023987, 21.144188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483997, 30.943617, 21.879847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.580551, 31.326473, 21.815832>,  <38.638485, 31.556187, 21.777424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.580551, 31.326473, 21.815832>,  <38.483997, 30.943617, 21.879847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580551, 31.326473, 21.815832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070411, 0.181752, 0.980820,
		0.967871, -0.225490, 0.111267,
		0.241388, 0.957142, -0.160036,
		38.652969, 31.613615, 21.767822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026867, 31.129847, 22.299963>,  <38.483997, 30.943617, 21.879847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026867, 31.129847, 22.299963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.815365, 31.459486, 22.218697>,  <38.688461, 31.657270, 22.169937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.815365, 31.459486, 22.218697>,  <39.026867, 31.129847, 22.299963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815365, 31.459486, 22.218697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006663, 0.243387, 0.969906,
		0.848747, 0.511491, -0.134184,
		-0.528757, 0.824099, -0.203166,
		38.656738, 31.706717, 22.157747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354839, 31.672316, 22.666407>,  <39.026867, 31.129847, 22.299963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354839, 31.672316, 22.666407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.969563, 31.760994, 22.605608>,  <38.738396, 31.814201, 22.569128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.969563, 31.760994, 22.605608>,  <39.354839, 31.672316, 22.666407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969563, 31.760994, 22.605608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073108, 0.328092, 0.941813,
		0.258667, 0.918263, -0.299809,
		-0.963196, 0.221697, -0.151999,
		38.680603, 31.827503, 22.560009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302616, 32.208607, 23.105993>,  <39.354839, 31.672316, 22.666407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302616, 32.208607, 23.105993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.926113, 32.107208, 23.016750>,  <38.700211, 32.046368, 22.963205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.926113, 32.107208, 23.016750>,  <39.302616, 32.208607, 23.105993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926113, 32.107208, 23.016750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244639, 0.056437, 0.967970,
		-0.232788, 0.965688, -0.115138,
		-0.941255, -0.253499, -0.223107,
		38.643738, 32.031158, 22.949818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.826580, 32.627274, 23.481434>,  <39.302616, 32.208607, 23.105993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.826580, 32.627274, 23.481434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.594658, 32.310810, 23.403572>,  <38.455505, 32.120930, 23.356855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.594658, 32.310810, 23.403572>,  <38.826580, 32.627274, 23.481434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594658, 32.310810, 23.403572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352634, 0.028300, 0.935334,
		-0.734490, 0.610953, -0.295399,
		-0.579805, -0.791161, -0.194657,
		38.420715, 32.073463, 23.345175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245205, 32.775692, 23.774553>,  <38.826580, 32.627274, 23.481434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245205, 32.775692, 23.774553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.211197, 32.380093, 23.726143>,  <38.190792, 32.142731, 23.697096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.211197, 32.380093, 23.726143>,  <38.245205, 32.775692, 23.774553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211197, 32.380093, 23.726143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350875, -0.083969, 0.932650,
		-0.932555, 0.121760, -0.339877,
		-0.085021, -0.989001, -0.121028,
		38.185692, 32.083393, 23.689835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608669, 32.659801, 24.077459>,  <38.245205, 32.775692, 23.774553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608669, 32.659801, 24.077459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.784512, 32.301270, 24.054314>,  <37.890015, 32.086151, 24.040426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.784512, 32.301270, 24.054314>,  <37.608669, 32.659801, 24.077459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784512, 32.301270, 24.054314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357438, -0.233680, 0.904230,
		-0.824007, -0.376818, -0.423108,
		0.439602, -0.896327, -0.057865,
		37.916393, 32.032372, 24.036955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006611, 32.166595, 24.097675>,  <37.608669, 32.659801, 24.077459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006611, 32.166595, 24.097675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.345818, 31.981890, 24.201708>,  <37.549339, 31.871065, 24.264128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.345818, 31.981890, 24.201708>,  <37.006611, 32.166595, 24.097675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345818, 31.981890, 24.201708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455544, -0.384321, 0.802980,
		-0.270833, -0.799419, -0.536264,
		0.848014, -0.461766, 0.260083,
		37.600224, 31.843359, 24.279734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724827, 31.619083, 24.480200>,  <37.006611, 32.166595, 24.097675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724827, 31.619083, 24.480200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.108349, 31.677025, 24.577942>,  <37.338463, 31.711790, 24.636587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.108349, 31.677025, 24.577942>,  <36.724827, 31.619083, 24.480200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108349, 31.677025, 24.577942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225111, -0.137188, 0.964626,
		0.173252, -0.979896, -0.098929,
		0.958805, 0.144854, 0.244354,
		37.395992, 31.720482, 24.651249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934456, 31.030354, 24.913498>,  <36.724827, 31.619083, 24.480200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934456, 31.030354, 24.913498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.187378, 31.327251, 25.002274>,  <37.339130, 31.505390, 25.055540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.187378, 31.327251, 25.002274>,  <36.934456, 31.030354, 24.913498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187378, 31.327251, 25.002274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173870, -0.143211, 0.974300,
		0.754954, -0.654647, 0.038500,
		0.632309, 0.742245, 0.221941,
		37.377071, 31.549925, 25.068855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267708, 30.831034, 25.564596>,  <36.934456, 31.030354, 24.913498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267708, 30.831034, 25.564596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349560, 31.222565, 25.566389>,  <37.398670, 31.457483, 25.567465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349560, 31.222565, 25.566389>,  <37.267708, 30.831034, 25.564596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349560, 31.222565, 25.566389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147307, 0.026265, 0.988742,
		0.967692, -0.202986, 0.149563,
		0.204629, 0.978829, 0.004484,
		37.410950, 31.516214, 25.567734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840904, 30.976881, 26.017677>,  <37.267708, 30.831034, 25.564596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840904, 30.976881, 26.017677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.619118, 31.307753, 25.981144>,  <37.486046, 31.506275, 25.959225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.619118, 31.307753, 25.981144>,  <37.840904, 30.976881, 26.017677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619118, 31.307753, 25.981144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097635, 0.044332, 0.994234,
		0.826458, 0.560188, 0.056181,
		-0.554467, 0.827178, -0.091333,
		37.452778, 31.555906, 25.953745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.878456, 33.592110, 30.503202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.481026, 33.625046, 30.534252>,  <40.242569, 33.644806, 30.552881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.481026, 33.625046, 30.534252>,  <40.878456, 33.592110, 30.503202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481026, 33.625046, 30.534252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097029, 0.266914, 0.958824,
		0.058230, 0.960197, -0.273189,
		-0.993577, 0.082340, 0.077625,
		40.182953, 33.649746, 30.557539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799709, 34.050251, 30.971802>,  <40.878456, 33.592110, 30.503202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799709, 34.050251, 30.971802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.421143, 33.922523, 30.952505>,  <40.194004, 33.845886, 30.940928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.421143, 33.922523, 30.952505>,  <40.799709, 34.050251, 30.971802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421143, 33.922523, 30.952505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176457, 0.386205, 0.905377,
		-0.270475, 0.865378, -0.421858,
		-0.946417, -0.319322, -0.048243,
		40.137218, 33.826725, 30.938032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414322, 34.602364, 31.077019>,  <40.799709, 34.050251, 30.971802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414322, 34.602364, 31.077019> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.175453, 34.297428, 31.176794>,  <40.032131, 34.114468, 31.236660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.175453, 34.297428, 31.176794>,  <40.414322, 34.602364, 31.077019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175453, 34.297428, 31.176794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283712, 0.491625, 0.823293,
		-0.750260, 0.420881, -0.509871,
		-0.597175, -0.762341, 0.249438,
		39.996300, 34.068726, 31.251625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740112, 34.908112, 31.198809>,  <40.414322, 34.602364, 31.077019>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740112, 34.908112, 31.198809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.726738, 34.555458, 31.387108>,  <39.718712, 34.343864, 31.500088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.726738, 34.555458, 31.387108>,  <39.740112, 34.908112, 31.198809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726738, 34.555458, 31.387108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283419, 0.460043, 0.841448,
		-0.958413, -0.105281, -0.265256,
		-0.033440, -0.881633, 0.470750,
		39.716705, 34.290970, 31.528334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123535, 34.873772, 31.613537>,  <39.740112, 34.908112, 31.198809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123535, 34.873772, 31.613537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.367725, 34.608707, 31.787064>,  <39.514240, 34.449669, 31.891180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.367725, 34.608707, 31.787064>,  <39.123535, 34.873772, 31.613537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.367725, 34.608707, 31.787064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338581, 0.276812, 0.899299,
		-0.716017, -0.695883, -0.055378,
		0.610478, -0.662663, 0.433815,
		39.550869, 34.409908, 31.917208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684723, 34.428673, 32.039207>,  <39.123535, 34.873772, 31.613537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684723, 34.428673, 32.039207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.056244, 34.389091, 32.182056>,  <39.279156, 34.365345, 32.267765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.056244, 34.389091, 32.182056>,  <38.684723, 34.428673, 32.039207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056244, 34.389091, 32.182056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292348, 0.396575, 0.870207,
		-0.227734, -0.912654, 0.339411,
		0.928800, -0.098949, 0.357126,
		39.334885, 34.359406, 32.289196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550560, 34.092815, 32.714767>,  <38.684723, 34.428673, 32.039207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550560, 34.092815, 32.714767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.906162, 34.275967, 32.713501>,  <39.119526, 34.385857, 32.712742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.906162, 34.275967, 32.713501>,  <38.550560, 34.092815, 32.714767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906162, 34.275967, 32.713501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253347, 0.497624, 0.829569,
		0.381416, -0.736694, 0.558395,
		0.889009, 0.457879, -0.003163,
		39.172863, 34.413330, 32.712551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645248, 34.171787, 33.359184>,  <38.550560, 34.092815, 32.714767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645248, 34.171787, 33.359184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.923077, 34.413284, 33.202690>,  <39.089775, 34.558182, 33.108795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.923077, 34.413284, 33.202690>,  <38.645248, 34.171787, 33.359184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923077, 34.413284, 33.202690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207532, 0.688841, 0.694571,
		0.688841, -0.401235, 0.603746,
		-0.694571, -0.603746, 0.391233,
		39.131447, 34.594406, 33.085320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974411, 34.345982, 33.912697>,  <38.645248, 34.171787, 33.359184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974411, 34.345982, 33.912697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.041122, 34.637615, 33.647182>,  <39.081150, 34.812595, 33.487873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.041122, 34.637615, 33.647182>,  <38.974411, 34.345982, 33.912697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041122, 34.637615, 33.647182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073083, 0.680506, 0.729089,
		0.983281, -0.073088, 0.166780,
		0.166782, 0.729089, -0.663787,
		39.091156, 34.856342, 33.448048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414562, 34.593449, 34.280113>,  <38.974411, 34.345982, 33.912697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414562, 34.593449, 34.280113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.276966, 34.854717, 34.010288>,  <39.194408, 35.011478, 33.848392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.276966, 34.854717, 34.010288>,  <39.414562, 34.593449, 34.280113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276966, 34.854717, 34.010288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061201, 0.701280, 0.710253,
		0.936975, 0.285607, -0.201262,
		-0.343994, 0.653173, -0.674562,
		39.173767, 35.050671, 33.807919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790302, 35.199760, 34.413025>,  <39.414562, 34.593449, 34.280113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790302, 35.199760, 34.413025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.482258, 35.335598, 34.197021>,  <39.297432, 35.417099, 34.067421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.482258, 35.335598, 34.197021>,  <39.790302, 35.199760, 34.413025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482258, 35.335598, 34.197021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112678, 0.760800, 0.639130,
		0.627878, 0.553048, -0.547637,
		-0.770112, 0.339589, -0.540006,
		39.251225, 35.437473, 34.035019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853527, 35.812771, 34.457020>,  <39.790302, 35.199760, 34.413025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853527, 35.812771, 34.457020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.467720, 35.783653, 34.355503>,  <39.236237, 35.766182, 34.294594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.467720, 35.783653, 34.355503>,  <39.853527, 35.812771, 34.457020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467720, 35.783653, 34.355503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227379, 0.717580, 0.658315,
		0.134199, 0.692662, -0.708667,
		-0.964515, -0.072791, -0.253796,
		39.178364, 35.761818, 34.279366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632740, 36.459831, 34.379135>,  <39.853527, 35.812771, 34.457020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632740, 36.459831, 34.379135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.284260, 36.271744, 34.435558>,  <39.075172, 36.158890, 34.469414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.284260, 36.271744, 34.435558>,  <39.632740, 36.459831, 34.379135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284260, 36.271744, 34.435558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244504, 0.664768, 0.705904,
		-0.425702, 0.580497, -0.694119,
		-0.871204, -0.470220, 0.141059,
		39.022900, 36.130676, 34.477875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246998, 37.046684, 34.082317>,  <39.632740, 36.459831, 34.379135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246998, 37.046684, 34.082317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.944981, 36.864639, 34.271118>,  <38.763771, 36.755413, 34.384399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.944981, 36.864639, 34.271118>,  <39.246998, 37.046684, 34.082317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944981, 36.864639, 34.271118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355416, 0.889016, 0.288669,
		-0.550994, 0.050200, -0.832998,
		-0.755040, -0.455116, 0.472000,
		38.718468, 36.728104, 34.412720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939041, 37.355915, 34.280556>,  <39.246998, 37.046684, 34.082317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939041, 37.355915, 34.280556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.988674, 37.746731, 34.349834>,  <40.018452, 37.981220, 34.391403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.988674, 37.746731, 34.349834>,  <39.939041, 37.355915, 34.280556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988674, 37.746731, 34.349834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473584, 0.095076, -0.875602,
		-0.871965, 0.190669, -0.450914,
		0.124079, 0.977039, 0.173201,
		40.025898, 38.039845, 34.401794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639393, 37.701534, 33.747543>,  <39.939041, 37.355915, 34.280556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639393, 37.701534, 33.747543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.898327, 37.969639, 33.892712>,  <40.053688, 38.130501, 33.979813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.898327, 37.969639, 33.892712>,  <39.639393, 37.701534, 33.747543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898327, 37.969639, 33.892712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353743, 0.157576, -0.921974,
		-0.675149, 0.725205, -0.135096,
		0.647332, 0.670259, 0.362923,
		40.092525, 38.170715, 34.001587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513306, 38.245861, 33.242638>,  <39.639393, 37.701534, 33.747543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513306, 38.245861, 33.242638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.866734, 38.293568, 33.423782>,  <40.078789, 38.322193, 33.532471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.866734, 38.293568, 33.423782>,  <39.513306, 38.245861, 33.242638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866734, 38.293568, 33.423782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428413, 0.184696, -0.884505,
		-0.189134, 0.975532, 0.112096,
		0.883567, 0.119266, 0.452863,
		40.131805, 38.329346, 33.559643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749142, 38.879169, 32.984901>,  <39.513306, 38.245861, 33.242638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749142, 38.879169, 32.984901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.058620, 38.657806, 33.108273>,  <40.244308, 38.524990, 33.182297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.058620, 38.657806, 33.108273>,  <39.749142, 38.879169, 32.984901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058620, 38.657806, 33.108273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430385, 0.101844, -0.896882,
		0.464930, 0.826660, 0.316975,
		0.773698, -0.553408, 0.308431,
		40.290730, 38.491783, 33.200802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301109, 39.160408, 32.633076>,  <39.749142, 38.879169, 32.984901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301109, 39.160408, 32.633076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.459003, 38.808304, 32.738392>,  <40.553741, 38.597042, 32.801582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.459003, 38.808304, 32.738392>,  <40.301109, 39.160408, 32.633076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459003, 38.808304, 32.738392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397017, -0.095013, -0.912880,
		0.828591, 0.464876, 0.311974,
		0.394734, -0.880263, 0.263291,
		40.577423, 38.544224, 32.817379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106003, 39.199730, 32.322536>,  <40.301109, 39.160408, 32.633076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106003, 39.199730, 32.322536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.015327, 38.819275, 32.406391>,  <40.960922, 38.591003, 32.456703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.015327, 38.819275, 32.406391>,  <41.106003, 39.199730, 32.322536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015327, 38.819275, 32.406391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394759, -0.286497, -0.872975,
		0.890381, -0.115134, 0.440415,
		-0.226687, -0.951138, 0.209641,
		40.947323, 38.533932, 32.469284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638897, 38.792213, 32.068027>,  <41.106003, 39.199730, 32.322536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638897, 38.792213, 32.068027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.320587, 38.550159, 32.077389>,  <41.129601, 38.404926, 32.083004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.320587, 38.550159, 32.077389>,  <41.638897, 38.792213, 32.068027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320587, 38.550159, 32.077389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277564, -0.398805, -0.874021,
		0.538233, -0.689032, 0.485324,
		-0.795778, -0.605136, 0.023399,
		41.081852, 38.368618, 32.084408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957603, 38.250805, 31.694681>,  <41.638897, 38.792213, 32.068027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957603, 38.250805, 31.694681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.569672, 38.160629, 31.731794>,  <41.336914, 38.106525, 31.754063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.569672, 38.160629, 31.731794>,  <41.957603, 38.250805, 31.694681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569672, 38.160629, 31.731794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054333, -0.570899, -0.819220,
		0.237653, -0.789463, 0.565924,
		-0.969829, -0.225438, 0.092782,
		41.278725, 38.092999, 31.759628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886806, 37.589191, 31.690874>,  <41.957603, 38.250805, 31.694681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886806, 37.589191, 31.690874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.526333, 37.714565, 31.571129>,  <41.310047, 37.789791, 31.499281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.526333, 37.714565, 31.571129>,  <41.886806, 37.589191, 31.690874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526333, 37.714565, 31.571129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087844, -0.544274, -0.834296,
		-0.424433, -0.778155, 0.462960,
		-0.901188, 0.313434, -0.299364,
		41.255978, 37.808594, 31.481319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666695, 36.997723, 31.319466>,  <41.886806, 37.589191, 31.690874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666695, 36.997723, 31.319466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.426788, 37.301998, 31.220161>,  <41.282845, 37.484566, 31.160580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.426788, 37.301998, 31.220161>,  <41.666695, 36.997723, 31.319466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426788, 37.301998, 31.220161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186266, -0.434455, -0.881223,
		-0.778197, -0.482281, 0.402261,
		-0.599762, 0.760693, -0.248259,
		41.246861, 37.530205, 31.145683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017075, 36.713760, 31.191347>,  <41.666695, 36.997723, 31.319466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017075, 36.713760, 31.191347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.048958, 37.062271, 30.997635>,  <41.068089, 37.271378, 30.881407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.048958, 37.062271, 30.997635>,  <41.017075, 36.713760, 31.191347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048958, 37.062271, 30.997635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016767, -0.484585, -0.874583,
		-0.996677, 0.077831, -0.024017,
		0.079707, 0.871275, -0.484280,
		41.072868, 37.323654, 30.852350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463970, 36.574734, 30.615900>,  <41.017075, 36.713760, 31.191347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463970, 36.574734, 30.615900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.683884, 36.887951, 30.499567>,  <40.815830, 37.075882, 30.429768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.683884, 36.887951, 30.499567>,  <40.463970, 36.574734, 30.615900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683884, 36.887951, 30.499567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027467, -0.331040, -0.943217,
		-0.834855, 0.526554, -0.160493,
		0.549784, 0.783041, -0.290833,
		40.848820, 37.122864, 30.412317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177490, 36.844677, 30.012947>,  <40.463970, 36.574734, 30.615900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177490, 36.844677, 30.012947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.560436, 36.960228, 30.012871>,  <40.790203, 37.029556, 30.012825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.560436, 36.960228, 30.012871>,  <40.177490, 36.844677, 30.012947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560436, 36.960228, 30.012871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094348, -0.313299, -0.944956,
		-0.273032, 0.904652, -0.327197,
		0.957367, 0.288874, -0.000188,
		40.847645, 37.046890, 30.012814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334881, 37.033295, 29.309237>,  <40.177490, 36.844677, 30.012947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334881, 37.033295, 29.309237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.701015, 37.039993, 29.470171>,  <40.920696, 37.044014, 29.566732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.701015, 37.039993, 29.470171>,  <40.334881, 37.033295, 29.309237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701015, 37.039993, 29.470171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395165, -0.229567, -0.889462,
		0.077466, 0.973149, -0.216750,
		0.915338, 0.016749, 0.402338,
		40.975616, 37.045017, 29.590872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193291, 37.793163, 29.406912>,  <40.334881, 37.033295, 29.309237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193291, 37.793163, 29.406912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.045235, 38.104950, 29.204750>,  <39.956402, 38.292023, 29.083452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.045235, 38.104950, 29.204750>,  <40.193291, 37.793163, 29.406912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045235, 38.104950, 29.204750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611769, 0.204897, 0.764039,
		0.699098, 0.591989, 0.401013,
		-0.370136, 0.779465, -0.505404,
		39.934193, 38.338791, 29.053129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279964, 38.290115, 29.853989>,  <40.193291, 37.793163, 29.406912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279964, 38.290115, 29.853989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.019958, 38.442245, 29.590828>,  <39.863953, 38.533524, 29.432932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.019958, 38.442245, 29.590828>,  <40.279964, 38.290115, 29.853989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019958, 38.442245, 29.590828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579559, 0.311862, 0.752897,
		0.491518, 0.870687, 0.017704,
		-0.650017, 0.380323, -0.657900,
		39.824955, 38.556343, 29.393457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128231, 38.961811, 30.145731>,  <40.279964, 38.290115, 29.853989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128231, 38.961811, 30.145731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.831135, 38.834187, 29.910263>,  <39.652878, 38.757614, 29.768982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.831135, 38.834187, 29.910263>,  <40.128231, 38.961811, 30.145731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831135, 38.834187, 29.910263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667384, 0.281687, 0.689384,
		-0.054134, 0.904905, -0.422156,
		-0.742743, -0.319059, -0.588671,
		39.608311, 38.738468, 29.733662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549587, 39.577026, 30.174589>,  <40.128231, 38.961811, 30.145731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549587, 39.577026, 30.174589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.379475, 39.241028, 30.039803>,  <39.277405, 39.039429, 29.958931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.379475, 39.241028, 30.039803>,  <39.549587, 39.577026, 30.174589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379475, 39.241028, 30.039803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855259, 0.251191, 0.453249,
		-0.296084, 0.480951, -0.825239,
		-0.425284, -0.839993, -0.336964,
		39.251888, 38.989029, 29.938713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876480, 39.811073, 29.908825>,  <39.549587, 39.577026, 30.174589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876480, 39.811073, 29.908825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.873928, 39.420486, 29.995054>,  <38.872395, 39.186134, 30.046791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.873928, 39.420486, 29.995054>,  <38.876480, 39.811073, 29.908825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873928, 39.420486, 29.995054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911553, 0.094315, 0.400220,
		-0.411134, -0.193952, -0.890703,
		-0.006383, -0.976466, 0.215573,
		38.872013, 39.127548, 30.059727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208721, 39.642517, 29.672178>,  <38.876480, 39.811073, 29.908825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208721, 39.642517, 29.672178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.328190, 39.394886, 29.962708>,  <38.399872, 39.246307, 30.137024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.328190, 39.394886, 29.962708>,  <38.208721, 39.642517, 29.672178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328190, 39.394886, 29.962708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885743, 0.103543, 0.452479,
		-0.355324, -0.778475, -0.517417,
		0.298669, -0.619076, 0.726321,
		38.417789, 39.209164, 30.180603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555805, 39.157234, 29.854801>,  <38.208721, 39.642517, 29.672178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555805, 39.157234, 29.854801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.813663, 39.153748, 30.160572>,  <37.968380, 39.151653, 30.344034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.813663, 39.153748, 30.160572>,  <37.555805, 39.157234, 29.854801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813663, 39.153748, 30.160572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758431, 0.118230, 0.640940,
		-0.095969, -0.992948, 0.069602,
		0.644649, -0.008722, 0.764429,
		38.007057, 39.151131, 30.389900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179787, 38.842731, 30.452812>,  <37.555805, 39.157234, 29.854801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179787, 38.842731, 30.452812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.483120, 39.022625, 30.641563>,  <37.665119, 39.130562, 30.754814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.483120, 39.022625, 30.641563>,  <37.179787, 38.842731, 30.452812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483120, 39.022625, 30.641563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622137, 0.283195, 0.729895,
		0.194624, -0.847077, 0.494552,
		0.758332, 0.449734, 0.471881,
		37.710621, 39.157547, 30.783127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212524, 38.554005, 31.119818>,  <37.179787, 38.842731, 30.452812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212524, 38.554005, 31.119818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.356201, 38.926365, 31.093285>,  <37.442406, 39.149780, 31.077364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.356201, 38.926365, 31.093285>,  <37.212524, 38.554005, 31.119818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356201, 38.926365, 31.093285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475170, 0.243592, 0.845504,
		0.803242, -0.272174, 0.529833,
		0.359187, 0.930905, -0.066334,
		37.463959, 39.205635, 31.073385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092587, 38.703892, 31.808104>,  <37.212524, 38.554005, 31.119818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092587, 38.703892, 31.808104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.221981, 39.044868, 31.643810>,  <37.299618, 39.249454, 31.545235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.221981, 39.044868, 31.643810>,  <37.092587, 38.703892, 31.808104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221981, 39.044868, 31.643810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245928, 0.494898, 0.833424,
		0.913715, -0.168592, 0.369732,
		0.323488, 0.852439, -0.410734,
		37.319027, 39.300602, 31.520590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556721, 38.957642, 32.218506>,  <37.092587, 38.703892, 31.808104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556721, 38.957642, 32.218506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.422928, 39.264282, 31.999254>,  <37.342651, 39.448265, 31.867702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.422928, 39.264282, 31.999254>,  <37.556721, 38.957642, 32.218506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422928, 39.264282, 31.999254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128653, 0.539042, 0.832396,
		0.933579, 0.348940, -0.081674,
		-0.334482, 0.766599, -0.548131,
		37.322582, 39.494263, 31.834816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978199, 39.696758, 32.283329>,  <37.556721, 38.957642, 32.218506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978199, 39.696758, 32.283329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.586578, 39.746872, 32.219128>,  <37.351604, 39.776939, 32.180607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.586578, 39.746872, 32.219128>,  <37.978199, 39.696758, 32.283329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586578, 39.746872, 32.219128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044417, 0.637864, 0.768867,
		0.198707, 0.759890, -0.618937,
		-0.979052, 0.125288, -0.160500,
		37.292862, 39.784458, 32.170979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.912434, 38.020245, 25.895000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515625, 38.014385, 25.844904>,  <41.277542, 38.010872, 25.814846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515625, 38.014385, 25.844904>,  <41.912434, 38.020245, 25.895000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515625, 38.014385, 25.844904> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120384, 0.405554, 0.906109,
		0.037522, 0.913954, -0.404080,
		-0.992018, -0.014646, -0.125243,
		41.218021, 38.009991, 25.807331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653130, 38.660313, 26.194328>,  <41.912434, 38.020245, 25.895000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653130, 38.660313, 26.194328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324467, 38.434990, 26.159513>,  <41.127270, 38.299797, 26.138624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.324467, 38.434990, 26.159513>,  <41.653130, 38.660313, 26.194328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324467, 38.434990, 26.159513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396890, 0.455818, 0.796686,
		-0.409102, 0.689145, -0.598093,
		-0.821653, -0.563303, -0.087039,
		41.077972, 38.265999, 26.133402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953125, 39.097878, 26.034832>,  <41.653130, 38.660313, 26.194328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953125, 39.097878, 26.034832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859489, 38.752476, 26.213520>,  <40.803307, 38.545235, 26.320734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859489, 38.752476, 26.213520>,  <40.953125, 39.097878, 26.034832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859489, 38.752476, 26.213520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437658, 0.503895, 0.744678,
		-0.868134, -0.021189, -0.495877,
		-0.234090, -0.863505, 0.446722,
		40.789261, 38.493423, 26.347536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459766, 39.266090, 26.538071>,  <40.953125, 39.097878, 26.034832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459766, 39.266090, 26.538071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501362, 38.875748, 26.614906>,  <40.526321, 38.641544, 26.661007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501362, 38.875748, 26.614906>,  <40.459766, 39.266090, 26.538071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501362, 38.875748, 26.614906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297031, 0.153848, 0.942393,
		-0.949188, -0.155057, -0.273859,
		0.103992, -0.975852, 0.192087,
		40.532558, 38.582993, 26.672533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814281, 38.945225, 26.773415>,  <40.459766, 39.266090, 26.538071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814281, 38.945225, 26.773415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117237, 38.723743, 26.911844>,  <40.299011, 38.590855, 26.994902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117237, 38.723743, 26.911844>,  <39.814281, 38.945225, 26.773415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117237, 38.723743, 26.911844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450009, -0.058602, 0.891099,
		-0.473127, -0.830647, -0.293558,
		0.757392, -0.553707, 0.346073,
		40.344456, 38.557632, 27.015667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476482, 38.483925, 27.144741>,  <39.814281, 38.945225, 26.773415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476482, 38.483925, 27.144741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855686, 38.472507, 27.271526>,  <40.083210, 38.465656, 27.347597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855686, 38.472507, 27.271526>,  <39.476482, 38.483925, 27.144741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855686, 38.472507, 27.271526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318116, -0.056547, 0.946364,
		-0.009086, -0.997992, -0.062686,
		0.948008, -0.028540, 0.316964,
		40.140087, 38.463943, 27.366615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472652, 37.902241, 27.459618>,  <39.476482, 38.483925, 27.144741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472652, 37.902241, 27.459618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782684, 38.105469, 27.609882>,  <39.968704, 38.227406, 27.700041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782684, 38.105469, 27.609882>,  <39.472652, 37.902241, 27.459618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782684, 38.105469, 27.609882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362193, -0.129920, 0.923004,
		0.517755, -0.851462, 0.083321,
		0.775078, 0.508068, 0.375660,
		40.015209, 38.257889, 27.722580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749954, 37.572384, 28.028612>,  <39.472652, 37.902241, 27.459618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749954, 37.572384, 28.028612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878853, 37.945702, 28.092012>,  <39.956192, 38.169693, 28.130053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878853, 37.945702, 28.092012>,  <39.749954, 37.572384, 28.028612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878853, 37.945702, 28.092012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371108, -0.029484, 0.928121,
		0.870881, -0.357906, 0.336851,
		0.322249, 0.933292, 0.158499,
		39.975529, 38.225689, 28.139563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991859, 37.525234, 28.762325>,  <39.749954, 37.572384, 28.028612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991859, 37.525234, 28.762325> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973537, 37.920200, 28.701784>,  <39.962543, 38.157181, 28.665459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973537, 37.920200, 28.701784>,  <39.991859, 37.525234, 28.762325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973537, 37.920200, 28.701784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399617, 0.120748, 0.908695,
		0.915537, 0.102111, 0.389058,
		-0.045810, 0.987418, -0.151354,
		39.959793, 38.216427, 28.656378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780376, 37.282642, 28.743896>,  <39.991859, 37.525234, 28.762325>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780376, 37.282642, 28.743896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018555, 37.082272, 28.995140>,  <41.161461, 36.962048, 29.145885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018555, 37.082272, 28.995140>,  <40.780376, 37.282642, 28.743896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018555, 37.082272, 28.995140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393519, -0.499751, -0.771616,
		0.700423, 0.706625, -0.100447,
		0.595442, -0.500930, 0.628107,
		41.197186, 36.931992, 29.183573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466873, 37.467442, 28.536186>,  <40.780376, 37.282642, 28.743896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466873, 37.467442, 28.536186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496582, 37.125381, 28.741400>,  <41.514408, 36.920147, 28.864529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496582, 37.125381, 28.741400>,  <41.466873, 37.467442, 28.536186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496582, 37.125381, 28.741400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612776, -0.366740, -0.700006,
		0.786759, 0.366365, 0.496777,
		0.074270, -0.855148, 0.513035,
		41.518864, 36.868835, 28.895309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127193, 37.307922, 28.534338>,  <41.466873, 37.467442, 28.536186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127193, 37.307922, 28.534338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955540, 36.953632, 28.605146>,  <41.852547, 36.741058, 28.647631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955540, 36.953632, 28.605146>,  <42.127193, 37.307922, 28.534338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.955540, 36.953632, 28.605146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572547, -0.418326, -0.705119,
		0.698594, -0.201238, 0.686637,
		-0.429134, -0.885724, 0.177022,
		41.826797, 36.687916, 28.658253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625610, 36.758919, 28.549023>,  <42.127193, 37.307922, 28.534338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625610, 36.758919, 28.549023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294640, 36.559196, 28.446220>,  <42.096058, 36.439362, 28.384539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294640, 36.559196, 28.446220>,  <42.625610, 36.758919, 28.549023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.294640, 36.559196, 28.446220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517929, -0.501641, -0.692896,
		0.217044, -0.706434, 0.673679,
		-0.827430, -0.499307, -0.257004,
		42.046410, 36.409405, 28.369120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.884586, 36.068211, 28.478392>,  <42.625610, 36.758919, 28.549023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.884586, 36.068211, 28.478392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532494, 36.083492, 28.289192>,  <42.321236, 36.092659, 28.175673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532494, 36.083492, 28.289192>,  <42.884586, 36.068211, 28.478392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532494, 36.083492, 28.289192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421289, -0.395848, -0.815978,
		-0.218403, -0.917521, 0.332347,
		-0.880236, 0.038198, -0.472996,
		42.268421, 36.094952, 28.147293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850300, 35.401089, 28.205622>,  <42.884586, 36.068211, 28.478392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850300, 35.401089, 28.205622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581585, 35.610176, 27.995682>,  <42.420357, 35.735630, 27.869717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581585, 35.610176, 27.995682>,  <42.850300, 35.401089, 28.205622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581585, 35.610176, 27.995682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275409, -0.481497, -0.832052,
		-0.687642, -0.703510, 0.179502,
		-0.671787, 0.522718, -0.524851,
		42.380047, 35.766991, 27.838226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.565418, 34.910007, 27.679667>,  <42.850300, 35.401089, 28.205622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.565418, 34.910007, 27.679667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479740, 35.274101, 27.537905>,  <42.428333, 35.492558, 27.452848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.479740, 35.274101, 27.537905>,  <42.565418, 34.910007, 27.679667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.479740, 35.274101, 27.537905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314035, -0.279392, -0.907371,
		-0.924935, -0.305646, -0.226001,
		-0.214191, 0.910231, -0.354403,
		42.415482, 35.547169, 27.431583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110889, 34.818455, 27.023153>,  <42.565418, 34.910007, 27.679667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110889, 34.818455, 27.023153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243275, 35.194984, 26.996712>,  <42.322704, 35.420902, 26.980846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.243275, 35.194984, 26.996712>,  <42.110889, 34.818455, 27.023153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243275, 35.194984, 26.996712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228206, -0.147815, -0.962327,
		-0.915635, 0.303406, -0.263738,
		0.330960, 0.941327, -0.066106,
		42.342564, 35.477383, 26.976879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877819, 35.065754, 26.448734>,  <42.110889, 34.818455, 27.023153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877819, 35.065754, 26.448734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186058, 35.316181, 26.496418>,  <42.371002, 35.466438, 26.525028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186058, 35.316181, 26.496418>,  <41.877819, 35.065754, 26.448734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186058, 35.316181, 26.496418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138574, 0.017977, -0.990189,
		-0.622073, 0.779557, -0.072905,
		0.770599, 0.626073, 0.119210,
		42.417236, 35.504002, 26.532181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823002, 35.556599, 25.912437>,  <41.877819, 35.065754, 26.448734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823002, 35.556599, 25.912437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207764, 35.607788, 26.009073>,  <42.438622, 35.638500, 26.067055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207764, 35.607788, 26.009073>,  <41.823002, 35.556599, 25.912437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207764, 35.607788, 26.009073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257066, -0.122606, -0.958585,
		-0.093054, 0.984170, -0.150832,
		0.961903, 0.127974, 0.241588,
		42.496334, 35.646179, 26.081549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103287, 36.067989, 25.449986>,  <41.823002, 35.556599, 25.912437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103287, 36.067989, 25.449986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382599, 35.820511, 25.593996>,  <42.550186, 35.672024, 25.680403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382599, 35.820511, 25.593996>,  <42.103287, 36.067989, 25.449986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382599, 35.820511, 25.593996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385377, -0.098919, -0.917442,
		0.603232, 0.779377, 0.169358,
		0.698281, -0.618697, 0.360025,
		42.592083, 35.634903, 25.702003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649082, 36.197014, 24.927876>,  <42.103287, 36.067989, 25.449986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649082, 36.197014, 24.927876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772804, 35.857704, 25.099810>,  <42.847038, 35.654118, 25.202971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.772804, 35.857704, 25.099810>,  <42.649082, 36.197014, 24.927876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772804, 35.857704, 25.099810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387260, -0.300467, -0.871636,
		0.868540, 0.436056, 0.235569,
		0.309301, -0.848277, 0.429835,
		42.865593, 35.603222, 25.228760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.250595, 36.162830, 24.700684>,  <42.649082, 36.197014, 24.927876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.250595, 36.162830, 24.700684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153988, 35.795872, 24.827206>,  <43.096024, 35.575695, 24.903120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.153988, 35.795872, 24.827206>,  <43.250595, 36.162830, 24.700684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.153988, 35.795872, 24.827206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367982, -0.388195, -0.844922,
		0.897919, -0.087669, 0.431342,
		-0.241518, -0.917398, 0.316307,
		43.081532, 35.520653, 24.922098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.777493, 35.783298, 24.570034>,  <43.250595, 36.162830, 24.700684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.777493, 35.783298, 24.570034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473335, 35.524799, 24.595840>,  <43.290840, 35.369701, 24.611324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473335, 35.524799, 24.595840>,  <43.777493, 35.783298, 24.570034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473335, 35.524799, 24.595840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173534, -0.297900, -0.938691,
		0.625844, -0.702583, 0.338668,
		-0.760398, -0.646245, 0.064517,
		43.245216, 35.330925, 24.615196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.309799, 33.446175, 22.979130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.559742, 33.669205, 23.197729>,  <35.709705, 33.803024, 23.328890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.559742, 33.669205, 23.197729>,  <35.309799, 33.446175, 22.979130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559742, 33.669205, 23.197729> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386215, -0.387583, 0.837029,
		0.678523, -0.734089, -0.026838,
		0.624855, 0.557578, 0.546501,
		35.747200, 33.836479, 23.361679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440010, 33.055664, 23.514256>,  <35.309799, 33.446175, 22.979130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440010, 33.055664, 23.514256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.530186, 33.431038, 23.618965>,  <35.584290, 33.656261, 23.681791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.530186, 33.431038, 23.618965>,  <35.440010, 33.055664, 23.514256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530186, 33.431038, 23.618965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384953, -0.161028, 0.908780,
		0.894980, -0.305641, 0.324951,
		0.225434, 0.938431, 0.261775,
		35.597816, 33.712566, 23.697498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745678, 32.944576, 24.141077>,  <35.440010, 33.055664, 23.514256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745678, 32.944576, 24.141077> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.658272, 33.333233, 24.104942>,  <35.605827, 33.566425, 24.083261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.658272, 33.333233, 24.104942>,  <35.745678, 32.944576, 24.141077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658272, 33.333233, 24.104942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187725, 0.048989, 0.980999,
		0.957606, 0.231326, 0.171696,
		-0.218519, 0.971642, -0.090338,
		35.592716, 33.624725, 24.077841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052986, 33.278172, 24.665543>,  <35.745678, 32.944576, 24.141077>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052986, 33.278172, 24.665543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.741856, 33.501720, 24.550549>,  <35.555176, 33.635849, 24.481552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.741856, 33.501720, 24.550549>,  <36.052986, 33.278172, 24.665543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741856, 33.501720, 24.550549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279605, 0.101942, 0.954688,
		0.562852, 0.822966, 0.076969,
		-0.777829, 0.558869, -0.287484,
		35.508507, 33.669380, 24.464304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116375, 33.878456, 24.988495>,  <36.052986, 33.278172, 24.665543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116375, 33.878456, 24.988495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.726643, 33.896999, 24.900381>,  <35.492802, 33.908127, 24.847513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.726643, 33.896999, 24.900381>,  <36.116375, 33.878456, 24.988495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726643, 33.896999, 24.900381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201907, 0.252730, 0.946235,
		0.099542, 0.966425, -0.236882,
		-0.974333, 0.046362, -0.220285,
		35.434341, 33.910908, 24.834295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932346, 34.418850, 25.369637>,  <36.116375, 33.878456, 24.988495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932346, 34.418850, 25.369637> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.592716, 34.220291, 25.297352>,  <35.388939, 34.101154, 25.253981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.592716, 34.220291, 25.297352>,  <35.932346, 34.418850, 25.369637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592716, 34.220291, 25.297352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294561, 0.160918, 0.941987,
		-0.438519, 0.853051, -0.282850,
		-0.849079, -0.496396, -0.180710,
		35.337994, 34.071373, 25.243139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384720, 34.963871, 25.455200>,  <35.932346, 34.418850, 25.369637>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384720, 34.963871, 25.455200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.219742, 34.601231, 25.490887>,  <35.120754, 34.383644, 25.512299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.219742, 34.601231, 25.490887>,  <35.384720, 34.963871, 25.455200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219742, 34.601231, 25.490887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407836, 0.271328, 0.871809,
		-0.814592, 0.323186, -0.481654,
		-0.412443, -0.906604, 0.089215,
		35.096008, 34.329250, 25.517651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681660, 35.077572, 25.740227>,  <35.384720, 34.963871, 25.455200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681660, 35.077572, 25.740227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.806690, 34.702194, 25.799034>,  <34.881710, 34.476967, 25.834318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.806690, 34.702194, 25.799034>,  <34.681660, 35.077572, 25.740227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806690, 34.702194, 25.799034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170955, 0.096670, 0.980525,
		-0.934381, -0.331626, -0.130215,
		0.312580, -0.938445, 0.147020,
		34.900463, 34.420662, 25.843140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231686, 34.921352, 26.215063>,  <34.681660, 35.077572, 25.740227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231686, 34.921352, 26.215063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.496502, 34.622921, 26.243549>,  <34.655392, 34.443863, 26.260641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.496502, 34.622921, 26.243549>,  <34.231686, 34.921352, 26.215063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496502, 34.622921, 26.243549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263448, -0.142709, 0.954059,
		-0.701636, -0.650390, -0.291031,
		0.662044, -0.746074, 0.071214,
		34.695114, 34.399097, 26.264914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871300, 34.415771, 26.526081>,  <34.231686, 34.921352, 26.215063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871300, 34.415771, 26.526081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.261814, 34.358631, 26.591152>,  <34.496120, 34.324345, 26.630194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.261814, 34.358631, 26.591152>,  <33.871300, 34.415771, 26.526081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261814, 34.358631, 26.591152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129608, 0.216214, 0.967705,
		-0.173415, -0.965838, 0.192571,
		0.976283, -0.142855, 0.162675,
		34.554699, 34.315773, 26.639956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876808, 34.093998, 27.156490>,  <33.871300, 34.415771, 26.526081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876808, 34.093998, 27.156490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.250484, 34.223434, 27.096401>,  <34.474689, 34.301098, 27.060349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.250484, 34.223434, 27.096401>,  <33.876808, 34.093998, 27.156490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250484, 34.223434, 27.096401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086932, 0.201908, 0.975539,
		0.346011, -0.924402, 0.160491,
		0.934194, 0.323596, -0.150223,
		34.530743, 34.320515, 27.051334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232151, 33.734680, 27.618204>,  <33.876808, 34.093998, 27.156490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232151, 33.734680, 27.618204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.450375, 34.062202, 27.546732>,  <34.581310, 34.258717, 27.503849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.450375, 34.062202, 27.546732>,  <34.232151, 33.734680, 27.618204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450375, 34.062202, 27.546732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092187, 0.153278, 0.983874,
		0.832984, -0.553237, 0.008140,
		0.545563, 0.818801, -0.178679,
		34.614044, 34.307842, 27.493128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796360, 33.583107, 28.157635>,  <34.232151, 33.734680, 27.618204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796360, 33.583107, 28.157635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.785496, 33.973385, 28.070663>,  <34.778976, 34.207554, 28.018480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.785496, 33.973385, 28.070663>,  <34.796360, 33.583107, 28.157635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.785496, 33.973385, 28.070663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064396, 0.218763, 0.973651,
		0.997555, 0.012444, -0.068773,
		-0.027161, 0.975699, -0.217427,
		34.777348, 34.266094, 28.005436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969959, 33.856796, 28.798592>,  <34.796360, 33.583107, 28.157635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969959, 33.856796, 28.798592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.912292, 34.204777, 28.609953>,  <34.877693, 34.413563, 28.496769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.912292, 34.204777, 28.609953>,  <34.969959, 33.856796, 28.798592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912292, 34.204777, 28.609953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065744, 0.467104, 0.881755,
		0.987367, 0.158127, -0.010148,
		-0.144169, 0.869948, -0.471599,
		34.869041, 34.465763, 28.468473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725895, 33.807632, 28.877569>,  <34.969959, 33.856796, 28.798592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725895, 33.807632, 28.877569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.921028, 33.519020, 29.074104>,  <36.038109, 33.345852, 29.192026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.921028, 33.519020, 29.074104>,  <35.725895, 33.807632, 28.877569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921028, 33.519020, 29.074104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252327, -0.422275, -0.870640,
		0.835674, 0.548704, -0.023938,
		0.487832, -0.721531, 0.491337,
		36.067379, 33.302559, 29.221506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338673, 33.823895, 28.568369>,  <35.725895, 33.807632, 28.877569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338673, 33.823895, 28.568369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.310181, 33.472530, 28.757393>,  <36.293083, 33.261711, 28.870808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.310181, 33.472530, 28.757393>,  <36.338673, 33.823895, 28.568369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310181, 33.472530, 28.757393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223374, -0.475781, -0.850727,
		0.972127, 0.044959, 0.230106,
		-0.071232, -0.878414, 0.472562,
		36.288811, 33.209007, 28.899162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991798, 33.560108, 28.588280>,  <36.338673, 33.823895, 28.568369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991798, 33.560108, 28.588280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.717178, 33.272152, 28.629076>,  <36.552406, 33.099377, 28.653555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.717178, 33.272152, 28.629076>,  <36.991798, 33.560108, 28.588280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717178, 33.272152, 28.629076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409612, -0.498850, -0.763784,
		0.600722, -0.482598, 0.637363,
		-0.686550, -0.719894, 0.101992,
		36.511215, 33.056183, 28.659674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354713, 32.873138, 28.407539>,  <36.991798, 33.560108, 28.588280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354713, 32.873138, 28.407539> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.960754, 32.819469, 28.363779>,  <36.724377, 32.787266, 28.337523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.960754, 32.819469, 28.363779>,  <37.354713, 32.873138, 28.407539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960754, 32.819469, 28.363779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168755, -0.602979, -0.779704,
		0.038650, -0.786393, 0.616517,
		-0.984900, -0.134176, -0.109402,
		36.665283, 32.779217, 28.330959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397293, 32.149742, 28.243950>,  <37.354713, 32.873138, 28.407539>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397293, 32.149742, 28.243950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.011520, 32.236050, 28.182867>,  <36.780056, 32.287834, 28.146217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.011520, 32.236050, 28.182867>,  <37.397293, 32.149742, 28.243950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011520, 32.236050, 28.182867> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007031, -0.598424, -0.801149,
		-0.264246, -0.771578, 0.578655,
		-0.964429, 0.215769, -0.152706,
		36.722191, 32.300781, 28.137054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075432, 31.541224, 28.098698>,  <37.397293, 32.149742, 28.243950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075432, 31.541224, 28.098698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.896961, 31.854914, 27.926226>,  <36.789879, 32.043129, 27.822742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.896961, 31.854914, 27.926226>,  <37.075432, 31.541224, 28.098698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896961, 31.854914, 27.926226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025872, -0.470294, -0.882131,
		-0.894570, -0.404743, 0.189545,
		-0.446178, 0.784223, -0.431182,
		36.763107, 32.090179, 27.796871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599358, 31.209093, 27.650448>,  <37.075432, 31.541224, 28.098698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599358, 31.209093, 27.650448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.674248, 31.580658, 27.522657>,  <36.719181, 31.803596, 27.445982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.674248, 31.580658, 27.522657>,  <36.599358, 31.209093, 27.650448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674248, 31.580658, 27.522657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178323, -0.351964, -0.918870,
		-0.965996, 0.115066, -0.231543,
		0.187226, 0.928914, -0.319477,
		36.730415, 31.859333, 27.426815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263355, 31.123886, 27.009789>,  <36.599358, 31.209093, 27.650448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263355, 31.123886, 27.009789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.494194, 31.450436, 27.000959>,  <36.632698, 31.646366, 26.995661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.494194, 31.450436, 27.000959>,  <36.263355, 31.123886, 27.009789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494194, 31.450436, 27.000959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292140, -0.231605, -0.927908,
		-0.762634, 0.529046, -0.372155,
		0.577099, 0.816376, -0.022074,
		36.667324, 31.695349, 26.994337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126575, 31.532713, 26.370012>,  <36.263355, 31.123886, 27.009789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126575, 31.532713, 26.370012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.495598, 31.657804, 26.460423>,  <36.717010, 31.732859, 26.514668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.495598, 31.657804, 26.460423>,  <36.126575, 31.532713, 26.370012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495598, 31.657804, 26.460423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256898, -0.060749, -0.964527,
		-0.287903, 0.947898, -0.136384,
		0.922559, 0.312727, 0.226024,
		36.772366, 31.751623, 26.528229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331020, 32.177898, 25.924641>,  <36.126575, 31.532713, 26.370012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331020, 32.177898, 25.924641> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.662300, 32.000572, 26.061792>,  <36.861069, 31.894176, 26.144083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.662300, 32.000572, 26.061792>,  <36.331020, 32.177898, 25.924641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662300, 32.000572, 26.061792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427476, 0.104038, -0.898020,
		0.362432, 0.890309, 0.275670,
		0.828195, -0.443313, 0.342879,
		36.910759, 31.867579, 26.164656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810711, 32.649311, 25.742056>,  <36.331020, 32.177898, 25.924641>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810711, 32.649311, 25.742056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.959293, 32.281895, 25.796162>,  <37.048443, 32.061443, 25.828625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.959293, 32.281895, 25.796162>,  <36.810711, 32.649311, 25.742056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959293, 32.281895, 25.796162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587241, 0.119594, -0.800528,
		0.719142, 0.376799, 0.583830,
		0.371460, -0.918543, 0.135266,
		37.070732, 32.006332, 25.836742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612690, 32.822998, 25.608213>,  <36.810711, 32.649311, 25.742056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612690, 32.822998, 25.608213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.567986, 32.425709, 25.595469>,  <37.541161, 32.187336, 25.587822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.567986, 32.425709, 25.595469>,  <37.612690, 32.822998, 25.608213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567986, 32.425709, 25.595469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531709, -0.032681, -0.846297,
		0.839521, -0.111527, 0.531758,
		-0.111763, -0.993224, -0.031864,
		37.534458, 32.127743, 25.585909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171356, 32.600536, 25.406532>,  <37.612690, 32.822998, 25.608213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171356, 32.600536, 25.406532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.942287, 32.284607, 25.318689>,  <37.804844, 32.095051, 25.265984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.942287, 32.284607, 25.318689>,  <38.171356, 32.600536, 25.406532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942287, 32.284607, 25.318689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439749, -0.069886, -0.895398,
		0.691855, -0.609345, 0.387344,
		-0.572676, -0.789819, -0.219608,
		37.770485, 32.047661, 25.252808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616455, 31.961384, 25.079052>,  <38.171356, 32.600536, 25.406532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616455, 31.961384, 25.079052> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.246197, 31.903269, 24.939302>,  <38.024040, 31.868401, 24.855452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.246197, 31.903269, 24.939302>,  <38.616455, 31.961384, 25.079052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246197, 31.903269, 24.939302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378028, -0.315321, -0.870441,
		0.016299, -0.937797, 0.346800,
		-0.925650, -0.145287, -0.349375,
		37.968502, 31.859682, 24.834490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232697, 31.534332, 25.233482>,  <38.616455, 31.961384, 25.079052>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232697, 31.534332, 25.233482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.587746, 31.713604, 25.275913>,  <39.800777, 31.821167, 25.301371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.587746, 31.713604, 25.275913>,  <39.232697, 31.534332, 25.233482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587746, 31.713604, 25.275913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198215, 0.163847, 0.966367,
		0.415728, -0.878799, 0.234271,
		0.887627, 0.448182, 0.106076,
		39.854034, 31.848059, 25.307735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615936, 31.221996, 25.764219>,  <39.232697, 31.534332, 25.233482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615936, 31.221996, 25.764219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.726402, 31.604704, 25.727734>,  <39.792683, 31.834330, 25.705843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.726402, 31.604704, 25.727734>,  <39.615936, 31.221996, 25.764219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726402, 31.604704, 25.727734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131471, 0.131618, 0.982543,
		0.952074, -0.259356, 0.162137,
		0.276169, 0.956771, -0.091212,
		39.809254, 31.891735, 25.700371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927647, 31.295509, 26.378536>,  <39.615936, 31.221996, 25.764219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927647, 31.295509, 26.378536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.893848, 31.671419, 26.246061>,  <39.873569, 31.896965, 26.166576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.893848, 31.671419, 26.246061>,  <39.927647, 31.295509, 26.378536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893848, 31.671419, 26.246061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001005, 0.332457, 0.943118,
		0.996423, 0.079360, -0.029038,
		-0.084500, 0.939773, -0.331188,
		39.868500, 31.953352, 26.146706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316074, 31.758669, 26.795095>,  <39.927647, 31.295509, 26.378536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316074, 31.758669, 26.795095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.062336, 32.016968, 26.625097>,  <39.910095, 32.171947, 26.523098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.062336, 32.016968, 26.625097>,  <40.316074, 31.758669, 26.795095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062336, 32.016968, 26.625097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155640, 0.431825, 0.888428,
		0.757224, 0.629713, -0.173420,
		-0.634341, 0.645747, -0.424996,
		39.872032, 32.210693, 26.497599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567867, 32.405991, 26.955873>,  <40.316074, 31.758669, 26.795095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567867, 32.405991, 26.955873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.175930, 32.429161, 26.879391>,  <39.940769, 32.443066, 26.833500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.175930, 32.429161, 26.879391>,  <40.567867, 32.405991, 26.955873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175930, 32.429161, 26.879391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151114, 0.411167, 0.898947,
		0.130694, 0.909718, -0.394123,
		-0.979839, 0.057929, -0.191209,
		39.881977, 32.446541, 26.822027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511227, 32.988289, 27.156542>,  <40.567867, 32.405991, 26.955873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511227, 32.988289, 27.156542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.139877, 32.839645, 27.159008>,  <39.917068, 32.750462, 27.160488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.139877, 32.839645, 27.159008>,  <40.511227, 32.988289, 27.156542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139877, 32.839645, 27.159008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168091, 0.434615, 0.884791,
		-0.331472, 0.820378, -0.465948,
		-0.928370, -0.371605, 0.006165,
		39.861366, 32.728165, 27.160858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167740, 33.466263, 27.400600>,  <40.511227, 32.988289, 27.156542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167740, 33.466263, 27.400600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.929085, 33.151951, 27.465807>,  <39.785892, 32.963364, 27.504930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.929085, 33.151951, 27.465807>,  <40.167740, 33.466263, 27.400600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929085, 33.151951, 27.465807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227537, 0.360435, 0.904607,
		-0.769578, 0.502631, -0.393843,
		-0.596638, -0.785779, 0.163016,
		39.750092, 32.916218, 27.514711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500778, 33.769737, 27.518087>,  <40.167740, 33.466263, 27.400600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500778, 33.769737, 27.518087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.519737, 33.409203, 27.690296>,  <39.531113, 33.192883, 27.793621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.519737, 33.409203, 27.690296>,  <39.500778, 33.769737, 27.518087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.519737, 33.409203, 27.690296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218781, 0.411176, 0.884912,
		-0.974622, -0.136132, -0.177706,
		0.047397, -0.901333, 0.430524,
		39.533955, 33.138802, 27.819454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143543, 33.890488, 28.127110>,  <39.500778, 33.769737, 27.518087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143543, 33.890488, 28.127110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.312263, 33.536026, 28.203859>,  <39.413494, 33.323349, 28.249910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.312263, 33.536026, 28.203859>,  <39.143543, 33.890488, 28.127110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312263, 33.536026, 28.203859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062331, 0.182783, 0.981175,
		-0.904545, -0.425817, 0.021863,
		0.421797, -0.886155, 0.191877,
		39.438801, 33.270180, 28.261423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663231, 33.566517, 28.638451>,  <39.143543, 33.890488, 28.127110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663231, 33.566517, 28.638451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.036716, 33.425056, 28.660788>,  <39.260807, 33.340179, 28.674191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.036716, 33.425056, 28.660788>,  <38.663231, 33.566517, 28.638451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036716, 33.425056, 28.660788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013046, 0.189476, 0.981799,
		-0.357791, -0.915987, 0.181529,
		0.933710, -0.353647, 0.055843,
		39.316830, 33.318962, 28.677540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702087, 33.299953, 29.266735>,  <38.663231, 33.566517, 28.638451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702087, 33.299953, 29.266735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.093300, 33.306793, 29.183626>,  <39.328026, 33.310898, 29.133760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.093300, 33.306793, 29.183626>,  <38.702087, 33.299953, 29.266735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093300, 33.306793, 29.183626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204112, 0.124260, 0.971029,
		0.042415, -0.992102, 0.118040,
		0.978028, 0.017093, -0.207771,
		39.386707, 33.311920, 29.121294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017460, 32.699112, 29.674850>,  <38.702087, 33.299953, 29.266735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017460, 32.699112, 29.674850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.271694, 32.994751, 29.585623>,  <39.424236, 33.172134, 29.532085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.271694, 32.994751, 29.585623>,  <39.017460, 32.699112, 29.674850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271694, 32.994751, 29.585623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333081, -0.001854, 0.942896,
		0.696481, -0.673593, -0.247358,
		0.635587, 0.739100, -0.223070,
		39.462372, 33.216480, 29.518702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640354, 32.528496, 30.179647>,  <39.017460, 32.699112, 29.674850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640354, 32.528496, 30.179647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.699673, 32.900898, 30.046238>,  <39.735264, 33.124340, 29.966192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.699673, 32.900898, 30.046238>,  <39.640354, 32.528496, 30.179647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699673, 32.900898, 30.046238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308496, 0.276873, 0.910039,
		0.939595, -0.237846, -0.246153,
		0.148296, 0.931005, -0.333523,
		39.744164, 33.180199, 29.946180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408508, 32.759186, 30.271280>,  <39.640354, 32.528496, 30.179647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408508, 32.759186, 30.271280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.182533, 33.089008, 30.258942>,  <40.046947, 33.286903, 30.251539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.182533, 33.089008, 30.258942>,  <40.408508, 32.759186, 30.271280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182533, 33.089008, 30.258942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346989, 0.271318, 0.897766,
		0.748631, 0.496475, -0.439390,
		-0.564933, 0.824560, -0.030845,
		40.013054, 33.336376, 30.249687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.228397, 34.940773, 24.514214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.841717, 34.887630, 24.426718>,  <43.609711, 34.855747, 24.374220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.841717, 34.887630, 24.426718>,  <44.228397, 34.940773, 24.514214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.841717, 34.887630, 24.426718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252995, -0.624984, -0.738504,
		-0.038595, -0.769249, 0.637782,
		-0.966698, -0.132853, -0.218737,
		43.551708, 34.847775, 24.361097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.171513, 34.255554, 24.363537>,  <44.228397, 34.940773, 24.514214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.171513, 34.255554, 24.363537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.850403, 34.421959, 24.192657>,  <43.657738, 34.521801, 24.090130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.850403, 34.421959, 24.192657>,  <44.171513, 34.255554, 24.363537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850403, 34.421959, 24.192657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151926, -0.550086, -0.821172,
		-0.576619, -0.724110, 0.378385,
		-0.802763, 0.416017, -0.427201,
		43.609573, 34.546761, 24.064499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731312, 33.676071, 24.187330>,  <44.171513, 34.255554, 24.363537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731312, 33.676071, 24.187330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.599773, 33.981533, 23.965090>,  <43.520851, 34.164810, 23.831745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.599773, 33.981533, 23.965090>,  <43.731312, 33.676071, 24.187330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.599773, 33.981533, 23.965090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073310, -0.565905, -0.821205,
		-0.941533, -0.310783, 0.130114,
		-0.328848, 0.763653, -0.555601,
		43.501118, 34.210629, 23.798409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999104, 33.513466, 23.870478>,  <43.731312, 33.676071, 24.187330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999104, 33.513466, 23.870478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.176018, 33.794441, 23.647421>,  <43.282166, 33.963024, 23.513586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.176018, 33.794441, 23.647421>,  <42.999104, 33.513466, 23.870478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176018, 33.794441, 23.647421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086587, -0.585417, -0.806095,
		-0.892684, 0.404810, -0.198101,
		0.442287, 0.702435, -0.557644,
		43.308704, 34.005173, 23.480127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571484, 33.708187, 23.376823>,  <42.999104, 33.513466, 23.870478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571484, 33.708187, 23.376823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.897720, 33.837997, 23.185200>,  <43.093460, 33.915882, 23.070225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.897720, 33.837997, 23.185200>,  <42.571484, 33.708187, 23.376823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.897720, 33.837997, 23.185200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331495, -0.416532, -0.846530,
		-0.474265, 0.849225, -0.232139,
		0.815588, 0.324527, -0.479060,
		43.142395, 33.935356, 23.041481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415405, 33.844437, 22.633373>,  <42.571484, 33.708187, 23.376823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415405, 33.844437, 22.633373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.814808, 33.852528, 22.613106>,  <43.054451, 33.857384, 22.600945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.814808, 33.852528, 22.613106>,  <42.415405, 33.844437, 22.633373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.814808, 33.852528, 22.613106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041600, -0.318590, -0.946979,
		-0.035302, 0.947677, -0.317274,
		0.998510, 0.020232, -0.050671,
		43.114361, 33.858597, 22.597904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585579, 34.184391, 22.109943>,  <42.415405, 33.844437, 22.633373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585579, 34.184391, 22.109943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.928528, 33.985130, 22.161724>,  <43.134296, 33.865574, 22.192793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.928528, 33.985130, 22.161724>,  <42.585579, 34.184391, 22.109943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928528, 33.985130, 22.161724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074788, -0.369418, -0.926249,
		0.509237, 0.784457, -0.353984,
		0.857371, -0.498154, 0.129453,
		43.185738, 33.835686, 22.200560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034996, 34.411610, 21.560822>,  <42.585579, 34.184391, 22.109943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034996, 34.411610, 21.560822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.128983, 34.045753, 21.692413>,  <43.185375, 33.826241, 21.771368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.128983, 34.045753, 21.692413>,  <43.034996, 34.411610, 21.560822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.128983, 34.045753, 21.692413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082571, -0.356013, -0.930826,
		0.968491, 0.191546, -0.159173,
		0.234964, -0.914639, 0.328979,
		43.199471, 33.771362, 21.791107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587772, 34.226051, 21.165663>,  <43.034996, 34.411610, 21.560822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587772, 34.226051, 21.165663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.444462, 33.872246, 21.285172>,  <43.358475, 33.659962, 21.356876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.444462, 33.872246, 21.285172>,  <43.587772, 34.226051, 21.165663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444462, 33.872246, 21.285172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186723, -0.381438, -0.905340,
		0.914751, -0.268578, 0.301821,
		-0.358281, -0.884517, 0.298771,
		43.336979, 33.606892, 21.374804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.028519, 33.771721, 20.795807>,  <43.587772, 34.226051, 21.165663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.028519, 33.771721, 20.795807> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.754288, 33.507267, 20.917717>,  <43.589748, 33.348595, 20.990864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.754288, 33.507267, 20.917717>,  <44.028519, 33.771721, 20.795807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754288, 33.507267, 20.917717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074471, -0.480141, -0.874025,
		0.724185, -0.576511, 0.378407,
		-0.685573, -0.661135, 0.304777,
		43.548615, 33.308926, 21.009150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.316158, 33.061020, 20.735754>,  <44.028519, 33.771721, 20.795807>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.316158, 33.061020, 20.735754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.921108, 33.015476, 20.778904>,  <43.684078, 32.988148, 20.804794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.921108, 33.015476, 20.778904>,  <44.316158, 33.061020, 20.735754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.921108, 33.015476, 20.778904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036400, -0.502593, -0.863756,
		0.152565, -0.856992, 0.492228,
		-0.987623, -0.113862, 0.107873,
		43.624821, 32.981319, 20.811266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.198448, 32.398632, 20.650942>,  <44.316158, 33.061020, 20.735754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.198448, 32.398632, 20.650942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.842369, 32.563278, 20.572844>,  <43.628723, 32.662064, 20.525984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.842369, 32.563278, 20.572844>,  <44.198448, 32.398632, 20.650942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.842369, 32.563278, 20.572844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015285, -0.455315, -0.890199,
		-0.455315, -0.789470, 0.411612,
		0.890199, -0.411612, 0.195245,
		43.575310, 32.686764, 20.514271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.647320, 31.935934, 20.506207>,  <44.198448, 32.398632, 20.650942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.647320, 31.935934, 20.506207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.543613, 32.249825, 20.281002>,  <43.481388, 32.438160, 20.145880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.543613, 32.249825, 20.281002>,  <43.647320, 31.935934, 20.506207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.543613, 32.249825, 20.281002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124679, -0.550872, -0.825225,
		-0.957724, -0.284151, 0.044985,
		-0.259270, 0.784728, -0.563011,
		43.465832, 32.485245, 20.112099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155609, 31.535318, 20.493546>,  <43.647320, 31.935934, 20.506207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155609, 31.535318, 20.493546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.879856, 31.381231, 20.248152>,  <42.714405, 31.288780, 20.100916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.879856, 31.381231, 20.248152>,  <43.155609, 31.535318, 20.493546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.879856, 31.381231, 20.248152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664812, 0.000076, 0.747011,
		-0.287714, 0.922826, -0.256149,
		-0.689381, -0.385216, -0.613484,
		42.673042, 31.265667, 20.064106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551502, 31.990788, 20.392298>,  <43.155609, 31.535318, 20.493546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551502, 31.990788, 20.392298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.474514, 31.598652, 20.374920>,  <42.428322, 31.363371, 20.364492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.474514, 31.598652, 20.374920>,  <42.551502, 31.990788, 20.392298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474514, 31.598652, 20.374920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593213, 0.080969, 0.800963,
		-0.781699, 0.179934, -0.597135,
		-0.192470, -0.980340, -0.043446,
		42.416775, 31.304550, 20.361887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729485, 31.947075, 20.405012>,  <42.551502, 31.990788, 20.392298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729485, 31.947075, 20.405012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.893219, 31.591623, 20.487747>,  <41.991459, 31.378351, 20.537388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.893219, 31.591623, 20.487747>,  <41.729485, 31.947075, 20.405012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893219, 31.591623, 20.487747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667433, -0.137077, 0.731945,
		-0.622076, -0.437659, -0.649212,
		0.409334, -0.888631, 0.206835,
		42.016018, 31.325033, 20.549797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193203, 31.524746, 20.452185>,  <41.729485, 31.947075, 20.405012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193203, 31.524746, 20.452185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.483139, 31.336355, 20.653294>,  <41.657101, 31.223320, 20.773960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.483139, 31.336355, 20.653294>,  <41.193203, 31.524746, 20.452185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483139, 31.336355, 20.653294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590780, -0.049546, 0.805310,
		-0.354373, -0.880752, -0.314158,
		0.724843, -0.470978, 0.502773,
		41.700592, 31.195061, 20.804125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847557, 30.948261, 20.891340>,  <41.193203, 31.524746, 20.452185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847557, 30.948261, 20.891340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.197021, 31.004889, 21.077530>,  <41.406700, 31.038866, 21.189243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.197021, 31.004889, 21.077530>,  <40.847557, 30.948261, 20.891340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197021, 31.004889, 21.077530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452780, -0.113526, 0.884365,
		0.178042, -0.983397, -0.035084,
		0.873666, 0.141569, 0.465475,
		41.459122, 31.047359, 21.217173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759007, 30.617188, 21.620237>,  <40.847557, 30.948261, 20.891340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759007, 30.617188, 21.620237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.068214, 30.869623, 21.646044>,  <41.253738, 31.021084, 21.661528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.068214, 30.869623, 21.646044>,  <40.759007, 30.617188, 21.620237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068214, 30.869623, 21.646044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198848, 0.144477, 0.969322,
		0.602406, -0.762138, 0.237175,
		0.773024, 0.631088, 0.064515,
		41.300121, 31.058949, 21.665398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.082745, 30.368362, 22.151300>,  <40.759007, 30.617188, 21.620237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.082745, 30.368362, 22.151300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.262764, 30.725388, 22.140102>,  <41.370777, 30.939604, 22.133383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.262764, 30.725388, 22.140102>,  <41.082745, 30.368362, 22.151300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262764, 30.725388, 22.140102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328776, 0.194762, 0.924107,
		0.830278, -0.406688, 0.381107,
		0.450049, 0.892565, -0.027997,
		41.397778, 30.993156, 22.131702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370060, 30.517231, 22.792250>,  <41.082745, 30.368362, 22.151300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370060, 30.517231, 22.792250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.383701, 30.883568, 22.632215>,  <41.391888, 31.103371, 22.536196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.383701, 30.883568, 22.632215>,  <41.370060, 30.517231, 22.792250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383701, 30.883568, 22.632215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201643, 0.398390, 0.894777,
		0.978865, 0.050159, 0.198260,
		0.034103, 0.915844, -0.400084,
		41.393932, 31.158321, 22.512190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774994, 30.958483, 23.253847>,  <41.370060, 30.517231, 22.792250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774994, 30.958483, 23.253847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.494083, 31.168428, 23.061464>,  <41.325535, 31.294395, 22.946035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.494083, 31.168428, 23.061464>,  <41.774994, 30.958483, 23.253847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494083, 31.168428, 23.061464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295316, 0.399939, 0.867662,
		0.647759, 0.751375, -0.125868,
		-0.702280, 0.524865, -0.480957,
		41.283398, 31.325888, 22.917177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843285, 31.698559, 23.609327>,  <41.774994, 30.958483, 23.253847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843285, 31.698559, 23.609327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.499088, 31.631945, 23.416737>,  <41.292572, 31.591976, 23.301182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.499088, 31.631945, 23.416737>,  <41.843285, 31.698559, 23.609327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499088, 31.631945, 23.416737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508992, 0.321707, 0.798394,
		0.021932, 0.932079, -0.361592,
		-0.860492, -0.166537, -0.481476,
		41.240940, 31.581984, 23.272293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523335, 32.268661, 23.804955>,  <41.843285, 31.698559, 23.609327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523335, 32.268661, 23.804955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.241096, 32.016026, 23.676437>,  <41.071754, 31.864445, 23.599327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.241096, 32.016026, 23.676437>,  <41.523335, 32.268661, 23.804955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241096, 32.016026, 23.676437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590029, 0.272552, 0.759987,
		-0.392431, 0.725816, -0.564968,
		-0.705594, -0.631590, -0.321295,
		41.029419, 31.826548, 23.580050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852711, 32.687630, 23.675295>,  <41.523335, 32.268661, 23.804955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852711, 32.687630, 23.675295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.728737, 32.309212, 23.713106>,  <40.654354, 32.082161, 23.735792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.728737, 32.309212, 23.713106>,  <40.852711, 32.687630, 23.675295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728737, 32.309212, 23.713106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573067, 0.265216, 0.775406,
		-0.758642, 0.186151, -0.624348,
		-0.309930, -0.946049, 0.094527,
		40.635757, 32.025398, 23.741465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139538, 32.575237, 23.707304>,  <40.852711, 32.687630, 23.675295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139538, 32.575237, 23.707304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.260994, 32.252056, 23.909302>,  <40.333866, 32.058147, 24.030500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.260994, 32.252056, 23.909302>,  <40.139538, 32.575237, 23.707304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260994, 32.252056, 23.909302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603309, 0.247185, 0.758233,
		-0.737442, -0.534897, -0.412389,
		0.303640, -0.807951, 0.504993,
		40.352085, 32.009670, 24.060799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576664, 32.381428, 24.151356>,  <40.139538, 32.575237, 23.707304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576664, 32.381428, 24.151356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.869671, 32.165951, 24.317839>,  <40.045475, 32.036663, 24.417728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.869671, 32.165951, 24.317839>,  <39.576664, 32.381428, 24.151356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869671, 32.165951, 24.317839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381571, 0.181415, 0.906362,
		-0.563757, -0.822739, -0.072660,
		0.732517, -0.538693, 0.416207,
		40.089428, 32.004341, 24.442701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202209, 31.966850, 24.626661>,  <39.576664, 32.381428, 24.151356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202209, 31.966850, 24.626661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.588173, 31.980791, 24.730766>,  <39.819752, 31.989155, 24.793230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.588173, 31.980791, 24.730766>,  <39.202209, 31.966850, 24.626661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588173, 31.980791, 24.730766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262564, 0.140869, 0.954576,
		-0.003396, -0.989415, 0.145076,
		0.964909, 0.034850, 0.260263,
		39.877647, 31.991247, 24.808846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767269, 31.361095, 24.549143>,  <39.202209, 31.966850, 24.626661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767269, 31.361095, 24.549143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.403507, 31.505093, 24.465822>,  <38.185249, 31.591492, 24.415831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.403507, 31.505093, 24.465822>,  <38.767269, 31.361095, 24.549143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403507, 31.505093, 24.465822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184267, -0.100259, -0.977749,
		-0.372867, -0.927552, 0.024841,
		-0.909404, 0.359993, -0.208300,
		38.130688, 31.613091, 24.403332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541004, 30.935362, 24.012238>,  <38.767269, 31.361095, 24.549143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541004, 30.935362, 24.012238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.344830, 31.283911, 24.017700>,  <38.227123, 31.493040, 24.020977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.344830, 31.283911, 24.017700>,  <38.541004, 30.935362, 24.012238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344830, 31.283911, 24.017700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139672, 0.094060, -0.985721,
		-0.860212, -0.481525, -0.167836,
		-0.490436, 0.871370, 0.013656,
		38.197701, 31.545322, 24.021797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092506, 30.798586, 23.491060>,  <38.541004, 30.935362, 24.012238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092506, 30.798586, 23.491060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.129166, 31.192488, 23.550200>,  <38.151161, 31.428829, 23.585684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.129166, 31.192488, 23.550200>,  <38.092506, 30.798586, 23.491060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129166, 31.192488, 23.550200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140863, 0.134160, -0.980897,
		-0.985778, 0.110720, -0.126421,
		0.091645, 0.984755, 0.147848,
		38.156658, 31.487915, 23.594555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676510, 31.121490, 22.947382>,  <38.092506, 30.798586, 23.491060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676510, 31.121490, 22.947382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.909107, 31.424576, 23.065863>,  <38.048664, 31.606428, 23.136951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.909107, 31.424576, 23.065863>,  <37.676510, 31.121490, 22.947382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909107, 31.424576, 23.065863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192807, 0.225362, -0.955006,
		-0.790375, 0.612439, -0.015047,
		0.581492, 0.757714, 0.296204,
		38.083553, 31.651890, 23.154724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433372, 31.684700, 22.579031>,  <37.676510, 31.121490, 22.947382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433372, 31.684700, 22.579031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.797169, 31.778725, 22.716185>,  <38.015446, 31.835140, 22.798477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.797169, 31.778725, 22.716185>,  <37.433372, 31.684700, 22.579031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797169, 31.778725, 22.716185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299816, 0.200476, -0.932695,
		-0.287980, 0.951081, 0.111856,
		0.909493, 0.235061, 0.342882,
		38.070015, 31.849243, 22.819050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496086, 32.312950, 22.202391>,  <37.433372, 31.684700, 22.579031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496086, 32.312950, 22.202391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.856537, 32.183475, 22.317764>,  <38.072807, 32.105789, 22.386988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.856537, 32.183475, 22.317764>,  <37.496086, 32.312950, 22.202391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856537, 32.183475, 22.317764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364540, 0.205558, -0.908216,
		0.234690, 0.923564, 0.303231,
		0.901128, -0.323689, 0.288434,
		38.126877, 32.086369, 22.404295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942245, 32.721737, 21.808580>,  <37.496086, 32.312950, 22.202391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942245, 32.721737, 21.808580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.201286, 32.437496, 21.918606>,  <38.356712, 32.266953, 21.984621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.201286, 32.437496, 21.918606>,  <37.942245, 32.721737, 21.808580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201286, 32.437496, 21.918606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331297, -0.062496, -0.941455,
		0.686187, 0.700816, 0.194946,
		0.647603, -0.710599, 0.275062,
		38.395569, 32.224316, 22.001125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102222, 33.518738, 21.761236>,  <37.942245, 32.721737, 21.808580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102222, 33.518738, 21.761236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.868904, 33.786678, 21.577473>,  <37.728912, 33.947445, 21.467215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.868904, 33.786678, 21.577473>,  <38.102222, 33.518738, 21.761236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868904, 33.786678, 21.577473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451059, 0.203241, 0.869045,
		0.675505, 0.714134, 0.183594,
		-0.583301, 0.669855, -0.459407,
		37.693913, 33.987637, 21.439651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987980, 33.924095, 22.254847>,  <38.102222, 33.518738, 21.761236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987980, 33.924095, 22.254847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.704056, 34.042316, 21.999092>,  <37.533699, 34.113251, 21.845640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.704056, 34.042316, 21.999092>,  <37.987980, 33.924095, 22.254847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704056, 34.042316, 21.999092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559316, 0.315275, 0.766660,
		0.428173, 0.901803, -0.058477,
		-0.709813, 0.295555, -0.639385,
		37.491112, 34.130981, 21.807276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658714, 34.581974, 22.511059>,  <37.987980, 33.924095, 22.254847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658714, 34.581974, 22.511059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.387135, 34.417171, 22.267984>,  <37.224186, 34.318291, 22.122139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.387135, 34.417171, 22.267984>,  <37.658714, 34.581974, 22.511059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387135, 34.417171, 22.267984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702497, 0.124008, 0.700800,
		-0.213377, 0.902703, -0.373629,
		-0.678947, -0.412007, -0.607686,
		37.183449, 34.293568, 22.085678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102688, 35.012428, 22.607590>,  <37.658714, 34.581974, 22.511059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102688, 35.012428, 22.607590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.981022, 34.666252, 22.448349>,  <36.908020, 34.458546, 22.352804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.981022, 34.666252, 22.448349>,  <37.102688, 35.012428, 22.607590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981022, 34.666252, 22.448349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808742, 0.013760, 0.588003,
		-0.503406, 0.500816, -0.704106,
		-0.304170, -0.865444, -0.398104,
		36.889771, 34.406620, 22.328918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342442, 35.051231, 22.520647>,  <37.102688, 35.012428, 22.607590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342442, 35.051231, 22.520647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.407349, 34.656574, 22.514980>,  <36.446293, 34.419781, 22.511580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.407349, 34.656574, 22.514980>,  <36.342442, 35.051231, 22.520647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407349, 34.656574, 22.514980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765850, -0.134981, 0.628693,
		-0.622209, -0.091167, -0.777525,
		0.162267, -0.986645, -0.014166,
		36.456028, 34.360580, 22.510731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727779, 34.693703, 22.497187>,  <36.342442, 35.051231, 22.520647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727779, 34.693703, 22.497187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.969597, 34.401657, 22.624599>,  <36.114689, 34.226429, 22.701046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.969597, 34.401657, 22.624599>,  <35.727779, 34.693703, 22.497187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969597, 34.401657, 22.624599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679766, -0.264392, 0.684116,
		-0.415267, -0.630103, -0.656143,
		0.604542, -0.730115, 0.318530,
		36.150959, 34.182625, 22.720158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265400, 34.094326, 22.616482>,  <35.727779, 34.693703, 22.497187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265400, 34.094326, 22.616482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.602406, 34.032398, 22.822859>,  <35.804611, 33.995239, 22.946686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.602406, 34.032398, 22.822859>,  <35.265400, 34.094326, 22.616482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602406, 34.032398, 22.822859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538445, -0.269796, 0.798302,
		0.015605, -0.950389, -0.310671,
		0.842516, -0.154822, 0.515943,
		35.855160, 33.985950, 22.977642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.334961, 35.162315, 19.610287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.592903, 34.957027, 19.836834>,  <41.747669, 34.833855, 19.972761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.592903, 34.957027, 19.836834>,  <41.334961, 35.162315, 19.610287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.592903, 34.957027, 19.836834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310955, 0.500753, 0.807808,
		-0.698193, -0.697031, 0.163323,
		0.644852, -0.513220, 0.566367,
		41.786358, 34.803062, 20.006744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991512, 35.080399, 20.257471>,  <41.334961, 35.162315, 19.610287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991512, 35.080399, 20.257471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.376488, 35.001854, 20.332474>,  <41.607471, 34.954727, 20.377476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.376488, 35.001854, 20.332474>,  <40.991512, 35.080399, 20.257471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376488, 35.001854, 20.332474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034082, 0.597767, 0.800945,
		-0.269359, -0.777250, 0.568620,
		0.962436, -0.196362, 0.187504,
		41.665218, 34.942944, 20.388725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955299, 34.842354, 20.953213>,  <40.991512, 35.080399, 20.257471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955299, 34.842354, 20.953213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.337498, 34.938126, 20.884277>,  <41.566818, 34.995586, 20.842916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.337498, 34.938126, 20.884277>,  <40.955299, 34.842354, 20.953213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337498, 34.938126, 20.884277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037441, 0.481042, 0.875898,
		0.292614, -0.843370, 0.450670,
		0.955497, 0.239426, -0.172336,
		41.624146, 35.009953, 20.832577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258186, 34.849815, 21.575672>,  <40.955299, 34.842354, 20.953213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258186, 34.849815, 21.575672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.538654, 35.058735, 21.381531>,  <41.706936, 35.184086, 21.265045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.538654, 35.058735, 21.381531>,  <41.258186, 34.849815, 21.575672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538654, 35.058735, 21.381531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149625, 0.557780, 0.816391,
		0.697119, -0.645049, 0.312949,
		0.701169, 0.522297, -0.485354,
		41.749004, 35.215424, 21.235924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846050, 34.855682, 22.035110>,  <41.258186, 34.849815, 21.575672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846050, 34.855682, 22.035110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.888844, 35.169849, 21.791250>,  <41.914520, 35.358349, 21.644934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.888844, 35.169849, 21.791250>,  <41.846050, 34.855682, 22.035110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888844, 35.169849, 21.791250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237815, 0.575159, 0.782710,
		0.965401, -0.228718, -0.125254,
		0.106979, 0.785417, -0.609652,
		41.920937, 35.405476, 21.608355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.347164, 35.219204, 22.430225>,  <41.846050, 34.855682, 22.035110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.347164, 35.219204, 22.430225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.171764, 35.468147, 22.170876>,  <42.066525, 35.617512, 22.015265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.171764, 35.468147, 22.170876>,  <42.347164, 35.219204, 22.430225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171764, 35.468147, 22.170876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022790, 0.728902, 0.684239,
		0.898444, 0.285260, -0.333804,
		-0.438497, 0.622358, -0.648376,
		42.040215, 35.654854, 21.976362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515244, 35.775635, 22.764143>,  <42.347164, 35.219204, 22.430225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515244, 35.775635, 22.764143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.279305, 35.946766, 22.490198>,  <42.137741, 36.049446, 22.325830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.279305, 35.946766, 22.490198>,  <42.515244, 35.775635, 22.764143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279305, 35.946766, 22.490198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023027, 0.838857, 0.543864,
		0.807185, 0.336568, -0.484947,
		-0.589849, 0.427832, -0.684863,
		42.102348, 36.075115, 22.284739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781174, 36.503593, 22.622757>,  <42.515244, 35.775635, 22.764143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781174, 36.503593, 22.622757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.388035, 36.469311, 22.557426>,  <42.152153, 36.448742, 22.518229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.388035, 36.469311, 22.557426>,  <42.781174, 36.503593, 22.622757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.388035, 36.469311, 22.557426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158652, 0.844449, 0.511601,
		0.094075, 0.528735, -0.843558,
		-0.982843, -0.085703, -0.163326,
		42.093182, 36.443600, 22.508429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573982, 37.245152, 22.463514>,  <42.781174, 36.503593, 22.622757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573982, 37.245152, 22.463514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.224491, 37.058006, 22.516733>,  <42.014797, 36.945717, 22.548664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.224491, 37.058006, 22.516733>,  <42.573982, 37.245152, 22.463514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224491, 37.058006, 22.516733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349390, 0.793965, 0.497540,
		-0.338417, 0.388229, -0.857177,
		-0.873728, -0.467865, 0.133048,
		41.962372, 36.917648, 22.556648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020355, 37.799980, 22.260586>,  <42.573982, 37.245152, 22.463514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020355, 37.799980, 22.260586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.889065, 37.515251, 22.508966>,  <41.810291, 37.344414, 22.657995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.889065, 37.515251, 22.508966>,  <42.020355, 37.799980, 22.260586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889065, 37.515251, 22.508966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350235, 0.702222, 0.619855,
		-0.877270, -0.014026, -0.479792,
		-0.328227, -0.711820, 0.620950,
		41.790596, 37.301704, 22.695251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474590, 38.095734, 22.598629>,  <42.020355, 37.799980, 22.260586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474590, 38.095734, 22.598629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.549557, 37.784328, 22.838224>,  <41.594536, 37.597485, 22.981981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.549557, 37.784328, 22.838224>,  <41.474590, 38.095734, 22.598629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549557, 37.784328, 22.838224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399811, 0.496538, 0.770455,
		-0.897233, -0.383877, -0.218202,
		0.187415, -0.778517, 0.598988,
		41.605782, 37.550774, 23.017921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859943, 38.028671, 22.965670>,  <41.474590, 38.095734, 22.598629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859943, 38.028671, 22.965670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.129341, 37.849785, 23.201094>,  <41.290981, 37.742455, 23.342348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.129341, 37.849785, 23.201094>,  <40.859943, 38.028671, 22.965670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129341, 37.849785, 23.201094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428611, 0.412439, 0.803857,
		-0.602239, -0.793660, 0.086098,
		0.673499, -0.447211, 0.588558,
		41.331390, 37.715622, 23.377661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454082, 37.478256, 22.523245>,  <40.859943, 38.028671, 22.965670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454082, 37.478256, 22.523245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.057697, 37.441734, 22.483929>,  <39.819866, 37.419819, 22.460339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.057697, 37.441734, 22.483929>,  <40.454082, 37.478256, 22.523245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057697, 37.441734, 22.483929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117866, -0.242623, -0.962934,
		0.064076, -0.965814, 0.251192,
		-0.990960, -0.091308, -0.098290,
		39.760410, 37.414341, 22.454441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377892, 36.861530, 22.088818>,  <40.454082, 37.478256, 22.523245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377892, 36.861530, 22.088818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.023849, 37.040009, 22.035908>,  <39.811424, 37.147095, 22.004162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.023849, 37.040009, 22.035908>,  <40.377892, 36.861530, 22.088818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023849, 37.040009, 22.035908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006817, -0.271763, -0.962340,
		-0.465342, -0.852673, 0.237497,
		-0.885105, 0.446198, -0.132276,
		39.758316, 37.173866, 21.996225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038074, 36.412937, 21.613192>,  <40.377892, 36.861530, 22.088818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038074, 36.412937, 21.613192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.839840, 36.758965, 21.582085>,  <39.720898, 36.966583, 21.563421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.839840, 36.758965, 21.582085>,  <40.038074, 36.412937, 21.613192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839840, 36.758965, 21.582085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205362, -0.203701, -0.957253,
		-0.843932, -0.458431, 0.278604,
		-0.495586, 0.865071, -0.077765,
		39.691166, 37.018486, 21.558756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278149, 36.305511, 21.398314>,  <40.038074, 36.412937, 21.613192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278149, 36.305511, 21.398314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.397270, 36.673134, 21.295040>,  <39.468742, 36.893707, 21.233076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.397270, 36.673134, 21.295040>,  <39.278149, 36.305511, 21.398314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397270, 36.673134, 21.295040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206898, -0.201887, -0.957306,
		-0.931937, 0.338505, 0.130028,
		0.297802, 0.919052, -0.258182,
		39.486610, 36.948849, 21.217585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786049, 36.502708, 20.861435>,  <39.278149, 36.305511, 21.398314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786049, 36.502708, 20.861435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.100990, 36.745323, 20.817289>,  <39.289955, 36.890892, 20.790802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.100990, 36.745323, 20.817289>,  <38.786049, 36.502708, 20.861435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100990, 36.745323, 20.817289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050506, -0.241878, -0.968991,
		-0.614427, 0.757366, -0.221078,
		0.787355, 0.606540, -0.110365,
		39.337196, 36.927284, 20.784180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567062, 37.042614, 20.300329>,  <38.786049, 36.502708, 20.861435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567062, 37.042614, 20.300329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.964920, 37.050076, 20.340986>,  <39.203636, 37.054554, 20.365381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.964920, 37.050076, 20.340986>,  <38.567062, 37.042614, 20.300329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964920, 37.050076, 20.340986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103249, -0.138277, -0.984997,
		-0.004318, 0.990218, -0.139463,
		0.994646, 0.018653, 0.101642,
		39.263313, 37.055672, 20.371479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722473, 37.567005, 19.834040>,  <38.567062, 37.042614, 20.300329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722473, 37.567005, 19.834040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.025146, 37.324142, 19.931023>,  <39.206753, 37.178425, 19.989212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.025146, 37.324142, 19.931023>,  <38.722473, 37.567005, 19.834040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025146, 37.324142, 19.931023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025574, -0.343082, -0.938957,
		0.653277, 0.716698, -0.244078,
		0.756687, -0.607157, 0.242457,
		39.252151, 37.141994, 20.003759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037792, 37.524231, 19.234304>,  <38.722473, 37.567005, 19.834040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037792, 37.524231, 19.234304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.208244, 37.223675, 19.435831>,  <39.310516, 37.043343, 19.556747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.208244, 37.223675, 19.435831>,  <39.037792, 37.524231, 19.234304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208244, 37.223675, 19.435831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123177, -0.503533, -0.855151,
		0.896239, 0.426460, -0.122015,
		0.426126, -0.751390, 0.503815,
		39.336082, 36.998257, 19.586975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604439, 37.328255, 18.869934>,  <39.037792, 37.524231, 19.234304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604439, 37.328255, 18.869934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.530533, 37.015747, 19.108419>,  <39.486187, 36.828243, 19.251511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.530533, 37.015747, 19.108419>,  <39.604439, 37.328255, 18.869934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530533, 37.015747, 19.108419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271843, -0.623620, -0.732939,
		0.944437, 0.026653, 0.327610,
		-0.184769, -0.781273, 0.596216,
		39.475101, 36.781364, 19.287285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121571, 36.852741, 18.712236>,  <39.604439, 37.328255, 18.869934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121571, 36.852741, 18.712236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.808342, 36.651142, 18.858000>,  <39.620407, 36.530182, 18.945457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.808342, 36.651142, 18.858000>,  <40.121571, 36.852741, 18.712236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808342, 36.651142, 18.858000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107155, -0.686496, -0.719195,
		0.612637, -0.524129, 0.591578,
		-0.783067, -0.503995, 0.364410,
		39.573421, 36.499943, 18.967323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347839, 36.123367, 18.843369>,  <40.121571, 36.852741, 18.712236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347839, 36.123367, 18.843369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.950363, 36.142693, 18.802872>,  <39.711880, 36.154289, 18.778574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.950363, 36.142693, 18.802872>,  <40.347839, 36.123367, 18.843369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950363, 36.142693, 18.802872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055770, -0.570280, -0.819555,
		-0.097334, -0.820028, 0.563986,
		-0.993689, 0.048317, -0.101240,
		39.652256, 36.157188, 18.772499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122036, 35.488766, 18.604137>,  <40.347839, 36.123367, 18.843369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122036, 35.488766, 18.604137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.804302, 35.704197, 18.491737>,  <39.613663, 35.833454, 18.424297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.804302, 35.704197, 18.491737>,  <40.122036, 35.488766, 18.604137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804302, 35.704197, 18.491737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041619, -0.509736, -0.859324,
		-0.606049, -0.670898, 0.427318,
		-0.794338, 0.538576, -0.281003,
		39.566002, 35.865768, 18.407436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513058, 34.981911, 18.459297>,  <40.122036, 35.488766, 18.604137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513058, 34.981911, 18.459297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.489124, 35.336899, 18.276508>,  <39.474766, 35.549892, 18.166834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.489124, 35.336899, 18.276508>,  <39.513058, 34.981911, 18.459297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489124, 35.336899, 18.276508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051147, -0.454468, -0.889294,
		-0.996898, -0.076578, -0.018201,
		-0.059829, 0.887466, -0.456974,
		39.471176, 35.603138, 18.139416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918949, 34.737091, 19.101095>,  <39.513058, 34.981911, 18.459297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918949, 34.737091, 19.101095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.634510, 34.534271, 18.906263>,  <39.463848, 34.412579, 18.789364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.634510, 34.534271, 18.906263>,  <39.918949, 34.737091, 19.101095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634510, 34.534271, 18.906263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600789, 0.078330, 0.795561,
		-0.365233, 0.858352, -0.360329,
		-0.711096, -0.507046, -0.487080,
		39.421181, 34.382156, 18.760139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379715, 35.158924, 19.204468>,  <39.918949, 34.737091, 19.101095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379715, 35.158924, 19.204468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.179440, 34.826153, 19.108797>,  <39.059273, 34.626492, 19.051394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.179440, 34.826153, 19.108797>,  <39.379715, 35.158924, 19.204468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179440, 34.826153, 19.108797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532482, 0.078158, 0.842825,
		-0.682476, 0.549352, -0.482120,
		-0.500689, -0.831928, -0.239179,
		39.029232, 34.576576, 19.037043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691456, 35.267551, 19.217148>,  <39.379715, 35.158924, 19.204468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691456, 35.267551, 19.217148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.720612, 34.871235, 19.262781>,  <38.738106, 34.633446, 19.290161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.720612, 34.871235, 19.262781>,  <38.691456, 35.267551, 19.217148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720612, 34.871235, 19.262781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618055, 0.044901, 0.784852,
		-0.782748, -0.127721, -0.609092,
		0.072893, -0.990793, 0.114085,
		38.742481, 34.573997, 19.297007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968021, 35.041573, 19.309471>,  <38.691456, 35.267551, 19.217148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968021, 35.041573, 19.309471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.229412, 34.763596, 19.429491>,  <38.386246, 34.596809, 19.501503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.229412, 34.763596, 19.429491>,  <37.968021, 35.041573, 19.309471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229412, 34.763596, 19.429491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507188, -0.107732, 0.855076,
		-0.561901, -0.710951, -0.422865,
		0.653473, -0.694940, 0.300051,
		38.425453, 34.555115, 19.519506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547253, 34.443428, 19.539965>,  <37.968021, 35.041573, 19.309471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547253, 34.443428, 19.539965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.888508, 34.366554, 19.733965>,  <38.093262, 34.320431, 19.850365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.888508, 34.366554, 19.733965>,  <37.547253, 34.443428, 19.539965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888508, 34.366554, 19.733965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518852, -0.215743, 0.827193,
		-0.054334, -0.957351, -0.283771,
		0.853136, -0.192180, 0.485002,
		38.144447, 34.308899, 19.879465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441982, 33.826405, 19.998581>,  <37.547253, 34.443428, 19.539965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441982, 33.826405, 19.998581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.736897, 34.038486, 20.166052>,  <37.913845, 34.165733, 20.266535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.736897, 34.038486, 20.166052>,  <37.441982, 33.826405, 19.998581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736897, 34.038486, 20.166052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415421, -0.132905, 0.899868,
		0.532755, -0.837390, 0.122268,
		0.737290, 0.530202, 0.418675,
		37.958084, 34.197548, 20.291655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808453, 33.332222, 20.421938>,  <37.441982, 33.826405, 19.998581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808453, 33.332222, 20.421938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.866943, 33.696346, 20.576828>,  <37.902039, 33.914822, 20.669762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.866943, 33.696346, 20.576828>,  <37.808453, 33.332222, 20.421938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866943, 33.696346, 20.576828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307399, -0.330241, 0.892439,
		0.940278, -0.249534, 0.231539,
		0.146230, 0.910315, 0.387225,
		37.910812, 33.969440, 20.692995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870155, 33.188412, 21.107336>,  <37.808453, 33.332222, 20.421938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870155, 33.188412, 21.107336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.808064, 33.581436, 21.066385>,  <37.770809, 33.817249, 21.041815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.808064, 33.581436, 21.066385>,  <37.870155, 33.188412, 21.107336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808064, 33.581436, 21.066385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460725, 0.019667, 0.887325,
		0.873863, 0.184907, 0.449637,
		-0.155230, 0.982559, -0.102378,
		37.761494, 33.876205, 21.035671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529202, 32.916962, 21.448811>,  <37.870155, 33.188412, 21.107336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529202, 32.916962, 21.448811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.569561, 32.531773, 21.548807>,  <38.593777, 32.300659, 21.608805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.569561, 32.531773, 21.548807>,  <38.529202, 32.916962, 21.448811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569561, 32.531773, 21.548807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360516, -0.198808, -0.911320,
		0.927280, 0.182073, 0.327110,
		0.100895, -0.962977, 0.249991,
		38.599831, 32.242878, 21.623804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213921, 32.737564, 21.513628>,  <38.529202, 32.916962, 21.448811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213921, 32.737564, 21.513628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.033630, 32.385342, 21.455027>,  <38.925457, 32.174007, 21.419867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.033630, 32.385342, 21.455027>,  <39.213921, 32.737564, 21.513628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033630, 32.385342, 21.455027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695136, -0.243269, -0.676466,
		0.560028, -0.406741, 0.721755,
		-0.450727, -0.880558, -0.146503,
		38.898411, 32.121174, 21.411076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802086, 32.319420, 21.432281>,  <39.213921, 32.737564, 21.513628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802086, 32.319420, 21.432281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.494896, 32.110634, 21.283808>,  <39.310581, 31.985363, 21.194723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.494896, 32.110634, 21.283808>,  <39.802086, 32.319420, 21.432281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494896, 32.110634, 21.283808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592115, -0.357656, -0.722137,
		0.244173, -0.774363, 0.583731,
		-0.767971, -0.521962, -0.371182,
		39.264503, 31.954044, 21.172453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032604, 31.672661, 21.403152>,  <39.802086, 32.319420, 21.432281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032604, 31.672661, 21.403152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.748108, 31.687746, 21.122375>,  <39.577412, 31.696796, 20.953909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.748108, 31.687746, 21.122375>,  <40.032604, 31.672661, 21.403152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748108, 31.687746, 21.122375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644032, -0.365229, -0.672183,
		-0.281719, -0.930153, 0.235476,
		-0.711236, 0.037713, -0.701940,
		39.534737, 31.699060, 20.911793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142021, 31.056345, 20.970066>,  <40.032604, 31.672661, 21.403152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142021, 31.056345, 20.970066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.887409, 31.276405, 20.753857>,  <39.734642, 31.408442, 20.624130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.887409, 31.276405, 20.753857>,  <40.142021, 31.056345, 20.970066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887409, 31.276405, 20.753857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431314, -0.327079, -0.840825,
		-0.639374, -0.768345, -0.029093,
		-0.636528, 0.550150, -0.540524,
		39.696449, 31.441450, 20.591700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810741, 30.617893, 20.433857>,  <40.142021, 31.056345, 20.970066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810741, 30.617893, 20.433857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.794212, 30.990368, 20.288980>,  <39.784294, 31.213854, 20.202055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.794212, 30.990368, 20.288980>,  <39.810741, 30.617893, 20.433857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794212, 30.990368, 20.288980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352742, -0.325562, -0.877259,
		-0.934808, -0.164008, -0.315017,
		-0.041320, 0.931188, -0.362190,
		39.781815, 31.269724, 20.180323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516632, 30.517654, 19.774588>,  <39.810741, 30.617893, 20.433857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516632, 30.517654, 19.774588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.664413, 30.889353, 19.773624>,  <39.753082, 31.112371, 19.773046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.664413, 30.889353, 19.773624>,  <39.516632, 30.517654, 19.774588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664413, 30.889353, 19.773624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296013, -0.120146, -0.947598,
		-0.880839, 0.349384, -0.319457,
		0.369457, 0.929245, -0.002408,
		39.775249, 31.168127, 19.772902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230480, 30.885395, 19.266113>,  <39.516632, 30.517654, 19.774588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230480, 30.885395, 19.266113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.592598, 31.051407, 19.302317>,  <39.809868, 31.151014, 19.324039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.592598, 31.051407, 19.302317>,  <39.230480, 30.885395, 19.266113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592598, 31.051407, 19.302317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121115, -0.047965, -0.991479,
		-0.407153, 0.908542, -0.093689,
		0.905294, 0.415031, 0.090508,
		39.864185, 31.175917, 19.329470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337685, 31.272745, 18.643959>,  <39.230480, 30.885395, 19.266113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337685, 31.272745, 18.643959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.691437, 31.197905, 18.815012>,  <39.903687, 31.153000, 18.917643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.691437, 31.197905, 18.815012>,  <39.337685, 31.272745, 18.643959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691437, 31.197905, 18.815012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352934, -0.331518, -0.874948,
		0.305471, 0.924710, -0.227153,
		0.884379, -0.187101, 0.427631,
		39.956749, 31.141775, 18.943300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.485561, 35.846878, 33.210926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879665, 35.812344, 33.269993>,  <36.116127, 35.791622, 33.305431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879665, 35.812344, 33.269993>,  <35.485561, 35.846878, 33.210926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879665, 35.812344, 33.269993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107375, -0.359827, -0.926820,
		0.133147, 0.929017, -0.345254,
		0.985263, -0.086332, 0.147663,
		36.175243, 35.786446, 33.314293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737877, 36.191895, 32.678604>,  <35.485561, 35.846878, 33.210926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737877, 36.191895, 32.678604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.022213, 35.929363, 32.779747>,  <36.192814, 35.771843, 32.840435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.022213, 35.929363, 32.779747>,  <35.737877, 36.191895, 32.678604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022213, 35.929363, 32.779747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103511, -0.453209, -0.885374,
		0.695697, 0.603184, -0.390096,
		0.710839, -0.656331, 0.252859,
		36.235466, 35.732464, 32.855606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171715, 36.115524, 32.115406>,  <35.737877, 36.191895, 32.678604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171715, 36.115524, 32.115406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.258781, 35.790176, 32.331200>,  <36.311020, 35.594967, 32.460674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.258781, 35.790176, 32.331200>,  <36.171715, 36.115524, 32.115406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258781, 35.790176, 32.331200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017704, -0.549356, -0.835401,
		0.975863, 0.191388, -0.105175,
		0.217665, -0.813375, 0.539485,
		36.324081, 35.546165, 32.493046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759331, 35.888397, 31.852097>,  <36.171715, 36.115524, 32.115406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759331, 35.888397, 31.852097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.611126, 35.564423, 32.033962>,  <36.522202, 35.370037, 32.143082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.611126, 35.564423, 32.033962>,  <36.759331, 35.888397, 31.852097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611126, 35.564423, 32.033962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272553, -0.562760, -0.780395,
		0.887939, -0.165227, 0.429261,
		-0.370513, -0.809939, 0.454663,
		36.499973, 35.321442, 32.170361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145622, 35.255085, 31.566601>,  <36.759331, 35.888397, 31.852097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145622, 35.255085, 31.566601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.815086, 35.095806, 31.725899>,  <36.616764, 35.000240, 31.821478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.815086, 35.095806, 31.725899>,  <37.145622, 35.255085, 31.566601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815086, 35.095806, 31.725899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014487, -0.721945, -0.691799,
		0.562980, -0.565894, 0.602343,
		-0.826343, -0.398195, 0.398243,
		36.567184, 34.976349, 31.845371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333221, 34.514965, 31.667797>,  <37.145622, 35.255085, 31.566601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333221, 34.514965, 31.667797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.934074, 34.539761, 31.659634>,  <36.694588, 34.554638, 31.654736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.934074, 34.539761, 31.659634>,  <37.333221, 34.514965, 31.667797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934074, 34.539761, 31.659634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030860, -0.723756, -0.689365,
		-0.057503, -0.687266, 0.724127,
		-0.997868, 0.061986, -0.020409,
		36.634712, 34.558357, 31.653511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113766, 33.762955, 31.759846>,  <37.333221, 34.514965, 31.667797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113766, 33.762955, 31.759846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.802673, 33.971832, 31.619871>,  <36.616020, 34.097157, 31.535887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.802673, 33.971832, 31.619871>,  <37.113766, 33.762955, 31.759846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802673, 33.971832, 31.619871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122427, -0.671863, -0.730487,
		-0.616563, -0.525279, 0.586457,
		-0.777729, 0.522189, -0.349937,
		36.569355, 34.128490, 31.514889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620247, 33.297348, 31.577227>,  <37.113766, 33.762955, 31.759846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620247, 33.297348, 31.577227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.501709, 33.610184, 31.357950>,  <36.430584, 33.797886, 31.226383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.501709, 33.610184, 31.357950>,  <36.620247, 33.297348, 31.577227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501709, 33.610184, 31.357950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140433, -0.603419, -0.784961,
		-0.944699, -0.155637, 0.288653,
		-0.296348, 0.782088, -0.548193,
		36.412804, 33.844810, 31.193493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276737, 32.956879, 31.102913>,  <36.620247, 33.297348, 31.577227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276737, 32.956879, 31.102913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.259315, 33.320988, 30.938229>,  <36.248863, 33.539452, 30.839418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.259315, 33.320988, 30.938229>,  <36.276737, 32.956879, 31.102913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259315, 33.320988, 30.938229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079840, -0.413954, -0.906790,
		-0.995856, -0.006624, 0.090706,
		-0.043555, 0.910274, -0.411710,
		36.246250, 33.594070, 30.814716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690781, 33.032444, 30.692867>,  <36.276737, 32.956879, 31.102913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690781, 33.032444, 30.692867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.940617, 33.309322, 30.548231>,  <36.090519, 33.475449, 30.461449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.940617, 33.309322, 30.548231>,  <35.690781, 33.032444, 30.692867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940617, 33.309322, 30.548231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158600, -0.340934, -0.926612,
		-0.764679, 0.636101, -0.103161,
		0.624590, 0.692200, -0.361590,
		36.127995, 33.516983, 30.439754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294334, 33.260967, 30.075251>,  <35.690781, 33.032444, 30.692867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294334, 33.260967, 30.075251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.678879, 33.368118, 30.049839>,  <35.909603, 33.432407, 30.034592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.678879, 33.368118, 30.049839>,  <35.294334, 33.260967, 30.075251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678879, 33.368118, 30.049839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050531, -0.398526, -0.915764,
		-0.270626, 0.877167, -0.396662,
		0.961358, 0.267873, -0.063528,
		35.967285, 33.448479, 30.030781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375256, 33.753616, 29.494350>,  <35.294334, 33.260967, 30.075251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375256, 33.753616, 29.494350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.730778, 33.584232, 29.564440>,  <35.944092, 33.482601, 29.606493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.730778, 33.584232, 29.564440>,  <35.375256, 33.753616, 29.494350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730778, 33.584232, 29.564440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051114, -0.288362, -0.956156,
		0.455422, 0.858795, -0.234654,
		0.888807, -0.423460, 0.175222,
		35.997421, 33.457195, 29.617006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496681, 34.438171, 29.120010>,  <35.375256, 33.753616, 29.494350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496681, 34.438171, 29.120010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.187416, 34.611637, 28.934906>,  <35.001858, 34.715717, 28.823843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.187416, 34.611637, 28.934906>,  <35.496681, 34.438171, 29.120010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187416, 34.611637, 28.934906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047760, 0.687786, 0.724340,
		0.632403, 0.582137, -0.511061,
		-0.773166, 0.433666, -0.462761,
		34.955467, 34.741737, 28.796078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583370, 35.204414, 29.075680>,  <35.496681, 34.438171, 29.120010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583370, 35.204414, 29.075680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.186668, 35.157597, 29.054792>,  <34.948647, 35.129505, 29.042259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.186668, 35.157597, 29.054792>,  <35.583370, 35.204414, 29.075680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186668, 35.157597, 29.054792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121819, 0.734233, 0.667879,
		-0.039829, 0.668733, -0.742436,
		-0.991753, -0.117044, -0.052221,
		34.889141, 35.122482, 29.039125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364166, 35.858284, 29.000948>,  <35.583370, 35.204414, 29.075680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364166, 35.858284, 29.000948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.037560, 35.659851, 29.119070>,  <34.841595, 35.540791, 29.189943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.037560, 35.659851, 29.119070>,  <35.364166, 35.858284, 29.000948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037560, 35.659851, 29.119070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195796, 0.719138, 0.666712,
		-0.543113, 0.486559, -0.684317,
		-0.816512, -0.496086, 0.295307,
		34.792606, 35.511024, 29.207663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814518, 36.292686, 29.015053>,  <35.364166, 35.858284, 29.000948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814518, 36.292686, 29.015053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695789, 35.983368, 29.239161>,  <34.624550, 35.797775, 29.373625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695789, 35.983368, 29.239161>,  <34.814518, 36.292686, 29.015053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695789, 35.983368, 29.239161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199755, 0.624012, 0.755451,
		-0.933805, 0.112320, -0.339694,
		-0.296826, -0.773300, 0.560270,
		34.606743, 35.751377, 29.407242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044472, 36.492073, 29.283630>,  <34.814518, 36.292686, 29.015053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044472, 36.492073, 29.283630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.219372, 36.218460, 29.517179>,  <34.324314, 36.054291, 29.657309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.219372, 36.218460, 29.517179>,  <34.044472, 36.492073, 29.283630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219372, 36.218460, 29.517179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211261, 0.552934, 0.805998,
		-0.874174, -0.475774, 0.097261,
		0.437252, -0.684035, 0.583873,
		34.350548, 36.013248, 29.692341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602306, 36.546597, 29.762360>,  <34.044472, 36.492073, 29.283630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602306, 36.546597, 29.762360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.914387, 36.363625, 29.933029>,  <34.101635, 36.253841, 30.035431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.914387, 36.363625, 29.933029>,  <33.602306, 36.546597, 29.762360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914387, 36.363625, 29.933029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184453, 0.483533, 0.855671,
		-0.597715, -0.746296, 0.292879,
		0.780201, -0.457426, 0.426672,
		34.148445, 36.226398, 30.061031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330627, 36.364182, 30.370296>,  <33.602306, 36.546597, 29.762360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330627, 36.364182, 30.370296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.726135, 36.332520, 30.421017>,  <33.963440, 36.313522, 30.451448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.726135, 36.332520, 30.421017>,  <33.330627, 36.364182, 30.370296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726135, 36.332520, 30.421017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092446, 0.342758, 0.934864,
		-0.117465, -0.936083, 0.331589,
		0.988765, -0.079160, 0.126799,
		34.022766, 36.308773, 30.459057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500011, 36.172958, 31.105946>,  <33.330627, 36.364182, 30.370296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500011, 36.172958, 31.105946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.830795, 36.344173, 30.960112>,  <34.029266, 36.446903, 30.872612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.830795, 36.344173, 30.960112>,  <33.500011, 36.172958, 31.105946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830795, 36.344173, 30.960112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057181, 0.581034, 0.811868,
		0.559344, -0.692230, 0.456017,
		0.826961, 0.428038, -0.364581,
		34.078884, 36.472588, 30.850737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928680, 36.236824, 31.781328>,  <33.500011, 36.172958, 31.105946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928680, 36.236824, 31.781328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.071423, 36.484886, 31.501883>,  <34.157066, 36.633724, 31.334215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.071423, 36.484886, 31.501883>,  <33.928680, 36.236824, 31.781328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071423, 36.484886, 31.501883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213464, 0.673933, 0.707282,
		0.909445, -0.401524, 0.108113,
		0.356852, 0.620155, -0.698616,
		34.178478, 36.670933, 31.292297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479004, 36.507538, 32.079700>,  <33.928680, 36.236824, 31.781328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479004, 36.507538, 32.079700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.386887, 36.785130, 31.806831>,  <34.331615, 36.951683, 31.643110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.386887, 36.785130, 31.806831>,  <34.479004, 36.507538, 32.079700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386887, 36.785130, 31.806831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247834, 0.719724, 0.648518,
		0.941033, -0.019716, -0.337740,
		-0.230294, 0.693980, -0.682171,
		34.317799, 36.993324, 31.602180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984135, 36.925797, 32.134296>,  <34.479004, 36.507538, 32.079700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984135, 36.925797, 32.134296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.687592, 37.126617, 31.956156>,  <34.509666, 37.247108, 31.849272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.687592, 37.126617, 31.956156>,  <34.984135, 36.925797, 32.134296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687592, 37.126617, 31.956156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101967, 0.740164, 0.664650,
		0.663320, 0.447331, -0.599918,
		-0.741357, 0.502048, -0.445352,
		34.465183, 37.277233, 31.822550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121403, 37.574120, 32.334339>,  <34.984135, 36.925797, 32.134296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121403, 37.574120, 32.334339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.766453, 37.631973, 32.159229>,  <34.553482, 37.666683, 32.054165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.766453, 37.631973, 32.159229>,  <35.121403, 37.574120, 32.334339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766453, 37.631973, 32.159229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119661, 0.844736, 0.521634,
		0.445247, 0.515270, -0.732292,
		-0.887376, 0.144629, -0.437774,
		34.500240, 37.675362, 32.027897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157505, 38.200245, 31.789770>,  <35.121403, 37.574120, 32.334339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157505, 38.200245, 31.789770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.783108, 38.152943, 31.922396>,  <34.558468, 38.124561, 32.001972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.783108, 38.152943, 31.922396>,  <35.157505, 38.200245, 31.789770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783108, 38.152943, 31.922396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067771, 0.863730, 0.499377,
		-0.345437, 0.489883, -0.800430,
		-0.935992, -0.118257, 0.331564,
		34.502312, 38.117466, 32.021866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755192, 38.825821, 31.713205>,  <35.157505, 38.200245, 31.789770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755192, 38.825821, 31.713205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.561543, 38.620533, 31.996677>,  <34.445354, 38.497360, 32.166759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.561543, 38.620533, 31.996677>,  <34.755192, 38.825821, 31.713205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561543, 38.620533, 31.996677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188401, 0.729782, 0.657208,
		-0.854478, 0.451684, -0.256610,
		-0.484120, -0.513224, 0.708681,
		34.416306, 38.466564, 32.209282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307693, 39.340889, 32.133980>,  <34.755192, 38.825821, 31.713205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307693, 39.340889, 32.133980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.399490, 39.015717, 32.348072>,  <34.454567, 38.820614, 32.476528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.399490, 39.015717, 32.348072>,  <34.307693, 39.340889, 32.133980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399490, 39.015717, 32.348072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383694, 0.580936, 0.717839,
		-0.894490, 0.040627, 0.445238,
		0.229491, -0.812935, 0.535230,
		34.468338, 38.771835, 32.508640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925766, 38.980057, 31.562269>,  <34.307693, 39.340889, 32.133980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925766, 38.980057, 31.562269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.143066, 39.315441, 31.545021>,  <34.273445, 39.516674, 31.534672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.143066, 39.315441, 31.545021>,  <33.925766, 38.980057, 31.562269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143066, 39.315441, 31.545021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512469, -0.371837, -0.774024,
		-0.665025, 0.398389, -0.631687,
		0.543247, 0.838465, -0.043119,
		34.306042, 39.566982, 31.532085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910805, 39.285797, 30.805471>,  <33.925766, 38.980057, 31.562269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910805, 39.285797, 30.805471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.253933, 39.422165, 30.959311>,  <34.459812, 39.503986, 31.051613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.253933, 39.422165, 30.959311>,  <33.910805, 39.285797, 30.805471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253933, 39.422165, 30.959311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475420, -0.242110, -0.845789,
		-0.195228, 0.908383, -0.369765,
		0.857824, 0.340915, 0.384597,
		34.511280, 39.524441, 31.074690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.216972, 39.765621, 30.328440>,  <33.910805, 39.285797, 30.805471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.216972, 39.765621, 30.328440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.521568, 39.628239, 30.548323>,  <34.704327, 39.545811, 30.680252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.521568, 39.628239, 30.548323>,  <34.216972, 39.765621, 30.328440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521568, 39.628239, 30.548323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517506, -0.188504, -0.834658,
		0.390291, 0.920056, 0.034197,
		0.761486, -0.343457, 0.549706,
		34.750015, 39.525200, 30.713234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781261, 39.998192, 29.994169>,  <34.216972, 39.765621, 30.328440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781261, 39.998192, 29.994169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.947762, 39.742115, 30.252438>,  <35.047661, 39.588470, 30.407398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.947762, 39.742115, 30.252438>,  <34.781261, 39.998192, 29.994169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947762, 39.742115, 30.252438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713820, -0.209767, -0.668176,
		0.563200, 0.739021, 0.369665,
		0.416253, -0.640191, 0.645669,
		35.072636, 39.550056, 30.446138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569481, 40.152431, 30.195482>,  <34.781261, 39.998192, 29.994169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569481, 40.152431, 30.195482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.473747, 39.765949, 30.233774>,  <35.416306, 39.534061, 30.256750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.473747, 39.765949, 30.233774>,  <35.569481, 40.152431, 30.195482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473747, 39.765949, 30.233774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722352, -0.243077, -0.647396,
		0.648787, -0.085796, 0.756118,
		-0.239339, -0.966205, 0.095730,
		35.401947, 39.476089, 30.262493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176617, 39.811138, 30.241957>,  <35.569481, 40.152431, 30.195482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176617, 39.811138, 30.241957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.925621, 39.514942, 30.145681>,  <35.775024, 39.337223, 30.087915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.925621, 39.514942, 30.145681>,  <36.176617, 39.811138, 30.241957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925621, 39.514942, 30.145681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638215, -0.312071, -0.703771,
		0.446023, -0.595221, 0.668413,
		-0.627491, -0.740489, -0.240688,
		35.737373, 39.292797, 30.073475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643459, 39.331589, 30.117319>,  <36.176617, 39.811138, 30.241957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643459, 39.331589, 30.117319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.300098, 39.220043, 29.945093>,  <36.094082, 39.153114, 29.841759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.300098, 39.220043, 29.945093>,  <36.643459, 39.331589, 30.117319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300098, 39.220043, 29.945093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486390, -0.175724, -0.855889,
		0.163017, -0.944116, 0.286479,
		-0.858400, -0.278865, -0.430563,
		36.042580, 39.136383, 29.815924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772655, 38.660686, 29.789602>,  <36.643459, 39.331589, 30.117319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772655, 38.660686, 29.789602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.444077, 38.788731, 29.600813>,  <36.246929, 38.865555, 29.487539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.444077, 38.788731, 29.600813>,  <36.772655, 38.660686, 29.789602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444077, 38.788731, 29.600813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359781, -0.351241, -0.864400,
		-0.442478, -0.879864, 0.173356,
		-0.821444, 0.320108, -0.471975,
		36.197643, 38.884762, 29.459221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705063, 38.196590, 29.284367>,  <36.772655, 38.660686, 29.789602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705063, 38.196590, 29.284367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.469120, 38.495136, 29.161074>,  <36.327557, 38.674263, 29.087097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.469120, 38.495136, 29.161074>,  <36.705063, 38.196590, 29.284367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469120, 38.495136, 29.161074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307178, -0.145620, -0.940445,
		-0.746803, -0.649407, -0.143373,
		-0.589853, 0.746368, -0.308233,
		36.292164, 38.719048, 29.068604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183872, 37.876240, 28.821968>,  <36.705063, 38.196590, 29.284367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183872, 37.876240, 28.821968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.242249, 38.265377, 28.750113>,  <36.277275, 38.498859, 28.706999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.242249, 38.265377, 28.750113>,  <36.183872, 37.876240, 28.821968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242249, 38.265377, 28.750113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237275, -0.210706, -0.948316,
		-0.960417, 0.095775, -0.261583,
		0.145942, 0.972846, -0.179641,
		36.286030, 38.557232, 28.696220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891094, 38.065559, 28.114531>,  <36.183872, 37.876240, 28.821968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891094, 38.065559, 28.114531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.138515, 38.365952, 28.206985>,  <36.286968, 38.546185, 28.262459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.138515, 38.365952, 28.206985>,  <35.891094, 38.065559, 28.114531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138515, 38.365952, 28.206985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381724, -0.030091, -0.923786,
		-0.686787, 0.659643, -0.305279,
		0.618555, 0.750977, 0.231136,
		36.324081, 38.591244, 28.276327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901394, 38.417538, 27.467003>,  <35.891094, 38.065559, 28.114531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901394, 38.417538, 27.467003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.200890, 38.586956, 27.670965>,  <36.380585, 38.688606, 27.793343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.200890, 38.586956, 27.670965>,  <35.901394, 38.417538, 27.467003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200890, 38.586956, 27.670965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578958, -0.043248, -0.814210,
		-0.322804, 0.904841, -0.277597,
		0.748736, 0.423547, 0.509905,
		36.425510, 38.714020, 27.823936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171654, 38.999702, 27.105240>,  <35.901394, 38.417538, 27.467003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171654, 38.999702, 27.105240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.472450, 38.896481, 27.347864>,  <36.652927, 38.834549, 27.493439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.472450, 38.896481, 27.347864>,  <36.171654, 38.999702, 27.105240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472450, 38.896481, 27.347864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592716, -0.137936, -0.793512,
		0.288436, 0.956233, 0.049226,
		0.751992, -0.258054, 0.606560,
		36.698048, 38.819065, 27.529833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675297, 39.455231, 27.002373>,  <36.171654, 38.999702, 27.105240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675297, 39.455231, 27.002373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.867836, 39.132874, 27.140263>,  <36.983360, 38.939457, 27.222996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.867836, 39.132874, 27.140263>,  <36.675297, 39.455231, 27.002373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867836, 39.132874, 27.140263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598374, 0.014737, -0.801081,
		0.640507, 0.591875, 0.489321,
		0.481351, -0.805895, 0.344724,
		37.012241, 38.891106, 27.243679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339638, 39.471916, 26.698835>,  <36.675297, 39.455231, 27.002373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339638, 39.471916, 26.698835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.318462, 39.099434, 26.843084>,  <37.305756, 38.875942, 26.929634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.318462, 39.099434, 26.843084>,  <37.339638, 39.471916, 26.698835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318462, 39.099434, 26.843084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624376, -0.312700, -0.715802,
		0.779327, 0.187267, 0.597980,
		-0.052942, -0.931209, 0.360621,
		37.302578, 38.820072, 26.951271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948761, 39.254471, 26.672241>,  <37.339638, 39.471916, 26.698835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948761, 39.254471, 26.672241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.753014, 38.906330, 26.694212>,  <37.635567, 38.697445, 26.707394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.753014, 38.906330, 26.694212>,  <37.948761, 39.254471, 26.672241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753014, 38.906330, 26.694212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569183, -0.366480, -0.736018,
		0.660721, -0.328918, 0.674730,
		-0.489365, -0.870348, 0.054927,
		37.606205, 38.645226, 26.710690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489185, 38.832088, 26.564112>,  <37.948761, 39.254471, 26.672241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489185, 38.832088, 26.564112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.145760, 38.655373, 26.460043>,  <37.939705, 38.549343, 26.397602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.145760, 38.655373, 26.460043>,  <38.489185, 38.832088, 26.564112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145760, 38.655373, 26.460043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386491, -0.224251, -0.894615,
		0.336889, -0.868638, 0.363282,
		-0.858563, -0.441791, -0.260173,
		37.888191, 38.522835, 26.381990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712997, 38.279610, 26.248945>,  <38.489185, 38.832088, 26.564112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712997, 38.279610, 26.248945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.334599, 38.305351, 26.121855>,  <38.107559, 38.320797, 26.045601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.334599, 38.305351, 26.121855>,  <38.712997, 38.279610, 26.248945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334599, 38.305351, 26.121855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287518, -0.286180, -0.914021,
		-0.149746, -0.956012, 0.252223,
		-0.945996, 0.064352, -0.317726,
		38.050800, 38.324657, 26.026537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636463, 37.697468, 25.824181>,  <38.712997, 38.279610, 26.248945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636463, 37.697468, 25.824181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.324398, 37.916786, 25.703709>,  <38.137157, 38.048378, 25.631426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.324398, 37.916786, 25.703709>,  <38.636463, 37.697468, 25.824181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324398, 37.916786, 25.703709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210466, -0.223329, -0.951750,
		-0.589107, -0.805910, 0.058834,
		-0.780164, 0.548300, -0.301182,
		38.090347, 38.081276, 25.613354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118198, 37.303558, 25.420092>,  <38.636463, 37.697468, 25.824181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118198, 37.303558, 25.420092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.099174, 37.687485, 25.309465>,  <38.087761, 37.917839, 25.243090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.099174, 37.687485, 25.309465>,  <38.118198, 37.303558, 25.420092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099174, 37.687485, 25.309465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320539, -0.247571, -0.914311,
		-0.946041, -0.132139, -0.295883,
		-0.047564, 0.959817, -0.276567,
		38.084904, 37.975430, 25.226496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715569, 37.381584, 24.832788>,  <38.118198, 37.303558, 25.420092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715569, 37.381584, 24.832788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.910175, 37.730721, 24.817545>,  <38.026939, 37.940201, 24.808399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.910175, 37.730721, 24.817545>,  <37.715569, 37.381584, 24.832788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910175, 37.730721, 24.817545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350307, -0.234849, -0.906714,
		-0.800364, 0.427786, -0.420020,
		0.486521, 0.872837, -0.038108,
		38.056133, 37.992573, 24.806112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647881, 37.487026, 24.175406>,  <37.715569, 37.381584, 24.832788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647881, 37.487026, 24.175406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.924553, 37.769730, 24.234827>,  <38.090557, 37.939350, 24.270481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.924553, 37.769730, 24.234827>,  <37.647881, 37.487026, 24.175406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924553, 37.769730, 24.234827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330250, -0.126600, -0.935365,
		-0.642268, 0.696037, -0.320974,
		0.691684, 0.706756, 0.148555,
		38.132057, 37.981758, 24.279394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725010, 37.936001, 23.665258>,  <37.647881, 37.487026, 24.175406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725010, 37.936001, 23.665258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.096695, 37.974537, 23.807961>,  <38.319706, 37.997658, 23.893581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.096695, 37.974537, 23.807961>,  <37.725010, 37.936001, 23.665258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096695, 37.974537, 23.807961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369510, -0.253663, -0.893934,
		0.004375, 0.962483, -0.271306,
		0.929217, 0.096339, 0.356757,
		38.375462, 38.003437, 23.914988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.106449, 38.344635, 23.141068>,  <37.725010, 37.936001, 23.665258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.106449, 38.344635, 23.141068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.387329, 38.162712, 23.360180>,  <38.555859, 38.053558, 23.491648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.387329, 38.162712, 23.360180>,  <38.106449, 38.344635, 23.141068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387329, 38.162712, 23.360180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514157, -0.208275, -0.832024,
		0.492499, 0.865894, 0.087592,
		0.702201, -0.454807, 0.547781,
		38.597988, 38.026272, 23.524513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811031, 38.489750, 22.892635>,  <38.106449, 38.344635, 23.141068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811031, 38.489750, 22.892635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.869999, 38.161728, 23.113827>,  <38.905380, 37.964916, 23.246542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.869999, 38.161728, 23.113827>,  <38.811031, 38.489750, 22.892635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869999, 38.161728, 23.113827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641002, -0.346572, -0.684839,
		0.753250, 0.455416, 0.474564,
		0.147416, -0.820052, 0.552978,
		38.914223, 37.915714, 23.279720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561108, 38.479374, 22.928200>,  <38.811031, 38.489750, 22.892635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561108, 38.479374, 22.928200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.432732, 38.109711, 23.011082>,  <39.355705, 37.887913, 23.060812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.432732, 38.109711, 23.011082>,  <39.561108, 38.479374, 22.928200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432732, 38.109711, 23.011082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536521, -0.357695, -0.764329,
		0.780475, -0.134134, 0.610628,
		-0.320941, -0.924155, 0.207207,
		39.336449, 37.832466, 23.073244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124268, 38.013245, 22.972868>,  <39.561108, 38.479374, 22.928200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124268, 38.013245, 22.972868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.802040, 37.797638, 22.874466>,  <39.608704, 37.668274, 22.815424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.802040, 37.797638, 22.874466>,  <40.124268, 38.013245, 22.972868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802040, 37.797638, 22.874466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528976, -0.467229, -0.708436,
		0.266920, -0.700824, 0.661512,
		-0.805567, -0.539020, -0.246007,
		39.560371, 37.635933, 22.800663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526646, 37.605194, 23.446466>,  <40.124268, 38.013245, 22.972868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526646, 37.605194, 23.446466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.884979, 37.692707, 23.601187>,  <41.099979, 37.745216, 23.694019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.884979, 37.692707, 23.601187>,  <40.526646, 37.605194, 23.446466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884979, 37.692707, 23.601187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420009, 0.132517, 0.897792,
		0.145155, -0.966736, 0.210600,
		0.895836, 0.218773, 0.386803,
		41.153728, 37.758343, 23.717226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444206, 37.488129, 24.106983>,  <40.526646, 37.605194, 23.446466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444206, 37.488129, 24.106983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.793152, 37.683662, 24.109140>,  <41.002518, 37.800983, 24.110434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.793152, 37.683662, 24.109140>,  <40.444206, 37.488129, 24.106983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793152, 37.683662, 24.109140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153635, 0.263671, 0.952299,
		0.464092, -0.831578, 0.305118,
		0.872362, 0.488831, 0.005391,
		41.054859, 37.830311, 24.110758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706551, 37.133240, 24.682272>,  <40.444206, 37.488129, 24.106983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706551, 37.133240, 24.682272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.866161, 37.494774, 24.620487>,  <40.961926, 37.711697, 24.583416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.866161, 37.494774, 24.620487>,  <40.706551, 37.133240, 24.682272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866161, 37.494774, 24.620487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158732, 0.233996, 0.959192,
		0.903097, -0.358223, 0.236838,
		0.399024, 0.903837, -0.154460,
		40.985870, 37.765926, 24.574150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322140, 37.106617, 25.048704>,  <40.706551, 37.133240, 24.682272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322140, 37.106617, 25.048704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.216888, 37.489246, 24.998522>,  <41.153740, 37.718822, 24.968412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.216888, 37.489246, 24.998522>,  <41.322140, 37.106617, 25.048704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216888, 37.489246, 24.998522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175505, 0.080407, 0.981189,
		0.948664, 0.280193, 0.146726,
		-0.263124, 0.956570, -0.125454,
		41.137951, 37.776218, 24.960886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677116, 37.393539, 25.567690>,  <41.322140, 37.106617, 25.048704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677116, 37.393539, 25.567690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.383007, 37.646275, 25.469582>,  <41.206543, 37.797916, 25.410717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.383007, 37.646275, 25.469582>,  <41.677116, 37.393539, 25.567690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383007, 37.646275, 25.469582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054683, 0.305395, 0.950654,
		0.675564, 0.712400, -0.189998,
		-0.735271, 0.631838, -0.245270,
		41.162426, 37.835827, 25.396000>
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
