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
	<24.082283, 35.360439, 34.912819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.272530, 35.129230, 35.178051>,  <24.386679, 34.990505, 35.337193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.272530, 35.129230, 35.178051>,  <24.082283, 35.360439, 34.912819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.272530, 35.129230, 35.178051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706264, -0.198436, -0.679569,
		0.524385, 0.791527, 0.313856,
		0.475617, -0.578021, 0.663084,
		24.415215, 34.955826, 35.376976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.657824, 35.432693, 34.625660>,  <24.082283, 35.360439, 34.912819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.657824, 35.432693, 34.625660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.706816, 35.113689, 34.861958>,  <24.736212, 34.922287, 35.003738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.706816, 35.113689, 34.861958>,  <24.657824, 35.432693, 34.625660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.706816, 35.113689, 34.861958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672089, -0.371324, -0.640636,
		0.730270, 0.475501, 0.490515,
		0.122482, -0.797507, 0.590746,
		24.743561, 34.874435, 35.039181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.314753, 35.345047, 34.984035>,  <24.657824, 35.432693, 34.625660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.314753, 35.345047, 34.984035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.148914, 34.993427, 34.889896>,  <25.049412, 34.782455, 34.833412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.148914, 34.993427, 34.889896>,  <25.314753, 35.345047, 34.984035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.148914, 34.993427, 34.889896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805703, -0.234362, -0.543983,
		0.423029, -0.415155, 0.805415,
		-0.414596, -0.879045, -0.235349,
		25.024536, 34.729713, 34.819290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.176815, 35.767349, 35.612247>,  <25.314753, 35.345047, 34.984035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.176815, 35.767349, 35.612247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213053, 36.000000, 35.935604>,  <25.234795, 36.139591, 36.129620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213053, 36.000000, 35.935604>,  <25.176815, 35.767349, 35.612247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.213053, 36.000000, 35.935604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568586, 0.636219, -0.521473,
		-0.817620, 0.506884, -0.273069,
		0.090595, 0.581630, 0.808393,
		25.240231, 36.174488, 36.178123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.892101, 36.388443, 35.437111>,  <25.176815, 35.767349, 35.612247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.892101, 36.388443, 35.437111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.188482, 36.438953, 35.700943>,  <25.366312, 36.469261, 35.859241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.188482, 36.438953, 35.700943>,  <24.892101, 36.388443, 35.437111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.188482, 36.438953, 35.700943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477332, 0.591832, -0.649529,
		-0.472379, 0.796109, 0.378245,
		0.740953, 0.126276, 0.659578,
		25.410769, 36.476837, 35.898815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.953272, 37.061005, 35.406853>,  <24.892101, 36.388443, 35.437111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.953272, 37.061005, 35.406853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.304943, 36.896809, 35.503632>,  <25.515945, 36.798290, 35.561699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.304943, 36.896809, 35.503632>,  <24.953272, 37.061005, 35.406853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.304943, 36.896809, 35.503632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474060, 0.702305, -0.531069,
		0.048075, 0.581605, 0.812050,
		0.879179, -0.410491, 0.241952,
		25.568697, 36.773663, 35.576218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.444786, 37.646191, 35.684040>,  <24.953272, 37.061005, 35.406853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.444786, 37.646191, 35.684040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.670076, 37.332611, 35.579582>,  <25.805250, 37.144463, 35.516907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.670076, 37.332611, 35.579582>,  <25.444786, 37.646191, 35.684040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.670076, 37.332611, 35.579582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507185, 0.577487, -0.639743,
		0.652334, 0.227873, 0.722865,
		0.563226, -0.783953, -0.261141,
		25.839045, 37.097424, 35.501240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.088411, 37.923244, 35.524982>,  <25.444786, 37.646191, 35.684040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.088411, 37.923244, 35.524982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093023, 37.567410, 35.342335>,  <26.095791, 37.353909, 35.232746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093023, 37.567410, 35.342335>,  <26.088411, 37.923244, 35.524982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.093023, 37.567410, 35.342335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504855, 0.399354, -0.765270,
		0.863127, -0.221705, 0.453716,
		0.011529, -0.889586, -0.456622,
		26.096481, 37.300533, 35.205349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.805799, 37.728882, 35.369568>,  <26.088411, 37.923244, 35.524982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.805799, 37.728882, 35.369568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538378, 37.570976, 35.117474>,  <26.377924, 37.476231, 34.966217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.538378, 37.570976, 35.117474>,  <26.805799, 37.728882, 35.369568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.538378, 37.570976, 35.117474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456119, 0.451678, -0.766774,
		0.587360, -0.800091, -0.121910,
		-0.668553, -0.394767, -0.630235,
		26.337812, 37.452545, 34.928402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246847, 37.618324, 34.753681>,  <26.805799, 37.728882, 35.369568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246847, 37.618324, 34.753681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892904, 37.517780, 34.596790>,  <26.680538, 37.457455, 34.502655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892904, 37.517780, 34.596790>,  <27.246847, 37.618324, 34.753681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892904, 37.517780, 34.596790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346615, 0.207308, -0.914812,
		0.311262, -0.945431, -0.096312,
		-0.884858, -0.251363, -0.392227,
		26.627447, 37.442371, 34.479122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.309130, 37.162624, 34.230389>,  <27.246847, 37.618324, 34.753681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.309130, 37.162624, 34.230389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939381, 37.278748, 34.131393>,  <26.717531, 37.348423, 34.071995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939381, 37.278748, 34.131393>,  <27.309130, 37.162624, 34.230389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939381, 37.278748, 34.131393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324429, 0.256940, -0.910344,
		-0.200692, -0.921792, -0.331695,
		-0.924374, 0.290311, -0.247491,
		26.662067, 37.365841, 34.057148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.213104, 36.919037, 33.610886>,  <27.309130, 37.162624, 34.230389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.213104, 36.919037, 33.610886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927696, 37.199276, 33.608013>,  <26.756451, 37.367420, 33.606289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.927696, 37.199276, 33.608013>,  <27.213104, 36.919037, 33.610886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.927696, 37.199276, 33.608013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170971, 0.164169, -0.971503,
		-0.679453, -0.694415, -0.236920,
		-0.713521, 0.700597, -0.007180,
		26.713640, 37.409454, 33.605858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901159, 36.955357, 32.852119>,  <27.213104, 36.919037, 33.610886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901159, 36.955357, 32.852119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775454, 37.303524, 33.003704>,  <26.700029, 37.512424, 33.094654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775454, 37.303524, 33.003704>,  <26.901159, 36.955357, 32.852119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775454, 37.303524, 33.003704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248115, 0.460618, -0.852214,
		-0.916339, -0.173794, -0.360720,
		-0.314264, 0.870417, 0.378962,
		26.681175, 37.564648, 33.117393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353554, 37.142200, 32.422104>,  <26.901159, 36.955357, 32.852119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353554, 37.142200, 32.422104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.525606, 37.459633, 32.594254>,  <26.628838, 37.650093, 32.697544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.525606, 37.459633, 32.594254>,  <26.353554, 37.142200, 32.422104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.525606, 37.459633, 32.594254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196891, 0.382790, -0.902610,
		-0.881035, 0.472977, 0.008402,
		0.430131, 0.793577, 0.430376,
		26.654646, 37.697704, 32.723366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.337492, 37.561291, 31.953966>,  <26.353554, 37.142200, 32.422104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.337492, 37.561291, 31.953966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591610, 37.768810, 32.182789>,  <26.744081, 37.893322, 32.320084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591610, 37.768810, 32.182789>,  <26.337492, 37.561291, 31.953966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591610, 37.768810, 32.182789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293122, 0.523328, -0.800130,
		-0.714479, 0.676000, 0.180396,
		0.635294, 0.518798, 0.572057,
		26.782198, 37.924450, 32.354404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.222776, 38.215309, 31.774353>,  <26.337492, 37.561291, 31.953966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.222776, 38.215309, 31.774353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582193, 38.227455, 31.949490>,  <26.797844, 38.234745, 32.054569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582193, 38.227455, 31.949490>,  <26.222776, 38.215309, 31.774353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.582193, 38.227455, 31.949490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320280, 0.636707, -0.701445,
		-0.300078, 0.770508, 0.562380,
		0.898540, 0.030369, 0.437839,
		26.851755, 38.236565, 32.080841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280096, 38.922115, 31.784691>,  <26.222776, 38.215309, 31.774353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.280096, 38.922115, 31.784691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.641935, 38.755413, 31.820515>,  <26.859039, 38.655392, 31.842009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.641935, 38.755413, 31.820515>,  <26.280096, 38.922115, 31.784691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.641935, 38.755413, 31.820515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374885, 0.677797, -0.632497,
		0.202889, 0.605731, 0.769367,
		0.904598, -0.416751, 0.089562,
		26.913315, 38.630386, 31.847383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.705494, 39.480087, 31.708246>,  <26.280096, 38.922115, 31.784691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.705494, 39.480087, 31.708246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.924580, 39.155365, 31.627268>,  <27.056030, 38.960533, 31.578682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.924580, 39.155365, 31.627268>,  <26.705494, 39.480087, 31.708246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.924580, 39.155365, 31.627268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331196, 0.432571, -0.838565,
		0.768322, 0.392245, 0.505792,
		0.547714, -0.811804, -0.202444,
		27.088894, 38.911823, 31.566534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.394024, 39.782597, 31.563833>,  <26.705494, 39.480087, 31.708246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.394024, 39.782597, 31.563833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389437, 39.412617, 31.411869>,  <27.386684, 39.190628, 31.320690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389437, 39.412617, 31.411869>,  <27.394024, 39.782597, 31.563833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389437, 39.412617, 31.411869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342810, 0.353276, -0.870446,
		0.939335, -0.140218, 0.313032,
		-0.011466, -0.924951, -0.379913,
		27.385998, 39.135132, 31.297895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836246, 39.750996, 31.105114>,  <27.394024, 39.782597, 31.563833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836246, 39.750996, 31.105114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678522, 39.401905, 30.989964>,  <27.583887, 39.192451, 30.920874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678522, 39.401905, 30.989964>,  <27.836246, 39.750996, 31.105114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678522, 39.401905, 30.989964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241646, 0.203770, -0.948728,
		0.886638, -0.443658, 0.130541,
		-0.394310, -0.872723, -0.287878,
		27.560228, 39.140087, 30.903601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277077, 39.392990, 30.675497>,  <27.836246, 39.750996, 31.105114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277077, 39.392990, 30.675497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902697, 39.274590, 30.599207>,  <27.678068, 39.203548, 30.553432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902697, 39.274590, 30.599207>,  <28.277077, 39.392990, 30.675497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902697, 39.274590, 30.599207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145154, 0.169161, -0.974841,
		0.320819, -0.940089, -0.115361,
		-0.935951, -0.296003, -0.190728,
		27.621910, 39.185787, 30.541988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339792, 39.084614, 29.977335>,  <28.277077, 39.392990, 30.675497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339792, 39.084614, 29.977335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945433, 39.128540, 30.027838>,  <27.708817, 39.154896, 30.058140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945433, 39.128540, 30.027838>,  <28.339792, 39.084614, 29.977335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945433, 39.128540, 30.027838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126946, 0.000728, -0.991909,
		-0.109021, -0.993952, 0.013224,
		-0.985900, 0.109818, 0.126258,
		27.649662, 39.161484, 30.065716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051546, 38.628983, 29.435061>,  <28.339792, 39.084614, 29.977335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.051546, 38.628983, 29.435061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764175, 38.889515, 29.532738>,  <27.591753, 39.045834, 29.591345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764175, 38.889515, 29.532738>,  <28.051546, 38.628983, 29.435061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764175, 38.889515, 29.532738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160738, 0.186106, -0.969292,
		-0.676778, -0.735616, -0.029009,
		-0.718426, 0.651333, 0.244194,
		27.548647, 39.084915, 29.605995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.541212, 38.320267, 28.969286>,  <28.051546, 38.628983, 29.435061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.541212, 38.320267, 28.969286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432508, 38.698105, 29.042915>,  <27.367287, 38.924809, 29.087093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432508, 38.698105, 29.042915>,  <27.541212, 38.320267, 28.969286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432508, 38.698105, 29.042915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084535, 0.167102, -0.982309,
		-0.958645, -0.282512, 0.034440,
		-0.271759, 0.944597, 0.184074,
		27.350981, 38.981483, 29.098137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200485, 38.399048, 28.407377>,  <27.541212, 38.320267, 28.969286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.200485, 38.399048, 28.407377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176098, 38.765530, 28.565800>,  <27.161465, 38.985416, 28.660852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176098, 38.765530, 28.565800>,  <27.200485, 38.399048, 28.407377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176098, 38.765530, 28.565800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290870, 0.363263, -0.885118,
		-0.954818, -0.169167, 0.244346,
		-0.060971, 0.916200, 0.396056,
		27.157806, 39.040390, 28.684616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.438707, 38.711624, 28.487385>,  <27.200485, 38.399048, 28.407377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.438707, 38.711624, 28.487385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.755487, 38.950653, 28.437227>,  <26.945555, 39.094070, 28.407133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.755487, 38.950653, 28.437227>,  <26.438707, 38.711624, 28.487385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.755487, 38.950653, 28.437227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316236, 0.225748, -0.921430,
		-0.522312, 0.769381, 0.367755,
		0.791950, 0.597571, -0.125395,
		26.993073, 39.129925, 28.399609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214813, 39.312599, 28.141891>,  <26.438707, 38.711624, 28.487385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.214813, 39.312599, 28.141891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606447, 39.306004, 28.060783>,  <26.841429, 39.302048, 28.012117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.606447, 39.306004, 28.060783>,  <26.214813, 39.312599, 28.141891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.606447, 39.306004, 28.060783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190958, 0.269284, -0.943939,
		0.070167, 0.962920, 0.260504,
		0.979087, -0.016488, -0.202772,
		26.900173, 39.301056, 27.999952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418627, 40.004169, 27.840448>,  <26.214813, 39.312599, 28.141891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418627, 40.004169, 27.840448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.648540, 39.703518, 27.711035>,  <26.786489, 39.523129, 27.633387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.648540, 39.703518, 27.711035>,  <26.418627, 40.004169, 27.840448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.648540, 39.703518, 27.711035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267648, 0.200942, -0.942330,
		0.773295, 0.628232, -0.085674,
		0.574787, -0.751630, -0.323533,
		26.820976, 39.478027, 27.613976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942549, 40.033867, 27.307974>,  <26.418627, 40.004169, 27.840448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942549, 40.033867, 27.307974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914234, 39.636364, 27.273478>,  <26.897245, 39.397861, 27.252779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914234, 39.636364, 27.273478>,  <26.942549, 40.033867, 27.307974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.914234, 39.636364, 27.273478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307004, 0.060556, -0.949780,
		0.949072, -0.093708, 0.300801,
		-0.070786, -0.993756, -0.086240,
		26.892998, 39.338238, 27.247606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579088, 39.745651, 26.944336>,  <26.942549, 40.033867, 27.307974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579088, 39.745651, 26.944336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314432, 39.447857, 26.908628>,  <27.155638, 39.269180, 26.887205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314432, 39.447857, 26.908628>,  <27.579088, 39.745651, 26.944336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314432, 39.447857, 26.908628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272064, -0.127424, -0.953805,
		0.698721, -0.655364, 0.286858,
		-0.661642, -0.744487, -0.089267,
		27.115940, 39.224510, 26.881849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907179, 39.229496, 26.623466>,  <27.579088, 39.745651, 26.944336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907179, 39.229496, 26.623466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516737, 39.184536, 26.549078>,  <27.282471, 39.157562, 26.504446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.516737, 39.184536, 26.549078>,  <27.907179, 39.229496, 26.623466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.516737, 39.184536, 26.549078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192194, -0.047251, -0.980219,
		0.101389, -0.992539, 0.067725,
		-0.976106, -0.112400, -0.185969,
		27.223906, 39.150818, 26.493288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.153643, 38.762470, 26.197798>,  <27.907179, 39.229496, 26.623466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.153643, 38.762470, 26.197798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549282, 38.777473, 26.140839>,  <28.786665, 38.786476, 26.106663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549282, 38.777473, 26.140839>,  <28.153643, 38.762470, 26.197798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549282, 38.777473, 26.140839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146922, -0.186501, 0.971407,
		0.009885, -0.981738, -0.189979,
		0.989099, 0.037514, -0.142395,
		28.846012, 38.788727, 26.098120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.449270, 38.110226, 26.319136>,  <28.153643, 38.762470, 26.197798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.449270, 38.110226, 26.319136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746868, 38.365070, 26.399691>,  <28.925426, 38.517979, 26.448025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.746868, 38.365070, 26.399691>,  <28.449270, 38.110226, 26.319136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746868, 38.365070, 26.399691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140623, -0.443941, 0.884953,
		0.653223, -0.630079, -0.419882,
		0.743993, 0.637116, 0.201389,
		28.970066, 38.556206, 26.460108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226564, 37.863647, 26.348045>,  <28.449270, 38.110226, 26.319136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226564, 37.863647, 26.348045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119654, 38.158150, 26.596720>,  <29.055508, 38.334850, 26.745924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119654, 38.158150, 26.596720>,  <29.226564, 37.863647, 26.348045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119654, 38.158150, 26.596720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176586, -0.596810, 0.782710,
		0.947302, 0.318980, 0.029500,
		-0.267275, 0.736254, 0.621686,
		29.039471, 38.379025, 26.783226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788980, 37.850689, 26.939749>,  <29.226564, 37.863647, 26.348045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788980, 37.850689, 26.939749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450176, 38.017357, 27.071789>,  <29.246895, 38.117355, 27.151012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450176, 38.017357, 27.071789>,  <29.788980, 37.850689, 26.939749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450176, 38.017357, 27.071789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131755, -0.437049, 0.889735,
		0.514992, 0.797106, 0.315287,
		-0.847009, 0.416666, 0.330099,
		29.196074, 38.142357, 27.170818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871088, 38.363552, 27.596083>,  <29.788980, 37.850689, 26.939749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871088, 38.363552, 27.596083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.513657, 38.184109, 27.589521>,  <29.299198, 38.076443, 27.585585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.513657, 38.184109, 27.589521>,  <29.871088, 38.363552, 27.596083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513657, 38.184109, 27.589521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139912, -0.313042, 0.939377,
		-0.426543, 0.837114, 0.342493,
		-0.893580, -0.448604, -0.016404,
		29.245583, 38.049526, 27.584600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491562, 38.496635, 28.213673>,  <29.871088, 38.363552, 27.596083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491562, 38.496635, 28.213673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324965, 38.162468, 28.070223>,  <29.225006, 37.961967, 27.984154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324965, 38.162468, 28.070223>,  <29.491562, 38.496635, 28.213673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324965, 38.162468, 28.070223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031772, -0.407598, 0.912608,
		-0.908584, 0.368701, 0.196305,
		-0.416493, -0.835418, -0.358623,
		29.200016, 37.911842, 27.962637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207260, 38.265625, 28.759844>,  <29.491562, 38.496635, 28.213673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207260, 38.265625, 28.759844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181377, 37.934990, 28.536217>,  <29.165848, 37.736607, 28.402040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181377, 37.934990, 28.536217>,  <29.207260, 38.265625, 28.759844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181377, 37.934990, 28.536217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093093, -0.552800, 0.828098,
		-0.993553, 0.105628, -0.041181,
		-0.064705, -0.826592, -0.559069,
		29.161966, 37.687012, 28.368496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632757, 37.858986, 29.032206>,  <29.207260, 38.265625, 28.759844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632757, 37.858986, 29.032206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892170, 37.614265, 28.851048>,  <29.047817, 37.467434, 28.742353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892170, 37.614265, 28.851048>,  <28.632757, 37.858986, 29.032206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892170, 37.614265, 28.851048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095708, -0.524721, 0.845877,
		-0.755148, -0.591922, -0.281744,
		0.648530, -0.611798, -0.452894,
		29.086729, 37.430725, 28.715179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380947, 37.395489, 29.388025>,  <28.632757, 37.858986, 29.032206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380947, 37.395489, 29.388025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694702, 37.212643, 29.220320>,  <28.882956, 37.102936, 29.119696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694702, 37.212643, 29.220320>,  <28.380947, 37.395489, 29.388025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694702, 37.212643, 29.220320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050245, -0.626890, 0.777486,
		-0.618235, -0.630915, -0.468755,
		0.784386, -0.457116, -0.419265,
		28.930017, 37.075508, 29.094540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283463, 36.652412, 29.339632>,  <28.380947, 37.395489, 29.388025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283463, 36.652412, 29.339632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681187, 36.691887, 29.323586>,  <28.919821, 36.715572, 29.313957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.681187, 36.691887, 29.323586>,  <28.283463, 36.652412, 29.339632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681187, 36.691887, 29.323586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094284, -0.639957, 0.762605,
		0.049584, -0.762048, -0.645620,
		0.994310, 0.098685, -0.040117,
		28.979479, 36.721493, 29.311550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494202, 36.042114, 29.396208>,  <28.283463, 36.652412, 29.339632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494202, 36.042114, 29.396208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806248, 36.275097, 29.487566>,  <28.993475, 36.414886, 29.542381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806248, 36.275097, 29.487566>,  <28.494202, 36.042114, 29.396208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806248, 36.275097, 29.487566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256789, -0.630989, 0.732061,
		0.570510, -0.512441, -0.641812,
		0.780114, 0.582458, 0.228396,
		29.040281, 36.449833, 29.556086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016264, 35.478065, 29.566294>,  <28.494202, 36.042114, 29.396208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016264, 35.478065, 29.566294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122721, 35.832603, 29.717848>,  <29.186596, 36.045326, 29.808781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122721, 35.832603, 29.717848>,  <29.016264, 35.478065, 29.566294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122721, 35.832603, 29.717848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076047, -0.411143, 0.908393,
		0.960929, -0.212950, -0.176827,
		0.266144, 0.886348, 0.378885,
		29.202564, 36.098507, 29.831512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480938, 35.230190, 30.047705>,  <29.016264, 35.478065, 29.566294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480938, 35.230190, 30.047705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392546, 35.599136, 30.174456>,  <29.339510, 35.820503, 30.250505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392546, 35.599136, 30.174456>,  <29.480938, 35.230190, 30.047705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392546, 35.599136, 30.174456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004261, -0.325819, 0.945423,
		0.975269, 0.207568, 0.075929,
		-0.220978, 0.922365, 0.316876,
		29.326252, 35.875847, 30.269518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802130, 35.196888, 30.644918>,  <29.480938, 35.230190, 30.047705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802130, 35.196888, 30.644918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564957, 35.516644, 30.683712>,  <29.422653, 35.708496, 30.706987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564957, 35.516644, 30.683712>,  <29.802130, 35.196888, 30.644918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564957, 35.516644, 30.683712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093271, -0.187805, 0.977768,
		0.799834, 0.570703, 0.185916,
		-0.592930, 0.799392, 0.096982,
		29.387077, 35.756462, 30.712807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032175, 35.676846, 31.126644>,  <29.802130, 35.196888, 30.644918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032175, 35.676846, 31.126644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637100, 35.731373, 31.095942>,  <29.400055, 35.764091, 31.077520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637100, 35.731373, 31.095942>,  <30.032175, 35.676846, 31.126644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637100, 35.731373, 31.095942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059741, 0.124792, 0.990383,
		0.144590, 0.982773, -0.115111,
		-0.987687, 0.136323, -0.076755,
		29.340794, 35.772270, 31.072914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804697, 36.189152, 31.504375>,  <30.032175, 35.676846, 31.126644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804697, 36.189152, 31.504375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459888, 35.987896, 31.479818>,  <29.253004, 35.867142, 31.465084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459888, 35.987896, 31.479818>,  <29.804697, 36.189152, 31.504375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459888, 35.987896, 31.479818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220514, 0.263200, 0.939202,
		-0.456395, 0.823148, -0.337834,
		-0.862019, -0.503144, -0.061392,
		29.201283, 35.836952, 31.461401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320620, 36.606087, 31.906248>,  <29.804697, 36.189152, 31.504375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320620, 36.606087, 31.906248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.136709, 36.251793, 31.880703>,  <29.026363, 36.039215, 31.865376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.136709, 36.251793, 31.880703>,  <29.320620, 36.606087, 31.906248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.136709, 36.251793, 31.880703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389738, 0.136644, 0.910732,
		-0.797942, 0.443621, -0.408030,
		-0.459775, -0.885736, -0.063862,
		28.998777, 35.986073, 31.861544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678255, 36.766743, 32.156433>,  <29.320620, 36.606087, 31.906248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678255, 36.766743, 32.156433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685123, 36.366806, 32.158466>,  <28.689243, 36.126846, 32.159687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685123, 36.366806, 32.158466>,  <28.678255, 36.766743, 32.156433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685123, 36.366806, 32.158466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306617, -0.000425, 0.951833,
		-0.951678, -0.017901, -0.306575,
		0.017170, -0.999840, 0.005084,
		28.690275, 36.066853, 32.159992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.048372, 36.583115, 32.430347>,  <28.678255, 36.766743, 32.156433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.048372, 36.583115, 32.430347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298210, 36.279713, 32.504700>,  <28.448112, 36.097672, 32.549313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298210, 36.279713, 32.504700>,  <28.048372, 36.583115, 32.430347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298210, 36.279713, 32.504700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300472, -0.013712, 0.953692,
		-0.720832, -0.651522, -0.236474,
		0.624594, -0.758506, 0.185880,
		28.485588, 36.052162, 32.560463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650705, 36.197102, 32.878338>,  <28.048372, 36.583115, 32.430347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650705, 36.197102, 32.878338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020050, 36.060196, 32.947914>,  <28.241657, 35.978054, 32.989658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020050, 36.060196, 32.947914>,  <27.650705, 36.197102, 32.878338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020050, 36.060196, 32.947914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232643, -0.138393, 0.962665,
		-0.305417, -0.929355, -0.207413,
		0.923362, -0.342268, 0.173940,
		28.297058, 35.957516, 33.000095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613169, 35.636303, 33.384560>,  <27.650705, 36.197102, 32.878338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613169, 35.636303, 33.384560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999224, 35.740906, 33.388996>,  <28.230858, 35.803665, 33.391659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999224, 35.740906, 33.388996>,  <27.613169, 35.636303, 33.384560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999224, 35.740906, 33.388996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043129, -0.200685, 0.978706,
		0.258162, -0.944108, -0.204968,
		0.965138, 0.261504, 0.011090,
		28.288765, 35.819359, 33.392323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917978, 35.228584, 33.856869>,  <27.613169, 35.636303, 33.384560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917978, 35.228584, 33.856869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.189629, 35.520382, 33.824306>,  <28.352619, 35.695461, 33.804768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.189629, 35.520382, 33.824306>,  <27.917978, 35.228584, 33.856869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.189629, 35.520382, 33.824306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014005, 0.098012, 0.995087,
		0.733887, -0.676931, 0.056346,
		0.679128, 0.729492, -0.081410,
		28.393368, 35.739231, 33.799885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297661, 35.129852, 34.461109>,  <27.917978, 35.228584, 33.856869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297661, 35.129852, 34.461109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375784, 35.505333, 34.347481>,  <28.422657, 35.730621, 34.279305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375784, 35.505333, 34.347481>,  <28.297661, 35.129852, 34.461109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375784, 35.505333, 34.347481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014185, 0.286915, 0.957851,
		0.980640, -0.191104, 0.042721,
		0.195306, 0.938701, -0.284071,
		28.434376, 35.786942, 34.262260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927923, 35.316898, 34.653576>,  <28.297661, 35.129852, 34.461109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927923, 35.316898, 34.653576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.703199, 35.647366, 34.636539>,  <28.568365, 35.845646, 34.626320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.703199, 35.647366, 34.636539>,  <28.927923, 35.316898, 34.653576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.703199, 35.647366, 34.636539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170355, 0.165915, 0.971314,
		0.809538, 0.538436, -0.233955,
		-0.561808, 0.826171, -0.042589,
		28.534657, 35.895218, 34.623764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287666, 35.664116, 35.114613>,  <28.927923, 35.316898, 34.653576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287666, 35.664116, 35.114613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944712, 35.865028, 35.069717>,  <28.738939, 35.985577, 35.042778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944712, 35.865028, 35.069717>,  <29.287666, 35.664116, 35.114613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944712, 35.865028, 35.069717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101029, 0.378090, 0.920240,
		0.504658, 0.777663, -0.374915,
		-0.857388, 0.502283, -0.112240,
		28.687496, 36.015713, 35.036045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443804, 36.323200, 35.424366>,  <29.287666, 35.664116, 35.114613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443804, 36.323200, 35.424366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044933, 36.293411, 35.428265>,  <28.805611, 36.275536, 35.430603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044933, 36.293411, 35.428265>,  <29.443804, 36.323200, 35.424366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044933, 36.293411, 35.428265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011491, 0.279504, 0.960076,
		-0.074227, 0.957252, -0.279571,
		-0.997175, -0.074476, 0.009747,
		28.745781, 36.271069, 35.431190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377087, 36.712879, 35.969101>,  <29.443804, 36.323200, 35.424366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377087, 36.712879, 35.969101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001005, 36.579357, 35.941986>,  <28.775356, 36.499245, 35.925716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001005, 36.579357, 35.941986>,  <29.377087, 36.712879, 35.969101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001005, 36.579357, 35.941986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138547, 0.192967, 0.971374,
		-0.311166, 0.922680, -0.227675,
		-0.940202, -0.333803, -0.067790,
		28.718945, 36.479218, 35.921650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461725, 36.196762, 36.393387>,  <29.377087, 36.712879, 35.969101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461725, 36.196762, 36.393387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344738, 35.875832, 36.601513>,  <29.274546, 35.683273, 36.726387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344738, 35.875832, 36.601513>,  <29.461725, 36.196762, 36.393387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344738, 35.875832, 36.601513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261317, 0.456342, 0.850568,
		-0.919878, 0.384732, 0.076196,
		-0.292469, -0.802330, 0.520316,
		29.256998, 35.635132, 36.757607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082418, 36.296238, 36.944397>,  <29.461725, 36.196762, 36.393387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082418, 36.296238, 36.944397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359324, 36.009590, 36.978420>,  <29.525467, 35.837601, 36.998833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359324, 36.009590, 36.978420>,  <29.082418, 36.296238, 36.944397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359324, 36.009590, 36.978420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500553, 0.561726, 0.658719,
		-0.519825, -0.413433, 0.747566,
		0.692263, -0.716615, 0.085054,
		29.567003, 35.794605, 37.003937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116219, 36.065536, 37.677864>,  <29.082418, 36.296238, 36.944397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116219, 36.065536, 37.677864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457134, 36.023407, 37.472923>,  <29.661684, 35.998131, 37.349960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457134, 36.023407, 37.472923>,  <29.116219, 36.065536, 37.677864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457134, 36.023407, 37.472923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464821, 0.601712, 0.649527,
		0.239877, -0.791738, 0.561791,
		0.852291, -0.105325, -0.512353,
		29.712822, 35.991810, 37.319218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686869, 35.849739, 38.114594>,  <29.116219, 36.065536, 37.677864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686869, 35.849739, 38.114594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793327, 36.090973, 37.813805>,  <29.857203, 36.235714, 37.633331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.793327, 36.090973, 37.813805>,  <29.686869, 35.849739, 38.114594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793327, 36.090973, 37.813805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504881, 0.577324, 0.641711,
		0.821133, -0.550445, -0.150831,
		0.266149, 0.603082, -0.751969,
		29.873173, 36.271896, 37.588215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855318, 36.626698, 38.325619>,  <29.686869, 35.849739, 38.114594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855318, 36.626698, 38.325619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170794, 36.817451, 38.480824>,  <30.360079, 36.931904, 38.573948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.170794, 36.817451, 38.480824>,  <29.855318, 36.626698, 38.325619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170794, 36.817451, 38.480824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535708, -0.223416, -0.814311,
		-0.301646, 0.850096, -0.431678,
		0.788687, 0.476887, 0.388011,
		30.407400, 36.960518, 38.597225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122355, 36.719799, 38.389645>,  <29.855318, 36.626698, 38.325619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122355, 36.719799, 38.389645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989466, 36.381466, 38.556595>,  <28.909733, 36.178467, 38.656765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989466, 36.381466, 38.556595>,  <29.122355, 36.719799, 38.389645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989466, 36.381466, 38.556595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476345, 0.231468, 0.848244,
		-0.814078, 0.480619, 0.326009,
		-0.332222, -0.845830, 0.417374,
		28.889799, 36.127716, 38.681808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935080, 36.917847, 39.096363>,  <29.122355, 36.719799, 38.389645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935080, 36.917847, 39.096363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979631, 36.520519, 39.084316>,  <29.006363, 36.282124, 39.077087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.979631, 36.520519, 39.084316>,  <28.935080, 36.917847, 39.096363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.979631, 36.520519, 39.084316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319659, 0.007112, 0.947506,
		-0.940964, -0.115160, 0.318316,
		0.111378, -0.993322, -0.030120,
		29.013044, 36.222523, 39.075279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394852, 36.505543, 39.463276>,  <28.935080, 36.917847, 39.096363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394852, 36.505543, 39.463276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.715662, 36.268021, 39.437508>,  <28.908148, 36.125507, 39.422047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.715662, 36.268021, 39.437508>,  <28.394852, 36.505543, 39.463276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.715662, 36.268021, 39.437508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003604, -0.103049, 0.994670,
		-0.597277, -0.797984, -0.080508,
		0.802027, -0.593803, -0.064425,
		28.956270, 36.089878, 39.418179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.294249, 35.769829, 39.667545>,  <28.394852, 36.505543, 39.463276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.294249, 35.769829, 39.667545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682299, 35.854286, 39.715328>,  <28.915129, 35.904961, 39.743996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682299, 35.854286, 39.715328>,  <28.294249, 35.769829, 39.667545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682299, 35.854286, 39.715328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054866, -0.288680, 0.955852,
		0.236311, -0.933852, -0.268471,
		0.970127, 0.211149, 0.119455,
		28.973337, 35.917629, 39.751163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516979, 35.231869, 39.977001>,  <28.294249, 35.769829, 39.667545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516979, 35.231869, 39.977001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792995, 35.511250, 40.052902>,  <28.958605, 35.678879, 40.098442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.792995, 35.511250, 40.052902>,  <28.516979, 35.231869, 39.977001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792995, 35.511250, 40.052902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035425, -0.229271, 0.972718,
		0.722904, -0.677936, -0.133463,
		0.690040, 0.698453, 0.189756,
		29.000008, 35.720787, 40.109829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.002930, 34.873489, 40.413982>,  <28.516979, 35.231869, 39.977001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.002930, 34.873489, 40.413982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.051161, 35.266048, 40.473736>,  <29.080099, 35.501583, 40.509586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.051161, 35.266048, 40.473736>,  <29.002930, 34.873489, 40.413982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051161, 35.266048, 40.473736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130816, -0.133457, 0.982383,
		0.984047, -0.137996, 0.112291,
		0.120579, 0.981400, 0.149380,
		29.087334, 35.560467, 40.518551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.353170, 34.929123, 41.082409>,  <29.002930, 34.873489, 40.413982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.353170, 34.929123, 41.082409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.271650, 35.314053, 41.010414>,  <29.222738, 35.545010, 40.967216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.271650, 35.314053, 41.010414>,  <29.353170, 34.929123, 41.082409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271650, 35.314053, 41.010414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027537, 0.189407, 0.981512,
		0.978625, 0.195078, -0.065101,
		-0.203803, 0.962325, -0.179987,
		29.210510, 35.602749, 40.956417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865862, 35.364792, 41.470287>,  <29.353170, 34.929123, 41.082409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865862, 35.364792, 41.470287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524715, 35.573036, 41.454403>,  <29.320026, 35.697983, 41.444874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.524715, 35.573036, 41.454403>,  <29.865862, 35.364792, 41.470287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524715, 35.573036, 41.454403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105397, 0.246144, 0.963486,
		0.511378, 0.817541, -0.264800,
		-0.852868, 0.520614, -0.039706,
		29.268854, 35.729221, 41.442490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021643, 36.010456, 41.740257>,  <29.865862, 35.364792, 41.470287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021643, 36.010456, 41.740257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625582, 35.966560, 41.775028>,  <29.387945, 35.940224, 41.795891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625582, 35.966560, 41.775028>,  <30.021643, 36.010456, 41.740257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625582, 35.966560, 41.775028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038196, 0.385622, 0.921866,
		-0.134690, 0.916107, -0.377632,
		-0.990151, -0.109742, 0.086931,
		29.328537, 35.933640, 41.801109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803246, 36.549011, 42.025234>,  <30.021643, 36.010456, 41.740257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803246, 36.549011, 42.025234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490795, 36.308006, 42.090740>,  <29.303326, 36.163403, 42.130043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490795, 36.308006, 42.090740>,  <29.803246, 36.549011, 42.025234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490795, 36.308006, 42.090740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110894, 0.391994, 0.913260,
		-0.614449, 0.695209, -0.373011,
		-0.781124, -0.602516, 0.163766,
		29.256458, 36.127251, 42.139870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354656, 37.015507, 42.406586>,  <29.803246, 36.549011, 42.025234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354656, 37.015507, 42.406586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197855, 36.651505, 42.460575>,  <29.103773, 36.433102, 42.492970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.197855, 36.651505, 42.460575>,  <29.354656, 37.015507, 42.406586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.197855, 36.651505, 42.460575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314655, 0.270496, 0.909848,
		-0.864479, 0.314195, -0.392375,
		-0.392005, -0.910007, 0.134975,
		29.080254, 36.378502, 42.501068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623901, 36.955055, 42.663471>,  <29.354656, 37.015507, 42.406586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623901, 36.955055, 42.663471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.793495, 36.604687, 42.755562>,  <28.895250, 36.394466, 42.810818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.793495, 36.604687, 42.755562>,  <28.623901, 36.955055, 42.663471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.793495, 36.604687, 42.755562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194375, 0.160276, 0.967745,
		-0.884566, -0.455058, -0.102303,
		0.423983, -0.875919, 0.230227,
		28.920691, 36.341911, 42.824631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735277, 36.947910, 43.476799>,  <28.623901, 36.955055, 42.663471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735277, 36.947910, 43.476799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.874321, 36.586239, 43.377495>,  <28.957747, 36.369236, 43.317913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.874321, 36.586239, 43.377495>,  <28.735277, 36.947910, 43.476799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.874321, 36.586239, 43.377495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017885, -0.271117, 0.962380,
		-0.937469, -0.330092, -0.110414,
		0.347609, -0.904176, -0.248260,
		28.978603, 36.314987, 43.303017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235809, 36.376823, 43.613541>,  <28.735277, 36.947910, 43.476799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235809, 36.376823, 43.613541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611551, 36.241524, 43.636162>,  <28.836996, 36.160343, 43.649734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611551, 36.241524, 43.636162>,  <28.235809, 36.376823, 43.613541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611551, 36.241524, 43.636162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153024, -0.265824, 0.951799,
		-0.306913, -0.902731, -0.301464,
		0.939355, -0.338251, 0.056555,
		28.893358, 36.140049, 43.653130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348381, 35.717892, 44.082100>,  <28.235809, 36.376823, 43.613541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348381, 35.717892, 44.082100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723652, 35.855991, 44.092140>,  <28.948814, 35.938850, 44.098164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723652, 35.855991, 44.092140>,  <28.348381, 35.717892, 44.082100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723652, 35.855991, 44.092140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112432, -0.372507, 0.921193,
		0.327389, -0.861420, -0.388294,
		0.938176, 0.345245, 0.025104,
		29.005104, 35.959564, 44.099670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743568, 35.211720, 44.381626>,  <28.348381, 35.717892, 44.082100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743568, 35.211720, 44.381626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957256, 35.547817, 44.418705>,  <29.085470, 35.749477, 44.440952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957256, 35.547817, 44.418705>,  <28.743568, 35.211720, 44.381626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957256, 35.547817, 44.418705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042667, -0.136319, 0.989746,
		0.844268, -0.524788, -0.108675,
		0.534221, 0.840247, 0.092699,
		29.117523, 35.799892, 44.446514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240412, 34.987545, 44.893826>,  <28.743568, 35.211720, 44.381626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240412, 34.987545, 44.893826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246748, 35.387493, 44.894329>,  <29.250549, 35.627464, 44.894630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246748, 35.387493, 44.894329>,  <29.240412, 34.987545, 44.893826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246748, 35.387493, 44.894329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191656, -0.004275, 0.981453,
		0.981334, -0.015304, -0.191699,
		0.015840, 0.999874, 0.001262,
		29.251499, 35.687454, 44.894707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864338, 35.084759, 45.183041>,  <29.240412, 34.987545, 44.893826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864338, 35.084759, 45.183041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.650370, 35.417423, 45.242634>,  <29.521988, 35.617023, 45.278389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.650370, 35.417423, 45.242634>,  <29.864338, 35.084759, 45.183041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650370, 35.417423, 45.242634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343353, 0.052867, 0.937717,
		0.771989, 0.552758, -0.313834,
		-0.534922, 0.831663, 0.148978,
		29.489893, 35.666924, 45.287327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245584, 35.390488, 45.666615>,  <29.864338, 35.084759, 45.183041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245584, 35.390488, 45.666615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880575, 35.550175, 45.702221>,  <29.661570, 35.645988, 45.723587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880575, 35.550175, 45.702221>,  <30.245584, 35.390488, 45.666615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880575, 35.550175, 45.702221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153684, 0.132955, 0.979134,
		0.379051, 0.907165, -0.182678,
		-0.912525, 0.399217, 0.089021,
		29.606817, 35.669941, 45.728928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383356, 35.977009, 46.155434>,  <30.245584, 35.390488, 45.666615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383356, 35.977009, 46.155434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995003, 35.882465, 46.139824>,  <29.761992, 35.825737, 46.130459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995003, 35.882465, 46.139824>,  <30.383356, 35.977009, 46.155434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995003, 35.882465, 46.139824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087845, 0.199687, 0.975914,
		-0.222874, 0.950925, -0.214636,
		-0.970881, -0.236360, -0.039029,
		29.703739, 35.811558, 46.128117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097910, 36.404270, 46.702290>,  <30.383356, 35.977009, 46.155434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097910, 36.404270, 46.702290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813255, 36.132797, 46.629658>,  <29.642464, 35.969913, 46.586079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813255, 36.132797, 46.629658>,  <30.097910, 36.404270, 46.702290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813255, 36.132797, 46.629658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281773, 0.038959, 0.958690,
		-0.643569, 0.733401, -0.218958,
		-0.711634, -0.678679, -0.181579,
		29.599766, 35.929192, 46.575184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565773, 36.622086, 47.159531>,  <30.097910, 36.404270, 46.702290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565773, 36.622086, 47.159531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484245, 36.238102, 47.082657>,  <29.435329, 36.007713, 47.036533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484245, 36.238102, 47.082657>,  <29.565773, 36.622086, 47.159531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484245, 36.238102, 47.082657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153093, -0.162635, 0.974737,
		-0.966964, 0.228092, -0.113815,
		-0.203819, -0.959961, -0.192181,
		29.423100, 35.950115, 47.025002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.096764, 36.504440, 47.584961>,  <29.565773, 36.622086, 47.159531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.096764, 36.504440, 47.584961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.212439, 36.133884, 47.488483>,  <29.281845, 35.911552, 47.430599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.212439, 36.133884, 47.488483>,  <29.096764, 36.504440, 47.584961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212439, 36.133884, 47.488483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228942, -0.311575, 0.922229,
		-0.929492, -0.211481, -0.302193,
		0.289190, -0.926389, -0.241190,
		29.299196, 35.855968, 47.416126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552683, 36.033497, 47.844063>,  <29.096764, 36.504440, 47.584961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552683, 36.033497, 47.844063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901896, 35.842159, 47.806107>,  <29.111423, 35.727356, 47.783333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.901896, 35.842159, 47.806107>,  <28.552683, 36.033497, 47.844063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.901896, 35.842159, 47.806107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163831, -0.470962, 0.866807,
		-0.459319, -0.741204, -0.489533,
		0.873032, -0.478342, -0.094890,
		29.163805, 35.698654, 47.777637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381178, 35.314583, 47.936886>,  <28.552683, 36.033497, 47.844063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381178, 35.314583, 47.936886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772610, 35.374130, 47.993759>,  <29.007469, 35.409859, 48.027882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.772610, 35.374130, 47.993759>,  <28.381178, 35.314583, 47.936886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772610, 35.374130, 47.993759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004941, -0.673485, 0.739185,
		0.205802, -0.724055, -0.658324,
		0.978581, 0.148873, 0.142183,
		29.066185, 35.418793, 48.036415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606533, 34.748531, 48.200222>,  <28.381178, 35.314583, 47.936886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606533, 34.748531, 48.200222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904161, 34.998791, 48.293972>,  <29.082739, 35.148945, 48.350220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904161, 34.998791, 48.293972>,  <28.606533, 34.748531, 48.200222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904161, 34.998791, 48.293972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122310, -0.472435, 0.872837,
		0.656811, -0.620785, -0.428047,
		0.744069, 0.625644, 0.234372,
		29.127382, 35.186485, 48.364285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.206518, 34.327427, 48.292240>,  <28.606533, 34.748531, 48.200222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.206518, 34.327427, 48.292240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231245, 34.671711, 48.494370>,  <29.246080, 34.878281, 48.615646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.231245, 34.671711, 48.494370>,  <29.206518, 34.327427, 48.292240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231245, 34.671711, 48.494370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053116, -0.502737, 0.862806,
		0.996673, -0.080176, 0.014640,
		0.061817, 0.860713, 0.505323,
		29.249790, 34.929924, 48.645966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530600, 34.206089, 48.934006>,  <29.206518, 34.327427, 48.292240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530600, 34.206089, 48.934006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399921, 34.565678, 49.050713>,  <29.321514, 34.781429, 49.120735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399921, 34.565678, 49.050713>,  <29.530600, 34.206089, 48.934006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399921, 34.565678, 49.050713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157571, -0.252575, 0.954661,
		0.931903, 0.357855, -0.059137,
		-0.326693, 0.898969, 0.291763,
		29.301914, 34.835369, 49.138241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032297, 34.490070, 49.362000>,  <29.530600, 34.206089, 48.934006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032297, 34.490070, 49.362000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.684353, 34.666248, 49.450855>,  <29.475586, 34.771957, 49.504169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.684353, 34.666248, 49.450855>,  <30.032297, 34.490070, 49.362000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684353, 34.666248, 49.450855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161921, -0.170425, 0.971976,
		0.465963, 0.881453, 0.076928,
		-0.869862, 0.440449, 0.222138,
		29.423395, 34.798382, 49.517498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223083, 34.814240, 49.941669>,  <30.032297, 34.490070, 49.362000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223083, 34.814240, 49.941669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826162, 34.764820, 49.945026>,  <29.588009, 34.735168, 49.947041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826162, 34.764820, 49.945026>,  <30.223083, 34.814240, 49.941669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826162, 34.764820, 49.945026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030051, -0.174479, 0.984202,
		-0.120134, 0.976879, 0.176849,
		-0.992303, -0.123550, 0.008395,
		29.528471, 34.727757, 49.947544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937965, 35.143867, 50.480263>,  <30.223083, 34.814240, 49.941669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937965, 35.143867, 50.480263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.680998, 34.847630, 50.401459>,  <29.526817, 34.669888, 50.354176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.680998, 34.847630, 50.401459>,  <29.937965, 35.143867, 50.480263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.680998, 34.847630, 50.401459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085537, -0.186178, 0.978786,
		-0.761566, 0.645642, 0.056255,
		-0.642418, -0.740598, -0.197013,
		29.488272, 34.625450, 50.342354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.572739, 35.278400, 50.978447>,  <29.937965, 35.143867, 50.480263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.572739, 35.278400, 50.978447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471020, 34.904305, 50.879929>,  <29.409988, 34.679848, 50.820820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471020, 34.904305, 50.879929>,  <29.572739, 35.278400, 50.978447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471020, 34.904305, 50.879929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058717, -0.269124, 0.961314,
		-0.965342, 0.229999, 0.123353,
		-0.254299, -0.935239, -0.246292,
		29.394730, 34.623734, 50.806042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010462, 35.127171, 51.410080>,  <29.572739, 35.278400, 50.978447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010462, 35.127171, 51.410080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178930, 34.774193, 51.326267>,  <29.280012, 34.562405, 51.275978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178930, 34.774193, 51.326267>,  <29.010462, 35.127171, 51.410080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178930, 34.774193, 51.326267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060850, -0.257992, 0.964229,
		-0.904937, -0.393357, -0.162356,
		0.421172, -0.882446, -0.209531,
		29.305283, 34.509460, 51.263409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762461, 34.803917, 51.914883>,  <29.010462, 35.127171, 51.410080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762461, 34.803917, 51.914883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065752, 34.582222, 51.777534>,  <29.247726, 34.449203, 51.695126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065752, 34.582222, 51.777534>,  <28.762461, 34.803917, 51.914883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065752, 34.582222, 51.777534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074139, -0.449948, 0.889972,
		-0.647761, -0.700259, -0.300072,
		0.758228, -0.554242, -0.343375,
		29.293221, 34.415951, 51.674522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678497, 34.129055, 51.983002>,  <28.762461, 34.803917, 51.914883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678497, 34.129055, 51.983002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072592, 34.196888, 51.992374>,  <29.309048, 34.237587, 51.997997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072592, 34.196888, 51.992374>,  <28.678497, 34.129055, 51.983002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072592, 34.196888, 51.992374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053768, -0.436481, 0.898105,
		0.162536, -0.883586, -0.439156,
		0.985237, 0.169587, 0.023435,
		29.368162, 34.247765, 51.999405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979277, 33.587666, 52.314114>,  <28.678497, 34.129055, 51.983002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979277, 33.587666, 52.314114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278059, 33.849792, 52.359039>,  <29.457329, 34.007069, 52.385994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278059, 33.849792, 52.359039>,  <28.979277, 33.587666, 52.314114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278059, 33.849792, 52.359039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315135, -0.497695, 0.808078,
		0.585444, -0.568206, -0.578270,
		0.746957, 0.655318, 0.112311,
		29.502146, 34.046387, 52.392731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501177, 33.205467, 52.443893>,  <28.979277, 33.587666, 52.314114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501177, 33.205467, 52.443893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614687, 33.554882, 52.602085>,  <29.682793, 33.764530, 52.696999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614687, 33.554882, 52.602085>,  <29.501177, 33.205467, 52.443893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614687, 33.554882, 52.602085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040595, -0.423005, 0.905218,
		0.958031, -0.240824, -0.155499,
		0.283775, 0.873539, 0.395476,
		29.699820, 33.816944, 52.720726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067062, 33.006126, 52.823376>,  <29.501177, 33.205467, 52.443893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067062, 33.006126, 52.823376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977736, 33.372757, 52.956047>,  <29.924139, 33.592735, 53.035652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977736, 33.372757, 52.956047>,  <30.067062, 33.006126, 52.823376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977736, 33.372757, 52.956047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183954, -0.294531, 0.937770,
		0.957231, 0.270434, -0.102835,
		-0.223317, 0.916579, 0.331681,
		29.910740, 33.647732, 53.055550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566206, 33.073425, 53.292831>,  <30.067062, 33.006126, 52.823376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566206, 33.073425, 53.292831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277122, 33.337685, 53.374062>,  <30.103672, 33.496239, 53.422802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.277122, 33.337685, 53.374062>,  <30.566206, 33.073425, 53.292831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277122, 33.337685, 53.374062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156255, -0.130043, 0.979119,
		0.673259, 0.739349, -0.009246,
		-0.722708, 0.660645, 0.203080,
		30.060310, 33.535877, 53.434986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809332, 33.300995, 53.923100>,  <30.566206, 33.073425, 53.292831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809332, 33.300995, 53.923100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424395, 33.409676, 53.919720>,  <30.193432, 33.474884, 53.917690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.424395, 33.409676, 53.919720>,  <30.809332, 33.300995, 53.923100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424395, 33.409676, 53.919720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066369, -0.204698, 0.976573,
		0.263603, 0.940361, 0.215022,
		-0.962345, 0.271699, -0.008452,
		30.135691, 33.491184, 53.917183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746218, 33.735390, 54.490826>,  <30.809332, 33.300995, 53.923100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746218, 33.735390, 54.490826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383974, 33.586212, 54.410046>,  <30.166628, 33.496704, 54.361580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383974, 33.586212, 54.410046>,  <30.746218, 33.735390, 54.490826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383974, 33.586212, 54.410046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155575, -0.150844, 0.976239,
		-0.394548, 0.915509, 0.078585,
		-0.905609, -0.372947, -0.201946,
		30.112291, 33.474327, 54.349461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248367, 34.059727, 54.993858>,  <30.746218, 33.735390, 54.490826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248367, 34.059727, 54.993858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132805, 33.699352, 54.864342>,  <30.063467, 33.483128, 54.786633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132805, 33.699352, 54.864342>,  <30.248367, 34.059727, 54.993858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132805, 33.699352, 54.864342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378809, -0.203037, 0.902929,
		-0.879225, 0.383518, -0.282625,
		-0.288906, -0.900939, -0.323795,
		30.046133, 33.429070, 54.767204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847059, 34.019814, 55.625309>,  <30.248367, 34.059727, 54.993858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847059, 34.019814, 55.625309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827299, 33.696888, 55.390087>,  <29.815443, 33.503132, 55.248955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827299, 33.696888, 55.390087>,  <29.847059, 34.019814, 55.625309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827299, 33.696888, 55.390087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517550, -0.482869, 0.706385,
		-0.854226, 0.339243, -0.393970,
		-0.049400, -0.807311, -0.588054,
		29.812479, 33.454693, 55.213673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124889, 33.789669, 55.562016>,  <29.847059, 34.019814, 55.625309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124889, 33.789669, 55.562016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389023, 33.489491, 55.550808>,  <29.547503, 33.309383, 55.544083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389023, 33.489491, 55.550808>,  <29.124889, 33.789669, 55.562016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389023, 33.489491, 55.550808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517615, -0.481855, 0.707029,
		-0.544090, -0.452372, -0.706629,
		0.660333, -0.750450, -0.028018,
		29.587124, 33.264355, 55.542404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679012, 33.249615, 55.803913>,  <29.124889, 33.789669, 55.562016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679012, 33.249615, 55.803913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050438, 33.101204, 55.799858>,  <29.273294, 33.012157, 55.797424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050438, 33.101204, 55.799858>,  <28.679012, 33.249615, 55.803913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.050438, 33.101204, 55.799858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253262, -0.653332, 0.713453,
		-0.271339, -0.659919, -0.700630,
		0.928565, -0.371031, -0.010142,
		29.329008, 32.989895, 55.796814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775055, 32.471474, 55.909225>,  <28.679012, 33.249615, 55.803913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775055, 32.471474, 55.909225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102999, 32.663292, 56.034359>,  <29.299765, 32.778381, 56.109440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102999, 32.663292, 56.034359>,  <28.775055, 32.471474, 55.909225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102999, 32.663292, 56.034359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166603, -0.322930, 0.931643,
		0.547791, -0.815936, -0.184863,
		0.819859, 0.479547, 0.312836,
		29.348957, 32.807156, 56.128208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593212, 32.704479, 55.234936>,  <28.775055, 32.471474, 55.909225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593212, 32.704479, 55.234936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344944, 32.519279, 54.981827>,  <28.195982, 32.408161, 54.829960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.344944, 32.519279, 54.981827>,  <28.593212, 32.704479, 55.234936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344944, 32.519279, 54.981827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068173, -0.835844, 0.544717,
		-0.781102, 0.294953, 0.550349,
		-0.620671, -0.462998, -0.632772,
		28.158743, 32.380379, 54.791996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003284, 32.407932, 55.587578>,  <28.593212, 32.704479, 55.234936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003284, 32.407932, 55.587578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167807, 32.233051, 55.267658>,  <28.266520, 32.128120, 55.075706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167807, 32.233051, 55.267658>,  <28.003284, 32.407932, 55.587578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167807, 32.233051, 55.267658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113398, -0.846095, 0.520830,
		-0.904415, -0.304917, -0.298427,
		0.411307, -0.437205, -0.799799,
		28.291199, 32.101891, 55.027718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.726286, 31.756794, 55.368465>,  <28.003284, 32.407932, 55.587578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.726286, 31.756794, 55.368465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097492, 31.728910, 55.222080>,  <28.320215, 31.712181, 55.134247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.097492, 31.728910, 55.222080>,  <27.726286, 31.756794, 55.368465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097492, 31.728910, 55.222080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145026, -0.837251, 0.527237,
		-0.343157, -0.542357, -0.766871,
		0.928015, -0.069709, -0.365964,
		28.375896, 31.707998, 55.112289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602345, 31.120375, 55.413090>,  <27.726286, 31.756794, 55.368465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602345, 31.120375, 55.413090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989304, 31.210955, 55.367722>,  <28.221479, 31.265303, 55.340500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.989304, 31.210955, 55.367722>,  <27.602345, 31.120375, 55.413090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989304, 31.210955, 55.367722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242993, -0.703592, 0.667767,
		0.071414, -0.673556, -0.735678,
		0.967396, 0.226452, -0.113423,
		28.279522, 31.278891, 55.333694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918623, 30.463709, 55.262245>,  <27.602345, 31.120375, 55.413090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918623, 30.463709, 55.262245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139040, 30.756672, 55.422211>,  <28.271290, 30.932449, 55.518188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139040, 30.756672, 55.422211>,  <27.918623, 30.463709, 55.262245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139040, 30.756672, 55.422211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367005, -0.643107, 0.672102,
		0.749439, -0.223588, -0.623177,
		0.551043, 0.732409, 0.399911,
		28.304354, 30.976395, 55.542183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644205, 30.325081, 55.154350>,  <27.918623, 30.463709, 55.262245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644205, 30.325081, 55.154350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549227, 30.508266, 55.497021>,  <28.492241, 30.618177, 55.702621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549227, 30.508266, 55.497021>,  <28.644205, 30.325081, 55.154350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549227, 30.508266, 55.497021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220963, -0.833312, 0.506722,
		0.945936, 0.309611, 0.096671,
		-0.237444, 0.457966, 0.856672,
		28.477993, 30.645657, 55.754021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528414, 30.179779, 54.432526>,  <28.644205, 30.325081, 55.154350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528414, 30.179779, 54.432526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437723, 30.568373, 54.404785>,  <28.383308, 30.801529, 54.388142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.437723, 30.568373, 54.404785>,  <28.528414, 30.179779, 54.432526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437723, 30.568373, 54.404785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524881, 0.061896, -0.848922,
		-0.820424, -0.228873, -0.523948,
		-0.226726, 0.971486, -0.069350,
		28.369705, 30.859819, 54.383980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134470, 30.288761, 53.856918>,  <28.528414, 30.179779, 54.432526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134470, 30.288761, 53.856918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334312, 30.631086, 53.910545>,  <28.454218, 30.836481, 53.942722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334312, 30.631086, 53.910545>,  <28.134470, 30.288761, 53.856918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334312, 30.631086, 53.910545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293582, -0.021671, -0.955688,
		-0.814987, 0.516828, -0.262079,
		0.499606, 0.855815, 0.134070,
		28.484194, 30.887831, 53.950768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110283, 30.745026, 53.144020>,  <28.134470, 30.288761, 53.856918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110283, 30.745026, 53.144020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420700, 30.909914, 53.334946>,  <28.606951, 31.008848, 53.449501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.420700, 30.909914, 53.334946>,  <28.110283, 30.745026, 53.144020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420700, 30.909914, 53.334946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481405, 0.101757, -0.870571,
		-0.407439, 0.905383, -0.119479,
		0.776043, 0.412223, 0.477316,
		28.653513, 31.033581, 53.478142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255913, 31.466667, 52.827244>,  <28.110283, 30.745026, 53.144020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255913, 31.466667, 52.827244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580252, 31.316517, 53.006851>,  <28.774855, 31.226427, 53.114616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580252, 31.316517, 53.006851>,  <28.255913, 31.466667, 52.827244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580252, 31.316517, 53.006851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499177, 0.043053, -0.865430,
		0.305529, 0.925872, 0.222288,
		0.810848, -0.375375, 0.449021,
		28.823505, 31.203905, 53.141556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798119, 31.984055, 52.623951>,  <28.255913, 31.466667, 52.827244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798119, 31.984055, 52.623951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964670, 31.635206, 52.726734>,  <29.064602, 31.425898, 52.788406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.964670, 31.635206, 52.726734>,  <28.798119, 31.984055, 52.623951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964670, 31.635206, 52.726734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641265, 0.081353, -0.762994,
		0.644520, 0.482477, 0.593136,
		0.416380, -0.872122, 0.256962,
		29.089584, 31.373569, 52.803822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493893, 32.073849, 52.622826>,  <28.798119, 31.984055, 52.623951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493893, 32.073849, 52.622826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452900, 31.679230, 52.571880>,  <29.428305, 31.442459, 52.541313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452900, 31.679230, 52.571880>,  <29.493893, 32.073849, 52.622826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452900, 31.679230, 52.571880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410287, 0.074713, -0.908891,
		0.906180, -0.145399, 0.397111,
		-0.102483, -0.986548, -0.127359,
		29.422155, 31.383265, 52.533672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158789, 31.947794, 52.447292>,  <29.493893, 32.073849, 52.622826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158789, 31.947794, 52.447292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921608, 31.642017, 52.346073>,  <29.779299, 31.458551, 52.285343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921608, 31.642017, 52.346073>,  <30.158789, 31.947794, 52.447292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921608, 31.642017, 52.346073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360965, 0.028572, -0.932141,
		0.719800, -0.644057, 0.258996,
		-0.592952, -0.764444, -0.253048,
		29.743723, 31.412683, 52.270157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556564, 31.579460, 52.021790>,  <30.158789, 31.947794, 52.447292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556564, 31.579460, 52.021790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193243, 31.435410, 51.936657>,  <29.975250, 31.348980, 51.885578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193243, 31.435410, 51.936657>,  <30.556564, 31.579460, 52.021790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193243, 31.435410, 51.936657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233707, -0.014893, -0.972193,
		0.346942, -0.932785, 0.097691,
		-0.908302, -0.360125, -0.212831,
		29.920752, 31.327372, 51.872807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587389, 30.888807, 51.620907>,  <30.556564, 31.579460, 52.021790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587389, 30.888807, 51.620907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240393, 31.069647, 51.537899>,  <30.032194, 31.178150, 51.488094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240393, 31.069647, 51.537899>,  <30.587389, 30.888807, 51.620907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240393, 31.069647, 51.537899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207682, -0.049918, -0.976922,
		-0.452022, -0.890571, -0.050589,
		-0.867493, 0.452097, -0.207520,
		29.980145, 31.205276, 51.475643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340334, 30.520805, 50.867214>,  <30.587389, 30.888807, 51.620907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340334, 30.520805, 50.867214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.130093, 30.853365, 50.939346>,  <30.003948, 31.052900, 50.982628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.130093, 30.853365, 50.939346>,  <30.340334, 30.520805, 50.867214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130093, 30.853365, 50.939346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050453, 0.242064, -0.968948,
		-0.849234, -0.500181, -0.169175,
		-0.525601, 0.831399, 0.180333,
		29.972412, 31.102785, 50.993446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868383, 30.544117, 50.317268>,  <30.340334, 30.520805, 50.867214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868383, 30.544117, 50.317268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842676, 30.911829, 50.472595>,  <29.827251, 31.132456, 50.565792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.842676, 30.911829, 50.472595>,  <29.868383, 30.544117, 50.317268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842676, 30.911829, 50.472595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168447, 0.373549, -0.912188,
		-0.983613, -0.124036, 0.130843,
		-0.064267, 0.919280, 0.388321,
		29.823397, 31.187613, 50.589092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204315, 30.812332, 50.121464>,  <29.868383, 30.544117, 50.317268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204315, 30.812332, 50.121464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471266, 31.105753, 50.172859>,  <29.631435, 31.281805, 50.203697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.471266, 31.105753, 50.172859>,  <29.204315, 30.812332, 50.121464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471266, 31.105753, 50.172859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173309, 0.320779, -0.931163,
		-0.724274, 0.599167, 0.341212,
		0.667376, 0.733553, 0.128491,
		29.671478, 31.325819, 50.211407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849150, 31.361334, 49.809505>,  <29.204315, 30.812332, 50.121464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849150, 31.361334, 49.809505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.222958, 31.492439, 49.864994>,  <29.447243, 31.571102, 49.898289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.222958, 31.492439, 49.864994>,  <28.849150, 31.361334, 49.809505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222958, 31.492439, 49.864994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110249, 0.637183, -0.762787,
		-0.338407, 0.697544, 0.631595,
		0.934519, 0.327766, 0.138723,
		29.503313, 31.590769, 49.906612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819086, 32.102104, 49.833496>,  <28.849150, 31.361334, 49.809505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819086, 32.102104, 49.833496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186962, 32.034920, 49.691536>,  <29.407688, 31.994610, 49.606358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.186962, 32.034920, 49.691536>,  <28.819086, 32.102104, 49.833496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.186962, 32.034920, 49.691536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179881, 0.623218, -0.761079,
		0.349014, 0.763799, 0.542956,
		0.919692, -0.167960, -0.354904,
		29.462870, 31.984531, 49.585064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976604, 32.710159, 49.548134>,  <28.819086, 32.102104, 49.833496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976604, 32.710159, 49.548134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225922, 32.452248, 49.371151>,  <29.375511, 32.297501, 49.264961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.225922, 32.452248, 49.371151>,  <28.976604, 32.710159, 49.548134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225922, 32.452248, 49.371151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063665, 0.522093, -0.850509,
		0.779392, 0.558286, 0.284367,
		0.623293, -0.644776, -0.442458,
		29.412910, 32.258816, 49.238415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368952, 33.151634, 49.113438>,  <28.976604, 32.710159, 49.548134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368952, 33.151634, 49.113438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375359, 32.776451, 48.974884>,  <29.379202, 32.551342, 48.891754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375359, 32.776451, 48.974884>,  <29.368952, 33.151634, 49.113438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375359, 32.776451, 48.974884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244732, 0.332210, -0.910902,
		0.969459, 0.099361, -0.224227,
		0.016017, -0.937957, -0.346380,
		29.380163, 32.495064, 48.870972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563353, 33.326008, 48.460411>,  <29.368952, 33.151634, 49.113438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563353, 33.326008, 48.460411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469431, 32.938431, 48.429371>,  <29.413078, 32.705887, 48.410748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469431, 32.938431, 48.429371>,  <29.563353, 33.326008, 48.460411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469431, 32.938431, 48.429371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268628, 0.141409, -0.952808,
		0.934188, -0.202875, -0.293487,
		-0.234803, -0.968940, -0.077605,
		29.398991, 32.647747, 48.406090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943563, 32.950062, 47.913155>,  <29.563353, 33.326008, 48.460411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943563, 32.950062, 47.913155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.629410, 32.708626, 47.968079>,  <29.440918, 32.563763, 48.001034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.629410, 32.708626, 47.968079>,  <29.943563, 32.950062, 47.913155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629410, 32.708626, 47.968079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188921, 0.022495, -0.981735,
		0.589477, -0.796977, -0.131698,
		-0.785382, -0.603591, 0.137305,
		29.393795, 32.527550, 48.009270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979576, 32.491077, 47.385979>,  <29.943563, 32.950062, 47.913155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979576, 32.491077, 47.385979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596169, 32.466465, 47.497303>,  <29.366123, 32.451698, 47.564098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596169, 32.466465, 47.497303>,  <29.979576, 32.491077, 47.385979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596169, 32.466465, 47.497303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275359, -0.052301, -0.959918,
		0.073622, -0.996734, 0.033188,
		-0.958518, -0.061533, 0.278310,
		29.308613, 32.448006, 47.580795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749903, 31.932476, 47.016865>,  <29.979576, 32.491077, 47.385979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749903, 31.932476, 47.016865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435223, 32.165329, 47.099060>,  <29.246414, 32.305042, 47.148376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435223, 32.165329, 47.099060>,  <29.749903, 31.932476, 47.016865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435223, 32.165329, 47.099060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294140, -0.060802, -0.953826,
		-0.542760, -0.810816, 0.219061,
		-0.786698, 0.582134, 0.205492,
		29.199213, 32.339970, 47.160709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.193213, 31.637632, 46.717232>,  <29.749903, 31.932476, 47.016865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.193213, 31.637632, 46.717232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041382, 32.005123, 46.760792>,  <28.950283, 32.225616, 46.786926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.041382, 32.005123, 46.760792>,  <29.193213, 31.637632, 46.717232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041382, 32.005123, 46.760792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031906, 0.104641, -0.993998,
		-0.924611, -0.380772, -0.010406,
		-0.379575, 0.918729, 0.108902,
		28.927509, 32.280743, 46.793461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648952, 31.680000, 46.267761>,  <29.193213, 31.637632, 46.717232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648952, 31.680000, 46.267761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737417, 32.062073, 46.346470>,  <28.790495, 32.291317, 46.393696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737417, 32.062073, 46.346470>,  <28.648952, 31.680000, 46.267761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737417, 32.062073, 46.346470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041481, 0.192374, -0.980444,
		-0.974355, 0.224998, 0.002924,
		0.221160, 0.955180, 0.196774,
		28.803766, 32.348625, 46.405502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222010, 32.060604, 45.941654>,  <28.648952, 31.680000, 46.267761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222010, 32.060604, 45.941654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547707, 32.289906, 45.978302>,  <28.743124, 32.427486, 46.000290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547707, 32.289906, 45.978302>,  <28.222010, 32.060604, 45.941654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547707, 32.289906, 45.978302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044712, 0.095420, -0.994432,
		-0.578801, 0.813805, 0.052064,
		0.814242, 0.573251, 0.091616,
		28.791979, 32.461880, 46.005787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090425, 32.521767, 45.381561>,  <28.222010, 32.060604, 45.941654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090425, 32.521767, 45.381561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.465199, 32.613350, 45.487194>,  <28.690062, 32.668301, 45.550575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.465199, 32.613350, 45.487194>,  <28.090425, 32.521767, 45.381561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.465199, 32.613350, 45.487194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190711, 0.298290, -0.935229,
		-0.292899, 0.926608, 0.235813,
		0.936931, 0.228955, 0.264083,
		28.746279, 32.682037, 45.566418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.195826, 33.204243, 45.321117>,  <28.090425, 32.521767, 45.381561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.195826, 33.204243, 45.321117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559324, 33.039890, 45.291851>,  <28.777424, 32.941277, 45.274292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.559324, 33.039890, 45.291851>,  <28.195826, 33.204243, 45.321117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.559324, 33.039890, 45.291851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066619, 0.315876, -0.946459,
		0.411997, 0.855217, 0.314423,
		0.908746, -0.410885, -0.073167,
		28.831947, 32.916626, 45.269901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.448978, 33.639328, 44.950092>,  <28.195826, 33.204243, 45.321117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.448978, 33.639328, 44.950092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693645, 33.323818, 44.925747>,  <28.840445, 33.134514, 44.911140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.693645, 33.323818, 44.925747>,  <28.448978, 33.639328, 44.950092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693645, 33.323818, 44.925747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190692, 0.221664, -0.956296,
		0.767790, 0.573328, 0.285997,
		0.611666, -0.788772, -0.060863,
		28.877146, 33.087185, 44.907490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090614, 33.938641, 44.727898>,  <28.448978, 33.639328, 44.950092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090614, 33.938641, 44.727898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071779, 33.548611, 44.641171>,  <29.060478, 33.314594, 44.589134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071779, 33.548611, 44.641171>,  <29.090614, 33.938641, 44.727898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071779, 33.548611, 44.641171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188131, 0.204515, -0.960614,
		0.981014, -0.086023, 0.173812,
		-0.047088, -0.975076, -0.216816,
		29.057653, 33.256088, 44.576126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292395, 33.922466, 44.094398>,  <29.090614, 33.938641, 44.727898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292395, 33.922466, 44.094398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171745, 33.541107, 44.091454>,  <29.099356, 33.312290, 44.089687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171745, 33.541107, 44.091454>,  <29.292395, 33.922466, 44.094398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171745, 33.541107, 44.091454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124554, -0.031743, -0.991705,
		0.945256, -0.300041, 0.128324,
		-0.301625, -0.953398, -0.007366,
		29.081257, 33.255089, 44.089245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769871, 33.609795, 43.729477>,  <29.292395, 33.922466, 44.094398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769871, 33.609795, 43.729477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446558, 33.376591, 43.696548>,  <29.252571, 33.236668, 43.676792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446558, 33.376591, 43.696548>,  <29.769871, 33.609795, 43.729477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446558, 33.376591, 43.696548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156898, -0.078515, -0.984489,
		0.567508, -0.808659, 0.154936,
		-0.808281, -0.583014, -0.082319,
		29.204073, 33.201687, 43.671852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982307, 32.911400, 43.458958>,  <29.769871, 33.609795, 43.729477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982307, 32.911400, 43.458958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592304, 32.952171, 43.379997>,  <29.358303, 32.976635, 43.332619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.592304, 32.952171, 43.379997>,  <29.982307, 32.911400, 43.458958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592304, 32.952171, 43.379997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159304, -0.298577, -0.940996,
		-0.154854, -0.948927, 0.274878,
		-0.975008, 0.101928, -0.197404,
		29.299801, 32.982750, 43.320774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850023, 32.197193, 43.296314>,  <29.982307, 32.911400, 43.458958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.850023, 32.197193, 43.296314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580872, 32.452885, 43.147385>,  <29.419380, 32.606300, 43.058029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.580872, 32.452885, 43.147385>,  <29.850023, 32.197193, 43.296314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580872, 32.452885, 43.147385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089179, -0.429540, -0.898634,
		-0.734359, -0.637874, 0.232021,
		-0.672877, 0.639229, -0.372322,
		29.379009, 32.644653, 43.035686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444918, 31.798285, 42.751537>,  <29.850023, 32.197193, 43.296314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444918, 31.798285, 42.751537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359196, 32.182487, 42.680542>,  <29.307762, 32.413010, 42.637943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359196, 32.182487, 42.680542>,  <29.444918, 31.798285, 42.751537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359196, 32.182487, 42.680542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034844, -0.174081, -0.984114,
		-0.976145, -0.217083, 0.003839,
		-0.214303, 0.960505, -0.177493,
		29.294905, 32.470638, 42.627293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866131, 31.831949, 42.345226>,  <29.444918, 31.798285, 42.751537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866131, 31.831949, 42.345226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066730, 32.168308, 42.263851>,  <29.187090, 32.370125, 42.215027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066730, 32.168308, 42.263851>,  <28.866131, 31.831949, 42.345226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066730, 32.168308, 42.263851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253164, -0.082219, -0.963923,
		-0.827288, 0.534912, 0.171652,
		0.501501, 0.840898, -0.203440,
		29.217180, 32.420578, 42.202820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414225, 32.111809, 41.748024>,  <28.866131, 31.831949, 42.345226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414225, 32.111809, 41.748024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750654, 32.326477, 41.720959>,  <28.952513, 32.455276, 41.704720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750654, 32.326477, 41.720959>,  <28.414225, 32.111809, 41.748024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750654, 32.326477, 41.720959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092511, 0.019467, -0.995521,
		-0.532948, 0.843568, 0.066021,
		0.841075, 0.536669, -0.067665,
		29.002977, 32.487476, 41.700661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339094, 32.616276, 41.303856>,  <28.414225, 32.111809, 41.748024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339094, 32.616276, 41.303856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.738878, 32.623646, 41.292992>,  <28.978748, 32.628067, 41.286472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.738878, 32.623646, 41.292992>,  <28.339094, 32.616276, 41.303856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.738878, 32.623646, 41.292992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031157, 0.272656, -0.961607,
		-0.010315, 0.961935, 0.273083,
		0.999461, 0.018427, -0.027158,
		29.038717, 32.629173, 41.284843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635605, 33.266769, 41.180069>,  <28.339094, 32.616276, 41.303856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635605, 33.266769, 41.180069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903324, 33.007923, 41.034039>,  <29.063955, 32.852615, 40.946419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903324, 33.007923, 41.034039>,  <28.635605, 33.266769, 41.180069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903324, 33.007923, 41.034039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046707, 0.527033, -0.848560,
		0.741526, 0.550887, 0.382966,
		0.669297, -0.647117, -0.365078,
		29.104113, 32.813789, 40.924515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009903, 33.637192, 40.590134>,  <28.635605, 33.266769, 41.180069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009903, 33.637192, 40.590134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168943, 33.272209, 40.551476>,  <29.264368, 33.053219, 40.528278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168943, 33.272209, 40.551476>,  <29.009903, 33.637192, 40.590134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168943, 33.272209, 40.551476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114596, 0.153889, -0.981420,
		0.910374, 0.379138, 0.165750,
		0.397601, -0.912454, -0.096649,
		29.288223, 32.998474, 40.522480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558126, 33.755440, 40.274273>,  <29.009903, 33.637192, 40.590134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558126, 33.755440, 40.274273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484924, 33.366901, 40.213615>,  <29.441004, 33.133778, 40.177219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484924, 33.366901, 40.213615>,  <29.558126, 33.755440, 40.274273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484924, 33.366901, 40.213615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095251, 0.136009, -0.986118,
		0.978487, -0.194910, 0.067631,
		-0.183006, -0.971345, -0.151649,
		29.430023, 33.075497, 40.168121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110571, 33.523514, 39.826080>,  <29.558126, 33.755440, 40.274273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110571, 33.523514, 39.826080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780287, 33.300213, 39.793682>,  <29.582117, 33.166233, 39.774242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780287, 33.300213, 39.793682>,  <30.110571, 33.523514, 39.826080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780287, 33.300213, 39.793682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073969, 0.035192, -0.996639,
		0.559224, -0.828926, 0.012234,
		-0.825710, -0.558250, -0.080995,
		29.532574, 33.132736, 39.769382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255957, 33.028194, 39.283009>,  <30.110571, 33.523514, 39.826080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255957, 33.028194, 39.283009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856747, 33.043247, 39.303139>,  <29.617222, 33.052277, 39.315216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856747, 33.043247, 39.303139>,  <30.255957, 33.028194, 39.283009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856747, 33.043247, 39.303139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045881, 0.110909, -0.992771,
		-0.042938, -0.993118, -0.108963,
		-0.998024, 0.037628, 0.050328,
		29.557339, 33.054535, 39.318237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000650, 32.933575, 39.300117>,  <30.255957, 33.028194, 39.283009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000650, 32.933575, 39.300117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397465, 32.968613, 39.263920>,  <31.635553, 32.989635, 39.242203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397465, 32.968613, 39.263920>,  <31.000650, 32.933575, 39.300117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397465, 32.968613, 39.263920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122259, -0.497299, 0.858922,
		0.030238, -0.863146, -0.504049,
		0.992038, 0.087597, -0.090489,
		31.695076, 32.994892, 39.236774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291798, 32.223457, 39.516972>,  <31.000650, 32.933575, 39.300117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291798, 32.223457, 39.516972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584452, 32.496063, 39.523369>,  <31.760044, 32.659626, 39.527206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584452, 32.496063, 39.523369>,  <31.291798, 32.223457, 39.516972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584452, 32.496063, 39.523369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199638, -0.236631, 0.950868,
		0.651812, -0.692494, -0.309183,
		0.731633, 0.681512, 0.015991,
		31.803942, 32.700516, 39.528168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016785, 31.902155, 39.762730>,  <31.291798, 32.223457, 39.516972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016785, 31.902155, 39.762730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994726, 32.288124, 39.865398>,  <31.981491, 32.519707, 39.926998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994726, 32.288124, 39.865398>,  <32.016785, 31.902155, 39.762730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994726, 32.288124, 39.865398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271640, -0.232869, 0.933801,
		0.960818, 0.121218, -0.249270,
		-0.055147, 0.964924, 0.256673,
		31.978182, 32.577602, 39.942402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648178, 31.956171, 40.059883>,  <32.016785, 31.902155, 39.762730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648178, 31.956171, 40.059883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459305, 32.295959, 40.154072>,  <32.345982, 32.499832, 40.210587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459305, 32.295959, 40.154072>,  <32.648178, 31.956171, 40.059883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459305, 32.295959, 40.154072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350070, -0.064455, 0.934503,
		0.809009, 0.523687, -0.266939,
		-0.472181, 0.849469, 0.235472,
		32.317650, 32.550800, 40.224712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111191, 32.265003, 40.523701>,  <32.648178, 31.956171, 40.059883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111191, 32.265003, 40.523701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789398, 32.491161, 40.596504>,  <32.596321, 32.626858, 40.640186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789398, 32.491161, 40.596504>,  <33.111191, 32.265003, 40.523701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789398, 32.491161, 40.596504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301183, 0.124187, 0.945445,
		0.511949, 0.815416, -0.270194,
		-0.804486, 0.565397, 0.182012,
		32.548054, 32.660782, 40.651108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367916, 32.821182, 40.929474>,  <33.111191, 32.265003, 40.523701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367916, 32.821182, 40.929474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974079, 32.776985, 40.983681>,  <32.737778, 32.750465, 41.016205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974079, 32.776985, 40.983681>,  <33.367916, 32.821182, 40.929474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974079, 32.776985, 40.983681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149018, -0.124841, 0.980922,
		-0.091469, 0.986005, 0.139383,
		-0.984595, -0.110495, 0.135514,
		32.678699, 32.743835, 41.024334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175461, 33.233158, 41.407623>,  <33.367916, 32.821182, 40.929474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175461, 33.233158, 41.407623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878056, 32.966560, 41.429440>,  <32.699612, 32.806602, 41.442528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878056, 32.966560, 41.429440>,  <33.175461, 33.233158, 41.407623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878056, 32.966560, 41.429440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114946, -0.047038, 0.992257,
		-0.658764, 0.744029, 0.111584,
		-0.743517, -0.666490, 0.054536,
		32.654999, 32.766613, 41.445801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780987, 33.372704, 41.956619>,  <33.175461, 33.233158, 41.407623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780987, 33.372704, 41.956619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661839, 32.995319, 41.898445>,  <32.590351, 32.768887, 41.863541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661839, 32.995319, 41.898445>,  <32.780987, 33.372704, 41.956619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661839, 32.995319, 41.898445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067322, -0.131207, 0.989066,
		-0.952231, 0.304401, -0.024434,
		-0.297867, -0.943464, -0.145432,
		32.572479, 32.712280, 41.854816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073429, 33.205639, 42.317974>,  <32.780987, 33.372704, 41.956619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073429, 33.205639, 42.317974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301884, 32.880390, 42.272991>,  <32.438957, 32.685242, 42.246002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.301884, 32.880390, 42.272991>,  <32.073429, 33.205639, 42.317974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301884, 32.880390, 42.272991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070985, -0.185410, 0.980094,
		-0.817783, -0.551780, -0.163613,
		0.571132, -0.813119, -0.112457,
		32.473225, 32.636456, 42.239254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795446, 32.809940, 42.763615>,  <32.073429, 33.205639, 42.317974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795446, 32.809940, 42.763615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132290, 32.608017, 42.687698>,  <32.334396, 32.486862, 42.642147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132290, 32.608017, 42.687698>,  <31.795446, 32.809940, 42.763615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132290, 32.608017, 42.687698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083757, -0.225237, 0.970697,
		-0.532762, -0.833331, -0.147393,
		0.842110, -0.504805, -0.189795,
		32.384922, 32.456577, 42.630760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659704, 32.169334, 42.963413>,  <31.795446, 32.809940, 42.763615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659704, 32.169334, 42.963413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058060, 32.203312, 42.950848>,  <32.297073, 32.223698, 42.943306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058060, 32.203312, 42.950848>,  <31.659704, 32.169334, 42.963413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058060, 32.203312, 42.950848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065315, -0.433315, 0.898873,
		0.062736, -0.897231, -0.437082,
		0.995891, 0.084939, -0.031418,
		32.356827, 32.228794, 42.941422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941557, 31.571043, 43.300545>,  <31.659704, 32.169334, 42.963413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941557, 31.571043, 43.300545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215076, 31.862738, 43.310612>,  <32.379189, 32.037754, 43.316650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215076, 31.862738, 43.310612>,  <31.941557, 31.571043, 43.300545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215076, 31.862738, 43.310612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243995, -0.261023, 0.933988,
		0.687666, -0.632521, -0.356417,
		0.683799, 0.729236, 0.025165,
		32.420216, 32.081509, 43.318161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469200, 31.229898, 43.520451>,  <31.941557, 31.571043, 43.300545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469200, 31.229898, 43.520451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554138, 31.610619, 43.608982>,  <32.605103, 31.839050, 43.662102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554138, 31.610619, 43.608982>,  <32.469200, 31.229898, 43.520451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554138, 31.610619, 43.608982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196516, -0.263458, 0.944442,
		0.957230, -0.157057, -0.242989,
		0.212348, 0.951800, 0.221326,
		32.617844, 31.896158, 43.675381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077553, 31.174147, 43.950687>,  <32.469200, 31.229898, 43.520451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077553, 31.174147, 43.950687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943302, 31.541990, 44.032345>,  <32.862751, 31.762697, 44.081341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943302, 31.541990, 44.032345>,  <33.077553, 31.174147, 43.950687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943302, 31.541990, 44.032345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197454, -0.143221, 0.969794,
		0.921068, 0.365797, -0.133512,
		-0.335626, 0.919609, 0.204144,
		32.842613, 31.817873, 44.093590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572720, 31.403690, 44.432980>,  <33.077553, 31.174147, 43.950687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572720, 31.403690, 44.432980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249779, 31.629673, 44.501102>,  <33.056015, 31.765263, 44.541977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.249779, 31.629673, 44.501102>,  <33.572720, 31.403690, 44.432980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249779, 31.629673, 44.501102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096604, -0.158171, 0.982675,
		0.582107, 0.809818, 0.073122,
		-0.807353, 0.564958, 0.170304,
		33.007572, 31.799160, 44.552193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752758, 31.845058, 44.992088>,  <33.572720, 31.403690, 44.432980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752758, 31.845058, 44.992088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352928, 31.849333, 44.981285>,  <33.113029, 31.851896, 44.974804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.352928, 31.849333, 44.981285>,  <33.752758, 31.845058, 44.992088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352928, 31.849333, 44.981285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027038, -0.002877, 0.999630,
		0.010602, 0.999939, 0.003165,
		-0.999578, 0.010684, -0.027006,
		33.053055, 31.852537, 44.973183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564877, 32.263966, 45.550713>,  <33.752758, 31.845058, 44.992088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564877, 32.263966, 45.550713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221138, 32.073883, 45.475140>,  <33.014893, 31.959833, 45.429794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221138, 32.073883, 45.475140>,  <33.564877, 32.263966, 45.550713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221138, 32.073883, 45.475140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283578, 0.135364, 0.949347,
		-0.425562, 0.869399, -0.251084,
		-0.859349, -0.475208, -0.188936,
		32.963333, 31.931320, 45.418457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028572, 32.734100, 45.821098>,  <33.564877, 32.263966, 45.550713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028572, 32.734100, 45.821098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870678, 32.367401, 45.796570>,  <32.775940, 32.147381, 45.781853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870678, 32.367401, 45.796570>,  <33.028572, 32.734100, 45.821098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870678, 32.367401, 45.796570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582484, 0.198081, 0.788338,
		-0.710559, 0.346904, -0.612179,
		-0.394739, -0.916745, -0.061317,
		32.752254, 32.092377, 45.778175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246906, 32.814941, 45.825077>,  <33.028572, 32.734100, 45.821098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246906, 32.814941, 45.825077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341965, 32.439232, 45.924099>,  <32.399002, 32.213806, 45.983513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341965, 32.439232, 45.924099>,  <32.246906, 32.814941, 45.825077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341965, 32.439232, 45.924099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469481, 0.112043, 0.875805,
		-0.850359, -0.324357, -0.414345,
		0.237649, -0.939276, 0.247556,
		32.413258, 32.157448, 45.998367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609135, 32.584858, 46.213573>,  <32.246906, 32.814941, 45.825077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609135, 32.584858, 46.213573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898264, 32.332512, 46.326382>,  <32.071743, 32.181103, 46.394066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898264, 32.332512, 46.326382>,  <31.609135, 32.584858, 46.213573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898264, 32.332512, 46.326382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344930, 0.024250, 0.938315,
		-0.598791, -0.775512, -0.200076,
		0.722823, -0.630867, 0.282019,
		32.115112, 32.143253, 46.410988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288000, 32.042198, 46.585720>,  <31.609135, 32.584858, 46.213573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288000, 32.042198, 46.585720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668625, 32.015247, 46.705715>,  <31.896999, 31.999077, 46.777714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668625, 32.015247, 46.705715>,  <31.288000, 32.042198, 46.585720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668625, 32.015247, 46.705715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294378, 0.081931, 0.952171,
		-0.088734, -0.994358, 0.058128,
		0.951561, -0.067378, 0.299987,
		31.954094, 31.995035, 46.795712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294964, 31.528118, 47.098324>,  <31.288000, 32.042198, 46.585720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294964, 31.528118, 47.098324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619265, 31.755896, 47.152599>,  <31.813847, 31.892563, 47.185165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619265, 31.755896, 47.152599>,  <31.294964, 31.528118, 47.098324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619265, 31.755896, 47.152599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155986, -0.013252, 0.987670,
		0.564221, -0.821923, 0.078082,
		0.810755, 0.569444, 0.135686,
		31.862492, 31.926729, 47.193306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682096, 31.170111, 47.635132>,  <31.294964, 31.528118, 47.098324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682096, 31.170111, 47.635132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837318, 31.538755, 47.637867>,  <31.930450, 31.759943, 47.639507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837318, 31.538755, 47.637867>,  <31.682096, 31.170111, 47.635132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837318, 31.538755, 47.637867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028345, 0.004514, 0.999588,
		0.921201, -0.388087, 0.027875,
		0.388053, 0.921612, 0.006842,
		31.953735, 31.815239, 47.639919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256744, 31.153912, 48.131569>,  <31.682096, 31.170111, 47.635132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256744, 31.153912, 48.131569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199142, 31.547953, 48.093971>,  <32.164581, 31.784378, 48.071411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.199142, 31.547953, 48.093971>,  <32.256744, 31.153912, 48.131569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199142, 31.547953, 48.093971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214977, 0.123860, 0.968733,
		0.965944, 0.119298, -0.229611,
		-0.144007, 0.985102, -0.093995,
		32.155941, 31.843483, 48.065773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879086, 31.526897, 48.545612>,  <32.256744, 31.153912, 48.131569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879086, 31.526897, 48.545612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578888, 31.789005, 48.511234>,  <32.398769, 31.946270, 48.490608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578888, 31.789005, 48.511234>,  <32.879086, 31.526897, 48.545612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578888, 31.789005, 48.511234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014884, 0.146773, 0.989058,
		0.660714, 0.740999, -0.119904,
		-0.750490, 0.655269, -0.085946,
		32.353741, 31.985586, 48.485451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043152, 32.134068, 48.908386>,  <32.879086, 31.526897, 48.545612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043152, 32.134068, 48.908386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645008, 32.113926, 48.875568>,  <32.406124, 32.101841, 48.855877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645008, 32.113926, 48.875568>,  <33.043152, 32.134068, 48.908386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645008, 32.113926, 48.875568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090203, 0.190181, 0.977596,
		-0.033619, 0.980457, -0.193839,
		-0.995356, -0.050350, -0.082047,
		32.346401, 32.098820, 48.850956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773746, 32.792274, 49.248295>,  <33.043152, 32.134068, 48.908386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773746, 32.792274, 49.248295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480270, 32.520500, 49.251675>,  <32.304184, 32.357437, 49.253704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480270, 32.520500, 49.251675>,  <32.773746, 32.792274, 49.248295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480270, 32.520500, 49.251675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116072, 0.137577, 0.983667,
		-0.669498, 0.720725, -0.179802,
		-0.733689, -0.679433, 0.008451,
		32.260162, 32.316669, 49.254211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189888, 33.144897, 49.576866>,  <32.773746, 32.792274, 49.248295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189888, 33.144897, 49.576866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117016, 32.753700, 49.617550>,  <32.073292, 32.518982, 49.641960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117016, 32.753700, 49.617550>,  <32.189888, 33.144897, 49.576866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117016, 32.753700, 49.617550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047618, 0.112094, 0.992556,
		-0.982111, 0.175982, -0.066991,
		-0.182181, -0.977990, 0.101709,
		32.062363, 32.460304, 49.648064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575621, 33.018055, 50.038166>,  <32.189888, 33.144897, 49.576866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575621, 33.018055, 50.038166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766077, 32.666313, 50.035976>,  <31.880352, 32.455269, 50.034664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766077, 32.666313, 50.035976>,  <31.575621, 33.018055, 50.038166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766077, 32.666313, 50.035976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145336, -0.084830, 0.985739,
		-0.867275, -0.468556, -0.168193,
		0.476142, -0.879351, -0.005473,
		31.908920, 32.402508, 50.034336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207680, 32.674816, 50.553974>,  <31.575621, 33.018055, 50.038166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207680, 32.674816, 50.553974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544117, 32.459492, 50.532852>,  <31.745979, 32.330299, 50.520180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544117, 32.459492, 50.532852>,  <31.207680, 32.674816, 50.553974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544117, 32.459492, 50.532852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001432, -0.095402, 0.995438,
		-0.540888, -0.837331, -0.079471,
		0.841093, -0.538307, -0.052800,
		31.796446, 32.298000, 50.517014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116306, 32.022358, 50.982597>,  <31.207680, 32.674816, 50.553974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116306, 32.022358, 50.982597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513300, 32.065891, 50.960201>,  <31.751495, 32.092010, 50.946766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513300, 32.065891, 50.960201>,  <31.116306, 32.022358, 50.982597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513300, 32.065891, 50.960201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059042, -0.025052, 0.997941,
		0.107207, -0.993744, -0.031289,
		0.992482, 0.108834, -0.055987,
		31.811045, 32.098541, 50.943405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423948, 31.609337, 51.483131>,  <31.116306, 32.022358, 50.982597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423948, 31.609337, 51.483131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747700, 31.839451, 51.435886>,  <31.941952, 31.977518, 51.407539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747700, 31.839451, 51.435886>,  <31.423948, 31.609337, 51.483131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747700, 31.839451, 51.435886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263225, -0.175574, 0.948623,
		0.524990, -0.798888, -0.293535,
		0.809381, 0.575284, -0.118113,
		31.990515, 32.012035, 51.400452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079002, 31.176859, 51.759125>,  <31.423948, 31.609337, 51.483131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079002, 31.176859, 51.759125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165440, 31.567394, 51.762474>,  <32.217300, 31.801716, 51.764484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165440, 31.567394, 51.762474>,  <32.079002, 31.176859, 51.759125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165440, 31.567394, 51.762474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326021, -0.080235, 0.941951,
		0.920334, -0.200818, -0.335645,
		0.216091, 0.976337, 0.008372,
		32.230267, 31.860296, 51.764984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825806, 31.226280, 52.052559>,  <32.079002, 31.176859, 51.759125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825806, 31.226280, 52.052559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681290, 31.595955, 52.102108>,  <32.594582, 31.817760, 52.131840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681290, 31.595955, 52.102108>,  <32.825806, 31.226280, 52.052559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681290, 31.595955, 52.102108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386882, 0.027698, 0.921713,
		0.848405, 0.380933, -0.367559,
		-0.361291, 0.924188, 0.123877,
		32.572903, 31.873211, 52.139271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389381, 31.702351, 52.295689>,  <32.825806, 31.226280, 52.052559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389381, 31.702351, 52.295689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039913, 31.872961, 52.389297>,  <32.830231, 31.975327, 52.445465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039913, 31.872961, 52.389297>,  <33.389381, 31.702351, 52.295689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039913, 31.872961, 52.389297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352553, 0.223571, 0.908693,
		0.335258, 0.876409, -0.345701,
		-0.873675, 0.426525, 0.234026,
		32.777809, 32.000919, 52.459507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558823, 32.284718, 52.747879>,  <33.389381, 31.702351, 52.295689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558823, 32.284718, 52.747879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167019, 32.229618, 52.806656>,  <32.931938, 32.196560, 52.841923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167019, 32.229618, 52.806656>,  <33.558823, 32.284718, 52.747879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167019, 32.229618, 52.806656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107021, 0.262096, 0.959089,
		-0.170627, 0.955160, -0.241983,
		-0.979507, -0.137749, 0.146942,
		32.873165, 32.188293, 52.850739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353214, 32.793690, 53.136024>,  <33.558823, 32.284718, 52.747879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353214, 32.793690, 53.136024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040768, 32.553391, 53.204102>,  <32.853302, 32.409210, 53.244946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040768, 32.553391, 53.204102>,  <33.353214, 32.793690, 53.136024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040768, 32.553391, 53.204102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029040, 0.307226, 0.951194,
		-0.623713, 0.738048, -0.257424,
		-0.781114, -0.600747, 0.170188,
		32.806435, 32.373165, 53.255157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858978, 33.199482, 53.599964>,  <33.353214, 32.793690, 53.136024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858978, 33.199482, 53.599964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784702, 32.807400, 53.627449>,  <32.740135, 32.572151, 53.643940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784702, 32.807400, 53.627449>,  <32.858978, 33.199482, 53.599964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784702, 32.807400, 53.627449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028881, 0.075343, 0.996739,
		-0.982183, 0.183104, -0.042300,
		-0.185694, -0.980202, 0.068712,
		32.728992, 32.513340, 53.648064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456413, 33.547939, 53.775860>,  <32.858978, 33.199482, 53.599964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456413, 33.547939, 53.775860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851494, 33.573898, 53.832767>,  <34.088543, 33.589474, 53.866913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851494, 33.573898, 53.832767>,  <33.456413, 33.547939, 53.775860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851494, 33.573898, 53.832767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127021, 0.197661, -0.972006,
		-0.091198, 0.978120, 0.186986,
		0.987699, 0.064894, 0.142268,
		34.147804, 33.593365, 53.875446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711098, 33.999809, 53.219170>,  <33.456413, 33.547939, 53.775860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711098, 33.999809, 53.219170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043266, 33.823303, 53.355217>,  <34.242569, 33.717400, 53.436848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043266, 33.823303, 53.355217>,  <33.711098, 33.999809, 53.219170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043266, 33.823303, 53.355217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467930, 0.221067, -0.855670,
		0.302383, 0.869723, 0.390059,
		0.830425, -0.441260, 0.340123,
		34.292393, 33.690926, 53.457253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274982, 34.439728, 52.968002>,  <33.711098, 33.999809, 53.219170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274982, 34.439728, 52.968002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421436, 34.071255, 53.020714>,  <34.509308, 33.850170, 53.052341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421436, 34.071255, 53.020714>,  <34.274982, 34.439728, 52.968002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421436, 34.071255, 53.020714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480848, 0.066043, -0.874313,
		0.796702, 0.383478, 0.467131,
		0.366130, -0.921186, 0.131778,
		34.531277, 33.794899, 53.060246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977406, 34.476566, 52.768509>,  <34.274982, 34.439728, 52.968002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977406, 34.476566, 52.768509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887058, 34.087307, 52.750782>,  <34.832851, 33.853752, 52.740147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887058, 34.087307, 52.750782>,  <34.977406, 34.476566, 52.768509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887058, 34.087307, 52.750782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428645, -0.058431, -0.901582,
		0.874785, -0.222630, 0.430333,
		-0.225864, -0.973151, -0.044315,
		34.819298, 33.795361, 52.737488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488979, 34.265884, 52.416676>,  <34.977406, 34.476566, 52.768509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488979, 34.265884, 52.416676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199520, 33.990685, 52.394810>,  <35.025845, 33.825565, 52.381691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199520, 33.990685, 52.394810>,  <35.488979, 34.265884, 52.416676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199520, 33.990685, 52.394810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141780, -0.070678, -0.987372,
		0.675449, -0.722260, 0.148691,
		-0.723649, -0.688000, -0.054662,
		34.982426, 33.784283, 52.378410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819347, 33.853382, 52.029148>,  <35.488979, 34.265884, 52.416676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819347, 33.853382, 52.029148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436634, 33.750355, 51.975136>,  <35.207008, 33.688538, 51.942726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436634, 33.750355, 51.975136>,  <35.819347, 33.853382, 52.029148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436634, 33.750355, 51.975136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166480, -0.104379, -0.980505,
		0.238449, -0.960607, 0.142747,
		-0.956779, -0.257565, -0.135033,
		35.149601, 33.673084, 51.934628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869312, 33.263000, 51.647411>,  <35.819347, 33.853382, 52.029148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869312, 33.263000, 51.647411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494648, 33.391346, 51.591244>,  <35.269848, 33.468353, 51.557541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494648, 33.391346, 51.591244>,  <35.869312, 33.263000, 51.647411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494648, 33.391346, 51.591244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112164, -0.105017, -0.988125,
		-0.331796, -0.941287, 0.062376,
		-0.936659, 0.320859, -0.140423,
		35.213650, 33.487602, 51.549118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571747, 32.796078, 51.205017>,  <35.869312, 33.263000, 51.647411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571747, 32.796078, 51.205017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369957, 33.141293, 51.194618>,  <35.248882, 33.348419, 51.188377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.369957, 33.141293, 51.194618>,  <35.571747, 32.796078, 51.205017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369957, 33.141293, 51.194618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050821, -0.059737, -0.996920,
		-0.861929, -0.501600, 0.073996,
		-0.504475, 0.863034, -0.025997,
		35.218613, 33.400204, 51.186821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071358, 32.568718, 50.723171>,  <35.571747, 32.796078, 51.205017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071358, 32.568718, 50.723171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059414, 32.967648, 50.749851>,  <35.052246, 33.207005, 50.765858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059414, 32.967648, 50.749851>,  <35.071358, 32.568718, 50.723171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059414, 32.967648, 50.749851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071145, 0.064440, -0.995382,
		-0.997019, -0.034469, 0.069031,
		-0.029862, 0.997326, 0.066700,
		35.050457, 33.266846, 50.769863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.544113, 32.737522, 50.360550>,  <35.071358, 32.568718, 50.723171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.544113, 32.737522, 50.360550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779072, 33.059750, 50.391602>,  <34.920048, 33.253086, 50.410233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779072, 33.059750, 50.391602>,  <34.544113, 32.737522, 50.360550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779072, 33.059750, 50.391602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055466, 0.055626, -0.996910,
		-0.807395, 0.589889, -0.012007,
		0.587398, 0.805566, 0.077631,
		34.955292, 33.301418, 50.414890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152180, 33.245617, 49.978004>,  <34.544113, 32.737522, 50.360550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152180, 33.245617, 49.978004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533234, 33.366104, 49.994751>,  <34.761868, 33.438396, 50.004799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533234, 33.366104, 49.994751>,  <34.152180, 33.245617, 49.978004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533234, 33.366104, 49.994751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012838, 0.177377, -0.984059,
		-0.303841, 0.936913, 0.172843,
		0.952636, 0.301216, 0.041867,
		34.819023, 33.456470, 50.007313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159973, 33.905853, 49.583836>,  <34.152180, 33.245617, 49.978004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159973, 33.905853, 49.583836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548210, 33.812943, 49.609146>,  <34.781151, 33.757195, 49.624332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548210, 33.812943, 49.609146>,  <34.159973, 33.905853, 49.583836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548210, 33.812943, 49.609146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147241, 0.364792, -0.919373,
		0.190470, 0.901650, 0.388264,
		0.970588, -0.232281, 0.063278,
		34.839386, 33.743259, 49.628128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399059, 34.472134, 49.299416>,  <34.159973, 33.905853, 49.583836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399059, 34.472134, 49.299416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663319, 34.172356, 49.282097>,  <34.821873, 33.992489, 49.271706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663319, 34.172356, 49.282097>,  <34.399059, 34.472134, 49.299416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663319, 34.172356, 49.282097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167422, 0.203310, -0.964694,
		0.731789, 0.630075, 0.259790,
		0.660648, -0.749447, -0.043292,
		34.861511, 33.947521, 49.269108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879406, 34.724525, 48.915676>,  <34.399059, 34.472134, 49.299416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879406, 34.724525, 48.915676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934097, 34.328651, 48.898548>,  <34.966911, 34.091129, 48.888271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934097, 34.328651, 48.898548>,  <34.879406, 34.724525, 48.915676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934097, 34.328651, 48.898548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257254, 0.077215, -0.963254,
		0.956623, 0.120685, 0.265157,
		0.136724, -0.989683, -0.042819,
		34.975113, 34.031746, 48.885704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484901, 34.575642, 48.586906>,  <34.879406, 34.724525, 48.915676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484901, 34.575642, 48.586906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264126, 34.247345, 48.527912>,  <35.131660, 34.050369, 48.492516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264126, 34.247345, 48.527912>,  <35.484901, 34.575642, 48.586906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264126, 34.247345, 48.527912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253403, 0.003418, -0.967355,
		0.794448, -0.571296, 0.206091,
		-0.551941, -0.820737, -0.147483,
		35.098545, 34.001125, 48.483665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875832, 34.225716, 48.102707>,  <35.484901, 34.575642, 48.586906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875832, 34.225716, 48.102707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520309, 34.043587, 48.081928>,  <35.306995, 33.934307, 48.069462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.520309, 34.043587, 48.081928>,  <35.875832, 34.225716, 48.102707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520309, 34.043587, 48.081928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074688, -0.032072, -0.996691,
		0.452154, -0.889747, 0.062513,
		-0.888808, -0.455327, -0.051951,
		35.253666, 33.906990, 48.066341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977798, 33.788586, 47.510033>,  <35.875832, 34.225716, 48.102707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977798, 33.788586, 47.510033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582481, 33.748943, 47.556438>,  <35.345291, 33.725159, 47.584282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582481, 33.748943, 47.556438>,  <35.977798, 33.788586, 47.510033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582481, 33.748943, 47.556438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107785, -0.084735, -0.990557,
		0.108006, -0.991462, 0.073060,
		-0.988290, -0.099111, 0.116016,
		35.285995, 33.719212, 47.591244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761589, 33.128532, 47.158424>,  <35.977798, 33.788586, 47.510033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761589, 33.128532, 47.158424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441181, 33.362801, 47.207981>,  <35.248936, 33.503361, 47.237713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.441181, 33.362801, 47.207981>,  <35.761589, 33.128532, 47.158424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441181, 33.362801, 47.207981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283675, -0.189125, -0.940085,
		-0.527152, -0.788175, 0.317634,
		-0.801024, 0.585673, 0.123888,
		35.200874, 33.538502, 47.245148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129265, 32.829731, 46.899658>,  <35.761589, 33.128532, 47.158424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129265, 32.829731, 46.899658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006870, 33.209858, 46.876797>,  <34.933434, 33.437935, 46.863079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006870, 33.209858, 46.876797>,  <35.129265, 32.829731, 46.899658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006870, 33.209858, 46.876797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443857, -0.195510, -0.874510,
		-0.842236, -0.242224, 0.481629,
		-0.305991, 0.950317, -0.057153,
		34.915073, 33.494953, 46.859650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529613, 32.756924, 46.496639>,  <35.129265, 32.829731, 46.899658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529613, 32.756924, 46.496639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612576, 33.148117, 46.487389>,  <34.662354, 33.382832, 46.481838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612576, 33.148117, 46.487389>,  <34.529613, 32.756924, 46.496639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612576, 33.148117, 46.487389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431616, 0.070267, -0.899317,
		-0.877889, 0.196508, 0.436686,
		0.207408, 0.977981, -0.023130,
		34.674797, 33.441513, 46.480450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887413, 33.102692, 46.313778>,  <34.529613, 32.756924, 46.496639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887413, 33.102692, 46.313778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171597, 33.368198, 46.220257>,  <34.342106, 33.527500, 46.164146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.171597, 33.368198, 46.220257>,  <33.887413, 33.102692, 46.313778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171597, 33.368198, 46.220257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423098, 0.137405, -0.895605,
		-0.562345, 0.735213, 0.378458,
		0.710462, 0.663763, -0.233799,
		34.384735, 33.567326, 46.150116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516399, 33.635345, 45.927811>,  <33.887413, 33.102692, 46.313778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516399, 33.635345, 45.927811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906940, 33.667130, 45.847389>,  <34.141266, 33.686199, 45.799137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906940, 33.667130, 45.847389>,  <33.516399, 33.635345, 45.927811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906940, 33.667130, 45.847389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211322, 0.154677, -0.965100,
		-0.045589, 0.984764, 0.167811,
		0.976353, 0.079460, -0.201051,
		34.199848, 33.690968, 45.787075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665073, 34.207588, 45.511433>,  <33.516399, 33.635345, 45.927811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665073, 34.207588, 45.511433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983406, 34.006218, 45.376846>,  <34.174404, 33.885395, 45.296093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983406, 34.006218, 45.376846>,  <33.665073, 34.207588, 45.511433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983406, 34.006218, 45.376846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222533, 0.273621, -0.935741,
		0.563144, 0.819567, 0.105727,
		0.795832, -0.503429, -0.336468,
		34.222157, 33.855190, 45.275906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744919, 34.551525, 44.931576>,  <33.665073, 34.207588, 45.511433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744919, 34.551525, 44.931576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969162, 34.223999, 44.882168>,  <34.103706, 34.027481, 44.852524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969162, 34.223999, 44.882168>,  <33.744919, 34.551525, 44.931576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969162, 34.223999, 44.882168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030708, 0.128508, -0.991233,
		0.827513, 0.559485, 0.046898,
		0.560606, -0.818818, -0.123523,
		34.137344, 33.978355, 44.845112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159519, 34.797798, 44.480591>,  <33.744919, 34.551525, 44.931576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159519, 34.797798, 44.480591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212215, 34.401684, 44.462788>,  <34.243832, 34.164017, 44.452106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212215, 34.401684, 44.462788>,  <34.159519, 34.797798, 44.480591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212215, 34.401684, 44.462788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172049, 0.067061, -0.982803,
		0.976239, 0.121817, 0.179213,
		0.131740, -0.990285, -0.044509,
		34.251736, 34.104599, 44.449436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808235, 34.698631, 44.151016>,  <34.159519, 34.797798, 44.480591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808235, 34.698631, 44.151016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568058, 34.383137, 44.098320>,  <34.423950, 34.193840, 44.066704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568058, 34.383137, 44.098320>,  <34.808235, 34.698631, 44.151016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568058, 34.383137, 44.098320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217687, -0.002702, -0.976015,
		0.769465, -0.614722, 0.173321,
		-0.600446, -0.788739, -0.131738,
		34.387924, 34.146515, 44.058800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319088, 34.248974, 43.840435>,  <34.808235, 34.698631, 44.151016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319088, 34.248974, 43.840435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947380, 34.131649, 43.750614>,  <34.724354, 34.061256, 43.696720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947380, 34.131649, 43.750614>,  <35.319088, 34.248974, 43.840435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947380, 34.131649, 43.750614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248687, -0.047236, -0.967431,
		0.273150, -0.954850, 0.116837,
		-0.929271, -0.293310, -0.224556,
		34.668598, 34.043655, 43.683247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400185, 33.722698, 43.455154>,  <35.319088, 34.248974, 43.840435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400185, 33.722698, 43.455154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026314, 33.821262, 43.352654>,  <34.801991, 33.880402, 43.291153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026314, 33.821262, 43.352654>,  <35.400185, 33.722698, 43.455154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026314, 33.821262, 43.352654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243509, -0.081392, -0.966477,
		-0.259008, -0.965741, 0.016072,
		-0.934676, 0.246411, -0.256248,
		34.745911, 33.895187, 43.275780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353073, 33.394978, 42.927773>,  <35.400185, 33.722698, 43.455154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353073, 33.394978, 42.927773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032272, 33.629955, 42.884502>,  <34.839790, 33.770943, 42.858540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.032272, 33.629955, 42.884502>,  <35.353073, 33.394978, 42.927773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032272, 33.629955, 42.884502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160071, 0.036891, -0.986416,
		-0.575473, -0.808424, -0.123620,
		-0.802003, 0.587444, -0.108176,
		34.791672, 33.806187, 42.852051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006062, 33.118893, 42.427078>,  <35.353073, 33.394978, 42.927773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006062, 33.118893, 42.427078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880669, 33.498688, 42.432617>,  <34.805431, 33.726566, 42.435940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880669, 33.498688, 42.432617>,  <35.006062, 33.118893, 42.427078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880669, 33.498688, 42.432617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285045, 0.108004, -0.952410,
		-0.905802, -0.294618, -0.304506,
		-0.313485, 0.949492, 0.013851,
		34.786621, 33.783535, 42.436771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621597, 33.216103, 41.807301>,  <35.006062, 33.118893, 42.427078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621597, 33.216103, 41.807301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746159, 33.575340, 41.931526>,  <34.820896, 33.790882, 42.006062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746159, 33.575340, 41.931526>,  <34.621597, 33.216103, 41.807301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746159, 33.575340, 41.931526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444469, 0.151209, -0.882940,
		-0.839927, 0.412983, -0.352090,
		0.311400, 0.898098, 0.310563,
		34.839581, 33.844769, 42.024696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435173, 33.600563, 41.253292>,  <34.621597, 33.216103, 41.807301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435173, 33.600563, 41.253292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719799, 33.794487, 41.456715>,  <34.890575, 33.910843, 41.578770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719799, 33.794487, 41.456715>,  <34.435173, 33.600563, 41.253292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719799, 33.794487, 41.456715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484940, 0.184885, -0.854781,
		-0.508431, 0.854855, -0.103545,
		0.711569, 0.484810, 0.508555,
		34.933270, 33.939930, 41.609280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607353, 34.199226, 40.826756>,  <34.435173, 33.600563, 41.253292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607353, 34.199226, 40.826756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907284, 34.209808, 41.091198>,  <35.087242, 34.216156, 41.249863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.907284, 34.209808, 41.091198>,  <34.607353, 34.199226, 40.826756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907284, 34.209808, 41.091198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607411, 0.368624, -0.703682,
		-0.262314, 0.929202, 0.260335,
		0.749829, 0.026455, 0.661103,
		35.132233, 34.217747, 41.289528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771019, 34.827526, 40.716011>,  <34.607353, 34.199226, 40.826756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771019, 34.827526, 40.716011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080109, 34.628143, 40.873199>,  <35.265564, 34.508514, 40.967514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080109, 34.628143, 40.873199>,  <34.771019, 34.827526, 40.716011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080109, 34.628143, 40.873199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618574, 0.452547, -0.642314,
		0.142328, 0.739418, 0.658030,
		0.772728, -0.498460, 0.392974,
		35.311928, 34.478607, 40.991093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192856, 35.334175, 40.768105>,  <34.771019, 34.827526, 40.716011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192856, 35.334175, 40.768105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415909, 35.003941, 40.802616>,  <35.549740, 34.805798, 40.823322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415909, 35.003941, 40.802616>,  <35.192856, 35.334175, 40.768105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415909, 35.003941, 40.802616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735394, 0.443134, -0.512668,
		0.385019, 0.349332, 0.854241,
		0.557634, -0.825591, 0.086282,
		35.583199, 34.756264, 40.828499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800087, 35.588379, 40.991745>,  <35.192856, 35.334175, 40.768105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800087, 35.588379, 40.991745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925987, 35.239208, 40.842655>,  <36.001530, 35.029705, 40.753201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925987, 35.239208, 40.842655>,  <35.800087, 35.588379, 40.991745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925987, 35.239208, 40.842655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771735, 0.463968, -0.434923,
		0.552589, -0.150748, 0.819708,
		0.314755, -0.872931, -0.372721,
		36.020412, 34.977329, 40.730839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447990, 35.699619, 40.973129>,  <35.800087, 35.588379, 40.991745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447990, 35.699619, 40.973129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400181, 35.393097, 40.720627>,  <36.371494, 35.209183, 40.569126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400181, 35.393097, 40.720627>,  <36.447990, 35.699619, 40.973129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400181, 35.393097, 40.720627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586055, 0.458767, -0.667886,
		0.801407, -0.449778, 0.394267,
		-0.119524, -0.766311, -0.631254,
		36.364323, 35.163204, 40.531250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154808, 35.412373, 40.717480>,  <36.447990, 35.699619, 40.973129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154808, 35.412373, 40.717480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.866272, 35.366901, 40.444206>,  <36.693150, 35.339619, 40.280243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.866272, 35.366901, 40.444206>,  <37.154808, 35.412373, 40.717480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866272, 35.366901, 40.444206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588020, 0.420654, -0.690856,
		0.365915, -0.900072, -0.236595,
		-0.721345, -0.113672, -0.683184,
		36.649868, 35.332798, 40.239250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565517, 35.478344, 40.116493>,  <37.154808, 35.412373, 40.717480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565517, 35.478344, 40.116493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198475, 35.445465, 39.960938>,  <36.978249, 35.425739, 39.867603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198475, 35.445465, 39.960938>,  <37.565517, 35.478344, 40.116493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198475, 35.445465, 39.960938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318598, 0.432926, -0.843250,
		0.237670, -0.897675, -0.371071,
		-0.917610, -0.082193, -0.388890,
		36.923191, 35.420807, 39.844269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627861, 35.132202, 39.519981>,  <37.565517, 35.478344, 40.116493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627861, 35.132202, 39.519981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311440, 35.376686, 39.509724>,  <37.121586, 35.523376, 39.503567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311440, 35.376686, 39.509724>,  <37.627861, 35.132202, 39.519981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311440, 35.376686, 39.509724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379976, 0.458056, -0.803619,
		-0.479435, -0.645448, -0.594591,
		-0.791050, 0.611213, -0.025646,
		37.074123, 35.560051, 39.502029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616936, 35.259144, 38.843655>,  <37.627861, 35.132202, 39.519981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616936, 35.259144, 38.843655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382496, 35.551861, 38.982777>,  <37.241833, 35.727493, 39.066250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382496, 35.551861, 38.982777>,  <37.616936, 35.259144, 38.843655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382496, 35.551861, 38.982777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369007, 0.623237, -0.689500,
		-0.721337, -0.275771, -0.635314,
		-0.586095, 0.731797, 0.347802,
		37.206669, 35.771400, 39.087116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255398, 35.459293, 38.357861>,  <37.616936, 35.259144, 38.843655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255398, 35.459293, 38.357861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224827, 35.172405, 38.080803>,  <38.206486, 35.000275, 37.914566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224827, 35.172405, 38.080803>,  <38.255398, 35.459293, 38.357861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224827, 35.172405, 38.080803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485319, 0.580074, -0.654202,
		0.870991, -0.386153, 0.303746,
		-0.076427, -0.717217, -0.692646,
		38.201900, 34.957241, 37.873009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963821, 35.292622, 38.167980>,  <38.255398, 35.459293, 38.357861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963821, 35.292622, 38.167980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664055, 35.238720, 37.908684>,  <38.484196, 35.206379, 37.753105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664055, 35.238720, 37.908684>,  <38.963821, 35.292622, 38.167980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664055, 35.238720, 37.908684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513433, 0.499903, -0.697484,
		0.418047, -0.855534, -0.305448,
		-0.749415, -0.134754, -0.648242,
		38.439232, 35.198292, 37.714211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463486, 34.789165, 37.882401>,  <38.963821, 35.292622, 38.167980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463486, 34.789165, 37.882401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180584, 34.817715, 38.163738>,  <39.010841, 34.834846, 38.332542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180584, 34.817715, 38.163738>,  <39.463486, 34.789165, 37.882401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180584, 34.817715, 38.163738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333593, -0.843467, 0.421044,
		0.623301, 0.532417, 0.572738,
		-0.707257, 0.071376, 0.703345,
		38.968407, 34.839127, 38.374741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826099, 34.561066, 38.567318>,  <39.463486, 34.789165, 37.882401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826099, 34.561066, 38.567318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442879, 34.446827, 38.576855>,  <39.212944, 34.378284, 38.582577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.442879, 34.446827, 38.576855>,  <39.826099, 34.561066, 38.567318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.442879, 34.446827, 38.576855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270287, -0.872768, 0.406474,
		-0.095281, 0.395868, 0.913351,
		-0.958053, -0.285596, 0.023840,
		39.155464, 34.361149, 38.584007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297081, 33.935570, 38.720612>,  <39.826099, 34.561066, 38.567318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297081, 33.935570, 38.720612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527515, 33.904373, 39.046078>,  <40.665775, 33.885654, 39.241356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527515, 33.904373, 39.046078>,  <40.297081, 33.935570, 38.720612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527515, 33.904373, 39.046078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099405, 0.981365, 0.164443,
		-0.811325, -0.175615, 0.557594,
		0.576082, -0.077989, 0.813663,
		40.700340, 33.880978, 39.290176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029175, 34.020481, 38.426647>,  <40.297081, 33.935570, 38.720612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029175, 34.020481, 38.426647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827820, 34.338726, 38.561470>,  <40.707008, 34.529671, 38.642365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827820, 34.338726, 38.561470>,  <41.029175, 34.020481, 38.426647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827820, 34.338726, 38.561470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130152, 0.455451, -0.880695,
		-0.854204, -0.399459, -0.332818,
		-0.503384, 0.795611, 0.337058,
		40.676804, 34.577408, 38.662586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477676, 34.340279, 38.006504>,  <41.029175, 34.020481, 38.426647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477676, 34.340279, 38.006504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837345, 34.513214, 38.033569>,  <42.053146, 34.616974, 38.049809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837345, 34.513214, 38.033569>,  <41.477676, 34.340279, 38.006504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837345, 34.513214, 38.033569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404610, 0.880285, -0.247767,
		-0.166680, 0.195409, 0.966454,
		0.899171, 0.432335, 0.067661,
		42.107098, 34.642914, 38.053867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383080, 34.958435, 38.331779>,  <41.477676, 34.340279, 38.006504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383080, 34.958435, 38.331779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714676, 35.026241, 38.118595>,  <41.913631, 35.066925, 37.990685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.714676, 35.026241, 38.118595>,  <41.383080, 34.958435, 38.331779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714676, 35.026241, 38.118595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424225, 0.811575, -0.401719,
		0.364437, 0.559114, 0.744699,
		0.828986, 0.169519, -0.532959,
		41.963371, 35.077099, 37.958706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.656693, 35.575752, 38.592117>,  <41.383080, 34.958435, 38.331779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.656693, 35.575752, 38.592117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794193, 35.521084, 38.220493>,  <41.876694, 35.488281, 37.997517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794193, 35.521084, 38.220493>,  <41.656693, 35.575752, 38.592117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794193, 35.521084, 38.220493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307960, 0.918232, -0.249020,
		0.887129, 0.371715, 0.273551,
		0.343748, -0.136670, -0.929063,
		41.897316, 35.480083, 37.941772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951675, 36.202179, 38.428638>,  <41.656693, 35.575752, 38.592117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951675, 36.202179, 38.428638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872925, 36.016972, 38.082954>,  <41.825676, 35.905846, 37.875546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872925, 36.016972, 38.082954>,  <41.951675, 36.202179, 38.428638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872925, 36.016972, 38.082954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456099, 0.823523, -0.337317,
		0.867879, 0.327757, -0.373311,
		-0.196873, -0.463017, -0.864208,
		41.813862, 35.878067, 37.823692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091717, 36.718998, 37.897648>,  <41.951675, 36.202179, 38.428638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091717, 36.718998, 37.897648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877480, 36.444771, 37.700413>,  <41.748936, 36.280235, 37.582073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877480, 36.444771, 37.700413>,  <42.091717, 36.718998, 37.897648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877480, 36.444771, 37.700413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473192, 0.727265, -0.497167,
		0.699448, -0.032954, -0.713923,
		-0.535595, -0.685565, -0.493090,
		41.716801, 36.239101, 37.552486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100914, 36.925407, 37.151379>,  <42.091717, 36.718998, 37.897648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100914, 36.925407, 37.151379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783535, 36.693001, 37.223888>,  <41.593109, 36.553555, 37.267395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783535, 36.693001, 37.223888>,  <42.100914, 36.925407, 37.151379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783535, 36.693001, 37.223888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536987, 0.528067, -0.657868,
		0.286511, -0.619323, -0.730993,
		-0.793446, -0.581020, 0.181272,
		41.545502, 36.518696, 37.278271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722851, 37.018517, 36.580429>,  <42.100914, 36.925407, 37.151379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722851, 37.018517, 36.580429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456772, 36.858532, 36.832634>,  <41.297123, 36.762543, 36.983955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.456772, 36.858532, 36.832634>,  <41.722851, 37.018517, 36.580429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456772, 36.858532, 36.832634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743864, 0.428068, -0.513248,
		-0.064625, -0.810427, -0.582264,
		-0.665199, -0.399957, 0.630512,
		41.257214, 36.738544, 37.021786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284714, 36.663300, 36.161873>,  <41.722851, 37.018517, 36.580429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284714, 36.663300, 36.161873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058701, 36.724312, 36.486210>,  <40.923092, 36.760921, 36.680813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058701, 36.724312, 36.486210>,  <41.284714, 36.663300, 36.161873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058701, 36.724312, 36.486210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668368, 0.491598, -0.558226,
		-0.483759, -0.857359, -0.175820,
		-0.565033, 0.152534, 0.810846,
		40.889191, 36.770073, 36.729465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622021, 36.560432, 35.912483>,  <41.284714, 36.663300, 36.161873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622021, 36.560432, 35.912483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588558, 36.763439, 36.255512>,  <40.568481, 36.885242, 36.461330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.588558, 36.763439, 36.255512>,  <40.622021, 36.560432, 35.912483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588558, 36.763439, 36.255512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623899, 0.644367, -0.442201,
		-0.777015, -0.572030, 0.262735,
		-0.083655, 0.507516, 0.857572,
		40.563461, 36.915695, 36.512783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876247, 36.780403, 36.046276>,  <40.622021, 36.560432, 35.912483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876247, 36.780403, 36.046276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113705, 37.021935, 36.259060>,  <40.256180, 37.166851, 36.386730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.113705, 37.021935, 36.259060>,  <39.876247, 36.780403, 36.046276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113705, 37.021935, 36.259060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432264, 0.796850, -0.422113,
		-0.678775, 0.020637, 0.734056,
		0.593643, 0.603825, 0.531962,
		40.291798, 37.203083, 36.418648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473984, 37.286537, 36.228683>,  <39.876247, 36.780403, 36.046276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473984, 37.286537, 36.228683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825928, 37.459984, 36.306469>,  <40.037094, 37.564053, 36.353142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825928, 37.459984, 36.306469>,  <39.473984, 37.286537, 36.228683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825928, 37.459984, 36.306469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327287, 0.849598, -0.413602,
		-0.344564, 0.300267, 0.889447,
		0.879863, 0.433617, 0.194467,
		40.089886, 37.590069, 36.364811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295097, 38.000439, 36.364094>,  <39.473984, 37.286537, 36.228683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295097, 38.000439, 36.364094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687317, 38.009037, 36.286060>,  <39.922649, 38.014194, 36.239243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687317, 38.009037, 36.286060>,  <39.295097, 38.000439, 36.364094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687317, 38.009037, 36.286060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091444, 0.929531, -0.357226,
		0.173657, 0.368118, 0.913418,
		0.980551, 0.021492, -0.195082,
		39.981483, 38.015484, 36.227535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460670, 38.711525, 36.598644>,  <39.295097, 38.000439, 36.364094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460670, 38.711525, 36.598644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763397, 38.580116, 36.372620>,  <39.945034, 38.501270, 36.237003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763397, 38.580116, 36.372620>,  <39.460670, 38.711525, 36.598644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763397, 38.580116, 36.372620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008214, 0.869223, -0.494353,
		0.653571, 0.369494, 0.660544,
		0.756821, -0.328521, -0.565064,
		39.990444, 38.481560, 36.203102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990238, 39.244312, 36.656815>,  <39.460670, 38.711525, 36.598644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990238, 39.244312, 36.656815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030407, 39.030861, 36.320923>,  <40.054508, 38.902790, 36.119389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030407, 39.030861, 36.320923>,  <39.990238, 39.244312, 36.656815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030407, 39.030861, 36.320923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132664, 0.843646, -0.520252,
		0.986060, -0.059156, 0.155518,
		0.100426, -0.533632, -0.839733,
		40.060535, 38.870770, 36.069004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668072, 39.322929, 36.348076>,  <39.990238, 39.244312, 36.656815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668072, 39.322929, 36.348076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440945, 39.196369, 36.044109>,  <40.304668, 39.120434, 35.861729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440945, 39.196369, 36.044109>,  <40.668072, 39.322929, 36.348076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440945, 39.196369, 36.044109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177739, 0.854273, -0.488494,
		0.803736, -0.412443, -0.428835,
		-0.567818, -0.316399, -0.759917,
		40.270599, 39.101448, 35.816135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012436, 39.611343, 35.852680>,  <40.668072, 39.322929, 36.348076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012436, 39.611343, 35.852680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675793, 39.498287, 35.668587>,  <40.473808, 39.430454, 35.558132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.675793, 39.498287, 35.668587>,  <41.012436, 39.611343, 35.852680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.675793, 39.498287, 35.668587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090906, 0.765846, -0.636566,
		0.532390, -0.577575, -0.618845,
		-0.841604, -0.282644, -0.460234,
		40.423313, 39.413494, 35.530518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125969, 39.770386, 35.202629>,  <41.012436, 39.611343, 35.852680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125969, 39.770386, 35.202629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728085, 39.734230, 35.183113>,  <40.489353, 39.712536, 35.171402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728085, 39.734230, 35.183113>,  <41.125969, 39.770386, 35.202629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728085, 39.734230, 35.183113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055023, 0.870002, -0.489969,
		0.086737, -0.484692, -0.870373,
		-0.994710, -0.090389, -0.048792,
		40.429672, 39.707115, 35.168476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971188, 39.784752, 34.498493>,  <41.125969, 39.770386, 35.202629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971188, 39.784752, 34.498493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673157, 39.914177, 34.731789>,  <40.494339, 39.991833, 34.871765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673157, 39.914177, 34.731789>,  <40.971188, 39.784752, 34.498493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673157, 39.914177, 34.731789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158888, 0.935378, -0.315948,
		-0.647778, -0.142736, -0.748338,
		-0.745076, 0.323566, 0.583238,
		40.449635, 40.011246, 34.906761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786903, 40.387157, 34.206272>,  <40.971188, 39.784752, 34.498493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786903, 40.387157, 34.206272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592644, 40.458553, 34.548569>,  <40.476089, 40.501392, 34.753944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.592644, 40.458553, 34.548569>,  <40.786903, 40.387157, 34.206272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592644, 40.458553, 34.548569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035822, 0.974046, -0.223498,
		-0.873422, -0.139195, -0.466646,
		-0.485645, 0.178492, 0.855739,
		40.446949, 40.512100, 34.805290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255295, 40.932632, 34.083813>,  <40.786903, 40.387157, 34.206272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255295, 40.932632, 34.083813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280968, 40.954136, 34.482407>,  <40.296371, 40.967037, 34.721565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280968, 40.954136, 34.482407>,  <40.255295, 40.932632, 34.083813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280968, 40.954136, 34.482407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074259, 0.996037, -0.048951,
		-0.995172, -0.070857, 0.067917,
		0.064179, 0.053758, 0.996490,
		40.300220, 40.970264, 34.781353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687237, 41.471134, 34.315895>,  <40.255295, 40.932632, 34.083813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687237, 41.471134, 34.315895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969097, 41.431049, 34.596870>,  <40.138214, 41.406998, 34.765457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.969097, 41.431049, 34.596870>,  <39.687237, 41.471134, 34.315895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969097, 41.431049, 34.596870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010209, 0.991306, 0.131179,
		-0.709478, -0.085265, 0.699550,
		0.704653, -0.100211, 0.702440,
		40.180492, 41.400986, 34.807602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501526, 41.881550, 34.932228>,  <39.687237, 41.471134, 34.315895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501526, 41.881550, 34.932228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899326, 41.864418, 34.893997>,  <40.138008, 41.854137, 34.871059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899326, 41.864418, 34.893997>,  <39.501526, 41.881550, 34.932228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899326, 41.864418, 34.893997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058658, 0.983791, 0.169453,
		0.086769, -0.174128, 0.980893,
		0.994500, -0.042834, -0.095577,
		40.197678, 41.851566, 34.865326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903645, 42.372261, 35.268494>,  <39.501526, 41.881550, 34.932228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903645, 42.372261, 35.268494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188904, 42.305477, 34.996159>,  <40.360058, 42.265408, 34.832756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188904, 42.305477, 34.996159>,  <39.903645, 42.372261, 35.268494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188904, 42.305477, 34.996159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568454, 0.706073, 0.422280,
		0.410220, -0.688175, 0.598444,
		0.713148, -0.166961, -0.680841,
		40.402847, 42.255390, 34.791904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605507, 42.243484, 35.556198>,  <39.903645, 42.372261, 35.268494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605507, 42.243484, 35.556198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654366, 42.424500, 35.202862>,  <40.683681, 42.533108, 34.990860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.654366, 42.424500, 35.202862>,  <40.605507, 42.243484, 35.556198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654366, 42.424500, 35.202862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626208, 0.655358, 0.422338,
		0.770028, -0.604742, -0.203334,
		0.122149, 0.452541, -0.883338,
		40.691010, 42.560261, 34.937859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295582, 42.436962, 35.407536>,  <40.605507, 42.243484, 35.556198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295582, 42.436962, 35.407536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073715, 42.691719, 35.193356>,  <40.940594, 42.844574, 35.064846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.073715, 42.691719, 35.193356>,  <41.295582, 42.436962, 35.407536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.073715, 42.691719, 35.193356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487187, 0.770260, 0.411519,
		0.674530, -0.032608, -0.737527,
		-0.554669, 0.636895, -0.535450,
		40.907314, 42.882786, 35.032719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713486, 42.999214, 34.996964>,  <41.295582, 42.436962, 35.407536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713486, 42.999214, 34.996964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344326, 43.140018, 35.059383>,  <41.122829, 43.224499, 35.096836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.344326, 43.140018, 35.059383>,  <41.713486, 42.999214, 34.996964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344326, 43.140018, 35.059383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381719, 0.889587, 0.250849,
		-0.050518, 0.291074, -0.955366,
		-0.922897, 0.352009, 0.156048,
		41.067455, 43.245621, 35.106197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029987, 42.600582, 34.386513>,  <41.713486, 42.999214, 34.996964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029987, 42.600582, 34.386513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.066528, 42.372128, 34.060207>,  <42.088455, 42.235054, 33.864426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.066528, 42.372128, 34.060207>,  <42.029987, 42.600582, 34.386513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066528, 42.372128, 34.060207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645050, -0.658031, 0.388466,
		-0.758660, 0.490717, -0.428523,
		0.091355, -0.571132, -0.815759,
		42.093933, 42.200787, 33.815479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990475, 43.132744, 33.823376>,  <42.029987, 42.600582, 34.386513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990475, 43.132744, 33.823376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088402, 43.238884, 34.196396>,  <42.147160, 43.302567, 34.420208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088402, 43.238884, 34.196396>,  <41.990475, 43.132744, 33.823376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088402, 43.238884, 34.196396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730514, -0.682893, 0.002532,
		0.637504, 0.680622, -0.361030,
		0.244821, 0.265351, 0.932551,
		42.161850, 43.318489, 34.476162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655388, 43.186798, 33.849781>,  <41.990475, 43.132744, 33.823376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.655388, 43.186798, 33.849781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540867, 43.083481, 34.218849>,  <42.472153, 43.021492, 34.440289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.540867, 43.083481, 34.218849>,  <42.655388, 43.186798, 33.849781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540867, 43.083481, 34.218849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651635, -0.758465, -0.010123,
		0.702426, 0.598345, 0.385461,
		-0.286301, -0.258291, 0.922669,
		42.454975, 43.005993, 34.495651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.035908, 42.588661, 33.918625>,  <42.655388, 43.186798, 33.849781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.035908, 42.588661, 33.918625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.903385, 42.619755, 34.294750>,  <42.823872, 42.638412, 34.520428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.903385, 42.619755, 34.294750>,  <43.035908, 42.588661, 33.918625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.903385, 42.619755, 34.294750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666865, -0.685734, 0.291651,
		0.667478, 0.723689, 0.175348,
		-0.331307, 0.077737, 0.940315,
		42.803993, 42.643074, 34.576843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579578, 42.578827, 34.266781>,  <43.035908, 42.588661, 33.918625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.579578, 42.578827, 34.266781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278831, 42.447701, 34.495598>,  <43.098381, 42.369026, 34.632889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278831, 42.447701, 34.495598>,  <43.579578, 42.578827, 34.266781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.278831, 42.447701, 34.495598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561687, -0.772823, 0.295386,
		0.345252, 0.543398, 0.765192,
		-0.751870, -0.327816, 0.572038,
		43.053272, 42.349354, 34.667210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878063, 42.382607, 34.859478>,  <43.579578, 42.578827, 34.266781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878063, 42.382607, 34.859478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527901, 42.189331, 34.854076>,  <43.317802, 42.073364, 34.850834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527901, 42.189331, 34.854076>,  <43.878063, 42.382607, 34.859478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527901, 42.189331, 34.854076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420748, -0.775439, 0.470814,
		-0.237968, 0.406472, 0.882129,
		-0.875410, -0.483193, -0.013507,
		43.265278, 42.044373, 34.850025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675045, 42.354935, 35.543926>,  <43.878063, 42.382607, 34.859478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.675045, 42.354935, 35.543926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515453, 42.051521, 35.337841>,  <43.419697, 41.869473, 35.214188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.515453, 42.051521, 35.337841>,  <43.675045, 42.354935, 35.543926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515453, 42.051521, 35.337841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467719, -0.651632, 0.597172,
		-0.788704, -0.002717, 0.614767,
		-0.398980, -0.758530, -0.515216,
		43.395760, 41.823963, 35.183277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.344063, 41.905537, 36.049988>,  <43.675045, 42.354935, 35.543926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.344063, 41.905537, 36.049988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.452316, 41.693810, 35.728344>,  <43.517269, 41.566772, 35.535358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.452316, 41.693810, 35.728344>,  <43.344063, 41.905537, 36.049988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.452316, 41.693810, 35.728344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551621, -0.599290, 0.580143,
		-0.788971, -0.600565, 0.129795,
		0.270629, -0.529313, -0.804106,
		43.533504, 41.535015, 35.487110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.171944, 41.197266, 36.177345>,  <43.344063, 41.905537, 36.049988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.171944, 41.197266, 36.177345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411175, 41.118301, 35.866646>,  <43.554714, 41.070923, 35.680225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.411175, 41.118301, 35.866646>,  <43.171944, 41.197266, 36.177345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.411175, 41.118301, 35.866646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351231, -0.806599, 0.475431,
		-0.720376, -0.557162, -0.413073,
		0.598076, -0.197405, -0.776748,
		43.590599, 41.059078, 35.633621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136066, 40.457973, 35.992577>,  <43.171944, 41.197266, 36.177345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.136066, 40.457973, 35.992577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.482807, 40.572193, 35.829098>,  <43.690849, 40.640724, 35.731010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.482807, 40.572193, 35.829098>,  <43.136066, 40.457973, 35.992577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482807, 40.572193, 35.829098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437345, -0.829092, 0.348332,
		-0.239380, -0.480693, -0.843582,
		0.866848, 0.285553, -0.408697,
		43.742863, 40.657860, 35.706490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.417561, 39.858959, 35.701038>,  <43.136066, 40.457973, 35.992577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.417561, 39.858959, 35.701038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.705997, 40.134434, 35.731342>,  <43.879059, 40.299717, 35.749523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.705997, 40.134434, 35.731342>,  <43.417561, 39.858959, 35.701038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.705997, 40.134434, 35.731342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618394, -0.689065, 0.377861,
		0.312430, -0.225623, -0.922758,
		0.721094, 0.688683, 0.075761,
		43.922325, 40.341038, 35.754070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.002388, 39.483570, 35.560703>,  <43.417561, 39.858959, 35.701038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.002388, 39.483570, 35.560703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.143871, 39.801277, 35.758301>,  <44.228764, 39.991901, 35.876858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.143871, 39.801277, 35.758301>,  <44.002388, 39.483570, 35.560703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.143871, 39.801277, 35.758301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689664, -0.578235, 0.435898,
		0.631864, 0.186508, -0.752305,
		0.353710, 0.794267, 0.493993,
		44.249985, 40.039558, 35.906498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.648842, 39.535690, 35.435257>,  <44.002388, 39.483570, 35.560703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.648842, 39.535690, 35.435257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.620102, 39.733112, 35.781956>,  <44.602859, 39.851566, 35.989975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.620102, 39.733112, 35.781956>,  <44.648842, 39.535690, 35.435257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.620102, 39.733112, 35.781956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828729, -0.454016, 0.327227,
		0.555019, 0.741807, -0.376400,
		-0.071848, 0.493551, 0.866744,
		44.598549, 39.881176, 36.041981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.312645, 39.451786, 35.643917>,  <44.648842, 39.535690, 35.435257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.312645, 39.451786, 35.643917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.090351, 39.554852, 35.960087>,  <44.956974, 39.616692, 36.149788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.090351, 39.554852, 35.960087>,  <45.312645, 39.451786, 35.643917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.090351, 39.554852, 35.960087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616539, -0.510073, 0.599754,
		0.557707, 0.820632, 0.124609,
		-0.555737, 0.257661, 0.790423,
		44.923630, 39.632149, 36.197212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.780449, 39.308399, 36.229427>,  <45.312645, 39.451786, 35.643917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.780449, 39.308399, 36.229427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.419449, 39.316513, 36.401512>,  <45.202850, 39.321381, 36.504765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.419449, 39.316513, 36.401512>,  <45.780449, 39.308399, 36.229427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.419449, 39.316513, 36.401512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230307, -0.821349, 0.521866,
		0.363942, 0.570065, 0.736595,
		-0.902499, 0.020285, 0.430213,
		45.148701, 39.322598, 36.530575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.917034, 39.042492, 36.946220>,  <45.780449, 39.308399, 36.229427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.917034, 39.042492, 36.946220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.519958, 39.060776, 36.901550>,  <45.281712, 39.071747, 36.874748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.519958, 39.060776, 36.901550>,  <45.917034, 39.042492, 36.946220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.519958, 39.060776, 36.901550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092162, -0.884567, 0.457217,
		-0.077884, 0.464168, 0.882316,
		-0.992693, 0.045706, -0.111672,
		45.222149, 39.074486, 36.868050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.610676, 38.964973, 37.622288>,  <45.917034, 39.042492, 36.946220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.610676, 38.964973, 37.622288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.346973, 38.848316, 37.345066>,  <45.188751, 38.778320, 37.178734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.346973, 38.848316, 37.345066>,  <45.610676, 38.964973, 37.622288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.346973, 38.848316, 37.345066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035570, -0.908587, 0.416178,
		-0.751076, 0.299020, 0.588619,
		-0.659257, -0.291644, -0.693054,
		45.149197, 38.760822, 37.137150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.253407, 38.524780, 37.925098>,  <45.610676, 38.964973, 37.622288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.253407, 38.524780, 37.925098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.163071, 38.432629, 37.546486>,  <45.108868, 38.377338, 37.319317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.163071, 38.432629, 37.546486>,  <45.253407, 38.524780, 37.925098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.163071, 38.432629, 37.546486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087558, -0.972501, 0.215814,
		-0.970221, -0.034136, 0.239804,
		-0.225842, -0.230384, -0.946530,
		45.095318, 38.363514, 37.262527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.732151, 38.104702, 37.955166>,  <45.253407, 38.524780, 37.925098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.732151, 38.104702, 37.955166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.866940, 38.025829, 37.586914>,  <44.947815, 37.978504, 37.365963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.866940, 38.025829, 37.586914>,  <44.732151, 38.104702, 37.955166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.866940, 38.025829, 37.586914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071359, -0.980359, 0.183858,
		-0.938806, 0.003740, -0.344427,
		0.336974, -0.197185, -0.920634,
		44.968033, 37.966675, 37.310722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182133, 37.769676, 37.581371>,  <44.732151, 38.104702, 37.955166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182133, 37.769676, 37.581371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.541660, 37.673733, 37.434628>,  <44.757378, 37.616165, 37.346581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.541660, 37.673733, 37.434628>,  <44.182133, 37.769676, 37.581371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.541660, 37.673733, 37.434628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203610, -0.969680, 0.135144,
		-0.388149, -0.046775, -0.920409,
		0.898824, -0.239860, -0.366856,
		44.811306, 37.601776, 37.324570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.110165, 37.264580, 36.968605>,  <44.182133, 37.769676, 37.581371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.110165, 37.264580, 36.968605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.492912, 37.220783, 37.076241>,  <44.722561, 37.194504, 37.140823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.492912, 37.220783, 37.076241>,  <44.110165, 37.264580, 36.968605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.492912, 37.220783, 37.076241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082798, -0.990625, -0.108663,
		0.278468, 0.081696, -0.956965,
		0.956870, -0.109494, 0.269093,
		44.779972, 37.187935, 37.156967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.300648, 36.697739, 36.615997>,  <44.110165, 37.264580, 36.968605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.300648, 36.697739, 36.615997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.578651, 36.714794, 36.903091>,  <44.745453, 36.725029, 37.075348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.578651, 36.714794, 36.903091>,  <44.300648, 36.697739, 36.615997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.578651, 36.714794, 36.903091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033171, -0.999079, 0.027233,
		0.718240, 0.004881, -0.695779,
		0.695005, 0.042639, 0.717740,
		44.787151, 36.727585, 37.118412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.840733, 36.371979, 36.390938>,  <44.300648, 36.697739, 36.615997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.840733, 36.371979, 36.390938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.873573, 36.362644, 36.789478>,  <44.893280, 36.357044, 37.028603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.873573, 36.362644, 36.789478>,  <44.840733, 36.371979, 36.390938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.873573, 36.362644, 36.789478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034477, -0.999061, -0.026239,
		0.996027, 0.036505, -0.081221,
		0.082103, -0.023334, 0.996351,
		44.898205, 36.355644, 37.088383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.394169, 35.725403, 36.595158>,  <44.840733, 36.371979, 36.390938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.394169, 35.725403, 36.595158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.174885, 35.825935, 36.914230>,  <45.043312, 35.886253, 37.105675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.174885, 35.825935, 36.914230>,  <45.394169, 35.725403, 36.595158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.174885, 35.825935, 36.914230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126500, -0.967724, 0.217964,
		0.826717, 0.018584, 0.562312,
		-0.548213, 0.251327, 0.797683,
		45.010422, 35.901333, 37.153534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269356, 35.110958, 36.872787>,  <45.394169, 35.725403, 36.595158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269356, 35.110958, 36.872787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.112400, 35.320885, 37.174938>,  <45.018227, 35.446842, 37.356228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.112400, 35.320885, 37.174938>,  <45.269356, 35.110958, 36.872787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.112400, 35.320885, 37.174938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138526, -0.845593, 0.515542,
		0.909308, 0.097654, 0.404503,
		-0.392390, 0.524821, 0.755376,
		44.994682, 35.478333, 37.401550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.564014, 35.225407, 37.492104>,  <45.269356, 35.110958, 36.872787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.564014, 35.225407, 37.492104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.165398, 35.201908, 37.515617>,  <44.926228, 35.187809, 37.529728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.165398, 35.201908, 37.515617>,  <45.564014, 35.225407, 37.492104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.165398, 35.201908, 37.515617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072482, -0.960401, 0.269028,
		0.040656, 0.272358, 0.961337,
		-0.996541, -0.058742, 0.058788,
		44.866436, 35.184284, 37.533253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.289520, 35.127586, 37.124767>,  <45.564014, 35.225407, 37.492104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.289520, 35.127586, 37.124767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.678101, 35.211426, 37.169205>,  <46.911251, 35.261730, 37.195866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.678101, 35.211426, 37.169205>,  <46.289520, 35.127586, 37.124767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.678101, 35.211426, 37.169205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163801, -0.931429, 0.324976,
		0.171591, -0.297502, -0.939175,
		0.971455, 0.209601, 0.111094,
		46.969536, 35.274307, 37.202534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.733078, 34.635658, 36.736984>,  <46.289520, 35.127586, 37.124767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.733078, 34.635658, 36.736984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.905396, 34.782516, 37.066738>,  <47.008785, 34.870632, 37.264591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.905396, 34.782516, 37.066738>,  <46.733078, 34.635658, 36.736984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.905396, 34.782516, 37.066738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607517, -0.793494, 0.035922,
		0.667336, 0.485355, -0.564883,
		0.430796, 0.367148, 0.824389,
		47.034634, 34.892662, 37.314056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.510639, 34.915020, 36.590046>,  <46.733078, 34.635658, 36.736984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.510639, 34.915020, 36.590046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.438736, 34.755318, 36.949665>,  <47.395592, 34.659496, 37.165436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.438736, 34.755318, 36.949665>,  <47.510639, 34.915020, 36.590046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.438736, 34.755318, 36.949665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655045, -0.730421, -0.193395,
		0.733895, 0.554151, 0.392829,
		-0.179760, -0.399252, 0.899046,
		47.384808, 34.635544, 37.219379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.469810, 34.823112, 35.809158>,  <47.510639, 34.915020, 36.590046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.469810, 34.823112, 35.809158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.602306, 34.752037, 35.438492>,  <47.681805, 34.709393, 35.216091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.602306, 34.752037, 35.438492>,  <47.469810, 34.823112, 35.809158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.602306, 34.752037, 35.438492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905646, 0.215679, -0.365086,
		0.264733, 0.960162, -0.089479,
		0.331243, -0.177686, -0.926664,
		47.701679, 34.698730, 35.160492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.716938, 36.868019, 47.755394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.328079, 36.801235, 47.689610>,  <32.094765, 36.761166, 47.650139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.328079, 36.801235, 47.689610>,  <32.716938, 36.868019, 47.755394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328079, 36.801235, 47.689610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164924, 0.011164, -0.986243,
		0.166504, -0.985900, 0.016683,
		-0.972150, -0.166965, -0.164457,
		32.036434, 36.751144, 47.640274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618759, 36.460552, 47.137207>,  <32.716938, 36.868019, 47.755394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618759, 36.460552, 47.137207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.236897, 36.575207, 47.169380>,  <32.007778, 36.643997, 47.188683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.236897, 36.575207, 47.169380>,  <32.618759, 36.460552, 47.137207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236897, 36.575207, 47.169380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048465, 0.116924, -0.991958,
		-0.293731, -0.950879, -0.097731,
		-0.954659, 0.286632, 0.080429,
		31.950499, 36.661198, 47.193508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374210, 36.252007, 46.523029>,  <32.618759, 36.460552, 47.137207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374210, 36.252007, 46.523029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.088528, 36.502197, 46.648693>,  <31.917118, 36.652309, 46.724091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.088528, 36.502197, 46.648693>,  <32.374210, 36.252007, 46.523029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088528, 36.502197, 46.648693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231128, 0.212911, -0.949341,
		-0.660676, -0.750634, -0.007498,
		-0.714204, 0.625474, 0.314158,
		31.874266, 36.689838, 46.742939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751999, 36.024101, 46.172916>,  <32.374210, 36.252007, 46.523029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751999, 36.024101, 46.172916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.695097, 36.408749, 46.266777>,  <31.660955, 36.639538, 46.323093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.695097, 36.408749, 46.266777>,  <31.751999, 36.024101, 46.172916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695097, 36.408749, 46.266777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412496, 0.157905, -0.897170,
		-0.899784, -0.224420, 0.374199,
		-0.142255, 0.961614, 0.234653,
		31.652420, 36.697231, 46.337173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067993, 36.159885, 45.962261>,  <31.751999, 36.024101, 46.172916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067993, 36.159885, 45.962261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.252134, 36.514942, 45.967484>,  <31.362619, 36.727974, 45.970615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.252134, 36.514942, 45.967484>,  <31.067993, 36.159885, 45.962261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252134, 36.514942, 45.967484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366453, 0.203406, -0.907931,
		-0.808570, 0.413186, 0.418917,
		0.460355, 0.887639, 0.013055,
		31.390242, 36.781235, 45.971401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634819, 36.564148, 45.644360>,  <31.067993, 36.159885, 45.962261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634819, 36.564148, 45.644360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.984594, 36.757236, 45.625019>,  <31.194460, 36.873089, 45.613415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.984594, 36.757236, 45.625019>,  <30.634819, 36.564148, 45.644360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984594, 36.757236, 45.625019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247723, 0.358599, -0.900022,
		-0.417123, 0.798990, 0.433154,
		0.874438, 0.482722, -0.048348,
		31.246925, 36.902054, 45.610516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560102, 37.269848, 45.307163>,  <30.634819, 36.564148, 45.644360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560102, 37.269848, 45.307163> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.946064, 37.201237, 45.227623>,  <31.177641, 37.160069, 45.179897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.946064, 37.201237, 45.227623>,  <30.560102, 37.269848, 45.307163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946064, 37.201237, 45.227623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175736, 0.140931, -0.974298,
		0.195143, 0.975047, 0.105841,
		0.964902, -0.171527, -0.198852,
		31.235535, 37.149780, 45.167969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.722414, 37.784393, 44.788929>,  <30.560102, 37.269848, 45.307163>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.722414, 37.784393, 44.788929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.998299, 37.494801, 44.793911>,  <31.163830, 37.321045, 44.796902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.998299, 37.494801, 44.793911>,  <30.722414, 37.784393, 44.788929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998299, 37.494801, 44.793911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013453, -0.004385, -0.999900,
		0.723961, 0.689809, 0.006715,
		0.689710, -0.723978, 0.012455,
		31.205212, 37.277607, 44.797646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070553, 37.919624, 44.211483>,  <30.722414, 37.784393, 44.788929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070553, 37.919624, 44.211483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.180264, 37.538761, 44.265396>,  <31.246090, 37.310242, 44.297745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.180264, 37.538761, 44.265396>,  <31.070553, 37.919624, 44.211483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.180264, 37.538761, 44.265396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233998, -0.069861, -0.969724,
		0.932747, 0.297513, 0.203641,
		0.274279, -0.952158, 0.134779,
		31.262547, 37.253113, 44.305828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776157, 37.805397, 43.872719>,  <31.070553, 37.919624, 44.211483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776157, 37.805397, 43.872719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.643267, 37.430904, 43.918484>,  <31.563532, 37.206207, 43.945942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.643267, 37.430904, 43.918484>,  <31.776157, 37.805397, 43.872719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643267, 37.430904, 43.918484> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381340, -0.244278, -0.891576,
		0.862674, -0.252572, 0.438179,
		-0.332225, -0.936235, 0.114417,
		31.543598, 37.150036, 43.952808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384449, 37.393673, 43.699493>,  <31.776157, 37.805397, 43.872719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384449, 37.393673, 43.699493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.068233, 37.152153, 43.658550>,  <31.878504, 37.007240, 43.633984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.068233, 37.152153, 43.658550>,  <32.384449, 37.393673, 43.699493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.068233, 37.152153, 43.658550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357359, -0.319081, -0.877771,
		0.497336, -0.730490, 0.468019,
		-0.790539, -0.603797, -0.102357,
		31.831072, 36.971012, 43.627842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690033, 36.814297, 43.619652>,  <32.384449, 37.393673, 43.699493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690033, 36.814297, 43.619652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.323498, 36.744423, 43.475533>,  <32.103577, 36.702499, 43.389061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.323498, 36.744423, 43.475533>,  <32.690033, 36.814297, 43.619652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323498, 36.744423, 43.475533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397203, -0.282943, -0.873025,
		0.050561, -0.943095, 0.328656,
		-0.916337, -0.174684, -0.360294,
		32.048595, 36.692017, 43.367443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797333, 36.287979, 43.177761>,  <32.690033, 36.814297, 43.619652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797333, 36.287979, 43.177761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.429264, 36.402706, 43.071167>,  <32.208424, 36.471542, 43.007210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.429264, 36.402706, 43.071167>,  <32.797333, 36.287979, 43.177761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429264, 36.402706, 43.071167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175434, -0.306420, -0.935591,
		-0.350003, -0.907656, 0.231642,
		-0.920174, 0.286822, -0.266482,
		32.153210, 36.488750, 42.991222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608395, 35.783493, 42.704388>,  <32.797333, 36.287979, 43.177761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608395, 35.783493, 42.704388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.380154, 36.101486, 42.621998>,  <32.243210, 36.292282, 42.572563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.380154, 36.101486, 42.621998>,  <32.608395, 35.783493, 42.704388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380154, 36.101486, 42.621998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191048, -0.115426, -0.974771,
		-0.798698, -0.595552, -0.086018,
		-0.570598, 0.794981, -0.205970,
		32.208973, 36.339981, 42.560207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972378, 35.589481, 42.222473>,  <32.608395, 35.783493, 42.704388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972378, 35.589481, 42.222473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.045139, 35.977421, 42.157604>,  <32.088795, 36.210186, 42.118683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.045139, 35.977421, 42.157604>,  <31.972378, 35.589481, 42.222473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045139, 35.977421, 42.157604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059900, -0.153692, -0.986302,
		-0.981490, 0.189125, 0.030138,
		0.181902, 0.969851, -0.162176,
		32.099709, 36.268375, 42.108952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699520, 35.782738, 41.596066>,  <31.972378, 35.589481, 42.222473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699520, 35.782738, 41.596066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.951809, 36.091633, 41.626637>,  <32.103184, 36.276970, 41.644978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.951809, 36.091633, 41.626637>,  <31.699520, 35.782738, 41.596066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951809, 36.091633, 41.626637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182054, -0.051510, -0.981938,
		-0.754352, 0.633244, -0.173077,
		0.630721, 0.772236, 0.076428,
		32.141026, 36.323303, 41.649567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543306, 36.147545, 41.023335>,  <31.699520, 35.782738, 41.596066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543306, 36.147545, 41.023335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.892426, 36.325901, 41.102737>,  <32.101898, 36.432915, 41.150379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.892426, 36.325901, 41.102737>,  <31.543306, 36.147545, 41.023335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892426, 36.325901, 41.102737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189178, 0.065871, -0.979731,
		-0.449932, 0.892659, -0.026861,
		0.872796, 0.445894, 0.198509,
		32.154263, 36.459671, 41.162289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618034, 36.726742, 40.567825>,  <31.543306, 36.147545, 41.023335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618034, 36.726742, 40.567825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.998032, 36.653973, 40.669346>,  <32.226028, 36.610313, 40.730259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.998032, 36.653973, 40.669346>,  <31.618034, 36.726742, 40.567825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998032, 36.653973, 40.669346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282938, 0.157560, -0.946108,
		0.132127, 0.970608, 0.201153,
		0.949994, -0.181920, 0.253804,
		32.283031, 36.599396, 40.745487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117657, 37.281891, 40.137363>,  <31.618034, 36.726742, 40.567825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117657, 37.281891, 40.137363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.396290, 37.022896, 40.260998>,  <32.563469, 36.867496, 40.335178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.396290, 37.022896, 40.260998>,  <32.117657, 37.281891, 40.137363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396290, 37.022896, 40.260998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474950, 0.093246, -0.875059,
		0.537772, 0.756347, 0.372479,
		0.696580, -0.647491, 0.309082,
		32.605263, 36.828648, 40.353722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802780, 37.684864, 40.185177>,  <32.117657, 37.281891, 40.137363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802780, 37.684864, 40.185177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.894844, 37.297134, 40.150692>,  <32.950081, 37.064495, 40.130001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.894844, 37.297134, 40.150692>,  <32.802780, 37.684864, 40.185177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894844, 37.297134, 40.150692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387593, 0.172570, -0.905534,
		0.892637, 0.174997, 0.415422,
		0.230155, -0.969327, -0.086215,
		32.963890, 37.006336, 40.124828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425644, 37.589405, 40.092384>,  <32.802780, 37.684864, 40.185177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425644, 37.589405, 40.092384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.277500, 37.257473, 39.925426>,  <33.188614, 37.058315, 39.825253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.277500, 37.257473, 39.925426>,  <33.425644, 37.589405, 40.092384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277500, 37.257473, 39.925426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511906, 0.192616, -0.837169,
		0.775105, -0.523718, 0.353458,
		-0.370358, -0.829831, -0.417392,
		33.166393, 37.008522, 39.800209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001709, 37.248260, 39.853039>,  <33.425644, 37.589405, 40.092384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001709, 37.248260, 39.853039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.696499, 37.093445, 39.645969>,  <33.513371, 37.000557, 39.521729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.696499, 37.093445, 39.645969>,  <34.001709, 37.248260, 39.853039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696499, 37.093445, 39.645969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522457, 0.102236, -0.846514,
		0.380557, -0.916379, 0.124202,
		-0.763030, -0.387037, -0.517675,
		33.467590, 36.977333, 39.490665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716503, 37.220215, 39.500484>,  <34.001709, 37.248260, 39.853039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716503, 37.220215, 39.500484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.085636, 37.352901, 39.422161>,  <35.307117, 37.432514, 39.375168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.085636, 37.352901, 39.422161>,  <34.716503, 37.220215, 39.500484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085636, 37.352901, 39.422161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250521, -0.130732, 0.959244,
		0.292597, -0.934278, -0.203745,
		0.922836, 0.331715, -0.195804,
		35.362488, 37.452415, 39.363419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121380, 36.592045, 39.670467>,  <34.716503, 37.220215, 39.500484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121380, 36.592045, 39.670467> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.353683, 36.917675, 39.669754>,  <35.493065, 37.113052, 39.669327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.353683, 36.917675, 39.669754>,  <35.121380, 36.592045, 39.670467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353683, 36.917675, 39.669754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123588, -0.086006, 0.988599,
		0.804639, -0.574359, -0.150559,
		0.580759, 0.814073, -0.001780,
		35.527912, 37.161896, 39.669220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872562, 36.475452, 40.023243>,  <35.121380, 36.592045, 39.670467>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872562, 36.475452, 40.023243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.796215, 36.868092, 40.020836>,  <35.750404, 37.103676, 40.019390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.796215, 36.868092, 40.020836>,  <35.872562, 36.475452, 40.023243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796215, 36.868092, 40.020836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266461, 0.057711, 0.962116,
		0.944757, 0.182037, -0.272573,
		-0.190871, 0.981597, -0.006017,
		35.738953, 37.162571, 40.019032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464149, 36.846634, 40.417133>,  <35.872562, 36.475452, 40.023243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464149, 36.846634, 40.417133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.139175, 37.079285, 40.433384>,  <35.944191, 37.218876, 40.443134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.139175, 37.079285, 40.433384>,  <36.464149, 36.846634, 40.417133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139175, 37.079285, 40.433384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182376, 0.187325, 0.965219,
		0.553789, 0.791591, -0.258265,
		-0.812439, 0.581629, 0.040629,
		35.895443, 37.253773, 40.445572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735405, 37.339584, 40.906147>,  <36.464149, 36.846634, 40.417133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735405, 37.339584, 40.906147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.335926, 37.335037, 40.886230>,  <36.096241, 37.332310, 40.874283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.335926, 37.335037, 40.886230>,  <36.735405, 37.339584, 40.906147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335926, 37.335037, 40.886230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049106, -0.053992, 0.997333,
		-0.014025, 0.998477, 0.053363,
		-0.998695, -0.011367, -0.049788,
		36.036316, 37.331627, 40.871292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482506, 37.766766, 41.441463>,  <36.735405, 37.339584, 40.906147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482506, 37.766766, 41.441463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.119534, 37.614494, 41.370300>,  <35.901749, 37.523132, 41.327602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.119534, 37.614494, 41.370300>,  <36.482506, 37.766766, 41.441463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119534, 37.614494, 41.370300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182555, -0.024187, 0.982898,
		-0.378468, 0.924393, -0.047546,
		-0.907434, -0.380675, -0.177907,
		35.847305, 37.500290, 41.316929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024895, 38.087631, 41.877022>,  <36.482506, 37.766766, 41.441463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024895, 38.087631, 41.877022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.866405, 37.730518, 41.791279>,  <35.771313, 37.516251, 41.739834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.866405, 37.730518, 41.791279>,  <36.024895, 38.087631, 41.877022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866405, 37.730518, 41.791279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152143, -0.166399, 0.974250,
		-0.905460, 0.418637, -0.069898,
		-0.396227, -0.892779, -0.214360,
		35.747536, 37.462685, 41.726971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454990, 38.020470, 42.346714>,  <36.024895, 38.087631, 41.877022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454990, 38.020470, 42.346714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.524040, 37.648361, 42.217224>,  <35.565472, 37.425095, 42.139530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.524040, 37.648361, 42.217224>,  <35.454990, 38.020470, 42.346714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524040, 37.648361, 42.217224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227665, -0.357443, 0.905761,
		-0.958316, -0.082655, -0.273493,
		0.172624, -0.930270, -0.323725,
		35.575829, 37.369282, 42.120106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901112, 37.611961, 42.630867>,  <35.454990, 38.020470, 42.346714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901112, 37.611961, 42.630867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.194195, 37.352989, 42.546989>,  <35.370045, 37.197605, 42.496662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.194195, 37.352989, 42.546989>,  <34.901112, 37.611961, 42.630867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194195, 37.352989, 42.546989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187711, -0.488438, 0.852170,
		-0.654146, -0.585028, -0.479412,
		0.732705, -0.647434, -0.209694,
		35.414005, 37.158760, 42.484081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615047, 37.067726, 42.898979>,  <34.901112, 37.611961, 42.630867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615047, 37.067726, 42.898979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.002522, 36.976009, 42.860870>,  <35.235004, 36.920979, 42.838005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.002522, 36.976009, 42.860870>,  <34.615047, 37.067726, 42.898979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002522, 36.976009, 42.860870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006204, -0.405913, 0.913891,
		-0.248218, -0.884681, -0.394624,
		0.968684, -0.229292, -0.095267,
		35.293125, 36.907223, 42.832291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723869, 36.412571, 43.141323>,  <34.615047, 37.067726, 42.898979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723869, 36.412571, 43.141323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.094345, 36.561069, 43.167671>,  <35.316631, 36.650169, 43.183479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.094345, 36.561069, 43.167671>,  <34.723869, 36.412571, 43.141323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094345, 36.561069, 43.167671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070358, -0.341813, 0.937131,
		0.370427, -0.863329, -0.342705,
		0.926193, 0.371250, 0.065875,
		35.372204, 36.672443, 43.187435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067101, 35.872776, 43.501686>,  <34.723869, 36.412571, 43.141323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067101, 35.872776, 43.501686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.287151, 36.202183, 43.557079>,  <35.419182, 36.399826, 43.590313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.287151, 36.202183, 43.557079>,  <35.067101, 35.872776, 43.501686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287151, 36.202183, 43.557079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208749, -0.296178, 0.932042,
		0.808568, -0.483835, -0.334844,
		0.550128, 0.823518, 0.138480,
		35.452190, 36.449238, 43.598625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792824, 35.719700, 43.797840>,  <35.067101, 35.872776, 43.501686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792824, 35.719700, 43.797840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.649174, 36.084373, 43.877705>,  <35.562984, 36.303177, 43.925625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.649174, 36.084373, 43.877705>,  <35.792824, 35.719700, 43.797840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649174, 36.084373, 43.877705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038510, -0.199280, 0.979186,
		0.932494, 0.359342, 0.036458,
		-0.359127, 0.911680, 0.199665,
		35.541435, 36.357876, 43.937603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996902, 35.870426, 44.496025>,  <35.792824, 35.719700, 43.797840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996902, 35.870426, 44.496025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.731697, 36.162281, 44.429043>,  <35.572575, 36.337395, 44.388851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.731697, 36.162281, 44.429043>,  <35.996902, 35.870426, 44.496025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731697, 36.162281, 44.429043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104691, 0.131122, 0.985823,
		0.741247, 0.671150, -0.010550,
		-0.663018, 0.729634, -0.167458,
		35.532791, 36.381172, 44.378807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097431, 36.380146, 44.886013>,  <35.996902, 35.870426, 44.496025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097431, 36.380146, 44.886013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.731335, 36.510338, 44.791027>,  <35.511677, 36.588451, 44.734035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.731335, 36.510338, 44.791027>,  <36.097431, 36.380146, 44.886013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731335, 36.510338, 44.791027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155320, 0.258806, 0.953360,
		0.371757, 0.909441, -0.186318,
		-0.915245, 0.325480, -0.237467,
		35.456760, 36.607983, 44.719788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980595, 37.075947, 45.345722>,  <36.097431, 36.380146, 44.886013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980595, 37.075947, 45.345722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.617867, 36.953823, 45.229469>,  <35.400230, 36.880550, 45.159718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.617867, 36.953823, 45.229469>,  <35.980595, 37.075947, 45.345722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617867, 36.953823, 45.229469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354997, 0.181384, 0.917102,
		-0.227281, 0.934820, -0.272866,
		-0.906819, -0.305306, -0.290633,
		35.345821, 36.862232, 45.142281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537460, 37.588753, 45.555683>,  <35.980595, 37.075947, 45.345722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537460, 37.588753, 45.555683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.341358, 37.240997, 45.530960>,  <35.223698, 37.032345, 45.516125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.341358, 37.240997, 45.530960>,  <35.537460, 37.588753, 45.555683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341358, 37.240997, 45.530960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221408, 0.055638, 0.973593,
		-0.842987, 0.490994, -0.219765,
		-0.490256, -0.869384, -0.061808,
		35.194283, 36.980183, 45.512417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946636, 37.689213, 45.985638>,  <35.537460, 37.588753, 45.555683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946636, 37.689213, 45.985638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.940868, 37.289322, 45.978188>,  <34.937408, 37.049389, 45.973717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.940868, 37.289322, 45.978188>,  <34.946636, 37.689213, 45.985638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940868, 37.289322, 45.978188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490132, -0.009165, 0.871600,
		-0.871529, 0.021698, -0.489864,
		-0.014423, -0.999723, -0.018622,
		34.936543, 36.989407, 45.972599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.243217, 37.485443, 46.167957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.506039, 37.203098, 46.273819>,  <34.663731, 37.033691, 46.337334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.506039, 37.203098, 46.273819>,  <34.243217, 37.485443, 46.167957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506039, 37.203098, 46.273819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332661, 0.043543, 0.942041,
		-0.676477, -0.707007, -0.206204,
		0.657050, -0.705865, 0.264650,
		34.703156, 36.991341, 46.353214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944183, 37.048939, 46.690605>,  <34.243217, 37.485443, 46.167957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944183, 37.048939, 46.690605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.305782, 36.893703, 46.762363>,  <34.522739, 36.800564, 46.805420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.305782, 36.893703, 46.762363>,  <33.944183, 37.048939, 46.690605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305782, 36.893703, 46.762363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264673, -0.178439, 0.947686,
		-0.335774, -0.904184, -0.264023,
		0.903994, -0.388088, 0.179398,
		34.576981, 36.777279, 46.816181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815414, 36.406620, 47.132301>,  <33.944183, 37.048939, 46.690605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815414, 36.406620, 47.132301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.198669, 36.497791, 47.201611>,  <34.428623, 36.552494, 47.243195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.198669, 36.497791, 47.201611>,  <33.815414, 36.406620, 47.132301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198669, 36.497791, 47.201611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083324, -0.357017, 0.930374,
		0.273917, -0.905864, -0.323080,
		0.958137, 0.227925, 0.173273,
		34.486111, 36.566170, 47.253593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205147, 35.801258, 47.410179>,  <33.815414, 36.406620, 47.132301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205147, 35.801258, 47.410179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.396946, 36.130760, 47.531181>,  <34.512028, 36.328461, 47.603783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.396946, 36.130760, 47.531181>,  <34.205147, 35.801258, 47.410179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396946, 36.130760, 47.531181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108644, -0.286341, 0.951948,
		0.870790, -0.489325, -0.047805,
		0.479500, 0.823754, 0.302505,
		34.540794, 36.377888, 47.621933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814651, 35.623310, 47.731018>,  <34.205147, 35.801258, 47.410179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814651, 35.623310, 47.731018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.727974, 35.986362, 47.874821>,  <34.675968, 36.204193, 47.961102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.727974, 35.986362, 47.874821>,  <34.814651, 35.623310, 47.731018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727974, 35.986362, 47.874821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134690, -0.392535, 0.909821,
		0.966903, 0.148733, 0.207310,
		-0.216697, 0.907631, 0.359510,
		34.662964, 36.258652, 47.982674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061291, 35.609989, 48.415215>,  <34.814651, 35.623310, 47.731018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061291, 35.609989, 48.415215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.843384, 35.945248, 48.426056>,  <34.712639, 36.146404, 48.432560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.843384, 35.945248, 48.426056>,  <35.061291, 35.609989, 48.415215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.843384, 35.945248, 48.426056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269465, -0.205561, 0.940815,
		0.794115, 0.505222, 0.337835,
		-0.544766, 0.838150, 0.027100,
		34.679955, 36.196693, 48.434185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192169, 36.015545, 49.080227>,  <35.061291, 35.609989, 48.415215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192169, 36.015545, 49.080227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.846546, 36.183617, 48.969341>,  <34.639172, 36.284458, 48.902809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.846546, 36.183617, 48.969341>,  <35.192169, 36.015545, 49.080227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846546, 36.183617, 48.969341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242703, 0.134733, 0.960699,
		0.441013, 0.897385, -0.014440,
		-0.864062, 0.420176, -0.277217,
		34.587326, 36.309669, 48.886177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091702, 36.573502, 49.514442>,  <35.192169, 36.015545, 49.080227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091702, 36.573502, 49.514442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.721012, 36.549564, 49.366062>,  <34.498600, 36.535202, 49.277035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.721012, 36.549564, 49.366062>,  <35.091702, 36.573502, 49.514442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721012, 36.549564, 49.366062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362364, 0.403450, 0.840191,
		0.099378, 0.913042, -0.395572,
		-0.926723, -0.059845, -0.370948,
		34.442997, 36.531612, 49.254776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727062, 37.223316, 49.616177>,  <35.091702, 36.573502, 49.514442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727062, 37.223316, 49.616177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.463207, 36.923588, 49.592892>,  <34.304893, 36.743752, 49.578922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.463207, 36.923588, 49.592892>,  <34.727062, 37.223316, 49.616177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463207, 36.923588, 49.592892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444702, 0.326692, 0.833974,
		-0.605900, 0.576008, -0.548725,
		-0.659640, -0.749324, -0.058209,
		34.265316, 36.698792, 49.575428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144398, 37.552376, 49.881462>,  <34.727062, 37.223316, 49.616177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144398, 37.552376, 49.881462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.106213, 37.154411, 49.894310>,  <34.083302, 36.915630, 49.902020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.106213, 37.154411, 49.894310>,  <34.144398, 37.552376, 49.881462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106213, 37.154411, 49.894310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182148, 0.049178, 0.982041,
		-0.978626, 0.087897, -0.185917,
		-0.095461, -0.994915, 0.032117,
		34.077576, 36.855938, 49.903946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499905, 37.404842, 50.316898>,  <34.144398, 37.552376, 49.881462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499905, 37.404842, 50.316898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.722809, 37.072994, 50.330677>,  <33.856552, 36.873886, 50.338943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.722809, 37.072994, 50.330677>,  <33.499905, 37.404842, 50.316898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722809, 37.072994, 50.330677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215749, -0.104610, 0.970829,
		-0.801818, -0.548437, -0.237286,
		0.557261, -0.829623, 0.034447,
		33.889988, 36.824108, 50.341011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118359, 37.034634, 50.892330>,  <33.499905, 37.404842, 50.316898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118359, 37.034634, 50.892330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.464188, 36.840996, 50.838428>,  <33.671684, 36.724812, 50.806087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.464188, 36.840996, 50.838428>,  <33.118359, 37.034634, 50.892330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464188, 36.840996, 50.838428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039722, -0.201489, 0.978685,
		-0.500932, -0.851499, -0.154973,
		0.864575, -0.484099, -0.134756,
		33.723560, 36.695766, 50.798000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979237, 36.442921, 51.319942>,  <33.118359, 37.034634, 50.892330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979237, 36.442921, 51.319942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.371529, 36.497047, 51.263569>,  <33.606903, 36.529526, 51.229744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.371529, 36.497047, 51.263569>,  <32.979237, 36.442921, 51.319942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371529, 36.497047, 51.263569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169237, -0.227924, 0.958858,
		0.097630, -0.964230, -0.246433,
		0.980728, 0.135319, -0.140931,
		33.665749, 36.537643, 51.221291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302216, 35.928940, 51.646763>,  <32.979237, 36.442921, 51.319942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302216, 35.928940, 51.646763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.578373, 36.218052, 51.634476>,  <33.744068, 36.391521, 51.627106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.578373, 36.218052, 51.634476>,  <33.302216, 35.928940, 51.646763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578373, 36.218052, 51.634476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275122, -0.223053, 0.935177,
		0.669080, -0.654087, -0.352848,
		0.690391, 0.722785, -0.030714,
		33.785492, 36.434887, 51.625263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920624, 35.651844, 51.926384>,  <33.302216, 35.928940, 51.646763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920624, 35.651844, 51.926384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.956573, 36.048859, 51.959339>,  <33.978142, 36.287067, 51.979111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.956573, 36.048859, 51.959339>,  <33.920624, 35.651844, 51.926384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956573, 36.048859, 51.959339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413326, -0.112429, 0.903615,
		0.906137, -0.047160, -0.420347,
		0.089874, 0.992540, 0.082384,
		33.983536, 36.346622, 51.984055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625244, 35.718021, 52.218052>,  <33.920624, 35.651844, 51.926384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625244, 35.718021, 52.218052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.411209, 36.050556, 52.278133>,  <34.282787, 36.250076, 52.314182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.411209, 36.050556, 52.278133>,  <34.625244, 35.718021, 52.218052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411209, 36.050556, 52.278133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096071, -0.116767, 0.988502,
		0.839315, 0.543367, -0.017387,
		-0.535089, 0.831335, 0.150206,
		34.250683, 36.299957, 52.323196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969135, 36.149357, 52.661579>,  <34.625244, 35.718021, 52.218052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969135, 36.149357, 52.661579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.612827, 36.326214, 52.703606>,  <34.399044, 36.432327, 52.728821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.612827, 36.326214, 52.703606>,  <34.969135, 36.149357, 52.661579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612827, 36.326214, 52.703606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033422, -0.166824, 0.985420,
		0.453224, 0.881294, 0.133824,
		-0.890770, 0.442143, 0.105063,
		34.345596, 36.458858, 52.735126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076717, 36.438740, 53.249359>,  <34.969135, 36.149357, 52.661579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.076717, 36.438740, 53.249359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.679890, 36.485237, 53.230206>,  <34.441795, 36.513134, 53.218716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.679890, 36.485237, 53.230206>,  <35.076717, 36.438740, 53.249359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679890, 36.485237, 53.230206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060083, -0.103852, 0.992776,
		0.110429, 0.987777, 0.110012,
		-0.992066, 0.116241, -0.047880,
		34.382271, 36.520111, 53.215843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892662, 36.955242, 53.810112>,  <35.076717, 36.438740, 53.249359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892662, 36.955242, 53.810112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.593761, 36.697411, 53.745445>,  <34.414421, 36.542713, 53.706646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.593761, 36.697411, 53.745445>,  <34.892662, 36.955242, 53.810112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593761, 36.697411, 53.745445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186395, -0.030215, 0.982010,
		-0.637864, 0.763944, -0.097568,
		-0.747252, -0.644575, -0.161668,
		34.369587, 36.504040, 53.696945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827488, 36.769543, 54.448433>,  <34.892662, 36.955242, 53.810112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827488, 36.769543, 54.448433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.513653, 36.590485, 54.276833>,  <34.325352, 36.483051, 54.173874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.513653, 36.590485, 54.276833>,  <34.827488, 36.769543, 54.448433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513653, 36.590485, 54.276833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468624, -0.024917, 0.883047,
		-0.405980, 0.893865, -0.190227,
		-0.784584, -0.447644, -0.429002,
		34.278278, 36.456192, 54.148132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210358, 37.018177, 54.712208>,  <34.827488, 36.769543, 54.448433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210358, 37.018177, 54.712208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.140434, 36.636524, 54.614983>,  <34.098480, 36.407532, 54.556648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.140434, 36.636524, 54.614983>,  <34.210358, 37.018177, 54.712208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140434, 36.636524, 54.614983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465039, -0.137585, 0.874534,
		-0.867861, 0.265904, -0.419658,
		-0.174804, -0.954130, -0.243060,
		34.087994, 36.350285, 54.542065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531002, 36.952194, 54.915359>,  <34.210358, 37.018177, 54.712208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531002, 36.952194, 54.915359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.699368, 36.592445, 54.868088>,  <33.800385, 36.376595, 54.839725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.699368, 36.592445, 54.868088>,  <33.531002, 36.952194, 54.915359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699368, 36.592445, 54.868088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155417, -0.199855, 0.967421,
		-0.893689, -0.388830, -0.223898,
		0.420910, -0.899372, -0.118177,
		33.825642, 36.322636, 54.832634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074955, 36.446960, 55.035271>,  <33.531002, 36.952194, 54.915359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074955, 36.446960, 55.035271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.452930, 36.364754, 55.137135>,  <33.679718, 36.315430, 55.198254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.452930, 36.364754, 55.137135>,  <33.074955, 36.446960, 55.035271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452930, 36.364754, 55.137135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271450, -0.057661, 0.960724,
		-0.182764, -0.976953, -0.110275,
		0.944941, -0.205520, 0.254655,
		33.736412, 36.303101, 55.213531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090271, 35.829212, 55.576443>,  <33.074955, 36.446960, 55.035271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090271, 35.829212, 55.576443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.375416, 36.108795, 55.599358>,  <33.546501, 36.276546, 55.613106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.375416, 36.108795, 55.599358>,  <33.090271, 35.829212, 55.576443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375416, 36.108795, 55.599358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210234, 0.135057, 0.968277,
		0.669052, -0.702290, 0.243222,
		0.712861, 0.698962, 0.057286,
		33.589275, 36.318485, 55.616543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329224, 36.165409, 55.386734>,  <33.090271, 35.829212, 55.576443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329224, 36.165409, 55.386734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.937216, 36.095306, 55.349129>,  <31.702009, 36.053246, 55.326565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.937216, 36.095306, 55.349129>,  <32.329224, 36.165409, 55.386734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937216, 36.095306, 55.349129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129036, -0.200591, -0.971140,
		0.151337, -0.963872, 0.219198,
		-0.980024, -0.175254, -0.094017,
		31.643209, 36.042728, 55.320923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277756, 35.654953, 54.935585>,  <32.329224, 36.165409, 55.386734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277756, 35.654953, 54.935585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.924040, 35.839962, 54.909969>,  <31.711811, 35.950970, 54.894600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.924040, 35.839962, 54.909969>,  <32.277756, 35.654953, 54.935585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924040, 35.839962, 54.909969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024744, -0.090547, -0.995585,
		-0.466282, -0.881970, 0.068626,
		-0.884290, 0.462525, -0.064044,
		31.658752, 35.978718, 54.890755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807388, 35.181221, 54.617180>,  <32.277756, 35.654953, 54.935585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807388, 35.181221, 54.617180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.634457, 35.538448, 54.567356>,  <31.530697, 35.752785, 54.537460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.634457, 35.538448, 54.567356>,  <31.807388, 35.181221, 54.617180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634457, 35.538448, 54.567356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179686, -0.220692, -0.958649,
		-0.883631, -0.392071, 0.255884,
		-0.432330, 0.893071, -0.124561,
		31.504757, 35.806370, 54.529987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134388, 35.041363, 54.144100>,  <31.807388, 35.181221, 54.617180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134388, 35.041363, 54.144100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.213804, 35.433308, 54.135548>,  <31.261454, 35.668472, 54.130417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.213804, 35.433308, 54.135548>,  <31.134388, 35.041363, 54.144100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213804, 35.433308, 54.135548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156843, 0.010231, -0.987571,
		-0.967462, 0.199424, 0.155715,
		0.198539, 0.979860, -0.021380,
		31.273365, 35.727264, 54.129135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586016, 35.365391, 53.790382>,  <31.134388, 35.041363, 54.144100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586016, 35.365391, 53.790382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.907408, 35.601933, 53.762920>,  <31.100243, 35.743858, 53.746445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.907408, 35.601933, 53.762920>,  <30.586016, 35.365391, 53.790382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907408, 35.601933, 53.762920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090341, 0.007127, -0.995885,
		-0.588435, 0.806378, 0.059151,
		0.803481, 0.591358, -0.068655,
		31.148453, 35.779339, 53.742325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375452, 35.830967, 53.289589>,  <30.586016, 35.365391, 53.790382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375452, 35.830967, 53.289589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.775301, 35.827435, 53.300011>,  <31.015209, 35.825317, 53.306263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.775301, 35.827435, 53.300011>,  <30.375452, 35.830967, 53.289589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775301, 35.827435, 53.300011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024385, -0.154235, -0.987733,
		0.012739, 0.987995, -0.153961,
		0.999621, -0.008828, 0.026057,
		31.075188, 35.824787, 53.307827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542946, 36.435902, 52.736446>,  <30.375452, 35.830967, 53.289589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542946, 36.435902, 52.736446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.859993, 36.197960, 52.789978>,  <31.050220, 36.055195, 52.822098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.859993, 36.197960, 52.789978>,  <30.542946, 36.435902, 52.736446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859993, 36.197960, 52.789978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113761, -0.071357, -0.990942,
		0.599011, 0.800664, 0.011112,
		0.792619, -0.594850, 0.133828,
		31.097778, 36.019505, 52.830128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036739, 36.712730, 52.222149>,  <30.542946, 36.435902, 52.736446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036739, 36.712730, 52.222149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.179447, 36.352299, 52.320759>,  <31.265072, 36.136040, 52.379925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.179447, 36.352299, 52.320759>,  <31.036739, 36.712730, 52.222149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179447, 36.352299, 52.320759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171398, -0.196271, -0.965453,
		0.918334, 0.386700, 0.084419,
		0.356772, -0.901078, 0.246522,
		31.286478, 36.081974, 52.394714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700945, 36.685760, 51.925594>,  <31.036739, 36.712730, 52.222149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700945, 36.685760, 51.925594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.590071, 36.306416, 51.987263>,  <31.523546, 36.078808, 52.024265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.590071, 36.306416, 51.987263>,  <31.700945, 36.685760, 51.925594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590071, 36.306416, 51.987263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138944, -0.198339, -0.970235,
		0.950717, -0.247513, 0.186747,
		-0.277185, -0.948366, 0.154174,
		31.506916, 36.021904, 52.033516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268696, 36.370808, 51.611599>,  <31.700945, 36.685760, 51.925594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268696, 36.370808, 51.611599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.969469, 36.105785, 51.626629>,  <31.789932, 35.946774, 51.635647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.969469, 36.105785, 51.626629>,  <32.268696, 36.370808, 51.611599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969469, 36.105785, 51.626629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059240, -0.123062, -0.990629,
		0.660970, -0.738835, 0.131309,
		-0.748071, -0.662554, 0.037571,
		31.745049, 35.907021, 51.637901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477489, 35.932240, 51.122501>,  <32.268696, 36.370808, 51.611599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477489, 35.932240, 51.122501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.087986, 35.862171, 51.180614>,  <31.854284, 35.820129, 51.215481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.087986, 35.862171, 51.180614>,  <32.477489, 35.932240, 51.122501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087986, 35.862171, 51.180614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109111, -0.200876, -0.973521,
		0.199722, -0.963827, 0.176491,
		-0.973759, -0.175176, 0.145284,
		31.795858, 35.809620, 51.224201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353825, 35.224480, 50.829884>,  <32.477489, 35.932240, 51.122501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353825, 35.224480, 50.829884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.031010, 35.460022, 50.847557>,  <31.837322, 35.601345, 50.858162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.031010, 35.460022, 50.847557>,  <32.353825, 35.224480, 50.829884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031010, 35.460022, 50.847557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061291, -0.009107, -0.998078,
		-0.587318, -0.808190, 0.043441,
		-0.807032, 0.588851, 0.044186,
		31.788900, 35.636677, 50.860813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745335, 34.779606, 50.447086>,  <32.353825, 35.224480, 50.829884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745335, 34.779606, 50.447086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.658340, 35.169678, 50.463699>,  <31.606144, 35.403721, 50.473667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.658340, 35.169678, 50.463699>,  <31.745335, 34.779606, 50.447086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658340, 35.169678, 50.463699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094191, 0.021386, -0.995324,
		-0.971508, -0.220383, 0.087202,
		-0.217488, 0.975179, 0.041535,
		31.593094, 35.462231, 50.476158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268692, 34.895866, 49.936104>,  <31.745335, 34.779606, 50.447086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268692, 34.895866, 49.936104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.398462, 35.270172, 49.991379>,  <31.476324, 35.494755, 50.024544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.398462, 35.270172, 49.991379>,  <31.268692, 34.895866, 49.936104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398462, 35.270172, 49.991379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088524, 0.175479, -0.980495,
		-0.941760, 0.305865, 0.139768,
		0.324426, 0.935763, 0.138183,
		31.495790, 35.550900, 50.032833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096117, 35.186615, 49.335716>,  <31.268692, 34.895866, 49.936104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096117, 35.186615, 49.335716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.311731, 35.486309, 49.489647>,  <31.441101, 35.666126, 49.582005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.311731, 35.486309, 49.489647>,  <31.096117, 35.186615, 49.335716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311731, 35.486309, 49.489647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016934, 0.466434, -0.884394,
		-0.842111, 0.470205, 0.264113,
		0.539038, 0.749230, 0.384827,
		31.473442, 35.711079, 49.605095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830927, 35.882301, 49.033630>,  <31.096117, 35.186615, 49.335716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830927, 35.882301, 49.033630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.212082, 35.947170, 49.136162>,  <31.440775, 35.986092, 49.197681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.212082, 35.947170, 49.136162>,  <30.830927, 35.882301, 49.033630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212082, 35.947170, 49.136162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103723, 0.619911, -0.777786,
		-0.285037, 0.767730, 0.573885,
		0.952888, 0.162173, 0.256329,
		31.497948, 35.995823, 49.213062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975101, 36.628300, 49.103859>,  <30.830927, 35.882301, 49.033630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975101, 36.628300, 49.103859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.328196, 36.445229, 49.061314>,  <31.540052, 36.335388, 49.035786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.328196, 36.445229, 49.061314>,  <30.975101, 36.628300, 49.103859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328196, 36.445229, 49.061314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202289, 0.574484, -0.793125,
		0.424098, 0.678602, 0.599700,
		0.882734, -0.457676, -0.106364,
		31.593016, 36.307926, 49.029404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431250, 37.146667, 49.090645>,  <30.975101, 36.628300, 49.103859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431250, 37.146667, 49.090645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.595375, 36.828606, 48.912037>,  <31.693850, 36.637768, 48.804871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.595375, 36.828606, 48.912037>,  <31.431250, 37.146667, 49.090645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595375, 36.828606, 48.912037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044662, 0.506567, -0.861043,
		0.910851, 0.333354, 0.243364,
		0.410313, -0.795150, -0.446519,
		31.718470, 36.590061, 48.778080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902157, 37.492352, 48.626266>,  <31.431250, 37.146667, 49.090645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902157, 37.492352, 48.626266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.871561, 37.107224, 48.522633>,  <31.853203, 36.876148, 48.460453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.871561, 37.107224, 48.522633>,  <31.902157, 37.492352, 48.626266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871561, 37.107224, 48.522633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118762, 0.266796, -0.956408,
		0.989972, -0.042387, -0.134754,
		-0.076491, -0.962821, -0.259086,
		31.848614, 36.818378, 48.444908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465263, 37.390263, 48.163490>,  <31.902157, 37.492352, 48.626266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465263, 37.390263, 48.163490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.183350, 37.115200, 48.093731>,  <32.014202, 36.950161, 48.051876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.183350, 37.115200, 48.093731>,  <32.465263, 37.390263, 48.163490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183350, 37.115200, 48.093731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010892, 0.256285, -0.966540,
		0.709342, -0.679299, -0.188115,
		-0.704780, -0.687656, -0.174395,
		31.971916, 36.908905, 48.041412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.844147, 41.471592, 35.866360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.641815, 41.449009, 35.522045>,  <40.520416, 41.435459, 35.315456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.641815, 41.449009, 35.522045>,  <40.844147, 41.471592, 35.866360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641815, 41.449009, 35.522045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039680, -0.995277, 0.088599,
		-0.861722, 0.078972, 0.501197,
		-0.505826, -0.056460, -0.860786,
		40.490067, 41.432072, 35.263809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517357, 40.906994, 36.053139>,  <40.844147, 41.471592, 35.866360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517357, 40.906994, 36.053139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.415100, 40.944901, 35.668293>,  <40.353745, 40.967644, 35.437386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.415100, 40.944901, 35.668293>,  <40.517357, 40.906994, 36.053139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.415100, 40.944901, 35.668293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178427, -0.982713, -0.049385,
		-0.950163, 0.159042, 0.268133,
		-0.255644, 0.094766, -0.962115,
		40.338406, 40.973331, 35.379658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753082, 40.812309, 35.851803>,  <40.517357, 40.906994, 36.053139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753082, 40.812309, 35.851803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.995392, 40.686718, 35.559376>,  <40.140778, 40.611362, 35.383919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.995392, 40.686718, 35.559376>,  <39.753082, 40.812309, 35.851803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995392, 40.686718, 35.559376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381646, -0.920903, 0.079275,
		-0.698132, 0.230985, -0.677686,
		0.605771, -0.313981, -0.731066,
		40.177124, 40.592525, 35.340057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378445, 40.332905, 35.585331>,  <39.753082, 40.812309, 35.851803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378445, 40.332905, 35.585331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.715946, 40.239853, 35.391850>,  <39.918446, 40.184021, 35.275761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.715946, 40.239853, 35.391850>,  <39.378445, 40.332905, 35.585331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715946, 40.239853, 35.391850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172079, -0.970865, 0.166765,
		-0.508403, -0.057473, -0.859199,
		0.843751, -0.232634, -0.483700,
		39.969070, 40.170063, 35.246738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183308, 39.705505, 35.477226>,  <39.378445, 40.332905, 35.585331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183308, 39.705505, 35.477226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.564873, 39.717728, 35.357819>,  <39.793812, 39.725063, 35.286175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.564873, 39.717728, 35.357819>,  <39.183308, 39.705505, 35.477226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564873, 39.717728, 35.357819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072361, -0.988870, 0.130003,
		-0.291226, -0.145613, -0.945508,
		0.953914, 0.030558, -0.298522,
		39.851048, 39.726894, 35.268261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268421, 39.112171, 34.976261>,  <39.183308, 39.705505, 35.477226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268421, 39.112171, 34.976261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.612000, 39.208958, 35.156776>,  <39.818146, 39.267029, 35.265087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.612000, 39.208958, 35.156776>,  <39.268421, 39.112171, 34.976261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612000, 39.208958, 35.156776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131205, -0.955889, 0.262794,
		0.494971, -0.166515, -0.852805,
		0.858946, 0.241968, 0.451290,
		39.869682, 39.281548, 35.292164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630821, 38.549660, 34.834766>,  <39.268421, 39.112171, 34.976261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630821, 38.549660, 34.834766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.813698, 38.719444, 35.147385>,  <39.923424, 38.821316, 35.334953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.813698, 38.719444, 35.147385>,  <39.630821, 38.549660, 34.834766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813698, 38.719444, 35.147385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226119, -0.905363, 0.359428,
		0.860142, 0.012393, -0.509905,
		0.457194, 0.424458, 0.781543,
		39.950855, 38.846783, 35.381847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140388, 38.065418, 35.039623>,  <39.630821, 38.549660, 34.834766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140388, 38.065418, 35.039623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.138832, 38.326809, 35.342400>,  <40.137897, 38.483643, 35.524063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.138832, 38.326809, 35.342400>,  <40.140388, 38.065418, 35.039623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138832, 38.326809, 35.342400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273475, -0.727393, 0.629374,
		0.961871, 0.209454, -0.175877,
		-0.003893, 0.653474, 0.756939,
		40.137665, 38.522850, 35.569481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832024, 38.004654, 35.320030>,  <40.140388, 38.065418, 35.039623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832024, 38.004654, 35.320030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.586727, 38.163937, 35.592899>,  <40.439548, 38.259506, 35.756622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.586727, 38.163937, 35.592899>,  <40.832024, 38.004654, 35.320030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586727, 38.163937, 35.592899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244578, -0.725461, 0.643342,
		0.751073, 0.561371, 0.347493,
		-0.613246, 0.398208, 0.682173,
		40.402752, 38.283398, 35.797550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245079, 38.075836, 35.943237>,  <40.832024, 38.004654, 35.320030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245079, 38.075836, 35.943237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.854786, 38.074474, 36.030815>,  <40.620609, 38.073658, 36.083363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.854786, 38.074474, 36.030815>,  <41.245079, 38.075836, 35.943237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.854786, 38.074474, 36.030815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160836, -0.689670, 0.706036,
		0.148598, 0.724115, 0.673480,
		-0.975731, -0.003405, 0.218948,
		40.562065, 38.073452, 36.096500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245136, 38.161880, 36.631374>,  <41.245079, 38.075836, 35.943237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245136, 38.161880, 36.631374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.902477, 37.982922, 36.528618>,  <40.696880, 37.875546, 36.466965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.902477, 37.982922, 36.528618>,  <41.245136, 38.161880, 36.631374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902477, 37.982922, 36.528618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105130, -0.638883, 0.762087,
		-0.505077, 0.625833, 0.594332,
		-0.856647, -0.447395, -0.256891,
		40.645485, 37.848701, 36.451550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.936390, 37.967033, 37.229382>,  <41.245136, 38.161880, 36.631374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.936390, 37.967033, 37.229382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.735146, 37.726200, 36.981392>,  <40.614399, 37.581699, 36.832600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.735146, 37.726200, 36.981392>,  <40.936390, 37.967033, 37.229382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735146, 37.726200, 36.981392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204080, -0.779862, 0.591749,
		-0.839778, 0.171193, 0.515234,
		-0.503114, -0.602087, -0.619974,
		40.584209, 37.545574, 36.795399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508469, 37.521587, 37.660526>,  <40.936390, 37.967033, 37.229382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508469, 37.521587, 37.660526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.515396, 37.320992, 37.314529>,  <40.519554, 37.200634, 37.106934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.515396, 37.320992, 37.314529>,  <40.508469, 37.521587, 37.660526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515396, 37.320992, 37.314529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038013, -0.864163, 0.501774,
		-0.999127, -0.041571, 0.004096,
		0.017320, -0.501492, -0.864989,
		40.520592, 37.170544, 37.055031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230255, 36.968006, 37.824867>,  <40.508469, 37.521587, 37.660526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230255, 36.968006, 37.824867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.423954, 36.907337, 37.480194>,  <40.540173, 36.870934, 37.273388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.423954, 36.907337, 37.480194>,  <40.230255, 36.968006, 37.824867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423954, 36.907337, 37.480194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414448, -0.827591, 0.378584,
		-0.770544, -0.540452, -0.337897,
		0.484247, -0.151675, -0.861685,
		40.569229, 36.861835, 37.221687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237331, 36.239285, 37.748146>,  <40.230255, 36.968006, 37.824867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237331, 36.239285, 37.748146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.522125, 36.378498, 37.504196>,  <40.693001, 36.462029, 37.357826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.522125, 36.378498, 37.504196>,  <40.237331, 36.239285, 37.748146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522125, 36.378498, 37.504196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608887, -0.738610, 0.289328,
		-0.349765, -0.577344, -0.737793,
		0.711983, 0.348036, -0.609877,
		40.735722, 36.482910, 37.321232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527115, 35.685623, 37.413643>,  <40.237331, 36.239285, 37.748146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527115, 35.685623, 37.413643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.826698, 35.948723, 37.381569>,  <41.006447, 36.106583, 37.362324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.826698, 35.948723, 37.381569>,  <40.527115, 35.685623, 37.413643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826698, 35.948723, 37.381569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662587, -0.742263, 0.100120,
		0.006338, -0.128113, -0.991739,
		0.748958, 0.657749, -0.080181,
		41.051384, 36.146046, 37.357513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993916, 35.319336, 36.916924>,  <40.527115, 35.685623, 37.413643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993916, 35.319336, 36.916924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.194710, 35.592201, 37.129593>,  <41.315186, 35.755920, 37.257195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.194710, 35.592201, 37.129593>,  <40.993916, 35.319336, 36.916924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194710, 35.592201, 37.129593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683542, -0.689550, 0.239355,
		0.529890, 0.243266, -0.812427,
		0.501982, 0.682160, 0.531669,
		41.345303, 35.796848, 37.289093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575573, 35.340282, 36.664932>,  <40.993916, 35.319336, 36.916924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575573, 35.340282, 36.664932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.652489, 35.482758, 37.030697>,  <41.698639, 35.568241, 37.250156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.652489, 35.482758, 37.030697>,  <41.575573, 35.340282, 36.664932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.652489, 35.482758, 37.030697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760215, -0.643306, 0.090721,
		0.620563, 0.677708, -0.394479,
		0.192289, 0.356187, 0.914416,
		41.710175, 35.589615, 37.305023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278915, 35.315308, 36.743412>,  <41.575573, 35.340282, 36.664932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278915, 35.315308, 36.743412> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.159077, 35.360996, 37.122292>,  <42.087173, 35.388409, 37.349621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.159077, 35.360996, 37.122292>,  <42.278915, 35.315308, 36.743412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159077, 35.360996, 37.122292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679287, -0.671599, 0.295845,
		0.669933, 0.732057, 0.123618,
		-0.299597, 0.114224, 0.947204,
		42.069199, 35.395264, 37.406452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926609, 35.289242, 37.149120>,  <42.278915, 35.315308, 36.743412>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926609, 35.289242, 37.149120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.630146, 35.207710, 37.404976>,  <42.452267, 35.158791, 37.558491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.630146, 35.207710, 37.404976>,  <42.926609, 35.289242, 37.149120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630146, 35.207710, 37.404976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595148, -0.640340, 0.485556,
		0.310616, 0.740553, 0.595902,
		-0.741159, -0.203828, 0.639638,
		42.407799, 35.146561, 37.596867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215153, 35.381165, 37.833805>,  <42.926609, 35.289242, 37.149120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215153, 35.381165, 37.833805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.900646, 35.151630, 37.925453>,  <42.711941, 35.013908, 37.980442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.900646, 35.151630, 37.925453>,  <43.215153, 35.381165, 37.833805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.900646, 35.151630, 37.925453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601488, -0.625969, 0.496361,
		-0.141410, 0.528084, 0.837335,
		-0.786267, -0.573838, 0.229118,
		42.664764, 34.979481, 37.994190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727917, 35.343819, 38.327690>,  <43.215153, 35.381165, 37.833805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727917, 35.343819, 38.327690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.874329, 35.049988, 38.099159>,  <43.962177, 34.873688, 37.962040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.874329, 35.049988, 38.099159>,  <43.727917, 35.343819, 38.327690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.874329, 35.049988, 38.099159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381892, 0.678424, -0.627614,
		0.848634, 0.011541, 0.528854,
		0.366030, -0.734580, -0.571326,
		43.984138, 34.829613, 37.927761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010868, 35.958809, 37.989479>,  <43.727917, 35.343819, 38.327690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.010868, 35.958809, 37.989479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.351921, 35.797665, 37.856377>,  <44.556553, 35.700977, 37.776516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.351921, 35.797665, 37.856377>,  <44.010868, 35.958809, 37.989479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.351921, 35.797665, 37.856377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463316, 0.877333, 0.125000,
		0.241583, -0.260751, 0.934690,
		0.852629, -0.402859, -0.332759,
		44.607708, 35.676807, 37.756550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.531342, 36.167942, 38.307903>,  <44.010868, 35.958809, 37.989479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.531342, 36.167942, 38.307903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.684288, 36.086510, 37.947380>,  <44.776058, 36.037651, 37.731068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.684288, 36.086510, 37.947380>,  <44.531342, 36.167942, 38.307903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.684288, 36.086510, 37.947380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233535, 0.965051, -0.118901,
		0.894010, -0.165022, 0.416550,
		0.382371, -0.203578, -0.901304,
		44.799000, 36.025436, 37.676991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.240772, 36.337677, 38.323895>,  <44.531342, 36.167942, 38.307903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.240772, 36.337677, 38.323895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.122898, 36.338238, 37.941658>,  <45.052174, 36.338573, 37.712315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.122898, 36.338238, 37.941658>,  <45.240772, 36.337677, 38.323895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.122898, 36.338238, 37.941658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231128, 0.970412, -0.069855,
		0.927222, -0.241450, -0.286290,
		-0.294685, 0.001399, -0.955593,
		45.034492, 36.338657, 37.654980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.720512, 36.796593, 38.032753>,  <45.240772, 36.337677, 38.323895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.720512, 36.796593, 38.032753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.432198, 36.783783, 37.755787>,  <45.259209, 36.776096, 37.589607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.432198, 36.783783, 37.755787>,  <45.720512, 36.796593, 38.032753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.432198, 36.783783, 37.755787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153798, 0.966644, -0.204806,
		0.675882, -0.254113, -0.691817,
		-0.720784, -0.032024, -0.692419,
		45.215961, 36.774178, 37.548061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.982040, 37.098740, 37.477974>,  <45.720512, 36.796593, 38.032753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.982040, 37.098740, 37.477974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.590698, 37.102848, 37.395309>,  <45.355892, 37.105312, 37.345711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.590698, 37.102848, 37.395309>,  <45.982040, 37.098740, 37.477974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.590698, 37.102848, 37.395309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096580, 0.905948, -0.412225,
		0.182988, -0.423264, -0.887335,
		-0.978359, 0.010267, -0.206657,
		45.297192, 37.105927, 37.333313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.874031, 37.183304, 36.755684>,  <45.982040, 37.098740, 37.477974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.874031, 37.183304, 36.755684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.539505, 37.317623, 36.929035>,  <45.338787, 37.398216, 37.033047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.539505, 37.317623, 36.929035>,  <45.874031, 37.183304, 36.755684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.539505, 37.317623, 36.929035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067450, 0.847490, -0.526508,
		-0.544080, -0.411097, -0.731421,
		-0.836318, 0.335797, 0.433374,
		45.288609, 37.418362, 37.059048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.675510, 37.735699, 36.279320>,  <45.874031, 37.183304, 36.755684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.675510, 37.735699, 36.279320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.430740, 37.796906, 36.589706>,  <45.283878, 37.833630, 36.775940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.430740, 37.796906, 36.589706>,  <45.675510, 37.735699, 36.279320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.430740, 37.796906, 36.589706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234594, 0.901838, -0.362842,
		-0.755322, -0.404071, -0.515961,
		-0.611927, 0.153022, 0.775970,
		45.247162, 37.842812, 36.822498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.902882, 38.006168, 36.048550>,  <45.675510, 37.735699, 36.279320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.902882, 38.006168, 36.048550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.952808, 38.118584, 36.429169>,  <44.982765, 38.186031, 36.657539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.952808, 38.118584, 36.429169>,  <44.902882, 38.006168, 36.048550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.952808, 38.118584, 36.429169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263461, 0.934003, -0.241301,
		-0.956562, -0.220577, 0.190619,
		0.124813, 0.281040, 0.951545,
		44.990253, 38.202896, 36.714634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.357918, 38.371983, 36.130726>,  <44.902882, 38.006168, 36.048550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.357918, 38.371983, 36.130726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.585922, 38.482513, 36.440239>,  <44.722725, 38.548832, 36.625946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.585922, 38.482513, 36.440239>,  <44.357918, 38.371983, 36.130726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.585922, 38.482513, 36.440239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332305, 0.938823, -0.090473,
		-0.751442, -0.205560, 0.626961,
		0.570008, 0.276327, 0.773779,
		44.756924, 38.565411, 36.672371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.962639, 38.804996, 36.527851>,  <44.357918, 38.371983, 36.130726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.962639, 38.804996, 36.527851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.331970, 38.904705, 36.644695>,  <44.553570, 38.964531, 36.714802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.331970, 38.904705, 36.644695>,  <43.962639, 38.804996, 36.527851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.331970, 38.904705, 36.644695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248840, 0.967748, -0.039278,
		-0.292479, -0.036422, 0.955578,
		0.923328, 0.249274, 0.292109,
		44.608967, 38.979488, 36.732327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.916782, 39.255569, 37.015686>,  <43.962639, 38.804996, 36.527851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.916782, 39.255569, 37.015686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.282734, 39.313408, 36.864902>,  <44.502304, 39.348110, 36.774433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.282734, 39.313408, 36.864902>,  <43.916782, 39.255569, 37.015686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.282734, 39.313408, 36.864902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240673, 0.944964, -0.221630,
		0.324162, 0.293487, 0.899325,
		0.914875, 0.144599, -0.376956,
		44.557198, 39.356789, 36.751816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.135204, 39.890854, 37.224628>,  <43.916782, 39.255569, 37.015686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.135204, 39.890854, 37.224628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.376484, 39.821163, 36.913296>,  <44.521252, 39.779350, 36.726498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.376484, 39.821163, 36.913296>,  <44.135204, 39.890854, 37.224628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.376484, 39.821163, 36.913296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199839, 0.911709, -0.358958,
		0.772148, 0.372064, 0.515127,
		0.603202, -0.174226, -0.778327,
		44.557446, 39.768894, 36.679798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479141, 40.557255, 37.141872>,  <44.135204, 39.890854, 37.224628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479141, 40.557255, 37.141872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.495220, 40.331814, 36.811844>,  <44.504868, 40.196548, 36.613827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.495220, 40.331814, 36.811844>,  <44.479141, 40.557255, 37.141872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.495220, 40.331814, 36.811844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301434, 0.780426, -0.547789,
		0.952639, 0.270723, -0.138518,
		0.040195, -0.563599, -0.825070,
		44.507278, 40.162735, 36.564323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.792564, 40.904476, 36.624512>,  <44.479141, 40.557255, 37.141872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.792564, 40.904476, 36.624512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.630013, 40.639366, 36.372929>,  <44.532482, 40.480301, 36.221981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.630013, 40.639366, 36.372929>,  <44.792564, 40.904476, 36.624512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.630013, 40.639366, 36.372929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312331, 0.747655, -0.586056,
		0.858664, -0.041720, -0.510838,
		-0.406381, -0.662776, -0.628954,
		44.508099, 40.440533, 36.184242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.992756, 41.113758, 35.932343>,  <44.792564, 40.904476, 36.624512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.992756, 41.113758, 35.932343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.676296, 40.879494, 35.861809>,  <44.486420, 40.738937, 35.819489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.676296, 40.879494, 35.861809>,  <44.992756, 41.113758, 35.932343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.676296, 40.879494, 35.861809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368873, 0.686851, -0.626234,
		0.487873, -0.430397, -0.759432,
		-0.791146, -0.585657, -0.176335,
		44.438953, 40.703796, 35.808907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.864964, 41.091400, 35.233898>,  <44.992756, 41.113758, 35.932343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.864964, 41.091400, 35.233898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.516235, 40.970921, 35.388412>,  <44.306999, 40.898632, 35.481121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.516235, 40.970921, 35.388412>,  <44.864964, 41.091400, 35.233898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.516235, 40.970921, 35.388412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487815, 0.605357, -0.628951,
		-0.044399, -0.736764, -0.674690,
		-0.871817, -0.301199, 0.386282,
		44.254688, 40.880562, 35.504295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.430634, 40.977551, 34.661037>,  <44.864964, 41.091400, 35.233898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.430634, 40.977551, 34.661037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.171257, 41.015114, 34.963219>,  <44.015633, 41.037651, 35.144527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.171257, 41.015114, 34.963219>,  <44.430634, 40.977551, 34.661037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.171257, 41.015114, 34.963219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576106, 0.588147, -0.567613,
		-0.497620, -0.803283, -0.327277,
		-0.648441, 0.093909, 0.755450,
		43.976723, 41.043285, 35.189854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.735394, 40.781887, 34.420418>,  <44.430634, 40.977551, 34.661037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.735394, 40.781887, 34.420418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.683449, 41.020363, 34.737324>,  <43.652283, 41.163448, 34.927467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.683449, 41.020363, 34.737324>,  <43.735394, 40.781887, 34.420418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683449, 41.020363, 34.737324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631544, 0.566255, -0.529630,
		-0.764388, -0.569130, 0.302989,
		-0.129859, 0.596193, 0.792269,
		43.644489, 41.199223, 34.975006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922432, 40.862747, 34.456249>,  <43.735394, 40.781887, 34.420418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922432, 40.862747, 34.456249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.075764, 41.159035, 34.676937>,  <43.167763, 41.336807, 34.809349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.075764, 41.159035, 34.676937>,  <42.922432, 40.862747, 34.456249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.075764, 41.159035, 34.676937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694702, 0.624874, -0.356260,
		-0.608646, -0.246720, 0.754109,
		0.383327, 0.740717, 0.551724,
		43.190762, 41.381248, 34.842453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436718, 41.061485, 34.968433>,  <42.922432, 40.862747, 34.456249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436718, 41.061485, 34.968433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.679340, 41.365574, 34.875351>,  <42.824913, 41.548027, 34.819500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.679340, 41.365574, 34.875351>,  <42.436718, 41.061485, 34.968433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.679340, 41.365574, 34.875351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753753, 0.456771, -0.472458,
		-0.252880, 0.461974, 0.850077,
		0.606554, 0.760223, -0.232707,
		42.861305, 41.593639, 34.805538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.247692, 37.494171, 43.717278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018131, 37.167919, 43.687923>,  <35.880394, 36.972168, 43.670311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018131, 37.167919, 43.687923>,  <36.247692, 37.494171, 43.717278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018131, 37.167919, 43.687923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000906, 0.088976, -0.996033,
		0.818923, -0.571692, -0.050324,
		-0.573902, -0.815629, -0.073382,
		35.845959, 36.923229, 43.665909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546722, 37.120289, 43.149246>,  <36.247692, 37.494171, 43.717278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546722, 37.120289, 43.149246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176575, 36.969902, 43.168625>,  <35.954487, 36.879669, 43.180252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176575, 36.969902, 43.168625>,  <36.546722, 37.120289, 43.149246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176575, 36.969902, 43.168625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033181, -0.046982, -0.998345,
		0.377624, -0.925440, 0.031000,
		-0.925364, -0.375970, 0.048449,
		35.898964, 36.857113, 43.183159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569359, 36.469234, 42.841026>,  <36.546722, 37.120289, 43.149246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569359, 36.469234, 42.841026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188225, 36.588703, 42.819458>,  <35.959545, 36.660385, 42.806519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188225, 36.588703, 42.819458>,  <36.569359, 36.469234, 42.841026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188225, 36.588703, 42.819458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127625, 0.233104, -0.964041,
		-0.275362, -0.925450, -0.260227,
		-0.952832, 0.298672, -0.053922,
		35.902374, 36.678303, 42.803280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294384, 36.236198, 42.235603>,  <36.569359, 36.469234, 42.841026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294384, 36.236198, 42.235603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040138, 36.538406, 42.299088>,  <35.887592, 36.719730, 42.337177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040138, 36.538406, 42.299088>,  <36.294384, 36.236198, 42.235603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040138, 36.538406, 42.299088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068629, 0.260058, -0.963151,
		-0.768952, -0.601298, -0.217147,
		-0.635612, 0.755520, 0.158706,
		35.849453, 36.765060, 42.346699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862453, 36.141876, 41.760670>,  <36.294384, 36.236198, 42.235603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862453, 36.141876, 41.760670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787697, 36.515194, 41.883324>,  <35.742844, 36.739185, 41.956917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787697, 36.515194, 41.883324>,  <35.862453, 36.141876, 41.760670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787697, 36.515194, 41.883324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193687, 0.271005, -0.942890,
		-0.963097, -0.235613, 0.130118,
		-0.186895, 0.933297, 0.306639,
		35.731628, 36.795181, 41.975315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243645, 36.336575, 41.465611>,  <35.862453, 36.141876, 41.760670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243645, 36.336575, 41.465611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379333, 36.703560, 41.548740>,  <35.460747, 36.923752, 41.598618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379333, 36.703560, 41.548740>,  <35.243645, 36.336575, 41.465611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379333, 36.703560, 41.548740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177610, 0.279416, -0.943600,
		-0.923789, 0.283174, 0.257733,
		0.339218, 0.917464, 0.207827,
		35.481098, 36.978798, 41.611088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881241, 36.746349, 40.998581>,  <35.243645, 36.336575, 41.465611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881241, 36.746349, 40.998581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203472, 36.965820, 41.088024>,  <35.396809, 37.097504, 41.141689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203472, 36.965820, 41.088024>,  <34.881241, 36.746349, 40.998581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203472, 36.965820, 41.088024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027503, 0.342365, -0.939164,
		-0.591856, 0.762716, 0.260710,
		0.805574, 0.548680, 0.223608,
		35.445145, 37.130424, 41.155106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736629, 37.500843, 40.877140>,  <34.881241, 36.746349, 40.998581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736629, 37.500843, 40.877140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128231, 37.421314, 40.859150>,  <35.363194, 37.373596, 40.848358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128231, 37.421314, 40.859150>,  <34.736629, 37.500843, 40.877140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128231, 37.421314, 40.859150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054481, 0.467801, -0.882153,
		0.196429, 0.861181, 0.468811,
		0.979003, -0.198821, -0.044972,
		35.421932, 37.361668, 40.845657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909710, 38.046371, 40.453804>,  <34.736629, 37.500843, 40.877140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909710, 38.046371, 40.453804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213032, 37.785831, 40.443138>,  <35.395027, 37.629505, 40.436737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213032, 37.785831, 40.443138>,  <34.909710, 38.046371, 40.453804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213032, 37.785831, 40.443138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198489, 0.269654, -0.942279,
		0.620946, 0.709243, 0.333767,
		0.758306, -0.651353, -0.026663,
		35.440525, 37.590427, 40.435139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329937, 38.386543, 39.937428>,  <34.909710, 38.046371, 40.453804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329937, 38.386543, 39.937428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480724, 38.019886, 39.990582>,  <35.571198, 37.799892, 40.022476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480724, 38.019886, 39.990582>,  <35.329937, 38.386543, 39.937428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480724, 38.019886, 39.990582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286733, -0.020933, -0.957782,
		0.880725, 0.399161, 0.254940,
		0.376972, -0.916642, 0.132889,
		35.593815, 37.744892, 40.030449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111576, 38.321789, 39.651295>,  <35.329937, 38.386543, 39.937428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111576, 38.321789, 39.651295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941795, 37.959618, 39.653851>,  <35.839928, 37.742317, 39.655384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941795, 37.959618, 39.653851>,  <36.111576, 38.321789, 39.651295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941795, 37.959618, 39.653851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360758, -0.175589, -0.915982,
		0.830476, -0.386487, 0.401169,
		-0.424456, -0.905426, 0.006394,
		35.814457, 37.687988, 39.655769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552937, 37.937714, 39.151577>,  <36.111576, 38.321789, 39.651295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552937, 37.937714, 39.151577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191048, 37.780449, 39.217186>,  <35.973915, 37.686092, 39.256550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191048, 37.780449, 39.217186>,  <36.552937, 37.937714, 39.151577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191048, 37.780449, 39.217186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103208, -0.171264, -0.979805,
		0.413309, -0.903380, 0.114369,
		-0.904723, -0.393158, 0.164021,
		35.919632, 37.662502, 39.266392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533638, 37.283123, 38.752068>,  <36.552937, 37.937714, 39.151577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533638, 37.283123, 38.752068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162781, 37.427288, 38.793079>,  <35.940266, 37.513786, 38.817684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162781, 37.427288, 38.793079>,  <36.533638, 37.283123, 38.752068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162781, 37.427288, 38.793079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152905, -0.114096, -0.981632,
		-0.342093, -0.925789, 0.160892,
		-0.927142, 0.360411, 0.102527,
		35.884640, 37.535412, 38.823837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477448, 36.618496, 39.109344>,  <36.533638, 37.283123, 38.752068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477448, 36.618496, 39.109344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646790, 36.263020, 39.038921>,  <36.748394, 36.049732, 38.996666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646790, 36.263020, 39.038921>,  <36.477448, 36.618496, 39.109344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646790, 36.263020, 39.038921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280545, -0.313379, 0.907242,
		-0.861433, -0.334690, -0.381988,
		0.423352, -0.888694, -0.176059,
		36.773796, 35.996410, 38.986103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921364, 36.092163, 39.254837>,  <36.477448, 36.618496, 39.109344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921364, 36.092163, 39.254837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261906, 35.887543, 39.301334>,  <36.466228, 35.764771, 39.329231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261906, 35.887543, 39.301334>,  <35.921364, 36.092163, 39.254837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261906, 35.887543, 39.301334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358806, -0.406180, 0.840402,
		-0.382690, -0.757190, -0.529350,
		0.851355, -0.511548, 0.116243,
		36.517311, 35.734077, 39.336208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733685, 35.382320, 39.379776>,  <35.921364, 36.092163, 39.254837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733685, 35.382320, 39.379776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109295, 35.367844, 39.516556>,  <36.334660, 35.359158, 39.598621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109295, 35.367844, 39.516556>,  <35.733685, 35.382320, 39.379776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109295, 35.367844, 39.516556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266055, -0.706465, 0.655837,
		0.217834, -0.706822, -0.673016,
		0.939023, -0.036195, 0.341946,
		36.391003, 35.356983, 39.619141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988216, 34.664005, 39.363796>,  <35.733685, 35.382320, 39.379776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988216, 34.664005, 39.363796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174297, 34.862602, 39.656940>,  <36.285946, 34.981758, 39.832829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174297, 34.862602, 39.656940>,  <35.988216, 34.664005, 39.363796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174297, 34.862602, 39.656940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341512, -0.663144, 0.666040,
		0.816675, -0.560123, -0.138937,
		0.465200, 0.496490, 0.732863,
		36.313858, 35.011551, 39.876801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229607, 34.159801, 39.761604>,  <35.988216, 34.664005, 39.363796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229607, 34.159801, 39.761604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267143, 34.480839, 39.997246>,  <36.289665, 34.673462, 40.138630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267143, 34.480839, 39.997246>,  <36.229607, 34.159801, 39.761604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267143, 34.480839, 39.997246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306045, -0.539809, 0.784183,
		0.947380, -0.253884, 0.194970,
		0.093845, 0.802589, 0.589105,
		36.295296, 34.721615, 40.173977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460808, 33.856068, 40.251057>,  <36.229607, 34.159801, 39.761604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460808, 33.856068, 40.251057> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314350, 34.192600, 40.410107>,  <36.226475, 34.394520, 40.505535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314350, 34.192600, 40.410107>,  <36.460808, 33.856068, 40.251057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314350, 34.192600, 40.410107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371125, -0.523866, 0.766702,
		0.853349, 0.133156, 0.504048,
		-0.366144, 0.841329, 0.397623,
		36.204506, 34.445000, 40.529392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323311, 33.702816, 40.923573>,  <36.460808, 33.856068, 40.251057>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323311, 33.702816, 40.923573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136547, 34.055912, 40.902546>,  <36.024490, 34.267769, 40.889931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136547, 34.055912, 40.902546>,  <36.323311, 33.702816, 40.923573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136547, 34.055912, 40.902546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437402, -0.178876, 0.881296,
		0.768553, 0.434479, 0.469631,
		-0.466911, 0.882741, -0.052566,
		35.996475, 34.320736, 40.886776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394951, 33.862785, 41.561539>,  <36.323311, 33.702816, 40.923573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394951, 33.862785, 41.561539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085094, 34.056507, 41.398869>,  <35.899181, 34.172741, 41.301266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085094, 34.056507, 41.398869>,  <36.394951, 33.862785, 41.561539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085094, 34.056507, 41.398869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555965, -0.215044, 0.802907,
		0.301396, 0.848060, 0.435837,
		-0.774637, 0.484303, -0.406678,
		35.852703, 34.201797, 41.276867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136654, 34.123703, 42.152084>,  <36.394951, 33.862785, 41.561539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136654, 34.123703, 42.152084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842289, 34.157269, 41.883339>,  <35.665672, 34.177406, 41.722092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842289, 34.157269, 41.883339>,  <36.136654, 34.123703, 42.152084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842289, 34.157269, 41.883339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674791, -0.009355, 0.737950,
		0.055637, 0.996429, 0.063508,
		-0.735909, 0.083912, -0.671861,
		35.621517, 34.182442, 41.681782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762749, 34.703899, 42.420059>,  <36.136654, 34.123703, 42.152084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762749, 34.703899, 42.420059> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517895, 34.496807, 42.180977>,  <35.370983, 34.372551, 42.037529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517895, 34.496807, 42.180977>,  <35.762749, 34.703899, 42.420059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517895, 34.496807, 42.180977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652847, -0.095620, 0.751430,
		-0.446192, 0.850183, -0.279467,
		-0.612131, -0.517731, -0.597704,
		35.334255, 34.341488, 42.001667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117012, 35.039200, 42.459583>,  <35.762749, 34.703899, 42.420059>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117012, 35.039200, 42.459583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016449, 34.680950, 42.312805>,  <34.956112, 34.466000, 42.224739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016449, 34.680950, 42.312805>,  <35.117012, 35.039200, 42.459583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016449, 34.680950, 42.312805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694532, -0.097114, 0.712878,
		-0.674106, 0.434081, -0.597624,
		-0.251409, -0.895624, -0.366948,
		34.941025, 34.412262, 42.202721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405823, 35.011208, 42.601742>,  <35.117012, 35.039200, 42.459583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405823, 35.011208, 42.601742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527367, 34.634140, 42.546543>,  <34.600292, 34.407898, 42.513424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.527367, 34.634140, 42.546543>,  <34.405823, 35.011208, 42.601742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527367, 34.634140, 42.546543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622591, -0.306115, 0.720190,
		-0.721145, -0.132918, -0.679913,
		0.303858, -0.942670, -0.138000,
		34.618523, 34.351337, 42.505142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780823, 34.678116, 42.606834>,  <34.405823, 35.011208, 42.601742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780823, 34.678116, 42.606834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076500, 34.419460, 42.682159>,  <34.253906, 34.264267, 42.727352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076500, 34.419460, 42.682159>,  <33.780823, 34.678116, 42.606834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076500, 34.419460, 42.682159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490267, -0.324923, 0.808742,
		-0.461773, -0.690137, -0.557204,
		0.739191, -0.646634, 0.188310,
		34.298256, 34.225471, 42.738651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488396, 34.075031, 42.968475>,  <33.780823, 34.678116, 42.606834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488396, 34.075031, 42.968475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873730, 34.014080, 43.056816>,  <34.104931, 33.977509, 43.109821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873730, 34.014080, 43.056816>,  <33.488396, 34.075031, 42.968475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873730, 34.014080, 43.056816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251326, -0.224166, 0.941586,
		-0.093963, -0.962566, -0.254241,
		0.963331, -0.152372, 0.220854,
		34.162727, 33.968369, 43.123074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413216, 33.569729, 43.416729>,  <33.488396, 34.075031, 42.968475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413216, 33.569729, 43.416729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783436, 33.702782, 43.489082>,  <34.005566, 33.782612, 43.532494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783436, 33.702782, 43.489082>,  <33.413216, 33.569729, 43.416729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783436, 33.702782, 43.489082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215182, 0.069008, 0.974133,
		0.311544, -0.940529, 0.135446,
		0.925547, 0.332630, 0.180886,
		34.061100, 33.802570, 43.543346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458519, 32.847992, 43.321644>,  <33.413216, 33.569729, 43.416729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458519, 32.847992, 43.321644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131187, 32.618309, 43.331642>,  <32.934788, 32.480499, 43.337643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131187, 32.618309, 43.331642>,  <33.458519, 32.847992, 43.321644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131187, 32.618309, 43.331642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083185, 0.075295, -0.993685,
		0.568703, -0.815237, -0.109382,
		-0.818325, -0.574211, 0.024995,
		32.885689, 32.446045, 43.339142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681412, 32.399940, 42.797581>,  <33.458519, 32.847992, 43.321644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681412, 32.399940, 42.797581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284927, 32.364708, 42.837082>,  <33.047039, 32.343571, 42.860783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284927, 32.364708, 42.837082>,  <33.681412, 32.399940, 42.797581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284927, 32.364708, 42.837082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085692, -0.141417, -0.986234,
		0.100832, -0.986024, 0.132626,
		-0.991207, -0.088079, 0.098753,
		32.987564, 32.338284, 42.866707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550930, 31.829496, 42.326954>,  <33.681412, 32.399940, 42.797581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550930, 31.829496, 42.326954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188862, 31.975243, 42.414494>,  <32.971619, 32.062691, 42.467018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188862, 31.975243, 42.414494>,  <33.550930, 31.829496, 42.326954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188862, 31.975243, 42.414494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254133, -0.051226, -0.965812,
		-0.340699, -0.929846, 0.138966,
		-0.905175, 0.364367, 0.218852,
		32.917309, 32.084553, 42.480148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986298, 31.492704, 41.912338>,  <33.550930, 31.829496, 42.326954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986298, 31.492704, 41.912338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840473, 31.847155, 42.026794>,  <32.752979, 32.059826, 42.095470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840473, 31.847155, 42.026794>,  <32.986298, 31.492704, 41.912338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840473, 31.847155, 42.026794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376462, 0.140804, -0.915669,
		-0.851689, -0.441536, 0.282262,
		-0.364557, 0.886127, 0.286143,
		32.731106, 32.112991, 42.112637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309273, 31.469017, 41.617382>,  <32.986298, 31.492704, 41.912338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309273, 31.469017, 41.617382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387192, 31.854763, 41.688999>,  <32.433945, 32.086212, 41.731968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387192, 31.854763, 41.688999>,  <32.309273, 31.469017, 41.617382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387192, 31.854763, 41.688999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390466, 0.243696, -0.887777,
		-0.899772, 0.103027, 0.424023,
		0.194798, 0.964364, 0.179042,
		32.445633, 32.144073, 41.742710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718048, 31.827534, 41.369888>,  <32.309273, 31.469017, 41.617382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718048, 31.827534, 41.369888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986259, 32.122253, 41.404568>,  <32.147186, 32.299084, 41.425373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986259, 32.122253, 41.404568>,  <31.718048, 31.827534, 41.369888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986259, 32.122253, 41.404568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275284, 0.355617, -0.893171,
		-0.688919, 0.575032, 0.441281,
		0.670529, 0.736800, 0.086694,
		32.187420, 32.343292, 41.430576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316921, 32.434624, 41.313034>,  <31.718048, 31.827534, 41.369888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316921, 32.434624, 41.313034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698259, 32.523552, 41.231346>,  <31.927063, 32.576908, 41.182335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698259, 32.523552, 41.231346>,  <31.316921, 32.434624, 41.313034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698259, 32.523552, 41.231346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265116, 0.293048, -0.918606,
		-0.144383, 0.929889, 0.338318,
		0.953345, 0.222325, -0.204217,
		31.984262, 32.590248, 41.170082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396908, 33.151871, 41.099434>,  <31.316921, 32.434624, 41.313034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396908, 33.151871, 41.099434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745644, 33.022781, 40.952061>,  <31.954885, 32.945328, 40.863636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745644, 33.022781, 40.952061>,  <31.396908, 33.151871, 41.099434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745644, 33.022781, 40.952061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185179, 0.479198, -0.857950,
		0.453434, 0.816221, 0.358023,
		0.871841, -0.322725, -0.368432,
		32.007195, 32.925964, 40.841530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783003, 33.665886, 40.597168>,  <31.396908, 33.151871, 41.099434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.783003, 33.665886, 40.597168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917547, 33.307072, 40.482498>,  <31.998274, 33.091782, 40.413696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917547, 33.307072, 40.482498>,  <31.783003, 33.665886, 40.597168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917547, 33.307072, 40.482498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186025, 0.235120, -0.953999,
		0.923177, 0.374217, -0.087786,
		0.336363, -0.897040, -0.286671,
		32.018456, 33.037960, 40.396496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215008, 33.817188, 40.142242>,  <31.783003, 33.665886, 40.597168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215008, 33.817188, 40.142242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148655, 33.431320, 40.060375>,  <32.108841, 33.199799, 40.011253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148655, 33.431320, 40.060375>,  <32.215008, 33.817188, 40.142242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148655, 33.431320, 40.060375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083077, 0.193137, -0.977648,
		0.982640, -0.179181, 0.048104,
		-0.165885, -0.964672, -0.204670,
		32.098888, 33.141918, 39.998974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692436, 33.635319, 39.629063>,  <32.215008, 33.817188, 40.142242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692436, 33.635319, 39.629063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414822, 33.349072, 39.597561>,  <32.248253, 33.177322, 39.578659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414822, 33.349072, 39.597561>,  <32.692436, 33.635319, 39.629063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414822, 33.349072, 39.597561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035155, 0.142953, -0.989105,
		0.719082, -0.683705, -0.124373,
		-0.694035, -0.715620, -0.078759,
		32.206612, 33.134384, 39.573933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913715, 33.220997, 39.086796>,  <32.692436, 33.635319, 39.629063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913715, 33.220997, 39.086796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517345, 33.196339, 39.134560>,  <32.279522, 33.181541, 39.163219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517345, 33.196339, 39.134560>,  <32.913715, 33.220997, 39.086796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517345, 33.196339, 39.134560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134229, 0.410802, -0.901790,
		0.006538, -0.909638, -0.415350,
		-0.990929, -0.061648, 0.119414,
		32.220066, 33.177845, 39.170383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.166122, 31.875656, 47.231770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.790268, 31.927202, 47.104980>,  <32.564754, 31.958130, 47.028908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.790268, 31.927202, 47.104980>,  <33.166122, 31.875656, 47.231770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790268, 31.927202, 47.104980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299505, -0.138209, -0.944031,
		-0.165458, -0.981984, 0.091272,
		-0.939638, 0.128862, -0.316977,
		32.508377, 31.965862, 47.009888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059357, 31.260944, 46.808411>,  <33.166122, 31.875656, 47.231770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059357, 31.260944, 46.808411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.787251, 31.524633, 46.680248>,  <32.623985, 31.682848, 46.603352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.787251, 31.524633, 46.680248>,  <33.059357, 31.260944, 46.808411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787251, 31.524633, 46.680248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241329, -0.211317, -0.947156,
		-0.692096, -0.721643, -0.015338,
		-0.680267, 0.659225, -0.320405,
		32.583172, 31.722401, 46.584126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553062, 30.921173, 46.338081>,  <33.059357, 31.260944, 46.808411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553062, 30.921173, 46.338081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.542000, 31.309586, 46.243145>,  <32.535362, 31.542633, 46.186184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.542000, 31.309586, 46.243145>,  <32.553062, 30.921173, 46.338081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542000, 31.309586, 46.243145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096038, -0.233753, -0.967541,
		-0.994993, -0.049554, -0.086791,
		-0.027657, 0.971032, -0.237342,
		32.533703, 31.600895, 46.171944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262241, 30.898989, 45.731773>,  <32.553062, 30.921173, 46.338081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262241, 30.898989, 45.731773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.409798, 31.270496, 45.746250>,  <32.498333, 31.493401, 45.754936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.409798, 31.270496, 45.746250>,  <32.262241, 30.898989, 45.731773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409798, 31.270496, 45.746250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226719, -0.052145, -0.972563,
		-0.901399, 0.366975, -0.229805,
		0.368889, 0.928768, 0.036196,
		32.520466, 31.549128, 45.757111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936413, 31.196003, 45.135448>,  <32.262241, 30.898989, 45.731773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936413, 31.196003, 45.135448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.241585, 31.435350, 45.233345>,  <32.424686, 31.578959, 45.292084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.241585, 31.435350, 45.233345>,  <31.936413, 31.196003, 45.135448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241585, 31.435350, 45.233345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057071, 0.314755, -0.947456,
		-0.643959, 0.736808, 0.205985,
		0.762928, 0.598367, 0.244740,
		32.470463, 31.614861, 45.306767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754765, 31.845007, 45.007187>,  <31.936413, 31.196003, 45.135448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754765, 31.845007, 45.007187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.154560, 31.842136, 44.994743>,  <32.394436, 31.840414, 44.987278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.154560, 31.842136, 44.994743>,  <31.754765, 31.845007, 45.007187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154560, 31.842136, 44.994743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026368, 0.363712, -0.931138,
		0.017994, 0.931484, 0.363337,
		0.999490, -0.007175, -0.031106,
		32.454407, 31.839985, 44.985413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984293, 32.505520, 44.799110>,  <31.754765, 31.845007, 45.007187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984293, 32.505520, 44.799110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.296627, 32.271534, 44.711372>,  <32.484028, 32.131142, 44.658730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.296627, 32.271534, 44.711372>,  <31.984293, 32.505520, 44.799110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296627, 32.271534, 44.711372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100910, 0.464590, -0.879758,
		0.616533, 0.664811, 0.421797,
		0.780836, -0.584963, -0.219349,
		32.530876, 32.096046, 44.645569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460747, 32.931450, 44.500359>,  <31.984293, 32.505520, 44.799110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460747, 32.931450, 44.500359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.557137, 32.578655, 44.338356>,  <32.614971, 32.366978, 44.241154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.557137, 32.578655, 44.338356>,  <32.460747, 32.931450, 44.500359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557137, 32.578655, 44.338356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216718, 0.455663, -0.863368,
		0.946026, 0.120279, 0.300946,
		0.240975, -0.881989, -0.405002,
		32.629429, 32.314060, 44.216854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034237, 33.065834, 44.019230>,  <32.460747, 32.931450, 44.500359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034237, 33.065834, 44.019230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.871716, 32.714909, 43.917061>,  <32.774204, 32.504353, 43.855759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.871716, 32.714909, 43.917061>,  <33.034237, 33.065834, 44.019230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871716, 32.714909, 43.917061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046933, 0.259133, -0.964700,
		0.912532, -0.403950, -0.064112,
		-0.406304, -0.877311, -0.255426,
		32.749825, 32.451714, 43.840431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654793, 33.090027, 43.955299>,  <33.034237, 33.065834, 44.019230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654793, 33.090027, 43.955299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.886211, 33.415596, 43.976559>,  <34.025063, 33.610935, 43.989315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.886211, 33.415596, 43.976559>,  <33.654793, 33.090027, 43.955299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886211, 33.415596, 43.976559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001146, -0.064354, 0.997926,
		0.815651, -0.577404, -0.036299,
		0.578543, 0.813918, 0.053152,
		34.059772, 33.659771, 43.992504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344959, 32.845127, 44.243935>,  <33.654793, 33.090027, 43.955299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344959, 32.845127, 44.243935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.302277, 33.238861, 44.300068>,  <34.276665, 33.475101, 44.333748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.302277, 33.238861, 44.300068>,  <34.344959, 32.845127, 44.243935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302277, 33.238861, 44.300068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355674, -0.094009, 0.929870,
		0.928498, 0.149139, -0.340072,
		-0.106710, 0.984337, 0.140332,
		34.270264, 33.534161, 44.342167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.942013, 32.993050, 44.675396>,  <34.344959, 32.845127, 44.243935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.942013, 32.993050, 44.675396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.717003, 33.322048, 44.709003>,  <34.581997, 33.519447, 44.729168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.717003, 33.322048, 44.709003>,  <34.942013, 32.993050, 44.675396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717003, 33.322048, 44.709003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426376, 0.201530, 0.881810,
		0.708354, 0.531867, -0.464060,
		-0.562528, 0.822498, 0.084021,
		34.548244, 33.568798, 44.734211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384964, 33.446815, 44.971024>,  <34.942013, 32.993050, 44.675396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384964, 33.446815, 44.971024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.021034, 33.580090, 45.069988>,  <34.802677, 33.660053, 45.129368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.021034, 33.580090, 45.069988>,  <35.384964, 33.446815, 44.971024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021034, 33.580090, 45.069988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276966, 0.043523, 0.959894,
		0.309052, 0.941857, -0.131878,
		-0.909823, 0.333182, 0.247411,
		34.748089, 33.680046, 45.144211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454708, 33.901417, 45.409363>,  <35.384964, 33.446815, 44.971024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454708, 33.901417, 45.409363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.071541, 33.878017, 45.521774>,  <34.841640, 33.863976, 45.589222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.071541, 33.878017, 45.521774>,  <35.454708, 33.901417, 45.409363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071541, 33.878017, 45.521774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276160, 0.079358, 0.957830,
		-0.078337, 0.995128, -0.059862,
		-0.957914, -0.058502, 0.281031,
		34.784168, 33.860466, 45.606083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322983, 34.418022, 45.862438>,  <35.454708, 33.901417, 45.409363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322983, 34.418022, 45.862438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.037766, 34.150928, 45.947952>,  <34.866634, 33.990673, 45.999260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.037766, 34.150928, 45.947952>,  <35.322983, 34.418022, 45.862438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037766, 34.150928, 45.947952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234332, 0.060412, 0.970278,
		-0.660800, 0.741947, 0.113394,
		-0.713045, -0.667731, 0.213782,
		34.823853, 33.950611, 46.012089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952000, 34.788914, 46.415516>,  <35.322983, 34.418022, 45.862438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952000, 34.788914, 46.415516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.904804, 34.391796, 46.423950>,  <34.876488, 34.153526, 46.429012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.904804, 34.391796, 46.423950>,  <34.952000, 34.788914, 46.415516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904804, 34.391796, 46.423950> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066262, 0.013315, 0.997713,
		-0.990802, 0.119114, 0.064213,
		-0.117987, -0.992791, 0.021085,
		34.869408, 34.093960, 46.430275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541828, 34.733349, 46.845173>,  <34.952000, 34.788914, 46.415516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541828, 34.733349, 46.845173> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.678932, 34.357635, 46.838795>,  <34.761196, 34.132206, 46.834969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.678932, 34.357635, 46.838795>,  <34.541828, 34.733349, 46.845173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678932, 34.357635, 46.838795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019583, -0.009830, 0.999760,
		-0.939219, -0.342991, 0.015025,
		0.342761, -0.939287, -0.015949,
		34.781761, 34.075848, 46.834011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261333, 34.460743, 47.403889>,  <34.541828, 34.733349, 46.845173>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261333, 34.460743, 47.403889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.540848, 34.181721, 47.340485>,  <34.708557, 34.014309, 47.302444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.540848, 34.181721, 47.340485>,  <34.261333, 34.460743, 47.403889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540848, 34.181721, 47.340485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075890, -0.148043, 0.986065,
		-0.711297, -0.701074, -0.050513,
		0.698783, -0.697551, -0.158507,
		34.750484, 33.972454, 47.292931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017277, 33.885201, 47.726746>,  <34.261333, 34.460743, 47.403889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017277, 33.885201, 47.726746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.407246, 33.804756, 47.688622>,  <34.641228, 33.756489, 47.665745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.407246, 33.804756, 47.688622>,  <34.017277, 33.885201, 47.726746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407246, 33.804756, 47.688622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033156, -0.292246, 0.955768,
		-0.220067, -0.934959, -0.278249,
		0.974921, -0.201107, -0.095313,
		34.699722, 33.744423, 47.660027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170643, 33.230049, 47.946705>,  <34.017277, 33.885201, 47.726746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170643, 33.230049, 47.946705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.499008, 33.455536, 47.983223>,  <34.696026, 33.590828, 48.005135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.499008, 33.455536, 47.983223>,  <34.170643, 33.230049, 47.946705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499008, 33.455536, 47.983223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136260, -0.348608, 0.927311,
		0.554562, -0.748800, -0.362987,
		0.820910, 0.563712, 0.091293,
		34.745281, 33.624649, 48.010612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476944, 32.869419, 48.414391>,  <34.170643, 33.230049, 47.946705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476944, 32.869419, 48.414391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.680317, 33.213749, 48.423168>,  <34.802341, 33.420345, 48.428432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.680317, 33.213749, 48.423168>,  <34.476944, 32.869419, 48.414391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680317, 33.213749, 48.423168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148958, -0.113018, 0.982364,
		0.848122, -0.496195, -0.185688,
		0.508430, 0.860824, 0.021941,
		34.832848, 33.471996, 48.429752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048992, 32.742390, 48.777290>,  <34.476944, 32.869419, 48.414391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048992, 32.742390, 48.777290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.036613, 33.141201, 48.805534>,  <35.029186, 33.380486, 48.822479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.036613, 33.141201, 48.805534>,  <35.048992, 32.742390, 48.777290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036613, 33.141201, 48.805534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146137, -0.065369, 0.987102,
		0.988780, 0.040871, -0.143679,
		-0.030951, 0.997024, 0.070608,
		35.027328, 33.440308, 48.826717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675507, 32.962925, 49.123726>,  <35.048992, 32.742390, 48.777290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675507, 32.962925, 49.123726> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.420589, 33.268646, 49.163113>,  <35.267639, 33.452080, 49.186745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.420589, 33.268646, 49.163113>,  <35.675507, 32.962925, 49.123726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420589, 33.268646, 49.163113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084182, -0.057969, 0.994763,
		0.766013, 0.642241, -0.027398,
		-0.637289, 0.764307, 0.098470,
		35.229404, 33.497940, 49.192654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.944958, 35.996830, 49.461575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.109774, 35.645496, 49.364613>,  <29.208664, 35.434696, 49.306435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.109774, 35.645496, 49.364613>,  <28.944958, 35.996830, 49.461575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109774, 35.645496, 49.364613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353897, 0.399420, -0.845707,
		0.839630, 0.262680, 0.475416,
		0.412041, -0.878330, -0.242404,
		29.233385, 35.381996, 49.291893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682690, 36.060253, 49.180550>,  <28.944958, 35.996830, 49.461575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682690, 36.060253, 49.180550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.529064, 35.724693, 49.026283>,  <29.436888, 35.523357, 48.933723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.529064, 35.724693, 49.026283>,  <29.682690, 36.060253, 49.180550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529064, 35.724693, 49.026283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276517, 0.294019, -0.914927,
		0.880927, -0.458034, 0.119049,
		-0.384065, -0.838903, -0.385663,
		29.413845, 35.473022, 48.910583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156733, 35.913132, 48.706913>,  <29.682690, 36.060253, 49.180550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156733, 35.913132, 48.706913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.834307, 35.694977, 48.614990>,  <29.640852, 35.564083, 48.559837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.834307, 35.694977, 48.614990>,  <30.156733, 35.913132, 48.706913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834307, 35.694977, 48.614990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095934, 0.262760, -0.960080,
		0.584001, -0.795933, -0.159480,
		-0.806064, -0.545388, -0.229809,
		29.592487, 35.531361, 48.546047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375038, 35.469299, 48.186039>,  <30.156733, 35.913132, 48.706913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375038, 35.469299, 48.186039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.977352, 35.467571, 48.143108>,  <29.738741, 35.466534, 48.117352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.977352, 35.467571, 48.143108>,  <30.375038, 35.469299, 48.186039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977352, 35.467571, 48.143108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103602, 0.225185, -0.968792,
		0.028349, -0.974306, -0.223435,
		-0.994215, -0.004315, -0.107324,
		29.679089, 35.466278, 48.110912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272495, 35.072472, 47.626446>,  <30.375038, 35.469299, 48.186039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272495, 35.072472, 47.626446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.927221, 35.268314, 47.675755>,  <29.720057, 35.385818, 47.705341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.927221, 35.268314, 47.675755>,  <30.272495, 35.072472, 47.626446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927221, 35.268314, 47.675755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018952, 0.212572, -0.976962,
		-0.504533, -0.845634, -0.174210,
		-0.863184, 0.489608, 0.123276,
		29.668266, 35.415195, 47.712738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828793, 34.684467, 47.093277>,  <30.272495, 35.072472, 47.626446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828793, 34.684467, 47.093277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.664215, 35.031895, 47.203773>,  <29.565468, 35.240349, 47.270073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.664215, 35.031895, 47.203773>,  <29.828793, 34.684467, 47.093277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664215, 35.031895, 47.203773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002947, 0.304353, -0.952555,
		-0.911431, -0.391108, -0.127784,
		-0.411443, 0.868564, 0.276244,
		29.540783, 35.292465, 47.286648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.325876, 34.721504, 46.670444>,  <29.828793, 34.684467, 47.093277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.325876, 34.721504, 46.670444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.317694, 35.104164, 46.786659>,  <29.312784, 35.333759, 46.856388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.317694, 35.104164, 46.786659>,  <29.325876, 34.721504, 46.670444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317694, 35.104164, 46.786659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171554, 0.282929, -0.943674,
		-0.984962, -0.069148, 0.158328,
		-0.020458, 0.956645, 0.290537,
		29.311556, 35.391159, 46.873821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743179, 35.016594, 46.346516>,  <29.325876, 34.721504, 46.670444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743179, 35.016594, 46.346516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.991215, 35.322361, 46.417122>,  <29.140036, 35.505821, 46.459484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.991215, 35.322361, 46.417122>,  <28.743179, 35.016594, 46.346516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991215, 35.322361, 46.417122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082730, 0.287448, -0.954217,
		-0.780157, 0.577097, 0.241484,
		0.620090, 0.764417, 0.176511,
		29.177242, 35.551685, 46.470074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.475466, 35.549873, 46.010715>,  <28.743179, 35.016594, 46.346516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.475466, 35.549873, 46.010715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.859110, 35.653584, 46.056122>,  <29.089296, 35.715809, 46.083366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.859110, 35.653584, 46.056122>,  <28.475466, 35.549873, 46.010715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859110, 35.653584, 46.056122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001417, 0.405452, -0.914115,
		-0.283034, 0.876575, 0.389240,
		0.959109, 0.259277, 0.113514,
		29.146843, 35.731365, 46.090176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462959, 36.236435, 45.852642>,  <28.475466, 35.549873, 46.010715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462959, 36.236435, 45.852642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.831892, 36.084862, 45.822395>,  <29.053251, 35.993919, 45.804249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.831892, 36.084862, 45.822395>,  <28.462959, 36.236435, 45.852642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831892, 36.084862, 45.822395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107820, 0.440301, -0.891353,
		0.371056, 0.813969, 0.446959,
		0.922330, -0.378933, -0.075614,
		29.108591, 35.971184, 45.799709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.873644, 36.810085, 45.507305>,  <28.462959, 36.236435, 45.852642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.873644, 36.810085, 45.507305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.065374, 36.465836, 45.438519>,  <29.180412, 36.259285, 45.397247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.065374, 36.465836, 45.438519>,  <28.873644, 36.810085, 45.507305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065374, 36.465836, 45.438519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172218, 0.284364, -0.943122,
		0.860574, 0.422447, 0.284518,
		0.479325, -0.860626, -0.171963,
		29.209171, 36.207649, 45.386929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118654, 36.972343, 44.894455>,  <28.873644, 36.810085, 45.507305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118654, 36.972343, 44.894455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.187880, 36.578388, 44.896969>,  <29.229414, 36.342014, 44.898479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.187880, 36.578388, 44.896969>,  <29.118654, 36.972343, 44.894455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187880, 36.578388, 44.896969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258649, 0.039286, -0.965172,
		0.950342, 0.168663, 0.261540,
		0.173064, -0.984891, 0.006289,
		29.239799, 36.282921, 44.898857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892195, 36.848751, 44.642830>,  <29.118654, 36.972343, 44.894455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892195, 36.848751, 44.642830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.647898, 36.540779, 44.568848>,  <29.501320, 36.355995, 44.524460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.647898, 36.540779, 44.568848>,  <29.892195, 36.848751, 44.642830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647898, 36.540779, 44.568848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137402, 0.126983, -0.982342,
		0.779817, -0.625370, 0.028236,
		-0.610742, -0.769927, -0.184951,
		29.464676, 36.309799, 44.513363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222467, 36.474533, 44.060825>,  <29.892195, 36.848751, 44.642830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222467, 36.474533, 44.060825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.844240, 36.344398, 44.057735>,  <29.617304, 36.266319, 44.055882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.844240, 36.344398, 44.057735>,  <30.222467, 36.474533, 44.060825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844240, 36.344398, 44.057735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003272, 0.014220, -0.999894,
		0.325408, -0.945493, -0.012381,
		-0.945568, -0.325332, -0.007721,
		29.560570, 36.246799, 44.055420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917017, 36.008972, 44.167831>,  <30.222467, 36.474533, 44.060825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917017, 36.008972, 44.167831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.143869, 36.325550, 44.076637>,  <31.279982, 36.515495, 44.021919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.143869, 36.325550, 44.076637>,  <30.917017, 36.008972, 44.167831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143869, 36.325550, 44.076637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187798, 0.145259, 0.971407,
		0.801931, -0.593732, -0.066250,
		0.567132, 0.791443, -0.227990,
		31.314009, 36.562984, 44.008240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545223, 36.010773, 44.521229>,  <30.917017, 36.008972, 44.167831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545223, 36.010773, 44.521229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.497728, 36.403545, 44.462292>,  <31.469231, 36.639210, 44.426929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.497728, 36.403545, 44.462292>,  <31.545223, 36.010773, 44.521229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497728, 36.403545, 44.462292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208729, 0.169764, 0.963126,
		0.970739, 0.083605, -0.225115,
		-0.118738, 0.981932, -0.147346,
		31.462107, 36.698124, 44.418087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097687, 36.312538, 44.840580>,  <31.545223, 36.010773, 44.521229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097687, 36.312538, 44.840580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.839512, 36.616661, 44.811356>,  <31.684607, 36.799137, 44.793819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.839512, 36.616661, 44.811356>,  <32.097687, 36.312538, 44.840580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839512, 36.616661, 44.811356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253119, 0.303160, 0.918708,
		0.720654, 0.574475, -0.388120,
		-0.645437, 0.760311, -0.073063,
		31.645882, 36.844753, 44.789436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525646, 36.928722, 45.090736>,  <32.097687, 36.312538, 44.840580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525646, 36.928722, 45.090736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.139660, 37.033276, 45.081631>,  <31.908068, 37.096008, 45.076168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.139660, 37.033276, 45.081631>,  <32.525646, 36.928722, 45.090736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139660, 37.033276, 45.081631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063464, 0.316724, 0.946392,
		0.254579, 0.911793, -0.322216,
		-0.964967, 0.261381, -0.022765,
		31.850170, 37.111691, 45.074802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331188, 37.650883, 45.420856>,  <32.525646, 36.928722, 45.090736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331188, 37.650883, 45.420856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.008450, 37.422573, 45.481800>,  <31.814806, 37.285587, 45.518368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.008450, 37.422573, 45.481800>,  <32.331188, 37.650883, 45.420856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008450, 37.422573, 45.481800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057699, 0.180534, 0.981875,
		-0.587939, 0.801012, -0.112729,
		-0.806845, -0.570778, 0.152361,
		31.766396, 37.251339, 45.527508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070187, 37.864918, 46.056950>,  <32.331188, 37.650883, 45.420856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070187, 37.864918, 46.056950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.853624, 37.530552, 46.020901>,  <31.723686, 37.329933, 45.999271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.853624, 37.530552, 46.020901>,  <32.070187, 37.864918, 46.056950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853624, 37.530552, 46.020901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076341, -0.057874, 0.995401,
		-0.837286, 0.545800, -0.032481,
		-0.541409, -0.835915, -0.090124,
		31.691202, 37.279778, 45.993862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623774, 37.933025, 46.646236>,  <32.070187, 37.864918, 46.056950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623774, 37.933025, 46.646236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.625370, 37.547417, 46.539913>,  <31.626328, 37.316051, 46.476120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.625370, 37.547417, 46.539913>,  <31.623774, 37.933025, 46.646236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625370, 37.547417, 46.539913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188714, -0.261758, 0.946504,
		-0.982024, 0.046385, -0.182968,
		0.003990, -0.964018, -0.265807,
		31.626568, 37.258213, 46.460171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072620, 37.617935, 47.117302>,  <31.623774, 37.933025, 46.646236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072620, 37.617935, 47.117302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.317642, 37.325687, 46.996658>,  <31.464655, 37.150337, 46.924271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.317642, 37.325687, 46.996658>,  <31.072620, 37.617935, 47.117302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317642, 37.325687, 46.996658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029081, -0.360489, 0.932310,
		-0.789895, -0.579859, -0.199571,
		0.612552, -0.730623, -0.301612,
		31.501408, 37.106499, 46.906174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730055, 37.086567, 47.357056>,  <31.072620, 37.617935, 47.117302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730055, 37.086567, 47.357056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.108004, 36.963928, 47.311077>,  <31.334774, 36.890347, 47.283489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.108004, 36.963928, 47.311077>,  <30.730055, 37.086567, 47.357056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108004, 36.963928, 47.311077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034817, -0.443152, 0.895770,
		-0.325577, -0.842388, -0.429397,
		0.944874, -0.306593, -0.114950,
		31.391466, 36.871948, 47.276592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772453, 36.447056, 47.580887>,  <30.730055, 37.086567, 47.357056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772453, 36.447056, 47.580887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.159439, 36.545780, 47.603146>,  <31.391630, 36.605015, 47.616501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.159439, 36.545780, 47.603146>,  <30.772453, 36.447056, 47.580887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159439, 36.545780, 47.603146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060373, -0.438803, 0.896553,
		0.245698, -0.864024, -0.439427,
		0.967464, 0.246811, 0.055649,
		31.449678, 36.619823, 47.619839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101234, 35.893906, 47.930984>,  <30.772453, 36.447056, 47.580887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101234, 35.893906, 47.930984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.381388, 36.178127, 47.958027>,  <31.549480, 36.348660, 47.974251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.381388, 36.178127, 47.958027>,  <31.101234, 35.893906, 47.930984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381388, 36.178127, 47.958027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248070, -0.331133, 0.910391,
		0.669271, -0.620853, -0.408188,
		0.700384, 0.710558, 0.067602,
		31.591503, 36.391296, 47.978306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810755, 35.597771, 47.876762>,  <31.101234, 35.893906, 47.930984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810755, 35.597771, 47.876762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.824568, 35.956448, 48.053288>,  <31.832855, 36.171654, 48.159203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.824568, 35.956448, 48.053288>,  <31.810755, 35.597771, 47.876762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824568, 35.956448, 48.053288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384083, -0.419571, 0.822460,
		0.922653, 0.141099, -0.358892,
		0.034532, 0.896689, 0.441312,
		31.834927, 36.225456, 48.185680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356003, 35.552944, 48.231735>,  <31.810755, 35.597771, 47.876762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356003, 35.552944, 48.231735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.177624, 35.865993, 48.405460>,  <32.070595, 36.053822, 48.509697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.177624, 35.865993, 48.405460>,  <32.356003, 35.552944, 48.231735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177624, 35.865993, 48.405460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104554, -0.436367, 0.893673,
		0.888930, 0.443943, 0.112772,
		-0.445950, 0.782622, 0.434316,
		32.043839, 36.100780, 48.535755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748764, 35.697876, 48.823658>,  <32.356003, 35.552944, 48.231735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748764, 35.697876, 48.823658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.384655, 35.851894, 48.884514>,  <32.166191, 35.944305, 48.921028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.384655, 35.851894, 48.884514>,  <32.748764, 35.697876, 48.823658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384655, 35.851894, 48.884514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000897, -0.369315, 0.929304,
		0.414017, 0.845780, 0.336521,
		-0.910269, 0.385049, 0.152144,
		32.111576, 35.967411, 48.930157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285957, 36.338856, 48.784924>,  <32.748764, 35.697876, 48.823658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285957, 36.338856, 48.784924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.650700, 36.417023, 48.929329>,  <33.869545, 36.463924, 49.015972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.650700, 36.417023, 48.929329>,  <33.285957, 36.338856, 48.784924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650700, 36.417023, 48.929329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354290, 0.069604, -0.932542,
		-0.207367, 0.978246, -0.005767,
		0.911854, 0.195421, 0.361016,
		33.924255, 36.475651, 49.037632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530613, 36.877975, 48.407913>,  <33.285957, 36.338856, 48.784924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530613, 36.877975, 48.407913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.853168, 36.723015, 48.586643>,  <34.046703, 36.630039, 48.693882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.853168, 36.723015, 48.586643>,  <33.530613, 36.877975, 48.407913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853168, 36.723015, 48.586643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558114, 0.248685, -0.791621,
		0.195559, 0.887735, 0.416753,
		0.806390, -0.387404, 0.446825,
		34.095085, 36.606792, 48.720692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101288, 37.346779, 48.455578>,  <33.530613, 36.877975, 48.407913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101288, 37.346779, 48.455578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.249241, 36.975826, 48.433109>,  <34.338013, 36.753254, 48.419628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.249241, 36.975826, 48.433109>,  <34.101288, 37.346779, 48.455578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249241, 36.975826, 48.433109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646271, 0.300252, -0.701557,
		0.667475, 0.223190, 0.710396,
		0.369878, -0.927381, -0.056169,
		34.360203, 36.697613, 48.416260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797096, 37.413483, 48.433792>,  <34.101288, 37.346779, 48.455578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797096, 37.413483, 48.433792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.693615, 37.068165, 48.260452>,  <34.631527, 36.860973, 48.156448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.693615, 37.068165, 48.260452>,  <34.797096, 37.413483, 48.433792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693615, 37.068165, 48.260452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587817, 0.215300, -0.779819,
		0.766515, -0.456469, 0.451763,
		-0.258699, -0.863297, -0.433351,
		34.616005, 36.809177, 48.130447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300102, 37.404831, 47.865971>,  <34.797096, 37.413483, 48.433792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300102, 37.404831, 47.865971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.066483, 37.091476, 47.780930>,  <34.926311, 36.903465, 47.729904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.066483, 37.091476, 47.780930>,  <35.300102, 37.404831, 47.865971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066483, 37.091476, 47.780930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408606, -0.057425, -0.910903,
		0.701379, -0.618878, 0.353635,
		-0.584045, -0.783385, -0.212601,
		34.891270, 36.856461, 47.717148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716022, 37.013023, 47.403599>,  <35.300102, 37.404831, 47.865971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716022, 37.013023, 47.403599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.348141, 36.862343, 47.359329>,  <35.127411, 36.771935, 47.332767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.348141, 36.862343, 47.359329>,  <35.716022, 37.013023, 47.403599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348141, 36.862343, 47.359329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188832, -0.177246, -0.965881,
		0.344230, -0.909220, 0.234146,
		-0.919700, -0.376700, -0.110676,
		35.072231, 36.749332, 47.326126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802486, 36.411346, 46.966652>,  <35.716022, 37.013023, 47.403599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802486, 36.411346, 46.966652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.423481, 36.533813, 46.929813>,  <35.196079, 36.607296, 46.907711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.423481, 36.533813, 46.929813>,  <35.802486, 36.411346, 46.966652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423481, 36.533813, 46.929813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063146, -0.103176, -0.992657,
		-0.313426, -0.946369, 0.078427,
		-0.947511, 0.306172, -0.092098,
		35.139229, 36.625664, 46.902184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425888, 35.887054, 46.596336>,  <35.802486, 36.411346, 46.966652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425888, 35.887054, 46.596336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.237965, 36.232464, 46.522999>,  <35.125210, 36.439709, 46.478996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.237965, 36.232464, 46.522999>,  <35.425888, 35.887054, 46.596336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237965, 36.232464, 46.522999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071561, -0.169754, -0.982885,
		-0.879863, -0.474888, 0.017957,
		-0.469809, 0.863519, -0.183344,
		35.097023, 36.491520, 46.467995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963951, 35.712421, 45.921825>,  <35.425888, 35.887054, 46.596336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963951, 35.712421, 45.921825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.965816, 36.112389, 45.926548>,  <34.966934, 36.352367, 45.929382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.965816, 36.112389, 45.926548>,  <34.963951, 35.712421, 45.921825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965816, 36.112389, 45.926548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019971, 0.011712, -0.999732,
		-0.999790, 0.004897, -0.019915,
		0.004662, 0.999919, 0.011808,
		34.967216, 36.412365, 45.930092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459877, 35.955196, 45.409473>,  <34.963951, 35.712421, 45.921825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459877, 35.955196, 45.409473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.730148, 36.245056, 45.463654>,  <34.892311, 36.418972, 45.496162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.730148, 36.245056, 45.463654>,  <34.459877, 35.955196, 45.409473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730148, 36.245056, 45.463654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110909, 0.081726, -0.990465,
		-0.728807, 0.684257, -0.025149,
		0.675677, 0.724647, 0.135453,
		34.932850, 36.462452, 45.504288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163124, 36.441402, 44.884201>,  <34.459877, 35.955196, 45.409473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163124, 36.441402, 44.884201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.546680, 36.527653, 44.957996>,  <34.776814, 36.579403, 45.002274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.546680, 36.527653, 44.957996>,  <34.163124, 36.441402, 44.884201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546680, 36.527653, 44.957996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177042, 0.053546, -0.982746,
		-0.221787, 0.975006, 0.013170,
		0.958888, 0.215629, 0.184493,
		34.834347, 36.592342, 45.013344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253960, 36.976921, 44.435837>,  <34.163124, 36.441402, 44.884201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253960, 36.976921, 44.435837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.632420, 36.879681, 44.521355>,  <34.859493, 36.821339, 44.572666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.632420, 36.879681, 44.521355>,  <34.253960, 36.976921, 44.435837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632420, 36.879681, 44.521355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238808, 0.078214, -0.967912,
		0.218577, 0.966843, 0.132056,
		0.946147, -0.243099, 0.213794,
		34.916264, 36.806751, 44.585491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721039, 37.396896, 44.168423>,  <34.253960, 36.976921, 44.435837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721039, 37.396896, 44.168423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.946186, 37.069939, 44.217503>,  <35.081272, 36.873764, 44.246948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.946186, 37.069939, 44.217503>,  <34.721039, 37.396896, 44.168423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946186, 37.069939, 44.217503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202375, -0.007640, -0.979278,
		0.801392, 0.576031, 0.161119,
		0.562863, -0.817392, 0.122697,
		35.115044, 36.824722, 44.254311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266613, 37.463581, 43.648518>,  <34.721039, 37.396896, 44.168423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266613, 37.463581, 43.648518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.247921, 37.078457, 43.754959>,  <35.236706, 36.847382, 43.818825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.247921, 37.078457, 43.754959>,  <35.266613, 37.463581, 43.648518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247921, 37.078457, 43.754959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288363, -0.268052, -0.919236,
		0.956380, 0.033778, 0.290165,
		-0.046729, -0.962812, 0.266100,
		35.233902, 36.789612, 43.834789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.683577, 40.195133, 29.008602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.507217, 39.850620, 28.907566>,  <27.401402, 39.643913, 28.846945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.507217, 39.850620, 28.907566>,  <27.683577, 40.195133, 29.008602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507217, 39.850620, 28.907566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327949, -0.107378, 0.938573,
		-0.835499, 0.496652, -0.235113,
		-0.440899, -0.861282, -0.252591,
		27.374949, 39.592236, 28.831789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083557, 40.230476, 29.415466>,  <27.683577, 40.195133, 29.008602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083557, 40.230476, 29.415466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.153099, 39.850967, 29.309929>,  <27.194824, 39.623264, 29.246607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.153099, 39.850967, 29.309929>,  <27.083557, 40.230476, 29.415466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153099, 39.850967, 29.309929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409516, -0.313314, 0.856815,
		-0.895584, -0.040915, -0.443007,
		0.173857, -0.948768, -0.263843,
		27.205256, 39.566338, 29.230776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.679747, 39.936256, 29.960220>,  <27.083557, 40.230476, 29.415466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.679747, 39.936256, 29.960220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.934990, 39.660671, 29.822727>,  <27.088137, 39.495319, 29.740231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.934990, 39.660671, 29.822727>,  <26.679747, 39.936256, 29.960220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.934990, 39.660671, 29.822727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023209, -0.463448, 0.885820,
		-0.769597, -0.557271, -0.311720,
		0.638108, -0.688959, -0.343735,
		27.126423, 39.453983, 29.719606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.412224, 39.296642, 30.063551>,  <26.679747, 39.936256, 29.960220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.412224, 39.296642, 30.063551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.808590, 39.246670, 30.083473>,  <27.046410, 39.216686, 30.095427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.808590, 39.246670, 30.083473>,  <26.412224, 39.296642, 30.063551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.808590, 39.246670, 30.083473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104810, -0.485234, 0.868080,
		-0.084286, -0.865413, -0.493920,
		0.990914, -0.124934, 0.049805,
		27.105864, 39.209190, 30.098415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.462540, 38.634808, 30.186842>,  <26.412224, 39.296642, 30.063551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.462540, 38.634808, 30.186842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.808861, 38.799843, 30.300085>,  <27.016653, 38.898865, 30.368031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.808861, 38.799843, 30.300085>,  <26.462540, 38.634808, 30.186842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.808861, 38.799843, 30.300085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056761, -0.481153, 0.874797,
		0.497153, -0.773472, -0.393165,
		0.865804, 0.412592, 0.283109,
		27.068602, 38.923622, 30.385017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.979031, 38.128189, 30.294216>,  <26.462540, 38.634808, 30.186842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.979031, 38.128189, 30.294216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.158463, 38.415573, 30.506851>,  <27.266121, 38.588005, 30.634432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.158463, 38.415573, 30.506851>,  <26.979031, 38.128189, 30.294216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.158463, 38.415573, 30.506851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175935, -0.512165, 0.840675,
		0.876256, -0.470633, -0.103343,
		0.448578, 0.718465, 0.531588,
		27.293036, 38.631111, 30.666328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100422, 37.873821, 30.880915>,  <26.979031, 38.128189, 30.294216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.100422, 37.873821, 30.880915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.201538, 38.246040, 30.986874>,  <27.262207, 38.469372, 31.050449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.201538, 38.246040, 30.986874>,  <27.100422, 37.873821, 30.880915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201538, 38.246040, 30.986874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025017, -0.279987, 0.959678,
		0.967198, -0.235970, -0.094057,
		0.252790, 0.930551, 0.264900,
		27.277374, 38.525208, 31.066343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737871, 37.803474, 31.329437>,  <27.100422, 37.873821, 30.880915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737871, 37.803474, 31.329437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.577562, 38.162064, 31.405041>,  <27.481377, 38.377216, 31.450403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.577562, 38.162064, 31.405041>,  <27.737871, 37.803474, 31.329437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577562, 38.162064, 31.405041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062907, -0.232739, 0.970502,
		0.914016, 0.377060, 0.149670,
		-0.400772, 0.896470, 0.189007,
		27.457331, 38.431004, 31.461742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121490, 37.981533, 31.849781>,  <27.737871, 37.803474, 31.329437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121490, 37.981533, 31.849781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.774612, 38.180050, 31.866106>,  <27.566484, 38.299160, 31.875900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.774612, 38.180050, 31.866106>,  <28.121490, 37.981533, 31.849781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.774612, 38.180050, 31.866106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108148, -0.267705, 0.957412,
		0.486079, 0.825851, 0.285826,
		-0.867197, 0.496290, 0.040812,
		27.514454, 38.328938, 31.878349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088076, 38.291321, 32.517559>,  <28.121490, 37.981533, 31.849781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088076, 38.291321, 32.517559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.702106, 38.284924, 32.412743>,  <27.470524, 38.281086, 32.349854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.702106, 38.284924, 32.412743>,  <28.088076, 38.291321, 32.517559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.702106, 38.284924, 32.412743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227064, -0.450148, 0.863602,
		-0.131773, 0.892811, 0.430726,
		-0.964924, -0.015997, -0.262043,
		27.412630, 38.280125, 32.334129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752138, 38.475163, 33.052120>,  <28.088076, 38.291321, 32.517559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752138, 38.475163, 33.052120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.455109, 38.304096, 32.845940>,  <27.276892, 38.201458, 32.722233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.455109, 38.304096, 32.845940>,  <27.752138, 38.475163, 33.052120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455109, 38.304096, 32.845940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427082, -0.290486, 0.856282,
		-0.515931, 0.855992, 0.033060,
		-0.742574, -0.427663, -0.515450,
		27.232336, 38.175797, 32.691303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223059, 38.618534, 33.492420>,  <27.752138, 38.475163, 33.052120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.223059, 38.618534, 33.492420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.056255, 38.345520, 33.252335>,  <26.956173, 38.181713, 33.108284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.056255, 38.345520, 33.252335>,  <27.223059, 38.618534, 33.492420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.056255, 38.345520, 33.252335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616014, -0.273321, 0.738798,
		-0.668304, 0.677823, -0.306473,
		-0.417009, -0.682533, -0.600210,
		26.931152, 38.140759, 33.072273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.414156, 38.757042, 33.521988>,  <27.223059, 38.618534, 33.492420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.414156, 38.757042, 33.521988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.508474, 38.382732, 33.417126>,  <26.565065, 38.158146, 33.354210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.508474, 38.382732, 33.417126>,  <26.414156, 38.757042, 33.521988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508474, 38.382732, 33.417126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587138, -0.352136, 0.728882,
		-0.774383, -0.017948, -0.632462,
		0.235795, -0.935777, -0.262151,
		26.579212, 38.102001, 33.338482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823662, 38.378819, 33.648838>,  <26.414156, 38.757042, 33.521988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823662, 38.378819, 33.648838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.109125, 38.098770, 33.639751>,  <26.280403, 37.930740, 33.634300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.109125, 38.098770, 33.639751>,  <25.823662, 38.378819, 33.648838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.109125, 38.098770, 33.639751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385128, -0.419249, 0.822136,
		-0.585122, -0.577975, -0.568838,
		0.713659, -0.700126, -0.022717,
		26.323223, 37.888733, 33.632938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.452755, 37.857857, 33.762184>,  <25.823662, 38.378819, 33.648838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.452755, 37.857857, 33.762184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.820734, 37.724033, 33.843929>,  <26.041521, 37.643738, 33.892975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.820734, 37.724033, 33.843929>,  <25.452755, 37.857857, 33.762184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.820734, 37.724033, 33.843929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363201, -0.531091, 0.765524,
		-0.147581, -0.778467, -0.610090,
		0.919948, -0.334562, 0.204361,
		26.096718, 37.623665, 33.905239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.397566, 37.269520, 34.073689>,  <25.452755, 37.857857, 33.762184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.397566, 37.269520, 34.073689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.780952, 37.302864, 34.182793>,  <26.010984, 37.322868, 34.248253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.780952, 37.302864, 34.182793>,  <25.397566, 37.269520, 34.073689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.780952, 37.302864, 34.182793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169219, -0.603624, 0.779104,
		0.229588, -0.792900, -0.564446,
		0.958465, 0.083358, 0.272759,
		26.068491, 37.327869, 34.264622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.661234, 36.549603, 34.212982>,  <25.397566, 37.269520, 34.073689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.661234, 36.549603, 34.212982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.884251, 36.818081, 34.408386>,  <26.018061, 36.979168, 34.525627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.884251, 36.818081, 34.408386>,  <25.661234, 36.549603, 34.212982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.884251, 36.818081, 34.408386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092695, -0.534441, 0.840108,
		0.824957, -0.513677, -0.235757,
		0.557542, 0.671199, 0.488506,
		26.051514, 37.019440, 34.554939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.151775, 36.162281, 34.584766>,  <25.661234, 36.549603, 34.212982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.151775, 36.162281, 34.584766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.136497, 36.514465, 34.773796>,  <26.127331, 36.725777, 34.887215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.136497, 36.514465, 34.773796>,  <26.151775, 36.162281, 34.584766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136497, 36.514465, 34.773796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057827, -0.474078, 0.878582,
		0.997596, 0.006228, 0.069021,
		-0.038193, 0.880461, 0.472578,
		26.125040, 36.778603, 34.915569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.481424, 36.027065, 35.173023>,  <26.151775, 36.162281, 34.584766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.481424, 36.027065, 35.173023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.291298, 36.366802, 35.264839>,  <26.177223, 36.570644, 35.319927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.291298, 36.366802, 35.264839>,  <26.481424, 36.027065, 35.173023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.291298, 36.366802, 35.264839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164257, -0.341970, 0.925244,
		0.864347, 0.402079, 0.302054,
		-0.475315, 0.849346, 0.229536,
		26.148703, 36.621605, 35.333698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754276, 36.246384, 35.787659>,  <26.481424, 36.027065, 35.173023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754276, 36.246384, 35.787659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.383566, 36.390457, 35.745037>,  <26.161140, 36.476902, 35.719463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.383566, 36.390457, 35.745037>,  <26.754276, 36.246384, 35.787659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383566, 36.390457, 35.745037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304433, -0.554114, 0.774776,
		0.220022, 0.750481, 0.623192,
		-0.926774, 0.360188, -0.106554,
		26.105534, 36.498512, 35.713070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.479982, 36.195404, 35.418953>,  <26.754276, 36.246384, 35.787659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.479982, 36.195404, 35.418953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.877037, 36.240211, 35.400532>,  <28.115271, 36.267097, 35.389477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.877037, 36.240211, 35.400532>,  <27.479982, 36.195404, 35.418953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877037, 36.240211, 35.400532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018426, -0.236165, -0.971538,
		-0.119710, 0.965234, -0.232362,
		0.992638, 0.112021, -0.046057,
		28.174828, 36.273819, 35.386715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.666706, 36.805752, 34.990463>,  <27.479982, 36.195404, 35.418953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.666706, 36.805752, 34.990463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.962355, 36.536915, 34.972614>,  <28.139744, 36.375610, 34.961903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.962355, 36.536915, 34.972614>,  <27.666706, 36.805752, 34.990463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.962355, 36.536915, 34.972614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004011, 0.061858, -0.998077,
		0.673562, 0.737877, 0.043025,
		0.739120, -0.672094, -0.044625,
		28.184092, 36.335285, 34.959229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.028915, 37.055447, 34.423450>,  <27.666706, 36.805752, 34.990463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.028915, 37.055447, 34.423450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.169216, 36.685867, 34.484489>,  <28.253397, 36.464119, 34.521114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.169216, 36.685867, 34.484489>,  <28.028915, 37.055447, 34.423450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.169216, 36.685867, 34.484489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137180, -0.110498, -0.984364,
		0.926366, 0.366201, 0.087990,
		0.350752, -0.923952, 0.152597,
		28.274443, 36.408680, 34.530270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686890, 36.963497, 33.938545>,  <28.028915, 37.055447, 34.423450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686890, 36.963497, 33.938545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.599445, 36.581444, 34.018478>,  <28.546978, 36.352211, 34.066437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.599445, 36.581444, 34.018478>,  <28.686890, 36.963497, 33.938545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599445, 36.581444, 34.018478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382969, -0.272334, -0.882705,
		0.897521, -0.116440, 0.425321,
		-0.218612, -0.955132, 0.199832,
		28.533861, 36.294903, 34.078426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344940, 36.627308, 33.790344>,  <28.686890, 36.963497, 33.938545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344940, 36.627308, 33.790344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.037582, 36.371353, 33.786144>,  <28.853167, 36.217781, 33.783627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.037582, 36.371353, 33.786144>,  <29.344940, 36.627308, 33.790344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037582, 36.371353, 33.786144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354293, -0.411672, -0.839644,
		0.532956, -0.648899, 0.543036,
		-0.768397, -0.639888, -0.010497,
		28.807064, 36.179386, 33.782993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.571915, 36.136642, 33.390049>,  <29.344940, 36.627308, 33.790344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.571915, 36.136642, 33.390049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.185728, 36.032551, 33.395134>,  <28.954016, 35.970097, 33.398186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.185728, 36.032551, 33.395134>,  <29.571915, 36.136642, 33.390049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185728, 36.032551, 33.395134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054902, -0.250895, -0.966456,
		0.254685, -0.932381, 0.256517,
		-0.965464, -0.260226, 0.012709,
		28.896090, 35.954483, 33.398949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541027, 35.565117, 33.069206>,  <29.571915, 36.136642, 33.390049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541027, 35.565117, 33.069206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.156225, 35.673813, 33.058556>,  <28.925344, 35.739029, 33.052166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.156225, 35.673813, 33.058556>,  <29.541027, 35.565117, 33.069206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156225, 35.673813, 33.058556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054930, -0.288135, -0.956013,
		-0.267445, -0.918228, 0.292114,
		-0.962006, 0.271726, -0.026622,
		28.867624, 35.755333, 33.050568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243439, 35.019802, 32.772842>,  <29.541027, 35.565117, 33.069206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243439, 35.019802, 32.772842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.008965, 35.339081, 32.717327>,  <28.868280, 35.530647, 32.684017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.008965, 35.339081, 32.717327>,  <29.243439, 35.019802, 32.772842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.008965, 35.339081, 32.717327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022623, -0.155117, -0.987637,
		-0.809862, -0.582077, 0.072870,
		-0.586184, 0.798201, -0.138792,
		28.833109, 35.578541, 32.675690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739971, 34.791161, 32.285782>,  <29.243439, 35.019802, 32.772842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739971, 34.791161, 32.285782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.723484, 35.189167, 32.249458>,  <28.713591, 35.427971, 32.227665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.723484, 35.189167, 32.249458>,  <28.739971, 34.791161, 32.285782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723484, 35.189167, 32.249458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090440, -0.086797, -0.992112,
		-0.995048, -0.049106, -0.086412,
		-0.041219, 0.995015, -0.090808,
		28.711119, 35.487671, 32.222218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249092, 34.941261, 31.765291>,  <28.739971, 34.791161, 32.285782>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249092, 34.941261, 31.765291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.493357, 35.257984, 31.769905>,  <28.639915, 35.448017, 31.772673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.493357, 35.257984, 31.769905>,  <28.249092, 34.941261, 31.765291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.493357, 35.257984, 31.769905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114828, -0.074127, -0.990616,
		-0.783522, 0.606256, -0.136188,
		0.610662, 0.791807, 0.011535,
		28.676556, 35.495525, 31.773365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021284, 35.377960, 31.158081>,  <28.249092, 34.941261, 31.765291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021284, 35.377960, 31.158081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.373827, 35.517056, 31.286013>,  <28.585354, 35.600513, 31.362772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.373827, 35.517056, 31.286013>,  <28.021284, 35.377960, 31.158081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373827, 35.517056, 31.286013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253575, 0.223013, -0.941257,
		-0.398632, 0.910685, 0.108378,
		0.881358, 0.347734, 0.319827,
		28.638235, 35.621376, 31.381960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093012, 35.993633, 30.815237>,  <28.021284, 35.377960, 31.158081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093012, 35.993633, 30.815237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.470551, 35.946587, 30.938732>,  <28.697075, 35.918358, 31.012829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.470551, 35.946587, 30.938732>,  <28.093012, 35.993633, 30.815237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470551, 35.946587, 30.938732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328416, 0.435787, -0.837993,
		-0.035982, 0.892332, 0.449943,
		0.943848, -0.117616, 0.308736,
		28.753704, 35.911301, 31.031353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409479, 36.666946, 30.761059>,  <28.093012, 35.993633, 30.815237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409479, 36.666946, 30.761059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.719486, 36.414272, 30.753914>,  <28.905491, 36.262669, 30.749628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.719486, 36.414272, 30.753914>,  <28.409479, 36.666946, 30.761059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719486, 36.414272, 30.753914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234847, 0.314145, -0.919869,
		0.586678, 0.708722, 0.391818,
		0.775020, -0.631685, -0.017860,
		28.951992, 36.224766, 30.748556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977566, 37.081398, 30.664246>,  <28.409479, 36.666946, 30.761059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977566, 37.081398, 30.664246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.101263, 36.717148, 30.554613>,  <29.175482, 36.498596, 30.488834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.101263, 36.717148, 30.554613>,  <28.977566, 37.081398, 30.664246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101263, 36.717148, 30.554613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369774, 0.380672, -0.847559,
		0.876148, 0.160756, 0.454448,
		0.309246, -0.910630, -0.274082,
		29.194036, 36.443958, 30.472389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671606, 37.125927, 30.492933>,  <28.977566, 37.081398, 30.664246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671606, 37.125927, 30.492933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.528948, 36.823769, 30.273046>,  <29.443354, 36.642475, 30.141115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.528948, 36.823769, 30.273046>,  <29.671606, 37.125927, 30.492933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528948, 36.823769, 30.273046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337472, 0.444514, -0.829771,
		0.871159, -0.481447, 0.096390,
		-0.356644, -0.755391, -0.549717,
		29.421955, 36.597153, 30.108131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155308, 37.003002, 29.996601>,  <29.671606, 37.125927, 30.492933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155308, 37.003002, 29.996601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.825533, 36.843227, 29.836226>,  <29.627668, 36.747364, 29.740000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.825533, 36.843227, 29.836226>,  <30.155308, 37.003002, 29.996601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825533, 36.843227, 29.836226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212314, 0.438412, -0.873337,
		0.524620, -0.805137, -0.276637,
		-0.824437, -0.399436, -0.400941,
		29.578201, 36.723396, 29.715942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264460, 36.853874, 29.263699>,  <30.155308, 37.003002, 29.996601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264460, 36.853874, 29.263699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.867373, 36.807777, 29.277746>,  <29.629120, 36.780117, 29.286175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.867373, 36.807777, 29.277746>,  <30.264460, 36.853874, 29.263699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867373, 36.807777, 29.277746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086619, 0.480115, -0.872919,
		0.083736, -0.869603, -0.486600,
		-0.992716, -0.115244, 0.035121,
		29.569557, 36.773205, 29.288282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033161, 36.487797, 28.659288>,  <30.264460, 36.853874, 29.263699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033161, 36.487797, 28.659288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.716679, 36.704014, 28.773695>,  <29.526789, 36.833744, 28.842339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.716679, 36.704014, 28.773695>,  <30.033161, 36.487797, 28.659288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716679, 36.704014, 28.773695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153911, 0.276635, -0.948570,
		-0.591863, -0.794537, -0.135681,
		-0.791208, 0.540541, 0.286019,
		29.479317, 36.866177, 28.859501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.710264, 36.518375, 28.048306>,  <30.033161, 36.487797, 28.659288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.710264, 36.518375, 28.048306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.522688, 36.801052, 28.260225>,  <29.410143, 36.970657, 28.387377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.522688, 36.801052, 28.260225>,  <29.710264, 36.518375, 28.048306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.522688, 36.801052, 28.260225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218079, 0.488630, -0.844797,
		-0.855884, -0.511697, -0.075024,
		-0.468939, 0.706687, 0.529800,
		29.382006, 37.013058, 28.419165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966806, 36.632465, 27.789061>,  <29.710264, 36.518375, 28.048306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966806, 36.632465, 27.789061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.097298, 36.961082, 27.976097>,  <29.175592, 37.158253, 28.088318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.097298, 36.961082, 27.976097>,  <28.966806, 36.632465, 27.789061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.097298, 36.961082, 27.976097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376918, 0.566679, -0.732671,
		-0.866895, 0.062777, 0.494522,
		0.326230, 0.821543, 0.467590,
		29.195168, 37.207546, 28.116375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468369, 36.971661, 27.511887>,  <28.966806, 36.632465, 27.789061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468369, 36.971661, 27.511887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.722799, 37.245239, 27.654783>,  <28.875458, 37.409386, 27.740520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.722799, 37.245239, 27.654783>,  <28.468369, 36.971661, 27.511887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722799, 37.245239, 27.654783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321835, 0.655935, -0.682768,
		-0.701305, 0.319320, 0.637343,
		0.636077, 0.683948, 0.357242,
		28.913622, 37.450424, 27.761955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056122, 37.501957, 27.560751>,  <28.468369, 36.971661, 27.511887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056122, 37.501957, 27.560751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.418249, 37.671692, 27.553488>,  <28.635527, 37.773533, 27.549129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.418249, 37.671692, 27.553488>,  <28.056122, 37.501957, 27.560751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.418249, 37.671692, 27.553488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304727, 0.619155, -0.723732,
		-0.295867, 0.660743, 0.689842,
		0.905320, 0.424342, -0.018159,
		28.689846, 37.798996, 27.548040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.081127, 33.505505, 49.482113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.691555, 33.546032, 49.563301>,  <35.457813, 33.570347, 49.612015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.691555, 33.546032, 49.563301>,  <36.081127, 33.505505, 49.482113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691555, 33.546032, 49.563301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215748, 0.137206, 0.966761,
		0.070102, 0.985347, -0.155489,
		-0.973930, 0.101318, 0.202968,
		35.399376, 33.576427, 49.624191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060654, 33.923347, 50.101097>,  <36.081127, 33.505505, 49.482113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060654, 33.923347, 50.101097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.679508, 33.804127, 50.078430>,  <35.450821, 33.732594, 50.064831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.679508, 33.804127, 50.078430>,  <36.060654, 33.923347, 50.101097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679508, 33.804127, 50.078430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069056, 0.031179, 0.997125,
		-0.295428, 0.954040, -0.050292,
		-0.952866, -0.298052, -0.056671,
		35.393650, 33.714710, 50.061428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659149, 34.344482, 50.586422>,  <36.060654, 33.923347, 50.101097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659149, 34.344482, 50.586422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430695, 34.023411, 50.517708>,  <35.293621, 33.830769, 50.476479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430695, 34.023411, 50.517708>,  <35.659149, 34.344482, 50.586422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430695, 34.023411, 50.517708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319646, 0.024720, 0.947214,
		-0.756062, 0.595899, -0.270691,
		-0.571136, -0.802679, -0.171787,
		35.259354, 33.782608, 50.466171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056709, 34.588463, 50.810539>,  <35.659149, 34.344482, 50.586422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056709, 34.588463, 50.810539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.025757, 34.189968, 50.794903>,  <35.007187, 33.950871, 50.785519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.025757, 34.189968, 50.794903>,  <35.056709, 34.588463, 50.810539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025757, 34.189968, 50.794903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361857, -0.008475, 0.932195,
		-0.929017, 0.086281, -0.359838,
		-0.077381, -0.996235, -0.039094,
		35.002544, 33.891098, 50.783173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443302, 34.348225, 51.147171>,  <35.056709, 34.588463, 50.810539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443302, 34.348225, 51.147171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.687687, 34.031586, 51.143066>,  <34.834316, 33.841602, 51.140602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.687687, 34.031586, 51.143066>,  <34.443302, 34.348225, 51.147171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687687, 34.031586, 51.143066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363419, -0.291964, 0.884694,
		-0.703315, -0.536784, -0.466059,
		0.610962, -0.791593, -0.010266,
		34.870975, 33.794109, 51.139988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944187, 33.854904, 51.241863>,  <34.443302, 34.348225, 51.147171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944187, 33.854904, 51.241863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.311363, 33.730774, 51.340721>,  <34.531670, 33.656296, 51.400036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.311363, 33.730774, 51.340721>,  <33.944187, 33.854904, 51.241863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311363, 33.730774, 51.340721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339495, -0.292193, 0.894073,
		-0.205239, -0.904612, -0.373570,
		0.917943, -0.310323, 0.247142,
		34.586746, 33.637676, 51.414864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946049, 33.200119, 51.573544>,  <33.944187, 33.854904, 51.241863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946049, 33.200119, 51.573544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.301205, 33.332649, 51.701218>,  <34.514297, 33.412167, 51.777821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.301205, 33.332649, 51.701218>,  <33.946049, 33.200119, 51.573544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301205, 33.332649, 51.701218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293466, -0.126425, 0.947573,
		0.354311, -0.935007, -0.015017,
		0.887886, 0.331329, 0.319187,
		34.567570, 33.432049, 51.796974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021435, 32.875057, 52.244453>,  <33.946049, 33.200119, 51.573544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021435, 32.875057, 52.244453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335110, 33.121864, 52.270790>,  <34.523315, 33.269951, 52.286591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335110, 33.121864, 52.270790>,  <34.021435, 32.875057, 52.244453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335110, 33.121864, 52.270790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059153, -0.031290, 0.997758,
		0.617699, -0.786324, 0.011961,
		0.784186, 0.617022, 0.065841,
		34.570366, 33.306973, 52.290543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490089, 32.533905, 52.766872>,  <34.021435, 32.875057, 52.244453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490089, 32.533905, 52.766872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.590965, 32.920635, 52.750595>,  <34.651489, 33.152672, 52.740829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.590965, 32.920635, 52.750595>,  <34.490089, 32.533905, 52.766872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590965, 32.920635, 52.750595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000435, 0.042168, 0.999110,
		0.967678, -0.251946, 0.011055,
		0.252188, 0.966822, -0.040696,
		34.666622, 33.210682, 52.738388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044521, 32.634586, 53.279995>,  <34.490089, 32.533905, 52.766872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044521, 32.634586, 53.279995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.863976, 32.982109, 53.198566>,  <34.755646, 33.190624, 53.149712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.863976, 32.982109, 53.198566>,  <35.044521, 32.634586, 53.279995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863976, 32.982109, 53.198566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141106, 0.155766, 0.977664,
		0.881110, 0.470011, 0.052286,
		-0.451369, 0.868807, -0.203568,
		34.728565, 33.242752, 53.137497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372971, 33.066971, 53.664841>,  <35.044521, 32.634586, 53.279995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372971, 33.066971, 53.664841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.023468, 33.250187, 53.599419>,  <34.813766, 33.360115, 53.560165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.023468, 33.250187, 53.599419>,  <35.372971, 33.066971, 53.664841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023468, 33.250187, 53.599419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111931, 0.137881, 0.984104,
		0.473309, 0.878174, -0.069206,
		-0.873756, 0.458039, -0.163555,
		34.761341, 33.387600, 53.550354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438046, 33.691788, 54.119431>,  <35.372971, 33.066971, 53.664841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438046, 33.691788, 54.119431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.047401, 33.643612, 54.048187>,  <34.813015, 33.614708, 54.005444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.047401, 33.643612, 54.048187>,  <35.438046, 33.691788, 54.119431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047401, 33.643612, 54.048187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194370, 0.140438, 0.970823,
		-0.091913, 0.982736, -0.160563,
		-0.976613, -0.120440, -0.178106,
		34.754417, 33.607479, 53.994755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070023, 34.157753, 54.575729>,  <35.438046, 33.691788, 54.119431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070023, 34.157753, 54.575729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.812084, 33.880478, 54.446938>,  <34.657322, 33.714111, 54.369663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.812084, 33.880478, 54.446938>,  <35.070023, 34.157753, 54.575729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812084, 33.880478, 54.446938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370048, -0.085444, 0.925075,
		-0.668762, 0.715674, -0.201415,
		-0.644842, -0.693188, -0.321976,
		34.618633, 33.672520, 54.350346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448101, 34.368233, 54.914543>,  <35.070023, 34.157753, 54.575729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448101, 34.368233, 54.914543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.376896, 33.994057, 54.792385>,  <34.334175, 33.769550, 54.719090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.376896, 33.994057, 54.792385>,  <34.448101, 34.368233, 54.914543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376896, 33.994057, 54.792385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173028, -0.275764, 0.945524,
		-0.968697, 0.221154, -0.112769,
		-0.178008, -0.935439, -0.305397,
		34.323494, 33.713425, 54.700768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163082, 35.022438, 54.813301>,  <34.448101, 34.368233, 54.914543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163082, 35.022438, 54.813301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080296, 35.412441, 54.845596>,  <34.030624, 35.646442, 54.864971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080296, 35.412441, 54.845596>,  <34.163082, 35.022438, 54.813301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080296, 35.412441, 54.845596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162206, 0.115576, -0.979965,
		-0.964808, -0.189722, -0.182073,
		-0.206964, 0.975012, 0.080735,
		34.018208, 35.704945, 54.869816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877197, 35.079887, 54.166992>,  <34.163082, 35.022438, 54.813301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877197, 35.079887, 54.166992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.926430, 35.458206, 54.287209>,  <33.955967, 35.685196, 54.359337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.926430, 35.458206, 54.287209>,  <33.877197, 35.079887, 54.166992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926430, 35.458206, 54.287209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100501, 0.313166, -0.944366,
		-0.987295, 0.086026, 0.133597,
		0.123078, 0.945794, 0.300541,
		33.963352, 35.741943, 54.377373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841335, 35.359222, 53.481522>,  <33.877197, 35.079887, 54.166992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841335, 35.359222, 53.481522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.879177, 35.695240, 53.695206>,  <33.901882, 35.896851, 53.823418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.879177, 35.695240, 53.695206>,  <33.841335, 35.359222, 53.481522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879177, 35.695240, 53.695206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051759, 0.540043, -0.840044,
		-0.994169, 0.051820, 0.094569,
		0.094602, 0.840041, 0.534212,
		33.907558, 35.947250, 53.855469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257954, 35.801674, 53.515270>,  <33.841335, 35.359222, 53.481522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257954, 35.801674, 53.515270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.595158, 36.014721, 53.545334>,  <33.797482, 36.142548, 53.563370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.595158, 36.014721, 53.545334>,  <33.257954, 35.801674, 53.515270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595158, 36.014721, 53.545334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138604, 0.350101, -0.926401,
		-0.519731, 0.770550, 0.368962,
		0.843012, 0.532619, 0.075156,
		33.848061, 36.174507, 53.567883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128872, 36.451122, 53.282269>,  <33.257954, 35.801674, 53.515270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128872, 36.451122, 53.282269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.526333, 36.483585, 53.251118>,  <33.764809, 36.503063, 53.232430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.526333, 36.483585, 53.251118>,  <33.128872, 36.451122, 53.282269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526333, 36.483585, 53.251118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101807, 0.354668, -0.929433,
		-0.047807, 0.931464, 0.360679,
		0.993655, 0.081154, -0.077874,
		33.824429, 36.507931, 53.227757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174728, 36.971710, 52.821995>,  <33.128872, 36.451122, 53.282269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174728, 36.971710, 52.821995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.550976, 36.837952, 52.798622>,  <33.776726, 36.757698, 52.784599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.550976, 36.837952, 52.798622>,  <33.174728, 36.971710, 52.821995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550976, 36.837952, 52.798622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056907, 0.325022, -0.943993,
		0.334655, 0.884614, 0.324752,
		0.940621, -0.334393, -0.058429,
		33.833160, 36.737633, 52.781094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656994, 37.497696, 52.505894>,  <33.174728, 36.971710, 52.821995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656994, 37.497696, 52.505894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.821068, 37.138306, 52.443295>,  <33.919514, 36.922672, 52.405735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.821068, 37.138306, 52.443295>,  <33.656994, 37.497696, 52.505894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821068, 37.138306, 52.443295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095587, 0.213007, -0.972364,
		0.906980, 0.383889, 0.173255,
		0.410184, -0.898475, -0.156498,
		33.944122, 36.868763, 52.396347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189339, 37.649502, 52.020287>,  <33.656994, 37.497696, 52.505894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189339, 37.649502, 52.020287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.132473, 37.253830, 52.005760>,  <34.098354, 37.016426, 51.997044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.132473, 37.253830, 52.005760>,  <34.189339, 37.649502, 52.020287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132473, 37.253830, 52.005760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063962, 0.027436, -0.997575,
		0.987775, -0.144140, 0.059369,
		-0.142161, -0.989177, -0.036320,
		34.089825, 36.957077, 51.994865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671921, 37.367432, 51.496368>,  <34.189339, 37.649502, 52.020287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671921, 37.367432, 51.496368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.377945, 37.100117, 51.542419>,  <34.201561, 36.939728, 51.570049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.377945, 37.100117, 51.542419>,  <34.671921, 37.367432, 51.496368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377945, 37.100117, 51.542419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083726, -0.079050, -0.993348,
		0.672947, -0.739688, 0.002143,
		-0.734937, -0.668291, 0.115128,
		34.157463, 36.899628, 51.576958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900379, 36.874569, 51.087872>,  <34.671921, 37.367432, 51.496368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900379, 36.874569, 51.087872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.515663, 36.772320, 51.127087>,  <34.284832, 36.710972, 51.150616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.515663, 36.772320, 51.127087>,  <34.900379, 36.874569, 51.087872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515663, 36.772320, 51.127087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056485, -0.165132, -0.984653,
		0.267887, -0.952570, 0.144384,
		-0.961793, -0.255620, 0.098042,
		34.227127, 36.695633, 51.156498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952518, 36.196301, 50.705334>,  <34.900379, 36.874569, 51.087872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952518, 36.196301, 50.705334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.583099, 36.344643, 50.744358>,  <34.361446, 36.433647, 50.767773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.583099, 36.344643, 50.744358>,  <34.952518, 36.196301, 50.705334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583099, 36.344643, 50.744358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202878, -0.256639, -0.944974,
		-0.325417, -0.892524, 0.312259,
		-0.923550, 0.370861, 0.097558,
		34.306034, 36.455898, 50.773624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484703, 35.696644, 50.353405>,  <34.952518, 36.196301, 50.705334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484703, 35.696644, 50.353405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300201, 36.051098, 50.335453>,  <34.189499, 36.263771, 50.324680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.300201, 36.051098, 50.335453>,  <34.484703, 35.696644, 50.353405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300201, 36.051098, 50.335453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220016, -0.163231, -0.961743,
		-0.859557, -0.433734, 0.270254,
		-0.461254, 0.886133, -0.044878,
		34.161827, 36.316936, 50.321991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941303, 35.528168, 49.921074>,  <34.484703, 35.696644, 50.353405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941303, 35.528168, 49.921074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.989418, 35.925262, 49.919899>,  <34.018288, 36.163517, 49.919193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.989418, 35.925262, 49.919899>,  <33.941303, 35.528168, 49.921074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989418, 35.925262, 49.919899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183773, 0.019364, -0.982778,
		-0.975581, 0.118758, 0.184767,
		0.120290, 0.992734, -0.002933,
		34.025505, 36.223083, 49.919018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373550, 35.729301, 49.492531>,  <33.941303, 35.528168, 49.921074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373550, 35.729301, 49.492531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.668259, 35.999729, 49.496410>,  <33.845085, 36.161987, 49.498737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.668259, 35.999729, 49.496410>,  <33.373550, 35.729301, 49.492531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668259, 35.999729, 49.496410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000759, 0.015175, -0.999885,
		-0.676140, 0.736681, 0.011694,
		0.736773, 0.676071, 0.009701,
		33.889290, 36.202549, 49.499321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746246, 35.994225, 49.540485>,  <33.373550, 35.729301, 49.492531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746246, 35.994225, 49.540485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.357994, 36.014778, 49.446472>,  <32.125042, 36.027111, 49.390064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.357994, 36.014778, 49.446472>,  <32.746246, 35.994225, 49.540485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357994, 36.014778, 49.446472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240407, -0.170085, 0.955655,
		0.009128, 0.984089, 0.177442,
		-0.970629, 0.051381, -0.235029,
		32.066807, 36.030193, 49.375965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455482, 36.484566, 50.001110>,  <32.746246, 35.994225, 49.540485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455482, 36.484566, 50.001110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.139618, 36.266140, 49.889214>,  <31.950100, 36.135086, 49.822075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.139618, 36.266140, 49.889214>,  <32.455482, 36.484566, 50.001110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139618, 36.266140, 49.889214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292030, -0.066466, 0.954097,
		-0.539591, 0.835103, -0.106982,
		-0.789658, -0.546064, -0.279739,
		31.902721, 36.102322, 49.805290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862024, 36.789650, 50.205406>,  <32.455482, 36.484566, 50.001110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862024, 36.789650, 50.205406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.724649, 36.416451, 50.162380>,  <31.642225, 36.192532, 50.136566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.724649, 36.416451, 50.162380>,  <31.862024, 36.789650, 50.205406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724649, 36.416451, 50.162380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366360, 0.027633, 0.930063,
		-0.864772, 0.358825, -0.351303,
		-0.343437, -0.932996, -0.107563,
		31.621618, 36.136551, 50.130112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227797, 36.685890, 50.597733>,  <31.862024, 36.789650, 50.205406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227797, 36.685890, 50.597733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.329054, 36.302727, 50.543583>,  <31.389809, 36.072826, 50.511093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.329054, 36.302727, 50.543583>,  <31.227797, 36.685890, 50.597733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329054, 36.302727, 50.543583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202822, -0.189367, 0.960731,
		-0.945929, -0.215746, -0.242222,
		0.253143, -0.957911, -0.135369,
		31.404997, 36.015354, 50.502972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595304, 36.187866, 50.823151>,  <31.227797, 36.685890, 50.597733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595304, 36.187866, 50.823151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.952469, 36.007824, 50.827366>,  <31.166767, 35.899799, 50.829895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.952469, 36.007824, 50.827366>,  <30.595304, 36.187866, 50.823151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.952469, 36.007824, 50.827366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058192, -0.092161, 0.994042,
		-0.446456, -0.888205, -0.108484,
		0.892911, -0.450109, 0.010540,
		31.220343, 35.872791, 50.830528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523071, 35.590645, 51.260033>,  <30.595304, 36.187866, 50.823151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523071, 35.590645, 51.260033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.913883, 35.675880, 51.259331>,  <31.148371, 35.727024, 51.258907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.913883, 35.675880, 51.259331>,  <30.523071, 35.590645, 51.260033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.913883, 35.675880, 51.259331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023671, -0.100328, 0.994673,
		0.211782, -0.971867, -0.103068,
		0.977030, 0.213093, -0.001757,
		31.206993, 35.739807, 51.258804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674641, 35.081314, 51.674187>,  <30.523071, 35.590645, 51.260033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674641, 35.081314, 51.674187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.981644, 35.337345, 51.660137>,  <31.165846, 35.490963, 51.651707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.981644, 35.337345, 51.660137>,  <30.674641, 35.081314, 51.674187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.981644, 35.337345, 51.660137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144448, -0.119307, 0.982293,
		0.624556, -0.758989, -0.184027,
		0.767505, 0.640080, -0.035121,
		31.211895, 35.529369, 51.649601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605618, 34.291759, 51.769451>,  <30.674641, 35.081314, 51.674187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605618, 34.291759, 51.769451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.215555, 34.306152, 51.856880>,  <29.981518, 34.314789, 51.909336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.215555, 34.306152, 51.856880>,  <30.605618, 34.291759, 51.769451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215555, 34.306152, 51.856880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220584, -0.067502, -0.973029,
		-0.020252, -0.997070, 0.073761,
		-0.975158, 0.035976, 0.218570,
		29.923008, 34.316948, 51.922451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270571, 33.639736, 51.374451>,  <30.605618, 34.291759, 51.769451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270571, 33.639736, 51.374451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.981092, 33.902271, 51.459763>,  <29.807405, 34.059792, 51.510948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.981092, 33.902271, 51.459763>,  <30.270571, 33.639736, 51.374451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981092, 33.902271, 51.459763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327716, -0.054860, -0.943182,
		-0.607342, -0.752473, 0.254794,
		-0.723697, 0.656334, 0.213278,
		29.763983, 34.099171, 51.523746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525490, 33.395401, 51.272999>,  <30.270571, 33.639736, 51.374451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525490, 33.395401, 51.272999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.545805, 33.788574, 51.202267>,  <29.557995, 34.024479, 51.159828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.545805, 33.788574, 51.202267>,  <29.525490, 33.395401, 51.272999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545805, 33.788574, 51.202267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326645, -0.150971, -0.933012,
		-0.943781, 0.105147, 0.313402,
		0.050789, 0.982930, -0.176829,
		29.561041, 34.083454, 51.149220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.218174, 33.372540, 50.520844>,  <29.525490, 33.395401, 51.272999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.218174, 33.372540, 50.520844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.283894, 33.763885, 50.571136>,  <29.323326, 33.998692, 50.601311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.283894, 33.763885, 50.571136>,  <29.218174, 33.372540, 50.520844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283894, 33.763885, 50.571136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278463, 0.168283, -0.945589,
		-0.946289, 0.120350, 0.300087,
		0.164301, 0.978364, 0.125732,
		29.333183, 34.057396, 50.608856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636198, 33.682854, 50.159966>,  <29.218174, 33.372540, 50.520844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636198, 33.682854, 50.159966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.891609, 33.987617, 50.203362>,  <29.044855, 34.170475, 50.229401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.891609, 33.987617, 50.203362>,  <28.636198, 33.682854, 50.159966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.891609, 33.987617, 50.203362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303556, 0.378887, -0.874242,
		-0.707203, 0.525293, 0.473213,
		0.638528, 0.761913, 0.108494,
		29.083168, 34.216190, 50.235909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266645, 34.146282, 49.781963>,  <28.636198, 33.682854, 50.159966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266645, 34.146282, 49.781963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.637312, 34.289013, 49.829231>,  <28.859713, 34.374653, 49.857594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.637312, 34.289013, 49.829231>,  <28.266645, 34.146282, 49.781963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.637312, 34.289013, 49.829231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010031, 0.337745, -0.941184,
		-0.375753, 0.870978, 0.316556,
		0.926666, 0.356828, 0.118172,
		28.915312, 34.396061, 49.864681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036215, 34.479065, 49.105492>,  <28.266645, 34.146282, 49.781963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036215, 34.479065, 49.105492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.764057, 34.740093, 49.238888>,  <27.600763, 34.896709, 49.318924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.764057, 34.740093, 49.238888>,  <28.036215, 34.479065, 49.105492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764057, 34.740093, 49.238888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640520, 0.750646, -0.162062,
		-0.356088, 0.103339, -0.928721,
		-0.680393, 0.652573, 0.333487,
		27.559938, 34.935863, 49.338932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.471577, 31.228554, 53.673283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.540112, 31.622635, 53.671532>,  <32.581230, 31.859083, 53.670483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.540112, 31.622635, 53.671532>,  <32.471577, 31.228554, 53.673283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540112, 31.622635, 53.671532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274931, 0.043546, -0.960477,
		-0.946075, 0.165765, 0.278324,
		0.171333, 0.985203, -0.004376,
		32.591511, 31.918196, 53.670219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900219, 31.504923, 53.373302>,  <32.471577, 31.228554, 53.673283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900219, 31.504923, 53.373302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.180187, 31.788929, 53.342350>,  <32.348167, 31.959333, 53.323780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.180187, 31.788929, 53.342350>,  <31.900219, 31.504923, 53.373302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180187, 31.788929, 53.342350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170794, 0.061189, -0.983405,
		-0.693500, 0.701521, 0.164094,
		0.699920, 0.710017, -0.077381,
		32.390163, 32.001934, 53.319138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564054, 31.973791, 52.983871>,  <31.900219, 31.504923, 53.373302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564054, 31.973791, 52.983871> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.961664, 32.014988, 52.969387>,  <32.200230, 32.039707, 52.960697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.961664, 32.014988, 52.969387>,  <31.564054, 31.973791, 52.983871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961664, 32.014988, 52.969387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042302, 0.057615, -0.997442,
		-0.100642, 0.993012, 0.061627,
		0.994023, 0.102992, -0.036208,
		32.259872, 32.045887, 52.958523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692013, 32.656651, 52.743004>,  <31.564054, 31.973791, 52.983871>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692013, 32.656651, 52.743004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.014862, 32.433231, 52.666500>,  <32.208572, 32.299179, 52.620598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.014862, 32.433231, 52.666500>,  <31.692013, 32.656651, 52.743004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014862, 32.433231, 52.666500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130723, 0.146833, -0.980485,
		0.575729, 0.816374, 0.045497,
		0.807123, -0.558546, -0.191255,
		32.257000, 32.265667, 52.609123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015972, 33.050152, 52.223408>,  <31.692013, 32.656651, 52.743004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015972, 33.050152, 52.223408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.156181, 32.676273, 52.199833>,  <32.240307, 32.451946, 52.185688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.156181, 32.676273, 52.199833>,  <32.015972, 33.050152, 52.223408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156181, 32.676273, 52.199833> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098815, 0.099488, -0.990120,
		0.931326, 0.341238, 0.127235,
		0.350525, -0.934697, -0.058936,
		32.261337, 32.395863, 52.182152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658401, 33.064037, 51.803310>,  <32.015972, 33.050152, 52.223408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658401, 33.064037, 51.803310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.509003, 32.693268, 51.788849>,  <32.419365, 32.470806, 51.780170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.509003, 32.693268, 51.788849>,  <32.658401, 33.064037, 51.803310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509003, 32.693268, 51.788849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118963, -0.009208, -0.992856,
		0.919972, -0.375129, 0.113709,
		-0.373496, -0.926927, -0.036156,
		32.396954, 32.415192, 51.778004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.910233, 32.823521, 51.252193>,  <32.658401, 33.064037, 51.803310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.910233, 32.823521, 51.252193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.642826, 32.526978, 51.275780>,  <32.482384, 32.349052, 51.289932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.642826, 32.526978, 51.275780>,  <32.910233, 32.823521, 51.252193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642826, 32.526978, 51.275780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044172, -0.039563, -0.998240,
		0.742388, -0.669940, -0.006299,
		-0.668512, -0.741360, 0.058964,
		32.442272, 32.304569, 51.293468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107582, 32.163429, 50.904896>,  <32.910233, 32.823521, 51.252193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107582, 32.163429, 50.904896> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.708172, 32.141720, 50.905041>,  <32.468525, 32.128696, 50.905128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.708172, 32.141720, 50.905041>,  <33.107582, 32.163429, 50.904896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708172, 32.141720, 50.905041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013643, -0.257442, -0.966198,
		0.052528, -0.964769, 0.257803,
		-0.998526, -0.054270, 0.000360,
		32.408615, 32.125439, 50.905148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944546, 31.661768, 50.407928>,  <33.107582, 32.163429, 50.904896>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944546, 31.661768, 50.407928> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.597694, 31.859049, 50.435741>,  <32.389584, 31.977417, 50.452431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.597694, 31.859049, 50.435741>,  <32.944546, 31.661768, 50.407928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597694, 31.859049, 50.435741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073759, 0.010918, -0.997216,
		-0.492586, -0.869847, 0.026911,
		-0.867132, 0.493200, 0.069537,
		32.337555, 32.007008, 50.456604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547935, 31.289455, 50.034229>,  <32.944546, 31.661768, 50.407928>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547935, 31.289455, 50.034229> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.344028, 31.633396, 50.045532>,  <32.221684, 31.839760, 50.052315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.344028, 31.633396, 50.045532>,  <32.547935, 31.289455, 50.034229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344028, 31.633396, 50.045532> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187628, -0.079063, -0.979053,
		-0.839604, -0.504388, 0.201635,
		-0.509765, 0.859850, 0.028256,
		32.191097, 31.891352, 50.054008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842075, 31.147383, 49.824005>,  <32.547935, 31.289455, 50.034229>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842075, 31.147383, 49.824005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.945206, 31.528971, 49.762722>,  <32.007084, 31.757923, 49.725952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.945206, 31.528971, 49.762722>,  <31.842075, 31.147383, 49.824005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945206, 31.528971, 49.762722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203208, -0.101478, -0.973863,
		-0.944581, 0.282218, 0.167691,
		0.257825, 0.953968, -0.153203,
		32.022552, 31.815161, 49.716763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328091, 31.422558, 49.370411>,  <31.842075, 31.147383, 49.824005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328091, 31.422558, 49.370411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.615894, 31.696070, 49.321827>,  <31.788576, 31.860176, 49.292675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.615894, 31.696070, 49.321827>,  <31.328091, 31.422558, 49.370411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615894, 31.696070, 49.321827> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141337, -0.027063, -0.989592,
		-0.679950, 0.729187, 0.077171,
		0.719509, 0.683780, -0.121462,
		31.831747, 31.901203, 49.285389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683035, 31.768457, 49.392021>,  <31.328091, 31.422558, 49.370411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683035, 31.768457, 49.392021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.290565, 31.827515, 49.441818>,  <30.055084, 31.862949, 49.471699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.290565, 31.827515, 49.441818>,  <30.683035, 31.768457, 49.392021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290565, 31.827515, 49.441818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058429, -0.387482, 0.920024,
		0.184077, 0.909977, 0.371560,
		-0.981174, 0.147645, 0.124496,
		29.996214, 31.871809, 49.479168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710899, 32.064037, 49.992744>,  <30.683035, 31.768457, 49.392021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710899, 32.064037, 49.992744> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.334808, 31.932354, 49.957878>,  <30.109154, 31.853344, 49.936958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.334808, 31.932354, 49.957878>,  <30.710899, 32.064037, 49.992744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334808, 31.932354, 49.957878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041186, -0.144160, 0.988697,
		-0.338053, 0.933188, 0.121984,
		-0.940226, -0.329208, -0.087168,
		30.052740, 31.833591, 49.931728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.338354, 32.425610, 50.434498>,  <30.710899, 32.064037, 49.992744>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.338354, 32.425610, 50.434498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.130428, 32.089294, 50.374012>,  <30.005672, 31.887505, 50.337723>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.130428, 32.089294, 50.374012>,  <30.338354, 32.425610, 50.434498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130428, 32.089294, 50.374012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064784, -0.215291, 0.974399,
		-0.851820, 0.496710, 0.166381,
		-0.519814, -0.840791, -0.151210,
		29.974483, 31.837057, 50.328648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864153, 32.385334, 51.040867>,  <30.338354, 32.425610, 50.434498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864153, 32.385334, 51.040867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.842783, 32.021141, 50.876835>,  <29.829962, 31.802626, 50.778416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.842783, 32.021141, 50.876835>,  <29.864153, 32.385334, 51.040867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842783, 32.021141, 50.876835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362595, -0.364949, 0.857518,
		-0.930414, 0.194505, -0.310640,
		-0.053423, -0.910484, -0.410080,
		29.826756, 31.747995, 50.753811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235201, 32.185558, 51.174587>,  <29.864153, 32.385334, 51.040867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235201, 32.185558, 51.174587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.458620, 31.856867, 51.129353>,  <29.592672, 31.659653, 51.102211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.458620, 31.856867, 51.129353>,  <29.235201, 32.185558, 51.174587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458620, 31.856867, 51.129353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440470, -0.409358, 0.799007,
		-0.702857, -0.396474, -0.590593,
		0.558550, -0.821726, -0.113086,
		29.626184, 31.610350, 51.095428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768064, 31.564655, 51.373322>,  <29.235201, 32.185558, 51.174587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768064, 31.564655, 51.373322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.153761, 31.461580, 51.398098>,  <29.385180, 31.399734, 51.412964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.153761, 31.461580, 51.398098>,  <28.768064, 31.564655, 51.373322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.153761, 31.461580, 51.398098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195299, -0.532863, 0.823356,
		-0.179160, -0.806011, -0.564135,
		0.964240, -0.257687, 0.061946,
		29.443033, 31.384274, 51.416683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742186, 30.851948, 51.489319>,  <28.768064, 31.564655, 51.373322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742186, 30.851948, 51.489319> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.088474, 31.002962, 51.620766>,  <29.296247, 31.093571, 51.699635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.088474, 31.002962, 51.620766>,  <28.742186, 30.851948, 51.489319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088474, 31.002962, 51.620766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173246, -0.389946, 0.904393,
		0.469583, -0.839887, -0.272179,
		0.865723, 0.377535, 0.328619,
		29.348192, 31.116222, 51.719353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020725, 30.332081, 51.879135>,  <28.742186, 30.851948, 51.489319>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020725, 30.332081, 51.879135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.200016, 30.666079, 52.006809>,  <29.307590, 30.866476, 52.083412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.200016, 30.666079, 52.006809>,  <29.020725, 30.332081, 51.879135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200016, 30.666079, 52.006809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236995, -0.233284, 0.943086,
		0.861931, -0.498363, 0.093325,
		0.448228, 0.834993, 0.319184,
		29.334484, 30.916576, 52.102566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301647, 30.126432, 52.486477>,  <29.020725, 30.332081, 51.879135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301647, 30.126432, 52.486477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.349190, 30.523066, 52.507027>,  <29.377714, 30.761045, 52.519356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.349190, 30.523066, 52.507027>,  <29.301647, 30.126432, 52.486477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349190, 30.523066, 52.507027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171108, -0.030516, 0.984780,
		0.978057, -0.125836, 0.166041,
		0.118854, 0.991581, 0.051378,
		29.384846, 30.820539, 52.522442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551115, 30.219170, 53.193554>,  <29.301647, 30.126432, 52.486477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551115, 30.219170, 53.193554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.426497, 30.573742, 53.056629>,  <29.351727, 30.786486, 52.974472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.426497, 30.573742, 53.056629>,  <29.551115, 30.219170, 53.193554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426497, 30.573742, 53.056629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097035, 0.328683, 0.939442,
		0.945264, 0.325894, -0.016384,
		-0.311544, 0.886431, -0.342315,
		29.333033, 30.839672, 52.953934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920370, 30.684664, 53.644344>,  <29.551115, 30.219170, 53.193554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920370, 30.684664, 53.644344> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.578764, 30.841591, 53.507671>,  <29.373800, 30.935747, 53.425667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.578764, 30.841591, 53.507671>,  <29.920370, 30.684664, 53.644344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578764, 30.841591, 53.507671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299807, 0.165610, 0.939515,
		0.425173, 0.904799, -0.023814,
		-0.854016, 0.392317, -0.341678,
		29.322559, 30.959286, 53.405167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777637, 31.348961, 53.954601>,  <29.920370, 30.684664, 53.644344>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777637, 31.348961, 53.954601> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.413351, 31.244980, 53.826214>,  <29.194778, 31.182592, 53.749180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.413351, 31.244980, 53.826214>,  <29.777637, 31.348961, 53.954601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413351, 31.244980, 53.826214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370281, 0.169552, 0.913315,
		-0.182996, 0.950620, -0.250668,
		-0.910716, -0.259951, -0.320969,
		29.140137, 31.166994, 53.729923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298784, 31.871347, 54.050571>,  <29.777637, 31.348961, 53.954601>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298784, 31.871347, 54.050571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.057928, 31.554090, 54.014011>,  <28.913414, 31.363737, 53.992073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.057928, 31.554090, 54.014011>,  <29.298784, 31.871347, 54.050571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057928, 31.554090, 54.014011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457558, 0.248998, 0.853605,
		-0.654269, 0.555812, -0.512840,
		-0.602140, -0.793141, -0.091405,
		28.877287, 31.316149, 53.986591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.560627, 32.152554, 54.108284>,  <29.298784, 31.871347, 54.050571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.560627, 32.152554, 54.108284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.616522, 31.775982, 54.231045>,  <28.650059, 31.550039, 54.304703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.616522, 31.775982, 54.231045>,  <28.560627, 32.152554, 54.108284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616522, 31.775982, 54.231045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451188, 0.215362, 0.866054,
		-0.881421, -0.259490, -0.394667,
		0.139736, -0.941427, 0.306903,
		28.658443, 31.493553, 54.323116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246309, 32.534809, 54.356770>,  <28.560627, 32.152554, 54.108284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246309, 32.534809, 54.356770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.402296, 32.892273, 54.445583>,  <29.495888, 33.106750, 54.498871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.402296, 32.892273, 54.445583>,  <29.246309, 32.534809, 54.356770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402296, 32.892273, 54.445583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053279, 0.218827, -0.974308,
		-0.919285, 0.391780, 0.037723,
		0.389969, 0.893657, 0.222038,
		29.519287, 33.160370, 54.512196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945770, 33.042683, 53.961540>,  <29.246309, 32.534809, 54.356770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945770, 33.042683, 53.961540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.282570, 33.219749, 54.084885>,  <29.484650, 33.325989, 54.158894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.282570, 33.219749, 54.084885>,  <28.945770, 33.042683, 53.961540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282570, 33.219749, 54.084885> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221539, 0.237459, -0.945798,
		-0.491896, 0.864674, 0.101872,
		0.841997, 0.442665, 0.308364,
		29.535170, 33.352551, 54.177395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843687, 33.711838, 53.919357>,  <28.945770, 33.042683, 53.961540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843687, 33.711838, 53.919357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.241863, 33.674187, 53.925564>,  <29.480768, 33.651596, 53.929287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.241863, 33.674187, 53.925564>,  <28.843687, 33.711838, 53.919357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241863, 33.674187, 53.925564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056550, 0.451161, -0.890649,
		0.076836, 0.887465, 0.454426,
		0.995439, -0.094132, 0.015521,
		29.540495, 33.645947, 53.930222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049667, 34.314953, 53.675331>,  <28.843687, 33.711838, 53.919357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049667, 34.314953, 53.675331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.367458, 34.078079, 53.621483>,  <29.558132, 33.935955, 53.589172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.367458, 34.078079, 53.621483>,  <29.049667, 34.314953, 53.675331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367458, 34.078079, 53.621483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270614, 0.543667, -0.794478,
		0.543667, 0.594764, 0.592184,
		0.794478, -0.592184, -0.134622,
		29.605803, 33.900425, 53.581097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547050, 34.781521, 53.553719>,  <29.049667, 34.314953, 53.675331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547050, 34.781521, 53.553719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.644217, 34.429134, 53.391293>,  <29.702517, 34.217701, 53.293835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.644217, 34.429134, 53.391293>,  <29.547050, 34.781521, 53.553719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644217, 34.429134, 53.391293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103498, 0.439753, -0.892135,
		0.964510, 0.174686, 0.198001,
		0.242915, -0.880966, -0.406067,
		29.717091, 34.164845, 53.269474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115694, 34.971798, 53.052742>,  <29.547050, 34.781521, 53.553719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115694, 34.971798, 53.052742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.003689, 34.602192, 52.948593>,  <29.936485, 34.380428, 52.886105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.003689, 34.602192, 52.948593>,  <30.115694, 34.971798, 53.052742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.003689, 34.602192, 52.948593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161375, 0.222061, -0.961586,
		0.946335, -0.311274, 0.086932,
		-0.280013, -0.924011, -0.260376,
		29.919685, 34.324989, 52.870480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478636, 34.848911, 52.384857>,  <30.115694, 34.971798, 53.052742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478636, 34.848911, 52.384857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.175747, 34.587841, 52.394894>,  <29.994013, 34.431198, 52.400913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.175747, 34.587841, 52.394894>,  <30.478636, 34.848911, 52.384857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175747, 34.587841, 52.394894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079751, 0.054268, -0.995336,
		0.648269, -0.755693, -0.093145,
		-0.757223, -0.652674, 0.025087,
		29.948580, 34.392040, 52.402420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159672, 34.795792, 52.152615>,  <30.478636, 34.848911, 52.384857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159672, 34.795792, 52.152615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.301340, 35.166367, 52.101578>,  <31.386341, 35.388710, 52.070957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.301340, 35.166367, 52.101578>,  <31.159672, 34.795792, 52.152615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301340, 35.166367, 52.101578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102431, 0.097185, 0.989981,
		0.929554, -0.363693, -0.060475,
		0.354172, 0.926435, -0.127592,
		31.407593, 35.444298, 52.063301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663414, 34.832756, 52.622852>,  <31.159672, 34.795792, 52.152615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663414, 34.832756, 52.622852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.559450, 35.211277, 52.545956>,  <31.497072, 35.438389, 52.499817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.559450, 35.211277, 52.545956>,  <31.663414, 34.832756, 52.622852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559450, 35.211277, 52.545956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112315, 0.227355, 0.967313,
		0.959078, 0.229824, -0.165377,
		-0.259911, 0.946304, -0.192238,
		31.481478, 35.495167, 52.488285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147694, 35.269176, 52.962109>,  <31.663414, 34.832756, 52.622852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147694, 35.269176, 52.962109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.829992, 35.508400, 52.919247>,  <31.639372, 35.651936, 52.893528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.829992, 35.508400, 52.919247>,  <32.147694, 35.269176, 52.962109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829992, 35.508400, 52.919247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137493, 0.348712, 0.927090,
		0.591824, 0.721611, -0.359195,
		-0.794254, 0.598061, -0.107159,
		31.591717, 35.687817, 52.887100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359058, 35.963974, 53.277512>,  <32.147694, 35.269176, 52.962109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359058, 35.963974, 53.277512> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.959806, 35.939636, 53.279926>,  <31.720255, 35.925034, 53.281376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.959806, 35.939636, 53.279926>,  <32.359058, 35.963974, 53.277512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959806, 35.939636, 53.279926> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007065, 0.212775, 0.977076,
		-0.060736, 0.975205, -0.212806,
		-0.998129, -0.060847, 0.006033,
		31.660368, 35.921383, 53.281734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150482, 36.592625, 53.621258>,  <32.359058, 35.963974, 53.277512>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150482, 36.592625, 53.621258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.836861, 36.348339, 53.665600>,  <31.648687, 36.201767, 53.692204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.836861, 36.348339, 53.665600>,  <32.150482, 36.592625, 53.621258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836861, 36.348339, 53.665600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009274, 0.190103, 0.981721,
		-0.620624, 0.768693, -0.154714,
		-0.784054, -0.610714, 0.110853,
		31.601645, 36.165127, 53.698856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667210, 36.977245, 53.986168>,  <32.150482, 36.592625, 53.621258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667210, 36.977245, 53.986168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.561123, 36.598579, 54.059364>,  <31.497471, 36.371380, 54.103283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.561123, 36.598579, 54.059364>,  <31.667210, 36.977245, 53.986168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561123, 36.598579, 54.059364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137630, 0.225017, 0.964586,
		-0.954316, 0.230637, -0.189967,
		-0.265215, -0.946665, 0.182994,
		31.481558, 36.314579, 54.114262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094381, 37.019886, 54.401024>,  <31.667210, 36.977245, 53.986168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094381, 37.019886, 54.401024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.189625, 36.633617, 54.442577>,  <31.246771, 36.401855, 54.467510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.189625, 36.633617, 54.442577>,  <31.094381, 37.019886, 54.401024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189625, 36.633617, 54.442577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087165, 0.085284, 0.992536,
		-0.967319, -0.245385, -0.063866,
		0.238107, -0.965667, 0.103886,
		31.261057, 36.343918, 54.473743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538855, 36.695873, 54.827057>,  <31.094381, 37.019886, 54.401024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538855, 36.695873, 54.827057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.876701, 36.484016, 54.858303>,  <31.079409, 36.356903, 54.877048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.876701, 36.484016, 54.858303>,  <30.538855, 36.695873, 54.827057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876701, 36.484016, 54.858303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058501, 0.053721, 0.996841,
		-0.532165, -0.846519, 0.014389,
		0.844618, -0.529642, 0.078111,
		31.130087, 36.325123, 54.881737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373714, 36.106369, 55.215900>,  <30.538855, 36.695873, 54.827057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373714, 36.106369, 55.215900> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.738144, 36.245461, 55.304474>,  <30.956802, 36.328915, 55.357616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.738144, 36.245461, 55.304474>,  <30.373714, 36.106369, 55.215900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738144, 36.245461, 55.304474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311042, 0.227307, 0.922813,
		0.270553, -0.909625, 0.315251,
		0.911073, 0.347726, 0.221433,
		31.011465, 36.349777, 55.370903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.450642, 36.437157, 38.855156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773624, 36.585236, 39.038879>,  <32.967415, 36.674084, 39.149113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773624, 36.585236, 39.038879>,  <32.450642, 36.437157, 38.855156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773624, 36.585236, 39.038879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326342, -0.368302, 0.870548,
		0.491438, -0.852824, -0.176579,
		0.807459, 0.370196, 0.459310,
		33.015862, 36.696293, 39.176674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615723, 35.950611, 39.393898>,  <32.450642, 36.437157, 38.855156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615723, 35.950611, 39.393898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815853, 36.272446, 39.521839>,  <32.935932, 36.465546, 39.598602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815853, 36.272446, 39.521839>,  <32.615723, 35.950611, 39.393898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815853, 36.272446, 39.521839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196026, -0.254562, 0.946980,
		0.843354, -0.536500, 0.030356,
		0.500328, 0.804590, 0.319854,
		32.965950, 36.513824, 39.617794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037243, 35.738403, 40.015888>,  <32.615723, 35.950611, 39.393898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037243, 35.738403, 40.015888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023224, 36.137974, 40.028069>,  <33.014812, 36.377716, 40.035378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023224, 36.137974, 40.028069>,  <33.037243, 35.738403, 40.015888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023224, 36.137974, 40.028069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215413, -0.037299, 0.975811,
		0.975894, 0.027641, 0.216488,
		-0.035047, 0.998922, 0.030446,
		33.012711, 36.437649, 40.037201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445175, 35.886093, 40.623604>,  <33.037243, 35.738403, 40.015888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445175, 35.886093, 40.623604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172779, 36.169655, 40.550171>,  <33.009342, 36.339794, 40.506111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172779, 36.169655, 40.550171>,  <33.445175, 35.886093, 40.623604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172779, 36.169655, 40.550171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249640, 0.010945, 0.968277,
		0.688428, 0.705217, 0.169518,
		-0.680990, 0.708907, -0.183585,
		32.968483, 36.382328, 40.495094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491405, 36.417042, 41.175819>,  <33.445175, 35.886093, 40.623604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491405, 36.417042, 41.175819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124531, 36.480244, 41.029499>,  <32.904408, 36.518166, 40.941708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124531, 36.480244, 41.029499>,  <33.491405, 36.417042, 41.175819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124531, 36.480244, 41.029499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290219, 0.364143, 0.884971,
		0.273031, 0.917843, -0.288131,
		-0.917184, 0.158004, -0.365797,
		32.849377, 36.527645, 40.919762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258602, 37.109871, 41.400429>,  <33.491405, 36.417042, 41.175819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258602, 37.109871, 41.400429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925797, 36.903965, 41.317707>,  <32.726112, 36.780422, 41.268074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.925797, 36.903965, 41.317707>,  <33.258602, 37.109871, 41.400429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925797, 36.903965, 41.317707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377876, 0.252945, 0.890634,
		-0.406159, 0.819166, -0.404972,
		-0.832012, -0.514768, -0.206807,
		32.676193, 36.749535, 41.255665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861851, 37.385509, 41.866673>,  <33.258602, 37.109871, 41.400429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861851, 37.385509, 41.866673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633686, 37.072819, 41.765850>,  <32.496788, 36.885204, 41.705357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633686, 37.072819, 41.765850>,  <32.861851, 37.385509, 41.866673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633686, 37.072819, 41.765850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529622, 0.115502, 0.840333,
		-0.627798, 0.612832, -0.479903,
		-0.570413, -0.781726, -0.252057,
		32.462563, 36.838303, 41.690231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237759, 37.540108, 42.093124>,  <32.861851, 37.385509, 41.866673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237759, 37.540108, 42.093124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169201, 37.146961, 42.065990>,  <32.128067, 36.911072, 42.049709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.169201, 37.146961, 42.065990>,  <32.237759, 37.540108, 42.093124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169201, 37.146961, 42.065990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420445, 0.010702, 0.907255,
		-0.890983, 0.184016, -0.415075,
		-0.171391, -0.982865, -0.067833,
		32.117783, 36.852100, 42.045639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687531, 37.497021, 42.374611>,  <32.237759, 37.540108, 42.093124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687531, 37.497021, 42.374611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818722, 37.123665, 42.432861>,  <31.897436, 36.899651, 42.467812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818722, 37.123665, 42.432861>,  <31.687531, 37.497021, 42.374611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818722, 37.123665, 42.432861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274761, 0.053236, 0.960038,
		-0.903846, -0.354882, -0.239000,
		0.327977, -0.933394, 0.145625,
		31.917114, 36.843647, 42.476547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106283, 37.078255, 42.433605>,  <31.687531, 37.497021, 42.374611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106283, 37.078255, 42.433605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418255, 36.911598, 42.620415>,  <31.605438, 36.811604, 42.732502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.418255, 36.911598, 42.620415>,  <31.106283, 37.078255, 42.433605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418255, 36.911598, 42.620415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514752, -0.002572, 0.857335,
		-0.356003, -0.909066, -0.216475,
		0.779931, -0.416645, 0.467028,
		31.652235, 36.786606, 42.760525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812901, 36.596123, 42.884338>,  <31.106283, 37.078255, 42.433605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812901, 36.596123, 42.884338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182938, 36.650764, 43.026066>,  <31.404961, 36.683548, 43.111103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.182938, 36.650764, 43.026066>,  <30.812901, 36.596123, 42.884338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182938, 36.650764, 43.026066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357893, 0.001732, 0.933761,
		0.126944, -0.990624, 0.050492,
		0.925093, 0.136606, 0.354318,
		31.460466, 36.691746, 43.132362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777884, 36.224911, 43.476601>,  <30.812901, 36.596123, 42.884338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777884, 36.224911, 43.476601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116928, 36.430302, 43.530113>,  <31.320354, 36.553535, 43.562222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116928, 36.430302, 43.530113>,  <30.777884, 36.224911, 43.476601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116928, 36.430302, 43.530113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197617, 0.071483, 0.977669,
		0.492445, -0.855122, 0.162061,
		0.847612, 0.513474, 0.133785,
		31.371212, 36.584343, 43.570248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194868, 35.891140, 43.581974>,  <30.777884, 36.224911, 43.476601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194868, 35.891140, 43.581974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811665, 35.999264, 43.620239>,  <29.581743, 36.064140, 43.643200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811665, 35.999264, 43.620239>,  <30.194868, 35.891140, 43.581974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811665, 35.999264, 43.620239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116981, -0.063843, -0.991080,
		-0.261795, -0.960653, 0.092783,
		-0.958008, 0.270313, 0.095664,
		29.524261, 36.080357, 43.648937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841774, 35.370586, 43.155376>,  <30.194868, 35.891140, 43.581974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841774, 35.370586, 43.155376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556152, 35.647301, 43.198380>,  <29.384779, 35.813328, 43.224182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.556152, 35.647301, 43.198380>,  <29.841774, 35.370586, 43.155376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556152, 35.647301, 43.198380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150518, -0.001733, -0.988606,
		-0.683717, -0.722101, 0.105364,
		-0.714056, 0.691786, 0.107505,
		29.341936, 35.854836, 43.230633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323580, 35.048073, 42.848362>,  <29.841774, 35.370586, 43.155376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323580, 35.048073, 42.848362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185478, 35.421761, 42.884220>,  <29.102617, 35.645973, 42.905735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185478, 35.421761, 42.884220>,  <29.323580, 35.048073, 42.848362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185478, 35.421761, 42.884220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347648, -0.038582, -0.936831,
		-0.871746, -0.354610, 0.338099,
		-0.345254, 0.934218, 0.089646,
		29.081902, 35.702026, 42.911114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690275, 35.101292, 42.771324>,  <29.323580, 35.048073, 42.848362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690275, 35.101292, 42.771324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817822, 35.469833, 42.682388>,  <28.894350, 35.690956, 42.629028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817822, 35.469833, 42.682388>,  <28.690275, 35.101292, 42.771324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817822, 35.469833, 42.682388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262290, -0.139643, -0.954832,
		-0.910784, 0.362783, 0.197134,
		0.318868, 0.921351, -0.222339,
		28.913483, 35.746239, 42.615688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245361, 35.403519, 42.290195>,  <28.690275, 35.101292, 42.771324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245361, 35.403519, 42.290195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576900, 35.624115, 42.252525>,  <28.775824, 35.756474, 42.229923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576900, 35.624115, 42.252525>,  <28.245361, 35.403519, 42.290195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576900, 35.624115, 42.252525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119949, 0.010745, -0.992722,
		-0.546465, 0.834112, 0.075057,
		0.828848, 0.551491, -0.094179,
		28.825554, 35.789562, 42.224270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.005819, 35.848537, 41.763123>,  <28.245361, 35.403519, 42.290195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.005819, 35.848537, 41.763123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404549, 35.880302, 41.765404>,  <28.643787, 35.899361, 41.766773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404549, 35.880302, 41.765404>,  <28.005819, 35.848537, 41.763123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404549, 35.880302, 41.765404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001805, 0.094106, -0.995561,
		-0.079595, 0.992390, 0.093951,
		0.996826, 0.079411, 0.005699,
		28.703596, 35.904125, 41.767113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244360, 36.450974, 41.335342>,  <28.005819, 35.848537, 41.763123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244360, 36.450974, 41.335342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544306, 36.187592, 41.361073>,  <28.724274, 36.029560, 41.376511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.544306, 36.187592, 41.361073>,  <28.244360, 36.450974, 41.335342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544306, 36.187592, 41.361073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157353, 0.083064, -0.984043,
		0.642609, 0.748019, 0.165897,
		0.749863, -0.658459, 0.064326,
		28.769264, 35.990055, 41.380371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714422, 36.785446, 40.863747>,  <28.244360, 36.450974, 41.335342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714422, 36.785446, 40.863747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.872334, 36.419018, 40.891918>,  <28.967081, 36.199162, 40.908821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.872334, 36.419018, 40.891918>,  <28.714422, 36.785446, 40.863747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872334, 36.419018, 40.891918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334369, 0.071846, -0.939700,
		0.855773, 0.394525, 0.334669,
		0.394780, -0.916072, 0.070433,
		28.990767, 36.144196, 40.913048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375563, 36.793476, 40.578312>,  <28.714422, 36.785446, 40.863747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375563, 36.793476, 40.578312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311348, 36.398666, 40.577778>,  <29.272820, 36.161781, 40.577457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311348, 36.398666, 40.577778>,  <29.375563, 36.793476, 40.578312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311348, 36.398666, 40.577778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244781, -0.038498, -0.968814,
		0.956196, -0.155859, 0.247786,
		-0.160538, -0.987029, -0.001340,
		29.263187, 36.102558, 40.577377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922495, 36.522160, 40.250092>,  <29.375563, 36.793476, 40.578312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922495, 36.522160, 40.250092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639778, 36.239918, 40.229847>,  <29.470148, 36.070572, 40.217701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639778, 36.239918, 40.229847>,  <29.922495, 36.522160, 40.250092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639778, 36.239918, 40.229847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223784, -0.155137, -0.962213,
		0.671092, -0.691412, 0.267553,
		-0.706793, -0.705607, -0.050616,
		29.427740, 36.028236, 40.214661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259008, 36.089462, 39.882401>,  <29.922495, 36.522160, 40.250092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259008, 36.089462, 39.882401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865025, 36.037430, 39.836910>,  <29.628633, 36.006210, 39.809616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865025, 36.037430, 39.836910>,  <30.259008, 36.089462, 39.882401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865025, 36.037430, 39.836910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114154, 0.004159, -0.993454,
		0.129706, -0.991494, 0.010753,
		-0.984959, -0.130085, -0.113723,
		29.569536, 35.998405, 39.802792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137573, 35.596268, 39.337734>,  <30.259008, 36.089462, 39.882401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137573, 35.596268, 39.337734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768389, 35.746197, 39.372734>,  <29.546879, 35.836155, 39.393734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768389, 35.746197, 39.372734>,  <30.137573, 35.596268, 39.337734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768389, 35.746197, 39.372734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090975, 0.008444, -0.995817,
		-0.373990, -0.927059, 0.026306,
		-0.922960, 0.374819, 0.087497,
		29.491501, 35.858643, 39.398983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.698795, 35.058929, 38.929844>,  <30.137573, 35.596268, 39.337734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.698795, 35.058929, 38.929844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576132, 35.439476, 38.941570>,  <29.502533, 35.667805, 38.948605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576132, 35.439476, 38.941570>,  <29.698795, 35.058929, 38.929844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.576132, 35.439476, 38.941570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107053, -0.003873, -0.994246,
		-0.945780, -0.308033, 0.103035,
		-0.306659, 0.951368, 0.029313,
		29.484135, 35.724888, 38.950363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127972, 34.559494, 38.740879>,  <29.698795, 35.058929, 38.929844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127972, 34.559494, 38.740879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243113, 34.459206, 38.371170>,  <29.312197, 34.399033, 38.149345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243113, 34.459206, 38.371170>,  <29.127972, 34.559494, 38.740879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243113, 34.459206, 38.371170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050173, -0.967744, 0.246890,
		-0.956358, -0.024695, -0.291150,
		0.287856, -0.250723, -0.924271,
		29.329468, 34.383987, 38.093887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.128098, 33.831326, 38.704327>,  <29.127972, 34.559494, 38.740879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.128098, 33.831326, 38.704327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497335, 33.983604, 38.682541>,  <29.718878, 34.074970, 38.669472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497335, 33.983604, 38.682541>,  <29.128098, 33.831326, 38.704327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497335, 33.983604, 38.682541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290248, -0.596759, 0.748088,
		0.252296, -0.706362, -0.661362,
		0.923094, 0.380699, -0.054460,
		29.774263, 34.097813, 38.666203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600178, 33.526215, 39.306099>,  <29.128098, 33.831326, 38.704327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600178, 33.526215, 39.306099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799145, 33.229290, 39.126518>,  <28.918524, 33.051136, 39.018768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.799145, 33.229290, 39.126518>,  <28.600178, 33.526215, 39.306099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799145, 33.229290, 39.126518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300199, -0.338257, 0.891887,
		-0.813915, -0.578414, 0.054586,
		0.497416, -0.742307, -0.448952,
		28.948370, 33.006599, 38.991833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333017, 32.931229, 39.606876>,  <28.600178, 33.526215, 39.306099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333017, 32.931229, 39.606876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714205, 32.916576, 39.486534>,  <28.942917, 32.907787, 39.414330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714205, 32.916576, 39.486534>,  <28.333017, 32.931229, 39.606876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714205, 32.916576, 39.486534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259175, -0.416097, 0.871603,
		-0.157109, -0.908582, -0.387034,
		0.952966, -0.036627, -0.300855,
		29.000095, 32.905586, 39.396278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571053, 32.322330, 39.632465>,  <28.333017, 32.931229, 39.606876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571053, 32.322330, 39.632465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884930, 32.564968, 39.683533>,  <29.073256, 32.710552, 39.714172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884930, 32.564968, 39.683533>,  <28.571053, 32.322330, 39.632465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884930, 32.564968, 39.683533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129118, -0.361383, 0.923434,
		0.606287, -0.708129, -0.361897,
		0.784694, 0.606594, 0.127669,
		29.120338, 32.746944, 39.721832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187294, 31.838850, 39.807789>,  <28.571053, 32.322330, 39.632465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187294, 31.838850, 39.807789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250015, 32.214767, 39.929249>,  <29.287647, 32.440319, 40.002125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.250015, 32.214767, 39.929249>,  <29.187294, 31.838850, 39.807789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.250015, 32.214767, 39.929249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230467, -0.333780, 0.914044,
		0.960363, -0.073344, -0.268929,
		0.156803, 0.939794, 0.303646,
		29.297056, 32.496704, 40.020344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753117, 31.819042, 40.218372>,  <29.187294, 31.838850, 39.807789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753117, 31.819042, 40.218372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593479, 32.170132, 40.324448>,  <29.497696, 32.380787, 40.388092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593479, 32.170132, 40.324448>,  <29.753117, 31.819042, 40.218372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593479, 32.170132, 40.324448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221287, -0.188471, 0.956823,
		0.889807, 0.440545, -0.119011,
		-0.399093, 0.877724, 0.265190,
		29.473751, 32.433449, 40.404003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106358, 31.980192, 40.731812>,  <29.753117, 31.819042, 40.218372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106358, 31.980192, 40.731812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785578, 32.212803, 40.786518>,  <29.593109, 32.352367, 40.819344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.785578, 32.212803, 40.786518>,  <30.106358, 31.980192, 40.731812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785578, 32.212803, 40.786518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105473, -0.087514, 0.990564,
		0.588007, 0.808808, 0.008847,
		-0.801950, 0.581525, 0.136766,
		29.544992, 32.387260, 40.827549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281538, 32.567257, 41.272057>,  <30.106358, 31.980192, 40.731812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281538, 32.567257, 41.272057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881760, 32.577377, 41.280708>,  <29.641893, 32.583450, 41.285900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881760, 32.577377, 41.280708>,  <30.281538, 32.567257, 41.272057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881760, 32.577377, 41.280708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025400, 0.159800, 0.986823,
		0.021507, 0.986825, -0.160354,
		-0.999446, 0.025296, 0.021628,
		29.581926, 32.584965, 41.287197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107843, 33.153576, 41.758949>,  <30.281538, 32.567257, 41.272057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107843, 33.153576, 41.758949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752493, 32.971882, 41.732243>,  <29.539284, 32.862865, 41.716217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752493, 32.971882, 41.732243>,  <30.107843, 33.153576, 41.758949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752493, 32.971882, 41.732243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119968, 0.089294, 0.988754,
		-0.443168, 0.886394, -0.133821,
		-0.888374, -0.454239, -0.066767,
		29.485981, 32.835609, 41.712212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675608, 33.647667, 42.103298>,  <30.107843, 33.153576, 41.758949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675608, 33.647667, 42.103298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506777, 33.285160, 42.112465>,  <29.405478, 33.067654, 42.117966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.506777, 33.285160, 42.112465>,  <29.675608, 33.647667, 42.103298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506777, 33.285160, 42.112465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283999, 0.156190, 0.946018,
		-0.860926, 0.392785, -0.323304,
		-0.422079, -0.906270, 0.022917,
		29.380154, 33.013279, 42.119339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934530, 33.653454, 42.284409>,  <29.675608, 33.647667, 42.103298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934530, 33.653454, 42.284409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060476, 33.289463, 42.392342>,  <29.136044, 33.071068, 42.457100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060476, 33.289463, 42.392342>,  <28.934530, 33.653454, 42.284409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060476, 33.289463, 42.392342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431738, 0.115861, 0.894527,
		-0.845260, -0.398149, -0.356390,
		0.314863, -0.909975, 0.269829,
		29.154936, 33.016472, 42.473289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317818, 33.352425, 42.561085>,  <28.934530, 33.653454, 42.284409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317818, 33.352425, 42.561085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639078, 33.166759, 42.710484>,  <28.831835, 33.055359, 42.800121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639078, 33.166759, 42.710484>,  <28.317818, 33.352425, 42.561085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639078, 33.166759, 42.710484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362619, 0.116559, 0.924619,
		-0.472708, -0.878048, -0.074699,
		0.803153, -0.464162, 0.373495,
		28.880024, 33.027512, 42.822533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059584, 33.201351, 43.203728>,  <28.317818, 33.352425, 42.561085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059584, 33.201351, 43.203728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448700, 33.110401, 43.221508>,  <28.682171, 33.055832, 43.232178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.448700, 33.110401, 43.221508>,  <28.059584, 33.201351, 43.203728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448700, 33.110401, 43.221508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064929, -0.083374, 0.994401,
		-0.222394, -0.970232, -0.095868,
		0.972792, -0.227374, 0.044455,
		28.740538, 33.042191, 43.234844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172014, 32.482311, 43.484951>,  <28.059584, 33.201351, 43.203728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172014, 32.482311, 43.484951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485332, 32.720432, 43.556572>,  <28.673325, 32.863304, 43.599545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485332, 32.720432, 43.556572>,  <28.172014, 32.482311, 43.484951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485332, 32.720432, 43.556572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109504, -0.151388, 0.982390,
		0.611926, -0.789110, -0.053394,
		0.783297, 0.595304, 0.179049,
		28.720322, 32.899025, 43.610287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379681, 32.209213, 44.167503>,  <28.172014, 32.482311, 43.484951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379681, 32.209213, 44.167503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.626598, 32.523449, 44.150539>,  <28.774750, 32.711990, 44.140362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.626598, 32.523449, 44.150539>,  <28.379681, 32.209213, 44.167503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626598, 32.523449, 44.150539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244967, -0.140703, 0.959268,
		0.747622, -0.602539, -0.279298,
		0.617295, 0.785589, -0.042409,
		28.811787, 32.759125, 44.137817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020428, 31.964163, 44.424778>,  <28.379681, 32.209213, 44.167503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020428, 31.964163, 44.424778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.008776, 32.361614, 44.468319>,  <29.001783, 32.600086, 44.494446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.008776, 32.361614, 44.468319>,  <29.020428, 31.964163, 44.424778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.008776, 32.361614, 44.468319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253295, -0.098008, 0.962411,
		0.966950, 0.055609, -0.248826,
		-0.029131, 0.993631, 0.108855,
		29.000036, 32.659702, 44.500977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628077, 32.071503, 44.706779>,  <29.020428, 31.964163, 44.424778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628077, 32.071503, 44.706779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401243, 32.390133, 44.790569>,  <29.265142, 32.581310, 44.840843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.401243, 32.390133, 44.790569>,  <29.628077, 32.071503, 44.706779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401243, 32.390133, 44.790569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137965, -0.158865, 0.977613,
		0.812023, 0.583290, -0.019810,
		-0.567084, 0.796577, 0.209475,
		29.231117, 32.629105, 44.853413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016003, 32.440311, 45.124660>,  <29.628077, 32.071503, 44.706779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016003, 32.440311, 45.124660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638945, 32.565758, 45.170376>,  <29.412710, 32.641026, 45.197807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638945, 32.565758, 45.170376>,  <30.016003, 32.440311, 45.124660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638945, 32.565758, 45.170376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135878, 0.047783, 0.989573,
		0.304882, 0.948347, -0.087656,
		-0.942647, 0.313614, 0.114291,
		29.356150, 32.659843, 45.204662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062140, 32.807682, 45.890289>,  <30.016003, 32.440311, 45.124660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062140, 32.807682, 45.890289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674400, 32.768494, 45.800167>,  <29.441757, 32.744980, 45.746094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674400, 32.768494, 45.800167>,  <30.062140, 32.807682, 45.890289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674400, 32.768494, 45.800167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242591, 0.236611, 0.940832,
		-0.038860, 0.966653, -0.253125,
		-0.969350, -0.097967, -0.225306,
		29.383595, 32.739105, 45.732574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702127, 33.374573, 46.204514>,  <30.062140, 32.807682, 45.890289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702127, 33.374573, 46.204514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425726, 33.089878, 46.153999>,  <29.259886, 32.919064, 46.123692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.425726, 33.089878, 46.153999>,  <29.702127, 33.374573, 46.204514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425726, 33.089878, 46.153999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200228, 0.020594, 0.979533,
		-0.694566, 0.702147, -0.156740,
		-0.691004, -0.711734, -0.126285,
		29.218424, 32.876358, 46.116116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177814, 33.537621, 46.636333>,  <29.702127, 33.374573, 46.204514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177814, 33.537621, 46.636333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050732, 33.164864, 46.566322>,  <28.974482, 32.941208, 46.524315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.050732, 33.164864, 46.566322>,  <29.177814, 33.537621, 46.636333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.050732, 33.164864, 46.566322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244142, -0.097967, 0.964778,
		-0.916218, 0.349249, -0.196390,
		-0.317708, -0.931895, -0.175025,
		28.955420, 32.885296, 46.513813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468910, 33.414890, 47.064854>,  <29.177814, 33.537621, 46.636333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468910, 33.414890, 47.064854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646788, 33.064945, 46.988056>,  <28.753513, 32.854977, 46.941978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.646788, 33.064945, 46.988056>,  <28.468910, 33.414890, 47.064854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.646788, 33.064945, 46.988056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304521, -0.349257, 0.886164,
		-0.842327, -0.335607, -0.421727,
		0.444694, -0.874864, -0.191989,
		28.780195, 32.802486, 46.930458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056042, 32.882927, 47.442905>,  <28.468910, 33.414890, 47.064854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056042, 32.882927, 47.442905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.422993, 32.735996, 47.381599>,  <28.643164, 32.647839, 47.344814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.422993, 32.735996, 47.381599>,  <28.056042, 32.882927, 47.442905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.422993, 32.735996, 47.381599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040684, -0.469600, 0.881941,
		-0.395933, -0.802838, -0.445745,
		0.917378, -0.367325, -0.153267,
		28.698206, 32.625797, 47.335617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089109, 32.349922, 47.896561>,  <28.056042, 32.882927, 47.442905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089109, 32.349922, 47.896561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473017, 32.345127, 47.784348>,  <28.703362, 32.342251, 47.717018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473017, 32.345127, 47.784348>,  <28.089109, 32.349922, 47.896561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473017, 32.345127, 47.784348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247149, -0.438118, 0.864275,
		-0.133269, -0.898838, -0.417529,
		0.959769, -0.011989, -0.280534,
		28.760948, 32.341530, 47.700188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.415178, 31.759443, 48.165035>,  <28.089109, 32.349922, 47.896561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.415178, 31.759443, 48.165035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724201, 32.007717, 48.111511>,  <28.909615, 32.156681, 48.079395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724201, 32.007717, 48.111511>,  <28.415178, 31.759443, 48.165035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724201, 32.007717, 48.111511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344482, -0.232695, 0.909497,
		0.533373, -0.748735, -0.393585,
		0.772558, 0.620684, -0.133813,
		28.955969, 32.193924, 48.071369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999765, 31.392239, 48.477070>,  <28.415178, 31.759443, 48.165035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999765, 31.392239, 48.477070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119770, 31.771986, 48.439774>,  <29.191772, 31.999834, 48.417397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119770, 31.771986, 48.439774>,  <28.999765, 31.392239, 48.477070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119770, 31.771986, 48.439774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591912, -0.108614, 0.798651,
		0.748086, -0.294794, -0.594528,
		0.300011, 0.949368, -0.093239,
		29.209774, 32.056797, 48.411800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794781, 31.402340, 48.433739>,  <28.999765, 31.392239, 48.477070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794781, 31.402340, 48.433739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639715, 31.745291, 48.569164>,  <29.546677, 31.951061, 48.650417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.639715, 31.745291, 48.569164>,  <29.794781, 31.402340, 48.433739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639715, 31.745291, 48.569164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605776, -0.039884, 0.794635,
		0.694805, 0.513142, -0.503917,
		-0.387662, 0.857377, 0.338561,
		29.523417, 32.002502, 48.670731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402750, 31.671787, 48.736431>,  <29.794781, 31.402340, 48.433739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402750, 31.671787, 48.736431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.084412, 31.851274, 48.899048>,  <29.893408, 31.958967, 48.996620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.084412, 31.851274, 48.899048>,  <30.402750, 31.671787, 48.736431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.084412, 31.851274, 48.899048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369374, -0.172233, 0.913180,
		0.479781, 0.876919, -0.028674,
		-0.795847, 0.448718, 0.406546,
		29.845657, 31.985889, 49.021011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097342, 31.952871, 48.704765>,  <30.402750, 31.671787, 48.736431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097342, 31.952871, 48.704765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490440, 31.992970, 48.766933>,  <31.726299, 32.017029, 48.804234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490440, 31.992970, 48.766933>,  <31.097342, 31.952871, 48.704765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490440, 31.992970, 48.766933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140743, 0.139803, -0.980126,
		-0.119983, 0.985092, 0.123282,
		0.982749, 0.100248, 0.155418,
		31.785265, 32.023045, 48.813560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229889, 32.646053, 48.450935>,  <31.097342, 31.952871, 48.704765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229889, 32.646053, 48.450935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559198, 32.419571, 48.434788>,  <31.756784, 32.283684, 48.425098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559198, 32.419571, 48.434788>,  <31.229889, 32.646053, 48.450935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559198, 32.419571, 48.434788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095884, 0.208812, -0.973244,
		0.559485, 0.797377, 0.226200,
		0.823276, -0.566204, -0.040371,
		31.806181, 32.249710, 48.422676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712757, 33.084972, 48.074333>,  <31.229889, 32.646053, 48.450935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712757, 33.084972, 48.074333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844696, 32.707428, 48.081528>,  <31.923861, 32.480900, 48.085842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844696, 32.707428, 48.081528>,  <31.712757, 33.084972, 48.074333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844696, 32.707428, 48.081528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185151, 0.046000, -0.981633,
		0.925699, 0.327120, 0.189930,
		0.329848, -0.943863, 0.017984,
		31.943651, 32.424271, 48.086922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393147, 33.040108, 47.704418>,  <31.712757, 33.084972, 48.074333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393147, 33.040108, 47.704418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247002, 32.668022, 47.690426>,  <32.159317, 32.444771, 47.682030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.247002, 32.668022, 47.690426>,  <32.393147, 33.040108, 47.704418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.247002, 32.668022, 47.690426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318382, -0.089565, -0.943722,
		0.874726, -0.355934, 0.328885,
		-0.365359, -0.930209, -0.034978,
		32.137394, 32.388958, 47.679932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911388, 32.539196, 47.552471>,  <32.393147, 33.040108, 47.704418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911388, 32.539196, 47.552471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559170, 32.397697, 47.426292>,  <32.347839, 32.312798, 47.350586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559170, 32.397697, 47.426292>,  <32.911388, 32.539196, 47.552471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559170, 32.397697, 47.426292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406124, -0.220019, -0.886936,
		0.244348, -0.909095, 0.337402,
		-0.880544, -0.353748, -0.315444,
		32.295006, 32.291573, 47.331657>
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
