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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.658829, 17.161812, -1.876965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.833725, 17.024445, -2.209444>,  <22.938662, 16.942024, -2.408931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.833725, 17.024445, -2.209444>,  <22.658829, 17.161812, -1.876965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.833725, 17.024445, -2.209444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898430, 0.125095, 0.420922,
		-0.040573, -0.930815, 0.363232,
		0.437239, -0.343416, -0.831197,
		22.964897, 16.921419, -2.458803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.971266, 16.596937, -1.615698>,  <22.658829, 17.161812, -1.876965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.971266, 16.596937, -1.615698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.180836, 16.743275, -1.923376>,  <23.306578, 16.831078, -2.107983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.180836, 16.743275, -1.923376>,  <22.971266, 16.596937, -1.615698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.180836, 16.743275, -1.923376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796423, 0.109792, 0.594690,
		0.302016, -0.924177, -0.233844,
		0.523924, 0.365845, -0.769195,
		23.338013, 16.853027, -2.154135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.628204, 16.176773, -1.837441>,  <22.971266, 16.596937, -1.615698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.628204, 16.176773, -1.837441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.645756, 16.571712, -1.898386>,  <23.656286, 16.808676, -1.934952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.645756, 16.571712, -1.898386>,  <23.628204, 16.176773, -1.837441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.645756, 16.571712, -1.898386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619467, 0.092762, 0.779523,
		0.783796, -0.128586, -0.607561,
		0.043877, 0.987350, -0.152361,
		23.658918, 16.867918, -1.944094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.367060, 16.510992, -1.780392>,  <23.628204, 16.176773, -1.837441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.367060, 16.510992, -1.780392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.054764, 16.736286, -1.672161>,  <23.867386, 16.871462, -1.607222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.054764, 16.736286, -1.672161>,  <24.367060, 16.510992, -1.780392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.054764, 16.736286, -1.672161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443809, 0.195018, 0.874644,
		0.439860, 0.802955, -0.402227,
		-0.780741, 0.563233, 0.270578,
		23.820541, 16.905256, -1.590987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.597944, 17.184048, -1.679918>,  <24.367060, 16.510992, -1.780392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.597944, 17.184048, -1.679918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.275429, 17.135433, -1.448358>,  <24.081919, 17.106264, -1.309422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.275429, 17.135433, -1.448358>,  <24.597944, 17.184048, -1.679918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.275429, 17.135433, -1.448358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525813, 0.301034, 0.795550,
		-0.270958, 0.945837, -0.178815,
		-0.806289, -0.121538, 0.578901,
		24.033543, 17.098972, -1.274688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.429981, 17.768396, -1.460861>,  <24.597944, 17.184048, -1.679918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.429981, 17.768396, -1.460861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301849, 17.507420, -1.186138>,  <24.224970, 17.350834, -1.021304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301849, 17.507420, -1.186138>,  <24.429981, 17.768396, -1.460861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.301849, 17.507420, -1.186138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555688, 0.457755, 0.694025,
		-0.767203, 0.603968, 0.215922,
		-0.320330, -0.652443, 0.686809,
		24.205750, 17.311687, -0.980095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.440100, 18.196032, -0.935215>,  <24.429981, 17.768396, -1.460861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.440100, 18.196032, -0.935215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.413383, 17.821018, -0.798644>,  <24.397354, 17.596010, -0.716702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.413383, 17.821018, -0.798644>,  <24.440100, 18.196032, -0.935215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.413383, 17.821018, -0.798644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591053, 0.238515, 0.770563,
		-0.803863, 0.253267, 0.538201,
		-0.066789, -0.937532, 0.341428,
		24.393347, 17.539759, -0.696216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.197924, 18.200314, -0.237873>,  <24.440100, 18.196032, -0.935215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.197924, 18.200314, -0.237873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.440704, 17.895729, -0.328899>,  <24.586372, 17.712978, -0.383514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.440704, 17.895729, -0.328899>,  <24.197924, 18.200314, -0.237873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.440704, 17.895729, -0.328899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691424, 0.364762, 0.623604,
		-0.391843, -0.535842, 0.747885,
		0.606953, -0.761461, -0.227564,
		24.622789, 17.667292, -0.397168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.715511, 18.279932, 0.298316>,  <24.197924, 18.200314, -0.237873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.715511, 18.279932, 0.298316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.860004, 17.990406, 0.063164>,  <24.946701, 17.816690, -0.077927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.860004, 17.990406, 0.063164>,  <24.715511, 18.279932, 0.298316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.860004, 17.990406, 0.063164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924252, 0.194381, 0.328595,
		-0.123569, -0.662049, 0.739204,
		0.361233, -0.723815, -0.587880,
		24.968374, 17.773262, -0.113200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.052345, 17.768740, 0.643231>,  <24.715511, 18.279932, 0.298316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.052345, 17.768740, 0.643231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.241573, 17.736130, 0.292332>,  <25.355110, 17.716564, 0.081793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.241573, 17.736130, 0.292332>,  <25.052345, 17.768740, 0.643231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.241573, 17.736130, 0.292332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879363, -0.017452, 0.475832,
		-0.054102, -0.996519, 0.063433,
		0.473069, -0.081524, -0.877246,
		25.383493, 17.711674, 0.029159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.603638, 17.181934, 0.739140>,  <25.052345, 17.768740, 0.643231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.603638, 17.181934, 0.739140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683205, 17.478840, 0.483179>,  <25.730946, 17.656982, 0.329602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683205, 17.478840, 0.483179>,  <25.603638, 17.181934, 0.739140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.683205, 17.478840, 0.483179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901332, 0.117781, 0.416808,
		0.384749, -0.659676, -0.645597,
		0.198919, 0.742263, -0.639903,
		25.742880, 17.701519, 0.291208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.313158, 17.061035, 0.374177>,  <25.603638, 17.181934, 0.739140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.313158, 17.061035, 0.374177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234283, 17.447876, 0.438462>,  <26.186958, 17.679981, 0.477033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234283, 17.447876, 0.438462>,  <26.313158, 17.061035, 0.374177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234283, 17.447876, 0.438462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928816, 0.131834, 0.346295,
		0.313715, 0.217558, -0.924257,
		-0.197188, 0.967103, 0.160713,
		26.175127, 17.738007, 0.486676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683479, 17.455650, -0.066942>,  <26.313158, 17.061035, 0.374177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683479, 17.455650, -0.066942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586700, 17.630707, 0.279452>,  <26.528633, 17.735741, 0.487289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586700, 17.630707, 0.279452>,  <26.683479, 17.455650, -0.066942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.586700, 17.630707, 0.279452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932014, -0.143383, 0.332853,
		0.269837, 0.887644, -0.373196,
		-0.241945, 0.437641, 0.865987,
		26.514116, 17.761999, 0.539248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117977, 18.050667, 0.130822>,  <26.683479, 17.455650, -0.066942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117977, 18.050667, 0.130822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.989456, 17.913029, 0.483722>,  <26.912344, 17.830446, 0.695462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.989456, 17.913029, 0.483722>,  <27.117977, 18.050667, 0.130822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.989456, 17.913029, 0.483722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929311, 0.064544, 0.363614,
		-0.182062, 0.936714, 0.299032,
		-0.321301, -0.344094, 0.882250,
		26.893066, 17.809801, 0.748397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.295664, 18.512623, 0.668411>,  <27.117977, 18.050667, 0.130822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.295664, 18.512623, 0.668411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269588, 18.136631, 0.802388>,  <27.253944, 17.911036, 0.882774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.269588, 18.136631, 0.802388>,  <27.295664, 18.512623, 0.668411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.269588, 18.136631, 0.802388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919081, 0.074171, 0.387026,
		-0.388641, 0.333069, 0.859083,
		-0.065187, -0.939981, 0.334943,
		27.250032, 17.854637, 0.902871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.412252, 18.465710, 1.393309>,  <27.295664, 18.512623, 0.668411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.412252, 18.465710, 1.393309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.520893, 18.116394, 1.231518>,  <27.586077, 17.906805, 1.134443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.520893, 18.116394, 1.231518>,  <27.412252, 18.465710, 1.393309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.520893, 18.116394, 1.231518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870741, 0.043962, 0.489772,
		-0.409930, -0.485219, 0.772347,
		0.271600, -0.873287, -0.404479,
		27.602373, 17.854408, 1.110174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861895, 18.281677, 1.859205>,  <27.412252, 18.465710, 1.393309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861895, 18.281677, 1.859205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900581, 18.583092, 2.119305>,  <26.923794, 18.763941, 2.275366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.900581, 18.583092, 2.119305>,  <26.861895, 18.281677, 1.859205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900581, 18.583092, 2.119305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740788, -0.381833, 0.552664,
		0.664741, -0.535148, 0.521283,
		0.096715, 0.753538, 0.650251,
		26.929596, 18.809153, 2.314381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793791, 18.109270, 2.594886>,  <26.861895, 18.281677, 1.859205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793791, 18.109270, 2.594886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662647, 18.479576, 2.519556>,  <26.583961, 18.701759, 2.474358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662647, 18.479576, 2.519556>,  <26.793791, 18.109270, 2.594886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662647, 18.479576, 2.519556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873808, -0.221385, 0.432953,
		0.359120, 0.306508, 0.881525,
		-0.327860, 0.925765, -0.188325,
		26.564289, 18.757305, 2.463059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.599039, 18.538349, 3.147056>,  <26.793791, 18.109270, 2.594886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.599039, 18.538349, 3.147056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.382233, 18.631222, 2.823993>,  <26.252150, 18.686945, 2.630155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.382233, 18.631222, 2.823993>,  <26.599039, 18.538349, 3.147056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.382233, 18.631222, 2.823993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839567, -0.191597, 0.508348,
		-0.036716, 0.953615, 0.298780,
		-0.542014, 0.232182, -0.807659,
		26.219629, 18.700876, 2.581695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.183775, 19.082827, 2.920321>,  <26.599039, 18.538349, 3.147056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.183775, 19.082827, 2.920321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030388, 18.795357, 2.688298>,  <25.938356, 18.622875, 2.549085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030388, 18.795357, 2.688298>,  <26.183775, 19.082827, 2.920321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.030388, 18.795357, 2.688298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779589, -0.084862, 0.620516,
		-0.495172, 0.690151, -0.527727,
		-0.383466, -0.718672, -0.580055,
		25.915348, 18.579756, 2.514282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531010, 19.329594, 2.614485>,  <26.183775, 19.082827, 2.920321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.531010, 19.329594, 2.614485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.553745, 18.941139, 2.707148>,  <25.567387, 18.708067, 2.762746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.553745, 18.941139, 2.707148>,  <25.531010, 19.329594, 2.614485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.553745, 18.941139, 2.707148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726740, 0.118853, 0.676552,
		-0.684557, -0.206808, -0.699008,
		0.056837, -0.971136, 0.231658,
		25.570797, 18.649799, 2.776646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.861845, 18.947107, 2.484707>,  <25.531010, 19.329594, 2.614485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.861845, 18.947107, 2.484707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.083992, 18.807186, 2.786490>,  <25.217281, 18.723234, 2.967559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.083992, 18.807186, 2.786490>,  <24.861845, 18.947107, 2.484707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.083992, 18.807186, 2.786490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751896, 0.176361, 0.635255,
		-0.355270, -0.920073, -0.165070,
		0.555369, -0.349802, 0.754456,
		25.250603, 18.702246, 3.012826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.475166, 18.382748, 2.693120>,  <24.861845, 18.947107, 2.484707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.475166, 18.382748, 2.693120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.705334, 18.575993, 2.957088>,  <24.843435, 18.691940, 3.115469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.705334, 18.575993, 2.957088>,  <24.475166, 18.382748, 2.693120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.705334, 18.575993, 2.957088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802795, 0.179495, 0.568597,
		0.156245, -0.856961, 0.491127,
		0.575420, 0.483114, 0.659919,
		24.877960, 18.720926, 3.155064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.276371, 18.160553, 3.411992>,  <24.475166, 18.382748, 2.693120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.276371, 18.160553, 3.411992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.465366, 18.512661, 3.394645>,  <24.578764, 18.723927, 3.384237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.465366, 18.512661, 3.394645>,  <24.276371, 18.160553, 3.411992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.465366, 18.512661, 3.394645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723134, 0.415334, 0.551884,
		0.503817, -0.229399, 0.832793,
		0.472489, 0.880269, -0.043366,
		24.607113, 18.776741, 3.381635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.360083, 18.427853, 4.203270>,  <24.276371, 18.160553, 3.411992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.360083, 18.427853, 4.203270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.266457, 18.628704, 3.870264>,  <24.210281, 18.749214, 3.670461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.266457, 18.628704, 3.870264>,  <24.360083, 18.427853, 4.203270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.266457, 18.628704, 3.870264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847848, 0.313630, 0.427541,
		0.475781, 0.805919, 0.352317,
		-0.234066, 0.502127, -0.832515,
		24.196238, 18.779343, 3.620510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.932711, 18.562618, 4.854173>,  <24.360083, 18.427853, 4.203270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.932711, 18.562618, 4.854173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.884117, 18.741600, 4.499766>,  <23.854961, 18.848989, 4.287122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.884117, 18.741600, 4.499766>,  <23.932711, 18.562618, 4.854173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.884117, 18.741600, 4.499766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782765, 0.505689, 0.362708,
		0.610345, 0.737605, 0.288821,
		-0.121482, 0.447457, -0.886016,
		23.847673, 18.875837, 4.233962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.903465, 19.301636, 4.943144>,  <23.932711, 18.562618, 4.854173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.903465, 19.301636, 4.943144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.667194, 19.156044, 4.655084>,  <23.525431, 19.068689, 4.482247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.667194, 19.156044, 4.655084>,  <23.903465, 19.301636, 4.943144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.667194, 19.156044, 4.655084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766774, 0.531153, 0.360464,
		0.251309, 0.765112, -0.592830,
		-0.590678, -0.363979, -0.720152,
		23.489990, 19.046850, 4.439038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.647352, 19.664600, 4.336960>,  <23.903465, 19.301636, 4.943144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.647352, 19.664600, 4.336960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.351284, 19.408325, 4.418608>,  <23.173643, 19.254560, 4.467597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.351284, 19.408325, 4.418608>,  <23.647352, 19.664600, 4.336960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.351284, 19.408325, 4.418608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541908, 0.748084, 0.383023,
		-0.398096, 0.172889, -0.900904,
		-0.740172, -0.640687, 0.204120,
		23.129232, 19.216120, 4.479844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.957834, 19.796696, 3.994627>,  <23.647352, 19.664600, 4.336960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.957834, 19.796696, 3.994627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.878334, 19.587349, 4.326069>,  <22.830633, 19.461740, 4.524934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.878334, 19.587349, 4.326069>,  <22.957834, 19.796696, 3.994627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.878334, 19.587349, 4.326069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525347, 0.770633, 0.360743,
		-0.827351, -0.363606, -0.428114,
		-0.198750, -0.523369, 0.828603,
		22.818708, 19.430338, 4.574650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.254564, 19.696190, 4.235694>,  <22.957834, 19.796696, 3.994627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.254564, 19.696190, 4.235694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.519024, 19.753048, 4.530360>,  <22.677700, 19.787163, 4.707160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.519024, 19.753048, 4.530360>,  <22.254564, 19.696190, 4.235694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.519024, 19.753048, 4.530360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450775, 0.860160, 0.238592,
		-0.599734, -0.489816, 0.632771,
		0.661151, 0.142146, 0.736664,
		22.717369, 19.795692, 4.751359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.793274, 19.934755, 4.830878>,  <22.254564, 19.696190, 4.235694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.793274, 19.934755, 4.830878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.176567, 20.048222, 4.816301>,  <22.406542, 20.116301, 4.807555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.176567, 20.048222, 4.816301>,  <21.793274, 19.934755, 4.830878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.176567, 20.048222, 4.816301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274362, 0.947732, 0.162880,
		0.080741, -0.146078, 0.985973,
		0.958231, 0.283664, -0.036442,
		22.464037, 20.133322, 4.805368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.034388, 19.794067, 5.094534>,  <21.793274, 19.934755, 4.830878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.034388, 19.794067, 5.094534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.007286, 19.487141, 4.839462>,  <20.991024, 19.302984, 4.686419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.007286, 19.487141, 4.839462>,  <21.034388, 19.794067, 5.094534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.007286, 19.487141, 4.839462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110309, -0.629468, 0.769157,
		-0.991585, 0.122456, -0.041992,
		-0.067755, -0.767317, -0.637679,
		20.986959, 19.256947, 4.648159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.348331, 19.341404, 5.258582>,  <21.034388, 19.794067, 5.094534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.348331, 19.341404, 5.258582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.705685, 19.215576, 5.130260>,  <20.920095, 19.140079, 5.053266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.705685, 19.215576, 5.130260>,  <20.348331, 19.341404, 5.258582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.705685, 19.215576, 5.130260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186814, -0.389297, 0.901969,
		-0.408627, -0.865731, -0.289022,
		0.893378, -0.314576, -0.320808,
		20.973700, 19.121206, 5.034018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.402168, 18.612936, 5.463377>,  <20.348331, 19.341404, 5.258582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.402168, 18.612936, 5.463377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.730350, 18.841400, 5.453332>,  <20.927259, 18.978479, 5.447305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.730350, 18.841400, 5.453332>,  <20.402168, 18.612936, 5.463377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.730350, 18.841400, 5.453332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248254, -0.316352, 0.915583,
		0.515001, -0.757427, -0.401345,
		0.820454, 0.571161, -0.025113,
		20.976486, 19.012749, 5.445798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.997847, 18.261513, 5.737547>,  <20.402168, 18.612936, 5.463377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.997847, 18.261513, 5.737547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.098560, 18.646835, 5.774730>,  <21.158989, 18.878029, 5.797039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.098560, 18.646835, 5.774730>,  <20.997847, 18.261513, 5.737547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.098560, 18.646835, 5.774730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289160, -0.166544, 0.942682,
		0.923575, -0.210473, -0.320483,
		0.251784, 0.963309, 0.092956,
		21.174095, 18.935827, 5.802617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.807055, 18.376987, 5.934851>,  <20.997847, 18.261513, 5.737547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.807055, 18.376987, 5.934851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.557495, 18.657135, 6.073549>,  <21.407759, 18.825224, 6.156768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.557495, 18.657135, 6.073549>,  <21.807055, 18.376987, 5.934851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.557495, 18.657135, 6.073549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227287, -0.261898, 0.937950,
		0.747723, 0.663997, 0.004213,
		-0.623899, 0.700370, 0.346745,
		21.370325, 18.867247, 6.177573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.045443, 18.441952, 6.566689>,  <21.807055, 18.376987, 5.934851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.045443, 18.441952, 6.566689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.712208, 18.660530, 6.601017>,  <21.512268, 18.791677, 6.621614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.712208, 18.660530, 6.601017>,  <22.045443, 18.441952, 6.566689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.712208, 18.660530, 6.601017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109725, -0.315320, 0.942621,
		0.542152, 0.775867, 0.322648,
		-0.833085, 0.546447, 0.085820,
		21.462282, 18.824465, 6.626763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.160408, 18.793232, 7.183850>,  <22.045443, 18.441952, 6.566689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.160408, 18.793232, 7.183850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.763062, 18.810280, 7.141125>,  <21.524654, 18.820509, 7.115489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.763062, 18.810280, 7.141125>,  <22.160408, 18.793232, 7.183850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.763062, 18.810280, 7.141125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110567, -0.098509, 0.988975,
		0.031626, 0.994223, 0.102568,
		-0.993365, 0.042618, -0.106813,
		21.465052, 18.823065, 7.109081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.964336, 19.331198, 7.638806>,  <22.160408, 18.793232, 7.183850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.964336, 19.331198, 7.638806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.654388, 19.093620, 7.552264>,  <21.468420, 18.951075, 7.500339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.654388, 19.093620, 7.552264>,  <21.964336, 19.331198, 7.638806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.654388, 19.093620, 7.552264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201742, -0.092003, 0.975108,
		-0.599063, 0.799230, -0.048533,
		-0.774870, -0.593942, -0.216354,
		21.421926, 18.915438, 7.487358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.454521, 19.525877, 8.100657>,  <21.964336, 19.331198, 7.638806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.454521, 19.525877, 8.100657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.314747, 19.166389, 7.994677>,  <21.230883, 18.950697, 7.931088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.314747, 19.166389, 7.994677>,  <21.454521, 19.525877, 8.100657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.314747, 19.166389, 7.994677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106454, -0.242866, 0.964201,
		-0.930894, 0.365130, -0.010806,
		-0.349434, -0.898719, -0.264952,
		21.209917, 18.896774, 7.915191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.855709, 19.424095, 8.547751>,  <21.454521, 19.525877, 8.100657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.855709, 19.424095, 8.547751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.979259, 19.069206, 8.410677>,  <21.053391, 18.856274, 8.328432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.979259, 19.069206, 8.410677>,  <20.855709, 19.424095, 8.547751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.979259, 19.069206, 8.410677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017075, -0.355074, 0.934682,
		-0.950949, -0.294552, -0.094525,
		0.308876, -0.887221, -0.342687,
		21.071922, 18.803040, 8.307871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.447060, 19.054279, 8.932000>,  <20.855709, 19.424095, 8.547751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.447060, 19.054279, 8.932000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.735813, 18.818649, 8.786741>,  <20.909065, 18.677271, 8.699586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.735813, 18.818649, 8.786741>,  <20.447060, 19.054279, 8.932000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.735813, 18.818649, 8.786741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152412, -0.376541, 0.913777,
		-0.675024, -0.714987, -0.182036,
		0.721882, -0.589077, -0.363146,
		20.952377, 18.641926, 8.677797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.376051, 18.464581, 9.190770>,  <20.447060, 19.054279, 8.932000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.376051, 18.464581, 9.190770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.763081, 18.477093, 9.090510>,  <20.995298, 18.484600, 9.030354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.763081, 18.477093, 9.090510>,  <20.376051, 18.464581, 9.190770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.763081, 18.477093, 9.090510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247614, -0.313528, 0.916727,
		-0.049911, -0.949064, -0.311106,
		0.967572, 0.031280, -0.250650,
		21.053352, 18.486477, 9.015315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.649843, 17.880594, 9.503666>,  <20.376051, 18.464581, 9.190770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.649843, 17.880594, 9.503666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.989292, 18.083607, 9.443999>,  <21.192963, 18.205414, 9.408199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.989292, 18.083607, 9.443999>,  <20.649843, 17.880594, 9.503666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.989292, 18.083607, 9.443999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269920, -0.172926, 0.947227,
		0.454952, -0.844103, -0.283742,
		0.848624, 0.507531, -0.149167,
		21.243879, 18.235867, 9.399249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.244688, 17.477797, 9.824670>,  <20.649843, 17.880594, 9.503666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.244688, 17.477797, 9.824670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.339554, 17.865730, 9.802146>,  <21.396473, 18.098492, 9.788631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.339554, 17.865730, 9.802146>,  <21.244688, 17.477797, 9.824670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.339554, 17.865730, 9.802146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403591, -0.045639, 0.913800,
		0.883666, -0.239449, -0.402241,
		0.237166, 0.969836, -0.056310,
		21.410704, 18.156681, 9.785253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.908228, 17.575520, 10.066982>,  <21.244688, 17.477797, 9.824670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.908228, 17.575520, 10.066982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.784214, 17.953514, 10.108706>,  <21.709805, 18.180311, 10.133740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.784214, 17.953514, 10.108706>,  <21.908228, 17.575520, 10.066982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.784214, 17.953514, 10.108706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501462, 0.069329, 0.862397,
		0.807721, 0.319682, -0.495369,
		-0.310036, 0.944985, 0.104310,
		21.691204, 18.237009, 10.139999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.543119, 17.932650, 10.344669>,  <21.908228, 17.575520, 10.066982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.543119, 17.932650, 10.344669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.248634, 18.196808, 10.403818>,  <22.071943, 18.355303, 10.439307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.248634, 18.196808, 10.403818>,  <22.543119, 17.932650, 10.344669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.248634, 18.196808, 10.403818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511399, 0.399783, 0.760687,
		0.443239, 0.635650, -0.632051,
		-0.736214, 0.660396, 0.147871,
		22.027771, 18.394926, 10.448179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.833776, 18.632114, 10.558774>,  <22.543119, 17.932650, 10.344669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.833776, 18.632114, 10.558774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.456310, 18.712952, 10.663579>,  <22.229830, 18.761454, 10.726461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.456310, 18.712952, 10.663579>,  <22.833776, 18.632114, 10.558774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.456310, 18.712952, 10.663579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321063, 0.367632, 0.872791,
		0.080061, 0.907747, -0.411807,
		-0.943668, 0.202092, 0.262011,
		22.173210, 18.773579, 10.742183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.746969, 19.323879, 10.737075>,  <22.833776, 18.632114, 10.558774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.746969, 19.323879, 10.737075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.501064, 19.089172, 10.947889>,  <22.353521, 18.948347, 11.074378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.501064, 19.089172, 10.947889>,  <22.746969, 19.323879, 10.737075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.501064, 19.089172, 10.947889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299750, 0.444266, 0.844262,
		-0.729531, 0.677000, -0.097234,
		-0.614763, -0.586770, 0.527037,
		22.316635, 18.913141, 11.106001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.502357, 19.648901, 11.224796>,  <22.746969, 19.323879, 10.737075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.502357, 19.648901, 11.224796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.391659, 19.307404, 11.401218>,  <22.325239, 19.102505, 11.507071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.391659, 19.307404, 11.401218>,  <22.502357, 19.648901, 11.224796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.391659, 19.307404, 11.401218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159387, 0.411842, 0.897208,
		-0.947632, 0.318598, 0.022100,
		-0.276747, -0.853745, 0.441055,
		22.308634, 19.051279, 11.533535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.087908, 19.860277, 11.741424>,  <22.502357, 19.648901, 11.224796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.087908, 19.860277, 11.741424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.212433, 19.494591, 11.845188>,  <22.287148, 19.275179, 11.907447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.212433, 19.494591, 11.845188>,  <22.087908, 19.860277, 11.741424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.212433, 19.494591, 11.845188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192267, 0.327924, 0.924932,
		-0.930654, -0.238069, 0.277861,
		0.311315, -0.914215, 0.259411,
		22.305828, 19.220325, 11.923012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.878349, 19.805151, 12.494785>,  <22.087908, 19.860277, 11.741424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.878349, 19.805151, 12.494785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.142040, 19.505768, 12.465863>,  <22.300255, 19.326138, 12.448510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.142040, 19.505768, 12.465863>,  <21.878349, 19.805151, 12.494785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.142040, 19.505768, 12.465863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330276, 0.201824, 0.922055,
		-0.675527, -0.631725, 0.380246,
		0.659228, -0.748459, -0.072306,
		22.339809, 19.281231, 12.444172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.888060, 19.470289, 13.116264>,  <21.878349, 19.805151, 12.494785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.888060, 19.470289, 13.116264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.236279, 19.361046, 12.952528>,  <22.445210, 19.295500, 12.854286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.236279, 19.361046, 12.952528>,  <21.888060, 19.470289, 13.116264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.236279, 19.361046, 12.952528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485484, 0.340877, 0.805051,
		-0.080330, -0.899564, 0.429339,
		0.870547, -0.273107, -0.409342,
		22.497442, 19.279114, 12.829725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.144384, 19.139044, 13.629211>,  <21.888060, 19.470289, 13.116264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.144384, 19.139044, 13.629211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.442783, 19.264877, 13.394426>,  <22.621822, 19.340378, 13.253555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.442783, 19.264877, 13.394426>,  <22.144384, 19.139044, 13.629211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.442783, 19.264877, 13.394426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517870, 0.280099, 0.808304,
		0.418687, -0.906963, 0.046039,
		0.745997, 0.314584, -0.586962,
		22.666582, 19.359253, 13.218338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.797825, 18.818394, 13.958241>,  <22.144384, 19.139044, 13.629211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.797825, 18.818394, 13.958241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.859196, 19.150803, 13.744378>,  <22.896019, 19.350248, 13.616060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.859196, 19.150803, 13.744378>,  <22.797825, 18.818394, 13.958241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.859196, 19.150803, 13.744378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448775, 0.423447, 0.786952,
		0.880375, -0.360681, -0.307975,
		0.153427, 0.831025, -0.534657,
		22.905224, 19.400110, 13.583981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.422283, 18.942713, 14.057320>,  <22.797825, 18.818394, 13.958241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.422283, 18.942713, 14.057320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.318722, 19.312344, 13.944856>,  <23.256584, 19.534122, 13.877378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.318722, 19.312344, 13.944856>,  <23.422283, 18.942713, 14.057320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.318722, 19.312344, 13.944856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504393, 0.377589, 0.776540,
		0.823746, 0.059234, -0.563857,
		-0.258904, 0.924077, -0.281160,
		23.241051, 19.589567, 13.860508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.009520, 19.350079, 14.007221>,  <23.422283, 18.942713, 14.057320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.009520, 19.350079, 14.007221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.696453, 19.594456, 14.054851>,  <23.508614, 19.741081, 14.083428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.696453, 19.594456, 14.054851>,  <24.009520, 19.350079, 14.007221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.696453, 19.594456, 14.054851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469960, 0.454591, 0.756627,
		0.408127, 0.648147, -0.642914,
		-0.782668, 0.610943, 0.119073,
		23.461653, 19.777739, 14.090572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.302782, 20.032698, 14.175867>,  <24.009520, 19.350079, 14.007221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.302782, 20.032698, 14.175867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.908360, 20.078178, 14.224475>,  <23.671705, 20.105467, 14.253639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.908360, 20.078178, 14.224475>,  <24.302782, 20.032698, 14.175867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.908360, 20.078178, 14.224475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165967, 0.618259, 0.768252,
		0.012220, 0.777707, -0.628508,
		-0.986055, 0.113700, 0.121519,
		23.612543, 20.112288, 14.260931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.226479, 20.826340, 14.176045>,  <24.302782, 20.032698, 14.175867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.226479, 20.826340, 14.176045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.932335, 20.640278, 14.373176>,  <23.755848, 20.528641, 14.491453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.932335, 20.640278, 14.373176>,  <24.226479, 20.826340, 14.176045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.932335, 20.640278, 14.373176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266042, 0.470689, 0.841233,
		-0.623270, 0.749722, -0.222375,
		-0.735361, -0.465154, 0.492824,
		23.711727, 20.500732, 14.521023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.986004, 21.199930, 14.716127>,  <24.226479, 20.826340, 14.176045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.986004, 21.199930, 14.716127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.857834, 20.838261, 14.829120>,  <23.780931, 20.621258, 14.896915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.857834, 20.838261, 14.829120>,  <23.986004, 21.199930, 14.716127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.857834, 20.838261, 14.829120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157151, 0.243333, 0.957127,
		-0.934147, 0.351079, 0.064122,
		-0.320424, -0.904175, 0.282482,
		23.761707, 20.567009, 14.913864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.381979, 21.276638, 15.182510>,  <23.986004, 21.199930, 14.716127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.381979, 21.276638, 15.182510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.542469, 20.919037, 15.262292>,  <23.638763, 20.704477, 15.310161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.542469, 20.919037, 15.262292>,  <23.381979, 21.276638, 15.182510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.542469, 20.919037, 15.262292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070146, 0.247098, 0.966448,
		-0.913290, -0.373772, 0.161852,
		0.401224, -0.894001, 0.199454,
		23.662836, 20.650837, 15.322128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.971619, 21.055170, 15.710766>,  <23.381979, 21.276638, 15.182510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.971619, 21.055170, 15.710766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.285477, 20.807724, 15.726998>,  <23.473791, 20.659256, 15.736738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.285477, 20.807724, 15.726998>,  <22.971619, 21.055170, 15.710766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.285477, 20.807724, 15.726998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057683, -0.007675, 0.998305,
		-0.617256, -0.785656, -0.041706,
		0.784645, -0.618616, 0.040582,
		23.520870, 20.622139, 15.739173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.886417, 20.757751, 16.309134>,  <22.971619, 21.055170, 15.710766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.886417, 20.757751, 16.309134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.268993, 20.657093, 16.249941>,  <23.498539, 20.596699, 16.214426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.268993, 20.657093, 16.249941>,  <22.886417, 20.757751, 16.309134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.268993, 20.657093, 16.249941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118300, -0.129320, 0.984521,
		-0.266885, -0.959141, -0.093917,
		0.956440, -0.251643, -0.147980,
		23.555925, 20.581600, 16.205547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.008465, 20.171043, 16.685236>,  <22.886417, 20.757751, 16.309134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.008465, 20.171043, 16.685236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.367619, 20.329300, 16.608011>,  <23.583111, 20.424253, 16.561676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.367619, 20.329300, 16.608011>,  <23.008465, 20.171043, 16.685236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.367619, 20.329300, 16.608011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168538, 0.096203, 0.980989,
		0.406694, -0.913352, 0.019698,
		0.897884, 0.395643, -0.193060,
		23.636984, 20.447992, 16.550093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.403568, 19.901165, 17.220310>,  <23.008465, 20.171043, 16.685236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.403568, 19.901165, 17.220310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.601040, 20.221626, 17.084995>,  <23.719522, 20.413902, 17.003807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.601040, 20.221626, 17.084995>,  <23.403568, 19.901165, 17.220310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.601040, 20.221626, 17.084995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418826, 0.121878, 0.899850,
		0.762147, -0.585919, -0.275375,
		0.493677, 0.801152, -0.338287,
		23.749144, 20.461971, 16.983509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.268980, 19.843344, 17.393356>,  <23.403568, 19.901165, 17.220310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.268980, 19.843344, 17.393356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.182095, 20.232162, 17.357695>,  <24.129963, 20.465454, 17.336298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.182095, 20.232162, 17.357695>,  <24.268980, 19.843344, 17.393356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.182095, 20.232162, 17.357695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445230, 0.179941, 0.877150,
		0.868671, 0.150833, -0.471868,
		-0.217212, 0.972045, -0.089154,
		24.116932, 20.523775, 17.330948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.824606, 20.256939, 17.722054>,  <24.268980, 19.843344, 17.393356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.824606, 20.256939, 17.722054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.523865, 20.519482, 17.697046>,  <24.343420, 20.677008, 17.682041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.523865, 20.519482, 17.697046>,  <24.824606, 20.256939, 17.722054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.523865, 20.519482, 17.697046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193881, 0.310723, 0.930517,
		0.630179, 0.687492, -0.360873,
		-0.751854, 0.656359, -0.062520,
		24.298309, 20.716389, 17.678291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.003967, 20.940834, 17.894079>,  <24.824606, 20.256939, 17.722054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.003967, 20.940834, 17.894079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.613739, 20.910583, 17.976580>,  <24.379602, 20.892433, 18.026081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.613739, 20.910583, 17.976580>,  <25.003967, 20.940834, 17.894079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.613739, 20.910583, 17.976580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172891, 0.314905, 0.933243,
		-0.135529, 0.946105, -0.294137,
		-0.975572, -0.075628, 0.206252,
		24.321068, 20.887896, 18.038456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.943377, 21.496147, 18.388329>,  <25.003967, 20.940834, 17.894079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.943377, 21.496147, 18.388329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.595779, 21.298412, 18.397158>,  <24.387222, 21.179771, 18.402454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.595779, 21.298412, 18.397158>,  <24.943377, 21.496147, 18.388329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.595779, 21.298412, 18.397158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089986, 0.201734, 0.975298,
		-0.486577, 0.845539, -0.219789,
		-0.868991, -0.494335, 0.022072,
		24.335083, 21.150112, 18.403780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.290281, 21.983644, 18.523649>,  <24.943377, 21.496147, 18.388329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.290281, 21.983644, 18.523649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.201073, 21.615143, 18.651115>,  <24.147547, 21.394041, 18.727596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.201073, 21.615143, 18.651115>,  <24.290281, 21.983644, 18.523649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.201073, 21.615143, 18.651115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007019, 0.325374, 0.945559,
		-0.974788, 0.213116, -0.066099,
		-0.223021, -0.921256, 0.318667,
		24.134167, 21.338766, 18.746716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.768141, 22.035503, 18.972883>,  <24.290281, 21.983644, 18.523649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.768141, 22.035503, 18.972883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.872307, 21.658989, 19.058830>,  <23.934807, 21.433081, 19.110397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.872307, 21.658989, 19.058830>,  <23.768141, 22.035503, 18.972883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.872307, 21.658989, 19.058830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169578, 0.174493, 0.969946,
		-0.950488, -0.289025, -0.114181,
		0.260414, -0.941285, 0.214866,
		23.950432, 21.376604, 19.123289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.276230, 21.791325, 19.483362>,  <23.768141, 22.035503, 18.972883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.276230, 21.791325, 19.483362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.585262, 21.537674, 19.496044>,  <23.770681, 21.385485, 19.503653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.585262, 21.537674, 19.496044>,  <23.276230, 21.791325, 19.483362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.585262, 21.537674, 19.496044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002956, 0.053524, 0.998562,
		-0.634911, -0.771376, 0.043226,
		0.772580, -0.634125, 0.031703,
		23.817036, 21.347437, 19.505554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.125393, 21.355303, 19.998791>,  <23.276230, 21.791325, 19.483362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.125393, 21.355303, 19.998791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.522823, 21.319420, 19.971209>,  <23.761282, 21.297890, 19.954660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.522823, 21.319420, 19.971209>,  <23.125393, 21.355303, 19.998791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.522823, 21.319420, 19.971209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069182, -0.000570, 0.997604,
		-0.089535, -0.995968, 0.005640,
		0.993578, -0.089710, -0.068954,
		23.820896, 21.292507, 19.950523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.235535, 20.988739, 20.628342>,  <23.125393, 21.355303, 19.998791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.235535, 20.988739, 20.628342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.576210, 21.157173, 20.503563>,  <23.780615, 21.258234, 20.428696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.576210, 21.157173, 20.503563>,  <23.235535, 20.988739, 20.628342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.576210, 21.157173, 20.503563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237216, 0.221010, 0.945983,
		0.467284, -0.879683, 0.088344,
		0.851689, 0.421086, -0.311949,
		23.831717, 21.283499, 20.409979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.732655, 20.799604, 21.138382>,  <23.235535, 20.988739, 20.628342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.732655, 20.799604, 21.138382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.862522, 21.128841, 20.952003>,  <23.940443, 21.326384, 20.840176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.862522, 21.128841, 20.952003>,  <23.732655, 20.799604, 21.138382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.862522, 21.128841, 20.952003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335999, 0.360130, 0.870294,
		0.884135, -0.439115, -0.159636,
		0.324669, 0.823095, -0.465946,
		23.959923, 21.375771, 20.812220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.404463, 20.867348, 21.519850>,  <23.732655, 20.799604, 21.138382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.404463, 20.867348, 21.519850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.298046, 21.203037, 21.330147>,  <24.234196, 21.404451, 21.216324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.298046, 21.203037, 21.330147>,  <24.404463, 20.867348, 21.519850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.298046, 21.203037, 21.330147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312507, 0.540506, 0.781148,
		0.911900, 0.059610, -0.406061,
		-0.266042, 0.839226, -0.474259,
		24.218233, 21.454805, 21.187870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.000233, 21.324001, 21.488983>,  <24.404463, 20.867348, 21.519850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.000233, 21.324001, 21.488983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.679707, 21.562702, 21.472099>,  <24.487391, 21.705923, 21.461969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.679707, 21.562702, 21.472099>,  <25.000233, 21.324001, 21.488983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.679707, 21.562702, 21.472099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461213, 0.661169, 0.591724,
		0.381022, 0.454688, -0.805035,
		-0.801314, 0.596753, -0.042212,
		24.439312, 21.741728, 21.459436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.245703, 21.979139, 21.368444>,  <25.000233, 21.324001, 21.488983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.245703, 21.979139, 21.368444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.883305, 22.059994, 21.517204>,  <24.665865, 22.108507, 21.606461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.883305, 22.059994, 21.517204>,  <25.245703, 21.979139, 21.368444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.883305, 22.059994, 21.517204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407150, 0.656422, 0.635090,
		-0.115747, 0.726809, -0.677017,
		-0.905997, 0.202138, 0.371899,
		24.611506, 22.120636, 21.628775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.024025, 22.680952, 21.292765>,  <25.245703, 21.979139, 21.368444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.024025, 22.680952, 21.292765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.848461, 22.521568, 21.614904>,  <24.743122, 22.425938, 21.808187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.848461, 22.521568, 21.614904>,  <25.024025, 22.680952, 21.292765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.848461, 22.521568, 21.614904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477334, 0.655962, 0.584693,
		-0.761255, 0.641048, -0.097711,
		-0.438911, -0.398460, 0.805349,
		24.716787, 22.402031, 21.856508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.563850, 23.254898, 21.629536>,  <25.024025, 22.680952, 21.292765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.563850, 23.254898, 21.629536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702286, 22.974541, 21.879005>,  <24.785347, 22.806326, 22.028688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702286, 22.974541, 21.879005>,  <24.563850, 23.254898, 21.629536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.702286, 22.974541, 21.879005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413454, 0.710664, 0.569220,
		-0.842188, 0.060862, 0.535738,
		0.346086, -0.700893, 0.623677,
		24.806112, 22.764273, 22.066109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.318874, 23.340303, 22.321489>,  <24.563850, 23.254898, 21.629536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.318874, 23.340303, 22.321489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.677460, 23.163979, 22.339569>,  <24.892611, 23.058184, 22.350416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.677460, 23.163979, 22.339569>,  <24.318874, 23.340303, 22.321489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.677460, 23.163979, 22.339569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341722, 0.752655, 0.562794,
		-0.282105, -0.489077, 0.825360,
		0.896461, -0.440811, 0.045200,
		24.946398, 23.031734, 22.353128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.642414, 23.153273, 23.032129>,  <24.318874, 23.340303, 22.321489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.642414, 23.153273, 23.032129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.921490, 23.241863, 22.759605>,  <25.088934, 23.295017, 22.596092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.921490, 23.241863, 22.759605>,  <24.642414, 23.153273, 23.032129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.921490, 23.241863, 22.759605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339810, 0.734916, 0.586880,
		0.630683, -0.640974, 0.437483,
		0.697688, 0.221474, -0.681308,
		25.130796, 23.308306, 22.555212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.600710, 23.848635, 23.605179>,  <24.642414, 23.153273, 23.032129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.600710, 23.848635, 23.605179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.397888, 24.172848, 23.487923>,  <24.276196, 24.367376, 23.417570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.397888, 24.172848, 23.487923>,  <24.600710, 23.848635, 23.605179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.397888, 24.172848, 23.487923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785847, -0.574444, -0.229039,
		-0.354036, 0.114227, 0.928230,
		-0.507053, 0.810534, -0.293139,
		24.245771, 24.416008, 23.399981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.935513, 23.710951, 23.726683>,  <24.600710, 23.848635, 23.605179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.935513, 23.710951, 23.726683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.903339, 23.985691, 23.437748>,  <23.884035, 24.150536, 23.264387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.903339, 23.985691, 23.437748>,  <23.935513, 23.710951, 23.726683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.903339, 23.985691, 23.437748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567007, -0.627538, -0.533572,
		-0.819776, 0.366652, 0.439924,
		-0.080434, 0.686849, -0.722335,
		23.879210, 24.191746, 23.221048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.367153, 23.485512, 23.359409>,  <23.935513, 23.710951, 23.726683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.367153, 23.485512, 23.359409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.482296, 23.792191, 23.129866>,  <23.551382, 23.976198, 22.992140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.482296, 23.792191, 23.129866>,  <23.367153, 23.485512, 23.359409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.482296, 23.792191, 23.129866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745265, -0.196980, -0.637007,
		-0.601430, 0.611044, 0.514691,
		0.287855, 0.766697, -0.573859,
		23.568653, 24.022200, 22.957708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.783850, 23.932590, 23.272865>,  <23.367153, 23.485512, 23.359409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.783850, 23.932590, 23.272865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.050148, 23.968124, 22.976517>,  <23.209927, 23.989445, 22.798708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.050148, 23.968124, 22.976517>,  <22.783850, 23.932590, 23.272865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.050148, 23.968124, 22.976517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734676, -0.095620, -0.671645,
		-0.130509, 0.991446, 0.001607,
		0.665746, 0.088837, -0.740871,
		23.249872, 23.994776, 22.754255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.064884, 23.858177, 22.949419>,  <22.783850, 23.932590, 23.272865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.064884, 23.858177, 22.949419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.401268, 23.900776, 22.737213>,  <22.603098, 23.926334, 22.609890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.401268, 23.900776, 22.737213>,  <22.064884, 23.858177, 22.949419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.401268, 23.900776, 22.737213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538249, 0.064145, -0.840341,
		-0.055463, 0.992242, 0.111264,
		0.840959, 0.106496, -0.530515,
		22.653555, 23.932724, 22.578058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.985149, 24.410906, 22.452309>,  <22.064884, 23.858177, 22.949419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.985149, 24.410906, 22.452309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.267189, 24.161358, 22.317478>,  <22.436413, 24.011629, 22.236580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.267189, 24.161358, 22.317478>,  <21.985149, 24.410906, 22.452309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.267189, 24.161358, 22.317478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369377, 0.082633, -0.925598,
		0.605307, 0.777147, -0.172178,
		0.705099, -0.623870, -0.337078,
		22.478718, 23.974197, 22.216354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.315535, 24.691107, 21.900858>,  <21.985149, 24.410906, 22.452309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.315535, 24.691107, 21.900858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.401436, 24.311089, 21.810266>,  <22.452976, 24.083078, 21.755911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.401436, 24.311089, 21.810266>,  <22.315535, 24.691107, 21.900858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.401436, 24.311089, 21.810266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185253, 0.188057, -0.964529,
		0.958938, 0.249094, -0.135613,
		0.214755, -0.950046, -0.226480,
		22.465862, 24.026075, 21.742323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.724792, 24.664698, 21.329700>,  <22.315535, 24.691107, 21.900858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.724792, 24.664698, 21.329700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.579922, 24.292217, 21.313238>,  <22.493000, 24.068729, 21.303360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.579922, 24.292217, 21.313238>,  <22.724792, 24.664698, 21.329700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.579922, 24.292217, 21.313238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129783, 0.094104, -0.987067,
		0.923031, -0.352150, -0.154936,
		-0.362175, -0.931201, -0.041158,
		22.471270, 24.012857, 21.300890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.999289, 24.303734, 20.688868>,  <22.724792, 24.664698, 21.329700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.999289, 24.303734, 20.688868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.675179, 24.095356, 20.796253>,  <22.480713, 23.970329, 20.860683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.675179, 24.095356, 20.796253>,  <22.999289, 24.303734, 20.688868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.675179, 24.095356, 20.796253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236164, -0.129000, -0.963112,
		0.536359, -0.843787, -0.018503,
		-0.810275, -0.520944, 0.268463,
		22.432096, 23.939074, 20.876793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.994383, 23.719795, 20.217978>,  <22.999289, 24.303734, 20.688868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.994383, 23.719795, 20.217978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.625561, 23.727852, 20.372593>,  <22.404268, 23.732687, 20.465363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.625561, 23.727852, 20.372593>,  <22.994383, 23.719795, 20.217978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.625561, 23.727852, 20.372593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386079, -0.119063, -0.914750,
		0.027595, -0.992682, 0.117560,
		-0.922053, 0.020145, 0.386539,
		22.348946, 23.733894, 20.488554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.624079, 23.209900, 19.799538>,  <22.994383, 23.719795, 20.217978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.624079, 23.209900, 19.799538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.344097, 23.442883, 19.964853>,  <22.176107, 23.582672, 20.064043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.344097, 23.442883, 19.964853>,  <22.624079, 23.209900, 19.799538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.344097, 23.442883, 19.964853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585988, -0.137573, -0.798556,
		-0.408266, -0.801136, 0.437607,
		-0.699955, 0.582456, 0.413290,
		22.134109, 23.617619, 20.088840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.965475, 22.765772, 19.720299>,  <22.624079, 23.209900, 19.799538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.965475, 22.765772, 19.720299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.851608, 23.145653, 19.772493>,  <21.783287, 23.373581, 19.803810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.851608, 23.145653, 19.772493>,  <21.965475, 22.765772, 19.720299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.851608, 23.145653, 19.772493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633577, -0.084243, -0.769079,
		-0.719405, -0.301606, 0.625692,
		-0.284669, 0.949703, 0.130487,
		21.766207, 23.430563, 19.811640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.200575, 22.823179, 19.679739>,  <21.965475, 22.765772, 19.720299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.200575, 22.823179, 19.679739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.322247, 23.195923, 19.600632>,  <21.395250, 23.419569, 19.553167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.322247, 23.195923, 19.600632>,  <21.200575, 22.823179, 19.679739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.322247, 23.195923, 19.600632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567019, 0.010286, -0.823640,
		-0.765483, 0.362673, 0.531511,
		0.304179, 0.931860, -0.197768,
		21.413500, 23.475481, 19.541302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.541574, 23.071407, 19.552727>,  <21.200575, 22.823179, 19.679739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.541574, 23.071407, 19.552727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.834782, 23.290051, 19.390787>,  <21.010706, 23.421236, 19.293623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.834782, 23.290051, 19.390787>,  <20.541574, 23.071407, 19.552727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.834782, 23.290051, 19.390787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495683, 0.021664, -0.868233,
		-0.465811, 0.837110, 0.286823,
		0.733020, 0.546606, -0.404850,
		21.054688, 23.454033, 19.269333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.164537, 23.496244, 19.105469>,  <20.541574, 23.071407, 19.552727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.164537, 23.496244, 19.105469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.536335, 23.511009, 18.958672>,  <20.759413, 23.519869, 18.870594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.536335, 23.511009, 18.958672>,  <20.164537, 23.496244, 19.105469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.536335, 23.511009, 18.958672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368091, 0.029305, -0.929328,
		-0.023551, 0.998889, 0.040827,
		0.929492, 0.036914, -0.366991,
		20.815182, 23.522083, 18.848574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.121429, 24.038572, 18.597294>,  <20.164537, 23.496244, 19.105469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.121429, 24.038572, 18.597294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.454685, 23.834949, 18.510817>,  <20.654638, 23.712776, 18.458929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.454685, 23.834949, 18.510817>,  <20.121429, 24.038572, 18.597294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.454685, 23.834949, 18.510817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245671, 0.009586, -0.969306,
		0.495504, 0.860680, -0.117074,
		0.833140, -0.509057, -0.216194,
		20.704628, 23.682232, 18.445959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.217524, 24.242832, 17.950342>,  <20.121429, 24.038572, 18.597294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.217524, 24.242832, 17.950342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.449387, 23.918438, 17.982096>,  <20.588505, 23.723801, 18.001148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.449387, 23.918438, 17.982096>,  <20.217524, 24.242832, 17.950342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.449387, 23.918438, 17.982096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037768, -0.124054, -0.991557,
		0.813986, 0.571763, -0.102538,
		0.579656, -0.810985, 0.079384,
		20.623283, 23.675142, 18.005911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.711454, 24.402967, 17.521948>,  <20.217524, 24.242832, 17.950342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.711454, 24.402967, 17.521948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.677937, 24.007484, 17.571648>,  <20.657825, 23.770195, 17.601467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.677937, 24.007484, 17.571648>,  <20.711454, 24.402967, 17.521948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.677937, 24.007484, 17.571648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090555, -0.131726, -0.987141,
		0.992360, -0.071465, 0.100570,
		-0.083793, -0.988707, 0.124248,
		20.652798, 23.710873, 17.608923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.274563, 24.039410, 17.098413>,  <20.711454, 24.402967, 17.521948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.274563, 24.039410, 17.098413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.996082, 23.763115, 17.176577>,  <20.828995, 23.597338, 17.223475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.996082, 23.763115, 17.176577>,  <21.274563, 24.039410, 17.098413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.996082, 23.763115, 17.176577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174232, -0.426673, -0.887465,
		0.696382, -0.583807, 0.417399,
		-0.696200, -0.690739, 0.195410,
		20.787222, 23.555893, 17.235199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.573816, 23.403025, 16.912140>,  <21.274563, 24.039410, 17.098413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.573816, 23.403025, 16.912140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.180649, 23.335056, 16.883850>,  <20.944748, 23.294275, 16.866877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.180649, 23.335056, 16.883850>,  <21.573816, 23.403025, 16.912140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.180649, 23.335056, 16.883850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142541, -0.459691, -0.876565,
		0.116434, -0.871671, 0.476059,
		-0.982917, -0.169920, -0.070726,
		20.885775, 23.284081, 16.862633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.492096, 22.725807, 16.589027>,  <21.573816, 23.403025, 16.912140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.492096, 22.725807, 16.589027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.117840, 22.861221, 16.549078>,  <20.893286, 22.942469, 16.525108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.117840, 22.861221, 16.549078>,  <21.492096, 22.725807, 16.589027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.117840, 22.861221, 16.549078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027449, -0.351889, -0.935639,
		-0.351889, -0.872679, 0.338534,
		0.935639, -0.338534, 0.099872,
		20.837149, 22.962782, 16.519117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.008640, 22.180046, 16.426865>,  <21.492096, 22.725807, 16.589027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.008640, 22.180046, 16.426865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.817001, 22.498184, 16.278328>,  <20.702019, 22.689068, 16.189207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.817001, 22.498184, 16.278328>,  <21.008640, 22.180046, 16.426865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.817001, 22.498184, 16.278328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113647, -0.475698, -0.872236,
		-0.870374, -0.375683, 0.318294,
		-0.479096, 0.795345, -0.371340,
		20.673273, 22.736788, 16.166925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.440388, 21.899096, 16.126959>,  <21.008640, 22.180046, 16.426865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.440388, 21.899096, 16.126959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.453972, 22.259876, 15.954761>,  <20.462122, 22.476345, 15.851441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.453972, 22.259876, 15.954761>,  <20.440388, 21.899096, 16.126959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.453972, 22.259876, 15.954761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123048, -0.423695, -0.897408,
		-0.991820, 0.083447, 0.096594,
		0.033960, 0.901953, -0.430497,
		20.464159, 22.530462, 15.825611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.935146, 21.902540, 15.589757>,  <20.440388, 21.899096, 16.126959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.935146, 21.902540, 15.589757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.182842, 22.206486, 15.510610>,  <20.331459, 22.388853, 15.463121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.182842, 22.206486, 15.510610>,  <19.935146, 21.902540, 15.589757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.182842, 22.206486, 15.510610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007829, -0.257960, -0.966124,
		-0.785164, 0.596712, -0.165687,
		0.619239, 0.759863, -0.197869,
		20.368614, 22.434444, 15.451249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.734713, 22.246769, 14.902898>,  <19.935146, 21.902540, 15.589757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.734713, 22.246769, 14.902898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.114601, 22.362305, 14.951232>,  <20.342535, 22.431625, 14.980232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.114601, 22.362305, 14.951232>,  <19.734713, 22.246769, 14.902898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.114601, 22.362305, 14.951232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178710, -0.183193, -0.966697,
		-0.257084, 0.939687, -0.225601,
		0.949721, 0.288840, 0.120836,
		20.399517, 22.448957, 14.987483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.957323, 22.659283, 14.261744>,  <19.734713, 22.246769, 14.902898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.957323, 22.659283, 14.261744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.304642, 22.544472, 14.423573>,  <20.513033, 22.475584, 14.520671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.304642, 22.544472, 14.423573>,  <19.957323, 22.659283, 14.261744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.304642, 22.544472, 14.423573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306110, -0.331737, -0.892327,
		0.390335, 0.898646, -0.200183,
		0.868294, -0.287029, 0.404573,
		20.565130, 22.458363, 14.544946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.495722, 22.901205, 13.861503>,  <19.957323, 22.659283, 14.261744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.495722, 22.901205, 13.861503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.689686, 22.606781, 14.050427>,  <20.806065, 22.430126, 14.163782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.689686, 22.606781, 14.050427>,  <20.495722, 22.901205, 13.861503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.689686, 22.606781, 14.050427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387052, -0.303669, -0.870618,
		0.784254, 0.604979, 0.137642,
		0.484908, -0.736061, 0.472312,
		20.835157, 22.385963, 14.192122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.230286, 22.912943, 13.602201>,  <20.495722, 22.901205, 13.861503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.230286, 22.912943, 13.602201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.165695, 22.544636, 13.744248>,  <21.126942, 22.323650, 13.829477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.165695, 22.544636, 13.744248>,  <21.230286, 22.912943, 13.602201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.165695, 22.544636, 13.744248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349925, -0.389882, -0.851789,
		0.922756, -0.013277, 0.385157,
		-0.161475, -0.920769, 0.355120,
		21.117252, 22.268406, 13.850784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.858416, 22.534533, 13.375768>,  <21.230286, 22.912943, 13.602201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.858416, 22.534533, 13.375768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.561886, 22.280098, 13.461403>,  <21.383968, 22.127438, 13.512784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.561886, 22.280098, 13.461403>,  <21.858416, 22.534533, 13.375768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.561886, 22.280098, 13.461403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142265, -0.460668, -0.876097,
		0.655898, -0.619013, 0.431996,
		-0.741322, -0.636088, 0.214087,
		21.339489, 22.089272, 13.525629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.985281, 21.907448, 13.023017>,  <21.858416, 22.534533, 13.375768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.985281, 21.907448, 13.023017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.588634, 21.895126, 13.073210>,  <21.350647, 21.887733, 13.103326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.588634, 21.895126, 13.073210>,  <21.985281, 21.907448, 13.023017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.588634, 21.895126, 13.073210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127731, 0.087289, -0.987960,
		0.019476, -0.995707, -0.090492,
		-0.991618, -0.030800, 0.125483,
		21.291149, 21.885885, 13.110854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.790375, 21.485352, 12.515475>,  <21.985281, 21.907448, 13.023017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.790375, 21.485352, 12.515475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.443897, 21.658070, 12.616083>,  <21.236012, 21.761700, 12.676448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.443897, 21.658070, 12.616083>,  <21.790375, 21.485352, 12.515475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.443897, 21.658070, 12.616083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242318, 0.077249, -0.967117,
		-0.437026, -0.898658, 0.037720,
		-0.866193, 0.431795, 0.251521,
		21.184040, 21.787607, 12.691540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.179634, 21.006308, 12.184316>,  <21.790375, 21.485352, 12.515475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.179634, 21.006308, 12.184316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.037163, 21.369446, 12.272814>,  <20.951679, 21.587330, 12.325912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.037163, 21.369446, 12.272814>,  <21.179634, 21.006308, 12.184316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.037163, 21.369446, 12.272814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380662, 0.075263, -0.921646,
		-0.853366, -0.412491, 0.318776,
		-0.356178, 0.907848, 0.221246,
		20.930309, 21.641800, 12.339188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.538946, 21.025131, 12.071999>,  <21.179634, 21.006308, 12.184316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.538946, 21.025131, 12.071999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.653954, 21.406471, 12.035214>,  <20.722958, 21.635275, 12.013144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.653954, 21.406471, 12.035214>,  <20.538946, 21.025131, 12.071999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.653954, 21.406471, 12.035214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340017, 0.011840, -0.940345,
		-0.895388, 0.301637, 0.327559,
		0.287521, 0.953349, -0.091960,
		20.740210, 21.692476, 12.007627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.918123, 21.376076, 11.772222>,  <20.538946, 21.025131, 12.071999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.918123, 21.376076, 11.772222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.222355, 21.626751, 11.704365>,  <20.404894, 21.777157, 11.663651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.222355, 21.626751, 11.704365>,  <19.918123, 21.376076, 11.772222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.222355, 21.626751, 11.704365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336044, 0.156428, -0.928765,
		-0.555510, 0.763408, 0.329571,
		0.760581, 0.626688, -0.169641,
		20.450529, 21.814758, 11.653473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.670164, 21.855755, 11.247947>,  <19.918123, 21.376076, 11.772222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.670164, 21.855755, 11.247947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.064617, 21.912560, 11.213601>,  <20.301289, 21.946642, 11.192994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.064617, 21.912560, 11.213601>,  <19.670164, 21.855755, 11.247947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.064617, 21.912560, 11.213601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107891, 0.155502, -0.981926,
		-0.126091, 0.977575, 0.168667,
		0.986134, 0.142009, -0.085864,
		20.360458, 21.955162, 11.187841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.774645, 22.517843, 10.882806>,  <19.670164, 21.855755, 11.247947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.774645, 22.517843, 10.882806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.107265, 22.301720, 10.831293>,  <20.306839, 22.172045, 10.800385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.107265, 22.301720, 10.831293>,  <19.774645, 22.517843, 10.882806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.107265, 22.301720, 10.831293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087826, 0.101035, -0.990999,
		0.548458, 0.835378, 0.036563,
		0.831553, -0.540310, -0.128782,
		20.356731, 22.139627, 10.792659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.111513, 22.864519, 10.284761>,  <19.774645, 22.517843, 10.882806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.111513, 22.864519, 10.284761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.340675, 22.537411, 10.306787>,  <20.478172, 22.341146, 10.320002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.340675, 22.537411, 10.306787>,  <20.111513, 22.864519, 10.284761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.340675, 22.537411, 10.306787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113010, 0.012275, -0.993518,
		0.811795, 0.575412, 0.099448,
		0.572903, -0.817771, 0.055062,
		20.512547, 22.292080, 10.323305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.637724, 22.970974, 9.881293>,  <20.111513, 22.864519, 10.284761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.637724, 22.970974, 9.881293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.670170, 22.572300, 9.878800>,  <20.689638, 22.333096, 9.877305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.670170, 22.572300, 9.878800>,  <20.637724, 22.970974, 9.881293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.670170, 22.572300, 9.878800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096398, 0.014068, -0.995244,
		0.992032, 0.080129, 0.097220,
		0.081116, -0.996685, -0.006232,
		20.694504, 22.273294, 9.876931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.260843, 22.727524, 9.314762>,  <20.637724, 22.970974, 9.881293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.260843, 22.727524, 9.314762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.035160, 22.405678, 9.388806>,  <20.899750, 22.212570, 9.433233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.035160, 22.405678, 9.388806>,  <21.260843, 22.727524, 9.314762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.035160, 22.405678, 9.388806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178346, -0.337684, -0.924209,
		0.806141, -0.488432, 0.334024,
		-0.564207, -0.804614, 0.185111,
		20.865898, 22.164293, 9.444340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.630846, 22.100794, 8.982849>,  <21.260843, 22.727524, 9.314762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.630846, 22.100794, 8.982849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.235981, 22.053005, 9.025253>,  <20.999062, 22.024332, 9.050695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.235981, 22.053005, 9.025253>,  <21.630846, 22.100794, 8.982849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.235981, 22.053005, 9.025253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070604, -0.268951, -0.960563,
		0.143273, -0.955715, 0.257063,
		-0.987162, -0.119473, 0.106011,
		20.939833, 22.017162, 9.057056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.428789, 21.470737, 8.674205>,  <21.630846, 22.100794, 8.982849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.428789, 21.470737, 8.674205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.053944, 21.603172, 8.718381>,  <20.829037, 21.682632, 8.744886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.053944, 21.603172, 8.718381>,  <21.428789, 21.470737, 8.674205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.053944, 21.603172, 8.718381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266118, -0.473076, -0.839869,
		-0.225821, -0.816445, 0.531434,
		-0.937116, 0.331085, 0.110440,
		20.772808, 21.702497, 8.751513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.080156, 20.991463, 8.525635>,  <21.428789, 21.470737, 8.674205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.080156, 20.991463, 8.525635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.809780, 21.280605, 8.468250>,  <20.647554, 21.454090, 8.433820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.809780, 21.280605, 8.468250>,  <21.080156, 20.991463, 8.525635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.809780, 21.280605, 8.468250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284388, -0.435443, -0.854115,
		-0.679872, -0.536533, 0.499906,
		-0.675941, 0.722857, -0.143462,
		20.606998, 21.497461, 8.425212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.377159, 20.711203, 8.412614>,  <21.080156, 20.991463, 8.525635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.377159, 20.711203, 8.412614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.409088, 21.068516, 8.235674>,  <20.428246, 21.282904, 8.129510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.409088, 21.068516, 8.235674>,  <20.377159, 20.711203, 8.412614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.409088, 21.068516, 8.235674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388383, -0.380826, -0.839125,
		-0.918035, 0.238781, 0.316538,
		0.079821, 0.893283, -0.442350,
		20.433035, 21.336500, 8.102969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.667318, 20.944201, 8.040439>,  <20.377159, 20.711203, 8.412614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.667318, 20.944201, 8.040439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.931946, 21.181854, 7.857428>,  <20.090721, 21.324448, 7.747621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.931946, 21.181854, 7.857428>,  <19.667318, 20.944201, 8.040439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.931946, 21.181854, 7.857428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357731, -0.286181, -0.888892,
		-0.659058, 0.751734, 0.023213,
		0.661567, 0.594136, -0.457528,
		20.130417, 21.360094, 7.720169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.235605, 21.359524, 7.411959>,  <19.667318, 20.944201, 8.040439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.235605, 21.359524, 7.411959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.631321, 21.345119, 7.355375>,  <19.868750, 21.336477, 7.321425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.631321, 21.345119, 7.355375>,  <19.235605, 21.359524, 7.411959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.631321, 21.345119, 7.355375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143298, -0.054978, -0.988151,
		0.027809, 0.997838, -0.059549,
		0.989289, -0.036013, -0.141460,
		19.928108, 21.334316, 7.312937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.690416, 21.002844, 7.683358>,  <19.235605, 21.359524, 7.411959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.690416, 21.002844, 7.683358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.535000, 20.635380, 7.654787>,  <18.441750, 20.414902, 7.637645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.535000, 20.635380, 7.654787>,  <18.690416, 21.002844, 7.683358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.535000, 20.635380, 7.654787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368856, 0.084032, 0.925680,
		-0.844383, 0.386009, -0.371503,
		-0.388539, -0.918660, -0.071427,
		18.418438, 20.359781, 7.633359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.976305, 21.075176, 7.929035>,  <18.690416, 21.002844, 7.683358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.976305, 21.075176, 7.929035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.097355, 20.695801, 7.966735>,  <18.169985, 20.468176, 7.989355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.097355, 20.695801, 7.966735>,  <17.976305, 21.075176, 7.929035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.097355, 20.695801, 7.966735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405385, -0.038587, 0.913331,
		-0.862602, -0.314602, -0.396160,
		0.302622, -0.948439, 0.094250,
		18.188141, 20.411268, 7.995010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.488979, 20.663643, 8.275617>,  <17.976305, 21.075176, 7.929035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.488979, 20.663643, 8.275617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.794590, 20.412251, 8.333966>,  <17.977957, 20.261415, 8.368977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.794590, 20.412251, 8.333966>,  <17.488979, 20.663643, 8.275617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.794590, 20.412251, 8.333966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322938, -0.176783, 0.929763,
		-0.558548, -0.757471, -0.338026,
		0.764025, -0.628479, 0.145875,
		18.023798, 20.223707, 8.377728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.259693, 20.308464, 8.758567>,  <17.488979, 20.663643, 8.275617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.259693, 20.308464, 8.758567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.642925, 20.194550, 8.771095>,  <17.872864, 20.126202, 8.778612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.642925, 20.194550, 8.771095>,  <17.259693, 20.308464, 8.758567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.642925, 20.194550, 8.771095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112884, -0.274745, 0.954868,
		-0.263319, -0.918377, -0.295375,
		0.958082, -0.284778, 0.031325,
		17.930349, 20.109114, 8.780492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.186771, 19.739519, 9.156589>,  <17.259693, 20.308464, 8.758567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.186771, 19.739519, 9.156589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.578392, 19.817150, 9.181223>,  <17.813364, 19.863728, 9.196004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.578392, 19.817150, 9.181223>,  <17.186771, 19.739519, 9.156589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.578392, 19.817150, 9.181223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022168, -0.402268, 0.915254,
		0.202404, -0.894715, -0.398143,
		0.979051, 0.194077, 0.061587,
		17.872107, 19.875374, 9.199699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.633234, 19.194506, 9.494308>,  <17.186771, 19.739519, 9.156589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.633234, 19.194506, 9.494308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.852997, 19.524345, 9.548261>,  <17.984854, 19.722248, 9.580632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.852997, 19.524345, 9.548261>,  <17.633234, 19.194506, 9.494308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.852997, 19.524345, 9.548261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013552, -0.152610, 0.988193,
		0.835447, -0.544746, -0.072670,
		0.549405, 0.824598, 0.134880,
		18.017818, 19.771725, 9.588725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.028305, 19.008831, 9.997425>,  <17.633234, 19.194506, 9.494308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.028305, 19.008831, 9.997425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.068562, 19.406742, 10.004182>,  <18.092714, 19.645489, 10.008236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.068562, 19.406742, 10.004182>,  <18.028305, 19.008831, 9.997425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.068562, 19.406742, 10.004182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146466, -0.001980, 0.989214,
		0.984083, -0.102029, 0.145502,
		0.100640, 0.994779, 0.016892,
		18.098753, 19.705175, 10.009250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.451204, 19.075722, 10.612737>,  <18.028305, 19.008831, 9.997425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.451204, 19.075722, 10.612737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.279327, 19.431076, 10.548071>,  <18.176201, 19.644289, 10.509272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.279327, 19.431076, 10.548071>,  <18.451204, 19.075722, 10.612737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.279327, 19.431076, 10.548071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130655, 0.115981, 0.984621,
		0.893472, 0.444208, 0.066235,
		-0.429694, 0.888385, -0.161664,
		18.150419, 19.697592, 10.499572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.837818, 19.591499, 11.023940>,  <18.451204, 19.075722, 10.612737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.837818, 19.591499, 11.023940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.470657, 19.727200, 10.941610>,  <18.250360, 19.808620, 10.892212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.470657, 19.727200, 10.941610>,  <18.837818, 19.591499, 11.023940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.470657, 19.727200, 10.941610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181135, 0.103276, 0.978020,
		0.353052, 0.935009, -0.033347,
		-0.917902, 0.339252, -0.205825,
		18.195288, 19.828976, 10.879863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.768869, 20.058443, 11.507252>,  <18.837818, 19.591499, 11.023940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.768869, 20.058443, 11.507252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.383987, 20.053913, 11.398414>,  <18.153059, 20.051195, 11.333111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.383987, 20.053913, 11.398414>,  <18.768869, 20.058443, 11.507252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.383987, 20.053913, 11.398414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271494, 0.118136, 0.955162,
		0.021327, 0.992933, -0.116745,
		-0.962204, -0.011325, -0.272095,
		18.095325, 20.050516, 11.316785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.516701, 20.595833, 11.756989>,  <18.768869, 20.058443, 11.507252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.516701, 20.595833, 11.756989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.193932, 20.364178, 11.710562>,  <18.000271, 20.225183, 11.682705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.193932, 20.364178, 11.710562>,  <18.516701, 20.595833, 11.756989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.193932, 20.364178, 11.710562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295096, 0.225059, 0.928583,
		-0.511657, 0.783547, -0.352507,
		-0.806923, -0.579140, -0.116069,
		17.951855, 20.190435, 11.675741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.862206, 20.932362, 11.664470>,  <18.516701, 20.595833, 11.756989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.862206, 20.932362, 11.664470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.743885, 20.579163, 11.810246>,  <17.672894, 20.367243, 11.897711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.743885, 20.579163, 11.810246>,  <17.862206, 20.932362, 11.664470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.743885, 20.579163, 11.810246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451895, 0.465472, 0.761004,
		-0.841602, 0.060416, -0.536709,
		-0.295800, -0.882998, 0.364440,
		17.655146, 20.314262, 11.919578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.198040, 21.099314, 11.898633>,  <17.862206, 20.932362, 11.664470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.198040, 21.099314, 11.898633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.336205, 20.759075, 12.057215>,  <17.419104, 20.554932, 12.152364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.336205, 20.759075, 12.057215>,  <17.198040, 21.099314, 11.898633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.336205, 20.759075, 12.057215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451152, 0.219928, 0.864924,
		-0.822892, -0.477617, -0.307782,
		0.345412, -0.850596, 0.396455,
		17.439829, 20.503897, 12.176151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.750692, 20.967398, 12.494701>,  <17.198040, 21.099314, 11.898633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.750692, 20.967398, 12.494701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.080765, 20.752647, 12.564953>,  <17.278809, 20.623798, 12.607103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.080765, 20.752647, 12.564953>,  <16.750692, 20.967398, 12.494701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.080765, 20.752647, 12.564953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076545, 0.201772, 0.976437,
		-0.559661, -0.819179, 0.125403,
		0.825179, -0.536875, 0.175628,
		17.328318, 20.591585, 12.617641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.558451, 20.484020, 12.999365>,  <16.750692, 20.967398, 12.494701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.558451, 20.484020, 12.999365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.954617, 20.523365, 13.038146>,  <17.192316, 20.546972, 13.061415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.954617, 20.523365, 13.038146>,  <16.558451, 20.484020, 12.999365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.954617, 20.523365, 13.038146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115008, 0.198674, 0.973294,
		0.076471, -0.975117, 0.208083,
		0.990417, 0.098360, 0.096954,
		17.251741, 20.552874, 13.067232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.648832, 20.219124, 13.633393>,  <16.558451, 20.484020, 12.999365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.648832, 20.219124, 13.633393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.009357, 20.389618, 13.602527>,  <17.225674, 20.491915, 13.584006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.009357, 20.389618, 13.602527>,  <16.648832, 20.219124, 13.633393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.009357, 20.389618, 13.602527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012122, 0.202895, 0.979126,
		0.432997, -0.881564, 0.188039,
		0.901314, 0.426238, -0.077167,
		17.279751, 20.517488, 13.579377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.012377, 20.042034, 14.288091>,  <16.648832, 20.219124, 13.633393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.012377, 20.042034, 14.288091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.218590, 20.349072, 14.135762>,  <17.342318, 20.533295, 14.044365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.218590, 20.349072, 14.135762>,  <17.012377, 20.042034, 14.288091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.218590, 20.349072, 14.135762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216628, 0.313242, 0.924636,
		0.829034, -0.559177, -0.004796,
		0.515533, 0.767594, -0.380822,
		17.373249, 20.579350, 14.021516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.638929, 20.071997, 14.684534>,  <17.012377, 20.042034, 14.288091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.638929, 20.071997, 14.684534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.607426, 20.442844, 14.537974>,  <17.588524, 20.665352, 14.450038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.607426, 20.442844, 14.537974>,  <17.638929, 20.071997, 14.684534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.607426, 20.442844, 14.537974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368767, 0.368565, 0.853329,
		0.926179, -0.067910, -0.370918,
		-0.078758, 0.927118, -0.366400,
		17.583799, 20.720980, 14.428054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.292162, 20.389877, 14.920300>,  <17.638929, 20.071997, 14.684534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.292162, 20.389877, 14.920300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.035934, 20.684311, 14.832799>,  <17.882198, 20.860971, 14.780298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.035934, 20.684311, 14.832799>,  <18.292162, 20.389877, 14.920300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.035934, 20.684311, 14.832799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223517, 0.451264, 0.863945,
		0.734653, 0.504519, -0.453592,
		-0.640566, 0.736085, -0.218754,
		17.843765, 20.905136, 14.767173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.748714, 20.990288, 14.799792>,  <18.292162, 20.389877, 14.920300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.748714, 20.990288, 14.799792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.376999, 21.084858, 14.913299>,  <18.153969, 21.141600, 14.981402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.376999, 21.084858, 14.913299>,  <18.748714, 20.990288, 14.799792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.376999, 21.084858, 14.913299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363551, 0.449897, 0.815735,
		0.065194, 0.861218, -0.504037,
		-0.929290, 0.236424, 0.283766,
		18.098211, 21.155785, 14.998428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.665329, 21.716375, 14.970740>,  <18.748714, 20.990288, 14.799792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.665329, 21.716375, 14.970740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.393753, 21.510139, 15.179818>,  <18.230808, 21.386398, 15.305265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.393753, 21.510139, 15.179818>,  <18.665329, 21.716375, 14.970740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.393753, 21.510139, 15.179818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361875, 0.384444, 0.849264,
		-0.638819, 0.765748, -0.074434,
		-0.678937, -0.515590, 0.522695,
		18.190071, 21.355463, 15.336627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.294891, 22.147799, 15.423183>,  <18.665329, 21.716375, 14.970740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.294891, 22.147799, 15.423183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.272282, 21.783321, 15.586415>,  <18.258715, 21.564634, 15.684355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.272282, 21.783321, 15.586415>,  <18.294891, 22.147799, 15.423183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.272282, 21.783321, 15.586415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316019, 0.371389, 0.873042,
		-0.947067, 0.178310, 0.266962,
		-0.056525, -0.911195, 0.408080,
		18.255323, 21.509962, 15.708839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.847281, 22.198608, 16.042837>,  <18.294891, 22.147799, 15.423183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.847281, 22.198608, 16.042837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.082561, 21.876724, 16.074982>,  <18.223730, 21.683594, 16.094269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.082561, 21.876724, 16.074982>,  <17.847281, 22.198608, 16.042837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.082561, 21.876724, 16.074982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266863, 0.286942, 0.920026,
		-0.763415, -0.519715, 0.383527,
		0.588201, -0.804711, 0.080364,
		18.259022, 21.635311, 16.099091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.823788, 22.087757, 16.758186>,  <17.847281, 22.198608, 16.042837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.823788, 22.087757, 16.758186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.142776, 21.873970, 16.646198>,  <18.334169, 21.745697, 16.579006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.142776, 21.873970, 16.646198>,  <17.823788, 22.087757, 16.758186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.142776, 21.873970, 16.646198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365697, 0.059092, 0.928856,
		-0.479901, -0.843120, 0.242578,
		0.797472, -0.534469, -0.279968,
		18.382017, 21.713629, 16.562208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.813007, 21.462149, 17.270716>,  <17.823788, 22.087757, 16.758186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.813007, 21.462149, 17.270716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.181919, 21.473026, 17.116488>,  <18.403265, 21.479553, 17.023951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.181919, 21.473026, 17.116488>,  <17.813007, 21.462149, 17.270716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.181919, 21.473026, 17.116488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386522, -0.059521, 0.920358,
		0.002079, -0.997857, -0.065406,
		0.922278, 0.027194, -0.385569,
		18.458603, 21.481184, 17.000816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.069864, 20.872917, 17.512589>,  <17.813007, 21.462149, 17.270716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.069864, 20.872917, 17.512589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.366936, 21.128807, 17.433411>,  <18.545177, 21.282341, 17.385904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.366936, 21.128807, 17.433411>,  <18.069864, 20.872917, 17.512589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.366936, 21.128807, 17.433411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355587, -0.126265, 0.926075,
		0.567441, -0.758161, -0.321252,
		0.742677, 0.639726, -0.197945,
		18.589739, 21.320724, 17.374027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.627026, 20.502365, 17.684483>,  <18.069864, 20.872917, 17.512589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.627026, 20.502365, 17.684483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.712418, 20.893070, 17.676863>,  <18.763653, 21.127493, 17.672291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.712418, 20.893070, 17.676863>,  <18.627026, 20.502365, 17.684483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.712418, 20.893070, 17.676863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475989, -0.086964, 0.875140,
		0.853147, -0.195891, -0.483493,
		0.213479, 0.976762, -0.019049,
		18.776461, 21.186098, 17.671148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.294851, 20.593163, 17.914984>,  <18.627026, 20.502365, 17.684483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.294851, 20.593163, 17.914984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.169666, 20.970589, 17.958326>,  <19.094555, 21.197044, 17.984333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.169666, 20.970589, 17.958326>,  <19.294851, 20.593163, 17.914984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.169666, 20.970589, 17.958326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512051, 0.071539, 0.855971,
		0.799912, 0.323372, -0.505541,
		-0.312963, 0.943564, 0.108358,
		19.075777, 21.253658, 17.990833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.956429, 20.905054, 18.041294>,  <19.294851, 20.593163, 17.914984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.956429, 20.905054, 18.041294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.682430, 21.162937, 18.177019>,  <19.518030, 21.317667, 18.258453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.682430, 21.162937, 18.177019>,  <19.956429, 20.905054, 18.041294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.682430, 21.162937, 18.177019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563845, 0.174197, 0.807300,
		0.461364, 0.744318, -0.482839,
		-0.684997, 0.644706, 0.339312,
		19.476931, 21.356350, 18.278812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.374813, 21.424929, 18.198338>,  <19.956429, 20.905054, 18.041294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.374813, 21.424929, 18.198338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.039387, 21.488369, 18.406820>,  <19.838131, 21.526432, 18.531910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.039387, 21.488369, 18.406820>,  <20.374813, 21.424929, 18.198338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.039387, 21.488369, 18.406820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538532, 0.096561, 0.837054,
		0.082428, 0.982610, -0.166383,
		-0.838564, 0.158600, 0.521207,
		19.787817, 21.535950, 18.563183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.652880, 21.833763, 18.726067>,  <20.374813, 21.424929, 18.198338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.652880, 21.833763, 18.726067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.296734, 21.716633, 18.865496>,  <20.083046, 21.646355, 18.949154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.296734, 21.716633, 18.865496>,  <20.652880, 21.833763, 18.726067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.296734, 21.716633, 18.865496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329741, 0.113094, 0.937273,
		-0.313880, 0.949454, -0.004138,
		-0.890365, -0.292827, 0.348572,
		20.029625, 21.628784, 18.970068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.392221, 22.306154, 19.140362>,  <20.652880, 21.833763, 18.726067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.392221, 22.306154, 19.140362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.193535, 21.980274, 19.260052>,  <20.074322, 21.784746, 19.331865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.193535, 21.980274, 19.260052>,  <20.392221, 22.306154, 19.140362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.193535, 21.980274, 19.260052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257648, 0.190808, 0.947212,
		-0.828788, 0.547592, 0.115128,
		-0.496718, -0.814700, 0.299226,
		20.044519, 21.735865, 19.349819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.905445, 22.453835, 19.779327>,  <20.392221, 22.306154, 19.140362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.905445, 22.453835, 19.779327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.980434, 22.060944, 19.775740>,  <20.025429, 21.825209, 19.773586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.980434, 22.060944, 19.775740>,  <19.905445, 22.453835, 19.779327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.980434, 22.060944, 19.775740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140541, 0.017785, 0.989915,
		-0.972163, -0.186845, 0.141378,
		0.187475, -0.982229, -0.008969,
		20.036676, 21.766275, 19.773048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.457098, 22.080801, 20.308773>,  <19.905445, 22.453835, 19.779327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.457098, 22.080801, 20.308773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.729946, 21.794430, 20.249235>,  <19.893656, 21.622606, 20.213512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.729946, 21.794430, 20.249235>,  <19.457098, 22.080801, 20.308773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.729946, 21.794430, 20.249235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042084, -0.164777, 0.985433,
		-0.730027, -0.678449, -0.082269,
		0.682121, -0.715930, -0.148843,
		19.934582, 21.579651, 20.204582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.189060, 21.616060, 20.745012>,  <19.457098, 22.080801, 20.308773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.189060, 21.616060, 20.745012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.572495, 21.533783, 20.666218>,  <19.802555, 21.484417, 20.618942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.572495, 21.533783, 20.666218>,  <19.189060, 21.616060, 20.745012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.572495, 21.533783, 20.666218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184990, -0.076197, 0.979782,
		-0.216546, -0.975645, -0.034990,
		0.958586, -0.205695, -0.196985,
		19.860071, 21.472075, 20.607122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.266911, 21.042055, 21.219688>,  <19.189060, 21.616060, 20.745012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.266911, 21.042055, 21.219688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.614902, 21.195839, 21.096191>,  <19.823698, 21.288109, 21.022093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.614902, 21.195839, 21.096191>,  <19.266911, 21.042055, 21.219688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.614902, 21.195839, 21.096191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307779, 0.065784, 0.949181,
		0.385233, -0.920794, -0.061098,
		0.869981, 0.384461, -0.308743,
		19.875896, 21.311176, 21.003569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.734350, 20.707830, 21.606405>,  <19.266911, 21.042055, 21.219688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.734350, 20.707830, 21.606405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.906921, 21.046833, 21.482729>,  <20.010464, 21.250235, 21.408524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.906921, 21.046833, 21.482729>,  <19.734350, 20.707830, 21.606405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.906921, 21.046833, 21.482729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369606, 0.146594, 0.917552,
		0.822959, -0.510137, -0.250000,
		0.431428, 0.847509, -0.309190,
		20.036350, 21.301086, 21.389973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.422737, 20.669226, 21.948400>,  <19.734350, 20.707830, 21.606405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.422737, 20.669226, 21.948400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.357216, 21.049732, 21.843895>,  <20.317904, 21.278036, 21.781191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.357216, 21.049732, 21.843895>,  <20.422737, 20.669226, 21.948400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.357216, 21.049732, 21.843895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370245, 0.304762, 0.877519,
		0.914378, 0.047008, -0.402122,
		-0.163802, 0.951268, -0.261263,
		20.308075, 21.335112, 21.765516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.798574, 20.242147, 22.456461>,  <20.422737, 20.669226, 21.948400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.798574, 20.242147, 22.456461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.559933, 19.944080, 22.575651>,  <20.416748, 19.765240, 22.647165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.559933, 19.944080, 22.575651>,  <20.798574, 20.242147, 22.456461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.559933, 19.944080, 22.575651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258170, -0.173353, -0.950420,
		0.759876, -0.643953, -0.088956,
		-0.596604, -0.745167, 0.297976,
		20.380951, 19.720530, 22.665045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.760462, 19.749434, 21.980272>,  <20.798574, 20.242147, 22.456461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.760462, 19.749434, 21.980272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.416504, 19.650486, 22.158884>,  <20.210129, 19.591118, 22.266050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.416504, 19.650486, 22.158884>,  <20.760462, 19.749434, 21.980272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.416504, 19.650486, 22.158884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349173, -0.353056, -0.868003,
		0.372369, -0.902307, 0.217216,
		-0.859895, -0.247372, 0.446529,
		20.158535, 19.576275, 22.292843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.672405, 18.954649, 22.087076>,  <20.760462, 19.749434, 21.980272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.672405, 18.954649, 22.087076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.329166, 19.153339, 22.035025>,  <20.123222, 19.272552, 22.003794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.329166, 19.153339, 22.035025>,  <20.672405, 18.954649, 22.087076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.329166, 19.153339, 22.035025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080306, -0.380121, -0.921444,
		-0.507170, -0.780238, 0.366071,
		-0.858097, 0.496726, -0.130128,
		20.071737, 19.302357, 21.995987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.303949, 18.514763, 21.713625>,  <20.672405, 18.954649, 22.087076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.303949, 18.514763, 21.713625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.069218, 18.835129, 21.666025>,  <19.928379, 19.027349, 21.637465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.069218, 18.835129, 21.666025>,  <20.303949, 18.514763, 21.713625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.069218, 18.835129, 21.666025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212028, -0.293837, -0.932043,
		-0.781456, -0.521720, 0.342250,
		-0.586831, 0.800917, -0.119002,
		19.893167, 19.075403, 21.630325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.737410, 18.183924, 21.373945>,  <20.303949, 18.514763, 21.713625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.737410, 18.183924, 21.373945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.694576, 18.577564, 21.317270>,  <19.668877, 18.813749, 21.283266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.694576, 18.577564, 21.317270>,  <19.737410, 18.183924, 21.373945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.694576, 18.577564, 21.317270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087509, -0.151282, -0.984609,
		-0.990391, -0.093037, 0.102318,
		-0.107084, 0.984102, -0.141687,
		19.662451, 18.872795, 21.274765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.032831, 18.232531, 21.032642>,  <19.737410, 18.183924, 21.373945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.032831, 18.232531, 21.032642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.227879, 18.569447, 20.940752>,  <19.344906, 18.771597, 20.885618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.227879, 18.569447, 20.940752>,  <19.032831, 18.232531, 21.032642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.227879, 18.569447, 20.940752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336315, -0.061604, -0.939732,
		-0.805681, 0.535490, 0.253237,
		0.487617, 0.842292, -0.229727,
		19.374165, 18.822134, 20.871834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.564453, 18.738224, 20.622456>,  <19.032831, 18.232531, 21.032642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.564453, 18.738224, 20.622456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.937553, 18.844704, 20.525206>,  <19.161413, 18.908592, 20.466856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.937553, 18.844704, 20.525206>,  <18.564453, 18.738224, 20.622456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.937553, 18.844704, 20.525206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253511, 0.004825, -0.967321,
		-0.256328, 0.963906, 0.071985,
		0.932753, 0.266201, -0.243124,
		19.217379, 18.924564, 20.452269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.405611, 19.238310, 20.118950>,  <18.564453, 18.738224, 20.622456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.405611, 19.238310, 20.118950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.790630, 19.135220, 20.085304>,  <19.021643, 19.073366, 20.065117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.790630, 19.135220, 20.085304>,  <18.405611, 19.238310, 20.118950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.790630, 19.135220, 20.085304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068254, 0.069898, -0.995216,
		0.262371, 0.963687, 0.049689,
		0.962550, -0.257725, -0.084114,
		19.079395, 19.057901, 20.060070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.656961, 19.759258, 19.697241>,  <18.405611, 19.238310, 20.118950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.656961, 19.759258, 19.697241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.900639, 19.442345, 19.683537>,  <19.046844, 19.252197, 19.675314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.900639, 19.442345, 19.683537>,  <18.656961, 19.759258, 19.697241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.900639, 19.442345, 19.683537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035252, 0.070217, -0.996909,
		0.792239, 0.606100, 0.070705,
		0.609191, -0.792283, -0.034262,
		19.083397, 19.204660, 19.673258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.101063, 19.899754, 19.120157>,  <18.656961, 19.759258, 19.697241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.101063, 19.899754, 19.120157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.118748, 19.503307, 19.170328>,  <19.129358, 19.265440, 19.200430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.118748, 19.503307, 19.170328>,  <19.101063, 19.899754, 19.120157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.118748, 19.503307, 19.170328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075533, -0.121874, -0.989667,
		0.996163, 0.053229, 0.069474,
		0.044212, -0.991117, 0.125427,
		19.132011, 19.205973, 19.207956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.712162, 19.604612, 18.731741>,  <19.101063, 19.899754, 19.120157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.712162, 19.604612, 18.731741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.490761, 19.275749, 18.784950>,  <19.357922, 19.078432, 18.816875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.490761, 19.275749, 18.784950>,  <19.712162, 19.604612, 18.731741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.490761, 19.275749, 18.784950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096827, -0.222160, -0.970190,
		0.827201, -0.524121, 0.202573,
		-0.553500, -0.822157, 0.133023,
		19.324711, 19.029102, 18.824858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.982494, 19.099545, 18.338570>,  <19.712162, 19.604612, 18.731741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.982494, 19.099545, 18.338570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.614326, 18.949085, 18.381157>,  <19.393425, 18.858809, 18.406710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.614326, 18.949085, 18.381157>,  <19.982494, 19.099545, 18.338570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.614326, 18.949085, 18.381157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039158, -0.182272, -0.982468,
		0.388963, -0.908453, 0.153037,
		-0.920421, -0.376151, 0.106470,
		19.338200, 18.836241, 18.413097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.923830, 18.396639, 18.042297>,  <19.982494, 19.099545, 18.338570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.923830, 18.396639, 18.042297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.554207, 18.548336, 18.023146>,  <19.332434, 18.639355, 18.011654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.554207, 18.548336, 18.023146>,  <19.923830, 18.396639, 18.042297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.554207, 18.548336, 18.023146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053956, -0.253404, -0.965855,
		-0.378430, -0.889921, 0.254622,
		-0.924056, 0.379246, -0.047879,
		19.276989, 18.662109, 18.008781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.559580, 18.018213, 17.598738>,  <19.923830, 18.396639, 18.042297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.559580, 18.018213, 17.598738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.281075, 18.303551, 17.630629>,  <19.113972, 18.474752, 17.649763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.281075, 18.303551, 17.630629>,  <19.559580, 18.018213, 17.598738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.281075, 18.303551, 17.630629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312224, -0.200972, -0.928508,
		-0.646323, -0.671380, 0.362652,
		-0.696264, 0.713344, 0.079728,
		19.072195, 18.517553, 17.654547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.936771, 17.759418, 17.304920>,  <19.559580, 18.018213, 17.598738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.936771, 17.759418, 17.304920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.904411, 18.157932, 17.293118>,  <18.884995, 18.397041, 17.286036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.904411, 18.157932, 17.293118>,  <18.936771, 17.759418, 17.304920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.904411, 18.157932, 17.293118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510512, -0.066845, -0.857268,
		-0.856056, -0.054290, 0.514024,
		-0.080901, 0.996285, -0.029508,
		18.880140, 18.456818, 17.284266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.250271, 17.887026, 17.189472>,  <18.936771, 17.759418, 17.304920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.250271, 17.887026, 17.189472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.442596, 18.218937, 17.076128>,  <18.557991, 18.418083, 17.008121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.442596, 18.218937, 17.076128>,  <18.250271, 17.887026, 17.189472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.442596, 18.218937, 17.076128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414931, -0.069369, -0.907205,
		-0.772433, 0.553769, 0.310946,
		0.480812, 0.829776, -0.283359,
		18.586840, 18.467869, 16.991119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.811321, 18.296959, 16.914528>,  <18.250271, 17.887026, 17.189472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.811321, 18.296959, 16.914528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.150394, 18.419163, 16.741049>,  <18.353838, 18.492485, 16.636961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.150394, 18.419163, 16.741049>,  <17.811321, 18.296959, 16.914528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.150394, 18.419163, 16.741049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431417, -0.078757, -0.898708,
		-0.308723, 0.948926, 0.065042,
		0.847685, 0.305512, -0.433697,
		18.404699, 18.510817, 16.610939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.495268, 18.802105, 16.495390>,  <17.811321, 18.296959, 16.914528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.495268, 18.802105, 16.495390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.853867, 18.789074, 16.318651>,  <18.069027, 18.781256, 16.212608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.853867, 18.789074, 16.318651>,  <17.495268, 18.802105, 16.495390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.853867, 18.789074, 16.318651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441526, -0.148262, -0.884914,
		-0.036682, 0.988411, -0.147300,
		0.896498, -0.032576, -0.441848,
		18.122816, 18.779301, 16.186096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.615887, 19.458181, 15.986757>,  <17.495268, 18.802105, 16.495390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.615887, 19.458181, 15.986757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.836430, 19.136887, 15.896588>,  <17.968756, 18.944109, 15.842487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.836430, 19.136887, 15.896588>,  <17.615887, 19.458181, 15.986757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.836430, 19.136887, 15.896588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461378, -0.068455, -0.884559,
		0.695079, 0.591714, -0.408338,
		0.551359, -0.803236, -0.225422,
		18.001837, 18.895916, 15.828961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.809259, 19.552164, 15.313660>,  <17.615887, 19.458181, 15.986757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.809259, 19.552164, 15.313660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.901905, 19.164082, 15.342095>,  <17.957493, 18.931232, 15.359157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.901905, 19.164082, 15.342095>,  <17.809259, 19.552164, 15.313660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.901905, 19.164082, 15.342095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395692, -0.160716, -0.904212,
		0.888698, 0.181297, -0.421127,
		0.231613, -0.970207, 0.071090,
		17.971390, 18.873020, 15.363422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.176262, 19.340494, 14.604350>,  <17.809259, 19.552164, 15.313660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.176262, 19.340494, 14.604350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.023201, 19.023129, 14.793694>,  <17.931364, 18.832708, 14.907301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.023201, 19.023129, 14.793694>,  <18.176262, 19.340494, 14.604350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.023201, 19.023129, 14.793694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385595, -0.328450, -0.862228,
		0.839580, -0.512459, -0.180254,
		-0.382652, -0.793414, 0.473362,
		17.908405, 18.785105, 14.935703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.368008, 18.790844, 14.286488>,  <18.176262, 19.340494, 14.604350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.368008, 18.790844, 14.286488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.038914, 18.644581, 14.460568>,  <17.841457, 18.556822, 14.565017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.038914, 18.644581, 14.460568>,  <18.368008, 18.790844, 14.286488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.038914, 18.644581, 14.460568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333703, -0.309099, -0.890561,
		0.460162, -0.877924, 0.132285,
		-0.822735, -0.365659, 0.435202,
		17.792093, 18.534883, 14.591129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.324884, 18.194401, 13.902020>,  <18.368008, 18.790844, 14.286488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.324884, 18.194401, 13.902020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.966179, 18.261753, 14.065709>,  <17.750956, 18.302164, 14.163922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.966179, 18.261753, 14.065709>,  <18.324884, 18.194401, 13.902020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.966179, 18.261753, 14.065709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441335, -0.407658, -0.799399,
		0.032221, -0.897476, 0.439884,
		-0.896763, 0.168380, 0.409223,
		17.697149, 18.312267, 14.188476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.866573, 17.651451, 13.655072>,  <18.324884, 18.194401, 13.902020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.866573, 17.651451, 13.655072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.648777, 17.958797, 13.789620>,  <17.518099, 18.143206, 13.870350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.648777, 17.958797, 13.789620>,  <17.866573, 17.651451, 13.655072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.648777, 17.958797, 13.789620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694796, -0.188514, -0.694062,
		-0.469881, -0.611620, 0.636500,
		-0.544492, 0.768364, 0.336372,
		17.485430, 18.189306, 13.890532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.212469, 17.409870, 13.582661>,  <17.866573, 17.651451, 13.655072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.212469, 17.409870, 13.582661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.141933, 17.802925, 13.605750>,  <17.099611, 18.038757, 13.619604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.141933, 17.802925, 13.605750>,  <17.212469, 17.409870, 13.582661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.141933, 17.802925, 13.605750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391550, -0.016221, -0.920014,
		-0.903102, -0.184836, 0.387612,
		-0.176339, 0.982636, 0.057723,
		17.089031, 18.097715, 13.623067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.509787, 17.535036, 13.375573>,  <17.212469, 17.409870, 13.582661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.509787, 17.535036, 13.375573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.698338, 17.883274, 13.319187>,  <16.811468, 18.092216, 13.285356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.698338, 17.883274, 13.319187>,  <16.509787, 17.535036, 13.375573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.698338, 17.883274, 13.319187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435583, 0.090836, -0.895553,
		-0.766858, 0.483545, 0.422034,
		0.471376, 0.870593, -0.140965,
		16.839750, 18.144453, 13.276897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.026413, 17.968140, 13.100156>,  <16.509787, 17.535036, 13.375573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.026413, 17.968140, 13.100156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.373409, 18.126457, 12.979621>,  <16.581608, 18.221449, 12.907300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.373409, 18.126457, 12.979621>,  <16.026413, 17.968140, 13.100156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.373409, 18.126457, 12.979621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384257, 0.148453, -0.911213,
		-0.315919, 0.906260, 0.280869,
		0.867491, 0.395795, -0.301338,
		16.633657, 18.245195, 12.889219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.900363, 18.584238, 12.817136>,  <16.026413, 17.968140, 13.100156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.900363, 18.584238, 12.817136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.245419, 18.488834, 12.638714>,  <16.452452, 18.431593, 12.531660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.245419, 18.488834, 12.638714>,  <15.900363, 18.584238, 12.817136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.245419, 18.488834, 12.638714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420489, 0.152004, -0.894474,
		0.281142, 0.959170, 0.030835,
		0.862640, -0.238509, -0.446056,
		16.504211, 18.417282, 12.504897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.885804, 18.976444, 12.164205>,  <15.900363, 18.584238, 12.817136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.885804, 18.976444, 12.164205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.200478, 18.742756, 12.084392>,  <16.389282, 18.602543, 12.036504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.200478, 18.742756, 12.084392>,  <15.885804, 18.976444, 12.164205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.200478, 18.742756, 12.084392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169578, 0.106281, -0.979769,
		0.593610, 0.804605, -0.015462,
		0.786683, -0.584222, -0.199533,
		16.436483, 18.567490, 12.024531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.161440, 19.212130, 11.454029>,  <15.885804, 18.976444, 12.164205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.161440, 19.212130, 11.454029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.298462, 18.839794, 11.504933>,  <16.380676, 18.616392, 11.535476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.298462, 18.839794, 11.504933>,  <16.161440, 19.212130, 11.454029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.298462, 18.839794, 11.504933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353028, -0.253063, -0.900739,
		0.870647, 0.263628, -0.415300,
		0.342557, -0.930838, 0.127261,
		16.401230, 18.560543, 11.543112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.445257, 19.069710, 10.825503>,  <16.161440, 19.212130, 11.454029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.445257, 19.069710, 10.825503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.364483, 18.724697, 11.011089>,  <16.316019, 18.517691, 11.122441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.364483, 18.724697, 11.011089>,  <16.445257, 19.069710, 10.825503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.364483, 18.724697, 11.011089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334072, -0.384654, -0.860487,
		0.920662, -0.328759, -0.210473,
		-0.201933, -0.862531, 0.463965,
		16.303904, 18.465939, 11.150279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.482080, 18.562105, 10.323023>,  <16.445257, 19.069710, 10.825503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.482080, 18.562105, 10.323023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.270138, 18.388248, 10.614320>,  <16.142973, 18.283934, 10.789098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.270138, 18.388248, 10.614320>,  <16.482080, 18.562105, 10.323023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.270138, 18.388248, 10.614320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659772, -0.328279, -0.675969,
		0.532871, -0.838641, -0.112824,
		-0.529857, -0.434643, 0.728243,
		16.111181, 18.257856, 10.832792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.284203, 17.917583, 9.996161>,  <16.482080, 18.562105, 10.323023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.284203, 17.917583, 9.996161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.031231, 17.939629, 10.305223>,  <15.879449, 17.952856, 10.490662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.031231, 17.939629, 10.305223>,  <16.284203, 17.917583, 9.996161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.031231, 17.939629, 10.305223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651927, -0.576588, -0.492481,
		0.418363, -0.815174, 0.400579,
		-0.632427, 0.055113, 0.772657,
		15.841503, 17.956161, 10.537021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.986711, 17.145506, 10.039816>,  <16.284203, 17.917583, 9.996161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.986711, 17.145506, 10.039816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.760758, 17.399578, 10.250512>,  <15.625187, 17.552021, 10.376930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.760758, 17.399578, 10.250512>,  <15.986711, 17.145506, 10.039816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.760758, 17.399578, 10.250512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813745, -0.322926, -0.483258,
		-0.136857, -0.701616, 0.699289,
		-0.564880, 0.635180, 0.526742,
		15.591294, 17.590132, 10.408534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.343161, 16.740812, 10.349635>,  <15.986711, 17.145506, 10.039816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.343161, 16.740812, 10.349635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.256389, 17.126011, 10.285659>,  <15.204326, 17.357130, 10.247273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.256389, 17.126011, 10.285659>,  <15.343161, 16.740812, 10.349635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.256389, 17.126011, 10.285659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848669, -0.267009, -0.456582,
		-0.482392, 0.036690, 0.875187,
		-0.216931, 0.962995, -0.159941,
		15.191309, 17.414909, 10.237677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.563165, 16.869595, 10.526499>,  <15.343161, 16.740812, 10.349635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.563165, 16.869595, 10.526499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.660348, 17.173508, 10.285267>,  <14.718657, 17.355854, 10.140528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.660348, 17.173508, 10.285267>,  <14.563165, 16.869595, 10.526499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.660348, 17.173508, 10.285267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768223, -0.228899, -0.597862,
		-0.592288, 0.608555, 0.528068,
		0.242958, 0.759780, -0.603080,
		14.733235, 17.401442, 10.104343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.021318, 16.954718, 10.187177>,  <14.563165, 16.869595, 10.526499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.021318, 16.954718, 10.187177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.236213, 17.222816, 9.982375>,  <14.365149, 17.383675, 9.859494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.236213, 17.222816, 9.982375>,  <14.021318, 16.954718, 10.187177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.236213, 17.222816, 9.982375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615305, -0.103743, -0.781433,
		-0.576869, 0.734852, 0.356671,
		0.537236, 0.670246, -0.512004,
		14.397384, 17.423891, 9.828774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.595485, 17.431150, 9.837295>,  <14.021318, 16.954718, 10.187177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.595485, 17.431150, 9.837295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.931991, 17.468216, 9.624245>,  <14.133894, 17.490456, 9.496415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.931991, 17.468216, 9.624245>,  <13.595485, 17.431150, 9.837295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.931991, 17.468216, 9.624245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515903, -0.156912, -0.842153,
		-0.161614, 0.983256, -0.084198,
		0.841264, 0.092666, -0.532624,
		14.184370, 17.496016, 9.464458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.535446, 18.038004, 9.286648>,  <13.595485, 17.431150, 9.837295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.535446, 18.038004, 9.286648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.805200, 17.778278, 9.146024>,  <13.967052, 17.622442, 9.061649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.805200, 17.778278, 9.146024>,  <13.535446, 18.038004, 9.286648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.805200, 17.778278, 9.146024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528356, -0.091758, -0.844050,
		0.515797, 0.754963, -0.404950,
		0.674384, -0.649316, -0.351561,
		14.007515, 17.583483, 9.040555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.773897, 18.314676, 8.589927>,  <13.535446, 18.038004, 9.286648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.773897, 18.314676, 8.589927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.863799, 17.925106, 8.602256>,  <13.917740, 17.691364, 8.609653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.863799, 17.925106, 8.602256>,  <13.773897, 18.314676, 8.589927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.863799, 17.925106, 8.602256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353457, -0.110964, -0.928846,
		0.908049, 0.197867, -0.369181,
		0.224754, -0.973928, 0.030823,
		13.931226, 17.632927, 8.611503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.955057, 18.123737, 7.945341>,  <13.773897, 18.314676, 8.589927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.955057, 18.123737, 7.945341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.815419, 17.793255, 8.122210>,  <13.731636, 17.594965, 8.228331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.815419, 17.793255, 8.122210>,  <13.955057, 18.123737, 7.945341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.815419, 17.793255, 8.122210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577890, -0.181641, -0.795644,
		0.737683, -0.533281, -0.414047,
		-0.349094, -0.826207, 0.442171,
		13.710690, 17.545393, 8.254861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.977816, 17.594637, 7.522227>,  <13.955057, 18.123737, 7.945341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.977816, 17.594637, 7.522227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.681853, 17.503864, 7.775538>,  <13.504276, 17.449402, 7.927526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.681853, 17.503864, 7.775538>,  <13.977816, 17.594637, 7.522227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.681853, 17.503864, 7.775538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620361, -0.133917, -0.772800,
		0.260179, -0.964660, -0.041693,
		-0.739906, -0.226931, 0.633279,
		13.459882, 17.435785, 7.965522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.710730, 16.985853, 7.134546>,  <13.977816, 17.594637, 7.522227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.710730, 16.985853, 7.134546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.449901, 17.122440, 7.405309>,  <13.293404, 17.204391, 7.567766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.449901, 17.122440, 7.405309>,  <13.710730, 16.985853, 7.134546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.449901, 17.122440, 7.405309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749462, -0.155488, -0.643530,
		-0.114493, -0.926944, 0.357305,
		-0.652072, 0.341466, 0.676907,
		13.254279, 17.224880, 7.608381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.235962, 16.428959, 7.580587>,  <13.710730, 16.985853, 7.134546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.235962, 16.428959, 7.580587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.046882, 16.780540, 7.555316>,  <12.933434, 16.991489, 7.540153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.046882, 16.780540, 7.555316>,  <13.235962, 16.428959, 7.580587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.046882, 16.780540, 7.555316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767922, -0.446033, -0.459729,
		-0.432256, -0.168806, 0.885810,
		-0.472705, 0.878953, -0.063170,
		12.905071, 17.044228, 7.536362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.443438, 16.317202, 7.747504>,  <13.235962, 16.428959, 7.580587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.443438, 16.317202, 7.747504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.562062, 16.609840, 7.501962>,  <12.633237, 16.785423, 7.354636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.562062, 16.609840, 7.501962>,  <12.443438, 16.317202, 7.747504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.562062, 16.609840, 7.501962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247339, -0.562003, -0.789288,
		-0.922429, 0.385903, 0.014284,
		0.296561, 0.731595, -0.613857,
		12.651031, 16.829319, 7.317805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.886812, 16.506668, 7.252526>,  <12.443438, 16.317202, 7.747504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.886812, 16.506668, 7.252526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.238299, 16.627670, 7.104828>,  <12.449192, 16.700272, 7.016209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.238299, 16.627670, 7.104828>,  <11.886812, 16.506668, 7.252526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.238299, 16.627670, 7.104828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197154, -0.474484, -0.857902,
		-0.434722, 0.826653, -0.357298,
		0.878719, 0.302507, -0.369246,
		12.501915, 16.718422, 6.994054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.946356, 16.397738, 6.507159>,  <11.886812, 16.506668, 7.252526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.946356, 16.397738, 6.507159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.341641, 16.424511, 6.562229>,  <12.578813, 16.440575, 6.595271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.341641, 16.424511, 6.562229>,  <11.946356, 16.397738, 6.507159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.341641, 16.424511, 6.562229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150848, -0.272621, -0.950222,
		-0.026070, 0.959790, -0.279504,
		0.988213, 0.066936, 0.137676,
		12.638105, 16.444592, 6.603532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.194721, 16.820276, 5.989485>,  <11.946356, 16.397738, 6.507159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.194721, 16.820276, 5.989485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.484799, 16.562580, 6.086682>,  <12.658847, 16.407963, 6.145000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.484799, 16.562580, 6.086682>,  <12.194721, 16.820276, 5.989485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.484799, 16.562580, 6.086682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013687, -0.366326, -0.930386,
		0.688406, 0.671387, -0.274476,
		0.725196, -0.644240, 0.242992,
		12.702358, 16.369308, 6.159580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.874214, 16.786465, 5.509086>,  <12.194721, 16.820276, 5.989485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.874214, 16.786465, 5.509086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.833915, 16.432671, 5.691308>,  <12.809735, 16.220394, 5.800642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.833915, 16.432671, 5.691308>,  <12.874214, 16.786465, 5.509086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.833915, 16.432671, 5.691308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145901, -0.439801, -0.886165,
		0.984156, -0.155745, -0.084739,
		-0.100748, -0.884488, 0.455556,
		12.803691, 16.167324, 5.827975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.443819, 16.284729, 5.315845>,  <12.874214, 16.786465, 5.509086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.443819, 16.284729, 5.315845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.090175, 16.120003, 5.404166>,  <12.877988, 16.021166, 5.457159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.090175, 16.120003, 5.404166>,  <13.443819, 16.284729, 5.315845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.090175, 16.120003, 5.404166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020066, -0.438635, -0.898441,
		0.466846, -0.798752, 0.379538,
		-0.884111, -0.411818, 0.220802,
		12.824942, 15.996457, 5.470407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.369481, 15.782501, 4.848570>,  <13.443819, 16.284729, 5.315845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.369481, 15.782501, 4.848570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.000451, 15.793774, 5.002486>,  <12.779034, 15.800537, 5.094836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.000451, 15.793774, 5.002486>,  <13.369481, 15.782501, 4.848570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.000451, 15.793774, 5.002486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347734, -0.492804, -0.797637,
		0.167148, -0.869684, 0.464448,
		-0.922574, 0.028181, 0.384790,
		12.723679, 15.802228, 5.117923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.116758, 15.094471, 4.766358>,  <13.369481, 15.782501, 4.848570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.116758, 15.094471, 4.766358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.821094, 15.363056, 4.745269>,  <12.643695, 15.524207, 4.732615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.821094, 15.363056, 4.745269>,  <13.116758, 15.094471, 4.766358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.821094, 15.363056, 4.745269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259155, -0.355787, -0.897916,
		-0.621676, -0.650041, 0.436997,
		-0.739160, 0.671463, -0.052723,
		12.599345, 15.564495, 4.729452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.554372, 14.803491, 4.672496>,  <13.116758, 15.094471, 4.766358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.554372, 14.803491, 4.672496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.488921, 15.161446, 4.506411>,  <12.449651, 15.376219, 4.406759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.488921, 15.161446, 4.506411>,  <12.554372, 14.803491, 4.672496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.488921, 15.161446, 4.506411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129161, -0.436696, -0.890289,
		-0.978031, -0.092045, 0.187040,
		-0.163626, 0.894888, -0.415213,
		12.439834, 15.429912, 4.381846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.953375, 14.821783, 4.284579>,  <12.554372, 14.803491, 4.672496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.953375, 14.821783, 4.284579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.117642, 15.146088, 4.117717>,  <12.216203, 15.340671, 4.017600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.117642, 15.146088, 4.117717>,  <11.953375, 14.821783, 4.284579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.117642, 15.146088, 4.117717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277204, -0.324839, -0.904233,
		-0.868625, 0.486976, 0.091345,
		0.410668, 0.810761, -0.417155,
		12.240843, 15.389316, 3.992570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.457716, 14.958925, 3.764032>,  <11.953375, 14.821783, 4.284579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.457716, 14.958925, 3.764032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.778262, 15.166622, 3.645237>,  <11.970590, 15.291241, 3.573960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.778262, 15.166622, 3.645237>,  <11.457716, 14.958925, 3.764032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.778262, 15.166622, 3.645237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192950, -0.245569, -0.949982,
		-0.566202, 0.818586, -0.096602,
		0.801365, 0.519242, -0.296988,
		12.018672, 15.322395, 3.556141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.301362, 15.142797, 3.068349>,  <11.457716, 14.958925, 3.764032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.301362, 15.142797, 3.068349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.694009, 15.213646, 3.039902>,  <11.929597, 15.256156, 3.022835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.694009, 15.213646, 3.039902>,  <11.301362, 15.142797, 3.068349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.694009, 15.213646, 3.039902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062629, -0.053061, -0.996625,
		-0.180299, 0.982757, -0.040993,
		0.981616, 0.177123, -0.071116,
		11.988494, 15.266783, 3.018568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.416662, 15.790031, 2.612875>,  <11.301362, 15.142797, 3.068349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.416662, 15.790031, 2.612875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.732511, 15.545013, 2.598518>,  <11.922019, 15.398003, 2.589904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.732511, 15.545013, 2.598518>,  <11.416662, 15.790031, 2.612875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.732511, 15.545013, 2.598518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068931, -0.030428, -0.997157,
		0.609712, 0.789850, -0.066250,
		0.789620, -0.612545, -0.035893,
		11.969397, 15.361250, 2.587750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.030233, 16.123344, 2.331071>,  <11.416662, 15.790031, 2.612875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.030233, 16.123344, 2.331071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.005788, 15.738426, 2.225054>,  <11.991120, 15.507475, 2.161443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.005788, 15.738426, 2.225054>,  <12.030233, 16.123344, 2.331071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.005788, 15.738426, 2.225054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002067, 0.265662, -0.964064,
		0.998129, -0.058370, -0.018225,
		-0.061114, -0.962298, -0.265044,
		11.987453, 15.449737, 2.145540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.704273, 15.813669, 2.084640>,  <12.030233, 16.123344, 2.331071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.704273, 15.813669, 2.084640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.378245, 15.656326, 1.914496>,  <12.182629, 15.561920, 1.812410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.378245, 15.656326, 1.914496>,  <12.704273, 15.813669, 2.084640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.378245, 15.656326, 1.914496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145812, 0.571280, -0.807699,
		0.560714, -0.720354, -0.408277,
		-0.815070, -0.393357, -0.425360,
		12.133724, 15.538320, 1.786888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.751690, 15.547667, 1.462820>,  <12.704273, 15.813669, 2.084640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.751690, 15.547667, 1.462820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.359462, 15.626022, 1.466982>,  <12.124125, 15.673036, 1.469479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.359462, 15.626022, 1.466982>,  <12.751690, 15.547667, 1.462820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.359462, 15.626022, 1.466982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108853, 0.587484, -0.801882,
		-0.163192, -0.785169, -0.597392,
		-0.980571, 0.195889, 0.010405,
		12.065290, 15.684789, 1.470104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.428161, 15.407409, 0.771170>,  <12.751690, 15.547667, 1.462820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.428161, 15.407409, 0.771170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.231322, 15.676147, 0.992607>,  <12.113219, 15.837391, 1.125469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.231322, 15.676147, 0.992607>,  <12.428161, 15.407409, 0.771170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.231322, 15.676147, 0.992607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096948, 0.589667, -0.801806,
		-0.865126, -0.448235, -0.225039,
		-0.492096, 0.671846, 0.553592,
		12.083694, 15.877702, 1.158684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.768226, 15.692297, 0.418961>,  <12.428161, 15.407409, 0.771170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.768226, 15.692297, 0.418961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.944364, 15.933365, 0.685160>,  <12.050046, 16.078007, 0.844879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.944364, 15.933365, 0.685160>,  <11.768226, 15.692297, 0.418961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.944364, 15.933365, 0.685160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033104, 0.729825, -0.682832,
		-0.897218, 0.322711, 0.301424,
		0.440344, 0.602671, 0.665496,
		12.076467, 16.114166, 0.884808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.726534, 16.411648, 0.170517>,  <11.768226, 15.692297, 0.418961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.726534, 16.411648, 0.170517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.073625, 16.450081, 0.365582>,  <12.281879, 16.473141, 0.482622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.073625, 16.450081, 0.365582>,  <11.726534, 16.411648, 0.170517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.073625, 16.450081, 0.365582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363708, 0.545973, -0.754738,
		-0.338769, 0.832275, 0.438810,
		0.867728, 0.096083, 0.487664,
		12.333943, 16.478905, 0.511882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.982393, 17.102516, 0.067416>,  <11.726534, 16.411648, 0.170517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.982393, 17.102516, 0.067416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.306268, 16.883667, 0.152332>,  <12.500592, 16.752357, 0.203282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.306268, 16.883667, 0.152332>,  <11.982393, 17.102516, 0.067416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.306268, 16.883667, 0.152332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520388, 0.502121, -0.690703,
		0.271304, 0.669725, 0.691276,
		0.809685, -0.547123, 0.212290,
		12.549173, 16.719530, 0.216019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.469467, 17.544807, 0.110175>,  <11.982393, 17.102516, 0.067416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.469467, 17.544807, 0.110175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.653172, 17.201214, 0.019647>,  <12.763396, 16.995058, -0.034670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.653172, 17.201214, 0.019647>,  <12.469467, 17.544807, 0.110175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.653172, 17.201214, 0.019647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461725, 0.448499, -0.765284,
		0.758872, 0.246970, 0.602594,
		0.459264, -0.858985, -0.226321,
		12.790952, 16.943518, -0.048249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.158439, 17.645386, 0.111240>,  <12.469467, 17.544807, 0.110175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.158439, 17.645386, 0.111240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.010364, 17.355865, -0.121680>,  <12.921518, 17.182154, -0.261431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.010364, 17.355865, -0.121680>,  <13.158439, 17.645386, 0.111240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.010364, 17.355865, -0.121680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557292, 0.328471, -0.762583,
		0.743228, -0.606809, 0.281773,
		-0.370188, -0.723802, -0.582298,
		12.899307, 17.138725, -0.296369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.717373, 17.213137, -0.092029>,  <13.158439, 17.645386, 0.111240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.717373, 17.213137, -0.092029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.419238, 17.231197, -0.358092>,  <13.240357, 17.242033, -0.517730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.419238, 17.231197, -0.358092>,  <13.717373, 17.213137, -0.092029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.419238, 17.231197, -0.358092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592346, 0.502691, -0.629625,
		0.305941, -0.863286, -0.401419,
		-0.745336, 0.045151, -0.665158,
		13.195637, 17.244743, -0.557639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.919881, 16.958109, -0.725987>,  <13.717373, 17.213137, -0.092029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.919881, 16.958109, -0.725987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.614093, 17.203495, -0.805227>,  <13.430620, 17.350727, -0.852772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.614093, 17.203495, -0.805227>,  <13.919881, 16.958109, -0.725987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.614093, 17.203495, -0.805227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569725, 0.499127, -0.652905,
		-0.301657, -0.611990, -0.731075,
		-0.764471, 0.613466, -0.198101,
		13.384751, 17.387535, -0.864658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.816538, 17.063862, -1.432490>,  <13.919881, 16.958109, -0.725987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.816538, 17.063862, -1.432490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.714803, 17.393669, -1.230309>,  <13.653762, 17.591553, -1.109001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.714803, 17.393669, -1.230309>,  <13.816538, 17.063862, -1.432490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.714803, 17.393669, -1.230309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717376, 0.511354, -0.473169,
		-0.648601, 0.242254, -0.721547,
		-0.254339, 0.824518, 0.505451,
		13.638501, 17.641026, -1.078674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.058994, 17.616669, -1.866270>,  <13.816538, 17.063862, -1.432490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.058994, 17.616669, -1.866270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.971835, 17.792374, -1.517658>,  <13.919539, 17.897797, -1.308490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.971835, 17.792374, -1.517658>,  <14.058994, 17.616669, -1.866270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.971835, 17.792374, -1.517658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550991, 0.792435, -0.261639,
		-0.805561, 0.423196, -0.414701,
		-0.217899, 0.439263, 0.871532,
		13.906466, 17.924152, -1.256198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.729137, 18.326796, -1.974862>,  <14.058994, 17.616669, -1.866270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.729137, 18.326796, -1.974862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.940057, 18.268635, -1.640003>,  <14.066608, 18.233738, -1.439088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.940057, 18.268635, -1.640003>,  <13.729137, 18.326796, -1.974862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.940057, 18.268635, -1.640003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568827, 0.792298, -0.220680,
		-0.631183, 0.592556, 0.500485,
		0.527299, -0.145400, 0.837147,
		14.098247, 18.225016, -1.388859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.625833, 18.853003, -1.466266>,  <13.729137, 18.326796, -1.974862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.625833, 18.853003, -1.466266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.988696, 18.702717, -1.390473>,  <14.206414, 18.612545, -1.344998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.988696, 18.702717, -1.390473>,  <13.625833, 18.853003, -1.466266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.988696, 18.702717, -1.390473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408457, 0.894458, -0.181956,
		-0.101120, 0.242458, 0.964878,
		0.907159, -0.375712, 0.189481,
		14.260844, 18.590004, -1.333629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.077721, 19.240198, -1.935511>,  <13.625833, 18.853003, -1.466266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.077721, 19.240198, -1.935511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.202773, 19.098255, -1.583071>,  <14.277804, 19.013088, -1.371607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.202773, 19.098255, -1.583071>,  <14.077721, 19.240198, -1.935511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.202773, 19.098255, -1.583071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643850, 0.761155, 0.078101,
		-0.698369, 0.542879, 0.466437,
		0.312632, -0.354858, 0.881100,
		14.296562, 18.991798, -1.318741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.137417, 19.917356, -1.609960>,  <14.077721, 19.240198, -1.935511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.137417, 19.917356, -1.609960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.416415, 19.657417, -1.489166>,  <14.583814, 19.501453, -1.416689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.416415, 19.657417, -1.489166>,  <14.137417, 19.917356, -1.609960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.416415, 19.657417, -1.489166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663224, 0.745011, 0.071359,
		-0.271356, 0.150513, 0.950638,
		0.697495, -0.649850, 0.301987,
		14.625664, 19.462461, -1.398569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.827295, 19.956963, -1.505649>,  <14.137417, 19.917356, -1.609960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.827295, 19.956963, -1.505649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.564328, 20.157185, -1.280350>,  <14.406548, 20.277317, -1.145170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.564328, 20.157185, -1.280350>,  <14.827295, 19.956963, -1.505649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.564328, 20.157185, -1.280350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738018, -0.276851, -0.615372,
		-0.152089, -0.820245, 0.551423,
		-0.657418, 0.500552, 0.563249,
		14.367103, 20.307350, -1.111375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<21.881041, 16.568542, 15.941884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.079781, 16.904713, 15.855327>,  <22.199024, 17.106415, 15.803392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.079781, 16.904713, 15.855327>,  <21.881041, 16.568542, 15.941884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.079781, 16.904713, 15.855327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383134, -0.011312, -0.923624,
		-0.778685, 0.541808, 0.316376,
		0.496848, 0.840426, -0.216393,
		22.228834, 17.156841, 15.790409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.394428, 17.045273, 15.644290>,  <21.881041, 16.568542, 15.941884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.394428, 17.045273, 15.644290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.755409, 17.182846, 15.540528>,  <21.971998, 17.265390, 15.478271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.755409, 17.182846, 15.540528>,  <21.394428, 17.045273, 15.644290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.755409, 17.182846, 15.540528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322756, 0.140984, -0.935923,
		-0.285324, 0.928349, 0.238238,
		0.902452, 0.343934, -0.259404,
		22.026144, 17.286026, 15.462708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.265093, 17.478689, 15.139963>,  <21.394428, 17.045273, 15.644290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.265093, 17.478689, 15.139963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.657276, 17.415726, 15.092763>,  <21.892586, 17.377947, 15.064443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.657276, 17.415726, 15.092763>,  <21.265093, 17.478689, 15.139963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.657276, 17.415726, 15.092763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085101, 0.201429, -0.975799,
		0.177370, 0.966772, 0.184097,
		0.980458, -0.157410, -0.118001,
		21.951414, 17.368502, 15.057363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.528408, 18.013485, 14.624863>,  <21.265093, 17.478689, 15.139963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.528408, 18.013485, 14.624863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.753529, 17.682884, 14.619966>,  <21.888601, 17.484524, 14.617027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.753529, 17.682884, 14.619966>,  <21.528408, 18.013485, 14.624863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.753529, 17.682884, 14.619966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075633, -0.036741, -0.996459,
		0.823125, 0.561734, -0.083189,
		0.562802, -0.826501, -0.012243,
		21.922369, 17.434935, 14.616293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.038256, 18.157057, 14.065187>,  <21.528408, 18.013485, 14.624863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.038256, 18.157057, 14.065187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.042046, 17.762238, 14.129239>,  <22.044319, 17.525345, 14.167670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.042046, 17.762238, 14.129239>,  <22.038256, 18.157057, 14.065187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.042046, 17.762238, 14.129239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110594, -0.160190, -0.980871,
		0.993820, -0.008416, -0.110680,
		0.009475, -0.987050, 0.160131,
		22.044888, 17.466122, 14.177279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.486464, 17.823843, 13.569801>,  <22.038256, 18.157057, 14.065187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.486464, 17.823843, 13.569801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.233624, 17.526871, 13.658566>,  <22.081919, 17.348688, 13.711825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.233624, 17.526871, 13.658566>,  <22.486464, 17.823843, 13.569801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.233624, 17.526871, 13.658566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249153, -0.076442, -0.965442,
		0.733737, -0.665548, -0.136660,
		-0.632101, -0.742430, 0.221912,
		22.043993, 17.304142, 13.725141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.551836, 17.465166, 13.069530>,  <22.486464, 17.823843, 13.569801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.551836, 17.465166, 13.069530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.196938, 17.340813, 13.205851>,  <21.983997, 17.266201, 13.287642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.196938, 17.340813, 13.205851>,  <22.551836, 17.465166, 13.069530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.196938, 17.340813, 13.205851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294869, -0.185927, -0.937274,
		0.354747, -0.932085, 0.073293,
		-0.887247, -0.310884, 0.340800,
		21.930763, 17.247547, 13.308090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.439653, 16.747110, 12.851797>,  <22.551836, 17.465166, 13.069530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.439653, 16.747110, 12.851797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.069351, 16.876015, 12.930920>,  <21.847170, 16.953358, 12.978394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.069351, 16.876015, 12.930920>,  <22.439653, 16.747110, 12.851797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.069351, 16.876015, 12.930920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313858, -0.363129, -0.877286,
		-0.210886, -0.874234, 0.437312,
		-0.925754, 0.322261, 0.197807,
		21.791624, 16.972692, 12.990262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.978785, 16.247511, 12.614130>,  <22.439653, 16.747110, 12.851797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.978785, 16.247511, 12.614130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.729176, 16.553284, 12.678920>,  <21.579411, 16.736748, 12.717793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.729176, 16.553284, 12.678920>,  <21.978785, 16.247511, 12.614130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.729176, 16.553284, 12.678920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551756, -0.284277, -0.784061,
		-0.553317, -0.578643, 0.599177,
		-0.624023, 0.764434, 0.161974,
		21.541969, 16.782614, 12.727512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.245699, 15.994369, 12.709804>,  <21.978785, 16.247511, 12.614130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.245699, 15.994369, 12.709804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.193447, 16.372536, 12.590390>,  <21.162096, 16.599436, 12.518742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.193447, 16.372536, 12.590390>,  <21.245699, 15.994369, 12.709804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.193447, 16.372536, 12.590390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660062, -0.307613, -0.685341,
		-0.739766, 0.107524, 0.664217,
		-0.130631, 0.945417, -0.298534,
		21.154257, 16.656160, 12.500830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.479851, 16.153881, 12.765072>,  <21.245699, 15.994369, 12.709804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.479851, 16.153881, 12.765072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.654533, 16.404732, 12.507079>,  <20.759342, 16.555243, 12.352283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.654533, 16.404732, 12.507079>,  <20.479851, 16.153881, 12.765072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.654533, 16.404732, 12.507079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737390, -0.161149, -0.655963,
		-0.515309, 0.762066, 0.392062,
		0.436707, 0.627126, -0.644981,
		20.785545, 16.592869, 12.313584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.016333, 16.629946, 12.699813>,  <20.479851, 16.153881, 12.765072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.016333, 16.629946, 12.699813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.243221, 16.705166, 12.379090>,  <20.379354, 16.750298, 12.186657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.243221, 16.705166, 12.379090>,  <20.016333, 16.629946, 12.699813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.243221, 16.705166, 12.379090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819749, 0.035312, -0.571634,
		-0.079182, 0.981525, 0.174183,
		0.567224, 0.188049, -0.801807,
		20.413389, 16.761581, 12.138548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.621136, 17.129221, 12.384681>,  <20.016333, 16.629946, 12.699813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.621136, 17.129221, 12.384681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.862610, 16.970070, 12.108346>,  <20.007494, 16.874578, 11.942545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.862610, 16.970070, 12.108346>,  <19.621136, 17.129221, 12.384681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.862610, 16.970070, 12.108346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726486, 0.082294, -0.682236,
		0.328299, 0.913739, -0.239375,
		0.603686, -0.397880, -0.690836,
		20.043716, 16.850706, 11.901095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.496326, 17.485327, 11.816092>,  <19.621136, 17.129221, 12.384681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.496326, 17.485327, 11.816092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.678680, 17.160465, 11.670445>,  <19.788092, 16.965549, 11.583057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.678680, 17.160465, 11.670445>,  <19.496326, 17.485327, 11.816092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.678680, 17.160465, 11.670445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611194, 0.011729, -0.791394,
		0.647002, 0.583329, -0.491035,
		0.455883, -0.812151, -0.364116,
		19.815445, 16.916821, 11.561211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.665365, 17.655745, 11.107265>,  <19.496326, 17.485327, 11.816092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.665365, 17.655745, 11.107265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.622025, 17.260532, 11.151186>,  <19.596020, 17.023405, 11.177539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.622025, 17.260532, 11.151186>,  <19.665365, 17.655745, 11.107265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.622025, 17.260532, 11.151186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588996, -0.025174, -0.807743,
		0.800839, -0.152194, -0.579218,
		-0.108352, -0.988030, 0.109802,
		19.589520, 16.964123, 11.184127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.823822, 17.448233, 10.429895>,  <19.665365, 17.655745, 11.107265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.823822, 17.448233, 10.429895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.607166, 17.170135, 10.618899>,  <19.477173, 17.003277, 10.732302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.607166, 17.170135, 10.618899>,  <19.823822, 17.448233, 10.429895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.607166, 17.170135, 10.618899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451924, -0.233123, -0.861057,
		0.708794, -0.679922, -0.187927,
		-0.541641, -0.695241, 0.472509,
		19.444674, 16.961563, 10.760653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.689932, 16.975805, 9.892416>,  <19.823822, 17.448233, 10.429895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.689932, 16.975805, 9.892416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.423588, 16.856873, 10.166124>,  <19.263783, 16.785513, 10.330349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.423588, 16.856873, 10.166124>,  <19.689932, 16.975805, 9.892416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.423588, 16.856873, 10.166124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665735, -0.177236, -0.724834,
		0.336793, -0.938180, -0.079930,
		-0.665858, -0.297331, 0.684271,
		19.223829, 16.767673, 10.371406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.325653, 16.507843, 9.556215>,  <19.689932, 16.975805, 9.892416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.325653, 16.507843, 9.556215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.070660, 16.552975, 9.861078>,  <18.917664, 16.580053, 10.043996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.070660, 16.552975, 9.861078>,  <19.325653, 16.507843, 9.556215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.070660, 16.552975, 9.861078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763825, -0.222122, -0.605998,
		0.100919, -0.968469, 0.227778,
		-0.637485, 0.112826, 0.762157,
		18.879414, 16.586823, 10.089725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.943951, 15.947809, 9.511205>,  <19.325653, 16.507843, 9.556215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.943951, 15.947809, 9.511205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.728600, 16.234146, 9.689068>,  <18.599388, 16.405949, 9.795786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.728600, 16.234146, 9.689068>,  <18.943951, 15.947809, 9.511205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.728600, 16.234146, 9.689068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727996, -0.129300, -0.673278,
		-0.424467, -0.686186, 0.590743,
		-0.538377, 0.715843, 0.444657,
		18.567087, 16.448898, 9.822465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.224495, 15.692371, 9.593887>,  <18.943951, 15.947809, 9.511205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.224495, 15.692371, 9.593887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.217739, 16.091480, 9.619699>,  <18.213686, 16.330946, 9.635185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.217739, 16.091480, 9.619699>,  <18.224495, 15.692371, 9.593887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.217739, 16.091480, 9.619699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659688, 0.037377, -0.750609,
		-0.751349, -0.055244, 0.657588,
		-0.016888, 0.997773, 0.064527,
		18.212673, 16.390812, 9.639056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.523422, 15.780964, 9.643744>,  <18.224495, 15.692371, 9.593887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.523422, 15.780964, 9.643744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.703857, 16.115768, 9.519854>,  <17.812119, 16.316650, 9.445519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.703857, 16.115768, 9.519854>,  <17.523422, 15.780964, 9.643744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.703857, 16.115768, 9.519854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543529, -0.017613, -0.839206,
		-0.707880, 0.546902, 0.446994,
		0.451090, 0.837011, -0.309725,
		17.839184, 16.366871, 9.426936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.018681, 16.232372, 9.451632>,  <17.523422, 15.780964, 9.643744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.018681, 16.232372, 9.451632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.341064, 16.359398, 9.251800>,  <17.534494, 16.435614, 9.131900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.341064, 16.359398, 9.251800>,  <17.018681, 16.232372, 9.451632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.341064, 16.359398, 9.251800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456503, -0.203868, -0.866050,
		-0.376877, 0.926061, -0.019339,
		0.805958, 0.317566, -0.499583,
		17.582851, 16.454668, 9.101925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.442875, 16.379337, 9.894773>,  <17.018681, 16.232372, 9.451632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.442875, 16.379337, 9.894773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.154289, 16.107697, 9.948891>,  <15.981137, 15.944712, 9.981361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.154289, 16.107697, 9.948891>,  <16.442875, 16.379337, 9.894773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.154289, 16.107697, 9.948891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414320, -0.266812, 0.870144,
		-0.554820, 0.683835, 0.473862,
		-0.721466, -0.679104, 0.135294,
		15.937849, 15.903965, 9.989479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.260599, 16.437719, 10.561294>,  <16.442875, 16.379337, 9.894773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.260599, 16.437719, 10.561294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.123119, 16.080410, 10.445408>,  <16.040632, 15.866024, 10.375876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.123119, 16.080410, 10.445408>,  <16.260599, 16.437719, 10.561294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.123119, 16.080410, 10.445408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153270, -0.357732, 0.921160,
		-0.926488, 0.272197, 0.259864,
		-0.343699, -0.893273, -0.289715,
		16.020010, 15.812428, 10.358494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.798018, 16.135443, 11.112723>,  <16.260599, 16.437719, 10.561294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.798018, 16.135443, 11.112723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.963670, 15.830112, 10.914398>,  <16.063061, 15.646914, 10.795403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.963670, 15.830112, 10.914398>,  <15.798018, 16.135443, 11.112723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.963670, 15.830112, 10.914398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341165, -0.374836, 0.862035,
		-0.843861, -0.526150, 0.105189,
		0.414131, -0.763324, -0.495814,
		16.087910, 15.601115, 10.765654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.521048, 15.598852, 11.434002>,  <15.798018, 16.135443, 11.112723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.521048, 15.598852, 11.434002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.844659, 15.458321, 11.245517>,  <16.038826, 15.374002, 11.132425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.844659, 15.458321, 11.245517>,  <15.521048, 15.598852, 11.434002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.844659, 15.458321, 11.245517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271326, -0.487935, 0.829639,
		-0.521394, -0.799056, -0.299430,
		0.809031, -0.351326, -0.471211,
		16.087368, 15.352921, 11.104153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.735801, 15.093720, 11.977585>,  <15.521048, 15.598852, 11.434002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.735801, 15.093720, 11.977585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.043915, 15.131176, 11.725270>,  <16.228783, 15.153649, 11.573881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.043915, 15.131176, 11.725270>,  <15.735801, 15.093720, 11.977585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.043915, 15.131176, 11.725270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602265, -0.431961, 0.671332,
		-0.209612, -0.897018, -0.389130,
		0.770286, 0.093640, -0.630786,
		16.275002, 15.159268, 11.536035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.196947, 14.589343, 12.034304>,  <15.735801, 15.093720, 11.977585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.196947, 14.589343, 12.034304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.454296, 14.834003, 11.850150>,  <16.608706, 14.980800, 11.739658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.454296, 14.834003, 11.850150>,  <16.196947, 14.589343, 12.034304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.454296, 14.834003, 11.850150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742721, -0.352935, 0.569035,
		0.185566, -0.708039, -0.681356,
		0.643374, 0.611651, -0.460383,
		16.647308, 15.017499, 11.712035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.725494, 14.193151, 11.907404>,  <16.196947, 14.589343, 12.034304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.725494, 14.193151, 11.907404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.860931, 14.569313, 11.894806>,  <16.942194, 14.795011, 11.887247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.860931, 14.569313, 11.894806>,  <16.725494, 14.193151, 11.907404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.860931, 14.569313, 11.894806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643075, -0.206843, 0.737340,
		0.686884, -0.269911, -0.674787,
		0.338591, 0.940406, -0.031496,
		16.962509, 14.851435, 11.885357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.509380, 14.210217, 11.813456>,  <16.725494, 14.193151, 11.907404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.509380, 14.210217, 11.813456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.425354, 14.564068, 11.979978>,  <17.374937, 14.776378, 12.079890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.425354, 14.564068, 11.979978>,  <17.509380, 14.210217, 11.813456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.425354, 14.564068, 11.979978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707363, -0.156423, 0.689326,
		0.674915, 0.439282, -0.592892,
		-0.210067, 0.884626, 0.416304,
		17.362333, 14.829455, 12.104869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.123011, 14.495758, 12.000016>,  <17.509380, 14.210217, 11.813456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.123011, 14.495758, 12.000016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.890072, 14.748615, 12.204473>,  <17.750309, 14.900330, 12.327147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.890072, 14.748615, 12.204473>,  <18.123011, 14.495758, 12.000016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.890072, 14.748615, 12.204473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625254, -0.053550, 0.778582,
		0.519548, 0.772998, -0.364066,
		-0.582346, 0.632144, 0.511142,
		17.715368, 14.938258, 12.357816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.526888, 15.052402, 12.252803>,  <18.123011, 14.495758, 12.000016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.526888, 15.052402, 12.252803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.205112, 15.069191, 12.489823>,  <18.012047, 15.079265, 12.632036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.205112, 15.069191, 12.489823>,  <18.526888, 15.052402, 12.252803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.205112, 15.069191, 12.489823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594016, 0.065143, 0.801812,
		-0.004946, 0.996993, -0.077336,
		-0.804438, 0.041973, 0.592552,
		17.963781, 15.081783, 12.667589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.635771, 15.690985, 12.646827>,  <18.526888, 15.052402, 12.252803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.635771, 15.690985, 12.646827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.364948, 15.478706, 12.850771>,  <18.202456, 15.351339, 12.973137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.364948, 15.478706, 12.850771>,  <18.635771, 15.690985, 12.646827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.364948, 15.478706, 12.850771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421043, 0.288887, 0.859807,
		-0.603587, 0.796811, 0.027852,
		-0.677057, -0.530695, 0.509860,
		18.161831, 15.319498, 13.003729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.329800, 16.116838, 13.201645>,  <18.635771, 15.690985, 12.646827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.329800, 16.116838, 13.201645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.253181, 15.746140, 13.330922>,  <18.207211, 15.523721, 13.408488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.253181, 15.746140, 13.330922>,  <18.329800, 16.116838, 13.201645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.253181, 15.746140, 13.330922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367047, 0.237760, 0.899303,
		-0.910268, 0.290883, 0.294618,
		-0.191544, -0.926745, 0.323193,
		18.195719, 15.468116, 13.427880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.947676, 16.212713, 13.851904>,  <18.329800, 16.116838, 13.201645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.947676, 16.212713, 13.851904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.098732, 15.842503, 13.863112>,  <18.189365, 15.620376, 13.869838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.098732, 15.842503, 13.863112>,  <17.947676, 16.212713, 13.851904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.098732, 15.842503, 13.863112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494499, 0.227171, 0.838966,
		-0.782852, -0.302972, 0.543462,
		0.377642, -0.925528, 0.028022,
		18.212025, 15.564844, 13.871519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.714775, 15.943921, 14.482388>,  <17.947676, 16.212713, 13.851904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.714775, 15.943921, 14.482388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.041580, 15.744324, 14.366807>,  <18.237663, 15.624565, 14.297458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.041580, 15.744324, 14.366807>,  <17.714775, 15.943921, 14.482388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.041580, 15.744324, 14.366807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435880, 0.206399, 0.876018,
		-0.377487, -0.841668, 0.386133,
		0.817014, -0.498993, -0.288954,
		18.286684, 15.594625, 14.280121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.810740, 15.528068, 14.977157>,  <17.714775, 15.943921, 14.482388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.810740, 15.528068, 14.977157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.171593, 15.551666, 14.806193>,  <18.388103, 15.565825, 14.703615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.171593, 15.551666, 14.806193>,  <17.810740, 15.528068, 14.977157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.171593, 15.551666, 14.806193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414645, 0.155321, 0.896630,
		0.119278, -0.986101, 0.115661,
		0.902132, 0.058990, -0.427408,
		18.442232, 15.569365, 14.677971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.282877, 15.178988, 15.422821>,  <17.810740, 15.528068, 14.977157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.282877, 15.178988, 15.422821> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.533165, 15.377094, 15.181762>,  <18.683338, 15.495958, 15.037127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.533165, 15.377094, 15.181762>,  <18.282877, 15.178988, 15.422821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.533165, 15.377094, 15.181762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568659, 0.239214, 0.787022,
		0.533948, -0.835157, -0.131957,
		0.625721, 0.495268, -0.602648,
		18.720881, 15.525675, 15.000968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.773151, 15.042828, 15.776582>,  <18.282877, 15.178988, 15.422821>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.773151, 15.042828, 15.776582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.880421, 15.301582, 15.491031>,  <18.944782, 15.456835, 15.319700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.880421, 15.301582, 15.491031>,  <18.773151, 15.042828, 15.776582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.880421, 15.301582, 15.491031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806874, 0.254039, 0.533309,
		0.526344, -0.719028, -0.453829,
		0.268174, 0.646887, -0.713877,
		18.960873, 15.495648, 15.276868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.379606, 14.899746, 15.703476>,  <18.773151, 15.042828, 15.776582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.379606, 14.899746, 15.703476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.393154, 15.285969, 15.600286>,  <19.401283, 15.517702, 15.538371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.393154, 15.285969, 15.600286>,  <19.379606, 14.899746, 15.703476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.393154, 15.285969, 15.600286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721821, 0.154898, 0.674523,
		0.691251, -0.209059, -0.691713,
		0.033870, 0.965557, -0.257977,
		19.403315, 15.575636, 15.522893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<20.066174, 15.061223, 15.611755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.871571, 15.398285, 15.704055>,  <19.754808, 15.600522, 15.759435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.871571, 15.398285, 15.704055>,  <20.066174, 15.061223, 15.611755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.871571, 15.398285, 15.704055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682782, 0.201927, 0.702164,
		0.545088, 0.499157, -0.673588,
		-0.486506, 0.842655, 0.230748,
		19.725618, 15.651081, 15.773279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.603357, 15.558702, 15.837656>,  <20.066174, 15.061223, 15.611755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.603357, 15.558702, 15.837656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.262760, 15.718987, 15.972941>,  <20.058401, 15.815157, 16.054113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.262760, 15.718987, 15.972941>,  <20.603357, 15.558702, 15.837656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.262760, 15.718987, 15.972941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494060, 0.397009, 0.773491,
		0.175671, 0.825722, -0.536026,
		-0.851495, 0.400709, 0.338213,
		20.007311, 15.839199, 16.074406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.658552, 16.196434, 15.921060>,  <20.603357, 15.558702, 15.837656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.658552, 16.196434, 15.921060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.362362, 16.138103, 16.183487>,  <20.184647, 16.103106, 16.340944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.362362, 16.138103, 16.183487>,  <20.658552, 16.196434, 15.921060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.362362, 16.138103, 16.183487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522202, 0.489676, 0.698229,
		-0.423082, 0.859623, -0.286443,
		-0.740478, -0.145827, 0.656069,
		20.140219, 16.094355, 16.380308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.674690, 16.722519, 16.445589>,  <20.658552, 16.196434, 15.921060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.674690, 16.722519, 16.445589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.456173, 16.442730, 16.629896>,  <20.325064, 16.274857, 16.740480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.456173, 16.442730, 16.629896>,  <20.674690, 16.722519, 16.445589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.456173, 16.442730, 16.629896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276852, 0.368399, 0.887488,
		-0.790518, 0.612391, -0.007604,
		-0.546291, -0.699470, 0.460768,
		20.292286, 16.232889, 16.768127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.250181, 17.051943, 16.962124>,  <20.674690, 16.722519, 16.445589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.250181, 17.051943, 16.962124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.254387, 16.669102, 17.077950>,  <20.256910, 16.439398, 17.147446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.254387, 16.669102, 17.077950>,  <20.250181, 17.051943, 16.962124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.254387, 16.669102, 17.077950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298398, 0.279389, 0.912634,
		-0.954383, 0.076809, 0.288535,
		0.010515, -0.957101, 0.289564,
		20.257542, 16.381971, 17.164818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.115929, 17.106176, 17.561249>,  <20.250181, 17.051943, 16.962124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.115929, 17.106176, 17.561249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.255486, 16.731640, 17.576935>,  <20.339220, 16.506918, 17.586346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.255486, 16.731640, 17.576935>,  <20.115929, 17.106176, 17.561249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.255486, 16.731640, 17.576935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231545, 0.126674, 0.964541,
		-0.908108, -0.327441, 0.261001,
		0.348893, -0.936342, 0.039216,
		20.360153, 16.450737, 17.588699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.914070, 16.828018, 18.226170>,  <20.115929, 17.106176, 17.561249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.914070, 16.828018, 18.226170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.203259, 16.570358, 18.126263>,  <20.376772, 16.415762, 18.066319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.203259, 16.570358, 18.126263>,  <19.914070, 16.828018, 18.226170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.203259, 16.570358, 18.126263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400909, 0.096732, 0.910997,
		-0.562658, -0.758758, 0.328180,
		0.722972, -0.644150, -0.249766,
		20.420151, 16.377113, 18.051332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.034286, 16.460051, 18.843380>,  <19.914070, 16.828018, 18.226170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.034286, 16.460051, 18.843380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.364208, 16.415382, 18.621668>,  <20.562162, 16.388582, 18.488642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.364208, 16.415382, 18.621668>,  <20.034286, 16.460051, 18.843380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.364208, 16.415382, 18.621668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559715, 0.022393, 0.828383,
		-0.080094, -0.993493, 0.080974,
		0.824806, -0.111671, -0.554279,
		20.611650, 16.381882, 18.455383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.395124, 15.837625, 19.033514>,  <20.034286, 16.460051, 18.843380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.395124, 15.837625, 19.033514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.643005, 16.116966, 18.890255>,  <20.791735, 16.284571, 18.804298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.643005, 16.116966, 18.890255>,  <20.395124, 15.837625, 19.033514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.643005, 16.116966, 18.890255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493543, 0.008057, 0.869684,
		0.610233, -0.715707, -0.339674,
		0.619703, 0.698354, -0.358149,
		20.828917, 16.326473, 18.782810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.241484, 15.649752, 19.148069>,  <20.395124, 15.837625, 19.033514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.241484, 15.649752, 19.148069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.185204, 16.041580, 19.090601>,  <21.151436, 16.276678, 19.056120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.185204, 16.041580, 19.090601>,  <21.241484, 15.649752, 19.148069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.185204, 16.041580, 19.090601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484168, 0.194659, 0.853047,
		0.863588, 0.050462, -0.501666,
		-0.140700, 0.979572, -0.143673,
		21.142994, 16.335451, 19.047499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.873579, 15.964884, 19.496675>,  <21.241484, 15.649752, 19.148069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.873579, 15.964884, 19.496675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.666485, 16.300835, 19.431490>,  <21.542229, 16.502405, 19.392380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.666485, 16.300835, 19.431490>,  <21.873579, 15.964884, 19.496675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.666485, 16.300835, 19.431490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334838, 0.374204, 0.864786,
		0.787294, 0.393165, -0.474962,
		-0.517737, 0.839876, -0.162962,
		21.511164, 16.552797, 19.382601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.323248, 16.473856, 19.492332>,  <21.873579, 15.964884, 19.496675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.323248, 16.473856, 19.492332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.965530, 16.620178, 19.595425>,  <21.750900, 16.707972, 19.657280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.965530, 16.620178, 19.595425>,  <22.323248, 16.473856, 19.492332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.965530, 16.620178, 19.595425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375397, 0.299831, 0.877028,
		0.243546, 0.881072, -0.405459,
		-0.894294, 0.365805, 0.257729,
		21.697243, 16.729919, 19.672743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.554647, 16.943464, 19.869413>,  <22.323248, 16.473856, 19.492332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.554647, 16.943464, 19.869413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.164951, 16.950951, 19.959309>,  <21.931133, 16.955442, 20.013247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.164951, 16.950951, 19.959309>,  <22.554647, 16.943464, 19.869413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.164951, 16.950951, 19.959309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207871, 0.460968, 0.862727,
		-0.087449, 0.887219, -0.452984,
		-0.974239, 0.018718, 0.224738,
		21.872679, 16.956566, 20.026730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.442690, 17.539728, 20.115263>,  <22.554647, 16.943464, 19.869413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.442690, 17.539728, 20.115263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.140205, 17.320015, 20.257494>,  <21.958715, 17.188187, 20.342833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.140205, 17.320015, 20.257494>,  <22.442690, 17.539728, 20.115263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.140205, 17.320015, 20.257494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094391, 0.446168, 0.889958,
		-0.647485, 0.706558, -0.285550,
		-0.756210, -0.549281, 0.355580,
		21.913342, 17.155231, 20.364168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.836586, 17.988008, 20.418602>,  <22.442690, 17.539728, 20.115263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.836586, 17.988008, 20.418602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.779255, 17.624790, 20.576036>,  <21.744856, 17.406858, 20.670498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.779255, 17.624790, 20.576036>,  <21.836586, 17.988008, 20.418602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.779255, 17.624790, 20.576036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061550, 0.405102, 0.912197,
		-0.987759, 0.106519, -0.113953,
		-0.143329, -0.908045, 0.393587,
		21.736256, 17.352377, 20.694113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.344372, 18.079453, 20.934521>,  <21.836586, 17.988008, 20.418602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.344372, 18.079453, 20.934521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.544010, 17.742985, 21.017790>,  <21.663794, 17.541103, 21.067751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.544010, 17.742985, 21.017790>,  <21.344372, 18.079453, 20.934521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.544010, 17.742985, 21.017790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010028, 0.234608, 0.972038,
		-0.866489, -0.487228, 0.108657,
		0.499096, -0.841171, 0.208171,
		21.693739, 17.490633, 21.080240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.089401, 17.859011, 21.528116>,  <21.344372, 18.079453, 20.934521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.089401, 17.859011, 21.528116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.442848, 17.674267, 21.558846>,  <21.654917, 17.563421, 21.577284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.442848, 17.674267, 21.558846>,  <21.089401, 17.859011, 21.528116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.442848, 17.674267, 21.558846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068035, 0.288995, 0.954910,
		-0.463236, -0.838550, 0.286784,
		0.883619, -0.461860, 0.076823,
		21.707933, 17.535709, 21.581892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.968704, 17.523666, 22.105654>,  <21.089401, 17.859011, 21.528116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.968704, 17.523666, 22.105654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.364582, 17.487339, 22.061371>,  <21.602108, 17.465542, 22.034801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.364582, 17.487339, 22.061371>,  <20.968704, 17.523666, 22.105654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.364582, 17.487339, 22.061371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118085, 0.080328, 0.989749,
		-0.080996, -0.992622, 0.090224,
		0.989694, -0.090819, -0.110708,
		21.661491, 17.460094, 22.028158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.170786, 17.113052, 22.676229>,  <20.968704, 17.523666, 22.105654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.170786, 17.113052, 22.676229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.500351, 17.298645, 22.546070>,  <21.698090, 17.410002, 22.467974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.500351, 17.298645, 22.546070>,  <21.170786, 17.113052, 22.676229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.500351, 17.298645, 22.546070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307580, 0.116142, 0.944407,
		0.475982, -0.878197, -0.047022,
		0.823915, 0.463984, -0.325398,
		21.747526, 17.437840, 22.448450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.731686, 16.800524, 23.047047>,  <21.170786, 17.113052, 22.676229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.731686, 16.800524, 23.047047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.855267, 17.156281, 22.912270>,  <21.929415, 17.369736, 22.831404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.855267, 17.156281, 22.912270>,  <21.731686, 16.800524, 23.047047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.855267, 17.156281, 22.912270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415783, 0.192322, 0.888896,
		0.855380, -0.414719, -0.310376,
		0.308950, 0.889393, -0.336942,
		21.947952, 17.423098, 22.811188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.328009, 16.972445, 23.527559>,  <21.731686, 16.800524, 23.047047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.328009, 16.972445, 23.527559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.242912, 17.315399, 23.340099>,  <22.191854, 17.521172, 23.227623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.242912, 17.315399, 23.340099>,  <22.328009, 16.972445, 23.527559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.242912, 17.315399, 23.340099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090024, 0.494786, 0.864339,
		0.972953, 0.141690, -0.182446,
		-0.212740, 0.857386, -0.468648,
		22.179090, 17.572615, 23.199505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.876436, 17.535265, 23.776619>,  <22.328009, 16.972445, 23.527559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.876436, 17.535265, 23.776619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.553883, 17.717548, 23.625849>,  <22.360350, 17.826918, 23.535387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.553883, 17.717548, 23.625849>,  <22.876436, 17.535265, 23.776619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.553883, 17.717548, 23.625849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011253, 0.649062, 0.760652,
		0.591284, 0.609136, -0.528522,
		-0.806385, 0.455709, -0.376925,
		22.311968, 17.854261, 23.512772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.958672, 18.340151, 23.451294>,  <22.876436, 17.535265, 23.776619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.958672, 18.340151, 23.451294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.614235, 18.220482, 23.615738>,  <22.407572, 18.148680, 23.714405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.614235, 18.220482, 23.615738>,  <22.958672, 18.340151, 23.451294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.614235, 18.220482, 23.615738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067479, 0.734169, 0.675605,
		-0.503949, 0.609501, -0.612000,
		-0.861094, -0.299173, 0.411112,
		22.355907, 18.130730, 23.739071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.587395, 18.980068, 23.500402>,  <22.958672, 18.340151, 23.451294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.587395, 18.980068, 23.500402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.429497, 18.697330, 23.735195>,  <22.334759, 18.527687, 23.876070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.429497, 18.697330, 23.735195>,  <22.587395, 18.980068, 23.500402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.429497, 18.697330, 23.735195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083743, 0.663881, 0.743134,
		-0.914967, 0.244192, -0.321257,
		-0.394744, -0.706847, 0.586980,
		22.311073, 18.485277, 23.911289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.867407, 18.834301, 22.910185>,  <22.587395, 18.980068, 23.500402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.867407, 18.834301, 22.910185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.253372, 18.877235, 23.006035>,  <23.484951, 18.902996, 23.063545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.253372, 18.877235, 23.006035>,  <22.867407, 18.834301, 22.910185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.253372, 18.877235, 23.006035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243906, -0.028535, -0.969379,
		-0.097210, 0.993813, -0.053713,
		0.964915, 0.107334, 0.239623,
		23.542847, 18.909435, 23.077921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.034660, 19.181831, 22.450253>,  <22.867407, 18.834301, 22.910185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.034660, 19.181831, 22.450253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.399590, 19.071507, 22.571312>,  <23.618547, 19.005312, 22.643948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.399590, 19.071507, 22.571312>,  <23.034660, 19.181831, 22.450253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.399590, 19.071507, 22.571312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329752, 0.056695, -0.942364,
		0.242758, 0.959538, 0.142675,
		0.912322, -0.275814, 0.302646,
		23.673286, 18.988762, 22.662106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.497519, 19.626514, 22.098028>,  <23.034660, 19.181831, 22.450253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.497519, 19.626514, 22.098028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.685501, 19.287693, 22.197340>,  <23.798290, 19.084400, 22.256927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.685501, 19.287693, 22.197340>,  <23.497519, 19.626514, 22.098028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.685501, 19.287693, 22.197340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453088, -0.009903, -0.891411,
		0.757531, 0.531415, 0.379136,
		0.469955, -0.847054, 0.248280,
		23.826487, 19.033577, 22.271824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.138718, 19.678043, 21.831083>,  <23.497519, 19.626514, 22.098028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.138718, 19.678043, 21.831083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.105717, 19.284256, 21.893068>,  <24.085917, 19.047983, 21.930260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.105717, 19.284256, 21.893068>,  <24.138718, 19.678043, 21.831083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.105717, 19.284256, 21.893068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473199, -0.175541, -0.863289,
		0.877084, 0.002106, 0.480332,
		-0.082500, -0.984470, 0.154960,
		24.080967, 18.988914, 21.939556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.718559, 19.564611, 21.544655>,  <24.138718, 19.678043, 21.831083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.718559, 19.564611, 21.544655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.513397, 19.221752, 21.563513>,  <24.390299, 19.016037, 21.574827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.513397, 19.221752, 21.563513>,  <24.718559, 19.564611, 21.544655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.513397, 19.221752, 21.563513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242659, -0.197448, -0.949806,
		0.823434, -0.475721, 0.309267,
		-0.512907, -0.857149, 0.047147,
		24.359526, 18.964607, 21.577658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.254189, 19.008314, 21.266695>,  <24.718559, 19.564611, 21.544655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.254189, 19.008314, 21.266695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.873459, 18.894054, 21.222088>,  <24.645021, 18.825499, 21.195324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.873459, 18.894054, 21.222088>,  <25.254189, 19.008314, 21.266695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.873459, 18.894054, 21.222088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179895, -0.225648, -0.957456,
		0.248332, -0.931391, 0.266163,
		-0.951824, -0.285648, -0.111517,
		24.587912, 18.808359, 21.188633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.221926, 18.522884, 20.728027>,  <25.254189, 19.008314, 21.266695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.221926, 18.522884, 20.728027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.828331, 18.594173, 20.728806>,  <24.592175, 18.636948, 20.729273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.828331, 18.594173, 20.728806>,  <25.221926, 18.522884, 20.728027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.828331, 18.594173, 20.728806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007988, -0.033203, -0.999417,
		-0.178056, -0.983430, 0.034095,
		-0.983988, 0.178224, 0.001944,
		24.533134, 18.647640, 20.729389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.071638, 18.090599, 20.247555>,  <25.221926, 18.522884, 20.728027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.071638, 18.090599, 20.247555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.754883, 18.332283, 20.282988>,  <24.564831, 18.477293, 20.304247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.754883, 18.332283, 20.282988>,  <25.071638, 18.090599, 20.247555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.754883, 18.332283, 20.282988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152422, -0.055100, -0.986778,
		-0.591340, -0.794918, 0.135728,
		-0.791887, 0.604210, 0.088580,
		24.517317, 18.513546, 20.309561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.634768, 17.805637, 19.826387>,  <25.071638, 18.090599, 20.247555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.634768, 17.805637, 19.826387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.472923, 18.170269, 19.855539>,  <24.375816, 18.389048, 19.873030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.472923, 18.170269, 19.855539>,  <24.634768, 17.805637, 19.826387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.472923, 18.170269, 19.855539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448411, -0.128309, -0.884570,
		-0.797007, -0.390585, 0.460678,
		-0.404609, 0.911581, 0.072879,
		24.351542, 18.443743, 19.877403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.935827, 17.717951, 19.933947>,  <24.634768, 17.805637, 19.826387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.935827, 17.717951, 19.933947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.036247, 18.061459, 19.755291>,  <24.096500, 18.267563, 19.648098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.036247, 18.061459, 19.755291>,  <23.935827, 17.717951, 19.933947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.036247, 18.061459, 19.755291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654160, -0.189582, -0.732211,
		-0.713476, 0.475998, 0.514178,
		0.251052, 0.858769, -0.446641,
		24.111563, 18.319090, 19.621298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.286505, 18.095655, 19.851320>,  <23.935827, 17.717951, 19.933947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.286505, 18.095655, 19.851320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.540859, 18.221394, 19.569374>,  <23.693472, 18.296837, 19.400208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.540859, 18.221394, 19.569374>,  <23.286505, 18.095655, 19.851320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.540859, 18.221394, 19.569374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678581, -0.207357, -0.704650,
		-0.367663, 0.926385, 0.081455,
		0.635887, 0.314347, -0.704865,
		23.731625, 18.315699, 19.357914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.809050, 18.206587, 19.298483>,  <23.286505, 18.095655, 19.851320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.809050, 18.206587, 19.298483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.155045, 18.272404, 19.108862>,  <23.362640, 18.311893, 18.995090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.155045, 18.272404, 19.108862>,  <22.809050, 18.206587, 19.298483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.155045, 18.272404, 19.108862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475517, -0.032930, -0.879090,
		-0.160259, 0.985820, 0.049759,
		0.864986, 0.164543, -0.474051,
		23.414541, 18.321766, 18.966646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.800888, 18.841928, 18.850698>,  <22.809050, 18.206587, 19.298483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.800888, 18.841928, 18.850698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.055592, 18.572086, 18.701328>,  <23.208414, 18.410181, 18.611706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.055592, 18.572086, 18.701328>,  <22.800888, 18.841928, 18.850698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.055592, 18.572086, 18.701328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623743, -0.165950, -0.763810,
		0.453300, 0.719284, -0.526450,
		0.636761, -0.674604, -0.373424,
		23.246620, 18.369705, 18.589302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.758917, 18.902122, 18.112623>,  <22.800888, 18.841928, 18.850698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.758917, 18.902122, 18.112623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.934811, 18.543808, 18.138561>,  <23.040346, 18.328819, 18.154125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.934811, 18.543808, 18.138561>,  <22.758917, 18.902122, 18.112623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.934811, 18.543808, 18.138561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364770, -0.244109, -0.898529,
		0.820718, 0.371459, -0.434098,
		0.439734, -0.895784, 0.064847,
		23.066730, 18.275072, 18.158016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.035301, 18.776146, 17.478298>,  <22.758917, 18.902122, 18.112623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.035301, 18.776146, 17.478298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.072941, 18.411533, 17.638426>,  <23.095526, 18.192766, 17.734503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.072941, 18.411533, 17.638426>,  <23.035301, 18.776146, 17.478298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.072941, 18.411533, 17.638426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234403, -0.411086, -0.880945,
		0.967574, -0.010938, -0.252349,
		0.094101, -0.911531, 0.400320,
		23.101171, 18.138075, 17.758522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.488447, 18.394054, 17.005396>,  <23.035301, 18.776146, 17.478298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.488447, 18.394054, 17.005396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.278202, 18.129456, 17.219370>,  <23.152056, 17.970695, 17.347754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.278202, 18.129456, 17.219370>,  <23.488447, 18.394054, 17.005396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.278202, 18.129456, 17.219370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217381, -0.503490, -0.836208,
		0.822483, -0.555805, 0.120843,
		-0.525612, -0.661497, 0.534934,
		23.120518, 17.931005, 17.379850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.805124, 17.674261, 16.882658>,  <23.488447, 18.394054, 17.005396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.805124, 17.674261, 16.882658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.429218, 17.624424, 17.009981>,  <23.203674, 17.594522, 17.086376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.429218, 17.624424, 17.009981>,  <23.805124, 17.674261, 16.882658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.429218, 17.624424, 17.009981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228763, -0.462692, -0.856495,
		0.253991, -0.877720, 0.406319,
		-0.939764, -0.124591, 0.318310,
		23.147289, 17.587048, 17.105474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.715666, 17.107134, 16.527916>,  <23.805124, 17.674261, 16.882658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.715666, 17.107134, 16.527916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.351784, 17.203480, 16.663219>,  <23.133453, 17.261288, 16.744402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.351784, 17.203480, 16.663219>,  <23.715666, 17.107134, 16.527916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.351784, 17.203480, 16.663219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402707, -0.313032, -0.860138,
		-0.101289, -0.918693, 0.381764,
		-0.909707, 0.240862, 0.338258,
		23.078871, 17.275740, 16.764696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.289642, 16.586720, 16.331854>,  <23.715666, 17.107134, 16.527916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.289642, 16.586720, 16.331854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.052017, 16.907921, 16.350945>,  <22.909443, 17.100641, 16.362400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.052017, 16.907921, 16.350945>,  <23.289642, 16.586720, 16.331854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.052017, 16.907921, 16.350945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361688, -0.213639, -0.907491,
		-0.718520, -0.556369, 0.417351,
		-0.594063, 0.803002, 0.047728,
		22.873798, 17.148821, 16.365263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.656378, 16.334986, 16.068279>,  <23.289642, 16.586720, 16.331854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.656378, 16.334986, 16.068279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.609646, 16.731464, 16.043367>,  <22.581606, 16.969351, 16.028419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.609646, 16.731464, 16.043367>,  <22.656378, 16.334986, 16.068279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.609646, 16.731464, 16.043367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592821, -0.119912, -0.796357,
		-0.796815, -0.056117, 0.601611,
		-0.116829, 0.991197, -0.062280,
		22.574596, 17.028824, 16.024683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<17.848862, 14.272759, 13.797209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.953838, 14.646049, 13.699052>,  <18.016825, 14.870024, 13.640158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.953838, 14.646049, 13.699052>,  <17.848862, 14.272759, 13.797209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.953838, 14.646049, 13.699052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623132, -0.030268, -0.781531,
		-0.736772, 0.358016, 0.573578,
		0.262439, 0.933225, -0.245392,
		18.032570, 14.926017, 13.625434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.298597, 14.652802, 13.712337>,  <17.848862, 14.272759, 13.797209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.298597, 14.652802, 13.712337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.578960, 14.844154, 13.500722>,  <17.747179, 14.958965, 13.373754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.578960, 14.844154, 13.500722>,  <17.298597, 14.652802, 13.712337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.578960, 14.844154, 13.500722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685222, 0.245736, -0.685628,
		-0.197988, 0.843069, 0.500035,
		0.700908, 0.478381, -0.529037,
		17.789232, 14.987669, 13.342010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.912361, 15.115631, 13.433693>,  <17.298597, 14.652802, 13.712337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.912361, 15.115631, 13.433693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.247196, 15.118660, 13.214888>,  <17.448097, 15.120478, 13.083604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.247196, 15.118660, 13.214888>,  <16.912361, 15.115631, 13.433693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.247196, 15.118660, 13.214888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541010, 0.159825, -0.825690,
		0.081174, 0.987116, 0.137884,
		0.837089, 0.007572, -0.547014,
		17.498323, 15.120932, 13.050783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.906656, 15.681956, 13.041883>,  <16.912361, 15.115631, 13.433693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.906656, 15.681956, 13.041883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.134613, 15.428783, 12.832266>,  <17.271387, 15.276879, 12.706496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.134613, 15.428783, 12.832266>,  <16.906656, 15.681956, 13.041883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.134613, 15.428783, 12.832266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526043, 0.208917, -0.824398,
		0.631270, 0.745486, -0.213890,
		0.569893, -0.632933, -0.524041,
		17.305580, 15.238904, 12.675054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.987175, 16.061270, 12.440720>,  <16.906656, 15.681956, 13.041883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.987175, 16.061270, 12.440720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.088215, 15.683384, 12.357093>,  <17.148838, 15.456653, 12.306917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.088215, 15.683384, 12.357093>,  <16.987175, 16.061270, 12.440720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.088215, 15.683384, 12.357093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406651, 0.092410, -0.908898,
		0.877968, 0.314605, -0.360826,
		0.252600, -0.944714, -0.209067,
		17.163996, 15.399970, 12.294373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.218367, 16.129646, 11.847997>,  <16.987175, 16.061270, 12.440720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.218367, 16.129646, 11.847997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.151863, 15.735645, 11.866465>,  <17.111961, 15.499245, 11.877545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.151863, 15.735645, 11.866465>,  <17.218367, 16.129646, 11.847997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.151863, 15.735645, 11.866465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415059, 0.027432, -0.909381,
		0.894475, -0.170354, -0.413394,
		-0.166257, -0.985001, 0.046170,
		17.101986, 15.440145, 11.880316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.439465, 15.835910, 11.161064>,  <17.218367, 16.129646, 11.847997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.439465, 15.835910, 11.161064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.171211, 15.596497, 11.336339>,  <17.010260, 15.452848, 11.441504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.171211, 15.596497, 11.336339>,  <17.439465, 15.835910, 11.161064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.171211, 15.596497, 11.336339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528432, -0.029083, -0.848477,
		0.520585, -0.800571, -0.296780,
		-0.670635, -0.598532, 0.438187,
		16.970020, 15.416937, 11.467795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.291359, 15.220835, 10.751556>,  <17.439465, 15.835910, 11.161064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.291359, 15.220835, 10.751556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.964401, 15.223022, 10.981978>,  <16.768227, 15.224336, 11.120232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.964401, 15.223022, 10.981978>,  <17.291359, 15.220835, 10.751556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.964401, 15.223022, 10.981978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574475, 0.066855, -0.815787,
		-0.042975, -0.997748, -0.051504,
		-0.817393, 0.005471, 0.576055,
		16.719183, 15.224664, 11.154795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.003735, 14.699605, 10.469265>,  <17.291359, 15.220835, 10.751556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.003735, 14.699605, 10.469265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.725121, 14.911652, 10.662683>,  <16.557953, 15.038879, 10.778735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.725121, 14.911652, 10.662683>,  <17.003735, 14.699605, 10.469265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.725121, 14.911652, 10.662683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529382, 0.075239, -0.845041,
		-0.484352, -0.844580, 0.228228,
		-0.696533, 0.530117, 0.483548,
		16.516161, 15.070686, 10.807748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.331562, 14.451592, 10.183848>,  <17.003735, 14.699605, 10.469265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.331562, 14.451592, 10.183848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.270439, 14.814205, 10.341252>,  <16.233765, 15.031773, 10.435695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.270439, 14.814205, 10.341252>,  <16.331562, 14.451592, 10.183848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.270439, 14.814205, 10.341252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655525, 0.204999, -0.726816,
		-0.739551, -0.369019, 0.562928,
		-0.152809, 0.906532, 0.393509,
		16.224596, 15.086164, 10.459305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.621498, 14.593710, 10.198887>,  <16.331562, 14.451592, 10.183848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.621498, 14.593710, 10.198887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.779780, 14.960300, 10.222510>,  <15.874750, 15.180255, 10.236684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.779780, 14.960300, 10.222510>,  <15.621498, 14.593710, 10.198887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.779780, 14.960300, 10.222510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677941, 0.334885, -0.654407,
		-0.619526, 0.218916, 0.753833,
		0.395707, 0.916476, 0.059058,
		15.898493, 15.235243, 10.240228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.029515, 15.023453, 10.015263>,  <15.621498, 14.593710, 10.198887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.029515, 15.023453, 10.015263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.324548, 15.293556, 10.015057>,  <15.501567, 15.455618, 10.014933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.324548, 15.293556, 10.015057>,  <15.029515, 15.023453, 10.015263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.324548, 15.293556, 10.015057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477984, 0.521560, -0.706758,
		-0.476976, 0.521537, 0.707455,
		0.737581, 0.675258, -0.000515,
		15.545822, 15.496134, 10.014902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.611875, 15.609655, 9.828661>,  <15.029515, 15.023453, 10.015263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.611875, 15.609655, 9.828661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.999003, 15.664173, 9.744050>,  <15.231280, 15.696884, 9.693283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.999003, 15.664173, 9.744050>,  <14.611875, 15.609655, 9.828661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.999003, 15.664173, 9.744050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251486, 0.552872, -0.794410,
		0.008674, 0.822044, 0.569357,
		0.967822, 0.136295, -0.211528,
		15.289351, 15.705062, 9.680592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.600081, 16.265030, 9.491816>,  <14.611875, 15.609655, 9.828661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.600081, 16.265030, 9.491816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.937993, 16.069992, 9.403635>,  <15.140740, 15.952970, 9.350726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.937993, 16.069992, 9.403635>,  <14.600081, 16.265030, 9.491816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.937993, 16.069992, 9.403635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031582, 0.365824, -0.930148,
		0.534181, 0.792733, 0.293641,
		0.844780, -0.487594, -0.220452,
		15.191427, 15.923714, 9.337500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.388360, 16.395924, 8.762002>,  <14.600081, 16.265030, 9.491816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.388360, 16.395924, 8.762002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.253837, 16.755966, 8.651217>,  <14.173122, 16.971992, 8.584747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.253837, 16.755966, 8.651217>,  <14.388360, 16.395924, 8.762002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.253837, 16.755966, 8.651217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689947, 0.435659, 0.578078,
		0.640992, 0.003324, -0.767540,
		-0.336308, 0.900106, -0.276961,
		14.152945, 17.025997, 8.568130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.927131, 16.944391, 8.446054>,  <14.388360, 16.395924, 8.762002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.927131, 16.944391, 8.446054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.641706, 17.122402, 8.662490>,  <14.470450, 17.229208, 8.792352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.641706, 17.122402, 8.662490>,  <14.927131, 16.944391, 8.446054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.641706, 17.122402, 8.662490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698553, 0.393084, 0.597920,
		0.053396, 0.804635, -0.591364,
		-0.713563, 0.445026, 0.541091,
		14.427636, 17.255909, 8.824818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.242817, 17.529799, 8.691854>,  <14.927131, 16.944391, 8.446054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.242817, 17.529799, 8.691854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.922137, 17.522457, 8.930833>,  <14.729730, 17.518051, 9.074220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.922137, 17.522457, 8.930833>,  <15.242817, 17.529799, 8.691854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.922137, 17.522457, 8.930833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567046, 0.292762, 0.769902,
		-0.189041, 0.956009, -0.224298,
		-0.801699, -0.018356, 0.597445,
		14.681627, 17.516951, 9.110066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.184959, 18.060799, 9.059536>,  <15.242817, 17.529799, 8.691854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.184959, 18.060799, 9.059536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.922284, 17.880249, 9.301205>,  <14.764679, 17.771919, 9.446206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.922284, 17.880249, 9.301205>,  <15.184959, 18.060799, 9.059536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.922284, 17.880249, 9.301205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509295, 0.325428, 0.796690,
		-0.556218, 0.830879, 0.016177,
		-0.656688, -0.451372, 0.604172,
		14.725278, 17.744837, 9.482456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.090888, 18.500801, 9.565165>,  <15.184959, 18.060799, 9.059536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.090888, 18.500801, 9.565165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.005307, 18.144539, 9.725641>,  <14.953959, 17.930780, 9.821927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.005307, 18.144539, 9.725641>,  <15.090888, 18.500801, 9.565165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.005307, 18.144539, 9.725641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343154, 0.316000, 0.884528,
		-0.914588, 0.326917, 0.238023,
		-0.213951, -0.890657, 0.401192,
		14.941122, 17.877342, 9.845999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.891241, 18.692577, 10.159148>,  <15.090888, 18.500801, 9.565165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.891241, 18.692577, 10.159148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.981240, 18.303978, 10.188999>,  <15.035240, 18.070818, 10.206910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.981240, 18.303978, 10.188999>,  <14.891241, 18.692577, 10.159148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.981240, 18.303978, 10.188999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428761, 0.167495, 0.887755,
		-0.874951, -0.167746, 0.454226,
		0.224999, -0.971497, 0.074627,
		15.048739, 18.012529, 10.211388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.693007, 18.486660, 10.837337>,  <14.891241, 18.692577, 10.159148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.693007, 18.486660, 10.837337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.969495, 18.227203, 10.709914>,  <15.135387, 18.071529, 10.633460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.969495, 18.227203, 10.709914>,  <14.693007, 18.486660, 10.837337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.969495, 18.227203, 10.709914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551917, 0.189293, 0.812130,
		-0.466483, -0.737176, 0.488840,
		0.691217, -0.648644, -0.318558,
		15.176860, 18.032610, 10.614347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.926378, 18.112097, 11.441962>,  <14.693007, 18.486660, 10.837337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.926378, 18.112097, 11.441962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.226874, 18.047852, 11.185886>,  <15.407172, 18.009304, 11.032241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.226874, 18.047852, 11.185886>,  <14.926378, 18.112097, 11.441962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.226874, 18.047852, 11.185886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659939, 0.198806, 0.724539,
		0.010904, -0.966788, 0.255346,
		0.751240, -0.160612, -0.640189,
		15.452247, 17.999668, 10.993830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.322293, 17.591503, 11.642829>,  <14.926378, 18.112097, 11.441962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.322293, 17.591503, 11.642829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.569543, 17.804329, 11.411370>,  <15.717893, 17.932024, 11.272495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.569543, 17.804329, 11.411370>,  <15.322293, 17.591503, 11.642829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.569543, 17.804329, 11.411370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666713, 0.035114, 0.744487,
		0.416432, -0.845977, -0.333028,
		0.618124, 0.532062, -0.578647,
		15.754980, 17.963947, 11.237776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.958196, 17.272293, 11.662703>,  <15.322293, 17.591503, 11.642829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.958196, 17.272293, 11.662703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.078339, 17.631374, 11.533760>,  <16.150425, 17.846823, 11.456394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.078339, 17.631374, 11.533760>,  <15.958196, 17.272293, 11.662703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.078339, 17.631374, 11.533760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730100, 0.001100, 0.683340,
		0.613791, -0.440599, -0.655083,
		0.300358, 0.897704, -0.322356,
		16.168446, 17.900686, 11.437054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.765375, 17.297915, 11.606906>,  <15.958196, 17.272293, 11.662703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.765375, 17.297915, 11.606906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.619755, 17.669941, 11.626687>,  <16.532383, 17.893156, 11.638556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.619755, 17.669941, 11.626687>,  <16.765375, 17.297915, 11.606906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.619755, 17.669941, 11.626687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700048, 0.238223, 0.673189,
		0.614328, 0.279696, -0.737815,
		-0.364053, 0.930065, 0.049453,
		16.510538, 17.948961, 11.641523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.347071, 17.685848, 11.740043>,  <16.765375, 17.297915, 11.606906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.347071, 17.685848, 11.740043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.082977, 17.972286, 11.830642>,  <16.924520, 18.144148, 11.885001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.082977, 17.972286, 11.830642>,  <17.347071, 17.685848, 11.740043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.082977, 17.972286, 11.830642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550289, 0.255981, 0.794767,
		0.511148, 0.649372, -0.563066,
		-0.660234, 0.716093, 0.226498,
		16.884907, 18.187115, 11.898591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.645842, 18.419905, 11.869813>,  <17.347071, 17.685848, 11.740043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.645842, 18.419905, 11.869813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.306267, 18.393982, 12.079615>,  <17.102522, 18.378428, 12.205496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.306267, 18.393982, 12.079615>,  <17.645842, 18.419905, 11.869813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.306267, 18.393982, 12.079615> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499698, 0.224683, 0.836552,
		-0.172062, 0.972274, -0.158358,
		-0.848938, -0.064808, 0.524503,
		17.051586, 18.374540, 12.236966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.718357, 18.794098, 12.446558>,  <17.645842, 18.419905, 11.869813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.718357, 18.794098, 12.446558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.382713, 18.633942, 12.593844>,  <17.181328, 18.537848, 12.682217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.382713, 18.633942, 12.593844>,  <17.718357, 18.794098, 12.446558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.382713, 18.633942, 12.593844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367578, 0.081619, 0.926404,
		-0.400975, 0.912703, 0.078687,
		-0.839110, -0.400389, 0.368217,
		17.130980, 18.513824, 12.704309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.146183, 19.157339, 12.131233>,  <17.718357, 18.794098, 12.446558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.146183, 19.157339, 12.131233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.274158, 19.527428, 12.049641>,  <17.350943, 19.749481, 12.000685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.274158, 19.527428, 12.049641>,  <17.146183, 19.157339, 12.131233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.274158, 19.527428, 12.049641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098784, -0.246701, -0.964044,
		-0.942275, 0.288283, -0.170326,
		0.319937, 0.925220, -0.203982,
		17.370140, 19.804993, 11.988446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.923752, 19.385326, 11.519582>,  <17.146183, 19.157339, 12.131233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.923752, 19.385326, 11.519582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.237610, 19.629765, 11.561338>,  <17.425924, 19.776428, 11.586392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.237610, 19.629765, 11.561338>,  <16.923752, 19.385326, 11.519582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.237610, 19.629765, 11.561338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206699, -0.099121, -0.973371,
		-0.584475, 0.785326, -0.204087,
		0.784643, 0.611095, 0.104393,
		17.473003, 19.813093, 11.592656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.929106, 19.771666, 10.915495>,  <16.923752, 19.385326, 11.519582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.929106, 19.771666, 10.915495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.293518, 19.862034, 11.053472>,  <17.512165, 19.916256, 11.136258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.293518, 19.862034, 11.053472>,  <16.929106, 19.771666, 10.915495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.293518, 19.862034, 11.053472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349206, 0.022131, -0.936785,
		-0.219274, 0.973894, -0.058731,
		0.911029, 0.225922, 0.344942,
		17.566828, 19.929810, 11.156954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.052832, 20.243546, 10.451759>,  <16.929106, 19.771666, 10.915495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.052832, 20.243546, 10.451759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.413452, 20.156120, 10.601124>,  <17.629824, 20.103666, 10.690742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.413452, 20.156120, 10.601124>,  <17.052832, 20.243546, 10.451759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.413452, 20.156120, 10.601124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386461, 0.018698, -0.922116,
		0.194557, 0.975644, 0.101322,
		0.901552, -0.218561, 0.373411,
		17.683918, 20.090551, 10.713147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.586840, 20.837812, 10.160579>,  <17.052832, 20.243546, 10.451759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.586840, 20.837812, 10.160579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.759499, 20.487415, 10.246661>,  <17.863094, 20.277176, 10.298310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.759499, 20.487415, 10.246661>,  <17.586840, 20.837812, 10.160579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.759499, 20.487415, 10.246661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314523, -0.077443, -0.946086,
		0.845433, 0.476062, 0.242092,
		0.431647, -0.875995, 0.215205,
		17.888992, 20.224617, 10.311223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.247534, 20.979046, 10.040357>,  <17.586840, 20.837812, 10.160579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.247534, 20.979046, 10.040357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.172058, 20.586262, 10.035424>,  <18.126772, 20.350592, 10.032465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.172058, 20.586262, 10.035424>,  <18.247534, 20.979046, 10.040357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.172058, 20.586262, 10.035424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446181, -0.074536, -0.891833,
		0.874825, -0.173781, 0.452196,
		-0.188688, -0.981960, -0.012332,
		18.115452, 20.291674, 10.031725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.841352, 20.713591, 9.784309>,  <18.247534, 20.979046, 10.040357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.841352, 20.713591, 9.784309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.550167, 20.444511, 9.731330>,  <18.375456, 20.283064, 9.699542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.550167, 20.444511, 9.731330>,  <18.841352, 20.713591, 9.784309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.550167, 20.444511, 9.731330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318489, -0.160717, -0.934203,
		0.607151, -0.722250, 0.331244,
		-0.727964, -0.672700, -0.132449,
		18.331778, 20.242701, 9.691595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.105278, 20.275095, 9.312355>,  <18.841352, 20.713591, 9.784309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.105278, 20.275095, 9.312355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.730438, 20.141472, 9.271861>,  <18.505535, 20.061298, 9.247564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.730438, 20.141472, 9.271861>,  <19.105278, 20.275095, 9.312355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.730438, 20.141472, 9.271861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170480, -0.184925, -0.967853,
		0.304600, -0.924233, 0.230244,
		-0.937100, -0.334060, -0.101235,
		18.449308, 20.041254, 9.241490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.186041, 19.740562, 8.920480>,  <19.105278, 20.275095, 9.312355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.186041, 19.740562, 8.920480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.801620, 19.838947, 8.870063>,  <18.570969, 19.897978, 8.839812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.801620, 19.838947, 8.870063>,  <19.186041, 19.740562, 8.920480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.801620, 19.838947, 8.870063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105349, -0.095608, -0.989829,
		-0.255514, -0.964552, 0.065972,
		-0.961048, 0.245965, -0.126043,
		18.513306, 19.912737, 8.832250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.002911, 19.366341, 8.391542>,  <19.186041, 19.740562, 8.920480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.002911, 19.366341, 8.391542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.690914, 19.616589, 8.397379>,  <18.503716, 19.766737, 8.400881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.690914, 19.616589, 8.397379>,  <19.002911, 19.366341, 8.391542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.690914, 19.616589, 8.397379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147578, -0.161234, -0.975820,
		-0.608141, -0.763283, 0.218089,
		-0.779990, 0.625622, 0.014591,
		18.456917, 19.804276, 8.401756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.419813, 19.076195, 8.081851>,  <19.002911, 19.366341, 8.391542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.419813, 19.076195, 8.081851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.377007, 19.472366, 8.046986>,  <18.351322, 19.710070, 8.026067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.377007, 19.472366, 8.046986>,  <18.419813, 19.076195, 8.081851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.377007, 19.472366, 8.046986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178143, -0.105348, -0.978349,
		-0.978168, -0.089172, 0.187712,
		-0.107016, 0.990429, -0.087163,
		18.344902, 19.769495, 8.020837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.878799, 19.207281, 7.586643>,  <18.419813, 19.076195, 8.081851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.878799, 19.207281, 7.586643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.074715, 19.555519, 7.605270>,  <18.192265, 19.764462, 7.616447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.074715, 19.555519, 7.605270>,  <17.878799, 19.207281, 7.586643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.074715, 19.555519, 7.605270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143950, 0.133434, -0.980548,
		-0.859876, 0.473557, 0.190676,
		0.489787, 0.870597, 0.046568,
		18.221651, 19.816698, 7.619241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<17.175907, 20.975760, 15.827156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.476078, 21.197163, 15.682662>,  <17.656179, 21.330004, 15.595965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.476078, 21.197163, 15.682662>,  <17.175907, 20.975760, 15.827156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.476078, 21.197163, 15.682662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278245, -0.231192, -0.932271,
		-0.599533, 0.800113, -0.019482,
		0.750426, 0.553507, -0.361235,
		17.701206, 21.363214, 15.574291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.918724, 21.460520, 15.400752>,  <17.175907, 20.975760, 15.827156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.918724, 21.460520, 15.400752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.288769, 21.403412, 15.260020>,  <17.510796, 21.369146, 15.175581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.288769, 21.403412, 15.260020>,  <16.918724, 21.460520, 15.400752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.288769, 21.403412, 15.260020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369719, -0.127730, -0.920322,
		0.086455, 0.981480, -0.170949,
		0.925113, -0.142769, -0.351829,
		17.566303, 21.360580, 15.154471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.982090, 21.870483, 14.725587>,  <16.918724, 21.460520, 15.400752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.982090, 21.870483, 14.725587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.249146, 21.572933, 14.737638>,  <17.409378, 21.394403, 14.744867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.249146, 21.572933, 14.737638>,  <16.982090, 21.870483, 14.725587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.249146, 21.572933, 14.737638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256695, -0.267993, -0.928594,
		0.698833, 0.612231, -0.369872,
		0.667638, -0.743877, 0.030125,
		17.449436, 21.349770, 14.746675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.435656, 21.931419, 14.113085>,  <16.982090, 21.870483, 14.725587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.435656, 21.931419, 14.113085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.432190, 21.546436, 14.221602>,  <17.430111, 21.315447, 14.286714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.432190, 21.546436, 14.221602>,  <17.435656, 21.931419, 14.113085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.432190, 21.546436, 14.221602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176157, -0.265593, -0.947855,
		0.984324, -0.056003, -0.167243,
		-0.008664, -0.962457, 0.271295,
		17.429590, 21.257700, 14.302991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.884882, 21.671696, 13.638585>,  <17.435656, 21.931419, 14.113085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.884882, 21.671696, 13.638585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.714127, 21.327419, 13.749564>,  <17.611673, 21.120853, 13.816152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.714127, 21.327419, 13.749564>,  <17.884882, 21.671696, 13.638585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.714127, 21.327419, 13.749564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227290, -0.399079, -0.888299,
		0.875274, -0.316144, 0.365989,
		-0.426889, -0.860691, 0.277447,
		17.586060, 21.069212, 13.832798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.406965, 21.164539, 13.542783>,  <17.884882, 21.671696, 13.638585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.406965, 21.164539, 13.542783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.052723, 20.978767, 13.541698>,  <17.840178, 20.867304, 13.541046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.052723, 20.978767, 13.541698>,  <18.406965, 21.164539, 13.542783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.052723, 20.978767, 13.541698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161434, -0.302345, -0.939429,
		0.435477, -0.832402, 0.342733,
		-0.885606, -0.464429, -0.002713,
		17.787041, 20.839439, 13.540883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.545837, 20.568644, 13.226442>,  <18.406965, 21.164539, 13.542783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.545837, 20.568644, 13.226442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.148720, 20.561871, 13.178987>,  <17.910450, 20.557806, 13.150513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.148720, 20.561871, 13.178987>,  <18.545837, 20.568644, 13.226442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.148720, 20.561871, 13.178987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118811, -0.268664, -0.955878,
		-0.015687, -0.963085, 0.268740,
		-0.992793, -0.016935, -0.118640,
		17.850882, 20.556791, 13.143394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.341600, 19.969862, 12.974666>,  <18.545837, 20.568644, 13.226442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.341600, 19.969862, 12.974666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.038754, 20.208405, 12.867983>,  <17.857044, 20.351530, 12.803973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.038754, 20.208405, 12.867983>,  <18.341600, 19.969862, 12.974666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.038754, 20.208405, 12.867983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036547, -0.368954, -0.928729,
		-0.652255, -0.712905, 0.257547,
		-0.757118, 0.596355, -0.266706,
		17.811619, 20.387310, 12.787971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.912378, 19.622368, 12.596451>,  <18.341600, 19.969862, 12.974666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.912378, 19.622368, 12.596451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.850983, 20.006096, 12.501668>,  <17.814146, 20.236332, 12.444798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.850983, 20.006096, 12.501668>,  <17.912378, 19.622368, 12.596451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.850983, 20.006096, 12.501668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058038, -0.230632, -0.971309,
		-0.986445, -0.162836, -0.020278,
		-0.153487, 0.959319, -0.236957,
		17.804937, 20.293892, 12.430581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.548054, 19.214170, 13.069290>,  <17.912378, 19.622368, 12.596451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.548054, 19.214170, 13.069290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.334576, 18.881741, 13.131886>,  <17.206490, 18.682283, 13.169444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.334576, 18.881741, 13.131886>,  <17.548054, 19.214170, 13.069290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.334576, 18.881741, 13.131886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308122, -0.018765, 0.951162,
		-0.787548, 0.555847, 0.266087,
		-0.533693, -0.831073, 0.156490,
		17.174467, 18.632420, 13.178833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.950815, 19.358690, 13.585750>,  <17.548054, 19.214170, 13.069290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.950815, 19.358690, 13.585750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.987450, 18.960999, 13.608098>,  <17.009430, 18.722383, 13.621507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.987450, 18.960999, 13.608098>,  <16.950815, 19.358690, 13.585750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.987450, 18.960999, 13.608098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266440, 0.078527, 0.960647,
		-0.959491, -0.073094, 0.272094,
		0.091584, -0.994229, 0.055870,
		17.014925, 18.662729, 13.624859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.597620, 19.097425, 14.216949>,  <16.950815, 19.358690, 13.585750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.597620, 19.097425, 14.216949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.882690, 18.832207, 14.125333>,  <17.053732, 18.673075, 14.070363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.882690, 18.832207, 14.125333>,  <16.597620, 19.097425, 14.216949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.882690, 18.832207, 14.125333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216653, -0.102498, 0.970853,
		-0.667199, -0.741526, 0.070603,
		0.712676, -0.663049, -0.229041,
		17.096493, 18.633293, 14.056621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.528011, 18.559128, 14.776930>,  <16.597620, 19.097425, 14.216949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.528011, 18.559128, 14.776930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.887299, 18.500729, 14.611093>,  <17.102871, 18.465689, 14.511590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.887299, 18.500729, 14.611093>,  <16.528011, 18.559128, 14.776930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.887299, 18.500729, 14.611093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390222, -0.169273, 0.905027,
		-0.202316, -0.974695, -0.095071,
		0.898217, -0.146003, -0.414594,
		17.156765, 18.456930, 14.486714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.788204, 17.972889, 15.148643>,  <16.528011, 18.559128, 14.776930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.788204, 17.972889, 15.148643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.098377, 18.164711, 14.984334>,  <17.284481, 18.279804, 14.885749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.098377, 18.164711, 14.984334>,  <16.788204, 17.972889, 15.148643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.098377, 18.164711, 14.984334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479388, -0.023711, 0.877283,
		0.410966, -0.877192, -0.248279,
		0.775432, 0.479555, -0.410771,
		17.331007, 18.308577, 14.861103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.474293, 17.610538, 15.447158>,  <16.788204, 17.972889, 15.148643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.474293, 17.610538, 15.447158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.603527, 17.960968, 15.303990>,  <17.681068, 18.171227, 15.218090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.603527, 17.960968, 15.303990>,  <17.474293, 17.610538, 15.447158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.603527, 17.960968, 15.303990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476821, 0.175995, 0.861201,
		0.817470, -0.448906, -0.360870,
		0.323087, 0.876076, -0.357918,
		17.700453, 18.223791, 15.196615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.138470, 17.621738, 15.517898>,  <17.474293, 17.610538, 15.447158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.138470, 17.621738, 15.517898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.067638, 18.013641, 15.480548>,  <18.025139, 18.248783, 15.458138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.067638, 18.013641, 15.480548>,  <18.138470, 17.621738, 15.517898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.067638, 18.013641, 15.480548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612011, 0.183919, 0.769166,
		0.770769, 0.079058, -0.632190,
		-0.177081, 0.979757, -0.093374,
		18.014515, 18.307568, 15.452536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.800611, 17.910040, 15.540224>,  <18.138470, 17.621738, 15.517898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.800611, 17.910040, 15.540224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.549198, 18.210175, 15.622142>,  <18.398350, 18.390255, 15.671292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.549198, 18.210175, 15.622142>,  <18.800611, 17.910040, 15.540224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.549198, 18.210175, 15.622142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567040, 0.261837, 0.780965,
		0.532364, 0.606989, -0.590044,
		-0.628533, 0.750337, 0.204794,
		18.360638, 18.435276, 15.683580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.246950, 18.491358, 15.698802>,  <18.800611, 17.910040, 15.540224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.246950, 18.491358, 15.698802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.889210, 18.590359, 15.847869>,  <18.674566, 18.649759, 15.937309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.889210, 18.590359, 15.847869>,  <19.246950, 18.491358, 15.698802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.889210, 18.590359, 15.847869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424123, 0.204051, 0.882317,
		0.142333, 0.947157, -0.287464,
		-0.894350, 0.247502, 0.372668,
		18.620905, 18.664610, 15.959669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.382690, 19.114801, 16.086514>,  <19.246950, 18.491358, 15.698802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.382690, 19.114801, 16.086514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.059715, 18.944752, 16.250130>,  <18.865931, 18.842722, 16.348299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.059715, 18.944752, 16.250130>,  <19.382690, 19.114801, 16.086514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.059715, 18.944752, 16.250130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283479, 0.328474, 0.900969,
		-0.517382, 0.843430, -0.144709,
		-0.807438, -0.425123, 0.409042,
		18.817484, 18.817215, 16.372843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.153765, 19.555225, 16.496944>,  <19.382690, 19.114801, 16.086514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.153765, 19.555225, 16.496944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.007355, 19.210476, 16.637342>,  <18.919508, 19.003626, 16.721581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.007355, 19.210476, 16.637342>,  <19.153765, 19.555225, 16.496944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.007355, 19.210476, 16.637342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165211, 0.310996, 0.935942,
		-0.915822, 0.400567, 0.028558,
		-0.366026, -0.861875, 0.350995,
		18.897547, 18.951914, 16.742641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.797199, 19.734316, 17.110981>,  <19.153765, 19.555225, 16.496944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.797199, 19.734316, 17.110981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.815506, 19.338028, 17.162176>,  <18.826490, 19.100256, 17.192894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.815506, 19.338028, 17.162176>,  <18.797199, 19.734316, 17.110981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.815506, 19.338028, 17.162176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064877, 0.124905, 0.990045,
		-0.996843, -0.053612, -0.058559,
		0.045764, -0.990719, 0.127988,
		18.829235, 19.040812, 17.200573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.375111, 19.642597, 17.661703>,  <18.797199, 19.734316, 17.110981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.375111, 19.642597, 17.661703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.577721, 19.297714, 17.663992>,  <18.699286, 19.090784, 17.665365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.577721, 19.297714, 17.663992>,  <18.375111, 19.642597, 17.661703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.577721, 19.297714, 17.663992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018456, -0.004208, 0.999821,
		-0.862029, -0.506537, -0.018045,
		0.506522, -0.862208, 0.005721,
		18.729677, 19.039051, 17.665709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.089569, 19.198130, 18.105627>,  <18.375111, 19.642597, 17.661703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.089569, 19.198130, 18.105627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.441364, 19.010120, 18.075748>,  <18.652441, 18.897314, 18.057821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.441364, 19.010120, 18.075748>,  <18.089569, 19.198130, 18.105627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.441364, 19.010120, 18.075748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006575, -0.144937, 0.989419,
		-0.475877, -0.870673, -0.124380,
		0.879487, -0.470024, -0.074697,
		18.705210, 18.869114, 18.053339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<24.818825, 20.409197, 16.098408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.424194, 20.467777, 16.127302>,  <24.187416, 20.502926, 16.144638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.424194, 20.467777, 16.127302>,  <24.818825, 20.409197, 16.098408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.424194, 20.467777, 16.127302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120220, -0.352036, -0.928234,
		-0.110509, -0.924458, 0.364917,
		-0.986577, 0.146448, 0.072235,
		24.128222, 20.511711, 16.148973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.541590, 19.763523, 15.817228>,  <24.818825, 20.409197, 16.098408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.541590, 19.763523, 15.817228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.244991, 20.030109, 15.786227>,  <24.067032, 20.190062, 15.767627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.244991, 20.030109, 15.786227>,  <24.541590, 19.763523, 15.817228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.244991, 20.030109, 15.786227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143303, -0.270156, -0.952093,
		-0.655474, -0.694868, 0.295826,
		-0.741498, 0.666465, -0.077503,
		24.022541, 20.230049, 15.762977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.026041, 19.427197, 15.559452>,  <24.541590, 19.763523, 15.817228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.026041, 19.427197, 15.559452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.922840, 19.806324, 15.484540>,  <23.860920, 20.033800, 15.439592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.922840, 19.806324, 15.484540>,  <24.026041, 19.427197, 15.559452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.922840, 19.806324, 15.484540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509792, -0.298216, -0.806957,
		-0.820699, -0.112721, 0.560130,
		-0.258001, 0.947819, -0.187281,
		23.845440, 20.090670, 15.428355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.417065, 19.414686, 15.266092>,  <24.026041, 19.427197, 15.559452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.417065, 19.414686, 15.266092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.519005, 19.784805, 15.153750>,  <23.580170, 20.006876, 15.086346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.519005, 19.784805, 15.153750>,  <23.417065, 19.414686, 15.266092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.519005, 19.784805, 15.153750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643225, -0.054652, -0.763725,
		-0.722020, 0.375288, 0.581245,
		0.254850, 0.925296, -0.280855,
		23.595459, 20.062393, 15.069494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.767307, 19.746262, 15.081670>,  <23.417065, 19.414686, 15.266092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.767307, 19.746262, 15.081670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.053810, 19.970406, 14.915309>,  <23.225712, 20.104891, 14.815493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.053810, 19.970406, 14.915309>,  <22.767307, 19.746262, 15.081670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.053810, 19.970406, 14.915309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553471, 0.093174, -0.827641,
		-0.425024, 0.822993, 0.376878,
		0.716258, 0.560358, -0.415901,
		23.268688, 20.138514, 14.790539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.467377, 20.376734, 14.726441>,  <22.767307, 19.746262, 15.081670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.467377, 20.376734, 14.726441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.831154, 20.318222, 14.570743>,  <23.049421, 20.283115, 14.477324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.831154, 20.318222, 14.570743>,  <22.467377, 20.376734, 14.726441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.831154, 20.318222, 14.570743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391699, 0.012855, -0.920004,
		0.139580, 0.989160, -0.045606,
		0.909445, -0.146278, -0.389247,
		23.103987, 20.274340, 14.453968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.580294, 20.831120, 14.118023>,  <22.467377, 20.376734, 14.726441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.580294, 20.831120, 14.118023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.821594, 20.512440, 14.103282>,  <22.966375, 20.321232, 14.094438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.821594, 20.512440, 14.103282>,  <22.580294, 20.831120, 14.118023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.821594, 20.512440, 14.103282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278310, -0.166982, -0.945865,
		0.747416, 0.580851, -0.322461,
		0.603252, -0.796699, -0.036851,
		23.002569, 20.273430, 14.092227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.897495, 20.750000, 13.482721>,  <22.580294, 20.831120, 14.118023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.897495, 20.750000, 13.482721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.991718, 20.379871, 13.601581>,  <23.048252, 20.157795, 13.672896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.991718, 20.379871, 13.601581>,  <22.897495, 20.750000, 13.482721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.991718, 20.379871, 13.601581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008023, -0.303890, -0.952673,
		0.971828, 0.226792, -0.064159,
		0.235556, -0.925320, 0.297149,
		23.062386, 20.102276, 13.690725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.430233, 20.444233, 12.950850>,  <22.897495, 20.750000, 13.482721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.430233, 20.444233, 12.950850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.273087, 20.122643, 13.129412>,  <23.178799, 19.929688, 13.236549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.273087, 20.122643, 13.129412>,  <23.430233, 20.444233, 12.950850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.273087, 20.122643, 13.129412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173828, -0.411761, -0.894560,
		0.903017, -0.429041, 0.022014,
		-0.392867, -0.803976, 0.446406,
		23.155226, 19.881451, 13.263333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.664005, 19.810152, 12.555367>,  <23.430233, 20.444233, 12.950850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.664005, 19.810152, 12.555367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.350140, 19.663502, 12.755322>,  <23.161821, 19.575512, 12.875296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.350140, 19.663502, 12.755322>,  <23.664005, 19.810152, 12.555367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.350140, 19.663502, 12.755322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327152, -0.440045, -0.836261,
		0.526569, -0.819722, 0.225344,
		-0.784663, -0.366628, 0.499888,
		23.114740, 19.553513, 12.905289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.614971, 19.060804, 12.266912>,  <23.664005, 19.810152, 12.555367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.614971, 19.060804, 12.266912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.270115, 19.130566, 12.457195>,  <23.063202, 19.172422, 12.571365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.270115, 19.130566, 12.457195>,  <23.614971, 19.060804, 12.266912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.270115, 19.130566, 12.457195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480749, -0.578044, -0.659352,
		0.159989, -0.797150, 0.582198,
		-0.862139, 0.174403, 0.475710,
		23.011473, 19.182886, 12.599908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.247141, 18.361889, 12.395232>,  <23.614971, 19.060804, 12.266912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.247141, 18.361889, 12.395232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.956085, 18.636269, 12.396747>,  <22.781452, 18.800898, 12.397655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.956085, 18.636269, 12.396747>,  <23.247141, 18.361889, 12.395232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.956085, 18.636269, 12.396747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504502, -0.531406, -0.680504,
		-0.464779, -0.497072, 0.732735,
		-0.727639, 0.685950, 0.003787,
		22.737793, 18.842054, 12.397882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.573524, 18.003633, 12.366000>,  <23.247141, 18.361889, 12.395232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.573524, 18.003633, 12.366000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.506378, 18.370983, 12.222662>,  <22.466091, 18.591393, 12.136659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.506378, 18.370983, 12.222662>,  <22.573524, 18.003633, 12.366000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.506378, 18.370983, 12.222662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532041, -0.390418, -0.751336,
		-0.829912, 0.064531, 0.554150,
		-0.167866, 0.918373, -0.358346,
		22.456018, 18.646496, 12.115158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.898117, 17.984707, 12.090780>,  <22.573524, 18.003633, 12.366000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.898117, 17.984707, 12.090780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.032509, 18.323101, 11.925168>,  <22.113144, 18.526138, 11.825801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.032509, 18.323101, 11.925168>,  <21.898117, 17.984707, 12.090780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.032509, 18.323101, 11.925168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437050, -0.249361, -0.864180,
		-0.834328, 0.471301, 0.285958,
		0.335982, 0.845987, -0.414031,
		22.133303, 18.576897, 11.800959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.108727, 17.938576, 12.227446>,  <21.898117, 17.984707, 12.090780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.108727, 17.938576, 12.227446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.110386, 17.549072, 12.318461>,  <21.111382, 17.315371, 12.373071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.110386, 17.549072, 12.318461>,  <21.108727, 17.938576, 12.227446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.110386, 17.549072, 12.318461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474854, 0.202169, 0.856529,
		-0.880055, 0.104494, 0.463233,
		0.004149, -0.973760, 0.227539,
		21.111631, 17.256945, 12.386724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.882639, 17.903582, 12.927246>,  <21.108727, 17.938576, 12.227446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.882639, 17.903582, 12.927246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.052456, 17.548119, 12.857898>,  <21.154346, 17.334841, 12.816289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.052456, 17.548119, 12.857898>,  <20.882639, 17.903582, 12.927246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.052456, 17.548119, 12.857898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184733, -0.102437, 0.977436,
		-0.886363, -0.446988, 0.120676,
		0.424540, -0.888655, -0.173370,
		21.179817, 17.281523, 12.805886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.632923, 17.471291, 13.460196>,  <20.882639, 17.903582, 12.927246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.632923, 17.471291, 13.460196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.973640, 17.322071, 13.313070>,  <21.178070, 17.232540, 13.224795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.973640, 17.322071, 13.313070>,  <20.632923, 17.471291, 13.460196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.973640, 17.322071, 13.313070> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363729, -0.084164, 0.927695,
		-0.377031, -0.923987, 0.063998,
		0.851792, -0.373048, -0.367813,
		21.229177, 17.210157, 13.202726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.785675, 16.944347, 13.849694>,  <20.632923, 17.471291, 13.460196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.785675, 16.944347, 13.849694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.130138, 17.049763, 13.675818>,  <21.336817, 17.113012, 13.571493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.130138, 17.049763, 13.675818>,  <20.785675, 16.944347, 13.849694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.130138, 17.049763, 13.675818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456667, -0.025439, 0.889274,
		0.223298, -0.964314, -0.142256,
		0.861158, 0.263537, -0.434690,
		21.388485, 17.128824, 13.545411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.247513, 16.321642, 14.099302>,  <20.785675, 16.944347, 13.849694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.247513, 16.321642, 14.099302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.464981, 16.644119, 14.005942>,  <21.595463, 16.837605, 13.949926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.464981, 16.644119, 14.005942>,  <21.247513, 16.321642, 14.099302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.464981, 16.644119, 14.005942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417186, -0.018281, 0.908637,
		0.728269, -0.591371, -0.346271,
		0.543672, 0.806192, -0.233399,
		21.628082, 16.885977, 13.935923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.928093, 16.170198, 14.411115>,  <21.247513, 16.321642, 14.099302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.928093, 16.170198, 14.411115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.963917, 16.560909, 14.333255>,  <21.985411, 16.795336, 14.286539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.963917, 16.560909, 14.333255>,  <21.928093, 16.170198, 14.411115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.963917, 16.560909, 14.333255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486414, 0.127650, 0.864353,
		0.869126, -0.172090, -0.463686,
		0.089558, 0.976776, -0.194651,
		21.990784, 16.853943, 14.274859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.710447, 16.366589, 14.544025>,  <21.928093, 16.170198, 14.411115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.710447, 16.366589, 14.544025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.490303, 16.699436, 14.571389>,  <22.358217, 16.899145, 14.587808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.490303, 16.699436, 14.571389>,  <22.710447, 16.366589, 14.544025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.490303, 16.699436, 14.571389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380296, 0.176897, 0.907790,
		0.743289, 0.525627, -0.413809,
		-0.550360, 0.832120, 0.068409,
		22.325195, 16.949072, 14.591911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.136316, 16.981632, 14.818339>,  <22.710447, 16.366589, 14.544025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.136316, 16.981632, 14.818339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.773209, 17.135460, 14.885343>,  <22.555344, 17.227757, 14.925545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.773209, 17.135460, 14.885343>,  <23.136316, 16.981632, 14.818339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.773209, 17.135460, 14.885343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316839, 0.366930, 0.874629,
		0.274891, 0.847035, -0.454935,
		-0.907771, 0.384569, 0.167508,
		22.500877, 17.250832, 14.935595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.175564, 17.675339, 15.067944>,  <23.136316, 16.981632, 14.818339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.175564, 17.675339, 15.067944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.827141, 17.536152, 15.206611>,  <22.618088, 17.452639, 15.289811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.827141, 17.536152, 15.206611>,  <23.175564, 17.675339, 15.067944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.827141, 17.536152, 15.206611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127998, 0.520589, 0.844158,
		-0.474212, 0.779683, -0.408923,
		-0.871057, -0.347968, 0.346667,
		22.565825, 17.431761, 15.310611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.982430, 18.209553, 15.514688>,  <23.175564, 17.675339, 15.067944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.982430, 18.209553, 15.514688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.769688, 17.879086, 15.589068>,  <22.642042, 17.680805, 15.633697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.769688, 17.879086, 15.589068>,  <22.982430, 18.209553, 15.514688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.769688, 17.879086, 15.589068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164231, 0.114787, 0.979720,
		-0.830757, 0.551610, 0.074632,
		-0.531857, -0.826166, 0.185952,
		22.610130, 17.631235, 15.644854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.571365, 18.351274, 16.063848>,  <22.982430, 18.209553, 15.514688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.571365, 18.351274, 16.063848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.579960, 17.951630, 16.049345>,  <22.585117, 17.711843, 16.040644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.579960, 17.951630, 16.049345>,  <22.571365, 18.351274, 16.063848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.579960, 17.951630, 16.049345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081990, -0.034384, 0.996040,
		-0.996402, -0.024376, 0.081178,
		0.021488, -0.999111, -0.036258,
		22.586407, 17.651896, 16.038467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.100412, 18.166821, 16.591827>,  <22.571365, 18.351274, 16.063848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.100412, 18.166821, 16.591827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.354786, 17.865410, 16.525150>,  <22.507410, 17.684563, 16.485144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.354786, 17.865410, 16.525150>,  <22.100412, 18.166821, 16.591827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.354786, 17.865410, 16.525150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241772, -0.010597, 0.970275,
		-0.732897, -0.657330, 0.175443,
		0.635931, -0.753529, -0.166690,
		22.545565, 17.639351, 16.475143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.939262, 17.709410, 17.147781>,  <22.100412, 18.166821, 16.591827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.939262, 17.709410, 17.147781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.291328, 17.587193, 17.002481>,  <22.502567, 17.513863, 16.915302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.291328, 17.587193, 17.002481>,  <21.939262, 17.709410, 17.147781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.291328, 17.587193, 17.002481> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378029, -0.011585, 0.925721,
		-0.287058, -0.952107, 0.105308,
		0.880166, -0.305545, -0.363250,
		22.555378, 17.495529, 16.893507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.019220, 17.098223, 17.480425>,  <21.939262, 17.709410, 17.147781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.019220, 17.098223, 17.480425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.350323, 17.296906, 17.376038>,  <22.548985, 17.416115, 17.313406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.350323, 17.296906, 17.376038>,  <22.019220, 17.098223, 17.480425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.350323, 17.296906, 17.376038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284848, 0.028710, 0.958143,
		0.483410, -0.867442, -0.117722,
		0.827754, 0.496709, -0.260967,
		22.598648, 17.445919, 17.297747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.699883, 16.385078, 17.794956>,  <22.019220, 17.098223, 17.480425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.699883, 16.385078, 17.794956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.362175, 16.386593, 18.009319>,  <21.159550, 16.387503, 18.137938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.362175, 16.386593, 18.009319>,  <21.699883, 16.385078, 17.794956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.362175, 16.386593, 18.009319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486217, -0.425979, -0.762978,
		0.225396, -0.904725, 0.361482,
		-0.844269, 0.003786, 0.535907,
		21.108894, 16.387730, 18.170092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.408266, 15.760773, 17.559013>,  <21.699883, 16.385078, 17.794956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.408266, 15.760773, 17.559013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.110924, 15.963436, 17.733698>,  <20.932518, 16.085035, 17.838509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.110924, 15.963436, 17.733698>,  <21.408266, 15.760773, 17.559013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.110924, 15.963436, 17.733698> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639869, -0.348378, -0.684982,
		-0.194911, -0.788624, 0.583165,
		-0.743355, 0.506660, 0.436714,
		20.887917, 16.115435, 17.864712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.874846, 15.347831, 17.541273>,  <21.408266, 15.760773, 17.559013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.874846, 15.347831, 17.541273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.682461, 15.690884, 17.614092>,  <20.567030, 15.896715, 17.657784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.682461, 15.690884, 17.614092>,  <20.874846, 15.347831, 17.541273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.682461, 15.690884, 17.614092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670759, -0.226234, -0.706329,
		-0.564585, -0.461829, 0.684074,
		-0.480964, 0.857632, 0.182047,
		20.538172, 15.948174, 17.668707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.116264, 15.171837, 17.600447>,  <20.874846, 15.347831, 17.541273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.116264, 15.171837, 17.600447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.191582, 15.540195, 17.463921>,  <20.236773, 15.761210, 17.382004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.191582, 15.540195, 17.463921>,  <20.116264, 15.171837, 17.600447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.191582, 15.540195, 17.463921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546054, -0.190699, -0.815756,
		-0.816315, 0.339979, 0.466952,
		0.188293, 0.920895, -0.341317,
		20.248070, 15.816464, 17.361525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.524195, 15.465584, 17.490286>,  <20.116264, 15.171837, 17.600447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.524195, 15.465584, 17.490286> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.771839, 15.670879, 17.252535>,  <19.920425, 15.794057, 17.109884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.771839, 15.670879, 17.252535>,  <19.524195, 15.465584, 17.490286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.771839, 15.670879, 17.252535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680751, -0.026578, -0.732032,
		-0.391505, 0.857834, 0.332933,
		0.619113, 0.513239, -0.594377,
		19.957573, 15.824851, 17.074223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.104570, 15.864160, 17.155111>,  <19.524195, 15.465584, 17.490286>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.104570, 15.864160, 17.155111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.427807, 15.906494, 16.923325>,  <19.621750, 15.931894, 16.784252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.427807, 15.906494, 16.923325>,  <19.104570, 15.864160, 17.155111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.427807, 15.906494, 16.923325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584784, 0.025900, -0.810776,
		-0.070801, 0.994046, 0.082820,
		0.808093, 0.105836, -0.579469,
		19.670235, 15.938245, 16.749483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.902033, 16.362299, 16.622368>,  <19.104570, 15.864160, 17.155111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.902033, 16.362299, 16.622368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.232162, 16.201611, 16.463642>,  <19.430241, 16.105198, 16.368406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.232162, 16.201611, 16.463642>,  <18.902033, 16.362299, 16.622368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.232162, 16.201611, 16.463642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463973, -0.081941, -0.882051,
		0.321823, 0.912089, -0.254015,
		0.825323, -0.401721, -0.396814,
		19.479759, 16.081095, 16.344599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.080400, 16.766644, 16.023235>,  <18.902033, 16.362299, 16.622368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.080400, 16.766644, 16.023235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.266453, 16.417858, 15.962132>,  <19.378084, 16.208588, 15.925471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.266453, 16.417858, 15.962132>,  <19.080400, 16.766644, 16.023235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.266453, 16.417858, 15.962132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405116, -0.056238, -0.912534,
		0.787104, 0.486332, -0.379404,
		0.465132, -0.871962, -0.152756,
		19.405993, 16.156269, 15.916306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.393831, 16.888161, 15.365340>,  <19.080400, 16.766644, 16.023235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.393831, 16.888161, 15.365340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.382736, 16.494495, 15.435374>,  <19.376080, 16.258297, 15.477395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.382736, 16.494495, 15.435374>,  <19.393831, 16.888161, 15.365340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.382736, 16.494495, 15.435374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554595, -0.130572, -0.821812,
		0.831658, -0.119896, -0.542190,
		-0.027737, -0.984162, 0.175085,
		19.374414, 16.199247, 15.487900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.372778, 16.565557, 14.735897>,  <19.393831, 16.888161, 15.365340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.372778, 16.565557, 14.735897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.299084, 16.211483, 14.906777>,  <19.254868, 15.999038, 15.009306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.299084, 16.211483, 14.906777>,  <19.372778, 16.565557, 14.735897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.299084, 16.211483, 14.906777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401156, -0.329072, -0.854860,
		0.897291, -0.328868, -0.294473,
		-0.184233, -0.885188, 0.427200,
		19.243814, 15.945927, 15.034938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.556583, 16.027584, 14.249067>,  <19.372778, 16.565557, 14.735897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.556583, 16.027584, 14.249067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.307423, 15.834049, 14.494960>,  <19.157927, 15.717928, 14.642495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.307423, 15.834049, 14.494960>,  <19.556583, 16.027584, 14.249067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.307423, 15.834049, 14.494960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441865, -0.430846, -0.786846,
		0.645559, -0.761757, 0.054585,
		-0.622903, -0.483837, 0.614730,
		19.120552, 15.688898, 14.679379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.521994, 15.412854, 13.905586>,  <19.556583, 16.027584, 14.249067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.521994, 15.412854, 13.905586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.225376, 15.452930, 14.170938>,  <19.047405, 15.476976, 14.330149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.225376, 15.452930, 14.170938>,  <19.521994, 15.412854, 13.905586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.225376, 15.452930, 14.170938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635367, -0.422409, -0.646436,
		0.215450, -0.900851, 0.376893,
		-0.741545, 0.100191, 0.663380,
		19.002913, 15.482987, 14.369951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.267572, 14.753012, 14.059046>,  <19.521994, 15.412854, 13.905586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.267572, 14.753012, 14.059046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.977219, 15.021664, 14.118384>,  <18.803007, 15.182855, 14.153987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.977219, 15.021664, 14.118384>,  <19.267572, 14.753012, 14.059046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.977219, 15.021664, 14.118384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501112, -0.368664, -0.782926,
		-0.471148, -0.642650, 0.604169,
		-0.725883, 0.671630, 0.148344,
		18.759453, 15.223152, 14.162889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.700119, 14.369000, 13.796188>,  <19.267572, 14.753012, 14.059046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.700119, 14.369000, 13.796188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.577496, 14.749386, 13.812638>,  <18.503922, 14.977617, 13.822508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.577496, 14.749386, 13.812638>,  <18.700119, 14.369000, 13.796188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.577496, 14.749386, 13.812638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690628, -0.192489, -0.697123,
		-0.655022, -0.242111, 0.715771,
		-0.306560, 0.950963, 0.041124,
		18.485527, 15.034675, 13.824976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<18.152294, 18.583290, 18.642927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.532944, 18.683674, 18.572008>,  <18.761333, 18.743904, 18.529457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.532944, 18.683674, 18.572008>,  <18.152294, 18.583290, 18.642927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.532944, 18.683674, 18.572008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205604, -0.091276, 0.974369,
		0.228343, -0.963685, -0.138459,
		0.951623, 0.250958, -0.177295,
		18.818430, 18.758961, 18.518820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.575377, 18.047497, 19.062580>,  <18.152294, 18.583290, 18.642927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.575377, 18.047497, 19.062580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.821354, 18.353008, 18.984104>,  <18.968941, 18.536314, 18.937017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.821354, 18.353008, 18.984104>,  <18.575377, 18.047497, 19.062580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.821354, 18.353008, 18.984104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267734, 0.031796, 0.962968,
		0.741732, -0.644696, -0.184936,
		0.614941, 0.763778, -0.196191,
		19.005836, 18.582142, 18.925247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.192560, 17.919592, 19.429529>,  <18.575377, 18.047497, 19.062580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.192560, 17.919592, 19.429529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.186600, 18.311611, 19.350248>,  <19.183023, 18.546824, 19.302679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.186600, 18.311611, 19.350248>,  <19.192560, 17.919592, 19.429529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.186600, 18.311611, 19.350248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219844, 0.196587, 0.955522,
		0.975421, -0.029334, -0.218388,
		-0.014903, 0.980048, -0.198204,
		19.182129, 18.605625, 19.290787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.899570, 18.205622, 19.495836>,  <19.192560, 17.919592, 19.429529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.899570, 18.205622, 19.495836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.648441, 18.509693, 19.562733>,  <19.497765, 18.692135, 19.602871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.648441, 18.509693, 19.562733>,  <19.899570, 18.205622, 19.495836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.648441, 18.509693, 19.562733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301713, 0.039614, 0.952575,
		0.717501, 0.648507, -0.254226,
		-0.627823, 0.760177, 0.167240,
		19.460094, 18.737745, 19.612906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.337196, 18.589569, 19.973461>,  <19.899570, 18.205622, 19.495836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.337196, 18.589569, 19.973461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.961170, 18.724941, 19.990141>,  <19.735554, 18.806164, 20.000149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.961170, 18.724941, 19.990141>,  <20.337196, 18.589569, 19.973461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.961170, 18.724941, 19.990141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146524, 0.290488, 0.945594,
		0.307904, 0.895031, -0.322666,
		-0.940067, 0.338431, 0.041701,
		19.679150, 18.826471, 20.002651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.409151, 19.271086, 20.200026>,  <20.337196, 18.589569, 19.973461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.409151, 19.271086, 20.200026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.039032, 19.141251, 20.278473>,  <19.816959, 19.063351, 20.325542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.039032, 19.141251, 20.278473>,  <20.409151, 19.271086, 20.200026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.039032, 19.141251, 20.278473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103987, 0.280168, 0.954302,
		-0.364701, 0.903410, -0.225487,
		-0.925300, -0.324587, 0.196120,
		19.761442, 19.043875, 20.337309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.047638, 19.826998, 20.541540>,  <20.409151, 19.271086, 20.200026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.047638, 19.826998, 20.541540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.845837, 19.499741, 20.651899>,  <19.724756, 19.303387, 20.718115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.845837, 19.499741, 20.651899>,  <20.047638, 19.826998, 20.541540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.845837, 19.499741, 20.651899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001908, 0.318488, 0.947925,
		-0.863408, 0.478758, -0.159117,
		-0.504503, -0.818142, 0.275898,
		19.694487, 19.254297, 20.734669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.678452, 20.117044, 21.030781>,  <20.047638, 19.826998, 20.541540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.678452, 20.117044, 21.030781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.604984, 19.734859, 21.123178>,  <19.560904, 19.505548, 21.178617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.604984, 19.734859, 21.123178>,  <19.678452, 20.117044, 21.030781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.604984, 19.734859, 21.123178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102095, 0.252261, 0.962258,
		-0.977672, 0.153154, -0.143880,
		-0.183669, -0.955462, 0.230992,
		19.549883, 19.448221, 21.192476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.095699, 20.088198, 21.567057>,  <19.678452, 20.117044, 21.030781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.095699, 20.088198, 21.567057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.332664, 19.767033, 21.593512>,  <19.474844, 19.574333, 21.609385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.332664, 19.767033, 21.593512>,  <19.095699, 20.088198, 21.567057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.332664, 19.767033, 21.593512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053037, 0.120783, 0.991261,
		-0.803886, -0.583729, 0.114138,
		0.592414, -0.802914, 0.066137,
		19.510389, 19.526157, 21.613352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.939922, 19.814802, 22.295717>,  <19.095699, 20.088198, 21.567057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.939922, 19.814802, 22.295717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.267883, 19.612064, 22.189232>,  <19.464661, 19.490421, 22.125341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.267883, 19.612064, 22.189232>,  <18.939922, 19.814802, 22.295717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.267883, 19.612064, 22.189232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253888, -0.094871, 0.962569,
		-0.513128, -0.856802, 0.050896,
		0.819902, -0.506843, -0.266213,
		19.513855, 19.460011, 22.109367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.913757, 19.276951, 22.760445>,  <18.939922, 19.814802, 22.295717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.913757, 19.276951, 22.760445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.286316, 19.340809, 22.629593>,  <19.509851, 19.379124, 22.551083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.286316, 19.340809, 22.629593>,  <18.913757, 19.276951, 22.760445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.286316, 19.340809, 22.629593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329298, 0.013443, 0.944130,
		0.155123, -0.987083, -0.040050,
		0.931397, 0.159644, -0.327130,
		19.565735, 19.388702, 22.531454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.440273, 18.901072, 23.120459>,  <18.913757, 19.276951, 22.760445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.440273, 18.901072, 23.120459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.715927, 19.151249, 22.974085>,  <19.881319, 19.301355, 22.886261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.715927, 19.151249, 22.974085>,  <19.440273, 18.901072, 23.120459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.715927, 19.151249, 22.974085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540668, -0.107577, 0.834329,
		0.482461, -0.772817, -0.412293,
		0.689137, 0.625445, -0.365936,
		19.922668, 19.338882, 22.864304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.103098, 18.541111, 23.200266>,  <19.440273, 18.901072, 23.120459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.103098, 18.541111, 23.200266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.140648, 18.939209, 23.189884>,  <20.163177, 19.178068, 23.183655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.140648, 18.939209, 23.189884>,  <20.103098, 18.541111, 23.200266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.140648, 18.939209, 23.189884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425181, -0.016506, 0.904958,
		0.900227, -0.095986, -0.424709,
		0.093874, 0.995246, -0.025952,
		20.168810, 19.237783, 23.182098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.737755, 18.831179, 23.556673>,  <20.103098, 18.541111, 23.200266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.737755, 18.831179, 23.556673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.450771, 19.108284, 23.585880>,  <20.278582, 19.274548, 23.603405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.450771, 19.108284, 23.585880>,  <20.737755, 18.831179, 23.556673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.450771, 19.108284, 23.585880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132066, 0.032349, 0.990713,
		0.683967, 0.720440, -0.114700,
		-0.717459, 0.692763, 0.073020,
		20.235533, 19.316113, 23.607786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.236980, 18.452543, 23.083761>,  <20.737755, 18.831179, 23.556673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.236980, 18.452543, 23.083761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.578976, 18.287384, 23.209309>,  <21.784172, 18.188290, 23.284637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.578976, 18.287384, 23.209309>,  <21.236980, 18.452543, 23.083761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.578976, 18.287384, 23.209309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195745, -0.303525, -0.932500,
		0.480293, 0.858714, -0.178687,
		0.854987, -0.412896, 0.313870,
		21.835472, 18.163515, 23.303469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.744051, 18.663013, 22.639072>,  <21.236980, 18.452543, 23.083761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.744051, 18.663013, 22.639072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.864391, 18.320980, 22.807983>,  <21.936596, 18.115759, 22.909330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.864391, 18.320980, 22.807983>,  <21.744051, 18.663013, 22.639072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.864391, 18.320980, 22.807983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251402, -0.356019, -0.900027,
		0.919939, 0.376934, 0.107862,
		0.300849, -0.855086, 0.422277,
		21.954647, 18.064455, 22.934666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.311247, 18.599529, 22.359173>,  <21.744051, 18.663013, 22.639072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.311247, 18.599529, 22.359173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.206791, 18.233154, 22.481068>,  <22.144117, 18.013329, 22.554205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.206791, 18.233154, 22.481068>,  <22.311247, 18.599529, 22.359173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.206791, 18.233154, 22.481068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229754, -0.365595, -0.901972,
		0.937560, -0.165526, 0.305912,
		-0.261140, -0.915937, 0.304737,
		22.128448, 17.958374, 22.572489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.759756, 18.151741, 22.047819>,  <22.311247, 18.599529, 22.359173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.759756, 18.151741, 22.047819> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.459095, 17.916183, 22.166632>,  <22.278698, 17.774849, 22.237919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.459095, 17.916183, 22.166632>,  <22.759756, 18.151741, 22.047819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.459095, 17.916183, 22.166632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113428, -0.559051, -0.821338,
		0.649735, -0.583668, 0.487008,
		-0.751651, -0.588893, 0.297031,
		22.233601, 17.739515, 22.255741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.949099, 17.430658, 22.076544>,  <22.759756, 18.151741, 22.047819>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.949099, 17.430658, 22.076544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.552341, 17.459904, 22.034973>,  <22.314287, 17.477451, 22.010031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.552341, 17.459904, 22.034973>,  <22.949099, 17.430658, 22.076544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.552341, 17.459904, 22.034973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060999, -0.443509, -0.894192,
		-0.111468, -0.893283, 0.435454,
		-0.991894, 0.073111, -0.103927,
		22.254774, 17.481836, 22.003796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.761961, 16.815697, 21.717274>,  <22.949099, 17.430658, 22.076544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.761961, 16.815697, 21.717274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.456013, 17.068584, 21.667843>,  <22.272444, 17.220316, 21.638186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.456013, 17.068584, 21.667843>,  <22.761961, 16.815697, 21.717274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.456013, 17.068584, 21.667843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161990, -0.374435, -0.912994,
		-0.623483, -0.678305, 0.388808,
		-0.764871, 0.632219, -0.123575,
		22.226551, 17.258249, 21.630770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.240009, 16.376759, 21.482548>,  <22.761961, 16.815697, 21.717274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.240009, 16.376759, 21.482548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.098709, 16.725372, 21.346523>,  <22.013929, 16.934540, 21.264908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.098709, 16.725372, 21.346523>,  <22.240009, 16.376759, 21.482548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.098709, 16.725372, 21.346523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353664, -0.460931, -0.813919,
		-0.866103, -0.167251, 0.471055,
		-0.353253, 0.871533, -0.340063,
		21.992733, 16.986832, 21.244505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.568707, 16.256197, 21.281181>,  <22.240009, 16.376759, 21.482548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.568707, 16.256197, 21.281181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.635715, 16.603142, 21.093727>,  <21.675920, 16.811308, 20.981255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.635715, 16.603142, 21.093727>,  <21.568707, 16.256197, 21.281181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.635715, 16.603142, 21.093727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454843, -0.353740, -0.817304,
		-0.874674, 0.350073, 0.335253,
		0.167524, 0.867362, -0.468636,
		21.685972, 16.863350, 20.953136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.972496, 16.359884, 20.790529>,  <21.568707, 16.256197, 21.281181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.972496, 16.359884, 20.790529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.268097, 16.602131, 20.672476>,  <21.445457, 16.747478, 20.601645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.268097, 16.602131, 20.672476>,  <20.972496, 16.359884, 20.790529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.268097, 16.602131, 20.672476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387408, 0.023613, -0.921606,
		-0.551169, 0.795408, 0.252070,
		0.739004, 0.605615, -0.295133,
		21.489798, 16.783815, 20.583937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.639418, 16.820206, 20.374796>,  <20.972496, 16.359884, 20.790529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.639418, 16.820206, 20.374796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.025829, 16.860142, 20.279451>,  <21.257677, 16.884104, 20.222244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.025829, 16.860142, 20.279451>,  <20.639418, 16.820206, 20.374796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.025829, 16.860142, 20.279451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250139, 0.129513, -0.959509,
		-0.064928, 0.986538, 0.150088,
		0.966031, 0.099841, -0.238362,
		21.315638, 16.890095, 20.207943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.743460, 17.466087, 19.963890>,  <20.639418, 16.820206, 20.374796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.743460, 17.466087, 19.963890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.036427, 17.209187, 19.873493>,  <21.212208, 17.055046, 19.819256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.036427, 17.209187, 19.873493>,  <20.743460, 17.466087, 19.963890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.036427, 17.209187, 19.873493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184169, 0.132665, -0.973900,
		0.655473, 0.754924, -0.021117,
		0.732419, -0.642254, -0.225992,
		21.256153, 17.016510, 19.805696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.736341, 17.595543, 19.281643>,  <20.743460, 17.466087, 19.963890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.736341, 17.595543, 19.281643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.974060, 17.275089, 19.309912>,  <21.116692, 17.082817, 19.326872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.974060, 17.275089, 19.309912>,  <20.736341, 17.595543, 19.281643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.974060, 17.275089, 19.309912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143434, -0.192044, -0.970848,
		0.791351, 0.566836, -0.229042,
		0.594298, -0.801134, 0.070671,
		21.152349, 17.034748, 19.331114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.274778, 17.595865, 18.724182>,  <20.736341, 17.595543, 19.281643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.274778, 17.595865, 18.724182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.231018, 17.214668, 18.837204>,  <21.204762, 16.985950, 18.905018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.231018, 17.214668, 18.837204>,  <21.274778, 17.595865, 18.724182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.231018, 17.214668, 18.837204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002746, -0.284549, -0.958658,
		0.993994, -0.104102, 0.033747,
		-0.109401, -0.952992, 0.282554,
		21.198198, 16.928770, 18.921970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.734625, 17.166718, 18.342331>,  <21.274778, 17.595865, 18.724182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.734625, 17.166718, 18.342331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.455601, 16.904125, 18.457182>,  <21.288185, 16.746571, 18.526093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.455601, 16.904125, 18.457182>,  <21.734625, 17.166718, 18.342331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.455601, 16.904125, 18.457182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101948, -0.305713, -0.946650,
		0.709236, -0.689618, 0.146327,
		-0.697561, -0.656480, 0.287127,
		21.246332, 16.707182, 18.543320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.323603, 17.100140, 18.134197>,  <21.734625, 17.166718, 18.342331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.323603, 17.100140, 18.134197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.563530, 17.332283, 17.913870>,  <22.707487, 17.471569, 17.781673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.563530, 17.332283, 17.913870>,  <22.323603, 17.100140, 18.134197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.563530, 17.332283, 17.913870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512580, 0.249888, 0.821473,
		0.614392, -0.775073, -0.147593,
		0.599820, 0.580360, -0.550816,
		22.743477, 17.506392, 17.748625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.976830, 17.021580, 18.329870>,  <22.323603, 17.100140, 18.134197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.976830, 17.021580, 18.329870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.997341, 17.381817, 18.157217>,  <23.009647, 17.597960, 18.053625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.997341, 17.381817, 18.157217>,  <22.976830, 17.021580, 18.329870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.997341, 17.381817, 18.157217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578919, 0.325370, 0.747654,
		0.813771, -0.288218, -0.504686,
		0.051278, 0.900591, -0.431632,
		23.012724, 17.651995, 18.027727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.747992, 17.167765, 18.311106>,  <22.976830, 17.021580, 18.329870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.747992, 17.167765, 18.311106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.532093, 17.503216, 18.281759>,  <23.402554, 17.704487, 18.264151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.532093, 17.503216, 18.281759>,  <23.747992, 17.167765, 18.311106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.532093, 17.503216, 18.281759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643884, 0.467403, 0.605762,
		0.542300, 0.279716, -0.792256,
		-0.539744, 0.838626, -0.073368,
		23.370171, 17.754803, 18.259748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.189310, 17.656326, 18.105764>,  <23.747992, 17.167765, 18.311106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.189310, 17.656326, 18.105764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.895649, 17.877247, 18.263741>,  <23.719452, 18.009800, 18.358526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.895649, 17.877247, 18.263741>,  <24.189310, 17.656326, 18.105764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.895649, 17.877247, 18.263741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659543, 0.441899, 0.608053,
		0.161304, 0.706886, -0.688689,
		-0.734155, 0.552302, 0.394942,
		23.675402, 18.042938, 18.382223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.544973, 18.220486, 18.249489>,  <24.189310, 17.656326, 18.105764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.544973, 18.220486, 18.249489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.209042, 18.284355, 18.457022>,  <24.007483, 18.322678, 18.581541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.209042, 18.284355, 18.457022>,  <24.544973, 18.220486, 18.249489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.209042, 18.284355, 18.457022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525771, 0.477107, 0.704226,
		-0.135092, 0.864218, -0.484641,
		-0.839831, 0.159675, 0.518834,
		23.957092, 18.332258, 18.612673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.491053, 18.962734, 18.515223>,  <24.544973, 18.220486, 18.249489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.491053, 18.962734, 18.515223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.256927, 18.751358, 18.761202>,  <24.116453, 18.624533, 18.908789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.256927, 18.751358, 18.761202>,  <24.491053, 18.962734, 18.515223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.256927, 18.751358, 18.761202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409601, 0.461832, 0.786726,
		-0.699741, 0.712363, -0.053866,
		-0.585312, -0.528441, 0.614947,
		24.081333, 18.592825, 18.945686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.190516, 19.446531, 18.973810>,  <24.491053, 18.962734, 18.515223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.190516, 19.446531, 18.973810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.208538, 19.092445, 19.159010>,  <24.219351, 18.879993, 19.270130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.208538, 19.092445, 19.159010>,  <24.190516, 19.446531, 18.973810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.208538, 19.092445, 19.159010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476654, 0.426360, 0.768777,
		-0.877936, 0.186054, 0.441150,
		0.045054, -0.885213, 0.463000,
		24.222054, 18.826881, 19.297911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.770714, 20.077541, 18.927681>,  <24.190516, 19.446531, 18.973810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.770714, 20.077541, 18.927681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.896999, 20.455360, 18.891558>,  <23.972771, 20.682053, 18.869883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.896999, 20.455360, 18.891558>,  <23.770714, 20.077541, 18.927681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.896999, 20.455360, 18.891558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146286, -0.045587, -0.988191,
		-0.937511, 0.325195, 0.123781,
		0.315712, 0.944548, -0.090310,
		23.991713, 20.738724, 18.864466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.269640, 20.423489, 18.500961>,  <23.770714, 20.077541, 18.927681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.269640, 20.423489, 18.500961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.590714, 20.659992, 18.469698>,  <23.783358, 20.801895, 18.450941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.590714, 20.659992, 18.469698>,  <23.269640, 20.423489, 18.500961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.590714, 20.659992, 18.469698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150159, 0.073528, -0.985924,
		-0.577191, 0.803122, 0.147803,
		0.802685, 0.591260, -0.078156,
		23.831518, 20.837370, 18.446251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.038359, 21.000011, 18.113375>,  <23.269640, 20.423489, 18.500961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.038359, 21.000011, 18.113375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.436779, 21.005627, 18.078308>,  <23.675831, 21.008995, 18.057268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.436779, 21.005627, 18.078308>,  <23.038359, 21.000011, 18.113375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.436779, 21.005627, 18.078308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088660, 0.105719, -0.990436,
		-0.004634, 0.994297, 0.106546,
		0.996051, 0.014037, -0.087665,
		23.735594, 21.009838, 18.052010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.257687, 21.549242, 17.660429>,  <23.038359, 21.000011, 18.113375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.257687, 21.549242, 17.660429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.576797, 21.308193, 17.652445>,  <23.768265, 21.163565, 17.647654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.576797, 21.308193, 17.652445>,  <23.257687, 21.549242, 17.660429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.576797, 21.308193, 17.652445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007886, 0.022672, -0.999712,
		0.602901, 0.797705, 0.013335,
		0.797777, -0.602622, -0.019960,
		23.816132, 21.127407, 17.646458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.712811, 21.757896, 17.016670>,  <23.257687, 21.549242, 17.660429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.712811, 21.757896, 17.016670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.815792, 21.386559, 17.123924>,  <23.877581, 21.163755, 17.188276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.815792, 21.386559, 17.123924>,  <23.712811, 21.757896, 17.016670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.815792, 21.386559, 17.123924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106228, -0.303000, -0.947052,
		0.960434, 0.215340, -0.176625,
		0.257455, -0.928343, 0.268136,
		23.893028, 21.108055, 17.204365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.336954, 21.611523, 16.604462>,  <23.712811, 21.757896, 17.016670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.336954, 21.611523, 16.604462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.168312, 21.267323, 16.718855>,  <24.067127, 21.060802, 16.787491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.168312, 21.267323, 16.718855>,  <24.336954, 21.611523, 16.604462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.168312, 21.267323, 16.718855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049762, -0.336863, -0.940238,
		0.905414, -0.382177, 0.184843,
		-0.421604, -0.860502, 0.285983,
		24.041830, 21.009172, 16.804649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.763777, 21.135386, 16.332876>,  <24.336954, 21.611523, 16.604462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.763777, 21.135386, 16.332876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.426765, 20.928658, 16.393599>,  <24.224558, 20.804621, 16.430033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.426765, 20.928658, 16.393599>,  <24.763777, 21.135386, 16.332876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.426765, 20.928658, 16.393599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003925, -0.275929, -0.961170,
		0.538639, -0.810408, 0.230449,
		-0.842528, -0.516819, 0.151807,
		24.174007, 20.773611, 16.439140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<20.120716, 22.591854, 21.439770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.192219, 22.214397, 21.551186>,  <20.235121, 21.987923, 21.618034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.192219, 22.214397, 21.551186>,  <20.120716, 22.591854, 21.439770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.192219, 22.214397, 21.551186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020543, -0.279456, -0.959939,
		0.983679, 0.177318, -0.030569,
		0.178757, -0.943643, 0.278538,
		20.245846, 21.931305, 21.634747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.746305, 22.338732, 21.142263>,  <20.120716, 22.591854, 21.439770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.746305, 22.338732, 21.142263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.513603, 22.020733, 21.211008>,  <20.373981, 21.829933, 21.252254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.513603, 22.020733, 21.211008>,  <20.746305, 22.338732, 21.142263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.513603, 22.020733, 21.211008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017688, -0.198884, -0.979863,
		0.813171, -0.573082, 0.101640,
		-0.581756, -0.794998, 0.171863,
		20.339077, 21.782234, 21.262568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.113571, 21.778170, 20.784285>,  <20.746305, 22.338732, 21.142263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.113571, 21.778170, 20.784285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.742176, 21.638065, 20.833635>,  <20.519339, 21.554003, 20.863247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.742176, 21.638065, 20.833635>,  <21.113571, 21.778170, 20.784285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.742176, 21.638065, 20.833635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027155, -0.267311, -0.963228,
		0.370364, -0.897697, 0.238684,
		-0.928490, -0.350263, 0.123379,
		20.463629, 21.532986, 20.870649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.120907, 21.264236, 20.318575>,  <21.113571, 21.778170, 20.784285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.120907, 21.264236, 20.318575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.733261, 21.295536, 20.412121>,  <20.500673, 21.314316, 20.468248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.733261, 21.295536, 20.412121>,  <21.120907, 21.264236, 20.318575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.733261, 21.295536, 20.412121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246115, -0.246981, -0.937245,
		-0.015577, -0.965856, 0.258611,
		-0.969115, 0.078247, 0.233864,
		20.442526, 21.319010, 20.482281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.757215, 20.640938, 19.978964>,  <21.120907, 21.264236, 20.318575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.757215, 20.640938, 19.978964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.516457, 20.949638, 20.061056>,  <20.372002, 21.134859, 20.110312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.516457, 20.949638, 20.061056>,  <20.757215, 20.640938, 19.978964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.516457, 20.949638, 20.061056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468935, -0.133556, -0.873076,
		-0.646387, -0.621743, 0.442288,
		-0.601899, 0.771750, 0.205229,
		20.335886, 21.181164, 20.122625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.198910, 20.464878, 19.712013>,  <20.757215, 20.640938, 19.978964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.198910, 20.464878, 19.712013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.157906, 20.862213, 19.733084>,  <20.133303, 21.100615, 19.745726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.157906, 20.862213, 19.733084>,  <20.198910, 20.464878, 19.712013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.157906, 20.862213, 19.733084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392218, 0.008303, -0.919835,
		-0.914143, -0.114952, 0.388753,
		-0.102509, 0.993336, 0.052676,
		20.127153, 21.160213, 19.748886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.477564, 20.632784, 19.535238>,  <20.198910, 20.464878, 19.712013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.477564, 20.632784, 19.535238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.664917, 20.982754, 19.486042>,  <19.777328, 21.192736, 19.456524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.664917, 20.982754, 19.486042>,  <19.477564, 20.632784, 19.535238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.664917, 20.982754, 19.486042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526668, 0.164713, -0.833960,
		-0.709394, 0.455387, 0.537943,
		0.468381, 0.874924, -0.122992,
		19.805431, 21.245232, 19.449144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.965902, 21.178711, 19.568775>,  <19.477564, 20.632784, 19.535238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.965902, 21.178711, 19.568775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.278343, 21.327316, 19.368032>,  <19.465807, 21.416479, 19.247587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.278343, 21.327316, 19.368032>,  <18.965902, 21.178711, 19.568775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.278343, 21.327316, 19.368032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577664, 0.124849, -0.806671,
		-0.237032, 0.919995, 0.312130,
		0.781102, 0.371513, -0.501854,
		19.512674, 21.438770, 19.217476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.618105, 21.672468, 19.177935>,  <18.965902, 21.178711, 19.568775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.618105, 21.672468, 19.177935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.967606, 21.632870, 18.987459>,  <19.177307, 21.609112, 18.873175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.967606, 21.632870, 18.987459>,  <18.618105, 21.672468, 19.177935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.967606, 21.632870, 18.987459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448730, 0.213576, -0.867771,
		0.187608, 0.971898, 0.142191,
		0.873753, -0.098995, -0.476188,
		19.229733, 21.603170, 18.844603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.614910, 22.204687, 18.717215>,  <18.618105, 21.672468, 19.177935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.614910, 22.204687, 18.717215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.885979, 21.942127, 18.584612>,  <19.048620, 21.784592, 18.505051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.885979, 21.942127, 18.584612>,  <18.614910, 22.204687, 18.717215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.885979, 21.942127, 18.584612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292498, 0.173002, -0.940487,
		0.674688, 0.734307, -0.074757,
		0.677673, -0.656402, -0.331505,
		19.089281, 21.745207, 18.485161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.687813, 22.450270, 18.036522>,  <18.614910, 22.204687, 18.717215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.687813, 22.450270, 18.036522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.849495, 22.084423, 18.040455>,  <18.946505, 21.864916, 18.042814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.849495, 22.084423, 18.040455>,  <18.687813, 22.450270, 18.036522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.849495, 22.084423, 18.040455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007387, -0.014015, -0.999875,
		0.914638, 0.404084, -0.012422,
		0.404208, -0.914615, 0.009834,
		18.970757, 21.810040, 18.043406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.174345, 22.471027, 17.555052>,  <18.687813, 22.450270, 18.036522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.174345, 22.471027, 17.555052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.063770, 22.089531, 17.602316>,  <18.997425, 21.860634, 17.630674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.063770, 22.089531, 17.602316>,  <19.174345, 22.471027, 17.555052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.063770, 22.089531, 17.602316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161079, -0.075230, -0.984070,
		0.947437, -0.291066, -0.132831,
		-0.276436, -0.953741, 0.118160,
		18.980839, 21.803410, 17.637764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.876850, 22.641256, 17.458733>,  <19.174345, 22.471027, 17.555052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.876850, 22.641256, 17.458733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.151989, 22.922543, 17.386782>,  <20.317072, 23.091314, 17.343611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.151989, 22.922543, 17.386782>,  <19.876850, 22.641256, 17.458733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.151989, 22.922543, 17.386782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278066, -0.026380, 0.960200,
		0.670481, -0.710489, -0.213685,
		0.687848, 0.703214, -0.179875,
		20.358343, 23.133507, 17.332819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.549114, 22.443542, 17.753073>,  <19.876850, 22.641256, 17.458733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.549114, 22.443542, 17.753073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.593487, 22.839870, 17.722172>,  <20.620110, 23.077667, 17.703630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.593487, 22.839870, 17.722172>,  <20.549114, 22.443542, 17.753073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.593487, 22.839870, 17.722172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355005, 0.033099, 0.934278,
		0.928260, -0.131064, -0.348075,
		0.110929, 0.990821, -0.077253,
		20.626766, 23.137117, 17.698996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.235302, 22.556887, 17.918491>,  <20.549114, 22.443542, 17.753073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.235302, 22.556887, 17.918491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.053452, 22.911671, 17.951023>,  <20.944342, 23.124542, 17.970543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.053452, 22.911671, 17.951023>,  <21.235302, 22.556887, 17.918491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.053452, 22.911671, 17.951023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397107, 0.120113, 0.909878,
		0.797258, 0.445951, -0.406825,
		-0.454627, 0.886961, 0.081329,
		20.917063, 23.177759, 17.975422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.804981, 23.031950, 18.138151>,  <21.235302, 22.556887, 17.918491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.804981, 23.031950, 18.138151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.459839, 23.212555, 18.229031>,  <21.252754, 23.320917, 18.283558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.459839, 23.212555, 18.229031>,  <21.804981, 23.031950, 18.138151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.459839, 23.212555, 18.229031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367092, 0.250794, 0.895738,
		0.347456, 0.856294, -0.382145,
		-0.862855, 0.451511, 0.227199,
		21.200983, 23.348009, 18.297190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.060503, 23.624296, 18.389238>,  <21.804981, 23.031950, 18.138151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.060503, 23.624296, 18.389238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.687344, 23.611755, 18.532747>,  <21.463448, 23.604231, 18.618853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.687344, 23.611755, 18.532747>,  <22.060503, 23.624296, 18.389238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.687344, 23.611755, 18.532747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338173, 0.266324, 0.902613,
		-0.123848, 0.963373, -0.237851,
		-0.932899, -0.031352, 0.358771,
		21.407475, 23.602350, 18.640379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.958948, 24.237789, 18.674665>,  <22.060503, 23.624296, 18.389238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.958948, 24.237789, 18.674665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.701260, 23.985989, 18.848427>,  <21.546646, 23.834909, 18.952684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.701260, 23.985989, 18.848427>,  <21.958948, 24.237789, 18.674665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.701260, 23.985989, 18.848427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290740, 0.323776, 0.900355,
		-0.707423, 0.706328, -0.025563,
		-0.644223, -0.629499, 0.434405,
		21.507992, 23.797138, 18.978748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.779690, 24.605696, 19.239187>,  <21.958948, 24.237789, 18.674665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.779690, 24.605696, 19.239187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.635834, 24.251804, 19.357790>,  <21.549520, 24.039471, 19.428951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.635834, 24.251804, 19.357790>,  <21.779690, 24.605696, 19.239187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.635834, 24.251804, 19.357790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230436, 0.223713, 0.947022,
		-0.904188, 0.408915, 0.123417,
		-0.359642, -0.884726, 0.296508,
		21.527941, 23.986387, 19.446743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.419487, 24.672794, 19.882795>,  <21.779690, 24.605696, 19.239187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.419487, 24.672794, 19.882795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.508839, 24.283325, 19.864634>,  <21.562450, 24.049644, 19.853737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.508839, 24.283325, 19.864634>,  <21.419487, 24.672794, 19.882795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.508839, 24.283325, 19.864634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360865, 0.039339, 0.931788,
		-0.905471, -0.224528, 0.360152,
		0.223381, -0.973673, -0.045404,
		21.575853, 23.991222, 19.851013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.088060, 24.298597, 20.439865>,  <21.419487, 24.672794, 19.882795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.088060, 24.298597, 20.439865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.415775, 24.087204, 20.350895>,  <21.612404, 23.960367, 20.297514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.415775, 24.087204, 20.350895>,  <21.088060, 24.298597, 20.439865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.415775, 24.087204, 20.350895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324630, 0.107777, 0.939681,
		-0.472634, -0.842074, 0.259862,
		0.819288, -0.528484, -0.222423,
		21.661562, 23.928659, 20.284168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.107357, 23.818153, 20.977598>,  <21.088060, 24.298597, 20.439865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.107357, 23.818153, 20.977598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.480629, 23.821831, 20.833881>,  <21.704592, 23.824038, 20.747650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.480629, 23.821831, 20.833881>,  <21.107357, 23.818153, 20.977598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.480629, 23.821831, 20.833881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355000, -0.179722, 0.917428,
		-0.056138, -0.983674, -0.170977,
		0.933179, 0.009194, -0.359294,
		21.760582, 23.824589, 20.726093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.434286, 23.157970, 21.156349>,  <21.107357, 23.818153, 20.977598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.434286, 23.157970, 21.156349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.733711, 23.409927, 21.073509>,  <21.913366, 23.561102, 21.023806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.733711, 23.409927, 21.073509>,  <21.434286, 23.157970, 21.156349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.733711, 23.409927, 21.073509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453008, -0.257755, 0.853432,
		0.484189, -0.732665, -0.478291,
		0.748562, 0.629892, -0.207101,
		21.958281, 23.598894, 21.011379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.013311, 22.753773, 21.281609>,  <21.434286, 23.157970, 21.156349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.013311, 22.753773, 21.281609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.178196, 23.118076, 21.291378>,  <22.277126, 23.336658, 21.297239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.178196, 23.118076, 21.291378>,  <22.013311, 22.753773, 21.281609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.178196, 23.118076, 21.291378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505054, -0.250734, 0.825865,
		0.758289, -0.328098, -0.563339,
		0.412213, 0.910760, 0.024422,
		22.301859, 23.391304, 21.298704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.678043, 22.729713, 21.662725>,  <22.013311, 22.753773, 21.281609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.678043, 22.729713, 21.662725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.636459, 23.127544, 21.664141>,  <22.611509, 23.366243, 21.664989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.636459, 23.127544, 21.664141>,  <22.678043, 22.729713, 21.662725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.636459, 23.127544, 21.664141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526136, 0.051979, 0.848810,
		0.844022, 0.090104, -0.528686,
		-0.103962, 0.994575, 0.003536,
		22.605270, 23.425917, 21.665201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.377401, 22.977083, 21.805300>,  <22.678043, 22.729713, 21.662725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.377401, 22.977083, 21.805300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.109970, 23.254807, 21.911837>,  <22.949512, 23.421440, 21.975758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.109970, 23.254807, 21.911837>,  <23.377401, 22.977083, 21.805300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.109970, 23.254807, 21.911837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525675, 0.187927, 0.829668,
		0.525995, 0.694706, -0.490626,
		-0.668577, 0.694311, 0.266341,
		22.909397, 23.463100, 21.991739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.708284, 22.706100, 21.218454>,  <23.377401, 22.977083, 21.805300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.708284, 22.706100, 21.218454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.906742, 22.372219, 21.314047>,  <24.025818, 22.171890, 21.371403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.906742, 22.372219, 21.314047>,  <23.708284, 22.706100, 21.218454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.906742, 22.372219, 21.314047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139415, -0.348265, -0.926971,
		0.856973, 0.426595, -0.289160,
		0.496146, -0.834702, 0.238980,
		24.055586, 22.121809, 21.385740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.873762, 22.533998, 20.587370>,  <23.708284, 22.706100, 21.218454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.873762, 22.533998, 20.587370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.968773, 22.201218, 20.787943>,  <24.025780, 22.001549, 20.908287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.968773, 22.201218, 20.787943>,  <23.873762, 22.533998, 20.587370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.968773, 22.201218, 20.787943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093580, -0.533402, -0.840670,
		0.966862, 0.152760, -0.204552,
		0.237529, -0.831954, 0.501431,
		24.040031, 21.951632, 20.938372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.398497, 22.457518, 20.257917>,  <23.873762, 22.533998, 20.587370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.398497, 22.457518, 20.257917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.279049, 22.119045, 20.434464>,  <24.207380, 21.915962, 20.540392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.279049, 22.119045, 20.434464>,  <24.398497, 22.457518, 20.257917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.279049, 22.119045, 20.434464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059333, -0.478034, -0.876335,
		0.952526, -0.235504, 0.192958,
		-0.298620, -0.846180, 0.441367,
		24.189463, 21.865191, 20.566874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.907785, 21.906103, 20.016361>,  <24.398497, 22.457518, 20.257917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.907785, 21.906103, 20.016361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.574520, 21.716866, 20.130920>,  <24.374561, 21.603323, 20.199656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.574520, 21.716866, 20.130920>,  <24.907785, 21.906103, 20.016361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.574520, 21.716866, 20.130920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017044, -0.539589, -0.841756,
		0.552768, -0.696437, 0.457628,
		-0.833161, -0.473096, 0.286397,
		24.324572, 21.574938, 20.216839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.104918, 21.295595, 19.726686>,  <24.907785, 21.906103, 20.016361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.104918, 21.295595, 19.726686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.714439, 21.285934, 19.812902>,  <24.480152, 21.280138, 19.864632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.714439, 21.285934, 19.812902>,  <25.104918, 21.295595, 19.726686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.714439, 21.285934, 19.812902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158762, -0.597502, -0.785993,
		0.147770, -0.801503, 0.579445,
		-0.976196, -0.024153, 0.215541,
		24.421581, 21.278688, 19.877565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.885000, 20.594957, 19.702217>,  <25.104918, 21.295595, 19.726686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.885000, 20.594957, 19.702217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.569332, 20.830395, 19.632053>,  <24.379930, 20.971657, 19.589956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.569332, 20.830395, 19.632053>,  <24.885000, 20.594957, 19.702217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.569332, 20.830395, 19.632053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105104, -0.410814, -0.905641,
		-0.605113, -0.696270, 0.386066,
		-0.789172, 0.588592, -0.175408,
		24.332581, 21.006971, 19.579432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.411249, 20.158333, 19.380606>,  <24.885000, 20.594957, 19.702217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.411249, 20.158333, 19.380606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.274117, 20.523251, 19.291000>,  <24.191837, 20.742201, 19.237238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.274117, 20.523251, 19.291000>,  <24.411249, 20.158333, 19.380606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.274117, 20.523251, 19.291000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077428, -0.210210, -0.974585,
		-0.936200, -0.351465, 0.001429,
		-0.342833, 0.912296, -0.224012,
		24.171267, 20.796940, 19.223797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.203960, 19.739031, 19.958857>,  <24.411249, 20.158333, 19.380606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.203960, 19.739031, 19.958857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.173050, 19.340237, 19.961626>,  <24.154503, 19.100960, 19.963287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.173050, 19.340237, 19.961626>,  <24.203960, 19.739031, 19.958857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.173050, 19.340237, 19.961626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101218, 0.014753, 0.994755,
		-0.991858, 0.076171, -0.102053,
		-0.077277, -0.996986, 0.006923,
		24.149866, 19.041142, 19.963703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.668018, 19.497263, 20.433247>,  <24.203960, 19.739031, 19.958857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.668018, 19.497263, 20.433247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.896561, 19.171425, 20.393276>,  <24.033686, 18.975922, 20.369295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.896561, 19.171425, 20.393276>,  <23.668018, 19.497263, 20.433247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.896561, 19.171425, 20.393276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075793, -0.173608, 0.981894,
		-0.817196, -0.553437, -0.160932,
		0.571355, -0.814597, -0.099925,
		24.067966, 18.927046, 20.363298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.252193, 18.940775, 20.797674>,  <23.668018, 19.497263, 20.433247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.252193, 18.940775, 20.797674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.640598, 18.847343, 20.777357>,  <23.873640, 18.791285, 20.765167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.640598, 18.847343, 20.777357>,  <23.252193, 18.940775, 20.797674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.640598, 18.847343, 20.777357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034810, -0.072053, 0.996793,
		-0.236492, -0.969664, -0.061833,
		0.971009, -0.233582, -0.050794,
		23.931902, 18.777269, 20.762119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.403355, 18.237604, 21.094097>,  <23.252193, 18.940775, 20.797674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.403355, 18.237604, 21.094097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.760231, 18.417110, 21.114531>,  <23.974356, 18.524815, 21.126791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.760231, 18.417110, 21.114531>,  <23.403355, 18.237604, 21.094097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.760231, 18.417110, 21.114531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060450, 0.006565, 0.998150,
		0.447598, -0.893626, 0.032985,
		0.892189, 0.448764, 0.051081,
		24.027887, 18.551739, 21.129854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.678099, 17.881182, 21.589931>,  <23.403355, 18.237604, 21.094097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.678099, 17.881182, 21.589931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.911179, 18.205482, 21.567530>,  <24.051027, 18.400063, 21.554089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.911179, 18.205482, 21.567530>,  <23.678099, 17.881182, 21.589931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.911179, 18.205482, 21.567530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017275, 0.081253, 0.996544,
		0.812502, -0.579720, 0.061352,
		0.582702, 0.810754, -0.056004,
		24.085989, 18.448709, 21.550728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.088552, 17.736223, 22.142046>,  <23.678099, 17.881182, 21.589931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.088552, 17.736223, 22.142046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.082886, 18.130814, 22.076733>,  <24.079485, 18.367569, 22.037544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.082886, 18.130814, 22.076733>,  <24.088552, 17.736223, 22.142046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.082886, 18.130814, 22.076733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319848, 0.150249, 0.935480,
		0.947363, 0.065480, 0.313394,
		-0.014168, 0.986477, -0.163284,
		24.078636, 18.426756, 22.027748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.558779, 17.974476, 22.637436>,  <24.088552, 17.736223, 22.142046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.558779, 17.974476, 22.637436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.331066, 18.288162, 22.538708>,  <24.194439, 18.476376, 22.479471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.331066, 18.288162, 22.538708>,  <24.558779, 17.974476, 22.637436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.331066, 18.288162, 22.538708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149049, 0.196794, 0.969049,
		0.808519, 0.588451, 0.004855,
		-0.569282, 0.784218, -0.246819,
		24.160282, 18.523428, 22.464663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.737963, 18.405556, 23.032890>,  <24.558779, 17.974476, 22.637436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.737963, 18.405556, 23.032890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.407516, 18.602531, 22.923319>,  <24.209248, 18.720716, 22.857576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.407516, 18.602531, 22.923319>,  <24.737963, 18.405556, 23.032890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.407516, 18.602531, 22.923319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220546, 0.164782, 0.961357,
		0.518547, 0.854606, -0.027523,
		-0.826117, 0.492438, -0.273927,
		24.159681, 18.750263, 22.841141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.836451, 19.102419, 23.325939>,  <24.737963, 18.405556, 23.032890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.836451, 19.102419, 23.325939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.450089, 19.021587, 23.261204>,  <24.218271, 18.973089, 23.222363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.450089, 19.021587, 23.261204>,  <24.836451, 19.102419, 23.325939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.450089, 19.021587, 23.261204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206402, 0.223715, 0.952549,
		-0.156284, 0.953476, -0.257797,
		-0.965906, -0.202078, -0.161837,
		24.160316, 18.960964, 23.212652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<18.536999, 16.976685, 8.402334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.234554, 16.830132, 8.619242>,  <18.053087, 16.742199, 8.749386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.234554, 16.830132, 8.619242>,  <18.536999, 16.976685, 8.402334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.234554, 16.830132, 8.619242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426068, 0.353353, 0.832831,
		-0.496748, 0.860758, -0.111070,
		-0.756113, -0.366384, 0.542269,
		18.007721, 16.720217, 8.781922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.557877, 17.373606, 8.985742>,  <18.536999, 16.976685, 8.402334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.557877, 17.373606, 8.985742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.314713, 17.077587, 9.100825>,  <18.168814, 16.899977, 9.169876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.314713, 17.077587, 9.100825>,  <18.557877, 17.373606, 8.985742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.314713, 17.077587, 9.100825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251606, 0.164134, 0.953810,
		-0.753085, 0.652222, 0.086421,
		-0.607912, -0.740045, 0.287710,
		18.132339, 16.855574, 9.187139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.168404, 17.652643, 9.585562>,  <18.557877, 17.373606, 8.985742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.168404, 17.652643, 9.585562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.163033, 17.253899, 9.616772>,  <18.159809, 17.014652, 9.635497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.163033, 17.253899, 9.616772>,  <18.168404, 17.652643, 9.585562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.163033, 17.253899, 9.616772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414373, 0.065468, 0.907750,
		-0.910008, 0.044521, 0.412193,
		-0.013428, -0.996861, 0.078024,
		18.159004, 16.954840, 9.640179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.945599, 17.549799, 10.275681>,  <18.168404, 17.652643, 9.585562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.945599, 17.549799, 10.275681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.127953, 17.210114, 10.169096>,  <18.237366, 17.006302, 10.105145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.127953, 17.210114, 10.169096>,  <17.945599, 17.549799, 10.275681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.127953, 17.210114, 10.169096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565385, 0.045097, 0.823593,
		-0.687391, -0.526118, 0.500693,
		0.455886, -0.849215, -0.266460,
		18.264719, 16.955349, 10.089158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.026270, 17.136316, 10.912779>,  <17.945599, 17.549799, 10.275681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.026270, 17.136316, 10.912779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.297680, 16.982742, 10.662277>,  <18.460526, 16.890598, 10.511976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.297680, 16.982742, 10.662277>,  <18.026270, 17.136316, 10.912779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.297680, 16.982742, 10.662277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643067, -0.101610, 0.759039,
		-0.355057, -0.917751, 0.177953,
		0.678527, -0.383938, -0.626253,
		18.501238, 16.867561, 10.474401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.284286, 16.486515, 11.272880>,  <18.026270, 17.136316, 10.912779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.284286, 16.486515, 11.272880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.571827, 16.572197, 11.008343>,  <18.744350, 16.623606, 10.849621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.571827, 16.572197, 11.008343>,  <18.284286, 16.486515, 11.272880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.571827, 16.572197, 11.008343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681399, -0.028718, 0.731349,
		0.137665, -0.976367, -0.166602,
		0.718849, 0.214204, -0.661341,
		18.787481, 16.636457, 10.809940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.833387, 16.075386, 11.456274>,  <18.284286, 16.486515, 11.272880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.833387, 16.075386, 11.456274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.011299, 16.356422, 11.234089>,  <19.118046, 16.525043, 11.100778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.011299, 16.356422, 11.234089>,  <18.833387, 16.075386, 11.456274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.011299, 16.356422, 11.234089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838647, -0.109003, 0.533656,
		0.314394, -0.703197, -0.637707,
		0.444778, 0.702590, -0.555464,
		19.144732, 16.567200, 11.067450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.487673, 15.704317, 11.154937>,  <18.833387, 16.075386, 11.456274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.487673, 15.704317, 11.154937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.511932, 16.102421, 11.185350>,  <19.526487, 16.341284, 11.203598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.511932, 16.102421, 11.185350>,  <19.487673, 15.704317, 11.154937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.511932, 16.102421, 11.185350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758700, -0.095463, 0.644408,
		0.648611, 0.018604, -0.760893,
		0.060649, 0.995259, 0.076033,
		19.530127, 16.400999, 11.208160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.266617, 15.889678, 10.903765>,  <19.487673, 15.704317, 11.154937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.266617, 15.889678, 10.903765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.116859, 16.178249, 11.136786>,  <20.027004, 16.351393, 11.276600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.116859, 16.178249, 11.136786>,  <20.266617, 15.889678, 10.903765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.116859, 16.178249, 11.136786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911428, 0.170672, 0.374393,
		0.170672, 0.671127, -0.721429,
		-0.374393, 0.721429, 0.582555,
		20.004541, 16.394678, 11.311553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.724802, 16.380316, 10.887173>,  <20.266617, 15.889678, 10.903765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.724802, 16.380316, 10.887173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.526459, 16.510338, 11.209281>,  <20.407452, 16.588350, 11.402546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.526459, 16.510338, 11.209281>,  <20.724802, 16.380316, 10.887173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.526459, 16.510338, 11.209281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864489, 0.272707, 0.422244,
		-0.082352, 0.905523, -0.416230,
		-0.495860, 0.325053, 0.805272,
		20.377701, 16.607853, 11.450863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.249062, 16.821486, 11.119681>,  <20.724802, 16.380316, 10.887173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.249062, 16.821486, 11.119681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.985653, 16.825336, 11.420682>,  <20.827608, 16.827648, 11.601282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.985653, 16.825336, 11.420682>,  <21.249062, 16.821486, 11.119681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.985653, 16.825336, 11.420682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734069, 0.228529, 0.639466,
		-0.165812, 0.973489, -0.157559,
		-0.658520, 0.009628, 0.752501,
		20.788097, 16.828224, 11.646433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.313942, 17.480120, 11.561672>,  <21.249062, 16.821486, 11.119681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.313942, 17.480120, 11.561672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.148018, 17.199902, 11.793938>,  <21.048464, 17.031771, 11.933297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.148018, 17.199902, 11.793938>,  <21.313942, 17.480120, 11.561672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.148018, 17.199902, 11.793938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619247, 0.250226, 0.744258,
		-0.666682, 0.668301, 0.330013,
		-0.414811, -0.700543, 0.580664,
		21.023575, 16.989738, 11.968137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.293383, 18.235098, 11.580541>,  <21.313942, 17.480120, 11.561672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.293383, 18.235098, 11.580541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.614437, 18.428070, 11.440236>,  <21.807070, 18.543854, 11.356053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.614437, 18.428070, 11.440236>,  <21.293383, 18.235098, 11.580541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.614437, 18.428070, 11.440236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351393, -0.092732, -0.931624,
		-0.481972, 0.871011, 0.095093,
		0.802637, 0.482432, -0.350762,
		21.855228, 18.572800, 11.335008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.962223, 18.899420, 11.188904>,  <21.293383, 18.235098, 11.580541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.962223, 18.899420, 11.188904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.332062, 18.875206, 11.038463>,  <21.553965, 18.860678, 10.948198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.332062, 18.875206, 11.038463>,  <20.962223, 18.899420, 11.188904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.332062, 18.875206, 11.038463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379176, -0.241209, -0.893333,
		-0.036642, 0.968584, -0.245974,
		0.924599, -0.060534, -0.376102,
		21.609442, 18.857046, 10.925632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.057125, 19.260414, 10.591832>,  <20.962223, 18.899420, 11.188904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.057125, 19.260414, 10.591832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.357716, 19.002293, 10.536899>,  <21.538071, 18.847420, 10.503939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.357716, 19.002293, 10.536899>,  <21.057125, 19.260414, 10.591832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.357716, 19.002293, 10.536899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292499, -0.139283, -0.946068,
		0.591375, 0.751119, -0.293419,
		0.751478, -0.645306, -0.137333,
		21.583158, 18.808701, 10.495699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.481524, 19.467787, 10.020125>,  <21.057125, 19.260414, 10.591832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.481524, 19.467787, 10.020125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.547237, 19.075897, 10.066001>,  <21.586666, 18.840763, 10.093527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.547237, 19.075897, 10.066001>,  <21.481524, 19.467787, 10.020125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.547237, 19.075897, 10.066001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141221, -0.138433, -0.980251,
		0.976252, 0.144845, -0.161100,
		0.164286, -0.979723, 0.114690,
		21.596523, 18.781981, 10.100408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.070707, 19.317450, 9.600906>,  <21.481524, 19.467787, 10.020125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.070707, 19.317450, 9.600906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.860886, 18.987282, 9.684360>,  <21.734993, 18.789181, 9.734431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.860886, 18.987282, 9.684360>,  <22.070707, 19.317450, 9.600906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.860886, 18.987282, 9.684360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145922, -0.154263, -0.977195,
		0.838780, -0.543034, -0.039527,
		-0.524552, -0.825419, 0.208633,
		21.703520, 18.739656, 9.746949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.324320, 18.912964, 9.174164>,  <22.070707, 19.317450, 9.600906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.324320, 18.912964, 9.174164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.976551, 18.725159, 9.235693>,  <21.767889, 18.612476, 9.272611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.976551, 18.725159, 9.235693>,  <22.324320, 18.912964, 9.174164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.976551, 18.725159, 9.235693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230455, 0.109983, -0.966848,
		0.437030, -0.876049, -0.203824,
		-0.869423, -0.469513, 0.153824,
		21.715725, 18.584305, 9.281840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.269316, 18.487299, 8.613629>,  <22.324320, 18.912964, 9.174164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.269316, 18.487299, 8.613629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.893017, 18.460506, 8.746602>,  <21.667238, 18.444431, 8.826385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.893017, 18.460506, 8.746602>,  <22.269316, 18.487299, 8.613629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.893017, 18.460506, 8.746602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336754, 0.069112, -0.939053,
		0.039923, -0.995358, -0.087573,
		-0.940746, -0.066981, 0.332432,
		21.610792, 18.440413, 8.846332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.991711, 18.047945, 8.159543>,  <22.269316, 18.487299, 8.613629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.991711, 18.047945, 8.159543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.661316, 18.201900, 8.324278>,  <21.463079, 18.294273, 8.423119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.661316, 18.201900, 8.324278>,  <21.991711, 18.047945, 8.159543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.661316, 18.201900, 8.324278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402273, 0.109316, -0.908970,
		-0.394874, -0.916466, 0.064538,
		-0.825985, 0.384891, 0.411836,
		21.413521, 18.317368, 8.447828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.414425, 17.658396, 7.863490>,  <21.991711, 18.047945, 8.159543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.414425, 17.658396, 7.863490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.309433, 18.017040, 8.006148>,  <21.246437, 18.232227, 8.091743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.309433, 18.017040, 8.006148>,  <21.414425, 17.658396, 7.863490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.309433, 18.017040, 8.006148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368236, 0.248561, -0.895890,
		-0.891912, -0.366483, 0.264922,
		-0.262480, 0.896609, 0.356647,
		21.230690, 18.286022, 8.113142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.731451, 17.753624, 7.567136>,  <21.414425, 17.658396, 7.863490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.731451, 17.753624, 7.567136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.878937, 18.112049, 7.666024>,  <20.967428, 18.327105, 7.725357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.878937, 18.112049, 7.666024>,  <20.731451, 17.753624, 7.567136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.878937, 18.112049, 7.666024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184621, 0.331256, -0.925303,
		-0.911024, 0.295530, 0.287571,
		0.368714, 0.896065, 0.247221,
		20.989552, 18.380869, 7.740191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.324175, 18.166363, 7.224324>,  <20.731451, 17.753624, 7.567136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.324175, 18.166363, 7.224324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.638641, 18.402916, 7.296107>,  <20.827322, 18.544847, 7.339178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.638641, 18.402916, 7.296107>,  <20.324175, 18.166363, 7.224324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.638641, 18.402916, 7.296107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094683, 0.402207, -0.910639,
		-0.610717, 0.698924, 0.372196,
		0.786168, 0.591384, 0.179459,
		20.874493, 18.580332, 7.349945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.150213, 18.887955, 7.092084>,  <20.324175, 18.166363, 7.224324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.150213, 18.887955, 7.092084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.549957, 18.882481, 7.078846>,  <20.789803, 18.879196, 7.070903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.549957, 18.882481, 7.078846>,  <20.150213, 18.887955, 7.092084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.549957, 18.882481, 7.078846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021393, 0.512996, -0.858124,
		0.028721, 0.858282, 0.512374,
		0.999359, -0.013685, -0.033094,
		20.849766, 18.878376, 7.068918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.317316, 19.450073, 6.870553>,  <20.150213, 18.887955, 7.092084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.317316, 19.450073, 6.870553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.663738, 19.264835, 6.795192>,  <20.871592, 19.153692, 6.749975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.663738, 19.264835, 6.795192>,  <20.317316, 19.450073, 6.870553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.663738, 19.264835, 6.795192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046041, 0.301366, -0.952396,
		0.497826, 0.833501, 0.239678,
		0.866054, -0.463092, -0.188403,
		20.923555, 19.125908, 6.738671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.637495, 19.820723, 6.421355>,  <20.317316, 19.450073, 6.870553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.637495, 19.820723, 6.421355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.821793, 19.469189, 6.371778>,  <20.932371, 19.258268, 6.342033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.821793, 19.469189, 6.371778>,  <20.637495, 19.820723, 6.421355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.821793, 19.469189, 6.371778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036948, 0.158518, -0.986665,
		0.886764, 0.450020, 0.105507,
		0.460744, -0.878837, -0.123941,
		20.960016, 19.205538, 6.334596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.381605, 20.432905, 6.811835>,  <20.637495, 19.820723, 6.421355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.381605, 20.432905, 6.811835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.325138, 20.772243, 6.607725>,  <20.291258, 20.975847, 6.485260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.325138, 20.772243, 6.607725>,  <20.381605, 20.432905, 6.811835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.325138, 20.772243, 6.607725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216046, 0.529411, 0.820395,
		0.966124, 0.005568, -0.258017,
		-0.141165, 0.848347, -0.510274,
		20.282789, 21.026747, 6.454643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.019239, 20.990646, 6.899956>,  <20.381605, 20.432905, 6.811835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.019239, 20.990646, 6.899956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.666199, 21.163887, 6.826814>,  <20.454374, 21.267832, 6.782928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.666199, 21.163887, 6.826814>,  <21.019239, 20.990646, 6.899956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.666199, 21.163887, 6.826814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091930, 0.540446, 0.836341,
		0.461042, 0.721348, -0.516814,
		-0.882603, 0.433100, -0.182855,
		20.401417, 21.293818, 6.771957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.144846, 21.674589, 6.994454>,  <21.019239, 20.990646, 6.899956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.144846, 21.674589, 6.994454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.774952, 21.550995, 7.083352>,  <20.553015, 21.476837, 7.136691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.774952, 21.550995, 7.083352>,  <21.144846, 21.674589, 6.994454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.774952, 21.550995, 7.083352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074542, 0.425582, 0.901845,
		-0.373242, 0.850534, -0.370518,
		-0.924735, -0.308987, 0.222245,
		20.497532, 21.458300, 7.150026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.928133, 22.261019, 7.324979>,  <21.144846, 21.674589, 6.994454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.928133, 22.261019, 7.324979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.665318, 21.977764, 7.428392>,  <20.507627, 21.807812, 7.490440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.665318, 21.977764, 7.428392>,  <20.928133, 22.261019, 7.324979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.665318, 21.977764, 7.428392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024742, 0.363019, 0.931453,
		-0.753449, 0.605606, -0.256039,
		-0.657041, -0.708138, 0.258532,
		20.468204, 21.765324, 7.505952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.491451, 22.555994, 7.722832>,  <20.928133, 22.261019, 7.324979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.491451, 22.555994, 7.722832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.448509, 22.174156, 7.833988>,  <20.422745, 21.945053, 7.900682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.448509, 22.174156, 7.833988>,  <20.491451, 22.555994, 7.722832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.448509, 22.174156, 7.833988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160333, 0.292471, 0.942737,
		-0.981208, 0.056652, -0.184451,
		-0.107354, -0.954595, 0.277891,
		20.416304, 21.887777, 7.917356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.891800, 22.541624, 8.166461>,  <20.491451, 22.555994, 7.722832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.891800, 22.541624, 8.166461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.102226, 22.210644, 8.245028>,  <20.228481, 22.012056, 8.292170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.102226, 22.210644, 8.245028>,  <19.891800, 22.541624, 8.166461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.102226, 22.210644, 8.245028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129592, 0.150268, 0.980115,
		-0.840513, -0.541058, -0.028181,
		0.526064, -0.827452, 0.196420,
		20.260046, 21.962408, 8.303954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.598637, 22.298935, 8.730262>,  <19.891800, 22.541624, 8.166461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.598637, 22.298935, 8.730262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.959644, 22.127483, 8.746949>,  <20.176249, 22.024612, 8.756962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.959644, 22.127483, 8.746949>,  <19.598637, 22.298935, 8.730262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.959644, 22.127483, 8.746949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043524, 0.187159, 0.981365,
		-0.428450, -0.883883, 0.187569,
		0.902517, -0.428629, 0.041718,
		20.230400, 21.998894, 8.759464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.635860, 21.773302, 9.228218>,  <19.598637, 22.298935, 8.730262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.635860, 21.773302, 9.228218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.031055, 21.825329, 9.194848>,  <20.268173, 21.856544, 9.174826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.031055, 21.825329, 9.194848>,  <19.635860, 21.773302, 9.228218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.031055, 21.825329, 9.194848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076422, 0.057945, 0.995390,
		0.134302, -0.989810, 0.047309,
		0.987989, 0.130067, -0.083426,
		20.327452, 21.864347, 9.169821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.079527, 21.154482, 9.554946>,  <19.635860, 21.773302, 9.228218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.079527, 21.154482, 9.554946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.289520, 21.493938, 9.529026>,  <20.415516, 21.697613, 9.513474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.289520, 21.493938, 9.529026>,  <20.079527, 21.154482, 9.554946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.289520, 21.493938, 9.529026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086432, 0.022584, 0.996002,
		0.846712, -0.528487, -0.061493,
		0.524985, 0.848641, -0.064800,
		20.447016, 21.748531, 9.509586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.620771, 21.010933, 9.831079>,  <20.079527, 21.154482, 9.554946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.620771, 21.010933, 9.831079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.614925, 21.410240, 9.853887>,  <20.611418, 21.649824, 9.867572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.614925, 21.410240, 9.853887>,  <20.620771, 21.010933, 9.831079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.614925, 21.410240, 9.853887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190624, -0.053199, 0.980221,
		0.981555, 0.025195, -0.189516,
		-0.014614, 0.998266, 0.057020,
		20.610540, 21.709721, 9.870993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.128452, 21.127930, 10.332361>,  <20.620771, 21.010933, 9.831079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.128452, 21.127930, 10.332361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.955540, 21.488594, 10.327694>,  <20.851791, 21.704992, 10.324893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.955540, 21.488594, 10.327694>,  <21.128452, 21.127930, 10.332361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.955540, 21.488594, 10.327694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187531, 0.102550, 0.976891,
		0.882023, 0.420105, -0.213420,
		-0.432283, 0.901663, -0.011669,
		20.825855, 21.759092, 10.324193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.539875, 21.582233, 10.650640>,  <21.128452, 21.127930, 10.332361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.539875, 21.582233, 10.650640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.169487, 21.729176, 10.685579>,  <20.947254, 21.817341, 10.706543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.169487, 21.729176, 10.685579>,  <21.539875, 21.582233, 10.650640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.169487, 21.729176, 10.685579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141715, 0.123684, 0.982150,
		0.349995, 0.921820, -0.166587,
		-0.925970, 0.367356, 0.087347,
		20.891697, 21.839382, 10.711783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.637051, 22.074894, 11.077477>,  <21.539875, 21.582233, 10.650640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.637051, 22.074894, 11.077477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.240173, 22.071918, 11.127268>,  <21.002047, 22.070133, 11.157143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.240173, 22.071918, 11.127268>,  <21.637051, 22.074894, 11.077477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.240173, 22.071918, 11.127268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122047, 0.146931, 0.981588,
		-0.025592, 0.989119, -0.144876,
		-0.992194, -0.007439, 0.124479,
		20.942514, 22.069687, 11.164612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.378057, 22.696283, 11.368496>,  <21.637051, 22.074894, 11.077477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.378057, 22.696283, 11.368496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.128811, 22.400768, 11.471192>,  <20.979263, 22.223459, 11.532810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.128811, 22.400768, 11.471192>,  <21.378057, 22.696283, 11.368496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.128811, 22.400768, 11.471192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090295, 0.258114, 0.961886,
		-0.776899, 0.622549, -0.094126,
		-0.623116, -0.738789, 0.256742,
		20.941875, 22.179131, 11.548215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.172979, 22.907219, 12.113152>,  <21.378057, 22.696283, 11.368496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.172979, 22.907219, 12.113152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.995026, 22.552505, 12.063041>,  <20.888254, 22.339678, 12.032974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.995026, 22.552505, 12.063041>,  <21.172979, 22.907219, 12.113152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.995026, 22.552505, 12.063041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188612, -0.043973, 0.981067,
		-0.875501, 0.460091, -0.147695,
		-0.444885, -0.886782, -0.125277,
		20.861561, 22.286470, 12.025457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.490435, 22.897686, 12.429771>,  <21.172979, 22.907219, 12.113152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.490435, 22.897686, 12.429771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.623405, 22.521084, 12.407659>,  <20.703188, 22.295122, 12.394391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.623405, 22.521084, 12.407659>,  <20.490435, 22.897686, 12.429771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.623405, 22.521084, 12.407659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146871, -0.109580, 0.983067,
		-0.931623, -0.318678, -0.174708,
		0.332426, -0.941508, -0.055283,
		20.723133, 22.238632, 12.391074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.143269, 22.543110, 12.932266>,  <20.490435, 22.897686, 12.429771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.143269, 22.543110, 12.932266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.451168, 22.298534, 12.858914>,  <20.635908, 22.151789, 12.814903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.451168, 22.298534, 12.858914>,  <20.143269, 22.543110, 12.932266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.451168, 22.298534, 12.858914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025562, -0.257519, 0.965935,
		-0.637835, -0.748215, -0.182596,
		0.769749, -0.611439, -0.183381,
		20.682093, 22.115103, 12.803900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.008272, 21.838503, 13.259221>,  <20.143269, 22.543110, 12.932266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.008272, 21.838503, 13.259221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.403557, 21.886543, 13.221240>,  <20.640728, 21.915367, 13.198451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.403557, 21.886543, 13.221240>,  <20.008272, 21.838503, 13.259221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.403557, 21.886543, 13.221240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109446, -0.120481, 0.986664,
		0.107058, -0.985424, -0.132205,
		0.988211, 0.120100, -0.094953,
		20.700020, 21.922573, 13.192754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.293486, 21.240345, 13.756974>,  <20.008272, 21.838503, 13.259221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.293486, 21.240345, 13.756974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.605846, 21.479527, 13.684707>,  <20.793262, 21.623035, 13.641346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.605846, 21.479527, 13.684707>,  <20.293486, 21.240345, 13.756974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.605846, 21.479527, 13.684707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053477, 0.224171, 0.973082,
		0.622360, -0.769544, 0.143079,
		0.780903, 0.597955, -0.180668,
		20.840117, 21.658913, 13.630507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.878706, 21.081413, 14.315507>,  <20.293486, 21.240345, 13.756974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.878706, 21.081413, 14.315507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.958580, 21.441685, 14.161155>,  <21.006504, 21.657848, 14.068543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.958580, 21.441685, 14.161155>,  <20.878706, 21.081413, 14.315507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.958580, 21.441685, 14.161155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083818, 0.376667, 0.922549,
		0.976268, -0.216564, -0.000278,
		0.199687, 0.900678, -0.385880,
		21.018486, 21.711887, 14.045391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.388609, 21.403465, 14.803042>,  <20.878706, 21.081413, 14.315507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.388609, 21.403465, 14.803042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.225010, 21.702518, 14.593751>,  <21.126850, 21.881950, 14.468176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.225010, 21.702518, 14.593751>,  <21.388609, 21.403465, 14.803042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.225010, 21.702518, 14.593751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062448, 0.549104, 0.833418,
		0.910397, 0.373539, -0.177893,
		-0.408996, 0.747632, -0.523229,
		21.102310, 21.926807, 14.436782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.590137, 21.947489, 15.150434>,  <21.388609, 21.403465, 14.803042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.590137, 21.947489, 15.150434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.289188, 22.119518, 14.950847>,  <21.108620, 22.222736, 14.831094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.289188, 22.119518, 14.950847>,  <21.590137, 21.947489, 15.150434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.289188, 22.119518, 14.950847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144967, 0.630797, 0.762286,
		0.642588, 0.645858, -0.412248,
		-0.752373, 0.430074, -0.498971,
		21.063477, 22.248541, 14.801155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.645567, 22.694834, 15.274864>,  <21.590137, 21.947489, 15.150434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.645567, 22.694834, 15.274864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.264191, 22.620388, 15.179942>,  <21.035364, 22.575722, 15.122989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.264191, 22.620388, 15.179942>,  <21.645567, 22.694834, 15.274864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.264191, 22.620388, 15.179942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301562, 0.579365, 0.757230,
		-0.003444, 0.793535, -0.608514,
		-0.953440, -0.186113, -0.237305,
		20.978159, 22.564554, 15.108750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.252937, 23.292650, 15.103835>,  <21.645567, 22.694834, 15.274864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.252937, 23.292650, 15.103835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.969837, 23.033749, 15.217082>,  <20.799976, 22.878408, 15.285030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.969837, 23.033749, 15.217082>,  <21.252937, 23.292650, 15.103835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.969837, 23.033749, 15.217082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308316, 0.643564, 0.700548,
		-0.635635, 0.408523, -0.655040,
		-0.707749, -0.647252, 0.283117,
		20.757513, 22.839573, 15.302017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.691248, 23.689812, 15.380641>,  <21.252937, 23.292650, 15.103835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.691248, 23.689812, 15.380641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.584328, 23.330208, 15.519397>,  <20.520176, 23.114445, 15.602650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.584328, 23.330208, 15.519397>,  <20.691248, 23.689812, 15.380641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.584328, 23.330208, 15.519397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241209, 0.410951, 0.879169,
		-0.932935, 0.151330, -0.326697,
		-0.267301, -0.899010, 0.346889,
		20.504137, 23.060505, 15.623464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.977818, 23.782263, 15.791185>,  <20.691248, 23.689812, 15.380641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.977818, 23.782263, 15.791185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.196548, 23.464432, 15.896733>,  <20.327787, 23.273733, 15.960062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.196548, 23.464432, 15.896733>,  <19.977818, 23.782263, 15.791185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.196548, 23.464432, 15.896733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082809, 0.262291, 0.961429,
		-0.833141, -0.547585, 0.077629,
		0.546826, -0.794578, 0.263870,
		20.360596, 23.226059, 15.975894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.616180, 23.400803, 16.367872>,  <19.977818, 23.782263, 15.791185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.616180, 23.400803, 16.367872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.994087, 23.278278, 16.414503>,  <20.220831, 23.204763, 16.442482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.994087, 23.278278, 16.414503>,  <19.616180, 23.400803, 16.367872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.994087, 23.278278, 16.414503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075318, 0.143263, 0.986814,
		-0.318974, -0.941089, 0.112279,
		0.944766, -0.306312, 0.116579,
		20.277517, 23.186384, 16.449476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.597940, 22.914911, 16.832016>,  <19.616180, 23.400803, 16.367872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.597940, 22.914911, 16.832016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.974258, 23.049587, 16.847752>,  <20.200048, 23.130394, 16.857193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.974258, 23.049587, 16.847752>,  <19.597940, 22.914911, 16.832016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.974258, 23.049587, 16.847752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105324, 0.180033, 0.978006,
		0.322206, -0.924244, 0.204836,
		0.940792, 0.336693, 0.039338,
		20.256496, 23.150595, 16.859552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.591339, 22.151722, 17.024338>,  <19.597940, 22.914911, 16.832016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.591339, 22.151722, 17.024338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.298370, 21.895138, 17.115631>,  <19.122589, 21.741188, 17.170406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.298370, 21.895138, 17.115631>,  <19.591339, 22.151722, 17.024338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.298370, 21.895138, 17.115631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054156, -0.279266, -0.958685,
		0.678696, -0.714520, 0.169801,
		-0.732419, -0.641461, 0.228233,
		19.078644, 21.702700, 17.184101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.704931, 21.530239, 16.589003>,  <19.591339, 22.151722, 17.024338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.704931, 21.530239, 16.589003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.323204, 21.526783, 16.708473>,  <19.094168, 21.524710, 16.780155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.323204, 21.526783, 16.708473>,  <19.704931, 21.530239, 16.589003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.323204, 21.526783, 16.708473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283267, -0.291926, -0.913531,
		0.095085, -0.956402, 0.276141,
		-0.954316, -0.008642, 0.298675,
		19.036909, 21.524191, 16.798077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.420687, 21.019859, 16.228991>,  <19.704931, 21.530239, 16.589003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.420687, 21.019859, 16.228991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.108414, 21.245792, 16.335945>,  <18.921049, 21.381351, 16.400118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.108414, 21.245792, 16.335945>,  <19.420687, 21.019859, 16.228991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.108414, 21.245792, 16.335945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396834, -0.117537, -0.910334,
		-0.482759, -0.816792, 0.315904,
		-0.780684, 0.564833, 0.267389,
		18.874208, 21.415243, 16.416162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.816469, 20.490582, 16.360319>,  <19.420687, 21.019859, 16.228991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.816469, 20.490582, 16.360319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.652390, 20.844978, 16.273829>,  <18.553942, 21.057617, 16.221933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.652390, 20.844978, 16.273829>,  <18.816469, 20.490582, 16.360319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.652390, 20.844978, 16.273829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417637, -0.393261, -0.819100,
		-0.810749, -0.245691, 0.531339,
		-0.410201, 0.885992, -0.216226,
		18.529329, 21.110775, 16.208961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.126156, 20.338932, 16.197296>,  <18.816469, 20.490582, 16.360319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.126156, 20.338932, 16.197296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.196442, 20.696114, 16.031519>,  <18.238613, 20.910421, 15.932053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.196442, 20.696114, 16.031519>,  <18.126156, 20.338932, 16.197296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.196442, 20.696114, 16.031519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586106, -0.243355, -0.772825,
		-0.790951, 0.378703, 0.480604,
		0.175714, 0.892951, -0.414442,
		18.249155, 20.963999, 15.907187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
