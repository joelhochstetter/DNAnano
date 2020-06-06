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
	<23.993258, 35.102722, 34.906975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.391581, 35.070068, 34.890453>,  <24.630573, 35.050476, 34.880539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.391581, 35.070068, 34.890453>,  <23.993258, 35.102722, 34.906975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.391581, 35.070068, 34.890453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085336, -0.665989, -0.741064,
		0.032989, 0.741481, -0.670162,
		0.995806, -0.081636, -0.041305,
		24.690323, 35.045578, 34.878063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.225216, 35.423862, 34.208824>,  <23.993258, 35.102722, 34.906975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.225216, 35.423862, 34.208824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.428734, 35.121353, 34.373348>,  <24.550844, 34.939850, 34.472065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.428734, 35.121353, 34.373348>,  <24.225216, 35.423862, 34.208824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.428734, 35.121353, 34.373348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013922, -0.484945, -0.874434,
		0.860774, 0.439182, -0.257268,
		0.508797, -0.756272, 0.411314,
		24.581373, 34.894470, 34.496742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.884508, 35.360146, 33.850758>,  <24.225216, 35.423862, 34.208824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.884508, 35.360146, 33.850758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.748653, 35.019852, 34.011204>,  <24.667141, 34.815674, 34.107471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.748653, 35.019852, 34.011204>,  <24.884508, 35.360146, 33.850758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.748653, 35.019852, 34.011204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075570, -0.449768, -0.889943,
		0.937516, -0.271945, 0.217047,
		-0.339636, -0.850738, 0.401114,
		24.646763, 34.764629, 34.131538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.312817, 34.707088, 33.782887>,  <24.884508, 35.360146, 33.850758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.312817, 34.707088, 33.782887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.916424, 34.655170, 33.769581>,  <24.678589, 34.624020, 33.761597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.916424, 34.655170, 33.769581>,  <25.312817, 34.707088, 33.782887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.916424, 34.655170, 33.769581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070790, -0.296413, -0.952433,
		0.113765, -0.946199, 0.302928,
		-0.990983, -0.129798, -0.033260,
		24.619129, 34.616230, 33.759602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116190, 34.642941, 33.831020>,  <25.312817, 34.707088, 33.782887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116190, 34.642941, 33.831020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433773, 34.496155, 33.637127>,  <26.624323, 34.408081, 33.520790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433773, 34.496155, 33.637127>,  <26.116190, 34.642941, 33.831020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.433773, 34.496155, 33.637127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142189, -0.887260, 0.438807,
		-0.591115, -0.279469, -0.756624,
		0.793956, -0.366969, -0.484735,
		26.671959, 34.386063, 33.491707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.979443, 33.986069, 33.970325>,  <26.116190, 34.642941, 33.831020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.979443, 33.986069, 33.970325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336809, 33.967728, 33.791573>,  <26.551229, 33.956722, 33.684319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336809, 33.967728, 33.791573>,  <25.979443, 33.986069, 33.970325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.336809, 33.967728, 33.791573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127957, -0.927599, 0.350980,
		-0.430622, -0.370753, -0.822865,
		0.893416, -0.045848, -0.446885,
		26.604834, 33.953972, 33.657505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.010622, 33.391850, 33.453476>,  <25.979443, 33.986069, 33.970325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.010622, 33.391850, 33.453476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366890, 33.492867, 33.604698>,  <26.580650, 33.553478, 33.695431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366890, 33.492867, 33.604698>,  <26.010622, 33.391850, 33.453476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.366890, 33.492867, 33.604698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132915, -0.939847, 0.314678,
		0.434786, -0.230025, -0.870661,
		0.890671, 0.252541, 0.378058,
		26.634090, 33.568630, 33.718117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.491182, 33.074207, 33.006466>,  <26.010622, 33.391850, 33.453476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.491182, 33.074207, 33.006466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.660582, 33.132320, 33.364136>,  <26.762220, 33.167191, 33.578735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.660582, 33.132320, 33.364136>,  <26.491182, 33.074207, 33.006466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.660582, 33.132320, 33.364136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184601, -0.980185, 0.071832,
		0.886890, 0.134644, -0.441924,
		0.423496, 0.145287, 0.894172,
		26.787630, 33.175907, 33.632389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108343, 32.682999, 33.077377>,  <26.491182, 33.074207, 33.006466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108343, 32.682999, 33.077377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.026091, 32.751110, 33.462860>,  <26.976740, 32.791977, 33.694149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.026091, 32.751110, 33.462860>,  <27.108343, 32.682999, 33.077377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.026091, 32.751110, 33.462860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181675, -0.960987, 0.208560,
		0.961618, 0.217967, 0.166675,
		-0.205632, 0.170275, 0.963702,
		26.964401, 32.802193, 33.751972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585737, 32.282452, 33.333546>,  <27.108343, 32.682999, 33.077377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585737, 32.282452, 33.333546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.312635, 32.343563, 33.619343>,  <27.148773, 32.380230, 33.790821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.312635, 32.343563, 33.619343>,  <27.585737, 32.282452, 33.333546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.312635, 32.343563, 33.619343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232614, -0.881561, 0.410781,
		0.692629, 0.446665, 0.566353,
		-0.682756, 0.152777, 0.714495,
		27.107809, 32.389397, 33.833691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895048, 32.025650, 33.894764>,  <27.585737, 32.282452, 33.333546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.895048, 32.025650, 33.894764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.510630, 32.009605, 34.004150>,  <27.279978, 31.999979, 34.069782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.510630, 32.009605, 34.004150>,  <27.895048, 32.025650, 33.894764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.510630, 32.009605, 34.004150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142936, -0.918957, 0.367543,
		0.236558, 0.392314, 0.888893,
		-0.961046, -0.040109, 0.273462,
		27.222317, 31.997572, 34.086189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898363, 31.854279, 34.627132>,  <27.895048, 32.025650, 33.894764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898363, 31.854279, 34.627132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563875, 31.748770, 34.434814>,  <27.363182, 31.685465, 34.319424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.563875, 31.748770, 34.434814>,  <27.898363, 31.854279, 34.627132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.563875, 31.748770, 34.434814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057739, -0.914201, 0.401126,
		-0.545345, 0.307669, 0.779704,
		-0.836220, -0.263771, -0.480791,
		27.313009, 31.669638, 34.290577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445995, 31.447727, 35.224762>,  <27.898363, 31.854279, 34.627132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445995, 31.447727, 35.224762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291811, 31.361536, 34.865879>,  <27.199299, 31.309822, 34.650547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291811, 31.361536, 34.865879>,  <27.445995, 31.447727, 35.224762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291811, 31.361536, 34.865879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163186, -0.941105, 0.296129,
		-0.908179, 0.260559, 0.327598,
		-0.385463, -0.215478, -0.897211,
		27.176172, 31.296892, 34.596714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841986, 31.031538, 35.338562>,  <27.445995, 31.447727, 35.224762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.841986, 31.031538, 35.338562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.916395, 30.967737, 34.950756>,  <26.961040, 30.929457, 34.718075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.916395, 30.967737, 34.950756>,  <26.841986, 31.031538, 35.338562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.916395, 30.967737, 34.950756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008116, -0.986951, 0.160815,
		-0.982512, -0.022047, -0.184891,
		0.186024, -0.159504, -0.969512,
		26.972202, 30.919886, 34.659901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.434740, 30.451532, 35.237907>,  <26.841986, 31.031538, 35.338562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.434740, 30.451532, 35.237907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.680487, 30.456789, 34.922344>,  <26.827934, 30.459942, 34.733006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.680487, 30.456789, 34.922344>,  <26.434740, 30.451532, 35.237907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.680487, 30.456789, 34.922344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056859, -0.997999, 0.027657,
		-0.786969, -0.061849, -0.613884,
		0.614367, 0.013140, -0.788911,
		26.864796, 30.460732, 34.685669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.244631, 29.926365, 34.786919>,  <26.434740, 30.451532, 35.237907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.244631, 29.926365, 34.786919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617451, 29.947172, 34.643486>,  <26.841143, 29.959656, 34.557426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617451, 29.947172, 34.643486>,  <26.244631, 29.926365, 34.786919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.617451, 29.947172, 34.643486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046837, -0.998635, -0.023126,
		-0.359296, 0.004760, -0.933212,
		0.932048, 0.052018, -0.358583,
		26.897064, 29.962778, 34.535912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.357027, 29.438444, 34.200413>,  <26.244631, 29.926365, 34.786919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.357027, 29.438444, 34.200413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710234, 29.511448, 34.373371>,  <26.922157, 29.555250, 34.477146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710234, 29.511448, 34.373371>,  <26.357027, 29.438444, 34.200413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710234, 29.511448, 34.373371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092562, -0.970920, 0.220786,
		0.460120, -0.154935, -0.874234,
		0.883019, 0.182509, 0.432399,
		26.975140, 29.566200, 34.503090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.602802, 28.833773, 34.047348>,  <26.357027, 29.438444, 34.200413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.602802, 28.833773, 34.047348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872335, 28.966621, 34.311363>,  <27.034054, 29.046331, 34.469772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.872335, 28.966621, 34.311363>,  <26.602802, 28.833773, 34.047348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.872335, 28.966621, 34.311363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333235, -0.933877, 0.129719,
		0.659475, 0.132538, -0.739951,
		0.673831, 0.332124, 0.660035,
		27.074484, 29.066259, 34.509373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.194365, 28.525030, 33.767532>,  <26.602802, 28.833773, 34.047348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.194365, 28.525030, 33.767532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271887, 28.646255, 34.140755>,  <27.318401, 28.718990, 34.364689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.271887, 28.646255, 34.140755>,  <27.194365, 28.525030, 33.767532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271887, 28.646255, 34.140755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334978, -0.914369, 0.227418,
		0.922078, 0.268478, -0.278732,
		0.193807, 0.303066, 0.933054,
		27.330029, 28.737175, 34.420670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847065, 28.506929, 33.867794>,  <27.194365, 28.525030, 33.767532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.847065, 28.506929, 33.867794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708204, 28.479485, 34.241913>,  <27.624887, 28.463017, 34.466385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708204, 28.479485, 34.241913>,  <27.847065, 28.506929, 33.867794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708204, 28.479485, 34.241913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555980, -0.818213, 0.146337,
		0.755230, 0.570807, 0.322191,
		-0.347151, -0.068613, 0.935296,
		27.604059, 28.458900, 34.522503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368336, 28.259596, 34.170002>,  <27.847065, 28.506929, 33.867794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368336, 28.259596, 34.170002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088640, 28.218006, 34.452919>,  <27.920824, 28.193052, 34.622669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088640, 28.218006, 34.452919>,  <28.368336, 28.259596, 34.170002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.088640, 28.218006, 34.452919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340016, -0.918667, 0.201097,
		0.628854, 0.381104, 0.677718,
		-0.699236, -0.103975, 0.707289,
		27.878870, 28.186813, 34.665104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.761976, 28.091825, 34.686417>,  <28.368336, 28.259596, 34.170002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.761976, 28.091825, 34.686417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400223, 27.958284, 34.792725>,  <28.183170, 27.878160, 34.856510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400223, 27.958284, 34.792725>,  <28.761976, 28.091825, 34.686417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400223, 27.958284, 34.792725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404162, -0.869980, 0.282469,
		0.136912, 0.362874, 0.921725,
		-0.904383, -0.333853, 0.265771,
		28.128908, 27.858128, 34.872456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.867144, 27.630632, 35.214935>,  <28.761976, 28.091825, 34.686417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.867144, 27.630632, 35.214935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506088, 27.489029, 35.117016>,  <28.289455, 27.404068, 35.058266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506088, 27.489029, 35.117016>,  <28.867144, 27.630632, 35.214935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506088, 27.489029, 35.117016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361821, -0.932145, 0.013864,
		-0.233095, -0.076059, 0.969475,
		-0.902637, -0.354008, -0.244798,
		28.235298, 27.382826, 35.043575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809063, 27.057158, 35.600792>,  <28.867144, 27.630632, 35.214935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809063, 27.057158, 35.600792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.536327, 26.992748, 35.315369>,  <28.372686, 26.954103, 35.144115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.536327, 26.992748, 35.315369>,  <28.809063, 27.057158, 35.600792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536327, 26.992748, 35.315369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357955, -0.924146, -0.133500,
		-0.637938, -0.346449, 0.687756,
		-0.681838, -0.161021, -0.713561,
		28.331776, 26.944443, 35.101299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572920, 26.428749, 35.797405>,  <28.809063, 27.057158, 35.600792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572920, 26.428749, 35.797405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507586, 26.483791, 35.406635>,  <28.468384, 26.516817, 35.172173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507586, 26.483791, 35.406635>,  <28.572920, 26.428749, 35.797405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507586, 26.483791, 35.406635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227525, -0.958278, -0.173018,
		-0.959975, -0.250536, 0.125216,
		-0.163339, 0.137603, -0.976927,
		28.458584, 26.525072, 35.113556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141979, 25.908823, 35.580833>,  <28.572920, 26.428749, 35.797405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141979, 25.908823, 35.580833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355335, 26.017193, 35.260311>,  <28.483349, 26.082214, 35.067997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.355335, 26.017193, 35.260311>,  <28.141979, 25.908823, 35.580833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355335, 26.017193, 35.260311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303602, -0.945515, -0.117590,
		-0.789505, -0.180557, -0.586584,
		0.533392, 0.270926, -0.801307,
		28.515352, 26.098471, 35.019920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021496, 25.477121, 34.934238>,  <28.141979, 25.908823, 35.580833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021496, 25.477121, 34.934238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389465, 25.633915, 34.937946>,  <28.610247, 25.727991, 34.940170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.389465, 25.633915, 34.937946>,  <28.021496, 25.477121, 34.934238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.389465, 25.633915, 34.937946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388767, -0.908787, -0.151546,
		-0.050984, 0.143013, -0.988407,
		0.919924, 0.391986, 0.009265,
		28.665443, 25.751511, 34.940727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495501, 25.284945, 34.398071>,  <28.021496, 25.477121, 34.934238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495501, 25.284945, 34.398071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711269, 25.350376, 34.728470>,  <28.840731, 25.389635, 34.926708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.711269, 25.350376, 34.728470>,  <28.495501, 25.284945, 34.398071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711269, 25.350376, 34.728470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641919, -0.714731, -0.277669,
		0.544942, 0.680002, -0.490545,
		0.539424, 0.163577, 0.825993,
		28.873096, 25.399448, 34.976269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203497, 25.358923, 34.085342>,  <28.495501, 25.284945, 34.398071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203497, 25.358923, 34.085342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176151, 25.226801, 34.461899>,  <29.159744, 25.147528, 34.687832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176151, 25.226801, 34.461899>,  <29.203497, 25.358923, 34.085342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176151, 25.226801, 34.461899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379544, -0.881261, -0.281646,
		0.922644, 0.338047, 0.185612,
		-0.068363, -0.330307, 0.941394,
		29.155642, 25.127708, 34.744316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068848, 25.234724, 33.315407>,  <29.203497, 25.358923, 34.085342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068848, 25.234724, 33.315407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148989, 25.310364, 32.930885>,  <29.197073, 25.355747, 32.700172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.148989, 25.310364, 32.930885>,  <29.068848, 25.234724, 33.315407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.148989, 25.310364, 32.930885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558794, -0.783895, -0.270663,
		-0.804741, 0.591397, -0.051388,
		0.200352, 0.189098, -0.961302,
		29.209095, 25.367094, 32.642494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656794, 24.761974, 33.225449>,  <29.068848, 25.234724, 33.315407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656794, 24.761974, 33.225449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779255, 24.592258, 32.884567>,  <29.852732, 24.490429, 32.680038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.779255, 24.592258, 32.884567>,  <29.656794, 24.761974, 33.225449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779255, 24.592258, 32.884567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948268, -0.214911, -0.233668,
		-0.084004, 0.879654, -0.468136,
		0.306155, -0.424290, -0.852201,
		29.871101, 24.464972, 32.628906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.854460, 24.744017, 33.871128>,  <29.656794, 24.761974, 33.225449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.854460, 24.744017, 33.871128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810045, 25.092632, 34.062160>,  <29.783396, 25.301802, 34.176781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810045, 25.092632, 34.062160>,  <29.854460, 24.744017, 33.871128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810045, 25.092632, 34.062160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933230, 0.256663, -0.251408,
		-0.341690, 0.417781, -0.841847,
		-0.111038, 0.871541, 0.477585,
		29.776733, 25.354095, 34.205437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134132, 25.315722, 33.483887>,  <29.854460, 24.744017, 33.871128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134132, 25.315722, 33.483887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164608, 25.410975, 33.871181>,  <30.182894, 25.468126, 34.103558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164608, 25.410975, 33.871181>,  <30.134132, 25.315722, 33.483887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164608, 25.410975, 33.871181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915169, 0.368770, -0.162709,
		-0.395805, 0.898500, -0.189835,
		0.076189, 0.238132, 0.968240,
		30.187464, 25.482414, 34.161652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355690, 26.057291, 33.617855>,  <30.134132, 25.315722, 33.483887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355690, 26.057291, 33.617855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462280, 25.795319, 33.900715>,  <30.526236, 25.638136, 34.070431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462280, 25.795319, 33.900715>,  <30.355690, 26.057291, 33.617855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462280, 25.795319, 33.900715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930966, 0.364878, -0.012885,
		-0.249584, 0.661765, 0.706948,
		0.266477, -0.654929, 0.707148,
		30.542223, 25.598841, 34.112858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.489275, 26.315434, 34.356316>,  <30.355690, 26.057291, 33.617855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.489275, 26.315434, 34.356316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721016, 26.001347, 34.268879>,  <30.860062, 25.812895, 34.216419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721016, 26.001347, 34.268879>,  <30.489275, 26.315434, 34.356316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721016, 26.001347, 34.268879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785995, 0.609214, -0.105210,
		0.215781, -0.110856, 0.970129,
		0.579353, -0.785219, -0.218589,
		30.894821, 25.765781, 34.203300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047974, 26.422972, 34.853661>,  <30.489275, 26.315434, 34.356316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047974, 26.422972, 34.853661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130135, 26.240402, 34.507370>,  <31.179432, 26.130861, 34.299595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130135, 26.240402, 34.507370>,  <31.047974, 26.422972, 34.853661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130135, 26.240402, 34.507370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475077, 0.819879, -0.319532,
		0.855635, -0.345655, 0.385242,
		0.205404, -0.456422, -0.865730,
		31.191755, 26.103476, 34.247650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777348, 26.429256, 34.761627>,  <31.047974, 26.422972, 34.853661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777348, 26.429256, 34.761627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596985, 26.382860, 34.407627>,  <31.488768, 26.355022, 34.195225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596985, 26.382860, 34.407627>,  <31.777348, 26.429256, 34.761627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596985, 26.382860, 34.407627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492877, 0.794287, -0.355219,
		0.744148, -0.596368, -0.300979,
		-0.450905, -0.115989, -0.885004,
		31.461714, 26.348063, 34.142124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358589, 26.616671, 34.270065>,  <31.777348, 26.429256, 34.761627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358589, 26.616671, 34.270065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984228, 26.636520, 34.130566>,  <31.759611, 26.648430, 34.046864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984228, 26.636520, 34.130566>,  <32.358589, 26.616671, 34.270065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984228, 26.636520, 34.130566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161200, 0.940618, -0.298752,
		0.313218, -0.335821, -0.888324,
		-0.935900, 0.049623, -0.348752,
		31.703459, 26.651407, 34.025940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394352, 26.865240, 33.564999>,  <32.358589, 26.616671, 34.270065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394352, 26.865240, 33.564999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023277, 26.968977, 33.672432>,  <31.800632, 27.031219, 33.736893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023277, 26.968977, 33.672432>,  <32.394352, 26.865240, 33.564999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023277, 26.968977, 33.672432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102221, 0.868315, -0.485366,
		-0.359090, -0.422814, -0.832035,
		-0.927688, 0.259342, 0.268582,
		31.744970, 27.046780, 33.753006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195004, 27.397923, 33.136837>,  <32.394352, 26.865240, 33.564999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195004, 27.397923, 33.136837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916323, 27.419954, 33.422935>,  <31.749115, 27.433174, 33.594593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916323, 27.419954, 33.422935>,  <32.195004, 27.397923, 33.136837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916323, 27.419954, 33.422935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096449, 0.980803, -0.169478,
		-0.710852, -0.187060, -0.678010,
		-0.696697, 0.055081, 0.715247,
		31.707314, 27.436478, 33.637508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623095, 27.725403, 32.946621>,  <32.195004, 27.397923, 33.136837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623095, 27.725403, 32.946621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548780, 27.770821, 33.337025>,  <31.504192, 27.798071, 33.571266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548780, 27.770821, 33.337025>,  <31.623095, 27.725403, 32.946621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548780, 27.770821, 33.337025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239017, 0.958243, -0.156975,
		-0.953077, -0.262446, -0.150888,
		-0.185785, 0.113544, 0.976008,
		31.493046, 27.804884, 33.629826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992670, 28.117435, 32.920689>,  <31.623095, 27.725403, 32.946621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992670, 28.117435, 32.920689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143875, 28.149548, 33.289616>,  <31.234598, 28.168814, 33.510971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143875, 28.149548, 33.289616>,  <30.992670, 28.117435, 32.920689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143875, 28.149548, 33.289616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257005, 0.966177, 0.021238,
		-0.889412, -0.245067, 0.385860,
		0.378014, 0.080279, 0.922313,
		31.257278, 28.173632, 33.566311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481087, 28.459425, 33.307667>,  <30.992670, 28.117435, 32.920689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.481087, 28.459425, 33.307667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816071, 28.506958, 33.521034>,  <31.017061, 28.535479, 33.649055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.816071, 28.506958, 33.521034>,  <30.481087, 28.459425, 33.307667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816071, 28.506958, 33.521034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216060, 0.968545, 0.123441,
		-0.501974, -0.218628, 0.836794,
		0.837461, 0.118834, 0.533421,
		31.067308, 28.542608, 33.681061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294319, 28.831354, 33.913265>,  <30.481087, 28.459425, 33.307667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294319, 28.831354, 33.913265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686834, 28.900942, 33.880257>,  <30.922344, 28.942694, 33.860451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.686834, 28.900942, 33.880257>,  <30.294319, 28.831354, 33.913265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686834, 28.900942, 33.880257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147311, 0.954287, 0.260071,
		0.123990, -0.243048, 0.962057,
		0.981288, 0.173967, -0.082518,
		30.981220, 28.953133, 33.855499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451118, 29.061811, 34.580273>,  <30.294319, 28.831354, 33.913265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451118, 29.061811, 34.580273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743280, 29.181383, 34.334621>,  <30.918577, 29.253126, 34.187233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.743280, 29.181383, 34.334621>,  <30.451118, 29.061811, 34.580273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743280, 29.181383, 34.334621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109909, 0.938863, 0.326278,
		0.674113, -0.170817, 0.718605,
		0.730405, 0.298930, -0.614125,
		30.962402, 29.271063, 34.150383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994040, 29.456818, 34.899757>,  <30.451118, 29.061811, 34.580273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994040, 29.456818, 34.899757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982347, 29.592512, 34.523659>,  <30.975332, 29.673929, 34.298000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982347, 29.592512, 34.523659>,  <30.994040, 29.456818, 34.899757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982347, 29.592512, 34.523659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100596, 0.934875, 0.340424,
		0.994498, 0.104536, 0.006799,
		-0.029230, 0.339235, -0.940247,
		30.973579, 29.694283, 34.241585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367817, 30.115637, 34.956413>,  <30.994040, 29.456818, 34.899757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367817, 30.115637, 34.956413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202847, 30.129242, 34.592270>,  <31.103865, 30.137405, 34.373783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202847, 30.129242, 34.592270>,  <31.367817, 30.115637, 34.956413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202847, 30.129242, 34.592270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018056, 0.999412, 0.029160,
		0.910813, -0.004411, -0.412797,
		-0.412425, 0.034013, -0.910356,
		31.079119, 30.139446, 34.319164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.693268, 30.672451, 34.596210>,  <31.367817, 30.115637, 34.956413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.693268, 30.672451, 34.596210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368395, 30.612444, 34.370697>,  <31.173471, 30.576441, 34.235390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368395, 30.612444, 34.370697>,  <31.693268, 30.672451, 34.596210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368395, 30.612444, 34.370697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157379, 0.986886, -0.035877,
		0.561772, 0.059589, -0.825143,
		-0.812185, -0.150016, -0.563783,
		31.124739, 30.567440, 34.201561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711382, 31.222792, 34.131287>,  <31.693268, 30.672451, 34.596210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711382, 31.222792, 34.131287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332771, 31.094137, 34.141388>,  <31.105604, 31.016945, 34.147449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332771, 31.094137, 34.141388>,  <31.711382, 31.222792, 34.131287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332771, 31.094137, 34.141388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322419, 0.940211, -0.109767,
		0.011565, -0.112039, -0.993636,
		-0.946526, -0.321637, 0.025250,
		31.048813, 30.997646, 34.148964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311197, 31.859295, 33.934647>,  <31.711382, 31.222792, 34.131287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311197, 31.859295, 33.934647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008720, 31.624390, 34.050087>,  <30.827234, 31.483446, 34.119350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008720, 31.624390, 34.050087>,  <31.311197, 31.859295, 33.934647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008720, 31.624390, 34.050087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509911, 0.805270, 0.302542,
		-0.410076, 0.081618, -0.908392,
		-0.756193, -0.587264, 0.288604,
		30.781862, 31.448210, 34.136669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675898, 32.098522, 33.605988>,  <31.311197, 31.859295, 33.934647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675898, 32.098522, 33.605988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591759, 31.919159, 33.953476>,  <30.541275, 31.811541, 34.161968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.591759, 31.919159, 33.953476>,  <30.675898, 32.098522, 33.605988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591759, 31.919159, 33.953476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626467, 0.744012, 0.232347,
		-0.750528, -0.495355, -0.437414,
		-0.210347, -0.448408, 0.868726,
		30.528654, 31.784636, 34.214092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944418, 32.041451, 33.677666>,  <30.675898, 32.098522, 33.605988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944418, 32.041451, 33.677666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040752, 31.964334, 34.058155>,  <30.098553, 31.918064, 34.286449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040752, 31.964334, 34.058155>,  <29.944418, 32.041451, 33.677666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040752, 31.964334, 34.058155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844656, 0.441125, 0.303257,
		-0.478075, -0.876493, -0.056604,
		0.240834, -0.192791, 0.951226,
		30.113003, 31.906498, 34.343521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359423, 31.783804, 34.026829>,  <29.944418, 32.041451, 33.677666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359423, 31.783804, 34.026829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581549, 31.928988, 34.326130>,  <29.714825, 32.016098, 34.505711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.581549, 31.928988, 34.326130>,  <29.359423, 31.783804, 34.026829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581549, 31.928988, 34.326130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750855, 0.605645, 0.263460,
		-0.357553, -0.708135, 0.608852,
		0.555313, 0.362958, 0.748257,
		29.748142, 32.037876, 34.550606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929111, 31.998363, 34.585537>,  <29.359423, 31.783804, 34.026829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929111, 31.998363, 34.585537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260948, 32.202442, 34.676285>,  <29.460051, 32.324890, 34.730736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260948, 32.202442, 34.676285>,  <28.929111, 31.998363, 34.585537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260948, 32.202442, 34.676285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548817, 0.670235, 0.499586,
		0.102830, -0.538964, 0.836028,
		0.829594, 0.510199, 0.226872,
		29.509827, 32.355503, 34.744347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894325, 32.036125, 35.253067>,  <28.929111, 31.998363, 34.585537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894325, 32.036125, 35.253067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149260, 32.323238, 35.140926>,  <29.302219, 32.495506, 35.073643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.149260, 32.323238, 35.140926>,  <28.894325, 32.036125, 35.253067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149260, 32.323238, 35.140926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572495, 0.684576, 0.451225,
		0.515804, -0.127080, 0.847229,
		0.637334, 0.717778, -0.280355,
		29.340460, 32.538570, 35.056820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959059, 32.451569, 35.817474>,  <28.894325, 32.036125, 35.253067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959059, 32.451569, 35.817474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065039, 32.686520, 35.511589>,  <29.128628, 32.827492, 35.328060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065039, 32.686520, 35.511589>,  <28.959059, 32.451569, 35.817474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065039, 32.686520, 35.511589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698280, 0.663792, 0.267929,
		0.664993, 0.463011, 0.586008,
		0.264933, 0.587368, -0.764728,
		29.144524, 32.862736, 35.282177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870708, 33.097637, 36.096519>,  <28.959059, 32.451569, 35.817474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870708, 33.097637, 36.096519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.933405, 33.178967, 35.709927>,  <28.971024, 33.227764, 35.477970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.933405, 33.178967, 35.709927>,  <28.870708, 33.097637, 36.096519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.933405, 33.178967, 35.709927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457508, 0.882201, 0.111392,
		0.875282, 0.424715, 0.231299,
		0.156742, 0.203320, -0.966485,
		28.980427, 33.239964, 35.419983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112724, 33.744362, 36.098480>,  <28.870708, 33.097637, 36.096519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112724, 33.744362, 36.098480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948736, 33.651409, 35.745682>,  <28.850344, 33.595638, 35.534000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948736, 33.651409, 35.745682>,  <29.112724, 33.744362, 36.098480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948736, 33.651409, 35.745682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442584, 0.896212, -0.030403,
		0.797524, 0.377895, -0.470267,
		-0.409969, -0.232379, -0.882001,
		28.825745, 33.581696, 35.481083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674719, 33.223083, 36.356514>,  <29.112724, 33.744362, 36.098480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674719, 33.223083, 36.356514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.870201, 33.276356, 36.011623>,  <29.987490, 33.308319, 35.804691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.870201, 33.276356, 36.011623>,  <29.674719, 33.223083, 36.356514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870201, 33.276356, 36.011623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222253, 0.936670, 0.270654,
		0.843665, -0.323902, 0.428155,
		0.488705, 0.133183, -0.862224,
		30.016813, 33.316311, 35.752956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451469, 33.178177, 36.401825>,  <29.674719, 33.223083, 36.356514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451469, 33.178177, 36.401825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309095, 33.440617, 36.135635>,  <30.223671, 33.598080, 35.975922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309095, 33.440617, 36.135635>,  <30.451469, 33.178177, 36.401825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309095, 33.440617, 36.135635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222507, 0.751124, 0.621533,
		0.907635, 0.073153, -0.413336,
		-0.355934, 0.656096, -0.665469,
		30.202314, 33.637444, 35.935993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013626, 33.682053, 36.336880>,  <30.451469, 33.178177, 36.401825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013626, 33.682053, 36.336880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641596, 33.804924, 36.256283>,  <30.418377, 33.878647, 36.207924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.641596, 33.804924, 36.256283>,  <31.013626, 33.682053, 36.336880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641596, 33.804924, 36.256283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032698, 0.615517, 0.787445,
		0.365908, 0.725796, -0.582523,
		-0.930077, 0.307179, -0.201491,
		30.362574, 33.897079, 36.195835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075603, 34.354355, 36.503151>,  <31.013626, 33.682053, 36.336880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075603, 34.354355, 36.503151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679541, 34.299198, 36.493523>,  <30.441904, 34.266106, 36.487747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679541, 34.299198, 36.493523>,  <31.075603, 34.354355, 36.503151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679541, 34.299198, 36.493523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111547, 0.673466, 0.730753,
		-0.084554, 0.726244, -0.682217,
		-0.990155, -0.137888, -0.024067,
		30.382494, 34.257832, 36.486301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808559, 35.016563, 36.936996>,  <31.075603, 34.354355, 36.503151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808559, 35.016563, 36.936996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496305, 34.774658, 37.000084>,  <30.308952, 34.629517, 37.037937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496305, 34.774658, 37.000084>,  <30.808559, 35.016563, 36.936996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496305, 34.774658, 37.000084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036537, 0.296076, 0.954465,
		-0.623918, 0.739327, -0.253223,
		-0.780635, -0.604760, 0.157715,
		30.262115, 34.593231, 37.047398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150806, 35.434086, 37.123508>,  <30.808559, 35.016563, 36.936996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150806, 35.434086, 37.123508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193012, 35.071220, 37.286442>,  <30.218336, 34.853500, 37.384201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193012, 35.071220, 37.286442>,  <30.150806, 35.434086, 37.123508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193012, 35.071220, 37.286442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085747, 0.399796, 0.912585,
		-0.990714, -0.131217, -0.035603,
		0.105513, -0.907163, 0.407335,
		30.224667, 34.799072, 37.408642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.496521, 35.359329, 37.567375>,  <30.150806, 35.434086, 37.123508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.496521, 35.359329, 37.567375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799570, 35.123093, 37.678524>,  <29.981400, 34.981350, 37.745213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799570, 35.123093, 37.678524>,  <29.496521, 35.359329, 37.567375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799570, 35.123093, 37.678524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041355, 0.381436, 0.923470,
		-0.651384, -0.711131, 0.264560,
		0.757620, -0.590593, 0.277871,
		30.026855, 34.945915, 37.761887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352701, 35.294029, 38.213696>,  <29.496521, 35.359329, 37.567375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352701, 35.294029, 38.213696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729631, 35.160480, 38.223087>,  <29.955790, 35.080353, 38.228722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.729631, 35.160480, 38.223087>,  <29.352701, 35.294029, 38.213696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.729631, 35.160480, 38.223087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081280, 0.296321, 0.951624,
		-0.324676, -0.894832, 0.306368,
		0.942327, -0.333871, 0.023476,
		30.012329, 35.060318, 38.230129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361965, 35.076099, 38.845440>,  <29.352701, 35.294029, 38.213696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361965, 35.076099, 38.845440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732115, 35.146420, 38.711109>,  <29.954205, 35.188614, 38.630512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732115, 35.146420, 38.711109>,  <29.361965, 35.076099, 38.845440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732115, 35.146420, 38.711109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246846, 0.392857, 0.885850,
		0.287665, -0.902639, 0.320143,
		0.925374, 0.175802, -0.335823,
		30.009727, 35.199162, 38.610363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837122, 34.596886, 39.319172>,  <29.361965, 35.076099, 38.845440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837122, 34.596886, 39.319172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.053278, 34.889206, 39.152363>,  <30.182972, 35.064598, 39.052277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.053278, 34.889206, 39.152363>,  <29.837122, 34.596886, 39.319172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.053278, 34.889206, 39.152363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238707, 0.342106, 0.908836,
		0.806843, -0.590674, 0.010425,
		0.540392, 0.730799, -0.417024,
		30.215395, 35.108444, 39.027256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.425705, 34.619415, 39.725113>,  <29.837122, 34.596886, 39.319172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.425705, 34.619415, 39.725113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376959, 34.965485, 39.530540>,  <30.347712, 35.173126, 39.413795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376959, 34.965485, 39.530540>,  <30.425705, 34.619415, 39.725113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376959, 34.965485, 39.530540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369760, 0.494384, 0.786678,
		0.921101, -0.083995, -0.380156,
		-0.121866, 0.865176, -0.486435,
		30.340399, 35.225037, 39.384609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025133, 34.899902, 39.799435>,  <30.425705, 34.619415, 39.725113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025133, 34.899902, 39.799435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765491, 35.190994, 39.710831>,  <30.609707, 35.365650, 39.657669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.765491, 35.190994, 39.710831>,  <31.025133, 34.899902, 39.799435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765491, 35.190994, 39.710831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235043, 0.468820, 0.851448,
		0.723475, 0.500615, -0.475362,
		-0.649106, 0.727732, -0.221513,
		30.570759, 35.409313, 39.644375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434589, 35.374058, 39.993828>,  <31.025133, 34.899902, 39.799435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434589, 35.374058, 39.993828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067698, 35.533401, 39.993839>,  <30.847563, 35.629009, 39.993847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067698, 35.533401, 39.993839>,  <31.434589, 35.374058, 39.993828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067698, 35.533401, 39.993839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223374, 0.514268, 0.828029,
		0.329843, 0.759498, -0.560685,
		-0.917228, 0.398362, 0.000025,
		30.792528, 35.652908, 39.993847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501848, 36.114555, 40.075153>,  <31.434589, 35.374058, 39.993828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501848, 36.114555, 40.075153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115509, 36.060146, 40.163368>,  <30.883705, 36.027500, 40.216297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115509, 36.060146, 40.163368>,  <31.501848, 36.114555, 40.075153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115509, 36.060146, 40.163368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136196, 0.457570, 0.878681,
		-0.220430, 0.878708, -0.423417,
		-0.965847, -0.136020, 0.220539,
		30.825754, 36.019341, 40.229530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335445, 36.653530, 40.471642>,  <31.501848, 36.114555, 40.075153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335445, 36.653530, 40.471642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036879, 36.407116, 40.572330>,  <30.857738, 36.259266, 40.632744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036879, 36.407116, 40.572330>,  <31.335445, 36.653530, 40.471642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036879, 36.407116, 40.572330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079090, 0.293453, 0.952696,
		-0.660764, 0.731016, -0.170316,
		-0.746416, -0.616037, 0.251719,
		30.812954, 36.222305, 40.647846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851562, 37.076332, 41.022793>,  <31.335445, 36.653530, 40.471642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851562, 37.076332, 41.022793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730810, 36.695454, 41.041496>,  <30.658360, 36.466927, 41.052719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730810, 36.695454, 41.041496>,  <30.851562, 37.076332, 41.022793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730810, 36.695454, 41.041496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182153, 0.105748, 0.977567,
		-0.935783, 0.286590, -0.205369,
		-0.301879, -0.952199, 0.046754,
		30.640247, 36.409794, 41.055523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113041, 36.963940, 41.275265>,  <30.851562, 37.076332, 41.022793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113041, 36.963940, 41.275265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346928, 36.651550, 41.363068>,  <30.487259, 36.464115, 41.415749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346928, 36.651550, 41.363068>,  <30.113041, 36.963940, 41.275265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346928, 36.651550, 41.363068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197777, 0.125190, 0.972220,
		-0.786760, -0.611888, -0.081258,
		0.584717, -0.780975, 0.219512,
		30.522343, 36.417259, 41.428921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746046, 36.632153, 41.905659>,  <30.113041, 36.963940, 41.275265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746046, 36.632153, 41.905659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113569, 36.474613, 41.895229>,  <30.334084, 36.380089, 41.888969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113569, 36.474613, 41.895229>,  <29.746046, 36.632153, 41.905659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113569, 36.474613, 41.895229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005553, -0.053165, 0.998570,
		-0.394670, -0.917637, -0.046661,
		0.918806, -0.393847, -0.026078,
		30.389212, 36.356461, 41.887405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717661, 36.136398, 42.338242>,  <29.746046, 36.632153, 41.905659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717661, 36.136398, 42.338242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116650, 36.163918, 42.331093>,  <30.356043, 36.180428, 42.326801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116650, 36.163918, 42.331093>,  <29.717661, 36.136398, 42.338242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116650, 36.163918, 42.331093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031493, -0.202259, 0.978826,
		0.063728, -0.976912, -0.203914,
		0.997470, 0.068800, -0.017876,
		30.415892, 36.184559, 42.325729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945906, 35.577034, 42.759151>,  <29.717661, 36.136398, 42.338242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945906, 35.577034, 42.759151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.264141, 35.819313, 42.764370>,  <30.455082, 35.964680, 42.767502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.264141, 35.819313, 42.764370>,  <29.945906, 35.577034, 42.759151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264141, 35.819313, 42.764370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177196, -0.253240, 0.951037,
		0.579346, -0.754321, -0.308802,
		0.795588, 0.605698, 0.013050,
		30.502817, 36.001022, 42.768284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.496016, 35.164879, 42.995296>,  <29.945906, 35.577034, 42.759151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.496016, 35.164879, 42.995296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588034, 35.546959, 43.069786>,  <30.643244, 35.776207, 43.114479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588034, 35.546959, 43.069786>,  <30.496016, 35.164879, 42.995296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588034, 35.546959, 43.069786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115418, -0.216781, 0.969373,
		0.966312, -0.201504, -0.160116,
		0.230043, 0.955197, 0.186220,
		30.657047, 35.833519, 43.125652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952553, 35.166752, 43.653057>,  <30.496016, 35.164879, 42.995296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952553, 35.166752, 43.653057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849134, 35.550972, 43.612080>,  <30.787085, 35.781506, 43.587494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849134, 35.550972, 43.612080>,  <30.952553, 35.166752, 43.653057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849134, 35.550972, 43.612080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110211, 0.134692, 0.984739,
		0.959692, 0.243309, -0.140688,
		-0.258545, 0.960551, -0.102448,
		30.771570, 35.839138, 43.581345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460522, 35.549385, 44.080620>,  <30.952553, 35.166752, 43.653057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460522, 35.549385, 44.080620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142279, 35.783962, 44.019833>,  <30.951334, 35.924709, 43.983360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142279, 35.783962, 44.019833>,  <31.460522, 35.549385, 44.080620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142279, 35.783962, 44.019833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097331, 0.371331, 0.923385,
		0.597945, 0.719859, -0.352512,
		-0.795606, 0.586444, -0.151971,
		30.903597, 35.959896, 43.974243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584288, 36.111179, 44.550282>,  <31.460522, 35.549385, 44.080620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584288, 36.111179, 44.550282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190910, 36.135902, 44.482140>,  <30.954884, 36.150738, 44.441254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190910, 36.135902, 44.482140>,  <31.584288, 36.111179, 44.550282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190910, 36.135902, 44.482140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149985, 0.250013, 0.956555,
		0.101716, 0.966267, -0.236603,
		-0.983442, 0.061810, -0.170356,
		30.895878, 36.154446, 44.431034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329624, 36.831963, 44.831280>,  <31.584288, 36.111179, 44.550282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329624, 36.831963, 44.831280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018929, 36.582466, 44.796341>,  <30.832512, 36.432770, 44.775379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018929, 36.582466, 44.796341>,  <31.329624, 36.831963, 44.831280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018929, 36.582466, 44.796341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399281, 0.380410, 0.834184,
		-0.487087, 0.682816, -0.544526,
		-0.776737, -0.623739, -0.087342,
		30.785908, 36.395344, 44.770138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798531, 37.196163, 45.063717>,  <31.329624, 36.831963, 44.831280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798531, 37.196163, 45.063717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691814, 36.811558, 45.090012>,  <30.627785, 36.580795, 45.105789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691814, 36.811558, 45.090012>,  <30.798531, 37.196163, 45.063717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691814, 36.811558, 45.090012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419222, 0.177195, 0.890424,
		-0.867799, 0.210000, -0.450360,
		-0.266791, -0.961510, 0.065733,
		30.611776, 36.523106, 45.109730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132883, 37.195305, 45.417377>,  <30.798531, 37.196163, 45.063717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132883, 37.195305, 45.417377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289337, 36.830513, 45.466862>,  <30.383209, 36.611637, 45.496552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289337, 36.830513, 45.466862>,  <30.132883, 37.195305, 45.417377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289337, 36.830513, 45.466862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189208, 0.051868, 0.980566,
		-0.900673, -0.406942, -0.152267,
		0.391136, -0.911980, 0.123713,
		30.406677, 36.556919, 45.503975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622942, 36.995384, 45.774044>,  <30.132883, 37.195305, 45.417377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622942, 36.995384, 45.774044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927912, 36.742153, 45.827595>,  <30.110893, 36.590214, 45.859726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927912, 36.742153, 45.827595>,  <29.622942, 36.995384, 45.774044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927912, 36.742153, 45.827595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181913, -0.011148, 0.983251,
		-0.620983, -0.774008, -0.123664,
		0.762422, -0.633078, 0.133879,
		30.156639, 36.552231, 45.867760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424713, 36.619457, 46.275276>,  <29.622942, 36.995384, 45.774044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424713, 36.619457, 46.275276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813198, 36.524250, 46.279087>,  <30.046289, 36.467125, 46.281372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813198, 36.524250, 46.279087>,  <29.424713, 36.619457, 46.275276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813198, 36.524250, 46.279087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021558, -0.048004, 0.998615,
		-0.237230, -0.970074, -0.051754,
		0.971214, -0.238017, 0.009525,
		30.104563, 36.452847, 46.281944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479530, 35.906452, 46.614017>,  <29.424713, 36.619457, 46.275276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479530, 35.906452, 46.614017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820024, 36.112675, 46.653206>,  <30.024321, 36.236408, 46.676720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820024, 36.112675, 46.653206>,  <29.479530, 35.906452, 46.614017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820024, 36.112675, 46.653206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092011, -0.330419, 0.939339,
		0.516651, -0.790586, -0.328702,
		0.851238, 0.515555, 0.097968,
		30.075396, 36.267342, 46.682598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012873, 35.410809, 46.972954>,  <29.479530, 35.906452, 46.614017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012873, 35.410809, 46.972954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131149, 35.785069, 47.050026>,  <30.202116, 36.009624, 47.096268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.131149, 35.785069, 47.050026>,  <30.012873, 35.410809, 46.972954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131149, 35.785069, 47.050026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370862, -0.298316, 0.879471,
		0.880356, -0.188594, -0.435207,
		0.295692, 0.935650, 0.192681,
		30.219856, 36.065762, 47.107830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.568165, 35.291344, 47.390511>,  <30.012873, 35.410809, 46.972954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.568165, 35.291344, 47.390511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522970, 35.686508, 47.432964>,  <30.495853, 35.923607, 47.458439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.522970, 35.686508, 47.432964>,  <30.568165, 35.291344, 47.390511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.522970, 35.686508, 47.432964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344870, -0.061188, 0.936654,
		0.931825, 0.142433, -0.333788,
		-0.112987, 0.987911, 0.106137,
		30.489075, 35.982883, 47.464806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184689, 35.511471, 47.652443>,  <30.568165, 35.291344, 47.390511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184689, 35.511471, 47.652443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900442, 35.779972, 47.736767>,  <30.729895, 35.941074, 47.787361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900442, 35.779972, 47.736767>,  <31.184689, 35.511471, 47.652443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900442, 35.779972, 47.736767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259503, -0.028440, 0.965323,
		0.653973, 0.740682, -0.153983,
		-0.710618, 0.671254, 0.210808,
		30.687256, 35.981350, 47.800011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515879, 36.053291, 47.856930>,  <31.184689, 35.511471, 47.652443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515879, 36.053291, 47.856930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143856, 36.103851, 47.994926>,  <30.920643, 36.134186, 48.077724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143856, 36.103851, 47.994926>,  <31.515879, 36.053291, 47.856930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143856, 36.103851, 47.994926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346040, -0.014282, 0.938111,
		0.123503, 0.991877, -0.030456,
		-0.930056, 0.126398, 0.344993,
		30.864840, 36.141769, 48.098423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602324, 36.485649, 48.480568>,  <31.515879, 36.053291, 47.856930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602324, 36.485649, 48.480568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234180, 36.330803, 48.502781>,  <31.013294, 36.237896, 48.516109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234180, 36.330803, 48.502781>,  <31.602324, 36.485649, 48.480568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234180, 36.330803, 48.502781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129140, -0.166817, 0.977494,
		-0.369136, 0.906817, 0.203524,
		-0.920359, -0.387112, 0.055528,
		30.958073, 36.214668, 48.519440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291111, 36.792976, 49.074371>,  <31.602324, 36.485649, 48.480568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291111, 36.792976, 49.074371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111540, 36.443535, 48.999233>,  <31.003798, 36.233871, 48.954151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111540, 36.443535, 48.999233>,  <31.291111, 36.792976, 49.074371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111540, 36.443535, 48.999233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103880, -0.259813, 0.960055,
		-0.887508, 0.411484, 0.207387,
		-0.448930, -0.873600, -0.187841,
		30.976860, 36.181454, 48.942883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950796, 36.785728, 49.679180>,  <31.291111, 36.792976, 49.074371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950796, 36.785728, 49.679180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928339, 36.403725, 49.562695>,  <30.914865, 36.174522, 49.492802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928339, 36.403725, 49.562695>,  <30.950796, 36.785728, 49.679180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928339, 36.403725, 49.562695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139305, -0.296314, 0.944877,
		-0.988657, 0.012479, 0.149673,
		-0.056141, -0.955009, -0.291214,
		30.911497, 36.117222, 49.475330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543718, 36.456692, 50.242241>,  <30.950796, 36.785728, 49.679180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543718, 36.456692, 50.242241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722473, 36.151428, 50.055531>,  <30.829725, 35.968269, 49.943504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.722473, 36.151428, 50.055531>,  <30.543718, 36.456692, 50.242241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722473, 36.151428, 50.055531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259519, -0.388739, 0.884043,
		-0.856120, -0.516204, 0.024333,
		0.446887, -0.763161, -0.466772,
		30.856539, 35.922482, 49.915501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308960, 35.766335, 50.541641>,  <30.543718, 36.456692, 50.242241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308960, 35.766335, 50.541641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645340, 35.675190, 50.345325>,  <30.847168, 35.620502, 50.227535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645340, 35.675190, 50.345325>,  <30.308960, 35.766335, 50.541641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645340, 35.675190, 50.345325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340070, -0.482946, 0.806917,
		-0.420891, -0.845484, -0.328646,
		0.840954, -0.227861, -0.490791,
		30.897625, 35.606831, 50.198090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443945, 35.062065, 50.632549>,  <30.308960, 35.766335, 50.541641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443945, 35.062065, 50.632549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801283, 35.195179, 50.511761>,  <31.015686, 35.275047, 50.439285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801283, 35.195179, 50.511761>,  <30.443945, 35.062065, 50.632549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801283, 35.195179, 50.511761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430952, -0.444022, 0.785573,
		0.127346, -0.831923, -0.540080,
		0.893344, 0.332788, -0.301975,
		31.069286, 35.295017, 50.421169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843346, 34.497944, 50.575550>,  <30.443945, 35.062065, 50.632549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843346, 34.497944, 50.575550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073189, 34.817158, 50.648174>,  <31.211096, 35.008686, 50.691750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073189, 34.817158, 50.648174>,  <30.843346, 34.497944, 50.575550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073189, 34.817158, 50.648174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356997, -0.444021, 0.821827,
		0.736462, -0.407414, -0.540035,
		0.574610, 0.798035, 0.181559,
		31.245571, 35.056568, 50.702641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352287, 34.254681, 50.902225>,  <30.843346, 34.497944, 50.575550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.352287, 34.254681, 50.902225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417707, 34.640305, 50.985973>,  <31.456959, 34.871681, 51.036221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417707, 34.640305, 50.985973>,  <31.352287, 34.254681, 50.902225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417707, 34.640305, 50.985973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394377, -0.258421, 0.881865,
		0.904278, -0.061658, -0.422469,
		0.163549, 0.964063, 0.209368,
		31.466772, 34.929523, 51.048782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039631, 34.311852, 51.105999>,  <31.352287, 34.254681, 50.902225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039631, 34.311852, 51.105999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835180, 34.621403, 51.255589>,  <31.712509, 34.807133, 51.345345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.835180, 34.621403, 51.255589>,  <32.039631, 34.311852, 51.105999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835180, 34.621403, 51.255589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298290, -0.248350, 0.921599,
		0.806082, 0.582611, -0.103901,
		-0.511130, 0.773877, 0.373978,
		31.681841, 34.853565, 51.367783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457211, 34.569977, 51.655418>,  <32.039631, 34.311852, 51.105999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457211, 34.569977, 51.655418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089821, 34.703274, 51.740604>,  <31.869387, 34.783253, 51.791714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089821, 34.703274, 51.740604>,  <32.457211, 34.569977, 51.655418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089821, 34.703274, 51.740604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173777, -0.143644, 0.974252,
		0.355256, 0.931833, 0.074023,
		-0.918474, 0.333246, 0.212961,
		31.814280, 34.803249, 51.804493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520645, 35.190971, 52.183960>,  <32.457211, 34.569977, 51.655418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520645, 35.190971, 52.183960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167389, 35.003338, 52.185719>,  <31.955435, 34.890759, 52.186771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.167389, 35.003338, 52.185719>,  <32.520645, 35.190971, 52.183960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167389, 35.003338, 52.185719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091291, -0.162673, 0.982448,
		-0.460131, 0.868045, 0.186486,
		-0.883145, -0.469079, 0.004394,
		31.902445, 34.862614, 52.187038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423729, 35.207619, 52.827446>,  <32.520645, 35.190971, 52.183960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423729, 35.207619, 52.827446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114670, 34.972733, 52.730946>,  <31.929235, 34.831802, 52.673046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114670, 34.972733, 52.730946>,  <32.423729, 35.207619, 52.827446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114670, 34.972733, 52.730946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033076, -0.416734, 0.908427,
		-0.633975, 0.693912, 0.341410,
		-0.772646, -0.587213, -0.241247,
		31.882875, 34.796570, 52.658573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716131, 35.178036, 53.298008>,  <32.423729, 35.207619, 52.827446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716131, 35.178036, 53.298008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832010, 34.844402, 53.110226>,  <31.901537, 34.644222, 52.997559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832010, 34.844402, 53.110226>,  <31.716131, 35.178036, 53.298008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832010, 34.844402, 53.110226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188865, -0.431025, 0.882354,
		-0.938299, -0.344278, 0.032662,
		0.289697, -0.834080, -0.469452,
		31.918919, 34.594177, 52.969391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335859, 34.649612, 53.727589>,  <31.716131, 35.178036, 53.298008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335859, 34.649612, 53.727589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679323, 34.544888, 53.551334>,  <31.885401, 34.482052, 53.445583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.679323, 34.544888, 53.551334>,  <31.335859, 34.649612, 53.727589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679323, 34.544888, 53.551334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302807, -0.434503, 0.848243,
		-0.413542, -0.861777, -0.293809,
		0.858657, -0.261816, -0.440637,
		31.936920, 34.466343, 53.419144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566608, 33.908447, 53.685272>,  <31.335859, 34.649612, 53.727589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566608, 33.908447, 53.685272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908390, 34.114769, 53.710121>,  <32.113461, 34.238560, 53.725029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908390, 34.114769, 53.710121>,  <31.566608, 33.908447, 53.685272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908390, 34.114769, 53.710121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382045, -0.704863, 0.597670,
		0.352067, -0.486947, -0.799332,
		0.854453, 0.515801, 0.062123,
		32.164726, 34.269508, 53.728760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980898, 34.143848, 54.143097>,  <31.566608, 33.908447, 53.685272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980898, 34.143848, 54.143097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117168, 34.488636, 54.293270>,  <31.198931, 34.695507, 54.383373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.117168, 34.488636, 54.293270>,  <30.980898, 34.143848, 54.143097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.117168, 34.488636, 54.293270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924268, -0.380206, 0.034228,
		0.172246, 0.335342, -0.926216,
		0.340675, 0.861968, 0.375435,
		31.219372, 34.747227, 54.405899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153894, 34.047997, 54.070263>,  <30.980898, 34.143848, 54.143097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153894, 34.047997, 54.070263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908182, 34.010582, 54.383675>,  <29.760756, 33.988132, 54.571720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908182, 34.010582, 54.383675>,  <30.153894, 34.047997, 54.070263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908182, 34.010582, 54.383675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450700, -0.773458, -0.445683,
		0.647713, -0.626908, 0.432960,
		-0.614279, -0.093540, 0.783526,
		29.723898, 33.982521, 54.618732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190517, 33.336502, 54.544060>,  <30.153894, 34.047997, 54.070263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190517, 33.336502, 54.544060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843231, 33.519009, 54.466061>,  <29.634859, 33.628513, 54.419262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843231, 33.519009, 54.466061>,  <30.190517, 33.336502, 54.544060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843231, 33.519009, 54.466061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384397, -0.866986, -0.317133,
		-0.313757, -0.200383, 0.928118,
		-0.868214, 0.456269, -0.194997,
		29.582767, 33.655888, 54.407562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.818363, 32.520672, 54.478374>,  <30.190517, 33.336502, 54.544060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.818363, 32.520672, 54.478374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910851, 32.132915, 54.445351>,  <29.966343, 31.900261, 54.425537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910851, 32.132915, 54.445351>,  <29.818363, 32.520672, 54.478374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910851, 32.132915, 54.445351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009645, 0.082573, -0.996538,
		0.972854, 0.231213, 0.009743,
		0.231217, -0.969393, -0.082561,
		29.980215, 31.842098, 54.420582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488981, 32.455223, 53.970093>,  <29.818363, 32.520672, 54.478374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488981, 32.455223, 53.970093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205502, 32.174751, 54.001331>,  <30.035414, 32.006470, 54.020073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205502, 32.174751, 54.001331>,  <30.488981, 32.455223, 53.970093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205502, 32.174751, 54.001331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130078, 0.021066, -0.991280,
		0.693418, -0.712676, -0.106137,
		-0.708697, -0.701177, 0.078096,
		29.992893, 31.964397, 54.024761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048206, 32.523987, 54.328613>,  <30.488981, 32.455223, 53.970093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048206, 32.523987, 54.328613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869083, 32.166996, 54.306866>,  <30.761610, 31.952803, 54.293816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869083, 32.166996, 54.306866>,  <31.048206, 32.523987, 54.328613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869083, 32.166996, 54.306866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621394, -0.266913, -0.736632,
		0.642912, -0.363657, 0.674104,
		-0.447808, -0.892475, -0.054373,
		30.734741, 31.899254, 54.290554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551409, 32.052261, 54.431412>,  <31.048206, 32.523987, 54.328613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551409, 32.052261, 54.431412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250454, 31.928371, 54.198868>,  <31.069881, 31.854036, 54.059341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250454, 31.928371, 54.198868>,  <31.551409, 32.052261, 54.431412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250454, 31.928371, 54.198868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635172, -0.107254, -0.764888,
		0.174555, -0.944756, 0.277428,
		-0.752387, -0.309730, -0.581361,
		31.024738, 31.835453, 54.024460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745506, 31.369818, 53.993073>,  <31.551409, 32.052261, 54.431412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745506, 31.369818, 53.993073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492867, 31.602547, 53.788109>,  <31.341284, 31.742184, 53.665131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492867, 31.602547, 53.788109>,  <31.745506, 31.369818, 53.993073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492867, 31.602547, 53.788109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672319, 0.081891, -0.735718,
		-0.386097, -0.809181, -0.442894,
		-0.631598, 0.581825, -0.512410,
		31.303387, 31.777094, 53.634384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694670, 31.009741, 53.250923>,  <31.745506, 31.369818, 53.993073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694670, 31.009741, 53.250923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600937, 31.398581, 53.255096>,  <31.544697, 31.631886, 53.257599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600937, 31.398581, 53.255096>,  <31.694670, 31.009741, 53.250923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600937, 31.398581, 53.255096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630321, 0.160096, -0.759648,
		-0.740125, -0.171432, -0.650251,
		-0.234330, 0.972101, 0.010434,
		31.530638, 31.690210, 53.258228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445810, 31.241337, 52.547478>,  <31.694670, 31.009741, 53.250923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445810, 31.241337, 52.547478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590061, 31.557320, 52.745838>,  <31.676611, 31.746910, 52.864853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590061, 31.557320, 52.745838>,  <31.445810, 31.241337, 52.547478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590061, 31.557320, 52.745838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608101, 0.204003, -0.767200,
		-0.707221, 0.578228, -0.406805,
		0.360627, 0.789959, 0.495896,
		31.698250, 31.794308, 52.894608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301517, 31.779655, 52.068741>,  <31.445810, 31.241337, 52.547478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301517, 31.779655, 52.068741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580910, 31.937550, 52.307507>,  <31.748547, 32.032288, 52.450764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580910, 31.937550, 52.307507>,  <31.301517, 31.779655, 52.068741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580910, 31.937550, 52.307507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418241, 0.451655, -0.788088,
		-0.580686, 0.800119, 0.150378,
		0.698483, 0.394738, 0.596912,
		31.790455, 32.055969, 52.486580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301107, 32.422607, 51.913177>,  <31.301517, 31.779655, 52.068741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301107, 32.422607, 51.913177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667501, 32.372047, 52.065487>,  <31.887339, 32.341713, 52.156872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667501, 32.372047, 52.065487>,  <31.301107, 32.422607, 51.913177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667501, 32.372047, 52.065487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387526, 0.524471, -0.758126,
		-0.103884, 0.841994, 0.529390,
		0.915987, -0.126395, 0.380778,
		31.942297, 32.334129, 52.179722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633715, 33.014301, 52.042801>,  <31.301107, 32.422607, 51.913177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633715, 33.014301, 52.042801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941187, 32.762085, 51.999805>,  <32.125671, 32.610756, 51.974010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941187, 32.762085, 51.999805>,  <31.633715, 33.014301, 52.042801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941187, 32.762085, 51.999805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334774, 0.539782, -0.772374,
		0.545030, 0.557725, 0.626008,
		0.768680, -0.630538, -0.107485,
		32.171791, 32.572922, 51.967560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203724, 33.474884, 51.907669>,  <31.633715, 33.014301, 52.042801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203724, 33.474884, 51.907669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326897, 33.112862, 51.790325>,  <32.400799, 32.895649, 51.719921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326897, 33.112862, 51.790325>,  <32.203724, 33.474884, 51.907669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326897, 33.112862, 51.790325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483541, 0.414424, -0.770999,
		0.819368, 0.095567, 0.565245,
		0.307933, -0.905052, -0.293355,
		32.419277, 32.841347, 51.702320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894867, 33.514050, 51.724209>,  <32.203724, 33.474884, 51.907669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894867, 33.514050, 51.724209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742943, 33.196838, 51.533691>,  <32.651787, 33.006512, 51.419380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742943, 33.196838, 51.533691>,  <32.894867, 33.514050, 51.724209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742943, 33.196838, 51.533691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233012, 0.416260, -0.878882,
		0.895237, -0.444791, 0.026684,
		-0.379811, -0.793025, -0.476293,
		32.628998, 32.958931, 51.390804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326653, 33.394608, 51.201790>,  <32.894867, 33.514050, 51.724209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326653, 33.394608, 51.201790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014477, 33.184956, 51.065434>,  <32.827171, 33.059166, 50.983620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014477, 33.184956, 51.065434>,  <33.326653, 33.394608, 51.201790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014477, 33.184956, 51.065434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231911, 0.263658, -0.936323,
		0.580634, -0.809797, -0.084217,
		-0.780436, -0.524131, -0.340890,
		32.780346, 33.027718, 50.963165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517262, 32.963009, 50.510517>,  <33.326653, 33.394608, 51.201790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517262, 32.963009, 50.510517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117413, 32.973389, 50.506702>,  <32.877502, 32.979618, 50.504414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117413, 32.973389, 50.506702>,  <33.517262, 32.963009, 50.510517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117413, 32.973389, 50.506702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008477, -0.040816, -0.999131,
		-0.026297, -0.998830, 0.040581,
		-0.999618, 0.025930, -0.009540,
		32.817528, 32.981174, 50.503841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376797, 32.539730, 49.971027>,  <33.517262, 32.963009, 50.510517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376797, 32.539730, 49.971027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037342, 32.745441, 50.020542>,  <32.833668, 32.868870, 50.050251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037342, 32.745441, 50.020542>,  <33.376797, 32.539730, 49.971027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037342, 32.745441, 50.020542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149862, -0.009315, -0.988663,
		-0.507299, -0.857570, 0.084977,
		-0.848639, 0.514283, 0.123791,
		32.782749, 32.899727, 50.057678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801399, 32.129829, 49.604908>,  <33.376797, 32.539730, 49.971027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801399, 32.129829, 49.604908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722778, 32.521496, 49.625336>,  <32.675606, 32.756496, 49.637592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.722778, 32.521496, 49.625336>,  <32.801399, 32.129829, 49.604908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.722778, 32.521496, 49.625336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077261, 0.036454, -0.996344,
		-0.977444, -0.199782, 0.068486,
		-0.196555, 0.979162, 0.051067,
		32.663811, 32.815243, 49.640656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270164, 32.276203, 49.121716>,  <32.801399, 32.129829, 49.604908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270164, 32.276203, 49.121716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428265, 32.641003, 49.165607>,  <32.523125, 32.859882, 49.191940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428265, 32.641003, 49.165607>,  <32.270164, 32.276203, 49.121716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428265, 32.641003, 49.165607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072954, 0.150243, -0.985954,
		-0.915673, 0.381690, 0.125917,
		0.395247, 0.911998, 0.109727,
		32.546841, 32.914600, 49.198524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062611, 32.592834, 48.618835>,  <32.270164, 32.276203, 49.121716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062611, 32.592834, 48.618835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319973, 32.882805, 48.717224>,  <32.474392, 33.056789, 48.776257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319973, 32.882805, 48.717224>,  <32.062611, 32.592834, 48.618835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319973, 32.882805, 48.717224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029728, 0.297409, -0.954287,
		-0.764946, 0.621309, 0.169805,
		0.643409, 0.724930, 0.245973,
		32.512997, 33.100285, 48.791016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864441, 33.214531, 48.324749>,  <32.062611, 32.592834, 48.618835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864441, 33.214531, 48.324749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243458, 33.320385, 48.396454>,  <32.470867, 33.383896, 48.439476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243458, 33.320385, 48.396454>,  <31.864441, 33.214531, 48.324749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243458, 33.320385, 48.396454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063162, 0.394761, -0.916610,
		-0.313334, 0.879848, 0.357336,
		0.947540, 0.264635, 0.179265,
		32.527721, 33.399776, 48.450233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024807, 33.904240, 48.011635>,  <31.864441, 33.214531, 48.324749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024807, 33.904240, 48.011635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360451, 33.686684, 48.015354>,  <32.561836, 33.556149, 48.017586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360451, 33.686684, 48.015354>,  <32.024807, 33.904240, 48.011635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360451, 33.686684, 48.015354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044661, 0.051839, -0.997656,
		0.542133, 0.837554, 0.067789,
		0.839105, -0.543890, 0.009302,
		32.612183, 33.523518, 48.018147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477200, 34.284428, 47.635025>,  <32.024807, 33.904240, 48.011635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477200, 34.284428, 47.635025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631577, 33.915714, 47.620296>,  <32.724201, 33.694485, 47.611462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.631577, 33.915714, 47.620296>,  <32.477200, 34.284428, 47.635025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631577, 33.915714, 47.620296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129705, 0.093734, -0.987112,
		0.913359, 0.376193, 0.155737,
		0.385943, -0.921788, -0.036819,
		32.747360, 33.639179, 47.609249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033104, 34.325230, 47.260750>,  <32.477200, 34.284428, 47.635025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033104, 34.325230, 47.260750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907982, 33.945755, 47.242249>,  <32.832909, 33.718071, 47.231148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907982, 33.945755, 47.242249>,  <33.033104, 34.325230, 47.260750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907982, 33.945755, 47.242249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236363, -0.030586, -0.971183,
		0.919936, -0.314728, 0.233803,
		-0.312810, -0.948689, -0.046252,
		32.814140, 33.661148, 47.228374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502399, 34.082043, 46.793278>,  <33.033104, 34.325230, 47.260750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502399, 34.082043, 46.793278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235252, 33.784336, 46.791271>,  <33.074966, 33.605713, 46.790066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235252, 33.784336, 46.791271>,  <33.502399, 34.082043, 46.793278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235252, 33.784336, 46.791271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124550, -0.105116, -0.986630,
		0.733788, -0.659559, 0.162902,
		-0.667864, -0.744266, -0.005016,
		33.034893, 33.561058, 46.789768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770653, 33.405098, 46.453899>,  <33.502399, 34.082043, 46.793278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770653, 33.405098, 46.453899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371010, 33.406071, 46.436985>,  <33.131226, 33.406654, 46.426838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371010, 33.406071, 46.436985>,  <33.770653, 33.405098, 46.453899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371010, 33.406071, 46.436985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041469, -0.146626, -0.988322,
		-0.008607, -0.989189, 0.146393,
		-0.999103, 0.002436, -0.042282,
		33.071278, 33.406799, 46.424301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611649, 32.901630, 45.841961>,  <33.770653, 33.405098, 46.453899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611649, 32.901630, 45.841961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278107, 33.113941, 45.902580>,  <33.077984, 33.241325, 45.938953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278107, 33.113941, 45.902580>,  <33.611649, 32.901630, 45.841961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278107, 33.113941, 45.902580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199544, -0.033864, -0.979304,
		-0.514657, -0.846836, 0.134150,
		-0.833852, 0.530775, 0.151552,
		33.027950, 33.273174, 45.948048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946819, 32.526794, 45.541790>,  <33.611649, 32.901630, 45.841961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946819, 32.526794, 45.541790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840000, 32.908585, 45.594944>,  <32.775909, 33.137657, 45.626835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840000, 32.908585, 45.594944>,  <32.946819, 32.526794, 45.541790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840000, 32.908585, 45.594944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247375, 0.065374, -0.966712,
		-0.931391, -0.291034, 0.218655,
		-0.267052, 0.954476, 0.132884,
		32.759884, 33.194927, 45.634808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305351, 32.551289, 45.320366>,  <32.946819, 32.526794, 45.541790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305351, 32.551289, 45.320366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401745, 32.939480, 45.316509>,  <32.459583, 33.172394, 45.314194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.401745, 32.939480, 45.316509>,  <32.305351, 32.551289, 45.320366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.401745, 32.939480, 45.316509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396356, 0.089345, -0.913739,
		-0.885905, 0.224021, 0.406186,
		0.240987, 0.970480, -0.009641,
		32.474041, 33.230625, 45.313618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.611423, 32.936382, 45.099754>,  <32.305351, 32.551289, 45.320366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.611423, 32.936382, 45.099754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927162, 33.175381, 45.043274>,  <32.116604, 33.318779, 45.009388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927162, 33.175381, 45.043274>,  <31.611423, 32.936382, 45.099754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927162, 33.175381, 45.043274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347379, 0.245021, -0.905148,
		-0.506223, 0.763523, 0.400963,
		0.789345, 0.597493, -0.141197,
		32.163967, 33.354630, 45.000916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345255, 33.536728, 45.082657>,  <31.611423, 32.936382, 45.099754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345255, 33.536728, 45.082657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690996, 33.623367, 44.901119>,  <31.898441, 33.675350, 44.792194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690996, 33.623367, 44.901119>,  <31.345255, 33.536728, 45.082657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690996, 33.623367, 44.901119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495897, 0.217182, -0.840784,
		-0.083547, 0.951796, 0.295133,
		0.864353, 0.216600, -0.453848,
		31.950302, 33.688347, 44.764965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231781, 34.156822, 44.804859>,  <31.345255, 33.536728, 45.082657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231781, 34.156822, 44.804859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547745, 34.007526, 44.610237>,  <31.737324, 33.917950, 44.493465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547745, 34.007526, 44.610237>,  <31.231781, 34.156822, 44.804859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547745, 34.007526, 44.610237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386877, 0.312285, -0.867643,
		0.475781, 0.873596, 0.102280,
		0.789911, -0.373239, -0.486553,
		31.784718, 33.895554, 44.464272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392405, 34.680191, 44.268360>,  <31.231781, 34.156822, 44.804859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392405, 34.680191, 44.268360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557928, 34.335835, 44.149948>,  <31.657242, 34.129223, 44.078899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557928, 34.335835, 44.149948>,  <31.392405, 34.680191, 44.268360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557928, 34.335835, 44.149948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189629, 0.236533, -0.952939,
		0.890394, 0.450472, -0.065370,
		0.413810, -0.860887, -0.296031,
		31.682072, 34.077568, 44.061138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752588, 34.789684, 43.576122>,  <31.392405, 34.680191, 44.268360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752588, 34.789684, 43.576122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692593, 34.395218, 43.604340>,  <31.656595, 34.158539, 43.621269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692593, 34.395218, 43.604340>,  <31.752588, 34.789684, 43.576122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692593, 34.395218, 43.604340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282875, -0.025562, -0.958816,
		0.947357, -0.163766, -0.275128,
		-0.149989, -0.986168, 0.070542,
		31.647596, 34.099369, 43.625504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094395, 34.478485, 43.119095>,  <31.752588, 34.789684, 43.576122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094395, 34.478485, 43.119095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833897, 34.184277, 43.193802>,  <31.677597, 34.007751, 43.238628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833897, 34.184277, 43.193802>,  <32.094395, 34.478485, 43.119095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833897, 34.184277, 43.193802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115721, -0.146983, -0.982347,
		0.749990, -0.661364, 0.010607,
		-0.651248, -0.735523, 0.186770,
		31.638523, 33.963619, 43.249832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244198, 34.012844, 42.715794>,  <32.094395, 34.478485, 43.119095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244198, 34.012844, 42.715794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874958, 33.886799, 42.803967>,  <31.653414, 33.811172, 42.856869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874958, 33.886799, 42.803967>,  <32.244198, 34.012844, 42.715794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874958, 33.886799, 42.803967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135461, -0.270028, -0.953276,
		0.359915, -0.909828, 0.206577,
		-0.923099, -0.315115, 0.220433,
		31.598028, 33.792263, 42.870098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207481, 33.373066, 42.508167>,  <32.244198, 34.012844, 42.715794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207481, 33.373066, 42.508167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821379, 33.477509, 42.504124>,  <31.589718, 33.540173, 42.501698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821379, 33.477509, 42.504124>,  <32.207481, 33.373066, 42.508167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821379, 33.477509, 42.504124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114792, -0.458488, -0.881256,
		-0.234736, -0.849478, 0.472532,
		-0.965258, 0.261106, -0.010111,
		31.531801, 33.555840, 42.501091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953850, 32.841682, 42.173332>,  <32.207481, 33.373066, 42.508167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953850, 32.841682, 42.173332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647451, 33.098812, 42.171261>,  <31.463614, 33.253090, 42.170017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.647451, 33.098812, 42.171261>,  <31.953850, 32.841682, 42.173332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.647451, 33.098812, 42.171261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465663, -0.560403, -0.684914,
		-0.443180, -0.522231, 0.728606,
		-0.765996, 0.642825, -0.005176,
		31.417652, 33.291660, 42.169708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260429, 32.490635, 42.315571>,  <31.953850, 32.841682, 42.173332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260429, 32.490635, 42.315571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204237, 32.823986, 42.101749>,  <31.170523, 33.023998, 41.973457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.204237, 32.823986, 42.101749>,  <31.260429, 32.490635, 42.315571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.204237, 32.823986, 42.101749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330277, -0.548425, -0.768210,
		-0.933372, 0.068633, 0.352288,
		-0.140479, 0.833378, -0.534553,
		31.162094, 33.074001, 41.941383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555052, 32.403435, 41.980656>,  <31.260429, 32.490635, 42.315571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555052, 32.403435, 41.980656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704805, 32.708710, 41.769989>,  <30.794659, 32.891876, 41.643589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704805, 32.708710, 41.769989>,  <30.555052, 32.403435, 41.980656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704805, 32.708710, 41.769989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262056, -0.457734, -0.849592,
		-0.889473, 0.456090, 0.028631,
		0.374385, 0.763192, -0.526663,
		30.817122, 32.937668, 41.611992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128464, 32.376125, 41.445911>,  <30.555052, 32.403435, 41.980656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128464, 32.376125, 41.445911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449064, 32.584572, 41.328587>,  <30.641424, 32.709641, 41.258194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449064, 32.584572, 41.328587>,  <30.128464, 32.376125, 41.445911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449064, 32.584572, 41.328587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013174, -0.474983, -0.879896,
		-0.597849, 0.709101, -0.373834,
		0.801500, 0.521121, -0.293310,
		30.689514, 32.740910, 41.240593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903765, 32.667984, 40.825741>,  <30.128464, 32.376125, 41.445911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903765, 32.667984, 40.825741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302704, 32.694698, 40.814178>,  <30.542067, 32.710728, 40.807240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302704, 32.694698, 40.814178>,  <29.903765, 32.667984, 40.825741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302704, 32.694698, 40.814178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005572, -0.466157, -0.884684,
		-0.072561, 0.882177, -0.465293,
		0.997348, 0.066786, -0.028909,
		30.601908, 32.714733, 40.805504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082579, 33.049526, 40.255928>,  <29.903765, 32.667984, 40.825741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082579, 33.049526, 40.255928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418507, 32.853539, 40.349422>,  <30.620064, 32.735947, 40.405518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418507, 32.853539, 40.349422>,  <30.082579, 33.049526, 40.255928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418507, 32.853539, 40.349422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079781, -0.314488, -0.945903,
		0.536968, 0.813037, -0.225024,
		0.839821, -0.489967, 0.233735,
		30.670452, 32.706547, 40.419544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646795, 33.344692, 39.887215>,  <30.082579, 33.049526, 40.255928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646795, 33.344692, 39.887215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768808, 32.970257, 39.957291>,  <30.842016, 32.745594, 39.999336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768808, 32.970257, 39.957291>,  <30.646795, 33.344692, 39.887215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768808, 32.970257, 39.957291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204630, -0.115233, -0.972033,
		0.930098, 0.332351, 0.156402,
		0.305033, -0.936090, 0.175187,
		30.860319, 32.689430, 40.009846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207685, 33.177872, 39.436611>,  <30.646795, 33.344692, 39.887215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207685, 33.177872, 39.436611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102846, 32.802402, 39.526234>,  <31.039942, 32.577122, 39.580006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102846, 32.802402, 39.526234>,  <31.207685, 33.177872, 39.436611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102846, 32.802402, 39.526234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012998, -0.235581, -0.971768,
		0.964953, -0.251788, 0.073946,
		-0.262100, -0.938672, 0.224052,
		31.024216, 32.520802, 39.593449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728439, 32.781120, 39.098106>,  <31.207685, 33.177872, 39.436611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728439, 32.781120, 39.098106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404989, 32.552647, 39.154499>,  <31.210918, 32.415562, 39.188335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.404989, 32.552647, 39.154499>,  <31.728439, 32.781120, 39.098106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404989, 32.552647, 39.154499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047529, -0.175427, -0.983344,
		0.586402, -0.801857, 0.114707,
		-0.808624, -0.571184, 0.140982,
		31.162401, 32.381290, 39.196793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935324, 32.151218, 38.729362>,  <31.728439, 32.781120, 39.098106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935324, 32.151218, 38.729362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537920, 32.167801, 38.771729>,  <31.299477, 32.177750, 38.797146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537920, 32.167801, 38.771729>,  <31.935324, 32.151218, 38.729362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537920, 32.167801, 38.771729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113736, -0.356619, -0.927301,
		-0.000676, -0.933329, 0.359021,
		-0.993511, 0.041460, 0.105912,
		31.239866, 32.180241, 38.803501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242222, 31.512041, 38.973236>,  <31.935324, 32.151218, 38.729362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242222, 31.512041, 38.973236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632793, 31.504187, 38.887257>,  <32.867134, 31.499474, 38.835667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632793, 31.504187, 38.887257>,  <32.242222, 31.512041, 38.973236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632793, 31.504187, 38.887257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215143, 0.008069, 0.976549,
		-0.017446, -0.999774, 0.012104,
		0.976427, -0.019641, -0.214953,
		32.925720, 31.498295, 38.822769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586327, 30.938910, 39.378525>,  <32.242222, 31.512041, 38.973236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586327, 30.938910, 39.378525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850574, 31.221777, 39.277733>,  <33.009125, 31.391497, 39.217258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850574, 31.221777, 39.277733>,  <32.586327, 30.938910, 39.378525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850574, 31.221777, 39.277733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466060, -0.123201, 0.876133,
		0.588530, -0.696228, -0.410973,
		0.660621, 0.707169, -0.251976,
		33.048759, 31.433928, 39.202141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082764, 30.669878, 39.723457>,  <32.586327, 30.938910, 39.378525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082764, 30.669878, 39.723457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265064, 31.015602, 39.638363>,  <33.374443, 31.223038, 39.587307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265064, 31.015602, 39.638363>,  <33.082764, 30.669878, 39.723457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265064, 31.015602, 39.638363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598628, -0.120749, 0.791874,
		0.658738, -0.488248, -0.572432,
		0.455751, 0.864311, -0.212737,
		33.401791, 31.274895, 39.574543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801224, 30.593332, 39.710560>,  <33.082764, 30.669878, 39.723457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801224, 30.593332, 39.710560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753330, 30.982996, 39.787163>,  <33.724594, 31.216795, 39.833126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753330, 30.982996, 39.787163>,  <33.801224, 30.593332, 39.710560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753330, 30.982996, 39.787163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692719, -0.056209, 0.719013,
		0.711199, 0.218749, -0.668090,
		-0.119730, 0.974161, 0.191508,
		33.717411, 31.275244, 39.844616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453186, 30.872086, 39.947647>,  <33.801224, 30.593332, 39.710560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453186, 30.872086, 39.947647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199677, 31.150810, 40.081974>,  <34.047569, 31.318045, 40.162571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199677, 31.150810, 40.081974>,  <34.453186, 30.872086, 39.947647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199677, 31.150810, 40.081974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496503, 0.033562, 0.867386,
		0.593135, 0.716467, -0.367241,
		-0.633778, 0.696813, 0.335821,
		34.009544, 31.359854, 40.182720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912006, 31.314674, 40.298740>,  <34.453186, 30.872086, 39.947647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912006, 31.314674, 40.298740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548313, 31.418795, 40.428688>,  <34.330097, 31.481268, 40.506657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548313, 31.418795, 40.428688>,  <34.912006, 31.314674, 40.298740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548313, 31.418795, 40.428688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367636, 0.135971, 0.919976,
		0.195299, 0.955905, -0.219326,
		-0.909232, 0.260302, 0.324870,
		34.275543, 31.496885, 40.526150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039852, 31.874250, 40.764221>,  <34.912006, 31.314674, 40.298740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039852, 31.874250, 40.764221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678471, 31.720987, 40.841122>,  <34.461643, 31.629030, 40.887264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.678471, 31.720987, 40.841122>,  <35.039852, 31.874250, 40.764221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678471, 31.720987, 40.841122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206615, 0.003749, 0.978415,
		-0.375607, 0.923676, 0.075778,
		-0.903454, -0.383157, 0.192254,
		34.407433, 31.606041, 40.898796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873302, 32.288242, 41.304523>,  <35.039852, 31.874250, 40.764221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873302, 32.288242, 41.304523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619747, 31.980055, 41.331524>,  <34.467613, 31.795141, 41.347725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619747, 31.980055, 41.331524>,  <34.873302, 32.288242, 41.304523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619747, 31.980055, 41.331524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018829, 0.071874, 0.997236,
		-0.773192, 0.633411, -0.031053,
		-0.633893, -0.770470, 0.067499,
		34.429581, 31.748915, 41.351772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247849, 32.428051, 41.851212>,  <34.873302, 32.288242, 41.304523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247849, 32.428051, 41.851212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299320, 32.035126, 41.796803>,  <34.330204, 31.799370, 41.764156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299320, 32.035126, 41.796803>,  <34.247849, 32.428051, 41.851212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299320, 32.035126, 41.796803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083967, -0.125875, 0.988486,
		-0.988125, -0.138618, 0.066285,
		0.128679, -0.982314, -0.136020,
		34.337925, 31.740431, 41.755997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764984, 32.057140, 42.292236>,  <34.247849, 32.428051, 41.851212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764984, 32.057140, 42.292236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060207, 31.792830, 42.237617>,  <34.237343, 31.634243, 42.204845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060207, 31.792830, 42.237617>,  <33.764984, 32.057140, 42.292236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060207, 31.792830, 42.237617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059817, -0.137495, 0.988695,
		-0.672080, -0.737882, -0.061954,
		0.738059, -0.660776, -0.136545,
		34.281624, 31.594597, 42.196655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545025, 31.465185, 42.632603>,  <33.764984, 32.057140, 42.292236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545025, 31.465185, 42.632603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943195, 31.451736, 42.596832>,  <34.182098, 31.443666, 42.575371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943195, 31.451736, 42.596832>,  <33.545025, 31.465185, 42.632603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943195, 31.451736, 42.596832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081445, -0.190581, 0.978287,
		-0.049932, -0.981096, -0.186971,
		0.995426, -0.033620, -0.089422,
		34.241821, 31.441650, 42.570007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753925, 31.182634, 43.201675>,  <33.545025, 31.465185, 42.632603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753925, 31.182634, 43.201675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107712, 31.298471, 43.055328>,  <34.319984, 31.367973, 42.967522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107712, 31.298471, 43.055328>,  <33.753925, 31.182634, 43.201675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107712, 31.298471, 43.055328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419331, -0.149405, 0.895455,
		0.204657, -0.945417, -0.253580,
		0.884464, 0.289595, -0.365866,
		34.373051, 31.385349, 42.945568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166649, 30.728567, 43.536518>,  <33.753925, 31.182634, 43.201675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166649, 30.728567, 43.536518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391968, 31.035246, 43.413311>,  <34.527157, 31.219254, 43.339386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391968, 31.035246, 43.413311>,  <34.166649, 30.728567, 43.536518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391968, 31.035246, 43.413311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429584, 0.046686, 0.901819,
		0.705803, -0.640309, -0.303063,
		0.563294, 0.766697, -0.308018,
		34.560955, 31.265255, 43.320904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802551, 30.536268, 43.772141>,  <34.166649, 30.728567, 43.536518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802551, 30.536268, 43.772141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796955, 30.931707, 43.712173>,  <34.793598, 31.168972, 43.676193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796955, 30.931707, 43.712173>,  <34.802551, 30.536268, 43.772141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796955, 30.931707, 43.712173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389872, 0.143454, 0.909627,
		0.920763, -0.045724, -0.387435,
		-0.013987, 0.988600, -0.149914,
		34.792759, 31.228287, 43.667198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531677, 30.664129, 43.899006>,  <34.802551, 30.536268, 43.772141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531677, 30.664129, 43.899006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289913, 30.977144, 43.958767>,  <35.144855, 31.164953, 43.994625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289913, 30.977144, 43.958767>,  <35.531677, 30.664129, 43.899006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289913, 30.977144, 43.958767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472589, 0.201201, 0.858008,
		0.641363, 0.589198, -0.491426,
		-0.604412, 0.782537, 0.149406,
		35.108589, 31.211905, 44.003590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972061, 31.045092, 44.244953>,  <35.531677, 30.664129, 43.899006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972061, 31.045092, 44.244953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628441, 31.240776, 44.305233>,  <35.422268, 31.358187, 44.341400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.628441, 31.240776, 44.305233>,  <35.972061, 31.045092, 44.244953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628441, 31.240776, 44.305233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348535, 0.343357, 0.872140,
		0.374916, 0.801735, -0.465467,
		-0.859047, 0.489211, 0.150703,
		35.370728, 31.387539, 44.350445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126163, 31.712872, 44.575348>,  <35.972061, 31.045092, 44.244953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126163, 31.712872, 44.575348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739353, 31.672634, 44.668930>,  <35.507267, 31.648491, 44.725079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739353, 31.672634, 44.668930>,  <36.126163, 31.712872, 44.575348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739353, 31.672634, 44.668930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160709, 0.471591, 0.867049,
		-0.197551, 0.876061, -0.439876,
		-0.967030, -0.100594, 0.233954,
		35.449245, 31.642456, 44.739117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844501, 32.342308, 44.868618>,  <36.126163, 31.712872, 44.575348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844501, 32.342308, 44.868618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586945, 32.071186, 45.010593>,  <35.432411, 31.908512, 45.095779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586945, 32.071186, 45.010593>,  <35.844501, 32.342308, 44.868618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586945, 32.071186, 45.010593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005654, 0.468107, 0.883654,
		-0.765097, 0.566969, -0.305242,
		-0.643890, -0.677807, 0.354942,
		35.393776, 31.867844, 45.117077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428677, 32.728485, 45.366867>,  <35.844501, 32.342308, 44.868618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428677, 32.728485, 45.366867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364594, 32.340790, 45.441605>,  <35.326145, 32.108173, 45.486446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364594, 32.340790, 45.441605>,  <35.428677, 32.728485, 45.366867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364594, 32.340790, 45.441605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051683, 0.180793, 0.982162,
		-0.985730, 0.167005, 0.021129,
		-0.160206, -0.969238, 0.186844,
		35.316532, 32.050018, 45.497658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886391, 32.748169, 45.815056>,  <35.428677, 32.728485, 45.366867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886391, 32.748169, 45.815056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056919, 32.393463, 45.886494>,  <35.159237, 32.180641, 45.929356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056919, 32.393463, 45.886494>,  <34.886391, 32.748169, 45.815056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056919, 32.393463, 45.886494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011482, 0.202725, 0.979168,
		-0.904499, -0.415390, 0.096608,
		0.426321, -0.886766, 0.178595,
		35.184814, 32.127434, 45.940071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487995, 32.480209, 46.402996>,  <34.886391, 32.748169, 45.815056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487995, 32.480209, 46.402996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834248, 32.280071, 46.395611>,  <35.042000, 32.159988, 46.391178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834248, 32.280071, 46.395611>,  <34.487995, 32.480209, 46.402996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834248, 32.280071, 46.395611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041445, 0.034857, 0.998533,
		-0.498965, -0.865125, 0.050910,
		0.865630, -0.500343, -0.018463,
		35.093937, 32.129967, 46.390072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437664, 31.884008, 46.778481>,  <34.487995, 32.480209, 46.402996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437664, 31.884008, 46.778481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824886, 31.977507, 46.814785>,  <35.057220, 32.033607, 46.836567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824886, 31.977507, 46.814785>,  <34.437664, 31.884008, 46.778481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824886, 31.977507, 46.814785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138786, 0.197992, 0.970329,
		0.208856, -0.951922, 0.224108,
		0.968048, 0.233762, 0.090762,
		35.115303, 32.047630, 46.842014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586666, 31.642578, 47.451260>,  <34.437664, 31.884008, 46.778481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586666, 31.642578, 47.451260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896152, 31.876406, 47.353569>,  <35.081844, 32.016701, 47.294956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.896152, 31.876406, 47.353569>,  <34.586666, 31.642578, 47.451260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896152, 31.876406, 47.353569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004766, 0.380111, 0.924929,
		0.633518, -0.716793, 0.291311,
		0.773713, 0.584571, -0.244223,
		35.128265, 32.051777, 47.280304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093163, 31.509768, 48.009350>,  <34.586666, 31.642578, 47.451260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093163, 31.509768, 48.009350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152901, 31.851749, 47.810658>,  <35.188744, 32.056938, 47.691441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152901, 31.851749, 47.810658>,  <35.093163, 31.509768, 48.009350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152901, 31.851749, 47.810658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040567, 0.496646, 0.867005,
		0.987952, -0.149638, 0.039490,
		0.149350, 0.854957, -0.496732,
		35.197704, 32.108238, 47.661636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598804, 31.748337, 48.296478>,  <35.093163, 31.509768, 48.009350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598804, 31.748337, 48.296478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428596, 32.068687, 48.127941>,  <35.326473, 32.260899, 48.026821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428596, 32.068687, 48.127941>,  <35.598804, 31.748337, 48.296478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428596, 32.068687, 48.127941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079813, 0.496993, 0.864076,
		0.901422, 0.334054, -0.275401,
		-0.425521, 0.800878, -0.421339,
		35.300941, 32.308952, 48.001541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087582, 32.285954, 48.450497>,  <35.598804, 31.748337, 48.296478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087582, 32.285954, 48.450497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739723, 32.452866, 48.344971>,  <35.531010, 32.553013, 48.281654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.739723, 32.452866, 48.344971>,  <36.087582, 32.285954, 48.450497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.739723, 32.452866, 48.344971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111306, 0.686356, 0.718697,
		0.480967, 0.595647, -0.643331,
		-0.869644, 0.417277, -0.263816,
		35.478828, 32.578049, 48.265827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259792, 33.005531, 48.597298>,  <36.087582, 32.285954, 48.450497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259792, 33.005531, 48.597298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863007, 32.954918, 48.596916>,  <35.624935, 32.924549, 48.596687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863007, 32.954918, 48.596916>,  <36.259792, 33.005531, 48.597298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863007, 32.954918, 48.596916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066278, 0.513122, 0.855753,
		-0.107790, 0.848938, -0.517384,
		-0.991962, -0.126533, -0.000957,
		35.565418, 32.916958, 48.596630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961994, 33.662617, 48.844681>,  <36.259792, 33.005531, 48.597298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961994, 33.662617, 48.844681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651478, 33.414474, 48.889462>,  <35.465168, 33.265591, 48.916332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651478, 33.414474, 48.889462>,  <35.961994, 33.662617, 48.844681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651478, 33.414474, 48.889462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244915, 0.460462, 0.853224,
		-0.580852, 0.634930, -0.509387,
		-0.776291, -0.620353, 0.111956,
		35.418591, 33.228367, 48.923050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432117, 34.064411, 48.944256>,  <35.961994, 33.662617, 48.844681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432117, 34.064411, 48.944256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302372, 33.737560, 49.134869>,  <35.224525, 33.541451, 49.249237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.302372, 33.737560, 49.134869>,  <35.432117, 34.064411, 48.944256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302372, 33.737560, 49.134869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235394, 0.557651, 0.796000,
		-0.916175, 0.146022, -0.373230,
		-0.324365, -0.817131, 0.476533,
		35.205063, 33.492420, 49.277828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830494, 34.326752, 49.326279>,  <35.432117, 34.064411, 48.944256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830494, 34.326752, 49.326279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889729, 33.969913, 49.497036>,  <34.925270, 33.755810, 49.599491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889729, 33.969913, 49.497036>,  <34.830494, 34.326752, 49.326279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889729, 33.969913, 49.497036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345573, 0.357768, 0.867515,
		-0.926634, -0.275988, -0.255304,
		0.148084, -0.892095, 0.426894,
		34.934155, 33.702286, 49.625103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261288, 34.229706, 49.728722>,  <34.830494, 34.326752, 49.326279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261288, 34.229706, 49.728722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537769, 33.989037, 49.888832>,  <34.703659, 33.844635, 49.984898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537769, 33.989037, 49.888832>,  <34.261288, 34.229706, 49.728722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537769, 33.989037, 49.888832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215741, 0.356826, 0.908918,
		-0.689701, -0.714606, 0.116835,
		0.691208, -0.601676, 0.400273,
		34.745132, 33.808533, 50.008915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951344, 34.109982, 50.295856>,  <34.261288, 34.229706, 49.728722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951344, 34.109982, 50.295856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334000, 34.004276, 50.344868>,  <34.563591, 33.940853, 50.374275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.334000, 34.004276, 50.344868>,  <33.951344, 34.109982, 50.295856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334000, 34.004276, 50.344868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026651, 0.339469, 0.940240,
		-0.290062, -0.902733, 0.317705,
		0.956636, -0.264261, 0.122525,
		34.620991, 33.924999, 50.381626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960205, 33.679867, 50.821243>,  <33.951344, 34.109982, 50.295856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960205, 33.679867, 50.821243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325642, 33.842495, 50.818352>,  <34.544903, 33.940071, 50.816616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325642, 33.842495, 50.818352>,  <33.960205, 33.679867, 50.821243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325642, 33.842495, 50.818352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196452, 0.456877, 0.867566,
		0.356030, -0.791180, 0.497270,
		0.913592, 0.406569, -0.007233,
		34.599720, 33.964466, 50.816181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206238, 33.556198, 51.415482>,  <33.960205, 33.679867, 50.821243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206238, 33.556198, 51.415482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443504, 33.866638, 51.329861>,  <34.585865, 34.052902, 51.278488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.443504, 33.866638, 51.329861>,  <34.206238, 33.556198, 51.415482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443504, 33.866638, 51.329861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136138, 0.358740, 0.923457,
		0.793487, -0.518622, 0.318449,
		0.593165, 0.776104, -0.214051,
		34.621452, 34.099468, 51.265644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696930, 33.656204, 51.988598>,  <34.206238, 33.556198, 51.415482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696930, 33.656204, 51.988598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668732, 34.001942, 51.789425>,  <34.651814, 34.209385, 51.669922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668732, 34.001942, 51.789425>,  <34.696930, 33.656204, 51.988598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668732, 34.001942, 51.789425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010470, 0.499785, 0.866086,
		0.997457, 0.055845, -0.044284,
		-0.070499, 0.864347, -0.497930,
		34.647583, 34.261246, 51.640045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183952, 34.102119, 52.294697>,  <34.696930, 33.656204, 51.988598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183952, 34.102119, 52.294697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928570, 34.356899, 52.121872>,  <34.775341, 34.509766, 52.018177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928570, 34.356899, 52.121872>,  <35.183952, 34.102119, 52.294697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928570, 34.356899, 52.121872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075574, 0.506768, 0.858763,
		0.765942, 0.580932, -0.275411,
		-0.638453, 0.636949, -0.432058,
		34.737034, 34.547985, 51.992256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484627, 34.795654, 52.318359>,  <35.183952, 34.102119, 52.294697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484627, 34.795654, 52.318359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085800, 34.765942, 52.325691>,  <34.846504, 34.748112, 52.330090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085800, 34.765942, 52.325691>,  <35.484627, 34.795654, 52.318359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085800, 34.765942, 52.325691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014267, 0.415905, 0.909296,
		-0.075172, 0.906369, -0.415746,
		-0.997069, -0.074286, 0.018333,
		34.786678, 34.743656, 52.331192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081043, 35.501423, 52.416321>,  <35.484627, 34.795654, 52.318359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081043, 35.501423, 52.416321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913147, 35.172913, 52.570889>,  <34.812408, 34.975807, 52.663628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913147, 35.172913, 52.570889>,  <35.081043, 35.501423, 52.416321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913147, 35.172913, 52.570889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183283, 0.340273, 0.922291,
		-0.888947, 0.457945, 0.007701,
		-0.419738, -0.821280, 0.386418,
		34.787224, 34.926529, 52.686813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626427, 35.806053, 51.854019>,  <35.081043, 35.501423, 52.416321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626427, 35.806053, 51.854019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718018, 36.193977, 51.887596>,  <35.772972, 36.426731, 51.907742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718018, 36.193977, 51.887596>,  <35.626427, 35.806053, 51.854019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718018, 36.193977, 51.887596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215977, 0.033475, -0.975824,
		-0.949171, 0.241568, -0.201791,
		0.228973, 0.969806, 0.083947,
		35.786709, 36.484921, 51.912781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269676, 36.175488, 51.319912>,  <35.626427, 35.806053, 51.854019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269676, 36.175488, 51.319912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584209, 36.405884, 51.409286>,  <35.772930, 36.544121, 51.462910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584209, 36.405884, 51.409286>,  <35.269676, 36.175488, 51.319912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584209, 36.405884, 51.409286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220070, 0.076798, -0.972456,
		-0.577283, 0.813842, -0.066369,
		0.786329, 0.575989, 0.223436,
		35.820107, 36.578682, 51.476318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118652, 36.745468, 50.854576>,  <35.269676, 36.175488, 51.319912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118652, 36.745468, 50.854576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497158, 36.805206, 50.969307>,  <35.724262, 36.841049, 51.038147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.497158, 36.805206, 50.969307>,  <35.118652, 36.745468, 50.854576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497158, 36.805206, 50.969307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281883, 0.053775, -0.957941,
		-0.158492, 0.987321, 0.008786,
		0.946268, 0.149349, 0.286832,
		35.781040, 36.850010, 51.055355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364876, 37.282784, 50.560066>,  <35.118652, 36.745468, 50.854576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364876, 37.282784, 50.560066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697472, 37.077801, 50.645870>,  <35.897030, 36.954811, 50.697353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.697472, 37.077801, 50.645870>,  <35.364876, 37.282784, 50.560066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697472, 37.077801, 50.645870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303681, 0.095952, -0.947930,
		0.465189, 0.853336, 0.235406,
		0.831491, -0.512455, 0.214506,
		35.946918, 36.924065, 50.710220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835266, 37.564274, 50.197247>,  <35.364876, 37.282784, 50.560066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835266, 37.564274, 50.197247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962742, 37.189537, 50.254879>,  <36.039227, 36.964695, 50.289459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962742, 37.189537, 50.254879>,  <35.835266, 37.564274, 50.197247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962742, 37.189537, 50.254879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030764, -0.141701, -0.989431,
		0.947360, 0.319754, -0.016337,
		0.318689, -0.936845, 0.144079,
		36.058350, 36.908485, 50.298103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996284, 37.438549, 49.506207>,  <35.835266, 37.564274, 50.197247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996284, 37.438549, 49.506207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106270, 37.096943, 49.682869>,  <36.172260, 36.891979, 49.788868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106270, 37.096943, 49.682869>,  <35.996284, 37.438549, 49.506207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106270, 37.096943, 49.682869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244831, -0.382028, -0.891130,
		0.929761, 0.353157, 0.104045,
		0.274961, -0.854011, 0.441659,
		36.188759, 36.840740, 49.815365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569408, 37.194221, 49.079510>,  <35.996284, 37.438549, 49.506207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569408, 37.194221, 49.079510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408234, 36.900280, 49.297737>,  <36.311531, 36.723915, 49.428673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408234, 36.900280, 49.297737>,  <36.569408, 37.194221, 49.079510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408234, 36.900280, 49.297737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000120, -0.596138, -0.802882,
		0.915228, -0.323444, 0.240293,
		-0.402935, -0.734849, 0.545564,
		36.287354, 36.679825, 49.461407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057678, 36.611954, 49.150219>,  <36.569408, 37.194221, 49.079510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057678, 36.611954, 49.150219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677937, 36.491104, 49.184727>,  <36.450092, 36.418594, 49.205433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.677937, 36.491104, 49.184727>,  <37.057678, 36.611954, 49.150219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677937, 36.491104, 49.184727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134803, -0.639673, -0.756734,
		0.283817, -0.706780, 0.648005,
		-0.949356, -0.302127, 0.086274,
		36.393131, 36.400467, 49.210609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208740, 36.004944, 48.890610>,  <37.057678, 36.611954, 49.150219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208740, 36.004944, 48.890610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810150, 36.037708, 48.897892>,  <36.570995, 36.057365, 48.902260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810150, 36.037708, 48.897892>,  <37.208740, 36.004944, 48.890610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810150, 36.037708, 48.897892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067256, -0.649955, -0.756991,
		-0.050174, -0.755546, 0.653171,
		-0.996473, 0.081911, 0.018204,
		36.511208, 36.062283, 48.903355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830269, 35.298897, 48.976128>,  <37.208740, 36.004944, 48.890610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830269, 35.298897, 48.976128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580173, 35.547428, 48.787228>,  <36.430115, 35.696548, 48.673889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580173, 35.547428, 48.787228>,  <36.830269, 35.298897, 48.976128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580173, 35.547428, 48.787228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111924, -0.670248, -0.733649,
		-0.772365, -0.405851, 0.488608,
		-0.625241, 0.621332, -0.472251,
		36.392601, 35.733826, 48.645554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140038, 34.825935, 48.824177>,  <36.830269, 35.298897, 48.976128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140038, 34.825935, 48.824177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148998, 35.155640, 48.597870>,  <36.154373, 35.353462, 48.462086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148998, 35.155640, 48.597870>,  <36.140038, 34.825935, 48.824177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148998, 35.155640, 48.597870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200129, -0.550759, -0.810317,
		-0.979513, 0.131380, 0.152620,
		0.022403, 0.824260, -0.565768,
		36.155720, 35.402916, 48.428139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505398, 34.842484, 48.436783>,  <36.140038, 34.825935, 48.824177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505398, 34.842484, 48.436783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767509, 35.087158, 48.259495>,  <35.924778, 35.233963, 48.153122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.767509, 35.087158, 48.259495>,  <35.505398, 34.842484, 48.436783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767509, 35.087158, 48.259495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141991, -0.476545, -0.867608,
		-0.741920, 0.631460, -0.225417,
		0.655281, 0.611688, -0.443220,
		35.964092, 35.270664, 48.126530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234921, 35.076042, 47.775352>,  <35.505398, 34.842484, 48.436783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234921, 35.076042, 47.775352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631630, 35.122837, 47.754597>,  <35.869656, 35.150913, 47.742142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631630, 35.122837, 47.754597>,  <35.234921, 35.076042, 47.775352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631630, 35.122837, 47.754597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012197, -0.317243, -0.948266,
		-0.127394, 0.941101, -0.313207,
		0.991777, 0.116983, -0.051893,
		35.929165, 35.157932, 47.739029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409313, 35.477600, 47.168049>,  <35.234921, 35.076042, 47.775352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409313, 35.477600, 47.168049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752327, 35.284573, 47.239326>,  <35.958138, 35.168755, 47.282093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752327, 35.284573, 47.239326>,  <35.409313, 35.477600, 47.168049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752327, 35.284573, 47.239326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056831, -0.255407, -0.965162,
		0.511271, 0.837790, -0.191596,
		0.857538, -0.482571, 0.178194,
		36.009590, 35.139801, 47.292786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772583, 35.736332, 46.744362>,  <35.409313, 35.477600, 47.168049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772583, 35.736332, 46.744362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994961, 35.422077, 46.852951>,  <36.128387, 35.233524, 46.918102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994961, 35.422077, 46.852951>,  <35.772583, 35.736332, 46.744362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994961, 35.422077, 46.852951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141373, -0.232465, -0.962275,
		0.819108, 0.573351, -0.018170,
		0.555945, -0.785639, 0.271470,
		36.161743, 35.186386, 46.934391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528580, 35.742325, 46.299210>,  <35.772583, 35.736332, 46.744362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528580, 35.742325, 46.299210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427639, 35.382626, 46.442135>,  <36.367073, 35.166805, 46.527889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427639, 35.382626, 46.442135>,  <36.528580, 35.742325, 46.299210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427639, 35.382626, 46.442135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319942, -0.426040, -0.846243,
		0.913211, -0.099233, 0.395220,
		-0.252355, -0.899246, 0.357316,
		36.351933, 35.112850, 46.549328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004063, 35.266045, 45.941772>,  <36.528580, 35.742325, 46.299210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004063, 35.266045, 45.941772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741920, 35.000454, 46.085796>,  <36.584637, 34.841099, 46.172211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741920, 35.000454, 46.085796>,  <37.004063, 35.266045, 45.941772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741920, 35.000454, 46.085796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208413, -0.617152, -0.758741,
		0.726002, -0.422200, 0.542834,
		-0.655351, -0.663981, 0.360061,
		36.545315, 34.801258, 46.193813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324493, 34.585266, 45.846352>,  <37.004063, 35.266045, 45.941772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324493, 34.585266, 45.846352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936741, 34.502663, 45.899490>,  <36.704090, 34.453102, 45.931374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936741, 34.502663, 45.899490>,  <37.324493, 34.585266, 45.846352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936741, 34.502663, 45.899490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056909, -0.715243, -0.696555,
		0.238862, -0.667669, 0.705098,
		-0.969385, -0.206507, 0.132848,
		36.645924, 34.440712, 45.939346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209656, 33.805325, 45.752666>,  <37.324493, 34.585266, 45.846352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209656, 33.805325, 45.752666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857525, 33.976250, 45.670277>,  <36.646248, 34.078804, 45.620842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857525, 33.976250, 45.670277>,  <37.209656, 33.805325, 45.752666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857525, 33.976250, 45.670277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133904, -0.640395, -0.756283,
		-0.455075, -0.638196, 0.620977,
		-0.880328, 0.427317, -0.205970,
		36.593426, 34.104446, 45.608486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738243, 33.269104, 45.581299>,  <37.209656, 33.805325, 45.752666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738243, 33.269104, 45.581299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554234, 33.582294, 45.413811>,  <36.443829, 33.770206, 45.313316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554234, 33.582294, 45.413811>,  <36.738243, 33.269104, 45.581299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554234, 33.582294, 45.413811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177244, -0.543072, -0.820766,
		-0.870034, -0.303358, 0.388605,
		-0.460027, 0.782973, -0.418722,
		36.416225, 33.817184, 45.288193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058392, 33.034386, 45.228012>,  <36.738243, 33.269104, 45.581299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058392, 33.034386, 45.228012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141823, 33.383461, 45.051422>,  <36.191883, 33.592907, 44.945469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141823, 33.383461, 45.051422>,  <36.058392, 33.034386, 45.228012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141823, 33.383461, 45.051422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163891, -0.413832, -0.895479,
		-0.964175, 0.259135, 0.056708,
		0.208583, 0.872692, -0.441476,
		36.204399, 33.645267, 44.918980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566307, 32.983128, 44.665977>,  <36.058392, 33.034386, 45.228012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566307, 32.983128, 44.665977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841866, 33.260754, 44.582363>,  <36.007202, 33.427330, 44.532196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841866, 33.260754, 44.582363>,  <35.566307, 32.983128, 44.665977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841866, 33.260754, 44.582363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151490, -0.144157, -0.977890,
		-0.708852, 0.705333, 0.005834,
		0.688897, 0.694063, -0.209037,
		36.048534, 33.468971, 44.519653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225544, 33.441483, 44.100925>,  <35.566307, 32.983128, 44.665977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225544, 33.441483, 44.100925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620064, 33.498074, 44.066982>,  <35.856773, 33.532028, 44.046616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620064, 33.498074, 44.066982>,  <35.225544, 33.441483, 44.100925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620064, 33.498074, 44.066982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067167, -0.125472, -0.989821,
		-0.150684, 0.981958, -0.114250,
		0.986298, 0.141476, -0.084862,
		35.915955, 33.540516, 44.041523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389538, 33.977619, 43.558102>,  <35.225544, 33.441483, 44.100925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389538, 33.977619, 43.558102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702343, 33.733177, 43.607094>,  <35.890026, 33.586514, 43.636490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.702343, 33.733177, 43.607094>,  <35.389538, 33.977619, 43.558102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702343, 33.733177, 43.607094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034000, -0.238050, -0.970658,
		0.622331, 0.754905, -0.206937,
		0.782016, -0.611106, 0.122479,
		35.936947, 33.549847, 43.643837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750004, 34.111149, 42.973820>,  <35.389538, 33.977619, 43.558102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750004, 34.111149, 42.973820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895645, 33.757092, 43.089714>,  <35.983028, 33.544655, 43.159248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.895645, 33.757092, 43.089714>,  <35.750004, 34.111149, 42.973820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895645, 33.757092, 43.089714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001122, -0.310667, -0.950518,
		0.931358, 0.346411, -0.112122,
		0.364102, -0.885147, 0.289731,
		36.004875, 33.491547, 43.176632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319153, 34.076824, 42.556858>,  <35.750004, 34.111149, 42.973820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319153, 34.076824, 42.556858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309338, 33.705238, 42.704605>,  <36.303448, 33.482288, 42.793251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.309338, 33.705238, 42.704605>,  <36.319153, 34.076824, 42.556858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309338, 33.705238, 42.704605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103032, -0.369859, -0.923357,
		0.994375, 0.015397, 0.104789,
		-0.024540, -0.928960, 0.369365,
		36.301975, 33.426552, 42.815414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073601, 33.993416, 42.534210>,  <36.319153, 34.076824, 42.556858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073601, 33.993416, 42.534210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807308, 33.695133, 42.523407>,  <36.647533, 33.516163, 42.516926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807308, 33.695133, 42.523407>,  <37.073601, 33.993416, 42.534210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807308, 33.695133, 42.523407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157061, -0.104644, -0.982029,
		0.729476, -0.658009, 0.186785,
		-0.665730, -0.745703, -0.027012,
		36.607590, 33.471424, 42.515305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257057, 33.842705, 41.978065>,  <37.073601, 33.993416, 42.534210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257057, 33.842705, 41.978065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945847, 33.594524, 42.017483>,  <36.759121, 33.445614, 42.041134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945847, 33.594524, 42.017483>,  <37.257057, 33.842705, 41.978065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945847, 33.594524, 42.017483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056178, -0.087521, -0.994577,
		0.625715, -0.779343, 0.033238,
		-0.778026, -0.620455, 0.098545,
		36.712440, 33.408386, 42.047047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425751, 33.245895, 41.630695>,  <37.257057, 33.842705, 41.978065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425751, 33.245895, 41.630695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026562, 33.255672, 41.654213>,  <36.787048, 33.261539, 41.668324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026562, 33.255672, 41.654213>,  <37.425751, 33.245895, 41.630695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026562, 33.255672, 41.654213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062337, -0.187305, -0.980322,
		-0.012945, -0.981998, 0.188448,
		-0.997971, 0.024437, 0.058790,
		36.727169, 33.263004, 41.671848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138428, 32.715717, 41.335625>,  <37.425751, 33.245895, 41.630695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138428, 32.715717, 41.335625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822353, 32.957542, 41.295406>,  <36.632710, 33.102638, 41.271275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822353, 32.957542, 41.295406>,  <37.138428, 32.715717, 41.335625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822353, 32.957542, 41.295406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045780, -0.221829, -0.974010,
		-0.611154, -0.765047, 0.202963,
		-0.790187, 0.604562, -0.100548,
		36.585297, 33.138912, 41.265244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774353, 32.433334, 40.855747>,  <37.138428, 32.715717, 41.335625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774353, 32.433334, 40.855747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626289, 32.804901, 40.859531>,  <36.537453, 33.027843, 40.861801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626289, 32.804901, 40.859531>,  <36.774353, 32.433334, 40.855747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626289, 32.804901, 40.859531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055353, 0.032217, -0.997947,
		-0.927319, -0.368873, -0.063344,
		-0.370157, 0.928921, 0.009457,
		36.515244, 33.083576, 40.862370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366096, 32.381153, 40.296928>,  <36.774353, 32.433334, 40.855747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366096, 32.381153, 40.296928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493378, 32.748768, 40.389977>,  <36.569744, 32.969337, 40.445805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493378, 32.748768, 40.389977>,  <36.366096, 32.381153, 40.296928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493378, 32.748768, 40.389977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341857, 0.117630, -0.932361,
		-0.884241, 0.376199, -0.276751,
		0.318200, 0.919042, 0.232619,
		36.588837, 33.024479, 40.459763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543514, 32.643536, 39.716869>,  <36.366096, 32.381153, 40.296928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543514, 32.643536, 39.716869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699345, 32.961731, 39.902527>,  <36.792843, 33.152649, 40.013920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699345, 32.961731, 39.902527>,  <36.543514, 32.643536, 39.716869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699345, 32.961731, 39.902527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433658, 0.286161, -0.854431,
		-0.812509, 0.534147, -0.233488,
		0.389576, 0.795487, 0.464145,
		36.816219, 33.200378, 40.041771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402241, 33.206261, 39.292980>,  <36.543514, 32.643536, 39.716869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402241, 33.206261, 39.292980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718227, 33.286133, 39.524868>,  <36.907822, 33.334057, 39.664001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718227, 33.286133, 39.524868>,  <36.402241, 33.206261, 39.292980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718227, 33.286133, 39.524868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529062, 0.255901, -0.809079,
		-0.309909, 0.945855, 0.096510,
		0.789968, 0.199682, 0.579722,
		36.955219, 33.346039, 39.698784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607361, 33.907990, 39.208488>,  <36.402241, 33.206261, 39.292980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607361, 33.907990, 39.208488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918831, 33.694023, 39.339661>,  <37.105713, 33.565643, 39.418362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.918831, 33.694023, 39.339661>,  <36.607361, 33.907990, 39.208488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918831, 33.694023, 39.339661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595810, 0.466573, -0.653697,
		0.196670, 0.704398, 0.682015,
		0.778673, -0.534914, 0.327927,
		37.152431, 33.533550, 39.438038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017677, 34.407661, 39.049809>,  <36.607361, 33.907990, 39.208488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017677, 34.407661, 39.049809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242516, 34.087383, 39.132698>,  <37.377419, 33.895218, 39.182434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.242516, 34.087383, 39.132698>,  <37.017677, 34.407661, 39.049809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242516, 34.087383, 39.132698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774379, 0.421494, -0.471890,
		0.290493, 0.425719, 0.856958,
		0.562095, -0.800691, 0.207227,
		37.411144, 33.847176, 39.194866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564037, 34.691929, 39.418831>,  <37.017677, 34.407661, 39.049809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564037, 34.691929, 39.418831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684204, 34.331902, 39.292572>,  <37.756306, 34.115887, 39.216816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684204, 34.331902, 39.292572>,  <37.564037, 34.691929, 39.418831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684204, 34.331902, 39.292572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770163, 0.424133, -0.476403,
		0.562670, -0.099980, 0.820613,
		0.300419, -0.900064, -0.315648,
		37.774330, 34.061882, 39.197876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286461, 34.781395, 39.413235>,  <37.564037, 34.691929, 39.418831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286461, 34.781395, 39.413235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243404, 34.426563, 39.233677>,  <38.217571, 34.213665, 39.125942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243404, 34.426563, 39.233677>,  <38.286461, 34.781395, 39.413235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243404, 34.426563, 39.233677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652493, 0.277634, -0.705105,
		0.750110, -0.368802, 0.548926,
		-0.107644, -0.887076, -0.448897,
		38.211113, 34.160439, 39.099007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974861, 34.465702, 39.314362>,  <38.286461, 34.781395, 39.413235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974861, 34.465702, 39.314362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707783, 34.348991, 39.040413>,  <38.547535, 34.278965, 38.876045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707783, 34.348991, 39.040413>,  <38.974861, 34.465702, 39.314362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707783, 34.348991, 39.040413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539784, 0.443791, -0.715320,
		0.512656, -0.847298, -0.138818,
		-0.667695, -0.291782, -0.684870,
		38.507473, 34.261456, 38.834953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171013, 33.883026, 38.992714>,  <38.974861, 34.465702, 39.314362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171013, 33.883026, 38.992714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928169, 34.068417, 38.734535>,  <38.782463, 34.179653, 38.579628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928169, 34.068417, 38.734535>,  <39.171013, 33.883026, 38.992714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928169, 34.068417, 38.734535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791742, 0.421849, -0.441801,
		0.067514, -0.779250, -0.623067,
		-0.607113, 0.463480, -0.645445,
		38.746037, 34.207462, 38.540901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323444, 33.732327, 38.258949>,  <39.171013, 33.883026, 38.992714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323444, 33.732327, 38.258949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173698, 34.102425, 38.283535>,  <39.083851, 34.324482, 38.298286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173698, 34.102425, 38.283535>,  <39.323444, 33.732327, 38.258949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173698, 34.102425, 38.283535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764787, 0.345565, -0.543770,
		-0.524359, -0.156560, -0.836981,
		-0.374363, 0.925243, 0.061465,
		39.061390, 34.379997, 38.301975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220104, 33.902737, 37.503273>,  <39.323444, 33.732327, 38.258949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220104, 33.902737, 37.503273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264030, 34.206402, 37.759903>,  <39.290386, 34.388599, 37.913879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264030, 34.206402, 37.759903>,  <39.220104, 33.902737, 37.503273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264030, 34.206402, 37.759903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832335, 0.282577, -0.476832,
		-0.543286, 0.586368, -0.600844,
		0.109814, 0.759159, 0.641575,
		39.296974, 34.434151, 37.952374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212055, 34.440174, 37.155643>,  <39.220104, 33.902737, 37.503273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.212055, 34.440174, 37.155643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446205, 34.486320, 37.476646>,  <39.586697, 34.514008, 37.669250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446205, 34.486320, 37.476646>,  <39.212055, 34.440174, 37.155643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446205, 34.486320, 37.476646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737561, 0.335237, -0.586191,
		-0.336655, 0.935044, 0.111154,
		0.585377, 0.115361, 0.802512,
		39.621819, 34.520927, 37.717400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457218, 35.087971, 37.161572>,  <39.212055, 34.440174, 37.155643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457218, 35.087971, 37.161572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730206, 34.845390, 37.324768>,  <39.893997, 34.699841, 37.422684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730206, 34.845390, 37.324768>,  <39.457218, 35.087971, 37.161572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730206, 34.845390, 37.324768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669204, 0.293954, -0.682464,
		0.293954, 0.738786, 0.606455,
		0.682464, -0.606455, 0.407990,
		39.934944, 34.663452, 37.447166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177498, 35.413193, 37.037086>,  <39.457218, 35.087971, 37.161572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177498, 35.413193, 37.037086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203781, 35.023335, 37.122643>,  <40.219551, 34.789421, 37.173977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203781, 35.023335, 37.122643>,  <40.177498, 35.413193, 37.037086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203781, 35.023335, 37.122643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613665, -0.129553, -0.778866,
		0.786827, 0.182438, 0.589592,
		0.065711, -0.974645, 0.213891,
		40.223495, 34.730942, 37.186810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894562, 35.236397, 37.056763>,  <40.177498, 35.413193, 37.037086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894562, 35.236397, 37.056763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665916, 34.924114, 36.955761>,  <40.528728, 34.736744, 36.895161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.665916, 34.924114, 36.955761>,  <40.894562, 35.236397, 37.056763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665916, 34.924114, 36.955761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496140, -0.083755, -0.864193,
		0.653530, -0.619263, 0.435214,
		-0.571614, -0.780704, -0.252505,
		40.494431, 34.689903, 36.880009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363708, 34.677036, 37.165756>,  <40.894562, 35.236397, 37.056763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363708, 34.677036, 37.165756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335194, 34.911247, 36.842754>,  <41.318085, 35.051773, 36.648952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335194, 34.911247, 36.842754>,  <41.363708, 34.677036, 37.165756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335194, 34.911247, 36.842754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871664, 0.430124, 0.234934,
		0.484890, -0.687128, -0.541051,
		-0.071289, 0.585532, -0.807509,
		41.313808, 35.086906, 36.600502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914745, 34.287159, 37.444504>,  <41.363708, 34.677036, 37.165756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914745, 34.287159, 37.444504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304871, 34.339973, 37.373711>,  <42.538948, 34.371662, 37.331234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304871, 34.339973, 37.373711>,  <41.914745, 34.287159, 37.444504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304871, 34.339973, 37.373711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144415, -0.987760, 0.058939,
		-0.167036, -0.083043, -0.982447,
		0.975317, 0.132035, -0.176985,
		42.597466, 34.379585, 37.320614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070274, 33.911018, 36.929092>,  <41.914745, 34.287159, 37.444504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070274, 33.911018, 36.929092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423584, 33.970711, 37.106880>,  <42.635571, 34.006527, 37.213554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.423584, 33.970711, 37.106880>,  <42.070274, 33.911018, 36.929092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.423584, 33.970711, 37.106880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097235, -0.985687, 0.137721,
		0.458660, -0.078428, -0.885144,
		0.883276, 0.149234, 0.444469,
		42.688568, 34.015480, 37.240219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575348, 33.371956, 36.704063>,  <42.070274, 33.911018, 36.929092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575348, 33.371956, 36.704063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691799, 33.495083, 37.066387>,  <42.761669, 33.568958, 37.283783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691799, 33.495083, 37.066387>,  <42.575348, 33.371956, 36.704063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691799, 33.495083, 37.066387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127540, -0.950858, 0.282138,
		0.948144, 0.033389, -0.316081,
		0.291128, 0.307821, 0.905809,
		42.779137, 33.587429, 37.338131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072178, 32.941784, 36.817516>,  <42.575348, 33.371956, 36.704063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072178, 32.941784, 36.817516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020020, 33.093922, 37.183758>,  <42.988724, 33.185204, 37.403503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.020020, 33.093922, 37.183758>,  <43.072178, 32.941784, 36.817516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.020020, 33.093922, 37.183758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213109, -0.891153, 0.400538,
		0.968287, 0.247354, 0.035152,
		-0.130400, 0.380344, 0.915606,
		42.980900, 33.208027, 37.458439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.531673, 32.649353, 37.231503>,  <43.072178, 32.941784, 36.817516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.531673, 32.649353, 37.231503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286118, 32.784737, 37.516762>,  <43.138783, 32.865967, 37.687916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286118, 32.784737, 37.516762>,  <43.531673, 32.649353, 37.231503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286118, 32.784737, 37.516762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013521, -0.898779, 0.438194,
		0.789273, 0.278647, 0.547179,
		-0.613894, 0.338456, 0.713149,
		43.101948, 32.886272, 37.730705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.778770, 32.335781, 37.865322>,  <43.531673, 32.649353, 37.231503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.778770, 32.335781, 37.865322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.397800, 32.451687, 37.903114>,  <43.169220, 32.521229, 37.925789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.397800, 32.451687, 37.903114>,  <43.778770, 32.335781, 37.865322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.397800, 32.451687, 37.903114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241301, -0.906288, 0.347009,
		0.186180, 0.307700, 0.933090,
		-0.952424, 0.289762, 0.094484,
		43.112072, 32.538616, 37.931461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666824, 32.180717, 38.628162>,  <43.778770, 32.335781, 37.865322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.666824, 32.180717, 38.628162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.317196, 32.213772, 38.436672>,  <43.107418, 32.233604, 38.321777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.317196, 32.213772, 38.436672>,  <43.666824, 32.180717, 38.628162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.317196, 32.213772, 38.436672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329824, -0.824451, 0.459887,
		-0.356681, 0.559867, 0.747882,
		-0.874068, 0.082637, -0.478724,
		43.054974, 32.238564, 38.293056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.166748, 32.085606, 39.195843>,  <43.666824, 32.180717, 38.628162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.166748, 32.085606, 39.195843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956234, 31.992121, 38.868820>,  <42.829926, 31.936029, 38.672607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956234, 31.992121, 38.868820>,  <43.166748, 32.085606, 39.195843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956234, 31.992121, 38.868820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342001, -0.822104, 0.455170,
		-0.778499, 0.519154, 0.352729,
		-0.526283, -0.233716, -0.817559,
		42.798347, 31.922007, 38.623554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472717, 31.808973, 39.444443>,  <43.166748, 32.085606, 39.195843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.472717, 31.808973, 39.444443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506180, 31.693817, 39.062843>,  <42.526257, 31.624723, 38.833881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.506180, 31.693817, 39.062843>,  <42.472717, 31.808973, 39.444443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506180, 31.693817, 39.062843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279030, -0.925829, 0.254919,
		-0.956632, 0.244870, -0.157779,
		0.083654, -0.287888, -0.954003,
		42.531277, 31.607450, 38.776642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973671, 31.438082, 39.399841>,  <42.472717, 31.808973, 39.444443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973671, 31.438082, 39.399841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228748, 31.307217, 39.120899>,  <42.381794, 31.228697, 38.953533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.228748, 31.307217, 39.120899>,  <41.973671, 31.438082, 39.399841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.228748, 31.307217, 39.120899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233915, -0.944818, 0.229354,
		-0.733913, 0.016865, -0.679034,
		0.637695, -0.327162, -0.697359,
		42.420055, 31.209068, 38.911690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595665, 30.970995, 38.928467>,  <41.973671, 31.438082, 39.399841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595665, 30.970995, 38.928467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.968548, 30.876133, 38.819103>,  <42.192276, 30.819216, 38.753483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.968548, 30.876133, 38.819103>,  <41.595665, 30.970995, 38.928467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.968548, 30.876133, 38.819103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258150, -0.965147, -0.043015,
		-0.253680, 0.110680, -0.960935,
		0.932204, -0.237153, -0.273411,
		42.248211, 30.804987, 38.737080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501911, 30.497143, 38.412502>,  <41.595665, 30.970995, 38.928467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501911, 30.497143, 38.412502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882896, 30.448774, 38.524345>,  <42.111488, 30.419752, 38.591454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.882896, 30.448774, 38.524345>,  <41.501911, 30.497143, 38.412502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882896, 30.448774, 38.524345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176543, -0.967107, 0.183129,
		0.248271, -0.223788, -0.942486,
		0.952468, -0.120923, 0.279613,
		42.168636, 30.412497, 38.608231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.741302, 29.946512, 37.986843>,  <41.501911, 30.497143, 38.412502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.741302, 29.946512, 37.986843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969147, 29.969820, 38.314781>,  <42.105854, 29.983805, 38.511543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969147, 29.969820, 38.314781>,  <41.741302, 29.946512, 37.986843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969147, 29.969820, 38.314781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177257, -0.965302, 0.191762,
		0.802571, -0.254553, -0.539520,
		0.569613, 0.058270, 0.819845,
		42.140030, 29.987301, 38.560734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.190422, 29.317404, 38.034229>,  <41.741302, 29.946512, 37.986843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.190422, 29.317404, 38.034229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178829, 29.446890, 38.412514>,  <42.171871, 29.524582, 38.639484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178829, 29.446890, 38.412514>,  <42.190422, 29.317404, 38.034229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178829, 29.446890, 38.412514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112759, -0.941128, 0.318689,
		0.993200, -0.097401, 0.063779,
		-0.028984, 0.323714, 0.945711,
		42.170135, 29.544004, 38.696228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528961, 28.798521, 38.511044>,  <42.190422, 29.317404, 38.034229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.528961, 28.798521, 38.511044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319153, 28.981045, 38.798557>,  <42.193268, 29.090559, 38.971066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319153, 28.981045, 38.798557>,  <42.528961, 28.798521, 38.511044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319153, 28.981045, 38.798557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134139, -0.877993, 0.459494,
		0.840762, 0.144598, 0.521737,
		-0.524524, 0.456311, 0.718787,
		42.161797, 29.117937, 39.014194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723667, 28.418940, 39.048153>,  <42.528961, 28.798521, 38.511044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723667, 28.418940, 39.048153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383587, 28.586891, 39.175186>,  <42.179539, 28.687662, 39.251408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.383587, 28.586891, 39.175186>,  <42.723667, 28.418940, 39.048153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.383587, 28.586891, 39.175186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257576, -0.857874, 0.444643,
		0.459142, 0.296234, 0.837517,
		-0.850202, 0.419878, 0.317583,
		42.128525, 28.712854, 39.270462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.741421, 28.374296, 39.709206>,  <42.723667, 28.418940, 39.048153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.741421, 28.374296, 39.709206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352844, 28.435957, 39.637047>,  <42.119698, 28.472954, 39.593754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352844, 28.435957, 39.637047>,  <42.741421, 28.374296, 39.709206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352844, 28.435957, 39.637047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225752, -0.834559, 0.502542,
		-0.073080, 0.528913, 0.845524,
		-0.971440, 0.154153, -0.180392,
		42.061413, 28.482203, 39.582928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.383411, 28.164349, 40.319866>,  <42.741421, 28.374296, 39.709206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.383411, 28.164349, 40.319866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100803, 28.155750, 40.036919>,  <41.931240, 28.150591, 39.867149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.100803, 28.155750, 40.036919>,  <42.383411, 28.164349, 40.319866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100803, 28.155750, 40.036919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406255, -0.806120, 0.430265,
		-0.579474, 0.591362, 0.560804,
		-0.706518, -0.021498, -0.707369,
		41.888847, 28.149302, 39.824707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744019, 28.081913, 40.698498>,  <42.383411, 28.164349, 40.319866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744019, 28.081913, 40.698498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666920, 27.970682, 40.322090>,  <41.620663, 27.903944, 40.096245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666920, 27.970682, 40.322090>,  <41.744019, 28.081913, 40.698498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666920, 27.970682, 40.322090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428498, -0.838881, 0.335661,
		-0.882746, 0.467922, 0.042533,
		-0.192743, -0.278078, -0.941022,
		41.609097, 27.887259, 40.039783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025990, 28.022976, 40.713577>,  <41.744019, 28.081913, 40.698498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025990, 28.022976, 40.713577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163265, 27.799109, 40.411850>,  <41.245632, 27.664787, 40.230816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.163265, 27.799109, 40.411850>,  <41.025990, 28.022976, 40.713577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.163265, 27.799109, 40.411850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482066, -0.794202, 0.369940,
		-0.806124, 0.236672, -0.542357,
		0.343187, -0.559669, -0.754317,
		41.266224, 27.631208, 40.185555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435768, 27.710793, 40.321388>,  <41.025990, 28.022976, 40.713577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435768, 27.710793, 40.321388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744541, 27.468769, 40.243382>,  <40.929806, 27.323555, 40.196579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.744541, 27.468769, 40.243382>,  <40.435768, 27.710793, 40.321388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744541, 27.468769, 40.243382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517551, -0.776285, 0.359893,
		-0.369141, -0.176884, -0.912385,
		0.771930, -0.605057, -0.195012,
		40.976120, 27.287252, 40.184879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941723, 28.198334, 39.881424>,  <40.435768, 27.710793, 40.321388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941723, 28.198334, 39.881424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226048, 28.147518, 39.604698>,  <40.396645, 28.117029, 39.438663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226048, 28.147518, 39.604698>,  <39.941723, 28.198334, 39.881424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226048, 28.147518, 39.604698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575134, -0.671188, -0.467683,
		-0.404921, 0.730320, -0.550156,
		0.710816, -0.127039, -0.691810,
		40.439293, 28.109407, 39.397156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729801, 28.416029, 39.127094>,  <39.941723, 28.198334, 39.881424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729801, 28.416029, 39.127094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003178, 28.126875, 39.167786>,  <40.167202, 27.953382, 39.192200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003178, 28.126875, 39.167786>,  <39.729801, 28.416029, 39.127094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003178, 28.126875, 39.167786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692115, -0.685953, -0.224600,
		0.232141, 0.083092, -0.969127,
		0.683438, -0.722886, 0.101728,
		40.208210, 27.910009, 39.198303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639328, 27.816755, 38.503559>,  <39.729801, 28.416029, 39.127094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639328, 27.816755, 38.503559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823040, 27.705248, 38.840927>,  <39.933266, 27.638344, 39.043346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823040, 27.705248, 38.840927>,  <39.639328, 27.816755, 38.503559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823040, 27.705248, 38.840927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626631, -0.774646, 0.085189,
		0.629600, -0.567636, -0.530465,
		0.459279, -0.278771, 0.843416,
		39.960823, 27.621616, 39.093952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868973, 28.314400, 37.971916>,  <39.639328, 27.816755, 38.503559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868973, 28.314400, 37.971916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579391, 28.475071, 37.747578>,  <39.405643, 28.571474, 37.612976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579391, 28.475071, 37.747578>,  <39.868973, 28.314400, 37.971916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579391, 28.475071, 37.747578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508931, -0.237859, -0.827292,
		-0.465708, -0.884351, -0.032228,
		-0.723951, 0.401678, -0.560847,
		39.362206, 28.595573, 37.579323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545330, 28.938135, 37.912308>,  <39.868973, 28.314400, 37.971916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545330, 28.938135, 37.912308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909874, 29.100880, 37.937271>,  <40.128601, 29.198526, 37.952248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909874, 29.100880, 37.937271>,  <39.545330, 28.938135, 37.912308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909874, 29.100880, 37.937271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329490, -0.630205, -0.703049,
		-0.246713, 0.661291, -0.708398,
		0.911356, 0.406861, 0.062409,
		40.183281, 29.222939, 37.955994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749439, 29.091135, 37.162800>,  <39.545330, 28.938135, 37.912308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749439, 29.091135, 37.162800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087502, 29.053661, 37.373299>,  <40.290337, 29.031178, 37.499599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087502, 29.053661, 37.373299>,  <39.749439, 29.091135, 37.162800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087502, 29.053661, 37.373299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377385, -0.592647, -0.711583,
		0.378545, 0.799995, -0.465523,
		0.845153, -0.093684, 0.526250,
		40.341049, 29.025557, 37.531174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298420, 28.581161, 36.657234>,  <39.749439, 29.091135, 37.162800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298420, 28.581161, 36.657234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359760, 28.271791, 36.411213>,  <39.396564, 28.086168, 36.263599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359760, 28.271791, 36.411213>,  <39.298420, 28.581161, 36.657234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359760, 28.271791, 36.411213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265657, 0.631771, -0.728211,
		0.951794, -0.051725, 0.302347,
		0.153347, -0.773427, -0.615057,
		39.405766, 28.039762, 36.226696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605000, 28.809826, 36.365147>,  <39.298420, 28.581161, 36.657234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605000, 28.809826, 36.365147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362072, 28.960812, 36.085522>,  <38.216316, 29.051403, 35.917747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362072, 28.960812, 36.085522>,  <38.605000, 28.809826, 36.365147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362072, 28.960812, 36.085522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660948, 0.728285, -0.180969,
		0.440804, -0.571947, -0.691786,
		-0.607322, 0.377463, -0.699058,
		38.179874, 29.074051, 35.875805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889084, 28.698236, 35.749416>,  <38.605000, 28.809826, 36.365147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889084, 28.698236, 35.749416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664791, 29.028786, 35.770130>,  <38.530216, 29.227116, 35.782558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664791, 29.028786, 35.770130>,  <38.889084, 28.698236, 35.749416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664791, 29.028786, 35.770130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807073, 0.559469, -0.188751,
		-0.184953, -0.064043, -0.980659,
		-0.560736, 0.826373, 0.051787,
		38.496571, 29.276697, 35.785667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167183, 29.245424, 35.462982>,  <38.889084, 28.698236, 35.749416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167183, 29.245424, 35.462982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905228, 29.484007, 35.648609>,  <38.748055, 29.627157, 35.759983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905228, 29.484007, 35.648609>,  <39.167183, 29.245424, 35.462982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905228, 29.484007, 35.648609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664239, 0.747168, -0.022952,
		-0.360423, 0.293218, -0.885504,
		-0.654891, 0.596459, 0.464064,
		38.708759, 29.662945, 35.787827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099857, 29.738504, 34.972187>,  <39.167183, 29.245424, 35.462982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099857, 29.738504, 34.972187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985149, 29.882833, 35.327168>,  <38.916325, 29.969431, 35.540157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985149, 29.882833, 35.327168>,  <39.099857, 29.738504, 34.972187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985149, 29.882833, 35.327168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592481, 0.794750, -0.131676,
		-0.752813, 0.488037, -0.441693,
		-0.286773, 0.360822, 0.887451,
		38.899117, 29.991079, 35.593403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943680, 30.425201, 34.864243>,  <39.099857, 29.738504, 34.972187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943680, 30.425201, 34.864243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068836, 30.372696, 35.240513>,  <39.143929, 30.341192, 35.466274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068836, 30.372696, 35.240513>,  <38.943680, 30.425201, 34.864243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068836, 30.372696, 35.240513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648634, 0.753011, -0.110673,
		-0.693811, 0.644782, 0.320752,
		0.312890, -0.131265, 0.940675,
		39.162704, 30.333317, 35.522717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943867, 31.083979, 35.115459>,  <38.943680, 30.425201, 34.864243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943867, 31.083979, 35.115459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173260, 30.855621, 35.350471>,  <39.310898, 30.718607, 35.491478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.173260, 30.855621, 35.350471>,  <38.943867, 31.083979, 35.115459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173260, 30.855621, 35.350471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721650, 0.691496, -0.032482,
		-0.387732, 0.442621, 0.808548,
		0.573485, -0.570894, 0.587532,
		39.345306, 30.684353, 35.526730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178360, 31.520287, 35.763412>,  <38.943867, 31.083979, 35.115459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178360, 31.520287, 35.763412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445904, 31.225107, 35.727509>,  <39.606430, 31.048000, 35.705967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.445904, 31.225107, 35.727509>,  <39.178360, 31.520287, 35.763412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445904, 31.225107, 35.727509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739194, 0.647422, 0.185571,
		-0.078828, -0.190472, 0.978523,
		0.668863, -0.737947, -0.089761,
		39.646564, 31.003723, 35.700581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754169, 31.843250, 36.066910>,  <39.178360, 31.520287, 35.763412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754169, 31.843250, 36.066910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909344, 31.506252, 35.917400>,  <40.002449, 31.304054, 35.827694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909344, 31.506252, 35.917400>,  <39.754169, 31.843250, 36.066910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909344, 31.506252, 35.917400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890142, 0.447655, -0.085160,
		0.239070, -0.299679, 0.923601,
		0.387934, -0.842495, -0.373777,
		40.025723, 31.253504, 35.805267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377419, 31.675045, 36.399902>,  <39.754169, 31.843250, 36.066910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377419, 31.675045, 36.399902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405083, 31.526978, 36.029346>,  <40.421680, 31.438137, 35.807014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405083, 31.526978, 36.029346>,  <40.377419, 31.675045, 36.399902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405083, 31.526978, 36.029346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809859, 0.563078, -0.164535,
		0.582534, -0.738864, 0.338725,
		0.069160, -0.370167, -0.926387,
		40.425831, 31.415928, 35.751431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026794, 31.523609, 36.396511>,  <40.377419, 31.675045, 36.399902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026794, 31.523609, 36.396511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919003, 31.535166, 36.011482>,  <40.854328, 31.542101, 35.780464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919003, 31.535166, 36.011482>,  <41.026794, 31.523609, 36.396511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919003, 31.535166, 36.011482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816890, 0.536183, -0.212601,
		0.509971, -0.843607, -0.168095,
		-0.269481, 0.028894, -0.962572,
		40.838158, 31.543835, 35.722710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661739, 31.498865, 35.929527>,  <41.026794, 31.523609, 36.396511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661739, 31.498865, 35.929527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401226, 31.619537, 35.651012>,  <41.244919, 31.691940, 35.483902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.401226, 31.619537, 35.651012>,  <41.661739, 31.498865, 35.929527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401226, 31.619537, 35.651012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731632, 0.493117, -0.470690,
		0.201353, -0.815980, -0.541879,
		-0.651284, 0.301682, -0.696288,
		41.205841, 31.710041, 35.442127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974251, 31.403070, 35.162769>,  <41.661739, 31.498865, 35.929527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974251, 31.403070, 35.162769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686485, 31.680883, 35.159225>,  <41.513828, 31.847570, 35.157101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686485, 31.680883, 35.159225>,  <41.974251, 31.403070, 35.162769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686485, 31.680883, 35.159225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646004, 0.664350, -0.375923,
		-0.255205, -0.276165, -0.926609,
		-0.719409, 0.694530, -0.008859,
		41.470661, 31.889242, 35.156567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350941, 31.908653, 34.778053>,  <41.974251, 31.403070, 35.162769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350941, 31.908653, 34.778053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012402, 32.087276, 34.894180>,  <41.809277, 32.194450, 34.963856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012402, 32.087276, 34.894180>,  <42.350941, 31.908653, 34.778053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012402, 32.087276, 34.894180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322090, 0.863197, -0.388778,
		-0.424210, -0.235535, -0.874397,
		-0.846348, 0.446558, 0.290313,
		41.758499, 32.221245, 34.981274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070961, 32.200420, 34.211018>,  <42.350941, 31.908653, 34.778053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070961, 32.200420, 34.211018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992771, 32.390312, 34.554279>,  <41.945858, 32.504246, 34.760235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992771, 32.390312, 34.554279>,  <42.070961, 32.200420, 34.211018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992771, 32.390312, 34.554279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510105, 0.796566, -0.324463,
		-0.837606, 0.374325, -0.397866,
		-0.195472, 0.474725, 0.858153,
		41.934128, 32.532730, 34.811726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109104, 32.864716, 33.979095>,  <42.070961, 32.200420, 34.211018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109104, 32.864716, 33.979095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159634, 32.878189, 34.375664>,  <42.189953, 32.886272, 34.613605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.159634, 32.878189, 34.375664>,  <42.109104, 32.864716, 33.979095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159634, 32.878189, 34.375664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815813, 0.565052, -0.123144,
		-0.564350, 0.824367, 0.043903,
		0.126323, 0.033680, 0.991417,
		42.197529, 32.888294, 34.673088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200207, 33.607658, 34.136852>,  <42.109104, 32.864716, 33.979095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200207, 33.607658, 34.136852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.340733, 33.393356, 34.443977>,  <42.425049, 33.264774, 34.628254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.340733, 33.393356, 34.443977>,  <42.200207, 33.607658, 34.136852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340733, 33.393356, 34.443977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806727, 0.589418, 0.042156,
		-0.475150, 0.604607, 0.639283,
		0.351317, -0.535758, 0.767815,
		42.446129, 33.232628, 34.674320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430534, 34.039581, 34.596542>,  <42.200207, 33.607658, 34.136852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430534, 34.039581, 34.596542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644127, 33.738792, 34.751156>,  <42.772282, 33.558319, 34.843922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644127, 33.738792, 34.751156>,  <42.430534, 34.039581, 34.596542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644127, 33.738792, 34.751156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723028, 0.643106, 0.252278,
		-0.438287, 0.144762, 0.887101,
		0.533980, -0.751969, 0.386532,
		42.804321, 33.513203, 34.867115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.578438, 34.262699, 35.234634>,  <42.430534, 34.039581, 34.596542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.578438, 34.262699, 35.234634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835957, 33.965141, 35.162914>,  <42.990467, 33.786606, 35.119884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835957, 33.965141, 35.162914>,  <42.578438, 34.262699, 35.234634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835957, 33.965141, 35.162914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697618, 0.474317, 0.536985,
		-0.314419, -0.470787, 0.824318,
		0.643794, -0.743897, -0.179295,
		43.029095, 33.741974, 35.109127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.004791, 34.169868, 35.894890>,  <42.578438, 34.262699, 35.234634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.004791, 34.169868, 35.894890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.208504, 33.984100, 35.605076>,  <43.330730, 33.872639, 35.431187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.208504, 33.984100, 35.605076>,  <43.004791, 34.169868, 35.894890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.208504, 33.984100, 35.605076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859122, 0.323648, 0.396436,
		0.050381, -0.824359, 0.563821,
		0.509285, -0.464418, -0.724531,
		43.361290, 33.844776, 35.387718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.495384, 33.880016, 36.259956>,  <43.004791, 34.169868, 35.894890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.495384, 33.880016, 36.259956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.627983, 33.919003, 35.884594>,  <43.707542, 33.942394, 35.659378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.627983, 33.919003, 35.884594>,  <43.495384, 33.880016, 36.259956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.627983, 33.919003, 35.884594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800826, 0.496781, 0.334495,
		0.498786, -0.862385, 0.086625,
		0.331498, 0.097470, -0.938408,
		43.727432, 33.948242, 35.603073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305515, 33.656784, 36.299858>,  <43.495384, 33.880016, 36.259956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.305515, 33.656784, 36.299858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204666, 33.870903, 35.977394>,  <44.144157, 33.999374, 35.783916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204666, 33.870903, 35.977394>,  <44.305515, 33.656784, 36.299858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.204666, 33.870903, 35.977394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783001, 0.602373, 0.155103,
		0.568633, -0.592115, -0.571013,
		-0.252124, 0.535300, -0.806156,
		44.129028, 34.031494, 35.735546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.971233, 33.666367, 35.855301>,  <44.305515, 33.656784, 36.299858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.971233, 33.666367, 35.855301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.750801, 33.978657, 35.737469>,  <44.618542, 34.166031, 35.666771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.750801, 33.978657, 35.737469>,  <44.971233, 33.666367, 35.855301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.750801, 33.978657, 35.737469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765494, 0.613512, 0.193967,
		0.332162, -0.118605, -0.935736,
		-0.551079, 0.780728, -0.294576,
		44.585476, 34.212875, 35.649097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.491676, 34.088917, 35.635956>,  <44.971233, 33.666367, 35.855301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.491676, 34.088917, 35.635956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.169941, 34.326359, 35.646332>,  <44.976898, 34.468822, 35.652557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.169941, 34.326359, 35.646332>,  <45.491676, 34.088917, 35.635956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.169941, 34.326359, 35.646332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572666, 0.762852, 0.300185,
		0.158402, 0.256306, -0.953528,
		-0.804340, 0.593603, 0.025941,
		44.928638, 34.504440, 35.654114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.828224, 34.760605, 35.512951>,  <45.491676, 34.088917, 35.635956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.828224, 34.760605, 35.512951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.472050, 34.824139, 35.683544>,  <45.258347, 34.862259, 35.785900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.472050, 34.824139, 35.683544>,  <45.828224, 34.760605, 35.512951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.472050, 34.824139, 35.683544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381440, 0.771634, 0.509004,
		-0.248243, 0.615916, -0.747679,
		-0.890437, 0.158838, 0.426488,
		45.204918, 34.871792, 35.811489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.406788, 34.641815, 35.821609>,  <45.828224, 34.760605, 35.512951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.406788, 34.641815, 35.821609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.575634, 34.384480, 35.566128>,  <46.676941, 34.230080, 35.412838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.575634, 34.384480, 35.566128>,  <46.406788, 34.641815, 35.821609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.575634, 34.384480, 35.566128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486135, 0.755313, -0.439516,
		0.765177, -0.124970, 0.631575,
		0.422111, -0.643338, -0.638701,
		46.702267, 34.191479, 35.374519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.125305, 34.693787, 35.898605>,  <46.406788, 34.641815, 35.821609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.125305, 34.693787, 35.898605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.018688, 34.558304, 35.537666>,  <46.954716, 34.477013, 35.321102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.018688, 34.558304, 35.537666>,  <47.125305, 34.693787, 35.898605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.018688, 34.558304, 35.537666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372728, 0.827154, -0.420582,
		0.888835, -0.448434, -0.094229,
		-0.266546, -0.338706, -0.902348,
		46.938725, 34.456692, 35.266960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.645569, 34.845009, 35.550461>,  <47.125305, 34.693787, 35.898605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.645569, 34.845009, 35.550461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.355358, 34.797630, 35.279293>,  <47.181232, 34.769203, 35.116592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.355358, 34.797630, 35.279293>,  <47.645569, 34.845009, 35.550461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.355358, 34.797630, 35.279293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337095, 0.797642, -0.500135,
		0.599981, -0.591386, -0.538782,
		-0.725528, -0.118451, -0.677923,
		47.137699, 34.762096, 35.075916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.939251, 34.654579, 34.912479>,  <47.645569, 34.845009, 35.550461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.939251, 34.654579, 34.912479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.601135, 34.866058, 34.943356>,  <47.398266, 34.992947, 34.961884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.601135, 34.866058, 34.943356>,  <47.939251, 34.654579, 34.912479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.601135, 34.866058, 34.943356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470813, 0.805341, -0.360222,
		-0.252615, -0.268150, -0.929667,
		-0.845293, 0.528697, 0.077192,
		47.347546, 35.024666, 34.966515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.463242, 38.374493, 45.988174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.074547, 38.280819, 46.000053>,  <32.841331, 38.224613, 46.007183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.074547, 38.280819, 46.000053>,  <33.463242, 38.374493, 45.988174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074547, 38.280819, 46.000053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061069, -0.370926, -0.926652,
		0.228029, -0.898649, 0.374744,
		-0.971738, -0.234188, 0.029702,
		32.783024, 38.210564, 46.008965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499584, 37.682953, 45.858681>,  <33.463242, 38.374493, 45.988174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499584, 37.682953, 45.858681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.137482, 37.822365, 45.761494>,  <32.920219, 37.906013, 45.703182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.137482, 37.822365, 45.761494>,  <33.499584, 37.682953, 45.858681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137482, 37.822365, 45.761494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060402, -0.460484, -0.885611,
		-0.420543, -0.816383, 0.395806,
		-0.905260, 0.348529, -0.242964,
		32.865906, 37.926926, 45.688602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264618, 37.154865, 45.474113>,  <33.499584, 37.682953, 45.858681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264618, 37.154865, 45.474113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.042236, 37.481647, 45.412796>,  <32.908810, 37.677715, 45.376003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.042236, 37.481647, 45.412796>,  <33.264618, 37.154865, 45.474113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042236, 37.481647, 45.412796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058618, -0.222500, -0.973169,
		-0.829145, -0.532049, 0.171588,
		-0.555952, 0.816956, -0.153297,
		32.875450, 37.726734, 45.366806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675919, 36.953667, 45.248669>,  <33.264618, 37.154865, 45.474113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675919, 36.953667, 45.248669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.693478, 37.330780, 45.116463>,  <32.704014, 37.557049, 45.037140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.693478, 37.330780, 45.116463>,  <32.675919, 36.953667, 45.248669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693478, 37.330780, 45.116463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216121, -0.314037, -0.924485,
		-0.975379, 0.112010, 0.189971,
		0.043894, 0.942780, -0.330513,
		32.706646, 37.613613, 45.017307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090714, 36.968861, 44.743454>,  <32.675919, 36.953667, 45.248669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090714, 36.968861, 44.743454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.330872, 37.276783, 44.656807>,  <32.474968, 37.461536, 44.604820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.330872, 37.276783, 44.656807>,  <32.090714, 36.968861, 44.743454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330872, 37.276783, 44.656807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034213, -0.245897, -0.968692,
		-0.798970, 0.589011, -0.121299,
		0.600397, 0.769805, -0.216616,
		32.510990, 37.507725, 44.591824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809349, 37.316635, 44.061916>,  <32.090714, 36.968861, 44.743454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809349, 37.316635, 44.061916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.197006, 37.409115, 44.096111>,  <32.429600, 37.464603, 44.116631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.197006, 37.409115, 44.096111>,  <31.809349, 37.316635, 44.061916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197006, 37.409115, 44.096111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108388, -0.088205, -0.990188,
		-0.221385, 0.968901, -0.110542,
		0.969144, 0.231195, 0.085490,
		32.487751, 37.478474, 44.121758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964302, 37.917305, 43.444317>,  <31.809349, 37.316635, 44.061916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964302, 37.917305, 43.444317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.321808, 37.770061, 43.546825>,  <32.536312, 37.681713, 43.608330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.321808, 37.770061, 43.546825>,  <31.964302, 37.917305, 43.444317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321808, 37.770061, 43.546825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288542, 0.034432, -0.956848,
		0.343403, 0.929144, 0.136990,
		0.893766, -0.368112, 0.256273,
		32.589939, 37.659626, 43.623707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441498, 38.321430, 43.010162>,  <31.964302, 37.917305, 43.444317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441498, 38.321430, 43.010162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.622253, 37.978600, 43.109131>,  <32.730705, 37.772900, 43.168510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.622253, 37.978600, 43.109131>,  <32.441498, 38.321430, 43.010162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622253, 37.978600, 43.109131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210840, -0.166882, -0.963170,
		0.866801, 0.487411, 0.105294,
		0.451888, -0.857077, 0.247419,
		32.757820, 37.721478, 43.183357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054981, 38.284225, 42.641476>,  <32.441498, 38.321430, 43.010162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054981, 38.284225, 42.641476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.994602, 37.906185, 42.757408>,  <32.958374, 37.679363, 42.826969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.994602, 37.906185, 42.757408>,  <33.054981, 38.284225, 42.641476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994602, 37.906185, 42.757408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197457, -0.316114, -0.927946,
		0.968620, -0.082844, 0.234334,
		-0.150950, -0.945098, 0.289836,
		32.949318, 37.622658, 42.844360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675648, 37.812256, 42.398426>,  <33.054981, 38.284225, 42.641476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675648, 37.812256, 42.398426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.414600, 37.522331, 42.486729>,  <33.257973, 37.348377, 42.539711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.414600, 37.522331, 42.486729>,  <33.675648, 37.812256, 42.398426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414600, 37.522331, 42.486729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250968, -0.481705, -0.839628,
		0.714911, -0.492557, 0.496276,
		-0.652623, -0.724809, 0.220760,
		33.218815, 37.304890, 42.552956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998337, 37.137383, 42.312210>,  <33.675648, 37.812256, 42.398426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998337, 37.137383, 42.312210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.604546, 37.087540, 42.262779>,  <33.368271, 37.057632, 42.233120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.604546, 37.087540, 42.262779>,  <33.998337, 37.137383, 42.312210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604546, 37.087540, 42.262779> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169361, -0.490063, -0.855076,
		0.045989, -0.862735, 0.503561,
		-0.984481, -0.124608, -0.123576,
		33.309200, 37.050156, 42.225708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932285, 36.488174, 42.139702>,  <33.998337, 37.137383, 42.312210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932285, 36.488174, 42.139702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.586647, 36.650612, 42.020756>,  <33.379265, 36.748074, 41.949387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.586647, 36.650612, 42.020756>,  <33.932285, 36.488174, 42.139702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586647, 36.650612, 42.020756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001310, -0.588987, -0.808142,
		-0.503326, -0.698701, 0.508409,
		-0.864096, 0.406093, -0.297367,
		33.327419, 36.772438, 41.931545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541023, 35.964684, 41.975643>,  <33.932285, 36.488174, 42.139702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541023, 35.964684, 41.975643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.382225, 36.275856, 41.780819>,  <33.286945, 36.462559, 41.663925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.382225, 36.275856, 41.780819>,  <33.541023, 35.964684, 41.975643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382225, 36.275856, 41.780819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032662, -0.518358, -0.854539,
		-0.917241, -0.355152, 0.180375,
		-0.396990, 0.777928, -0.487060,
		33.263126, 36.509235, 41.634701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153358, 35.654812, 41.572914>,  <33.541023, 35.964684, 41.975643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153358, 35.654812, 41.572914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.159969, 36.001938, 41.374268>,  <33.163937, 36.210213, 41.255081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.159969, 36.001938, 41.374268>,  <33.153358, 35.654812, 41.572914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159969, 36.001938, 41.374268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068829, -0.496494, -0.865307,
		-0.997492, -0.019879, -0.067937,
		0.016529, 0.867812, -0.496617,
		33.164928, 36.262283, 41.225281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545158, 35.661495, 41.173531>,  <33.153358, 35.654812, 41.572914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545158, 35.661495, 41.173531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.815006, 35.896488, 40.994759>,  <32.976913, 36.037483, 40.887493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.815006, 35.896488, 40.994759>,  <32.545158, 35.661495, 41.173531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815006, 35.896488, 40.994759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052789, -0.565517, -0.823045,
		-0.736276, 0.578835, -0.350496,
		0.674619, 0.587487, -0.446933,
		33.017391, 36.072735, 40.860680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534794, 35.493721, 40.473438>,  <32.545158, 35.661495, 41.173531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534794, 35.493721, 40.473438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.853130, 35.735619, 40.461319>,  <33.044132, 35.880756, 40.454048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.853130, 35.735619, 40.461319>,  <32.534794, 35.493721, 40.473438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853130, 35.735619, 40.461319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318651, -0.460848, -0.828300,
		-0.514871, 0.649543, -0.559465,
		0.795844, 0.604742, -0.030300,
		33.091885, 35.917042, 40.452229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553566, 35.794277, 39.815701>,  <32.534794, 35.493721, 40.473438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553566, 35.794277, 39.815701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.929127, 35.839828, 39.945625>,  <33.154461, 35.867161, 40.023579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.929127, 35.839828, 39.945625>,  <32.553566, 35.794277, 39.815701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929127, 35.839828, 39.945625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340086, -0.452369, -0.824442,
		0.053046, 0.884530, -0.463457,
		0.938897, 0.113882, 0.324812,
		33.210796, 35.873993, 40.043068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860123, 35.839802, 39.229721>,  <32.553566, 35.794277, 39.815701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860123, 35.839802, 39.229721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.156017, 35.749561, 39.483303>,  <33.333553, 35.695415, 39.635452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.156017, 35.749561, 39.483303>,  <32.860123, 35.839802, 39.229721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156017, 35.749561, 39.483303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461047, -0.516298, -0.721715,
		0.490128, 0.826160, -0.277911,
		0.739736, -0.225603, 0.633951,
		33.377937, 35.681881, 39.673489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525330, 36.208496, 38.993481>,  <32.860123, 35.839802, 39.229721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525330, 36.208496, 38.993481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.626289, 35.890469, 39.214085>,  <33.686863, 35.699654, 39.346447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.626289, 35.890469, 39.214085>,  <33.525330, 36.208496, 38.993481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626289, 35.890469, 39.214085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477097, -0.393613, -0.785778,
		0.841828, 0.461453, 0.279977,
		0.252397, -0.795066, 0.551513,
		33.702007, 35.651947, 39.379539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324734, 36.057301, 38.970028>,  <33.525330, 36.208496, 38.993481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324734, 36.057301, 38.970028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.137112, 35.720551, 39.076790>,  <34.024540, 35.518501, 39.140846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.137112, 35.720551, 39.076790>,  <34.324734, 36.057301, 38.970028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137112, 35.720551, 39.076790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621372, -0.529343, -0.577662,
		0.627604, -0.105103, 0.771405,
		-0.469052, -0.841873, 0.266909,
		33.996395, 35.467987, 39.156864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831631, 35.598412, 38.910072>,  <34.324734, 36.057301, 38.970028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831631, 35.598412, 38.910072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.511295, 35.359867, 38.932018>,  <34.319096, 35.216740, 38.945187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.511295, 35.359867, 38.932018>,  <34.831631, 35.598412, 38.910072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511295, 35.359867, 38.932018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453666, -0.663900, -0.594495,
		0.390958, -0.451205, 0.802226,
		-0.800837, -0.596365, 0.054860,
		34.271046, 35.180958, 38.948475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017117, 34.933296, 39.058697>,  <34.831631, 35.598412, 38.910072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017117, 34.933296, 39.058697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.659096, 34.848789, 38.901596>,  <34.444283, 34.798084, 38.807335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.659096, 34.848789, 38.901596>,  <35.017117, 34.933296, 39.058697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659096, 34.848789, 38.901596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426204, -0.664487, -0.613846,
		-0.131289, -0.716814, 0.684792,
		-0.895049, -0.211270, -0.392749,
		34.390579, 34.785408, 38.783772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626003, 35.221066, 38.809246>,  <35.017117, 34.933296, 39.058697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626003, 35.221066, 38.809246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.013630, 35.284985, 38.734020>,  <36.246208, 35.323334, 38.688885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.013630, 35.284985, 38.734020>,  <35.626003, 35.221066, 38.809246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013630, 35.284985, 38.734020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099555, 0.444174, 0.890392,
		0.225812, -0.881576, 0.414528,
		0.969070, 0.159793, -0.188065,
		36.304352, 35.332924, 38.677601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907913, 34.967205, 39.387356>,  <35.626003, 35.221066, 38.809246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907913, 34.967205, 39.387356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.166870, 35.223106, 39.221657>,  <36.322243, 35.376648, 39.122238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.166870, 35.223106, 39.221657>,  <35.907913, 34.967205, 39.387356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166870, 35.223106, 39.221657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240601, 0.344177, 0.907553,
		0.723186, -0.687209, 0.068892,
		0.647390, 0.639754, -0.414247,
		36.361088, 35.415031, 39.097382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515083, 34.985462, 39.842922>,  <35.907913, 34.967205, 39.387356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515083, 34.985462, 39.842922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.494350, 35.326145, 39.634346>,  <36.481911, 35.530556, 39.509201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.494350, 35.326145, 39.634346>,  <36.515083, 34.985462, 39.842922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494350, 35.326145, 39.634346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115555, 0.523752, 0.843997,
		0.991948, -0.016505, -0.125569,
		-0.051837, 0.851711, -0.521441,
		36.478798, 35.581657, 39.477913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.932858, 35.510391, 40.221916>,  <36.515083, 34.985462, 39.842922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.932858, 35.510391, 40.221916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.715317, 35.720673, 39.960270>,  <36.584793, 35.846840, 39.803284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.715317, 35.720673, 39.960270>,  <36.932858, 35.510391, 40.221916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715317, 35.720673, 39.960270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038784, 0.762884, 0.645371,
		0.838285, 0.376354, -0.394507,
		-0.543851, 0.525704, -0.654111,
		36.552162, 35.878384, 39.764038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280010, 36.150715, 40.107697>,  <36.932858, 35.510391, 40.221916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280010, 36.150715, 40.107697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.903568, 36.243969, 40.009743>,  <36.677704, 36.299923, 39.950970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.903568, 36.243969, 40.009743>,  <37.280010, 36.150715, 40.107697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903568, 36.243969, 40.009743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046052, 0.805902, 0.590255,
		0.334966, 0.544213, -0.769174,
		-0.941104, 0.233137, -0.244888,
		36.621239, 36.313911, 39.936275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284714, 36.791622, 40.253426>,  <37.280010, 36.150715, 40.107697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284714, 36.791622, 40.253426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.888508, 36.747742, 40.220341>,  <36.650784, 36.721413, 40.200489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.888508, 36.747742, 40.220341>,  <37.284714, 36.791622, 40.253426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888508, 36.747742, 40.220341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137175, 0.823249, 0.550857,
		0.007662, 0.556979, -0.830491,
		-0.990517, -0.109702, -0.082711,
		36.591354, 36.714832, 40.195526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961575, 37.452843, 40.228939>,  <37.284714, 36.791622, 40.253426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961575, 37.452843, 40.228939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.699295, 37.185566, 40.369553>,  <36.541927, 37.025200, 40.453918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.699295, 37.185566, 40.369553>,  <36.961575, 37.452843, 40.228939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699295, 37.185566, 40.369553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253865, 0.633598, 0.730826,
		-0.711064, 0.389960, -0.585081,
		-0.655699, -0.668195, 0.351531,
		36.502586, 36.985107, 40.475014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424313, 37.846691, 40.413605>,  <36.961575, 37.452843, 40.228939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424313, 37.846691, 40.413605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.332363, 37.510235, 40.609413>,  <36.277191, 37.308361, 40.726898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.332363, 37.510235, 40.609413>,  <36.424313, 37.846691, 40.413605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332363, 37.510235, 40.609413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307868, 0.540012, 0.783329,
		-0.923241, 0.029363, -0.383098,
		-0.229878, -0.841145, 0.489521,
		36.263401, 37.257893, 40.756271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772850, 37.885578, 40.743359>,  <36.424313, 37.846691, 40.413605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772850, 37.885578, 40.743359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.976692, 37.631142, 40.975117>,  <36.098995, 37.478481, 41.114170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.976692, 37.631142, 40.975117>,  <35.772850, 37.885578, 40.743359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976692, 37.631142, 40.975117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318938, 0.485766, 0.813825,
		-0.799116, -0.599515, 0.044673,
		0.509601, -0.636092, 0.579391,
		36.129574, 37.440315, 41.148933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559673, 38.086170, 41.390259>,  <35.772850, 37.885578, 40.743359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559673, 38.086170, 41.390259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.808968, 37.791893, 41.496338>,  <35.958546, 37.615326, 41.559986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.808968, 37.791893, 41.496338>,  <35.559673, 38.086170, 41.390259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808968, 37.791893, 41.496338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148940, 0.221240, 0.963779,
		-0.767720, -0.640159, 0.028310,
		0.623235, -0.735696, 0.265195,
		35.995937, 37.571186, 41.575897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194458, 37.543663, 41.872131>,  <35.559673, 38.086170, 41.390259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194458, 37.543663, 41.872131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.588539, 37.557919, 41.939190>,  <35.824989, 37.566471, 41.979424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.588539, 37.557919, 41.939190>,  <35.194458, 37.543663, 41.872131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588539, 37.557919, 41.939190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171342, 0.228987, 0.958231,
		-0.004238, -0.972777, 0.231705,
		0.985202, 0.035639, 0.167648,
		35.884098, 37.568611, 41.989483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264500, 37.486347, 42.708878>,  <35.194458, 37.543663, 41.872131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264500, 37.486347, 42.708878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.633686, 37.591248, 42.596188>,  <35.855198, 37.654186, 42.528576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.633686, 37.591248, 42.596188>,  <35.264500, 37.486347, 42.708878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633686, 37.591248, 42.596188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200729, 0.296566, 0.933679,
		0.328410, -0.918298, 0.221077,
		0.922960, 0.262253, -0.281724,
		35.910576, 37.669922, 42.511669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843529, 37.045502, 43.049961>,  <35.264500, 37.486347, 42.708878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843529, 37.045502, 43.049961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.010487, 37.393768, 42.945862>,  <36.110661, 37.602726, 42.883400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.010487, 37.393768, 42.945862>,  <35.843529, 37.045502, 43.049961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010487, 37.393768, 42.945862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251728, 0.164405, 0.953732,
		0.873165, -0.463593, -0.150549,
		0.417392, 0.870662, -0.260252,
		36.135704, 37.654968, 42.867786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413761, 36.968491, 43.497868>,  <35.843529, 37.045502, 43.049961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413761, 36.968491, 43.497868> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.345325, 37.349388, 43.396713>,  <36.304264, 37.577927, 43.336021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.345325, 37.349388, 43.396713>,  <36.413761, 36.968491, 43.497868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345325, 37.349388, 43.396713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138144, 0.277321, 0.950794,
		0.975524, 0.127732, -0.178993,
		-0.171086, 0.952249, -0.252888,
		36.293999, 37.635063, 43.320847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878841, 37.329021, 43.860668>,  <36.413761, 36.968491, 43.497868>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878841, 37.329021, 43.860668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.598515, 37.602070, 43.777832>,  <36.430321, 37.765900, 43.728130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.598515, 37.602070, 43.777832>,  <36.878841, 37.329021, 43.860668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598515, 37.602070, 43.777832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155447, 0.429477, 0.889598,
		0.696199, 0.591252, -0.407096,
		-0.700815, 0.682620, -0.207093,
		36.388271, 37.806854, 43.715706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174267, 37.957996, 44.148865>,  <36.878841, 37.329021, 43.860668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174267, 37.957996, 44.148865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.778744, 38.005718, 44.113026>,  <36.541431, 38.034351, 44.091522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.778744, 38.005718, 44.113026>,  <37.174267, 37.957996, 44.148865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778744, 38.005718, 44.113026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041543, 0.356624, 0.933324,
		0.143306, 0.926599, -0.347676,
		-0.988806, 0.119308, -0.089600,
		36.482101, 38.041512, 44.086147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951630, 38.648186, 44.461807>,  <37.174267, 37.957996, 44.148865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951630, 38.648186, 44.461807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.619656, 38.425598, 44.446041>,  <36.420471, 38.292046, 44.436581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.619656, 38.425598, 44.446041>,  <36.951630, 38.648186, 44.461807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619656, 38.425598, 44.446041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259853, 0.323104, 0.909989,
		-0.493645, 0.765473, -0.412755,
		-0.829934, -0.556467, -0.039412,
		36.370674, 38.258659, 44.434219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399754, 39.101875, 44.709232>,  <36.951630, 38.648186, 44.461807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399754, 39.101875, 44.709232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.237755, 38.736732, 44.729900>,  <36.140556, 38.517647, 44.742302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.237755, 38.736732, 44.729900>,  <36.399754, 39.101875, 44.709232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237755, 38.736732, 44.729900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406289, 0.230306, 0.884245,
		-0.819087, 0.337127, -0.464157,
		-0.405001, -0.912855, 0.051670,
		36.116253, 38.462875, 44.745399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.693932, 39.174599, 44.854965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.812080, 38.815140, 44.984695>,  <35.882969, 38.599464, 45.062534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.812080, 38.815140, 44.984695>,  <35.693932, 39.174599, 44.854965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812080, 38.815140, 44.984695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599200, 0.090158, 0.795506,
		-0.744121, -0.429305, -0.511840,
		0.295368, -0.898648, 0.324328,
		35.900692, 38.545544, 45.081993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073277, 38.882442, 45.076664>,  <35.693932, 39.174599, 44.854965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073277, 38.882442, 45.076664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.345707, 38.642700, 45.244907>,  <35.509163, 38.498856, 45.345852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.345707, 38.642700, 45.244907>,  <35.073277, 38.882442, 45.076664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345707, 38.642700, 45.244907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620738, -0.167945, 0.765819,
		-0.388361, -0.782665, -0.486427,
		0.681073, -0.599358, 0.420607,
		35.550030, 38.462894, 45.371090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622894, 38.571514, 45.518814>,  <35.073277, 38.882442, 45.076664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622894, 38.571514, 45.518814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.990650, 38.468189, 45.637474>,  <35.211304, 38.406193, 45.708672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.990650, 38.468189, 45.637474>,  <34.622894, 38.571514, 45.518814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990650, 38.468189, 45.637474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368692, -0.303052, 0.878764,
		-0.137096, -0.917297, -0.373860,
		0.919386, -0.258314, 0.296653,
		35.266464, 38.390694, 45.726471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442657, 38.061146, 45.935173>,  <34.622894, 38.571514, 45.518814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442657, 38.061146, 45.935173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.809158, 38.178253, 46.044544>,  <35.029060, 38.248520, 46.110168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.809158, 38.178253, 46.044544>,  <34.442657, 38.061146, 45.935173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809158, 38.178253, 46.044544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223306, -0.193392, 0.955371,
		0.332585, -0.936421, -0.111818,
		0.916254, 0.292773, 0.273428,
		35.084034, 38.266087, 46.126572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683826, 37.492207, 46.447826>,  <34.442657, 38.061146, 45.935173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683826, 37.492207, 46.447826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.902027, 37.824047, 46.495468>,  <35.032948, 38.023151, 46.524052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.902027, 37.824047, 46.495468>,  <34.683826, 37.492207, 46.447826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902027, 37.824047, 46.495468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185148, -0.019315, 0.982521,
		0.817403, -0.558019, 0.143063,
		0.545502, 0.829603, 0.119104,
		35.065678, 38.072929, 46.531200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112648, 37.345818, 46.989609>,  <34.683826, 37.492207, 46.447826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112648, 37.345818, 46.989609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.086105, 37.744934, 46.990921>,  <35.070179, 37.984406, 46.991707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.086105, 37.744934, 46.990921>,  <35.112648, 37.345818, 46.989609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086105, 37.744934, 46.990921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131605, -0.012010, 0.991230,
		0.989079, 0.065343, 0.132111,
		-0.066357, 0.997791, 0.003280,
		35.066200, 38.044270, 46.991905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659935, 37.589912, 47.527390>,  <35.112648, 37.345818, 46.989609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659935, 37.589912, 47.527390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.408516, 37.896606, 47.475166>,  <35.257664, 38.080624, 47.443832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.408516, 37.896606, 47.475166>,  <35.659935, 37.589912, 47.527390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408516, 37.896606, 47.475166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098383, 0.244894, 0.964545,
		0.771521, 0.593421, -0.229362,
		-0.628551, 0.766732, -0.130558,
		35.219952, 38.126625, 47.435997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893333, 38.156940, 47.960377>,  <35.659935, 37.589912, 47.527390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893333, 38.156940, 47.960377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.518131, 38.274017, 47.886112>,  <35.293011, 38.344265, 47.841553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.518131, 38.274017, 47.886112>,  <35.893333, 38.156940, 47.960377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518131, 38.274017, 47.886112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084884, 0.325345, 0.941778,
		0.336055, 0.899156, -0.280332,
		-0.938009, 0.292694, -0.185658,
		35.236729, 38.361824, 47.830414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854218, 38.797535, 48.302338>,  <35.893333, 38.156940, 47.960377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854218, 38.797535, 48.302338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.478806, 38.670818, 48.247494>,  <35.253559, 38.594788, 48.214588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.478806, 38.670818, 48.247494>,  <35.854218, 38.797535, 48.302338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478806, 38.670818, 48.247494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199464, 0.173539, 0.964416,
		-0.281724, 0.932485, -0.226061,
		-0.938534, -0.316790, -0.137108,
		35.197247, 38.575783, 48.206360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346268, 39.365612, 48.393570>,  <35.854218, 38.797535, 48.302338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346268, 39.365612, 48.393570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.188908, 39.013325, 48.499081>,  <35.094494, 38.801952, 48.562386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.188908, 39.013325, 48.499081>,  <35.346268, 39.365612, 48.393570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188908, 39.013325, 48.499081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214512, 0.366919, 0.905182,
		-0.893993, 0.299513, -0.333269,
		-0.393397, -0.880717, 0.263775,
		35.070889, 38.749111, 48.578213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740005, 39.547512, 48.747280>,  <35.346268, 39.365612, 48.393570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740005, 39.547512, 48.747280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.810158, 39.181175, 48.891762>,  <34.852249, 38.961372, 48.978451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.810158, 39.181175, 48.891762>,  <34.740005, 39.547512, 48.747280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810158, 39.181175, 48.891762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322687, 0.293144, 0.899967,
		-0.930115, -0.274395, -0.244119,
		0.175384, -0.915846, 0.361201,
		34.862774, 38.906422, 49.000122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175419, 39.410217, 49.257500>,  <34.740005, 39.547512, 48.747280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175419, 39.410217, 49.257500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.438789, 39.123070, 49.347961>,  <34.596809, 38.950783, 49.402237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.438789, 39.123070, 49.347961>,  <34.175419, 39.410217, 49.257500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438789, 39.123070, 49.347961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145075, 0.173790, 0.974038,
		-0.738535, -0.674136, 0.010282,
		0.658421, -0.717870, 0.226150,
		34.636314, 38.907707, 49.415806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835777, 39.211628, 49.813156>,  <34.175419, 39.410217, 49.257500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835777, 39.211628, 49.813156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.205208, 39.059311, 49.831081>,  <34.426865, 38.967918, 49.841835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.205208, 39.059311, 49.831081>,  <33.835777, 39.211628, 49.813156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205208, 39.059311, 49.831081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015225, 0.080358, 0.996650,
		-0.383123, -0.921160, 0.068419,
		0.923572, -0.380798, 0.044811,
		34.482281, 38.945072, 49.844524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812889, 38.583382, 50.197823>,  <33.835777, 39.211628, 49.813156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812889, 38.583382, 50.197823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.182167, 38.736103, 50.215427>,  <34.403732, 38.827736, 50.225990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.182167, 38.736103, 50.215427>,  <33.812889, 38.583382, 50.197823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182167, 38.736103, 50.215427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080536, 0.080197, 0.993520,
		0.375798, -0.920758, 0.104787,
		0.923196, 0.381801, 0.044016,
		34.459126, 38.850643, 50.228634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102158, 38.149754, 50.642281>,  <33.812889, 38.583382, 50.197823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102158, 38.149754, 50.642281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.344322, 38.467815, 50.656204>,  <34.489620, 38.658653, 50.664558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.344322, 38.467815, 50.656204>,  <34.102158, 38.149754, 50.642281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344322, 38.467815, 50.656204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127188, 0.053479, 0.990436,
		0.785684, -0.604050, 0.133510,
		0.605413, 0.795150, 0.034810,
		34.525948, 38.706360, 50.666649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588055, 37.896275, 51.035465>,  <34.102158, 38.149754, 50.642281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588055, 37.896275, 51.035465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.604183, 38.295330, 51.057732>,  <34.613861, 38.534763, 51.071091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.604183, 38.295330, 51.057732>,  <34.588055, 37.896275, 51.035465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604183, 38.295330, 51.057732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060708, -0.053162, 0.996739,
		0.997341, -0.043570, 0.058421,
		0.040322, 0.997635, 0.055666,
		34.616280, 38.594620, 51.074432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170319, 38.105015, 51.417011>,  <34.588055, 37.896275, 51.035465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170319, 38.105015, 51.417011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.967377, 38.449081, 51.437809>,  <34.845612, 38.655521, 51.450287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.967377, 38.449081, 51.437809>,  <35.170319, 38.105015, 51.417011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967377, 38.449081, 51.437809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150589, 0.029091, 0.988168,
		0.848476, 0.509184, -0.144291,
		-0.507357, 0.860166, 0.051994,
		34.815170, 38.707130, 51.453407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600430, 38.723862, 51.707504>,  <35.170319, 38.105015, 51.417011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600430, 38.723862, 51.707504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.206814, 38.780499, 51.750614>,  <34.970642, 38.814480, 51.776478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.206814, 38.780499, 51.750614>,  <35.600430, 38.723862, 51.707504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206814, 38.780499, 51.750614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142485, 0.264206, 0.953883,
		0.106584, 0.954017, -0.280164,
		-0.984042, 0.141588, 0.107773,
		34.911602, 38.822975, 51.782948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641663, 39.237705, 52.223629>,  <35.600430, 38.723862, 51.707504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641663, 39.237705, 52.223629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.272141, 39.084858, 52.233154>,  <35.050426, 38.993149, 52.238869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.272141, 39.084858, 52.233154>,  <35.641663, 39.237705, 52.223629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272141, 39.084858, 52.233154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000917, 0.059994, 0.998198,
		-0.382862, 0.922163, -0.055072,
		-0.923805, -0.382121, 0.023815,
		34.994999, 38.970222, 52.240299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208427, 39.570335, 52.777973>,  <35.641663, 39.237705, 52.223629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208427, 39.570335, 52.777973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.993156, 39.240856, 52.706558>,  <34.863995, 39.043167, 52.663712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.993156, 39.240856, 52.706558>,  <35.208427, 39.570335, 52.777973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993156, 39.240856, 52.706558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073952, -0.164860, 0.983541,
		-0.839578, 0.542527, 0.027810,
		-0.538182, -0.823703, -0.178534,
		34.831703, 38.993744, 52.653000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711136, 39.557091, 53.263100>,  <35.208427, 39.570335, 52.777973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711136, 39.557091, 53.263100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.708538, 39.182938, 53.121666>,  <34.706978, 38.958447, 53.036808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.708538, 39.182938, 53.121666>,  <34.711136, 39.557091, 53.263100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708538, 39.182938, 53.121666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103850, -0.351047, 0.930582,
		-0.994572, 0.042765, -0.094859,
		-0.006497, -0.935381, -0.353582,
		34.706589, 38.902325, 53.015591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242203, 39.186485, 53.751923>,  <34.711136, 39.557091, 53.263100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242203, 39.186485, 53.751923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.458500, 38.905972, 53.566113>,  <34.588280, 38.737663, 53.454624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.458500, 38.905972, 53.566113>,  <34.242203, 39.186485, 53.751923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458500, 38.905972, 53.566113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051654, -0.523505, 0.850455,
		-0.839598, -0.483875, -0.246860,
		0.540747, -0.701289, -0.464528,
		34.620724, 38.695583, 53.426754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947220, 38.543541, 53.964054>,  <34.242203, 39.186485, 53.751923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947220, 38.543541, 53.964054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.327492, 38.494617, 53.850044>,  <34.555656, 38.465263, 53.781639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.327492, 38.494617, 53.850044>,  <33.947220, 38.543541, 53.964054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327492, 38.494617, 53.850044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216735, -0.395393, 0.892575,
		-0.221871, -0.910332, -0.349384,
		0.950683, -0.122312, -0.285027,
		34.612698, 38.457924, 53.764538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118511, 37.821095, 54.221367>,  <33.947220, 38.543541, 53.964054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118511, 37.821095, 54.221367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.435509, 38.064644, 54.207306>,  <34.625706, 38.210773, 54.198872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.435509, 38.064644, 54.207306>,  <34.118511, 37.821095, 54.221367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435509, 38.064644, 54.207306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394060, -0.467209, 0.791475,
		0.465483, -0.641088, -0.610190,
		0.792491, 0.608870, -0.035150,
		34.673256, 38.247303, 54.196762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495594, 37.527832, 53.727287>,  <34.118511, 37.821095, 54.221367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495594, 37.527832, 53.727287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.126228, 37.374344, 53.730289>,  <32.904610, 37.282249, 53.732090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.126228, 37.374344, 53.730289>,  <33.495594, 37.527832, 53.727287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126228, 37.374344, 53.730289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105409, 0.234767, -0.966320,
		0.369039, -0.893107, -0.257235,
		-0.923417, -0.383724, 0.007503,
		32.849201, 37.259228, 53.732540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448853, 37.052624, 53.164791>,  <33.495594, 37.527832, 53.727287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448853, 37.052624, 53.164791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.080044, 37.185822, 53.243771>,  <32.858757, 37.265739, 53.291157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.080044, 37.185822, 53.243771>,  <33.448853, 37.052624, 53.164791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080044, 37.185822, 53.243771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152305, 0.156885, -0.975802,
		-0.355911, -0.929787, -0.093935,
		-0.922025, 0.332992, 0.197449,
		32.803436, 37.285721, 53.303005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014820, 36.742599, 52.659985>,  <33.448853, 37.052624, 53.164791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014820, 36.742599, 52.659985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.803112, 37.061886, 52.775036>,  <32.676086, 37.253456, 52.844067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.803112, 37.061886, 52.775036>,  <33.014820, 36.742599, 52.659985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803112, 37.061886, 52.775036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287707, 0.150073, -0.945887,
		-0.798183, -0.583384, 0.150221,
		-0.529271, 0.798211, 0.287630,
		32.644329, 37.301350, 52.861324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367737, 36.687527, 52.340488>,  <33.014820, 36.742599, 52.659985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367737, 36.687527, 52.340488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.340107, 37.071468, 52.449230>,  <32.323528, 37.301834, 52.514477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.340107, 37.071468, 52.449230>,  <32.367737, 36.687527, 52.340488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340107, 37.071468, 52.449230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432159, 0.216821, -0.875344,
		-0.899148, -0.177950, 0.399833,
		-0.069075, 0.959856, 0.271857,
		32.319386, 37.359425, 52.530788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636629, 36.905388, 52.216846>,  <32.367737, 36.687527, 52.340488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636629, 36.905388, 52.216846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.859575, 37.237026, 52.234478>,  <31.993343, 37.436008, 52.245056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.859575, 37.237026, 52.234478>,  <31.636629, 36.905388, 52.216846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859575, 37.237026, 52.234478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354760, 0.285817, -0.890199,
		-0.750657, 0.480531, 0.453435,
		0.557367, 0.829095, 0.044077,
		32.026787, 37.485756, 52.247700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.327394, 37.229721, 51.655792>,  <31.636629, 36.905388, 52.216846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.327394, 37.229721, 51.655792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.662041, 37.434250, 51.734406>,  <31.862827, 37.556969, 51.781574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.662041, 37.434250, 51.734406>,  <31.327394, 37.229721, 51.655792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662041, 37.434250, 51.734406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045425, 0.292787, -0.955098,
		-0.545907, 0.807975, 0.221723,
		0.836613, 0.511323, 0.196537,
		31.913025, 37.587646, 51.793365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320366, 37.802994, 51.260139>,  <31.327394, 37.229721, 51.655792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320366, 37.802994, 51.260139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.704458, 37.734585, 51.348419>,  <31.934914, 37.693539, 51.401386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.704458, 37.734585, 51.348419>,  <31.320366, 37.802994, 51.260139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704458, 37.734585, 51.348419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242253, 0.117293, -0.963097,
		0.138820, 0.978261, 0.154058,
		0.960230, -0.171018, 0.220704,
		31.992527, 37.683281, 51.414631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703753, 38.277344, 50.871864>,  <31.320366, 37.802994, 51.260139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703753, 38.277344, 50.871864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.963491, 37.985332, 50.957104>,  <32.119335, 37.810127, 51.008247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.963491, 37.985332, 50.957104>,  <31.703753, 38.277344, 50.871864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963491, 37.985332, 50.957104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372007, 0.060513, -0.926255,
		0.663293, 0.680738, 0.310868,
		0.649348, -0.730024, 0.213102,
		32.158295, 37.766327, 51.021034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409164, 38.497608, 50.639172>,  <31.703753, 38.277344, 50.871864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409164, 38.497608, 50.639172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.393948, 38.098598, 50.662804>,  <32.384819, 37.859192, 50.676983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.393948, 38.098598, 50.662804>,  <32.409164, 38.497608, 50.639172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393948, 38.098598, 50.662804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388886, -0.069238, -0.918680,
		0.920500, -0.011971, 0.390559,
		-0.038039, -0.997528, 0.059078,
		32.382534, 37.799339, 50.680527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067543, 38.320965, 50.308838>,  <32.409164, 38.497608, 50.639172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067543, 38.320965, 50.308838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.822872, 38.004570, 50.314442>,  <32.676071, 37.814735, 50.317806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.822872, 38.004570, 50.314442>,  <33.067543, 38.320965, 50.308838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822872, 38.004570, 50.314442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131860, -0.119401, -0.984051,
		0.780042, -0.600072, 0.177335,
		-0.611676, -0.790985, 0.014012,
		32.639370, 37.767273, 50.318645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395206, 37.686172, 49.889935>,  <33.067543, 38.320965, 50.308838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395206, 37.686172, 49.889935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.997345, 37.674900, 49.929665>,  <32.758629, 37.668137, 49.953503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.997345, 37.674900, 49.929665>,  <33.395206, 37.686172, 49.889935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997345, 37.674900, 49.929665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100310, 0.035936, -0.994307,
		0.024458, -0.998957, -0.038572,
		-0.994655, -0.028188, 0.099326,
		32.698948, 37.666443, 49.959461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302788, 37.275749, 49.252064>,  <33.395206, 37.686172, 49.889935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302788, 37.275749, 49.252064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.958332, 37.459530, 49.339096>,  <32.751659, 37.569798, 49.391315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.958332, 37.459530, 49.339096>,  <33.302788, 37.275749, 49.252064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958332, 37.459530, 49.339096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095013, 0.275006, -0.956736,
		-0.499410, -0.844557, -0.193165,
		-0.861140, 0.459450, 0.217585,
		32.699989, 37.597366, 49.404373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907955, 37.047226, 48.732742>,  <33.302788, 37.275749, 49.252064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907955, 37.047226, 48.732742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.715561, 37.363010, 48.885269>,  <32.600124, 37.552483, 48.976784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.715561, 37.363010, 48.885269>,  <32.907955, 37.047226, 48.732742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715561, 37.363010, 48.885269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183196, 0.334830, -0.924299,
		-0.857378, -0.514426, -0.016420,
		-0.480981, 0.789465, 0.381316,
		32.571266, 37.599850, 48.999664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333260, 37.081291, 48.381763>,  <32.907955, 37.047226, 48.732742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333260, 37.081291, 48.381763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.394524, 37.452648, 48.517185>,  <32.431282, 37.675465, 48.598438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.394524, 37.452648, 48.517185>,  <32.333260, 37.081291, 48.381763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394524, 37.452648, 48.517185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006509, 0.343538, -0.939116,
		-0.988179, 0.141635, 0.058660,
		0.153164, 0.928397, 0.338556,
		32.440472, 37.731167, 48.618752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971182, 37.554100, 47.892109>,  <32.333260, 37.081291, 48.381763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971182, 37.554100, 47.892109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.196621, 37.807953, 48.103619>,  <32.331882, 37.960266, 48.230522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.196621, 37.807953, 48.103619>,  <31.971182, 37.554100, 47.892109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196621, 37.807953, 48.103619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066683, 0.603076, -0.794892,
		-0.823355, 0.483258, 0.297572,
		0.563596, 0.634635, 0.528771,
		32.365700, 37.998344, 48.262249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562971, 38.171181, 47.863396>,  <31.971182, 37.554100, 47.892109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562971, 38.171181, 47.863396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.946373, 38.267410, 47.924580>,  <32.176414, 38.325146, 47.961292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.946373, 38.267410, 47.924580>,  <31.562971, 38.171181, 47.863396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946373, 38.267410, 47.924580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010291, 0.507010, -0.861879,
		-0.284895, 0.827688, 0.483495,
		0.958503, 0.240570, 0.152962,
		32.233925, 38.339581, 47.970467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589815, 38.788799, 47.595020>,  <31.562971, 38.171181, 47.863396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589815, 38.788799, 47.595020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.956240, 38.628567, 47.587399>,  <32.176094, 38.532425, 47.582825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.956240, 38.628567, 47.587399>,  <31.589815, 38.788799, 47.595020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956240, 38.628567, 47.587399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011451, 0.021372, -0.999706,
		0.400873, 0.916011, 0.014991,
		0.916062, -0.400583, -0.019057,
		32.231060, 38.508392, 47.581680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927448, 39.204266, 47.103649>,  <31.589815, 38.788799, 47.595020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927448, 39.204266, 47.103649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.139252, 38.868267, 47.151035>,  <32.266335, 38.666668, 47.179466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.139252, 38.868267, 47.151035>,  <31.927448, 39.204266, 47.103649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139252, 38.868267, 47.151035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205768, -0.008295, -0.978566,
		0.822971, 0.542534, 0.168451,
		0.529508, -0.839993, 0.118462,
		32.298103, 38.616268, 47.186573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444042, 39.305927, 46.550835>,  <31.927448, 39.204266, 47.103649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444042, 39.305927, 46.550835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.443192, 38.919010, 46.652302>,  <32.442680, 38.686859, 46.713181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.443192, 38.919010, 46.652302>,  <32.444042, 39.305927, 46.550835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443192, 38.919010, 46.652302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377432, -0.235680, -0.895544,
		0.926035, 0.093833, 0.365589,
		-0.002130, -0.967290, 0.253664,
		32.442551, 38.628822, 46.728401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996212, 39.055584, 46.279724>,  <32.444042, 39.305927, 46.550835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996212, 39.055584, 46.279724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.812534, 38.705200, 46.338840>,  <32.702328, 38.494972, 46.374310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.812534, 38.705200, 46.338840>,  <32.996212, 39.055584, 46.279724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812534, 38.705200, 46.338840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161897, -0.246106, -0.955626,
		0.873459, -0.414890, 0.254825,
		-0.459194, -0.875956, 0.147794,
		32.674778, 38.442413, 46.383179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.921642, 26.543804, 39.848221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.613861, 26.781628, 39.941547>,  <41.429192, 26.924322, 39.997543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.613861, 26.781628, 39.941547>,  <41.921642, 26.543804, 39.848221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613861, 26.781628, 39.941547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348400, 0.696884, -0.626873,
		-0.535308, -0.401063, -0.743366,
		-0.769456, 0.594559, 0.233317,
		41.383026, 26.959995, 40.011543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629944, 26.859699, 39.179684>,  <41.921642, 26.543804, 39.848221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629944, 26.859699, 39.179684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.527424, 27.109089, 39.475140>,  <41.465912, 27.258722, 39.652412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.527424, 27.109089, 39.475140>,  <41.629944, 26.859699, 39.179684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527424, 27.109089, 39.475140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366983, 0.769714, -0.522364,
		-0.894223, 0.137187, -0.426081,
		-0.256299, 0.623475, 0.738641,
		41.450535, 27.296131, 39.696732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249012, 27.403591, 38.914757>,  <41.629944, 26.859699, 39.179684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249012, 27.403591, 38.914757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.359024, 27.573198, 39.259911>,  <41.425030, 27.674963, 39.467003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.359024, 27.573198, 39.259911>,  <41.249012, 27.403591, 38.914757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359024, 27.573198, 39.259911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259163, 0.831576, -0.491239,
		-0.925847, 0.358733, 0.118819,
		0.275031, 0.424019, 0.862882,
		41.441532, 27.700403, 39.518776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998016, 28.061346, 38.931339>,  <41.249012, 27.403591, 38.914757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998016, 28.061346, 38.931339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.258587, 28.118429, 39.229404>,  <41.414928, 28.152679, 39.408245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.258587, 28.118429, 39.229404>,  <40.998016, 28.061346, 38.931339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258587, 28.118429, 39.229404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107470, 0.954892, -0.276822,
		-0.751059, 0.260413, 0.606709,
		0.651430, 0.142707, 0.745167,
		41.454018, 28.161242, 39.452953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811775, 28.746376, 39.157288>,  <40.998016, 28.061346, 38.931339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811775, 28.746376, 39.157288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.177399, 28.677534, 39.304188>,  <41.396774, 28.636229, 39.392326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.177399, 28.677534, 39.304188>,  <40.811775, 28.746376, 39.157288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177399, 28.677534, 39.304188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263014, 0.940821, -0.213725,
		-0.308729, 0.291949, 0.905236,
		0.914062, -0.172107, 0.367246,
		41.451618, 28.625902, 39.414360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071014, 29.330439, 39.571259>,  <40.811775, 28.746376, 39.157288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071014, 29.330439, 39.571259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.382141, 29.114990, 39.441711>,  <41.568817, 28.985722, 39.363983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.382141, 29.114990, 39.441711>,  <41.071014, 29.330439, 39.571259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382141, 29.114990, 39.441711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479585, 0.841707, -0.248047,
		0.406204, 0.037613, 0.913008,
		0.777815, -0.538623, -0.323866,
		41.615486, 28.953403, 39.344551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523220, 29.730459, 39.877857>,  <41.071014, 29.330439, 39.571259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523220, 29.730459, 39.877857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.698956, 29.524956, 39.583096>,  <41.804398, 29.401653, 39.406239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.698956, 29.524956, 39.583096>,  <41.523220, 29.730459, 39.877857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698956, 29.524956, 39.583096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367061, 0.851380, -0.374723,
		0.819905, -0.105858, 0.562628,
		0.439343, -0.513757, -0.736907,
		41.830757, 29.370829, 39.362022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109997, 30.036812, 39.852676>,  <41.523220, 29.730459, 39.877857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109997, 30.036812, 39.852676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.127365, 29.882257, 39.484150>,  <42.137787, 29.789526, 39.263035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.127365, 29.882257, 39.484150>,  <42.109997, 30.036812, 39.852676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.127365, 29.882257, 39.484150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441581, 0.834638, -0.329220,
		0.896170, -0.392538, 0.206864,
		0.043425, -0.386384, -0.921315,
		42.140392, 29.766342, 39.207756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.785786, 30.161394, 39.674107>,  <42.109997, 30.036812, 39.852676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.785786, 30.161394, 39.674107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.594261, 30.110119, 39.326702>,  <42.479347, 30.079353, 39.118259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.594261, 30.110119, 39.326702>,  <42.785786, 30.161394, 39.674107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594261, 30.110119, 39.326702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342424, 0.883661, -0.319201,
		0.808387, -0.450235, -0.379209,
		-0.478808, -0.128187, -0.868511,
		42.450619, 30.071663, 39.066151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.274429, 30.209909, 39.184814>,  <42.785786, 30.161394, 39.674107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.274429, 30.209909, 39.184814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.925102, 30.288115, 39.006340>,  <42.715504, 30.335037, 38.899254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.925102, 30.288115, 39.006340>,  <43.274429, 30.209909, 39.184814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925102, 30.288115, 39.006340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353619, 0.884403, -0.304606,
		0.335055, -0.423799, -0.841506,
		-0.873322, 0.195513, -0.446187,
		42.663105, 30.346769, 38.872482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455765, 30.451584, 38.510262>,  <43.274429, 30.209909, 39.184814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455765, 30.451584, 38.510262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.076466, 30.560717, 38.575233>,  <42.848885, 30.626196, 38.614216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.076466, 30.560717, 38.575233>,  <43.455765, 30.451584, 38.510262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.076466, 30.560717, 38.575233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163042, 0.857337, -0.488253,
		-0.272467, -0.436504, -0.857453,
		-0.948251, 0.272834, 0.162427,
		42.791992, 30.642567, 38.623962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.166943, 30.724962, 37.878693>,  <43.455765, 30.451584, 38.510262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.166943, 30.724962, 37.878693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.935284, 30.877165, 38.167084>,  <42.796288, 30.968487, 38.340118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.935284, 30.877165, 38.167084>,  <43.166943, 30.724962, 37.878693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935284, 30.877165, 38.167084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057566, 0.901268, -0.429420,
		-0.813191, -0.207192, -0.543868,
		-0.579143, 0.380509, 0.720976,
		42.761539, 30.991318, 38.383377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708572, 31.211296, 37.563072>,  <43.166943, 30.724962, 37.878693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708572, 31.211296, 37.563072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.636719, 31.309320, 37.944160>,  <42.593609, 31.368135, 38.172813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.636719, 31.309320, 37.944160>,  <42.708572, 31.211296, 37.563072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636719, 31.309320, 37.944160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054793, 0.964479, -0.258415,
		-0.982207, -0.098621, -0.159822,
		-0.179630, 0.245060, 0.952722,
		42.582829, 31.382839, 38.229977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168926, 31.659447, 37.501110>,  <42.708572, 31.211296, 37.563072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168926, 31.659447, 37.501110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.389248, 31.721825, 37.829082>,  <42.521442, 31.759251, 38.025867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.389248, 31.721825, 37.829082>,  <42.168926, 31.659447, 37.501110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.389248, 31.721825, 37.829082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108884, 0.960568, -0.255837,
		-0.827499, 0.230195, 0.512109,
		0.550808, 0.155945, 0.819934,
		42.554489, 31.768608, 38.075062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955997, 32.260239, 37.580952>,  <42.168926, 31.659447, 37.501110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955997, 32.260239, 37.580952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.273308, 32.255688, 37.824455>,  <42.463692, 32.252956, 37.970558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.273308, 32.255688, 37.824455>,  <41.955997, 32.260239, 37.580952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.273308, 32.255688, 37.824455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195188, 0.951808, -0.236566,
		-0.576733, 0.306484, 0.757262,
		0.793272, -0.011373, 0.608761,
		42.511288, 32.252277, 38.007084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858395, 32.835262, 38.168659>,  <41.955997, 32.260239, 37.580952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858395, 32.835262, 38.168659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.241825, 32.743301, 38.101406>,  <42.471886, 32.688126, 38.061054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.241825, 32.743301, 38.101406>,  <41.858395, 32.835262, 38.168659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241825, 32.743301, 38.101406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229007, 0.973105, -0.024943,
		0.169348, -0.014594, 0.985448,
		0.958581, -0.229899, -0.168135,
		42.529400, 32.674332, 38.050964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279499, 33.393826, 38.553383>,  <41.858395, 32.835262, 38.168659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279499, 33.393826, 38.553383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.532913, 33.227749, 38.292233>,  <42.684963, 33.128105, 38.135544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.532913, 33.227749, 38.292233>,  <42.279499, 33.393826, 38.553383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532913, 33.227749, 38.292233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262309, 0.909108, -0.323599,
		0.727891, 0.033757, 0.684862,
		0.633537, -0.415190, -0.652877,
		42.722973, 33.103191, 38.096371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.955879, 33.666561, 38.738823>,  <42.279499, 33.393826, 38.553383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.955879, 33.666561, 38.738823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.945881, 33.548203, 38.356865>,  <42.939880, 33.477188, 38.127689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.945881, 33.548203, 38.356865>,  <42.955879, 33.666561, 38.738823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945881, 33.548203, 38.356865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049597, 0.953648, -0.296810,
		0.998456, -0.054778, -0.009160,
		-0.024994, -0.295897, -0.954893,
		42.938381, 33.459435, 38.070396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500484, 34.038872, 38.286560>,  <42.955879, 33.666561, 38.738823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500484, 34.038872, 38.286560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.255436, 33.886395, 38.009609>,  <43.108406, 33.794907, 37.843437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.255436, 33.886395, 38.009609>,  <43.500484, 34.038872, 38.286560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.255436, 33.886395, 38.009609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099698, 0.906280, -0.410751,
		0.784066, -0.182604, -0.593208,
		-0.612618, -0.381197, -0.692378,
		43.071651, 33.772034, 37.801895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.831997, 34.288692, 37.742310>,  <43.500484, 34.038872, 38.286560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.831997, 34.288692, 37.742310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.467278, 34.194824, 37.607517>,  <43.248447, 34.138504, 37.526642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.467278, 34.194824, 37.607517>,  <43.831997, 34.288692, 37.742310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467278, 34.194824, 37.607517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101665, 0.924079, -0.368431,
		0.397860, -0.301674, -0.866429,
		-0.911796, -0.234670, -0.336985,
		43.193737, 34.124424, 37.506420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.884315, 34.579803, 37.082272>,  <43.831997, 34.288692, 37.742310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.884315, 34.579803, 37.082272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.503815, 34.526573, 37.193565>,  <43.275513, 34.494637, 37.260342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.503815, 34.526573, 37.193565>,  <43.884315, 34.579803, 37.082272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.503815, 34.526573, 37.193565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207316, 0.943807, -0.257387,
		-0.228347, -0.302521, -0.925386,
		-0.951251, -0.133074, 0.278233,
		43.218441, 34.486652, 37.277035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.130669, 35.095016, 36.616383>,  <43.884315, 34.579803, 37.082272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.130669, 35.095016, 36.616383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.436142, 35.009087, 36.372864>,  <44.619427, 34.957527, 36.226753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.436142, 35.009087, 36.372864>,  <44.130669, 35.095016, 36.616383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.436142, 35.009087, 36.372864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644934, -0.211397, -0.734419,
		0.029075, 0.953499, -0.299990,
		0.763685, -0.214827, -0.608798,
		44.665249, 34.944637, 36.190224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854095, 35.319588, 35.953285>,  <44.130669, 35.095016, 36.616383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854095, 35.319588, 35.953285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.147495, 35.062225, 35.865639>,  <44.323536, 34.907806, 35.813053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.147495, 35.062225, 35.865639>,  <43.854095, 35.319588, 35.953285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.147495, 35.062225, 35.865639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568507, -0.404068, -0.716609,
		0.372536, 0.650197, -0.662164,
		0.733496, -0.643408, -0.219112,
		44.367542, 34.869202, 35.799904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.876850, 35.193233, 35.197411>,  <43.854095, 35.319588, 35.953285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.876850, 35.193233, 35.197411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.098389, 34.885685, 35.325214>,  <44.231312, 34.701157, 35.401897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.098389, 34.885685, 35.325214>,  <43.876850, 35.193233, 35.197411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098389, 34.885685, 35.325214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673154, -0.639332, -0.371643,
		0.490021, -0.009249, -0.871661,
		0.553844, -0.768875, 0.319512,
		44.264542, 34.655022, 35.421066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925591, 34.769951, 34.619869>,  <43.876850, 35.193233, 35.197411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.925591, 34.769951, 34.619869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.048874, 34.533421, 34.917953>,  <44.122845, 34.391502, 35.096802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.048874, 34.533421, 34.917953>,  <43.925591, 34.769951, 34.619869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.048874, 34.533421, 34.917953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559557, -0.746193, -0.360681,
		0.769351, -0.305820, -0.560869,
		0.308213, -0.591329, 0.745208,
		44.141338, 34.356022, 35.141518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.095898, 34.035854, 34.351612>,  <43.925591, 34.769951, 34.619869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.095898, 34.035854, 34.351612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.997337, 33.994640, 34.737083>,  <43.938202, 33.969913, 34.968365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.997337, 33.994640, 34.737083>,  <44.095898, 34.035854, 34.351612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.997337, 33.994640, 34.737083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653361, -0.716754, -0.243689,
		0.715827, -0.689673, 0.109288,
		-0.246398, -0.103035, 0.963677,
		43.923416, 33.963730, 35.026188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.179291, 33.354504, 34.538258>,  <44.095898, 34.035854, 34.351612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.179291, 33.354504, 34.538258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.911221, 33.516384, 34.787121>,  <43.750378, 33.613514, 34.936440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.911221, 33.516384, 34.787121>,  <44.179291, 33.354504, 34.538258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911221, 33.516384, 34.787121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659713, -0.708889, -0.249510,
		0.340062, -0.577661, 0.742069,
		-0.670176, 0.404703, 0.622156,
		43.710167, 33.637794, 34.973766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923489, 32.792931, 34.973957>,  <44.179291, 33.354504, 34.538258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923489, 32.792931, 34.973957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.643589, 33.076065, 35.012592>,  <43.475651, 33.245945, 35.035774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.643589, 33.076065, 35.012592>,  <43.923489, 32.792931, 34.973957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643589, 33.076065, 35.012592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709889, -0.704107, 0.017062,
		0.080083, -0.056625, 0.995179,
		-0.699746, 0.707832, 0.096584,
		43.433666, 33.288414, 35.041569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.378365, 32.375217, 35.060066>,  <43.923489, 32.792931, 34.973957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.378365, 32.375217, 35.060066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.190434, 32.725864, 35.018494>,  <43.077675, 32.936253, 34.993549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.190434, 32.725864, 35.018494>,  <43.378365, 32.375217, 35.060066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.190434, 32.725864, 35.018494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881861, -0.471391, 0.010543,
		-0.039750, 0.096605, 0.994529,
		-0.469830, 0.876617, -0.103930,
		43.049484, 32.988850, 34.987316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.964760, 32.600033, 35.654381>,  <43.378365, 32.375217, 35.060066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.964760, 32.600033, 35.654381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.797085, 32.802151, 35.352661>,  <42.696480, 32.923420, 35.171631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.797085, 32.802151, 35.352661>,  <42.964760, 32.600033, 35.654381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797085, 32.802151, 35.352661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877453, -0.438826, 0.193668,
		-0.233146, 0.743043, 0.627320,
		-0.419188, 0.505291, -0.754296,
		42.671329, 32.953739, 35.126373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444237, 32.877327, 35.951664>,  <42.964760, 32.600033, 35.654381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444237, 32.877327, 35.951664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.350925, 32.897850, 35.563244>,  <42.294937, 32.910164, 35.330193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.350925, 32.897850, 35.563244>,  <42.444237, 32.877327, 35.951664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350925, 32.897850, 35.563244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837003, -0.518909, 0.173662,
		-0.494979, 0.853288, 0.163996,
		-0.233283, 0.051306, -0.971054,
		42.280941, 32.913242, 35.271927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684521, 33.055225, 35.928207>,  <42.444237, 32.877327, 35.951664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684521, 33.055225, 35.928207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.760395, 32.880436, 35.576508>,  <41.805920, 32.775562, 35.365490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.760395, 32.880436, 35.576508>,  <41.684521, 33.055225, 35.928207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760395, 32.880436, 35.576508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694412, -0.692793, 0.194498,
		-0.694128, 0.573671, -0.434842,
		0.189678, -0.436966, -0.879251,
		41.817299, 32.749344, 35.312733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963757, 32.955639, 35.639378>,  <41.684521, 33.055225, 35.928207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963757, 32.955639, 35.639378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.215015, 32.729824, 35.425186>,  <41.365768, 32.594337, 35.296673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.215015, 32.729824, 35.425186>,  <40.963757, 32.955639, 35.639378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215015, 32.729824, 35.425186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699545, -0.711056, -0.070963,
		-0.340694, 0.419166, -0.841563,
		0.628144, -0.564535, -0.535478,
		41.403458, 32.560463, 35.264542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547169, 32.804157, 35.056305>,  <40.963757, 32.955639, 35.639378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547169, 32.804157, 35.056305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.844032, 32.537697, 35.085819>,  <41.022152, 32.377819, 35.103527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.844032, 32.537697, 35.085819>,  <40.547169, 32.804157, 35.056305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844032, 32.537697, 35.085819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665999, -0.720653, 0.192626,
		-0.075146, -0.192098, -0.978494,
		0.742158, -0.666151, 0.073783,
		41.066681, 32.337852, 35.107956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256027, 32.256702, 34.696075>,  <40.547169, 32.804157, 35.056305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256027, 32.256702, 34.696075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.547947, 32.103008, 34.922264>,  <40.723099, 32.010792, 35.057976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.547947, 32.103008, 34.922264>,  <40.256027, 32.256702, 34.696075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547947, 32.103008, 34.922264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623451, -0.713449, 0.319843,
		0.280539, -0.585964, -0.760226,
		0.729799, -0.384235, 0.565470,
		40.766888, 31.987738, 35.091904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483551, 31.660635, 34.457176>,  <40.256027, 32.256702, 34.696075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483551, 31.660635, 34.457176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.592407, 31.600122, 34.837292>,  <40.657722, 31.563814, 35.065361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.592407, 31.600122, 34.837292>,  <40.483551, 31.660635, 34.457176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592407, 31.600122, 34.837292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638254, -0.767436, 0.060608,
		0.720119, -0.623021, -0.305407,
		0.272141, -0.151283, 0.950291,
		40.674049, 31.554737, 35.122379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532913, 30.890261, 34.591297>,  <40.483551, 31.660635, 34.457176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532913, 30.890261, 34.591297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.522320, 31.053223, 34.956444>,  <40.515965, 31.150999, 35.175529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.522320, 31.053223, 34.956444>,  <40.532913, 30.890261, 34.591297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522320, 31.053223, 34.956444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611163, -0.729238, 0.307721,
		0.791062, -0.549759, 0.268302,
		-0.026483, 0.407403, 0.912865,
		40.514374, 31.175444, 35.230305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616707, 30.315451, 35.101524>,  <40.532913, 30.890261, 34.591297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616707, 30.315451, 35.101524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.409050, 30.597200, 35.295166>,  <40.284458, 30.766251, 35.411350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.409050, 30.597200, 35.295166>,  <40.616707, 30.315451, 35.101524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409050, 30.597200, 35.295166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731512, -0.659107, 0.174551,
		0.442024, -0.263511, 0.857424,
		-0.519138, 0.704372, 0.484103,
		40.253307, 30.808512, 35.440395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438011, 29.993658, 35.611210>,  <40.616707, 30.315451, 35.101524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438011, 29.993658, 35.611210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.187847, 30.304014, 35.578098>,  <40.037750, 30.490229, 35.558231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.187847, 30.304014, 35.578098>,  <40.438011, 29.993658, 35.611210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187847, 30.304014, 35.578098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761384, -0.583591, 0.282339,
		0.170753, 0.239607, 0.955736,
		-0.625410, 0.775893, -0.082783,
		40.000225, 30.536781, 35.553265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.093712, 29.886583, 36.255901>,  <40.438011, 29.993658, 35.611210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.093712, 29.886583, 36.255901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.880440, 30.155060, 36.049904>,  <39.752476, 30.316147, 35.926304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.880440, 30.155060, 36.049904>,  <40.093712, 29.886583, 36.255901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880440, 30.155060, 36.049904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826134, -0.281920, 0.487877,
		0.182272, 0.685581, 0.704810,
		-0.533179, 0.671193, -0.514995,
		39.720486, 30.356419, 35.895405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516464, 30.199173, 36.751587>,  <40.093712, 29.886583, 36.255901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516464, 30.199173, 36.751587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.407204, 30.268064, 36.373016>,  <39.341648, 30.309399, 36.145874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.407204, 30.268064, 36.373016>,  <39.516464, 30.199173, 36.751587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407204, 30.268064, 36.373016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931320, -0.293719, 0.215341,
		-0.240896, 0.940248, 0.240629,
		-0.273151, 0.172228, -0.946428,
		39.325260, 30.319733, 36.089088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847530, 30.499722, 36.786270>,  <39.516464, 30.199173, 36.751587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847530, 30.499722, 36.786270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.847233, 30.334181, 36.422131>,  <38.847054, 30.234858, 36.203648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.847233, 30.334181, 36.422131>,  <38.847530, 30.499722, 36.786270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847233, 30.334181, 36.422131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851685, -0.476807, 0.217457,
		-0.524054, 0.775489, -0.352114,
		-0.000745, -0.413850, -0.910345,
		38.847008, 30.210026, 36.149029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.088146, 38.188000, 42.143383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750668, 38.011349, 42.265461>,  <36.548180, 37.905357, 42.338707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750668, 38.011349, 42.265461>,  <37.088146, 38.188000, 42.143383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750668, 38.011349, 42.265461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094530, -0.437410, -0.894280,
		0.528429, -0.783352, 0.327295,
		-0.843698, -0.441624, 0.305191,
		36.497559, 37.878860, 42.357018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170212, 37.436672, 42.208511>,  <37.088146, 38.188000, 42.143383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170212, 37.436672, 42.208511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783070, 37.490379, 42.123440>,  <36.550785, 37.522606, 42.072395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783070, 37.490379, 42.123440>,  <37.170212, 37.436672, 42.208511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783070, 37.490379, 42.123440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107655, -0.543057, -0.832766,
		-0.227312, -0.828891, 0.511145,
		-0.967853, 0.134271, -0.212677,
		36.492714, 37.530663, 42.059635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907612, 36.779510, 42.121391>,  <37.170212, 37.436672, 42.208511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907612, 36.779510, 42.121391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635277, 37.009544, 41.939960>,  <36.471874, 37.147564, 41.831100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635277, 37.009544, 41.939960>,  <36.907612, 36.779510, 42.121391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635277, 37.009544, 41.939960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037726, -0.590921, -0.805847,
		-0.731462, -0.565763, 0.380626,
		-0.680838, 0.575086, -0.453580,
		36.431026, 37.182072, 41.803886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699348, 36.393383, 41.681286>,  <36.907612, 36.779510, 42.121391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699348, 36.393383, 41.681286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483902, 36.694641, 41.530201>,  <36.354633, 36.875397, 41.439548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483902, 36.694641, 41.530201>,  <36.699348, 36.393383, 41.681286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483902, 36.694641, 41.530201> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048961, -0.419559, -0.906406,
		-0.841130, -0.506695, 0.189105,
		-0.538612, 0.753147, -0.377712,
		36.322319, 36.920586, 41.416885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109520, 36.125965, 41.318897>,  <36.699348, 36.393383, 41.681286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109520, 36.125965, 41.318897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144295, 36.486687, 41.149570>,  <36.165161, 36.703117, 41.047974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144295, 36.486687, 41.149570>,  <36.109520, 36.125965, 41.318897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144295, 36.486687, 41.149570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064626, -0.418927, -0.905717,
		-0.994115, 0.106101, 0.021858,
		0.086941, 0.901800, -0.423319,
		36.170376, 36.757225, 41.022575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691525, 36.049938, 40.761227>,  <36.109520, 36.125965, 41.318897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691525, 36.049938, 40.761227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920578, 36.366570, 40.675907>,  <36.058010, 36.556549, 40.624714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920578, 36.366570, 40.675907>,  <35.691525, 36.049938, 40.761227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920578, 36.366570, 40.675907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167608, -0.367724, -0.914706,
		-0.802498, 0.488037, -0.343245,
		0.572630, 0.791580, -0.213299,
		36.092365, 36.604042, 40.611916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338680, 36.390755, 40.225037>,  <35.691525, 36.049938, 40.761227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338680, 36.390755, 40.225037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724987, 36.492584, 40.205090>,  <35.956772, 36.553684, 40.193123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724987, 36.492584, 40.205090>,  <35.338680, 36.390755, 40.225037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724987, 36.492584, 40.205090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040682, -0.338475, -0.940096,
		-0.256206, 0.905883, -0.337244,
		0.965766, 0.254578, -0.049866,
		36.014717, 36.568958, 40.190128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389019, 36.544765, 39.533859>,  <35.338680, 36.390755, 40.225037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389019, 36.544765, 39.533859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773178, 36.492397, 39.632236>,  <36.003674, 36.460976, 39.691265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773178, 36.492397, 39.632236>,  <35.389019, 36.544765, 39.533859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773178, 36.492397, 39.632236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158229, -0.470289, -0.868212,
		0.229331, 0.872748, -0.430951,
		0.960401, -0.130919, 0.245946,
		36.061298, 36.453121, 39.706020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809856, 36.656822, 38.874828>,  <35.389019, 36.544765, 39.533859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809856, 36.656822, 38.874828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035049, 36.459328, 39.139938>,  <36.170166, 36.340832, 39.299004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035049, 36.459328, 39.139938>,  <35.809856, 36.656822, 38.874828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035049, 36.459328, 39.139938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391444, -0.546990, -0.739982,
		0.727892, 0.676035, -0.114672,
		0.562979, -0.493740, 0.662779,
		36.203941, 36.311207, 39.338772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569077, 36.662453, 38.641819>,  <35.809856, 36.656822, 38.874828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569077, 36.662453, 38.641819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490055, 36.337006, 38.860542>,  <36.442642, 36.141739, 38.991776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490055, 36.337006, 38.860542>,  <36.569077, 36.662453, 38.641819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490055, 36.337006, 38.860542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277143, -0.581404, -0.764958,
		0.940300, 0.000424, 0.340347,
		-0.197555, -0.813615, 0.546811,
		36.430790, 36.092922, 39.024586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255661, 36.270370, 38.584332>,  <36.569077, 36.662453, 38.641819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255661, 36.270370, 38.584332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033062, 35.966816, 38.719624>,  <36.899502, 35.784683, 38.800797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033062, 35.966816, 38.719624>,  <37.255661, 36.270370, 38.584332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033062, 35.966816, 38.719624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103290, -0.467122, -0.878139,
		0.824402, -0.453749, 0.338339,
		-0.556500, -0.758887, 0.338229,
		36.866112, 35.739151, 38.821091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550266, 35.717159, 38.413723>,  <37.255661, 36.270370, 38.584332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550266, 35.717159, 38.413723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185734, 35.573582, 38.494362>,  <36.967014, 35.487434, 38.542744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185734, 35.573582, 38.494362>,  <37.550266, 35.717159, 38.413723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185734, 35.573582, 38.494362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088435, -0.307573, -0.947406,
		0.402068, -0.881227, 0.248557,
		-0.911329, -0.358941, 0.201597,
		36.912334, 35.465900, 38.554840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504410, 35.000698, 38.398483>,  <37.550266, 35.717159, 38.413723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504410, 35.000698, 38.398483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148987, 35.164028, 38.314838>,  <36.935730, 35.262028, 38.264652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148987, 35.164028, 38.314838>,  <37.504410, 35.000698, 38.398483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148987, 35.164028, 38.314838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137408, -0.198005, -0.970522,
		-0.437694, -0.891103, 0.119833,
		-0.888562, 0.408326, -0.209110,
		36.882420, 35.286526, 38.252106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292564, 35.221878, 38.192673>,  <37.504410, 35.000698, 38.398483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292564, 35.221878, 38.192673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508297, 34.895340, 38.110023>,  <38.637737, 34.699417, 38.060432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508297, 34.895340, 38.110023>,  <38.292564, 35.221878, 38.192673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508297, 34.895340, 38.110023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684813, -0.567987, 0.456533,
		-0.490050, -0.104726, -0.865381,
		0.539336, -0.816348, -0.206624,
		38.670097, 34.650436, 38.048035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892899, 34.703430, 37.746731>,  <38.292564, 35.221878, 38.192673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892899, 34.703430, 37.746731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163383, 34.549126, 37.997784>,  <38.325672, 34.456543, 38.148415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163383, 34.549126, 37.997784>,  <37.892899, 34.703430, 37.746731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163383, 34.549126, 37.997784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731328, -0.454281, 0.508712,
		0.088879, -0.803003, -0.589310,
		0.676210, -0.385765, 0.627635,
		38.366245, 34.433395, 38.186073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731445, 33.894108, 37.887157>,  <37.892899, 34.703430, 37.746731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731445, 33.894108, 37.887157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965034, 34.015778, 38.188210>,  <38.105190, 34.088779, 38.368839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965034, 34.015778, 38.188210>,  <37.731445, 33.894108, 37.887157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965034, 34.015778, 38.188210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529930, -0.559486, 0.637299,
		0.614937, -0.771007, -0.165533,
		0.583975, 0.304177, 0.752628,
		38.140228, 34.107029, 38.413998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969040, 33.285435, 38.207958>,  <37.731445, 33.894108, 37.887157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969040, 33.285435, 38.207958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048801, 33.559078, 38.488594>,  <38.096657, 33.723267, 38.656975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.048801, 33.559078, 38.488594>,  <37.969040, 33.285435, 38.207958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.048801, 33.559078, 38.488594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451313, -0.571400, 0.685433,
		0.869802, -0.453314, 0.194810,
		0.199402, 0.684112, 0.701592,
		38.108624, 33.764313, 38.699070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255177, 32.890850, 38.788425>,  <37.969040, 33.285435, 38.207958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255177, 32.890850, 38.788425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099316, 33.239399, 38.907681>,  <38.005798, 33.448528, 38.979233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099316, 33.239399, 38.907681>,  <38.255177, 32.890850, 38.788425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099316, 33.239399, 38.907681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407822, -0.453511, 0.792470,
		0.825744, 0.187199, 0.532075,
		-0.389651, 0.871369, 0.298140,
		37.982422, 33.500809, 38.997124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407055, 32.878201, 39.416458>,  <38.255177, 32.890850, 38.788425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407055, 32.878201, 39.416458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131210, 33.166954, 39.393436>,  <37.965702, 33.340206, 39.379623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131210, 33.166954, 39.393436>,  <38.407055, 32.878201, 39.416458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131210, 33.166954, 39.393436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473614, -0.389464, 0.789941,
		0.547835, 0.572010, 0.610476,
		-0.689613, 0.721888, -0.057550,
		37.924328, 33.383522, 39.376171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239758, 33.117241, 40.121155>,  <38.407055, 32.878201, 39.416458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239758, 33.117241, 40.121155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927628, 33.237553, 39.901836>,  <37.740349, 33.309738, 39.770245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927628, 33.237553, 39.901836>,  <38.239758, 33.117241, 40.121155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927628, 33.237553, 39.901836> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601274, -0.119805, 0.790010,
		0.171929, 0.946139, 0.274337,
		-0.780327, 0.300777, -0.548291,
		37.693531, 33.327785, 39.737350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887127, 33.694065, 40.511246>,  <38.239758, 33.117241, 40.121155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887127, 33.694065, 40.511246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602654, 33.586479, 40.251438>,  <37.431969, 33.521927, 40.095554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602654, 33.586479, 40.251438>,  <37.887127, 33.694065, 40.511246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602654, 33.586479, 40.251438> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660666, -0.060102, 0.748270,
		-0.240295, 0.961273, -0.134951,
		-0.711181, -0.268963, -0.649523,
		37.389297, 33.505791, 40.056580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385513, 34.094826, 40.744343>,  <37.887127, 33.694065, 40.511246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385513, 34.094826, 40.744343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191475, 33.839954, 40.504780>,  <37.075050, 33.687031, 40.361042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191475, 33.839954, 40.504780>,  <37.385513, 34.094826, 40.744343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191475, 33.839954, 40.504780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690889, -0.140575, 0.709162,
		-0.536053, 0.757788, -0.372028,
		-0.485097, -0.637179, -0.598903,
		37.045944, 33.648800, 40.325108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667778, 34.328835, 40.564930>,  <37.385513, 34.094826, 40.744343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667778, 34.328835, 40.564930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683990, 33.929634, 40.545528>,  <36.693718, 33.690113, 40.533890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683990, 33.929634, 40.545528>,  <36.667778, 34.328835, 40.564930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683990, 33.929634, 40.545528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641679, -0.063208, 0.764365,
		-0.765902, 0.000139, -0.642957,
		0.040534, -0.998000, -0.048500,
		36.696152, 33.630234, 40.530979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996929, 34.260368, 40.710495>,  <36.667778, 34.328835, 40.564930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996929, 34.260368, 40.710495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197723, 33.917007, 40.752750>,  <36.318199, 33.710991, 40.778103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197723, 33.917007, 40.752750>,  <35.996929, 34.260368, 40.710495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197723, 33.917007, 40.752750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483762, -0.177436, 0.857024,
		-0.716924, -0.481320, -0.504331,
		0.501990, -0.858398, 0.105636,
		36.348320, 33.659489, 40.784443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617504, 34.003147, 41.244644>,  <35.996929, 34.260368, 40.710495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617504, 34.003147, 41.244644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923344, 33.745754, 41.259148>,  <36.106846, 33.591316, 41.267849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923344, 33.745754, 41.259148>,  <35.617504, 34.003147, 41.244644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923344, 33.745754, 41.259148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181562, -0.161068, 0.970099,
		-0.618404, -0.748321, -0.239985,
		0.764599, -0.643485, 0.036261,
		36.152725, 33.552708, 41.270027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437214, 33.390987, 41.683033>,  <35.617504, 34.003147, 41.244644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437214, 33.390987, 41.683033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835670, 33.355968, 41.680466>,  <36.074745, 33.334957, 41.678925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835670, 33.355968, 41.680466>,  <35.437214, 33.390987, 41.683033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835670, 33.355968, 41.680466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016758, -0.261489, 0.965061,
		-0.086163, -0.961228, -0.261947,
		0.996140, -0.087543, -0.006422,
		36.134514, 33.329704, 41.678539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601795, 32.831329, 41.981304>,  <35.437214, 33.390987, 41.683033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601795, 32.831329, 41.981304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948063, 33.027779, 42.020130>,  <36.155823, 33.145649, 42.043427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948063, 33.027779, 42.020130>,  <35.601795, 32.831329, 41.981304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948063, 33.027779, 42.020130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017448, -0.164170, 0.986278,
		0.500319, -0.855480, -0.133547,
		0.865665, 0.491123, 0.097064,
		36.207764, 33.175117, 42.049248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963501, 32.349918, 42.402039>,  <35.601795, 32.831329, 41.981304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963501, 32.349918, 42.402039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106857, 32.722168, 42.431690>,  <36.192871, 32.945518, 42.449482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106857, 32.722168, 42.431690>,  <35.963501, 32.349918, 42.402039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106857, 32.722168, 42.431690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097321, -0.116216, 0.988444,
		0.928484, -0.347038, -0.132220,
		0.358394, 0.930623, 0.074131,
		36.214375, 33.001354, 42.453930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503666, 31.839489, 42.497822>,  <35.963501, 32.349918, 42.402039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503666, 31.839489, 42.497822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163563, 31.678173, 42.633125>,  <34.959499, 31.581383, 42.714306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163563, 31.678173, 42.633125>,  <35.503666, 31.839489, 42.497822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163563, 31.678173, 42.633125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219249, -0.312870, -0.924144,
		0.478528, -0.859924, 0.177599,
		-0.850259, -0.403291, 0.338254,
		34.908485, 31.557186, 42.734600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494713, 31.184595, 42.281544>,  <35.503666, 31.839489, 42.497822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494713, 31.184595, 42.281544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116398, 31.282158, 42.367336>,  <34.889408, 31.340696, 42.418812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116398, 31.282158, 42.367336>,  <35.494713, 31.184595, 42.281544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116398, 31.282158, 42.367336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279252, -0.273419, -0.920468,
		-0.165864, -0.930458, 0.326707,
		-0.945784, 0.243906, 0.214481,
		34.832664, 31.355330, 42.431679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107124, 30.673206, 41.869476>,  <35.494713, 31.184595, 42.281544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107124, 30.673206, 41.869476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848137, 30.963430, 41.962727>,  <34.692745, 31.137564, 42.018677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848137, 30.963430, 41.962727>,  <35.107124, 30.673206, 41.869476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848137, 30.963430, 41.962727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475248, -0.145274, -0.867776,
		-0.595754, -0.672652, 0.438880,
		-0.647469, 0.725558, 0.233129,
		34.653896, 31.181097, 42.032665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403778, 30.433907, 41.738659>,  <35.107124, 30.673206, 41.869476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403778, 30.433907, 41.738659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373196, 30.832699, 41.733250>,  <34.354847, 31.071974, 41.730003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373196, 30.832699, 41.733250>,  <34.403778, 30.433907, 41.738659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373196, 30.832699, 41.733250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375762, -0.041379, -0.925792,
		-0.923557, -0.065702, 0.377791,
		-0.076459, 0.996981, -0.013527,
		34.350258, 31.131794, 41.729191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803898, 30.636322, 41.450123>,  <34.403778, 30.433907, 41.738659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803898, 30.636322, 41.450123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976612, 30.994446, 41.406349>,  <34.080242, 31.209320, 41.380085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976612, 30.994446, 41.406349>,  <33.803898, 30.636322, 41.450123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976612, 30.994446, 41.406349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379947, 0.070500, -0.922318,
		-0.818047, 0.439826, 0.370612,
		0.431787, 0.895312, -0.109438,
		34.106148, 31.263039, 41.373516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248638, 31.158775, 41.219315>,  <33.803898, 30.636322, 41.450123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248638, 31.158775, 41.219315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602619, 31.317585, 41.121967>,  <33.815006, 31.412870, 41.063557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602619, 31.317585, 41.121967>,  <33.248638, 31.158775, 41.219315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602619, 31.317585, 41.121967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343971, 0.204999, -0.916329,
		-0.313913, 0.894622, 0.317979,
		0.884953, 0.397023, -0.243372,
		33.868107, 31.436691, 41.048954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095676, 31.807932, 40.987339>,  <33.248638, 31.158775, 41.219315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095676, 31.807932, 40.987339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454205, 31.730490, 40.827774>,  <33.669319, 31.684025, 40.732037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454205, 31.730490, 40.827774>,  <33.095676, 31.807932, 40.987339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454205, 31.730490, 40.827774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373894, 0.153616, -0.914661,
		0.238364, 0.968978, 0.065300,
		0.896318, -0.193607, -0.398912,
		33.723099, 31.672407, 40.708099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187252, 32.310406, 40.518005>,  <33.095676, 31.807932, 40.987339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187252, 32.310406, 40.518005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434185, 32.007389, 40.433128>,  <33.582344, 31.825579, 40.382202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434185, 32.007389, 40.433128>,  <33.187252, 32.310406, 40.518005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434185, 32.007389, 40.433128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236543, 0.078509, -0.968444,
		0.750299, 0.648045, -0.130726,
		0.617332, -0.757545, -0.212196,
		33.619385, 31.780125, 40.369469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565395, 32.552937, 39.948910>,  <33.187252, 32.310406, 40.518005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565395, 32.552937, 39.948910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589684, 32.153793, 39.939190>,  <33.604256, 31.914307, 39.933357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589684, 32.153793, 39.939190>,  <33.565395, 32.552937, 39.948910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589684, 32.153793, 39.939190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235120, 0.009366, -0.971921,
		0.970068, 0.064725, -0.234048,
		0.060716, -0.997859, -0.024304,
		33.607899, 31.854435, 39.931900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852928, 32.468651, 39.305225>,  <33.565395, 32.552937, 39.948910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852928, 32.468651, 39.305225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706722, 32.104328, 39.381992>,  <33.618999, 31.885735, 39.428051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706722, 32.104328, 39.381992>,  <33.852928, 32.468651, 39.305225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706722, 32.104328, 39.381992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312360, -0.074203, -0.947061,
		0.876830, -0.406111, -0.257377,
		-0.365514, -0.910806, 0.191916,
		33.597069, 31.831087, 39.439568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975399, 32.174793, 38.719383>,  <33.852928, 32.468651, 39.305225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975399, 32.174793, 38.719383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685749, 31.958538, 38.890659>,  <33.511959, 31.828785, 38.993423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685749, 31.958538, 38.890659>,  <33.975399, 32.174793, 38.719383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685749, 31.958538, 38.890659> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502865, -0.010995, -0.864295,
		0.471978, -0.841184, -0.263906,
		-0.724129, -0.540638, 0.428191,
		33.468510, 31.796347, 39.019115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910557, 31.495522, 38.470589>,  <33.975399, 32.174793, 38.719383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910557, 31.495522, 38.470589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577854, 31.682695, 38.590065>,  <33.378231, 31.795000, 38.661751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577854, 31.682695, 38.590065>,  <33.910557, 31.495522, 38.470589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577854, 31.682695, 38.590065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309823, 0.055164, -0.949192,
		-0.460636, -0.882040, 0.099093,
		-0.831760, 0.467933, 0.298687,
		33.328327, 31.823074, 38.679672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.281910, 31.578779, 46.349079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.909573, 31.722614, 46.375103>,  <35.686172, 31.808916, 46.390717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.909573, 31.722614, 46.375103>,  <36.281910, 31.578779, 46.349079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909573, 31.722614, 46.375103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209614, -0.379588, -0.901097,
		-0.299326, -0.852415, 0.428710,
		-0.930841, 0.359586, 0.065058,
		35.630322, 31.830490, 46.394619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832901, 31.027649, 46.165237>,  <36.281910, 31.578779, 46.349079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832901, 31.027649, 46.165237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.636967, 31.371735, 46.108532>,  <35.519405, 31.578186, 46.074509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.636967, 31.371735, 46.108532>,  <35.832901, 31.027649, 46.165237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636967, 31.371735, 46.108532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295200, -0.316653, -0.901436,
		-0.820318, -0.399704, 0.409042,
		-0.489832, 0.860214, -0.141763,
		35.490017, 31.629799, 46.066002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205605, 30.757538, 45.844009>,  <35.832901, 31.027649, 46.165237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205605, 30.757538, 45.844009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.229954, 31.147375, 45.757793>,  <35.244564, 31.381279, 45.706062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.229954, 31.147375, 45.757793>,  <35.205605, 30.757538, 45.844009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229954, 31.147375, 45.757793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200916, -0.199559, -0.959067,
		-0.977715, 0.101685, 0.183664,
		0.060871, 0.974595, -0.215542,
		35.248215, 31.439754, 45.693130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597786, 30.921515, 45.411438>,  <35.205605, 30.757538, 45.844009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597786, 30.921515, 45.411438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.852009, 31.219625, 45.330811>,  <35.004543, 31.398493, 45.282436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.852009, 31.219625, 45.330811>,  <34.597786, 30.921515, 45.411438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852009, 31.219625, 45.330811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267556, -0.032285, -0.963001,
		-0.724211, 0.665972, 0.178884,
		0.635556, 0.745278, -0.201566,
		35.042675, 31.443209, 45.270340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203091, 31.335148, 44.985016>,  <34.597786, 30.921515, 45.411438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203091, 31.335148, 44.985016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.575684, 31.458437, 44.907719>,  <34.799240, 31.532410, 44.861340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.575684, 31.458437, 44.907719>,  <34.203091, 31.335148, 44.985016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575684, 31.458437, 44.907719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162272, -0.123379, -0.979002,
		-0.325592, 0.943280, -0.064910,
		0.931482, 0.308222, -0.193239,
		34.855129, 31.550903, 44.849747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054489, 31.860237, 44.427670>,  <34.203091, 31.335148, 44.985016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054489, 31.860237, 44.427670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.440830, 31.756674, 44.431568>,  <34.672634, 31.694536, 44.433907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.440830, 31.756674, 44.431568>,  <34.054489, 31.860237, 44.427670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440830, 31.756674, 44.431568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012394, -0.083754, -0.996409,
		0.258794, 0.962264, -0.084103,
		0.965853, -0.258907, 0.009749,
		34.730587, 31.679001, 44.434494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310497, 32.388805, 44.058239>,  <34.054489, 31.860237, 44.427670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310497, 32.388805, 44.058239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.544155, 32.065598, 44.027573>,  <34.684349, 31.871672, 44.009174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.544155, 32.065598, 44.027573>,  <34.310497, 32.388805, 44.058239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544155, 32.065598, 44.027573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144526, -0.010601, -0.989444,
		0.798680, 0.589057, -0.122973,
		0.584142, -0.808022, -0.076667,
		34.719398, 31.823191, 44.004574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764168, 32.493484, 43.539436>,  <34.310497, 32.388805, 44.058239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764168, 32.493484, 43.539436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.762390, 32.095394, 43.578426>,  <34.761322, 31.856539, 43.601822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.762390, 32.095394, 43.578426>,  <34.764168, 32.493484, 43.539436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762390, 32.095394, 43.578426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209388, -0.094392, -0.973266,
		0.977823, -0.024740, -0.207969,
		-0.004448, -0.995228, 0.097479,
		34.761055, 31.796825, 43.607670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325859, 32.298801, 43.037258>,  <34.764168, 32.493484, 43.539436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325859, 32.298801, 43.037258> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.058010, 32.012283, 43.115772>,  <34.897301, 31.840372, 43.162880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.058010, 32.012283, 43.115772>,  <35.325859, 32.298801, 43.037258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058010, 32.012283, 43.115772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147224, -0.131020, -0.980387,
		0.727964, -0.685386, -0.017721,
		-0.669622, -0.716295, 0.196283,
		34.857124, 31.797394, 43.174656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954216, 32.269012, 43.270443>,  <35.325859, 32.298801, 43.037258>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954216, 32.269012, 43.270443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.089867, 32.619728, 43.134068>,  <36.171257, 32.830158, 43.052242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.089867, 32.619728, 43.134068>,  <35.954216, 32.269012, 43.270443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089867, 32.619728, 43.134068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206406, 0.284239, 0.936272,
		0.917818, -0.387888, -0.084580,
		0.339127, 0.876785, -0.340941,
		36.191605, 32.882763, 43.031784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616619, 32.367912, 43.631519>,  <35.954216, 32.269012, 43.270443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616619, 32.367912, 43.631519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.449390, 32.704342, 43.494221>,  <36.349052, 32.906200, 43.411842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.449390, 32.704342, 43.494221>,  <36.616619, 32.367912, 43.631519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449390, 32.704342, 43.494221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286424, 0.480624, 0.828832,
		0.862079, 0.248194, -0.441836,
		-0.418069, 0.841071, -0.343247,
		36.323971, 32.956661, 43.391247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060257, 32.877186, 43.851055>,  <36.616619, 32.367912, 43.631519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060257, 32.877186, 43.851055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.720963, 33.073948, 43.772541>,  <36.517387, 33.192005, 43.725433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.720963, 33.073948, 43.772541>,  <37.060257, 32.877186, 43.851055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720963, 33.073948, 43.772541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110772, 0.527188, 0.842498,
		0.517909, 0.692892, -0.501668,
		-0.848233, 0.491908, -0.196282,
		36.466492, 33.221519, 43.713657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208351, 33.557919, 43.927631>,  <37.060257, 32.877186, 43.851055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208351, 33.557919, 43.927631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.813332, 33.541534, 43.988373>,  <36.576321, 33.531704, 44.024818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.813332, 33.541534, 43.988373>,  <37.208351, 33.557919, 43.927631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813332, 33.541534, 43.988373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103631, 0.556833, 0.824135,
		-0.118319, 0.829614, -0.545657,
		-0.987553, -0.040964, 0.151857,
		36.517067, 33.529243, 44.033932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005600, 34.252743, 44.082458>,  <37.208351, 33.557919, 43.927631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005600, 34.252743, 44.082458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.728081, 34.004593, 44.228764>,  <36.561569, 33.855705, 44.316547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.728081, 34.004593, 44.228764>,  <37.005600, 34.252743, 44.082458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728081, 34.004593, 44.228764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207117, 0.658308, 0.723694,
		-0.689741, 0.426344, -0.585225,
		-0.693801, -0.620371, 0.365759,
		36.519939, 33.818481, 44.338490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447773, 34.680382, 44.269859>,  <37.005600, 34.252743, 44.082458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447773, 34.680382, 44.269859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.365223, 34.364670, 44.501183>,  <36.315693, 34.175240, 44.639977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.365223, 34.364670, 44.501183>,  <36.447773, 34.680382, 44.269859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365223, 34.364670, 44.501183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227521, 0.613539, 0.756177,
		-0.951653, 0.024477, -0.306197,
		-0.206373, -0.789285, 0.578308,
		36.303310, 34.127884, 44.674675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853058, 34.858707, 44.697922>,  <36.447773, 34.680382, 44.269859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853058, 34.858707, 44.697922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.005745, 34.546551, 44.896023>,  <36.097359, 34.359257, 45.014885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.005745, 34.546551, 44.896023>,  <35.853058, 34.858707, 44.697922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005745, 34.546551, 44.896023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071719, 0.509202, 0.857654,
		-0.921492, -0.362902, 0.138404,
		0.381720, -0.780394, 0.495252,
		36.120262, 34.312431, 45.044598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517155, 34.757034, 45.349262>,  <35.853058, 34.858707, 44.697922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517155, 34.757034, 45.349262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.851513, 34.555897, 45.437283>,  <36.052128, 34.435215, 45.490097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.851513, 34.555897, 45.437283>,  <35.517155, 34.757034, 45.349262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851513, 34.555897, 45.437283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051093, 0.327889, 0.943334,
		-0.546501, -0.799775, 0.248390,
		0.835898, -0.502841, 0.220055,
		36.102283, 34.405045, 45.503300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393860, 34.271225, 45.899128>,  <35.517155, 34.757034, 45.349262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393860, 34.271225, 45.899128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.787560, 34.341133, 45.909821>,  <36.023777, 34.383076, 45.916237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.787560, 34.341133, 45.909821>,  <35.393860, 34.271225, 45.899128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787560, 34.341133, 45.909821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075257, 0.277325, 0.957824,
		0.159982, -0.944747, 0.286109,
		0.984247, 0.174766, 0.026732,
		36.082832, 34.393562, 45.917839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547039, 34.122150, 46.597149>,  <35.393860, 34.271225, 45.899128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547039, 34.122150, 46.597149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.877728, 34.310345, 46.473747>,  <36.076141, 34.423260, 46.399708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.877728, 34.310345, 46.473747>,  <35.547039, 34.122150, 46.597149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877728, 34.310345, 46.473747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126596, 0.378711, 0.916816,
		0.548181, -0.797008, 0.253528,
		0.826723, 0.470485, -0.308500,
		36.125744, 34.451488, 46.381199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207245, 33.896572, 47.003593>,  <35.547039, 34.122150, 46.597149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207245, 33.896572, 47.003593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.253250, 34.268951, 46.864964>,  <36.280853, 34.492378, 46.781784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.253250, 34.268951, 46.864964>,  <36.207245, 33.896572, 47.003593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253250, 34.268951, 46.864964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245391, 0.311451, 0.918031,
		0.962577, -0.190635, -0.192624,
		0.115016, 0.930944, -0.346576,
		36.287754, 34.548233, 46.760990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850769, 34.124752, 47.267838>,  <36.207245, 33.896572, 47.003593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850769, 34.124752, 47.267838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.631344, 34.443008, 47.165051>,  <36.499691, 34.633965, 47.103378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.631344, 34.443008, 47.165051>,  <36.850769, 34.124752, 47.267838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631344, 34.443008, 47.165051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175237, 0.409914, 0.895132,
		0.817542, 0.446003, -0.364289,
		-0.548559, 0.795646, -0.256966,
		36.466778, 34.681702, 47.087959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186909, 34.686874, 47.522156>,  <36.850769, 34.124752, 47.267838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186909, 34.686874, 47.522156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.819607, 34.835709, 47.467953>,  <36.599224, 34.925011, 47.435432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.819607, 34.835709, 47.467953>,  <37.186909, 34.686874, 47.522156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819607, 34.835709, 47.467953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084588, 0.518597, 0.850824,
		0.386852, 0.769811, -0.507678,
		-0.918254, 0.372087, -0.135504,
		36.544132, 34.947334, 47.427303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214149, 35.408661, 47.648930>,  <37.186909, 34.686874, 47.522156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214149, 35.408661, 47.648930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.827538, 35.313766, 47.687981>,  <36.595570, 35.256828, 47.711411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.827538, 35.313766, 47.687981>,  <37.214149, 35.408661, 47.648930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827538, 35.313766, 47.687981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075449, 0.626602, 0.775679,
		-0.245191, 0.742354, -0.623531,
		-0.966534, -0.237234, 0.097627,
		36.537579, 35.242596, 47.717270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.788719, 36.897392, 48.262596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.058706, 36.633972, 48.129494>,  <30.220699, 36.475918, 48.049633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.058706, 36.633972, 48.129494>,  <29.788719, 36.897392, 48.262596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058706, 36.633972, 48.129494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057640, 0.402541, -0.913585,
		0.735592, 0.635821, 0.233744,
		0.674968, -0.658554, -0.332754,
		30.261196, 36.436405, 48.029667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110071, 37.208076, 47.688534>,  <29.788719, 36.897392, 48.262596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110071, 37.208076, 47.688534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.217585, 36.829117, 47.619041>,  <30.282093, 36.601742, 47.577347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.217585, 36.829117, 47.619041>,  <30.110071, 37.208076, 47.688534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217585, 36.829117, 47.619041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121122, 0.212179, -0.969696,
		0.955554, 0.239597, 0.171782,
		0.268785, -0.947403, -0.173728,
		30.298220, 36.544895, 47.566921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712341, 37.250645, 47.231525>,  <30.110071, 37.208076, 47.688534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712341, 37.250645, 47.231525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.553268, 36.884480, 47.206631>,  <30.457825, 36.664780, 47.191692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.553268, 36.884480, 47.206631>,  <30.712341, 37.250645, 47.231525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553268, 36.884480, 47.206631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126089, 0.012666, -0.991938,
		0.908818, -0.402324, 0.110386,
		-0.397683, -0.915410, -0.062239,
		30.433964, 36.609856, 47.187958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196785, 36.844376, 46.915535>,  <30.712341, 37.250645, 47.231525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196785, 36.844376, 46.915535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.840368, 36.683323, 46.831696>,  <30.626518, 36.586689, 46.781391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.840368, 36.683323, 46.831696>,  <31.196785, 36.844376, 46.915535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.840368, 36.683323, 46.831696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192481, 0.083024, -0.977782,
		0.411091, -0.911588, 0.003522,
		-0.891042, -0.402635, -0.209594,
		30.573055, 36.562534, 46.768818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345604, 36.422970, 46.403782>,  <31.196785, 36.844376, 46.915535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345604, 36.422970, 46.403782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.948179, 36.419601, 46.358585>,  <30.709724, 36.417580, 46.331467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.948179, 36.419601, 46.358585>,  <31.345604, 36.422970, 46.403782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948179, 36.419601, 46.358585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112603, -0.184554, -0.976351,
		-0.012634, -0.982787, 0.184313,
		-0.993559, -0.008419, -0.112996,
		30.650112, 36.417076, 46.324688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205051, 35.684624, 46.105637>,  <31.345604, 36.422970, 46.403782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205051, 35.684624, 46.105637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.903034, 35.936985, 46.034222>,  <30.721825, 36.088402, 45.991371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.903034, 35.936985, 46.034222>,  <31.205051, 35.684624, 46.105637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903034, 35.936985, 46.034222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136878, -0.417968, -0.898091,
		-0.641230, -0.653658, 0.401939,
		-0.755042, 0.630900, -0.178542,
		30.676521, 36.126255, 45.980659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855982, 35.406639, 45.619446>,  <31.205051, 35.684624, 46.105637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855982, 35.406639, 45.619446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.672852, 35.759357, 45.574146>,  <30.562973, 35.970989, 45.546967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.672852, 35.759357, 45.574146>,  <30.855982, 35.406639, 45.619446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672852, 35.759357, 45.574146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131424, -0.193110, -0.972335,
		-0.879275, -0.430275, 0.204300,
		-0.457824, 0.881800, -0.113248,
		30.535503, 36.023899, 45.540173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366669, 35.257900, 45.100071>,  <30.855982, 35.406639, 45.619446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366669, 35.257900, 45.100071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.423460, 35.653427, 45.118305>,  <30.457535, 35.890743, 45.129246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.423460, 35.653427, 45.118305>,  <30.366669, 35.257900, 45.100071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423460, 35.653427, 45.118305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059906, 0.037380, -0.997504,
		-0.988055, 0.144354, -0.053929,
		0.141978, 0.988820, 0.045581,
		30.466053, 35.950073, 45.131981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879139, 35.472057, 44.684776>,  <30.366669, 35.257900, 45.100071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879139, 35.472057, 44.684776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.162012, 35.754673, 44.695381>,  <30.331736, 35.924240, 44.701744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.162012, 35.754673, 44.695381>,  <29.879139, 35.472057, 44.684776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162012, 35.754673, 44.695381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098145, -0.060956, -0.993304,
		-0.700187, 0.705048, -0.112449,
		0.707182, 0.706535, 0.026516,
		30.374166, 35.966633, 44.703335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623758, 36.094349, 44.216537>,  <29.879139, 35.472057, 44.684776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623758, 36.094349, 44.216537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.021984, 36.106411, 44.252178>,  <30.260920, 36.113647, 44.273563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.021984, 36.106411, 44.252178>,  <29.623758, 36.094349, 44.216537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021984, 36.106411, 44.252178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085824, 0.096502, -0.991626,
		-0.038501, 0.994876, 0.093486,
		0.995566, 0.030155, 0.089100,
		30.320654, 36.115456, 44.278908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822168, 36.628784, 43.737404>,  <29.623758, 36.094349, 44.216537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822168, 36.628784, 43.737404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.165817, 36.444004, 43.825504>,  <30.372007, 36.333134, 43.878365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.165817, 36.444004, 43.825504>,  <29.822168, 36.628784, 43.737404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165817, 36.444004, 43.825504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298902, 0.103597, -0.948644,
		0.415412, 0.880833, 0.227081,
		0.859122, -0.461953, 0.220247,
		30.423553, 36.305420, 43.891579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348341, 37.045933, 43.489784>,  <29.822168, 36.628784, 43.737404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348341, 37.045933, 43.489784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.502434, 36.677090, 43.504234>,  <30.594891, 36.455784, 43.512905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.502434, 36.677090, 43.504234>,  <30.348341, 37.045933, 43.489784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502434, 36.677090, 43.504234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421829, 0.141143, -0.895622,
		0.820766, 0.360261, 0.443346,
		0.385233, -0.922112, 0.036123,
		30.618004, 36.400455, 43.515072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078772, 37.078510, 43.309689>,  <30.348341, 37.045933, 43.489784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078772, 37.078510, 43.309689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.938347, 36.708866, 43.249329>,  <30.854092, 36.487080, 43.213112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.938347, 36.708866, 43.249329>,  <31.078772, 37.078510, 43.309689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938347, 36.708866, 43.249329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183973, 0.089944, -0.978808,
		0.918102, -0.371382, 0.138436,
		-0.351060, -0.924114, -0.150902,
		30.833029, 36.431633, 43.204060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528948, 36.784039, 42.769142>,  <31.078772, 37.078510, 43.309689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528948, 36.784039, 42.769142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.209768, 36.543137, 42.778671>,  <31.018261, 36.398598, 42.784389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.209768, 36.543137, 42.778671>,  <31.528948, 36.784039, 42.769142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209768, 36.543137, 42.778671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009496, -0.052077, -0.998598,
		0.602649, -0.796605, 0.047274,
		-0.797950, -0.602253, 0.023820,
		30.970383, 36.362461, 42.785816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228989, 36.476292, 42.877369>,  <31.528948, 36.784039, 42.769142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228989, 36.476292, 42.877369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.511131, 36.726898, 42.744728>,  <32.680416, 36.877262, 42.665142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.511131, 36.726898, 42.744728>,  <32.228989, 36.476292, 42.877369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511131, 36.726898, 42.744728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091160, 0.383741, 0.918930,
		0.702970, -0.678399, 0.213560,
		0.705353, 0.626512, -0.331601,
		32.722736, 36.914852, 42.645248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743370, 36.367161, 43.295528>,  <32.228989, 36.476292, 42.877369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743370, 36.367161, 43.295528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.801441, 36.735622, 43.151085>,  <32.836285, 36.956699, 43.064419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.801441, 36.735622, 43.151085>,  <32.743370, 36.367161, 43.295528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801441, 36.735622, 43.151085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134643, 0.343190, 0.929565,
		0.980201, -0.183575, -0.074202,
		0.145179, 0.921152, -0.361113,
		32.844994, 37.011967, 43.042751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283279, 36.608742, 43.719852>,  <32.743370, 36.367161, 43.295528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283279, 36.608742, 43.719852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.131432, 36.931980, 43.539684>,  <33.040325, 37.125923, 43.431583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.131432, 36.931980, 43.539684>,  <33.283279, 36.608742, 43.719852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131432, 36.931980, 43.539684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030395, 0.497495, 0.866934,
		0.924644, 0.315413, -0.213420,
		-0.379617, 0.808092, -0.450419,
		33.017548, 37.174408, 43.404560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761375, 37.146687, 43.826962>,  <33.283279, 36.608742, 43.719852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761375, 37.146687, 43.826962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.392792, 37.293060, 43.774815>,  <33.171642, 37.380886, 43.743526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.392792, 37.293060, 43.774815>,  <33.761375, 37.146687, 43.826962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392792, 37.293060, 43.774815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006858, 0.320216, 0.947320,
		0.388407, 0.873814, -0.292557,
		-0.921462, 0.365939, -0.130367,
		33.116352, 37.402843, 43.735706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715622, 37.758011, 44.164761>,  <33.761375, 37.146687, 43.826962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715622, 37.758011, 44.164761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.323727, 37.681530, 44.140911>,  <33.088589, 37.635643, 44.126602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.323727, 37.681530, 44.140911>,  <33.715622, 37.758011, 44.164761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323727, 37.681530, 44.140911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149690, 0.501299, 0.852228,
		-0.133058, 0.843885, -0.519763,
		-0.979739, -0.191199, -0.059619,
		33.029804, 37.624168, 44.123024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303959, 38.494160, 44.330193>,  <33.715622, 37.758011, 44.164761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303959, 38.494160, 44.330193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.069107, 38.182468, 44.417896>,  <32.928196, 37.995453, 44.470520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.069107, 38.182468, 44.417896>,  <33.303959, 38.494160, 44.330193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069107, 38.182468, 44.417896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235407, 0.423517, 0.874767,
		-0.774506, 0.461988, -0.432097,
		-0.587132, -0.779231, 0.219261,
		32.892967, 37.948700, 44.483673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702564, 38.814518, 44.717545>,  <33.303959, 38.494160, 44.330193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702564, 38.814518, 44.717545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.718388, 38.424095, 44.803101>,  <32.727882, 38.189842, 44.854435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.718388, 38.424095, 44.803101>,  <32.702564, 38.814518, 44.717545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718388, 38.424095, 44.803101> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230874, 0.199338, 0.952345,
		-0.972179, -0.087051, -0.217461,
		0.039554, -0.976057, 0.213890,
		32.730255, 38.131279, 44.867268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041515, 38.652500, 44.966606>,  <32.702564, 38.814518, 44.717545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041515, 38.652500, 44.966606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.303211, 38.373348, 45.083179>,  <32.460228, 38.205856, 45.153122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.303211, 38.373348, 45.083179>,  <32.041515, 38.652500, 44.966606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303211, 38.373348, 45.083179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308859, 0.105196, 0.945272,
		-0.690345, -0.708446, -0.146723,
		0.654240, -0.697881, 0.291432,
		32.499485, 38.163982, 45.170609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653141, 38.363529, 45.400249>,  <32.041515, 38.652500, 44.966606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653141, 38.363529, 45.400249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.020439, 38.229473, 45.484634>,  <32.240818, 38.149040, 45.535267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.020439, 38.229473, 45.484634>,  <31.653141, 38.363529, 45.400249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020439, 38.229473, 45.484634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144559, 0.212287, 0.966456,
		-0.368680, -0.917942, 0.146484,
		0.918247, -0.335138, 0.210963,
		32.295914, 38.128933, 45.547924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647438, 37.698944, 45.840054>,  <31.653141, 38.363529, 45.400249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647438, 37.698944, 45.840054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.991631, 37.893799, 45.899746>,  <32.198147, 38.010712, 45.935562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.991631, 37.893799, 45.899746>,  <31.647438, 37.698944, 45.840054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991631, 37.893799, 45.899746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349501, 0.351268, 0.868597,
		0.370695, -0.799573, 0.472512,
		0.860485, 0.487128, 0.149238,
		32.249775, 38.039940, 45.944515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938660, 37.403923, 46.528671>,  <31.647438, 37.698944, 45.840054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938660, 37.403923, 46.528671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.195827, 37.709026, 46.500816>,  <32.350128, 37.892090, 46.484104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.195827, 37.709026, 46.500816>,  <31.938660, 37.403923, 46.528671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195827, 37.709026, 46.500816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111060, 0.182788, 0.976859,
		0.757840, -0.620307, 0.202231,
		0.642919, 0.762763, -0.069633,
		32.388702, 37.937855, 46.479927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393181, 37.318825, 47.086258>,  <31.938660, 37.403923, 46.528671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393181, 37.318825, 47.086258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.411579, 37.700237, 46.967155>,  <32.422619, 37.929085, 46.895695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.411579, 37.700237, 46.967155>,  <32.393181, 37.318825, 47.086258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411579, 37.700237, 46.967155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194166, 0.283849, 0.939004,
		0.979890, -0.101004, -0.172088,
		0.045996, 0.953534, -0.297752,
		32.425377, 37.986298, 46.877831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053104, 37.544384, 47.334366>,  <32.393181, 37.318825, 47.086258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053104, 37.544384, 47.334366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.817669, 37.862492, 47.276249>,  <32.676407, 38.053356, 47.241379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.817669, 37.862492, 47.276249>,  <33.053104, 37.544384, 47.334366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817669, 37.862492, 47.276249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277730, 0.367693, 0.887507,
		0.759233, 0.482021, -0.437290,
		-0.588585, 0.795272, -0.145293,
		32.641094, 38.101074, 47.232662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427715, 38.075336, 47.600727>,  <33.053104, 37.544384, 47.334366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427715, 38.075336, 47.600727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.047318, 38.199020, 47.600647>,  <32.819080, 38.273232, 47.600601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.047318, 38.199020, 47.600647>,  <33.427715, 38.075336, 47.600727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047318, 38.199020, 47.600647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162708, 0.500965, 0.850035,
		0.262937, 0.808346, -0.526726,
		-0.950994, 0.309208, -0.000198,
		32.762020, 38.291782, 47.600586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008514, 38.555565, 47.655056>,  <33.427715, 38.075336, 47.600727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008514, 38.555565, 47.655056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.404671, 38.517361, 47.695053>,  <34.642365, 38.494438, 47.719051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.404671, 38.517361, 47.695053>,  <34.008514, 38.555565, 47.655056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404671, 38.517361, 47.695053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104532, 0.043796, -0.993557,
		0.090514, 0.994465, 0.053359,
		0.990394, -0.095508, 0.099989,
		34.701790, 38.488708, 47.725048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361706, 39.096569, 47.231125>,  <34.008514, 38.555565, 47.655056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361706, 39.096569, 47.231125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.621307, 38.799389, 47.296631>,  <34.777069, 38.621082, 47.335934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.621307, 38.799389, 47.296631>,  <34.361706, 39.096569, 47.231125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621307, 38.799389, 47.296631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243260, -0.001306, -0.969960,
		0.720842, 0.669350, 0.179881,
		0.649008, -0.742946, 0.163767,
		34.816010, 38.576504, 47.345760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914043, 39.306194, 46.887581>,  <34.361706, 39.096569, 47.231125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914043, 39.306194, 46.887581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.004780, 38.918797, 46.928680>,  <35.059223, 38.686356, 46.953342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.004780, 38.918797, 46.928680>,  <34.914043, 39.306194, 46.887581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004780, 38.918797, 46.928680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307187, -0.028970, -0.951208,
		0.924218, 0.247338, 0.290938,
		0.226842, -0.968496, 0.102753,
		35.072834, 38.628246, 46.959507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612835, 39.197140, 46.715252>,  <34.914043, 39.306194, 46.887581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612835, 39.197140, 46.715252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.437805, 38.842342, 46.656246>,  <35.332787, 38.629463, 46.620842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.437805, 38.842342, 46.656246>,  <35.612835, 39.197140, 46.715252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437805, 38.842342, 46.656246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300669, 0.010270, -0.953673,
		0.847421, -0.461659, 0.262199,
		-0.437579, -0.886998, -0.147510,
		35.306530, 38.576244, 46.611992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158875, 38.859142, 46.469521>,  <35.612835, 39.197140, 46.715252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158875, 38.859142, 46.469521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.826939, 38.662815, 46.363342>,  <35.627777, 38.545017, 46.299633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.826939, 38.662815, 46.363342>,  <36.158875, 38.859142, 46.469521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826939, 38.662815, 46.363342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379246, -0.147138, -0.913522,
		0.409319, -0.858746, 0.308243,
		-0.829837, -0.490821, -0.265450,
		35.577988, 38.515568, 46.283707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391075, 38.208652, 46.338596>,  <36.158875, 38.859142, 46.469521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391075, 38.208652, 46.338596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.047409, 38.269871, 46.143288>,  <35.841209, 38.306602, 46.026104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.047409, 38.269871, 46.143288>,  <36.391075, 38.208652, 46.338596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047409, 38.269871, 46.143288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474141, -0.120681, -0.872139,
		-0.192404, -0.980822, 0.031119,
		-0.859169, 0.153048, -0.488267,
		35.789658, 38.315784, 45.996807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335770, 37.626438, 45.961342>,  <36.391075, 38.208652, 46.338596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335770, 37.626438, 45.961342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.101830, 37.888363, 45.769855>,  <35.961468, 38.045517, 45.654964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.101830, 37.888363, 45.769855>,  <36.335770, 37.626438, 45.961342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101830, 37.888363, 45.769855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362919, -0.316574, -0.876396,
		-0.725426, -0.686296, -0.052497,
		-0.584848, 0.654813, -0.478721,
		35.926376, 38.084808, 45.626240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156548, 37.279850, 45.368946>,  <36.335770, 37.626438, 45.961342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156548, 37.279850, 45.368946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.070976, 37.662334, 45.289047>,  <36.019634, 37.891827, 45.241108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.070976, 37.662334, 45.289047>,  <36.156548, 37.279850, 45.368946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070976, 37.662334, 45.289047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126208, -0.175712, -0.976318,
		-0.968663, -0.234068, -0.083093,
		-0.213925, 0.956210, -0.199747,
		36.006798, 37.949196, 45.229122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694721, 37.247761, 44.872292>,  <36.156548, 37.279850, 45.368946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694721, 37.247761, 44.872292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.835407, 37.620358, 44.835148>,  <35.919819, 37.843914, 44.812862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.835407, 37.620358, 44.835148>,  <35.694721, 37.247761, 44.872292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835407, 37.620358, 44.835148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187865, -0.167419, -0.967821,
		-0.917062, 0.322953, -0.233878,
		0.351716, 0.931490, -0.092862,
		35.940922, 37.899803, 44.807289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293209, 37.580002, 44.291183>,  <35.694721, 37.247761, 44.872292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293209, 37.580002, 44.291183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.636322, 37.778133, 44.346111>,  <35.842190, 37.897015, 44.379066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.636322, 37.778133, 44.346111>,  <35.293209, 37.580002, 44.291183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636322, 37.778133, 44.346111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136427, 0.038174, -0.989914,
		-0.495577, 0.867865, -0.034832,
		0.857782, 0.495331, 0.137318,
		35.893658, 37.926731, 44.387306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200371, 38.250751, 43.914936>,  <35.293209, 37.580002, 44.291183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200371, 38.250751, 43.914936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.588684, 38.172794, 43.970932>,  <35.821671, 38.126019, 44.004532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.588684, 38.172794, 43.970932>,  <35.200371, 38.250751, 43.914936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588684, 38.172794, 43.970932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140838, -0.009580, -0.989986,
		0.194283, 0.980778, 0.018148,
		0.970783, -0.194893, 0.139992,
		35.879917, 38.114326, 44.012928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441036, 38.616356, 43.435230>,  <35.200371, 38.250751, 43.914936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441036, 38.616356, 43.435230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.757111, 38.387104, 43.522072>,  <35.946754, 38.249554, 43.574177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.757111, 38.387104, 43.522072>,  <35.441036, 38.616356, 43.435230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757111, 38.387104, 43.522072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220890, -0.064106, -0.973190,
		0.571681, 0.816954, 0.075943,
		0.790183, -0.573129, 0.217106,
		35.994167, 38.215164, 43.587204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070736, 38.935860, 43.105297>,  <35.441036, 38.616356, 43.435230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070736, 38.935860, 43.105297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.134953, 38.544571, 43.157932>,  <36.173481, 38.309799, 43.189514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.134953, 38.544571, 43.157932>,  <36.070736, 38.935860, 43.105297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134953, 38.544571, 43.157932> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277760, -0.083152, -0.957045,
		0.947141, 0.190195, 0.258361,
		0.160542, -0.978219, 0.131585,
		36.183117, 38.251106, 43.197407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587307, 38.795689, 42.634579>,  <36.070736, 38.935860, 43.105297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587307, 38.795689, 42.634579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.462246, 38.420853, 42.696693>,  <36.387207, 38.195953, 42.733963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.462246, 38.420853, 42.696693>,  <36.587307, 38.795689, 42.634579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462246, 38.420853, 42.696693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145585, -0.208829, -0.967055,
		0.938643, -0.279749, 0.201718,
		-0.312657, -0.937087, 0.155289,
		36.368450, 38.139729, 42.743279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.145395, 26.569986, 33.914486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.200523, 26.536335, 34.309238>,  <28.233601, 26.516144, 34.546089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.200523, 26.536335, 34.309238>,  <28.145395, 26.569986, 33.914486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200523, 26.536335, 34.309238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591142, 0.792476, 0.150112,
		-0.794706, -0.604073, 0.059485,
		0.137819, -0.084131, 0.986878,
		28.241869, 26.511095, 34.605301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.431259, 26.642273, 34.145840>,  <28.145395, 26.569986, 33.914486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.431259, 26.642273, 34.145840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.691391, 26.732586, 34.435970>,  <27.847469, 26.786774, 34.610050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.691391, 26.732586, 34.435970>,  <27.431259, 26.642273, 34.145840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691391, 26.732586, 34.435970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575349, 0.769857, 0.276213,
		-0.496033, -0.596944, 0.630563,
		0.650327, 0.225783, 0.725325,
		27.886490, 26.800322, 34.653568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179655, 26.886030, 34.716667>,  <27.431259, 26.642273, 34.145840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179655, 26.886030, 34.716667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.535992, 27.061148, 34.765232>,  <27.749794, 27.166218, 34.794373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.535992, 27.061148, 34.765232>,  <27.179655, 26.886030, 34.716667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535992, 27.061148, 34.765232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452296, 0.879799, 0.146226,
		-0.042802, -0.185179, 0.981772,
		0.890841, 0.437792, 0.121413,
		27.803244, 27.192486, 34.801655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933710, 27.354183, 35.034988>,  <27.179655, 26.886030, 34.716667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933710, 27.354183, 35.034988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.299896, 27.503239, 34.974239>,  <27.519608, 27.592672, 34.937790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.299896, 27.503239, 34.974239>,  <26.933710, 27.354183, 35.034988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299896, 27.503239, 34.974239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353703, 0.925141, 0.137874,
		0.191884, -0.072499, 0.978736,
		0.915464, 0.372637, -0.151877,
		27.574535, 27.615030, 34.928677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044121, 27.732222, 35.550034>,  <26.933710, 27.354183, 35.034988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044121, 27.732222, 35.550034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.276817, 27.884245, 35.262386>,  <27.416435, 27.975458, 35.089798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.276817, 27.884245, 35.262386>,  <27.044121, 27.732222, 35.550034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.276817, 27.884245, 35.262386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406047, 0.901770, 0.148111,
		0.704773, 0.205835, 0.678916,
		0.581740, 0.380056, -0.719122,
		27.451340, 27.998262, 35.046650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023666, 28.434536, 35.688786>,  <27.044121, 27.732222, 35.550034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023666, 28.434536, 35.688786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.210594, 28.442301, 35.335236>,  <27.322750, 28.446960, 35.123104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.210594, 28.442301, 35.335236>,  <27.023666, 28.434536, 35.688786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.210594, 28.442301, 35.335236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246031, 0.963122, -0.108927,
		0.849165, 0.268365, 0.454861,
		0.467319, 0.019413, -0.883876,
		27.350790, 28.448124, 35.070072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466618, 29.036709, 35.703045>,  <27.023666, 28.434536, 35.688786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.466618, 29.036709, 35.703045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.434557, 28.952904, 35.313240>,  <27.415321, 28.902620, 35.079357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.434557, 28.952904, 35.313240>,  <27.466618, 29.036709, 35.703045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434557, 28.952904, 35.313240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233334, 0.954441, -0.186004,
		0.969088, 0.212479, -0.125386,
		-0.080152, -0.209511, -0.974516,
		27.410511, 28.890051, 35.020885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925129, 29.489326, 35.428883>,  <27.466618, 29.036709, 35.703045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925129, 29.489326, 35.428883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.667877, 29.371849, 35.146004>,  <27.513525, 29.301363, 34.976276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.667877, 29.371849, 35.146004>,  <27.925129, 29.489326, 35.428883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.667877, 29.371849, 35.146004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042126, 0.908557, -0.415631,
		0.764596, -0.297097, -0.571949,
		-0.643131, -0.293696, -0.707195,
		27.474937, 29.283741, 34.933846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177837, 29.863926, 34.870335>,  <27.925129, 29.489326, 35.428883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177837, 29.863926, 34.870335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.798449, 29.773024, 34.782013>,  <27.570814, 29.718481, 34.729019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.798449, 29.773024, 34.782013>,  <28.177837, 29.863926, 34.870335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.798449, 29.773024, 34.782013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126431, 0.910403, -0.393930,
		0.290540, -0.345716, -0.892226,
		-0.948473, -0.227258, -0.220800,
		27.513906, 29.704845, 34.715775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059139, 29.974140, 34.212078>,  <28.177837, 29.863926, 34.870335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059139, 29.974140, 34.212078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.704111, 29.998167, 34.394775>,  <27.491095, 30.012583, 34.504395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.704111, 29.998167, 34.394775>,  <28.059139, 29.974140, 34.212078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.704111, 29.998167, 34.394775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186084, 0.860227, -0.474744,
		-0.421419, -0.506360, -0.752333,
		-0.887569, 0.060069, 0.456742,
		27.437840, 30.016188, 34.531799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841702, 30.474304, 33.803913>,  <28.059139, 29.974140, 34.212078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841702, 30.474304, 33.803913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.543451, 30.455048, 34.069763>,  <27.364500, 30.443493, 34.229271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.543451, 30.455048, 34.069763>,  <27.841702, 30.474304, 33.803913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543451, 30.455048, 34.069763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272566, 0.932169, -0.238262,
		-0.608069, -0.358808, -0.708172,
		-0.745627, -0.048144, 0.664622,
		27.319763, 30.440605, 34.269150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270735, 30.697384, 33.396305>,  <27.841702, 30.474304, 33.803913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.270735, 30.697384, 33.396305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.179123, 30.762396, 33.780209>,  <27.124155, 30.801403, 34.010551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.179123, 30.762396, 33.780209>,  <27.270735, 30.697384, 33.396305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179123, 30.762396, 33.780209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218234, 0.952291, -0.213342,
		-0.948641, -0.258313, -0.182634,
		-0.229030, 0.162528, 0.959755,
		27.110415, 30.811153, 34.068134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.640776, 31.127241, 33.412083>,  <27.270735, 30.697384, 33.396305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.640776, 31.127241, 33.412083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.772060, 31.163954, 33.788136>,  <26.850832, 31.185982, 34.013767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.772060, 31.163954, 33.788136>,  <26.640776, 31.127241, 33.412083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772060, 31.163954, 33.788136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220800, 0.975151, -0.018116,
		-0.918435, -0.201636, 0.340323,
		0.328213, 0.091782, 0.940134,
		26.870523, 31.191488, 34.070175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.175320, 31.509233, 33.750801>,  <26.640776, 31.127241, 33.412083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.175320, 31.509233, 33.750801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.519186, 31.543400, 33.952267>,  <26.725506, 31.563900, 34.073147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.519186, 31.543400, 33.952267>,  <26.175320, 31.509233, 33.750801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519186, 31.543400, 33.952267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146576, 0.985710, 0.083010,
		-0.489379, -0.145186, 0.859900,
		0.859665, 0.085417, 0.503667,
		26.777086, 31.569025, 34.103367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.862780, 31.994566, 34.232998>,  <26.175320, 31.509233, 33.750801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.862780, 31.994566, 34.232998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.261305, 32.002789, 34.199677>,  <26.500420, 32.007721, 34.179684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.261305, 32.002789, 34.199677>,  <25.862780, 31.994566, 34.232998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261305, 32.002789, 34.199677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020191, 0.999782, 0.005255,
		0.083394, -0.003554, 0.996510,
		0.996312, 0.020558, -0.083304,
		26.560198, 32.008957, 34.174686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.183039, 32.519753, 34.678162>,  <25.862780, 31.994566, 34.232998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.183039, 32.519753, 34.678162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.484985, 32.469471, 34.420673>,  <26.666153, 32.439304, 34.266178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.484985, 32.469471, 34.420673>,  <26.183039, 32.519753, 34.678162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484985, 32.469471, 34.420673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119048, 0.991419, -0.053992,
		0.644986, -0.035877, 0.763352,
		0.754865, -0.125699, -0.643722,
		26.711445, 32.431763, 34.227558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.665718, 33.027809, 34.963211>,  <26.183039, 32.519753, 34.678162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.665718, 33.027809, 34.963211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.777981, 32.934841, 34.590714>,  <26.845339, 32.879063, 34.367214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.777981, 32.934841, 34.590714>,  <26.665718, 33.027809, 34.963211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777981, 32.934841, 34.590714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277453, 0.948463, -0.153095,
		0.918831, -0.215409, 0.330679,
		0.280659, -0.232416, -0.931243,
		26.862179, 32.865116, 34.311340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324940, 33.353256, 34.816601>,  <26.665718, 33.027809, 34.963211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324940, 33.353256, 34.816601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.161037, 33.304806, 34.454952>,  <27.062696, 33.275738, 34.237965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.161037, 33.304806, 34.454952>,  <27.324940, 33.353256, 34.816601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.161037, 33.304806, 34.454952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200131, 0.955060, -0.218649,
		0.889970, -0.270535, -0.367102,
		-0.409757, -0.121122, -0.904118,
		27.038111, 33.268471, 34.183716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721100, 33.768017, 34.361065>,  <27.324940, 33.353256, 34.816601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721100, 33.768017, 34.361065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.374674, 33.705311, 34.171177>,  <27.166819, 33.667686, 34.057243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.374674, 33.705311, 34.171177>,  <27.721100, 33.768017, 34.361065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.374674, 33.705311, 34.171177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047784, 0.971177, -0.233522,
		0.497646, -0.179561, -0.848591,
		-0.866063, -0.156761, -0.474722,
		27.114855, 33.658283, 34.028759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339329, 33.415184, 34.209400>,  <27.721100, 33.768017, 34.361065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339329, 33.415184, 34.209400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.503637, 33.456669, 34.571728>,  <28.602222, 33.481560, 34.789124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.503637, 33.456669, 34.571728>,  <28.339329, 33.415184, 34.209400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503637, 33.456669, 34.571728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742549, -0.614548, -0.266368,
		0.529044, 0.782032, -0.329450,
		0.410771, 0.103713, 0.905821,
		28.626869, 33.487782, 34.843475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997005, 33.447155, 34.145760>,  <28.339329, 33.415184, 34.209400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997005, 33.447155, 34.145760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.986046, 33.374680, 34.538986>,  <28.979469, 33.331192, 34.774921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.986046, 33.374680, 34.538986>,  <28.997005, 33.447155, 34.145760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986046, 33.374680, 34.538986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803560, -0.588955, -0.086155,
		0.594592, 0.787592, 0.161735,
		-0.027400, -0.181191, 0.983066,
		28.977825, 33.320324, 34.833904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609272, 33.545162, 34.322693>,  <28.997005, 33.447155, 34.145760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609272, 33.545162, 34.322693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.450188, 33.329945, 34.619968>,  <29.354736, 33.200813, 34.798336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.450188, 33.329945, 34.619968>,  <29.609272, 33.545162, 34.322693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450188, 33.329945, 34.619968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856197, -0.508778, 0.089848,
		0.329778, 0.672052, 0.663018,
		-0.397711, -0.538044, 0.743192,
		29.330873, 33.168533, 34.842926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183731, 33.397266, 34.686527>,  <29.609272, 33.545162, 34.322693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183731, 33.397266, 34.686527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.904392, 33.142071, 34.816315>,  <29.736788, 32.988953, 34.894188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.904392, 33.142071, 34.816315>,  <30.183731, 33.397266, 34.686527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904392, 33.142071, 34.816315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710184, -0.674088, 0.203088,
		0.089156, 0.372262, 0.923836,
		-0.698348, -0.637986, 0.324473,
		29.694887, 32.950676, 34.913658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505220, 33.079945, 35.288517>,  <30.183731, 33.397266, 34.686527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505220, 33.079945, 35.288517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.217123, 32.860806, 35.118286>,  <30.044266, 32.729321, 35.016148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.217123, 32.860806, 35.118286>,  <30.505220, 33.079945, 35.288517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217123, 32.860806, 35.118286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632749, -0.770290, -0.079260,
		-0.284394, -0.326369, 0.901445,
		-0.720242, -0.547848, -0.425576,
		30.001051, 32.696453, 34.990612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579689, 32.452438, 35.448860>,  <30.505220, 33.079945, 35.288517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579689, 32.452438, 35.448860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.312819, 32.314358, 35.184826>,  <30.152697, 32.231510, 35.026405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.312819, 32.314358, 35.184826>,  <30.579689, 32.452438, 35.448860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312819, 32.314358, 35.184826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526757, -0.845195, -0.090407,
		-0.526692, -0.408022, 0.745730,
		-0.667175, -0.345202, -0.660086,
		30.112665, 32.210796, 34.986801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539911, 31.684885, 35.539051>,  <30.579689, 32.452438, 35.448860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539911, 31.684885, 35.539051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.407564, 31.768522, 35.170963>,  <30.328156, 31.818705, 34.950111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.407564, 31.768522, 35.170963>,  <30.539911, 31.684885, 35.539051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407564, 31.768522, 35.170963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409157, -0.846932, -0.339553,
		-0.850363, -0.488862, 0.194670,
		-0.330867, 0.209093, -0.920221,
		30.308304, 31.831249, 34.894897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222158, 31.048294, 35.277561>,  <30.539911, 31.684885, 35.539051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222158, 31.048294, 35.277561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.312754, 31.275391, 34.960987>,  <30.367111, 31.411650, 34.771042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.312754, 31.275391, 34.960987>,  <30.222158, 31.048294, 35.277561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312754, 31.275391, 34.960987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347933, -0.806100, -0.478692,
		-0.909750, -0.166947, -0.380110,
		0.226490, 0.567743, -0.791436,
		30.380701, 31.445713, 34.723557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906517, 30.721844, 34.743813>,  <30.222158, 31.048294, 35.277561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906517, 30.721844, 34.743813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.176943, 30.946028, 34.552471>,  <30.339197, 31.080538, 34.437668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.176943, 30.946028, 34.552471>,  <29.906517, 30.721844, 34.743813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176943, 30.946028, 34.552471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282565, -0.796757, -0.534168,
		-0.680511, 0.225966, -0.697025,
		0.676063, 0.560462, -0.478352,
		30.379763, 31.114166, 34.408966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745436, 30.620667, 34.097313>,  <29.906517, 30.721844, 34.743813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745436, 30.620667, 34.097313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.125923, 30.743891, 34.104012>,  <30.354216, 30.817825, 34.108032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.125923, 30.743891, 34.104012>,  <29.745436, 30.620667, 34.097313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125923, 30.743891, 34.104012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283483, -0.851327, -0.441452,
		-0.121735, 0.424666, -0.897128,
		0.951219, 0.308061, 0.016750,
		30.411289, 30.836309, 34.109035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987411, 30.354568, 33.544518>,  <29.745436, 30.620667, 34.097313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987411, 30.354568, 33.544518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.330162, 30.422314, 33.739281>,  <30.535812, 30.462961, 33.856140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.330162, 30.422314, 33.739281>,  <29.987411, 30.354568, 33.544518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330162, 30.422314, 33.739281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318297, -0.916776, -0.241263,
		0.405526, 0.361714, -0.839471,
		0.856875, 0.169363, 0.486910,
		30.587225, 30.473122, 33.885353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608130, 30.333338, 33.130325>,  <29.987411, 30.354568, 33.544518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608130, 30.333338, 33.130325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.733902, 30.241863, 33.498856>,  <30.809364, 30.186979, 33.719975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.733902, 30.241863, 33.498856>,  <30.608130, 30.333338, 33.130325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733902, 30.241863, 33.498856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304634, -0.894908, -0.326094,
		0.899073, 0.383200, -0.211720,
		0.314429, -0.228685, 0.921324,
		30.828230, 30.173258, 33.775253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261898, 30.069792, 33.102989>,  <30.608130, 30.333338, 33.130325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261898, 30.069792, 33.102989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.135067, 29.933762, 33.457123>,  <31.058968, 29.852144, 33.669601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.135067, 29.933762, 33.457123>,  <31.261898, 30.069792, 33.102989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135067, 29.933762, 33.457123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527880, -0.838817, -0.133149,
		0.787911, 0.425130, 0.445489,
		-0.317078, -0.340074, 0.885331,
		31.039944, 29.831739, 33.722721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745773, 29.666811, 33.133656>,  <31.261898, 30.069792, 33.102989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745773, 29.666811, 33.133656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.501852, 29.560698, 33.432388>,  <31.355499, 29.497028, 33.611629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.501852, 29.560698, 33.432388>,  <31.745773, 29.666811, 33.133656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501852, 29.560698, 33.432388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374432, -0.926956, -0.023535,
		0.698526, 0.265287, 0.664593,
		-0.609805, -0.265284, 0.746835,
		31.318911, 29.481112, 33.656437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191841, 29.116335, 33.601711>,  <31.745773, 29.666811, 33.133656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191841, 29.116335, 33.601711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.805435, 29.050434, 33.681377>,  <31.573591, 29.010893, 33.729176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.805435, 29.050434, 33.681377>,  <32.191841, 29.116335, 33.601711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.805435, 29.050434, 33.681377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197872, -0.967126, 0.159729,
		0.166302, 0.193710, 0.966861,
		-0.966018, -0.164752, 0.199165,
		31.515631, 29.001009, 33.741127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184917, 28.819687, 34.256470>,  <32.191841, 29.116335, 33.601711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184917, 28.819687, 34.256470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.850327, 28.727425, 34.057629>,  <31.649572, 28.672066, 33.938324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.850327, 28.727425, 34.057629>,  <32.184917, 28.819687, 34.256470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850327, 28.727425, 34.057629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088622, -0.952102, 0.292657,
		-0.540794, 0.200746, 0.816849,
		-0.836473, -0.230658, -0.497101,
		31.599384, 28.658228, 33.908497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726364, 28.428326, 34.764599>,  <32.184917, 28.819687, 34.256470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726364, 28.428326, 34.764599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.579786, 28.332535, 34.404961>,  <31.491840, 28.275061, 34.189178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.579786, 28.332535, 34.404961>,  <31.726364, 28.428326, 34.764599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579786, 28.332535, 34.404961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092772, -0.952091, 0.291404,
		-0.925803, 0.190195, 0.326672,
		-0.366445, -0.239477, -0.899093,
		31.469852, 28.260693, 34.135231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153814, 27.962746, 34.859890>,  <31.726364, 28.428326, 34.764599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153814, 27.962746, 34.859890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.263182, 27.914555, 34.478161>,  <31.328802, 27.885641, 34.249123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.263182, 27.914555, 34.478161>,  <31.153814, 27.962746, 34.859890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263182, 27.914555, 34.478161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262255, -0.963876, 0.046544,
		-0.925454, 0.237549, -0.295137,
		0.273418, -0.120476, -0.954321,
		31.345207, 27.878412, 34.191864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681591, 27.576756, 34.403526>,  <31.153814, 27.962746, 34.859890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681591, 27.576756, 34.403526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.010616, 27.525911, 34.181812>,  <31.208031, 27.495405, 34.048782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.010616, 27.525911, 34.181812>,  <30.681591, 27.576756, 34.403526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010616, 27.525911, 34.181812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314171, -0.914025, -0.256621,
		-0.474013, 0.385228, -0.791777,
		0.822562, -0.127112, -0.554288,
		31.257385, 27.487778, 34.015526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474899, 27.248610, 33.792904>,  <30.681591, 27.576756, 34.403526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474899, 27.248610, 33.792904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.865635, 27.163349, 33.785435>,  <31.100077, 27.112192, 33.780952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.865635, 27.163349, 33.785435>,  <30.474899, 27.248610, 33.792904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.865635, 27.163349, 33.785435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209634, -0.935921, -0.283029,
		0.042849, 0.280390, -0.958929,
		0.976840, -0.213152, -0.018676,
		31.158688, 27.099403, 33.779831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634390, 26.827265, 33.173740>,  <30.474899, 27.248610, 33.792904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634390, 26.827265, 33.173740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.903191, 26.760382, 33.462311>,  <31.064470, 26.720251, 33.635452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.903191, 26.760382, 33.462311>,  <30.634390, 26.827265, 33.173740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903191, 26.760382, 33.462311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013664, -0.976810, -0.213673,
		0.740425, 0.133730, -0.658701,
		0.672000, -0.167209, 0.721427,
		31.104790, 26.710218, 33.678738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988972, 26.224907, 32.936195>,  <30.634390, 26.827265, 33.173740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.988972, 26.224907, 32.936195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.114798, 26.259998, 33.314266>,  <31.190292, 26.281054, 33.541107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.114798, 26.259998, 33.314266>,  <30.988972, 26.224907, 32.936195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114798, 26.259998, 33.314266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041687, -0.993483, 0.106089,
		0.948320, -0.072773, -0.308857,
		0.314564, 0.087731, 0.945173,
		31.209167, 26.286318, 33.597816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377802, 25.638433, 33.029449>,  <30.988972, 26.224907, 32.936195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377802, 25.638433, 33.029449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.327967, 25.766537, 33.405090>,  <31.298065, 25.843399, 33.630474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.327967, 25.766537, 33.405090>,  <31.377802, 25.638433, 33.029449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327967, 25.766537, 33.405090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351477, -0.899348, 0.260070,
		0.927869, -0.297671, 0.224613,
		-0.124590, 0.320257, 0.939102,
		31.290590, 25.862614, 33.686821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.698528, 36.098919, 47.486572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.474041, 35.835171, 47.686676>,  <36.339348, 35.676922, 47.806740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.474041, 35.835171, 47.686676>,  <36.698528, 36.098919, 47.486572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474041, 35.835171, 47.686676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369669, 0.740482, 0.561277,
		-0.740523, 0.130070, -0.659324,
		-0.561222, -0.659370, 0.500261,
		36.305676, 35.637360, 47.836754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091450, 36.573380, 47.698166>,  <36.698528, 36.098919, 47.486572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091450, 36.573380, 47.698166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.089802, 36.230976, 47.904942>,  <36.088814, 36.025532, 48.029007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.089802, 36.230976, 47.904942>,  <36.091450, 36.573380, 47.698166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089802, 36.230976, 47.904942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222564, 0.504763, 0.834074,
		-0.974909, -0.111614, -0.192598,
		-0.004122, -0.856012, 0.516939,
		36.088566, 35.974171, 48.060024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488686, 36.551331, 48.225212>,  <36.091450, 36.573380, 47.698166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488686, 36.551331, 48.225212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.765060, 36.291386, 48.351883>,  <35.930885, 36.135418, 48.427887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.765060, 36.291386, 48.351883>,  <35.488686, 36.551331, 48.225212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765060, 36.291386, 48.351883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133623, 0.315706, 0.939401,
		-0.710461, -0.691380, 0.131296,
		0.690934, -0.649864, 0.316682,
		35.972340, 36.096428, 48.446888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206650, 36.310696, 48.843460>,  <35.488686, 36.551331, 48.225212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206650, 36.310696, 48.843460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596962, 36.224178, 48.856548>,  <35.831150, 36.172268, 48.864403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596962, 36.224178, 48.856548>,  <35.206650, 36.310696, 48.843460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596962, 36.224178, 48.856548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046554, 0.351491, 0.935033,
		-0.213741, -0.910864, 0.353047,
		0.975781, -0.216291, 0.032724,
		35.889698, 36.159290, 48.866364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183239, 35.932037, 49.366905>,  <35.206650, 36.310696, 48.843460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183239, 35.932037, 49.366905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.567059, 36.039692, 49.333824>,  <35.797348, 36.104282, 49.313976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.567059, 36.039692, 49.333824>,  <35.183239, 35.932037, 49.366905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567059, 36.039692, 49.333824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007572, 0.268969, 0.963119,
		0.281472, -0.924777, 0.256048,
		0.959540, 0.269152, -0.082710,
		35.854923, 36.120434, 49.309013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568512, 35.776104, 50.035645>,  <35.183239, 35.932037, 49.366905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568512, 35.776104, 50.035645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.813965, 36.042843, 49.866516>,  <35.961235, 36.202885, 49.765041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.813965, 36.042843, 49.866516>,  <35.568512, 35.776104, 50.035645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813965, 36.042843, 49.866516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304981, 0.293762, 0.905920,
		0.728314, -0.684853, -0.023112,
		0.613633, 0.666843, -0.422819,
		35.998055, 36.242897, 49.739670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211231, 35.688854, 50.347427>,  <35.568512, 35.776104, 50.035645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211231, 35.688854, 50.347427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.240692, 36.058643, 50.197796>,  <36.258369, 36.280518, 50.108017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.240692, 36.058643, 50.197796>,  <36.211231, 35.688854, 50.347427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240692, 36.058643, 50.197796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144358, 0.361260, 0.921223,
		0.986781, -0.121847, -0.106848,
		0.073649, 0.924470, -0.374074,
		36.262787, 36.335983, 50.085575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874310, 35.968975, 50.568768>,  <36.211231, 35.688854, 50.347427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874310, 35.968975, 50.568768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.612816, 36.261578, 50.491287>,  <36.455917, 36.437141, 50.444798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.612816, 36.261578, 50.491287>,  <36.874310, 35.968975, 50.568768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612816, 36.261578, 50.491287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012338, 0.266247, 0.963826,
		0.756620, 0.627700, -0.183081,
		-0.653738, 0.731509, -0.193703,
		36.416695, 36.481030, 50.433178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051872, 36.432755, 51.069130>,  <36.874310, 35.968975, 50.568768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051872, 36.432755, 51.069130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.690556, 36.551373, 50.945114>,  <36.473766, 36.622543, 50.870705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.690556, 36.551373, 50.945114>,  <37.051872, 36.432755, 51.069130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690556, 36.551373, 50.945114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192711, 0.365208, 0.910761,
		0.383308, 0.882432, -0.272743,
		-0.903293, 0.296541, -0.310041,
		36.419567, 36.640335, 50.852100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038528, 36.955441, 51.428200>,  <37.051872, 36.432755, 51.069130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038528, 36.955441, 51.428200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.657040, 36.892113, 51.325951>,  <36.428146, 36.854115, 51.264599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.657040, 36.892113, 51.325951>,  <37.038528, 36.955441, 51.428200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657040, 36.892113, 51.325951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291931, 0.283961, 0.913314,
		-0.072008, 0.945675, -0.317039,
		-0.953725, -0.158319, -0.255625,
		36.370922, 36.844616, 51.249264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700954, 37.506367, 51.736301>,  <37.038528, 36.955441, 51.428200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700954, 37.506367, 51.736301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.428078, 37.221283, 51.670986>,  <36.264351, 37.050232, 51.631798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.428078, 37.221283, 51.670986>,  <36.700954, 37.506367, 51.736301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428078, 37.221283, 51.670986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286121, 0.054696, 0.956631,
		-0.672871, 0.699322, -0.241234,
		-0.682188, -0.712711, -0.163288,
		36.223423, 37.007469, 51.622002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064560, 37.706188, 52.116856>,  <36.700954, 37.506367, 51.736301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064560, 37.706188, 52.116856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.026981, 37.314461, 52.045189>,  <36.004433, 37.079422, 52.002190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.026981, 37.314461, 52.045189>,  <36.064560, 37.706188, 52.116856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026981, 37.314461, 52.045189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293394, -0.144733, 0.944972,
		-0.951364, 0.141347, -0.273729,
		-0.093951, -0.979323, -0.179164,
		35.998795, 37.020664, 51.991440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520760, 37.470078, 52.389473>,  <36.064560, 37.706188, 52.116856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520760, 37.470078, 52.389473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.764286, 37.153168, 52.405697>,  <35.910400, 36.963020, 52.415432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.764286, 37.153168, 52.405697>,  <35.520760, 37.470078, 52.389473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764286, 37.153168, 52.405697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174411, -0.083801, 0.981101,
		-0.773901, -0.604384, -0.189201,
		0.608817, -0.792273, 0.040558,
		35.946930, 36.915485, 52.417866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173801, 37.080624, 52.780838>,  <35.520760, 37.470078, 52.389473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173801, 37.080624, 52.780838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.568401, 37.015144, 52.782536>,  <35.805161, 36.975857, 52.783554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.568401, 37.015144, 52.782536>,  <35.173801, 37.080624, 52.780838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568401, 37.015144, 52.782536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010398, -0.036738, 0.999271,
		-0.163422, -0.985826, -0.037944,
		0.986502, -0.163698, 0.004247,
		35.864353, 36.966034, 52.783810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398693, 37.768513, 53.058449>,  <35.173801, 37.080624, 52.780838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398693, 37.768513, 53.058449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.143337, 38.063736, 53.145836>,  <34.990124, 38.240871, 53.198269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.143337, 38.063736, 53.145836>,  <35.398693, 37.768513, 53.058449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143337, 38.063736, 53.145836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127833, 0.178220, -0.975652,
		-0.759026, -0.650770, -0.019424,
		-0.638387, 0.738062, 0.218464,
		34.951820, 38.285156, 53.211376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681843, 37.641155, 52.758873>,  <35.398693, 37.768513, 53.058449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681843, 37.641155, 52.758873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.684608, 38.036022, 52.822678>,  <34.686268, 38.272942, 52.860962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.684608, 38.036022, 52.822678>,  <34.681843, 37.641155, 52.758873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684608, 38.036022, 52.822678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348434, 0.151899, -0.924943,
		-0.937308, -0.049183, 0.345014,
		0.006916, 0.987171, 0.159514,
		34.686684, 38.332172, 52.870533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042007, 37.987255, 52.462879>,  <34.681843, 37.641155, 52.758873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042007, 37.987255, 52.462879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.313263, 38.276997, 52.512585>,  <34.476017, 38.450840, 52.542408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.313263, 38.276997, 52.512585>,  <34.042007, 37.987255, 52.462879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313263, 38.276997, 52.512585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249939, 0.386308, -0.887860,
		-0.691128, 0.571034, 0.443015,
		0.678139, 0.724352, 0.124265,
		34.516705, 38.494301, 52.549866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735939, 38.506615, 52.134735>,  <34.042007, 37.987255, 52.462879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735939, 38.506615, 52.134735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.114780, 38.631653, 52.163780>,  <34.342087, 38.706676, 52.181210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.114780, 38.631653, 52.163780>,  <33.735939, 38.506615, 52.134735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114780, 38.631653, 52.163780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033690, 0.321874, -0.946183,
		-0.319144, 0.893690, 0.315381,
		0.947107, 0.312594, 0.072616,
		34.398914, 38.725430, 52.185566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690872, 39.182598, 51.889236>,  <33.735939, 38.506615, 52.134735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690872, 39.182598, 51.889236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.072563, 39.067734, 51.855789>,  <34.301579, 38.998814, 51.835720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.072563, 39.067734, 51.855789>,  <33.690872, 39.182598, 51.889236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072563, 39.067734, 51.855789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004220, 0.292473, -0.956264,
		0.299057, 0.912139, 0.280297,
		0.954226, -0.287160, -0.083617,
		34.358829, 38.981586, 51.830704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062752, 39.731972, 51.537090>,  <33.690872, 39.182598, 51.889236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062752, 39.731972, 51.537090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.286236, 39.401413, 51.509041>,  <34.420326, 39.203079, 51.492210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.286236, 39.401413, 51.509041>,  <34.062752, 39.731972, 51.537090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286236, 39.401413, 51.509041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122654, 0.165950, -0.978476,
		0.820246, 0.538079, 0.194079,
		0.558705, -0.826396, -0.070122,
		34.453846, 39.153496, 51.488003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748447, 39.859318, 51.217083>,  <34.062752, 39.731972, 51.537090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748447, 39.859318, 51.217083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.728970, 39.461632, 51.178772>,  <34.717281, 39.223022, 51.155785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.728970, 39.461632, 51.178772>,  <34.748447, 39.859318, 51.217083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728970, 39.461632, 51.178772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367639, 0.071316, -0.927230,
		0.928693, -0.080365, 0.362037,
		-0.048697, -0.994211, -0.095776,
		34.714359, 39.163368, 51.150040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361958, 39.683334, 50.842857>,  <34.748447, 39.859318, 51.217083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361958, 39.683334, 50.842857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.118862, 39.372856, 50.775723>,  <34.973003, 39.186569, 50.735443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.118862, 39.372856, 50.775723>,  <35.361958, 39.683334, 50.842857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118862, 39.372856, 50.775723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207617, 0.048698, -0.976997,
		0.766515, -0.628608, 0.131555,
		-0.607742, -0.776196, -0.167838,
		34.936539, 39.139996, 50.725372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761066, 39.170059, 50.393040>,  <35.361958, 39.683334, 50.842857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761066, 39.170059, 50.393040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.375217, 39.096409, 50.317574>,  <35.143707, 39.052219, 50.272293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.375217, 39.096409, 50.317574>,  <35.761066, 39.170059, 50.393040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375217, 39.096409, 50.317574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210359, -0.106241, -0.971834,
		0.158891, -0.977145, 0.141214,
		-0.964626, -0.184122, -0.188670,
		35.085831, 39.041172, 50.260971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733143, 38.549801, 50.074730>,  <35.761066, 39.170059, 50.393040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733143, 38.549801, 50.074730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.373772, 38.696327, 49.977867>,  <35.158150, 38.784245, 49.919750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.373772, 38.696327, 49.977867>,  <35.733143, 38.549801, 50.074730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373772, 38.696327, 49.977867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131313, -0.302095, -0.944190,
		-0.419030, -0.880084, 0.223308,
		-0.898427, 0.366320, -0.242154,
		35.104244, 38.806225, 49.905220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636307, 38.125854, 49.520260>,  <35.733143, 38.549801, 50.074730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636307, 38.125854, 49.520260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.299526, 38.340897, 49.501957>,  <35.097458, 38.469921, 49.490974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.299526, 38.340897, 49.501957>,  <35.636307, 38.125854, 49.520260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299526, 38.340897, 49.501957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129690, -0.283966, -0.950023,
		-0.523734, -0.793940, 0.308809,
		-0.841953, 0.537609, -0.045757,
		35.046940, 38.502178, 49.488232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017895, 37.723515, 49.424000>,  <35.636307, 38.125854, 49.520260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017895, 37.723515, 49.424000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960667, 38.090069, 49.274460>,  <34.926331, 38.310001, 49.184738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960667, 38.090069, 49.274460>,  <35.017895, 37.723515, 49.424000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960667, 38.090069, 49.274460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094894, -0.388695, -0.916466,
		-0.985152, -0.095646, 0.142572,
		-0.143073, 0.916388, -0.373848,
		34.917744, 38.364986, 49.162304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509640, 37.622639, 48.728050>,  <35.017895, 37.723515, 49.424000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509640, 37.622639, 48.728050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.663334, 37.989529, 48.685970>,  <34.755550, 38.209663, 48.660725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.663334, 37.989529, 48.685970>,  <34.509640, 37.622639, 48.728050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663334, 37.989529, 48.685970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017565, -0.121186, -0.992474,
		-0.923068, 0.379496, -0.062675,
		0.384235, 0.917222, -0.105197,
		34.778603, 38.264694, 48.654411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015388, 38.072002, 48.207935>,  <34.509640, 37.622639, 48.728050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015388, 38.072002, 48.207935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.385330, 38.224129, 48.207966>,  <34.607296, 38.315403, 48.207985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.385330, 38.224129, 48.207966>,  <34.015388, 38.072002, 48.207935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385330, 38.224129, 48.207966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004667, -0.011156, -0.999927,
		-0.380283, 0.924791, -0.012092,
		0.924858, 0.380312, 0.000074,
		34.662788, 38.338223, 48.207989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475719, 38.695633, 48.141876>,  <34.015388, 38.072002, 48.207935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475719, 38.695633, 48.141876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.088207, 38.603870, 48.104290>,  <32.855698, 38.548813, 48.081738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.088207, 38.603870, 48.104290>,  <33.475719, 38.695633, 48.141876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088207, 38.603870, 48.104290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008814, -0.346935, 0.937848,
		-0.247753, 0.909399, 0.334083,
		-0.968783, -0.229410, -0.093970,
		32.797573, 38.535046, 48.076099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178547, 38.812218, 48.775967>,  <33.475719, 38.695633, 48.141876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178547, 38.812218, 48.775967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.909000, 38.562378, 48.618092>,  <32.747272, 38.412476, 48.523365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.909000, 38.562378, 48.618092>,  <33.178547, 38.812218, 48.775967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909000, 38.562378, 48.618092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157799, -0.400206, 0.902737,
		-0.721807, 0.670605, 0.171124,
		-0.673865, -0.624599, -0.394692,
		32.706841, 38.375000, 48.499683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612461, 38.925285, 49.244522>,  <33.178547, 38.812218, 48.775967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612461, 38.925285, 49.244522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.515202, 38.586342, 49.055691>,  <32.456848, 38.382977, 48.942390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.515202, 38.586342, 49.055691>,  <32.612461, 38.925285, 49.244522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515202, 38.586342, 49.055691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334533, -0.383569, 0.860792,
		-0.910477, 0.367223, -0.190208,
		-0.243144, -0.847362, -0.472079,
		32.442257, 38.332134, 48.914066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963339, 38.631248, 49.455482>,  <32.612461, 38.925285, 49.244522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963339, 38.631248, 49.455482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.159874, 38.310158, 49.320297>,  <32.277794, 38.117504, 49.239185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.159874, 38.310158, 49.320297>,  <31.963339, 38.631248, 49.455482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159874, 38.310158, 49.320297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157112, -0.463357, 0.872133,
		-0.856681, -0.375414, -0.353783,
		0.491338, -0.802724, -0.337967,
		32.307274, 38.069340, 49.218906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547594, 38.038551, 49.614651>,  <31.963339, 38.631248, 49.455482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547594, 38.038551, 49.614651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.912411, 37.885250, 49.556274>,  <32.131302, 37.793270, 49.521248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.912411, 37.885250, 49.556274>,  <31.547594, 38.038551, 49.614651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912411, 37.885250, 49.556274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000069, -0.355716, 0.934594,
		-0.410098, -0.852399, -0.324401,
		0.912041, -0.383252, -0.145937,
		32.186024, 37.770275, 49.512493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528103, 37.255417, 49.851913>,  <31.547594, 38.038551, 49.614651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528103, 37.255417, 49.851913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.905077, 37.382446, 49.893784>,  <32.131264, 37.458664, 49.918907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.905077, 37.382446, 49.893784>,  <31.528103, 37.255417, 49.851913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905077, 37.382446, 49.893784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060254, -0.469205, 0.881031,
		0.328910, -0.824009, -0.461331,
		0.942437, 0.317577, 0.104676,
		32.187809, 37.477718, 49.925186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844797, 36.716278, 50.162327>,  <31.528103, 37.255417, 49.851913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844797, 36.716278, 50.162327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.090691, 37.025391, 50.225460>,  <32.238228, 37.210857, 50.263340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.090691, 37.025391, 50.225460>,  <31.844797, 36.716278, 50.162327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090691, 37.025391, 50.225460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001573, -0.201309, 0.979527,
		0.788733, -0.601899, -0.124966,
		0.614733, 0.772782, 0.157833,
		32.275112, 37.257225, 50.272808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131916, 35.989582, 50.166031>,  <31.844797, 36.716278, 50.162327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131916, 35.989582, 50.166031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.816807, 35.768318, 50.274426>,  <31.627743, 35.635559, 50.339462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.816807, 35.768318, 50.274426>,  <32.131916, 35.989582, 50.166031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816807, 35.768318, 50.274426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437526, 0.192827, -0.878287,
		0.433581, -0.810451, -0.393925,
		-0.787769, -0.553161, 0.270987,
		31.580477, 35.602371, 50.355721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068451, 35.330975, 49.800526>,  <32.131916, 35.989582, 50.166031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068451, 35.330975, 49.800526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.716808, 35.478561, 49.921211>,  <31.505821, 35.567112, 49.993622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.716808, 35.478561, 49.921211>,  <32.068451, 35.330975, 49.800526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716808, 35.478561, 49.921211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227960, 0.230436, -0.946009,
		-0.418570, -0.900424, -0.118470,
		-0.879110, 0.368965, 0.301714,
		31.453075, 35.589252, 50.011726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574108, 34.997478, 49.379047>,  <32.068451, 35.330975, 49.800526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574108, 34.997478, 49.379047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.383846, 35.308739, 49.543114>,  <31.269690, 35.495495, 49.641552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.383846, 35.308739, 49.543114>,  <31.574108, 34.997478, 49.379047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383846, 35.308739, 49.543114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428622, 0.202151, -0.880578,
		-0.768137, -0.594656, 0.237379,
		-0.475655, 0.778151, 0.410162,
		31.241150, 35.542183, 49.666161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871323, 34.847866, 49.198978>,  <31.574108, 34.997478, 49.379047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871323, 34.847866, 49.198978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.886309, 35.241985, 49.265652>,  <30.895300, 35.478458, 49.305656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.886309, 35.241985, 49.265652>,  <30.871323, 34.847866, 49.198978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.886309, 35.241985, 49.265652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488829, 0.163556, -0.856910,
		-0.871575, -0.049376, 0.487770,
		0.037467, 0.985298, 0.166688,
		30.897549, 35.537575, 49.315659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317585, 35.091522, 48.749573>,  <30.871323, 34.847866, 49.198978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317585, 35.091522, 48.749573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.517879, 35.431561, 48.814808>,  <30.638056, 35.635582, 48.853951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.517879, 35.431561, 48.814808>,  <30.317585, 35.091522, 48.749573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.517879, 35.431561, 48.814808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410932, 0.399288, -0.819576,
		-0.761838, 0.343374, 0.549270,
		0.500738, 0.850096, 0.163090,
		30.668100, 35.686588, 48.863735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832972, 35.583664, 48.680752>,  <30.317585, 35.091522, 48.749573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832972, 35.583664, 48.680752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.190306, 35.752937, 48.620262>,  <30.404705, 35.854504, 48.583969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.190306, 35.752937, 48.620262>,  <29.832972, 35.583664, 48.680752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190306, 35.752937, 48.620262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360898, 0.475065, -0.802538,
		-0.267781, 0.771510, 0.577118,
		0.893334, 0.423185, -0.151223,
		30.458305, 35.879894, 48.574894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639242, 36.198627, 48.508270>,  <29.832972, 35.583664, 48.680752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639242, 36.198627, 48.508270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.024343, 36.203442, 48.400227>,  <30.255404, 36.206329, 48.335400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.024343, 36.203442, 48.400227>,  <29.639242, 36.198627, 48.508270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024343, 36.203442, 48.400227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244741, 0.463414, -0.851674,
		0.114923, 0.886060, 0.449099,
		0.962754, 0.012036, -0.270112,
		30.313169, 36.207054, 48.319195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.794739, 34.482185, 52.411949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.975773, 34.836330, 52.369423>,  <34.084393, 35.048817, 52.343906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.975773, 34.836330, 52.369423>,  <33.794739, 34.482185, 52.411949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975773, 34.836330, 52.369423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085646, -0.161833, -0.983094,
		-0.887600, 0.435824, -0.149071,
		0.452581, 0.885363, -0.106317,
		34.111546, 35.101940, 52.337528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518196, 34.897442, 51.736675>,  <33.794739, 34.482185, 52.411949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518196, 34.897442, 51.736675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.877506, 35.008038, 51.873299>,  <34.093094, 35.074394, 51.955273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.877506, 35.008038, 51.873299>,  <33.518196, 34.897442, 51.736675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877506, 35.008038, 51.873299> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433650, -0.432023, -0.790762,
		-0.071075, 0.858436, -0.507973,
		0.898274, 0.276486, 0.341554,
		34.146988, 35.090984, 51.975765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849220, 35.234329, 51.290409>,  <33.518196, 34.897442, 51.736675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849220, 35.234329, 51.290409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.143410, 35.062767, 51.500214>,  <34.319923, 34.959831, 51.626095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.143410, 35.062767, 51.500214>,  <33.849220, 35.234329, 51.290409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143410, 35.062767, 51.500214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350154, -0.422133, -0.836179,
		0.580056, 0.798651, -0.160286,
		0.735478, -0.428906, 0.524512,
		34.364052, 34.934093, 51.657566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603188, 35.394962, 51.026253>,  <33.849220, 35.234329, 51.290409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603188, 35.394962, 51.026253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.620220, 35.051331, 51.230282>,  <34.630440, 34.845154, 51.352699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.620220, 35.051331, 51.230282>,  <34.603188, 35.394962, 51.026253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620220, 35.051331, 51.230282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457913, -0.436978, -0.774187,
		0.887977, 0.266535, 0.374775,
		0.042579, -0.859075, 0.510076,
		34.632996, 34.793610, 51.383305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256531, 35.088039, 50.892036>,  <34.603188, 35.394962, 51.026253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256531, 35.088039, 50.892036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.072525, 34.758270, 51.023922>,  <34.962120, 34.560410, 51.103054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.072525, 34.758270, 51.023922>,  <35.256531, 35.088039, 50.892036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072525, 34.758270, 51.023922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238670, -0.472484, -0.848407,
		0.855232, -0.311587, 0.414115,
		-0.460016, -0.824422, 0.329717,
		34.934521, 34.510944, 51.122837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792984, 34.461979, 50.681087>,  <35.256531, 35.088039, 50.892036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792984, 34.461979, 50.681087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.415680, 34.332523, 50.710796>,  <35.189297, 34.254852, 50.728622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.415680, 34.332523, 50.710796>,  <35.792984, 34.461979, 50.681087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415680, 34.332523, 50.710796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110937, -0.517990, -0.848163,
		0.312970, -0.791800, 0.524503,
		-0.943262, -0.323636, 0.074276,
		35.132702, 34.235432, 50.733078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825935, 33.744595, 50.799583>,  <35.792984, 34.461979, 50.681087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825935, 33.744595, 50.799583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.453529, 33.803288, 50.665913>,  <35.230083, 33.838505, 50.585712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.453529, 33.803288, 50.665913>,  <35.825935, 33.744595, 50.799583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453529, 33.803288, 50.665913> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235747, -0.457195, -0.857553,
		-0.278616, -0.877178, 0.391065,
		-0.931019, 0.146736, -0.334174,
		35.174225, 33.847309, 50.565659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600880, 33.037426, 50.557568>,  <35.825935, 33.744595, 50.799583>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600880, 33.037426, 50.557568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.332081, 33.276814, 50.383095>,  <35.170799, 33.420444, 50.278412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.332081, 33.276814, 50.383095>,  <35.600880, 33.037426, 50.557568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332081, 33.276814, 50.383095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147100, -0.469385, -0.870654,
		-0.725794, -0.649243, 0.227393,
		-0.672001, 0.598466, -0.436180,
		35.130482, 33.456352, 50.252239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128857, 32.562332, 50.290016>,  <35.600880, 33.037426, 50.557568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128857, 32.562332, 50.290016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.076607, 32.898529, 50.079681>,  <35.045258, 33.100246, 49.953480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.076607, 32.898529, 50.079681>,  <35.128857, 32.562332, 50.290016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076607, 32.898529, 50.079681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104839, -0.515697, -0.850333,
		-0.985874, -0.166201, -0.020755,
		-0.130623, 0.840496, -0.525836,
		35.037418, 33.150677, 49.921932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649548, 32.404396, 49.769409>,  <35.128857, 32.562332, 50.290016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649548, 32.404396, 49.769409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.838509, 32.729950, 49.634106>,  <34.951885, 32.925282, 49.552921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.838509, 32.729950, 49.634106>,  <34.649548, 32.404396, 49.769409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838509, 32.729950, 49.634106> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215128, -0.478653, -0.851241,
		-0.854726, 0.329358, -0.401207,
		0.472402, 0.813888, -0.338263,
		34.980228, 32.974117, 49.532627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400101, 32.403969, 49.066792>,  <34.649548, 32.404396, 49.769409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400101, 32.403969, 49.066792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.713272, 32.650455, 49.032604>,  <34.901173, 32.798347, 49.012093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.713272, 32.650455, 49.032604>,  <34.400101, 32.403969, 49.066792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713272, 32.650455, 49.032604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101066, -0.261539, -0.959887,
		-0.613852, 0.742881, -0.267044,
		0.782925, 0.616218, -0.085467,
		34.948151, 32.835320, 49.006966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256882, 32.852001, 48.501919>,  <34.400101, 32.403969, 49.066792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256882, 32.852001, 48.501919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.652603, 32.841312, 48.559280>,  <34.890038, 32.834900, 48.593697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.652603, 32.841312, 48.559280>,  <34.256882, 32.852001, 48.501919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652603, 32.841312, 48.559280> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134821, -0.207858, -0.968823,
		0.055693, 0.977794, -0.202032,
		0.989304, -0.026719, 0.143403,
		34.949394, 32.833298, 48.602303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767143, 33.472481, 48.480259>,  <34.256882, 32.852001, 48.501919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767143, 33.472481, 48.480259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.372829, 33.406193, 48.469223>,  <33.136242, 33.366421, 48.462601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.372829, 33.406193, 48.469223>,  <33.767143, 33.472481, 48.480259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372829, 33.406193, 48.469223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034952, 0.041663, 0.998520,
		-0.164329, 0.985292, -0.046863,
		-0.985786, -0.165724, -0.027591,
		33.077095, 33.356476, 48.460945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479473, 33.934052, 48.964523>,  <33.767143, 33.472481, 48.480259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479473, 33.934052, 48.964523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.188515, 33.660172, 48.946239>,  <33.013939, 33.495846, 48.935268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.188515, 33.660172, 48.946239>,  <33.479473, 33.934052, 48.964523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188515, 33.660172, 48.946239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246617, 0.198677, 0.948529,
		-0.640375, 0.701225, -0.313374,
		-0.727393, -0.684697, -0.045707,
		32.970295, 33.454762, 48.932526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019218, 34.082485, 49.469772>,  <33.479473, 33.934052, 48.964523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019218, 34.082485, 49.469772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.872414, 33.719093, 49.389809>,  <32.784332, 33.501057, 49.341831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.872414, 33.719093, 49.389809>,  <33.019218, 34.082485, 49.469772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872414, 33.719093, 49.389809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331219, -0.073193, 0.940711,
		-0.869250, 0.411466, -0.274043,
		-0.367012, -0.908482, -0.199908,
		32.762310, 33.446548, 49.329838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322315, 34.051529, 49.859863>,  <33.019218, 34.082485, 49.469772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322315, 34.051529, 49.859863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.436451, 33.679012, 49.769283>,  <32.504932, 33.455502, 49.714935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.436451, 33.679012, 49.769283>,  <32.322315, 34.051529, 49.859863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436451, 33.679012, 49.769283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285057, -0.308047, 0.907662,
		-0.915055, -0.194437, -0.353368,
		0.285337, -0.931290, -0.226454,
		32.522053, 33.399624, 49.701347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733538, 33.640095, 50.178631>,  <32.322315, 34.051529, 49.859863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733538, 33.640095, 50.178631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.051208, 33.405045, 50.116695>,  <32.241810, 33.264015, 50.079533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.051208, 33.405045, 50.116695>,  <31.733538, 33.640095, 50.178631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051208, 33.405045, 50.116695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009661, -0.266981, 0.963654,
		-0.607609, -0.763816, -0.217707,
		0.794178, -0.587627, -0.154840,
		32.289463, 33.228756, 50.070244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555084, 32.992115, 50.429882>,  <31.733538, 33.640095, 50.178631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555084, 32.992115, 50.429882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.954063, 32.966934, 50.443329>,  <32.193451, 32.951824, 50.451397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.954063, 32.966934, 50.443329>,  <31.555084, 32.992115, 50.429882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954063, 32.966934, 50.443329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055730, -0.392833, 0.917920,
		-0.044582, -0.917453, -0.395339,
		0.997450, -0.062955, 0.033616,
		32.253300, 32.948048, 50.453415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781950, 32.300594, 50.533493>,  <31.555084, 32.992115, 50.429882>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781950, 32.300594, 50.533493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.077381, 32.529179, 50.676563>,  <32.254639, 32.666328, 50.762405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.077381, 32.529179, 50.676563>,  <31.781950, 32.300594, 50.533493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077381, 32.529179, 50.676563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204334, -0.315838, 0.926550,
		0.642458, -0.757414, -0.116501,
		0.738577, 0.571464, 0.357678,
		32.298954, 32.700619, 50.783867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195995, 31.831703, 50.856194>,  <31.781950, 32.300594, 50.533493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195995, 31.831703, 50.856194> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.310398, 32.180912, 51.014198>,  <32.379040, 32.390438, 51.109001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.310398, 32.180912, 51.014198>,  <32.195995, 31.831703, 50.856194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310398, 32.180912, 51.014198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058296, -0.427318, 0.902220,
		0.956454, -0.235009, -0.173107,
		0.286002, 0.873023, 0.395010,
		32.396198, 32.442818, 51.132702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679710, 31.604816, 51.380787>,  <32.195995, 31.831703, 50.856194>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679710, 31.604816, 51.380787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.588806, 31.983168, 51.473454>,  <32.534264, 32.210178, 51.529053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.588806, 31.983168, 51.473454>,  <32.679710, 31.604816, 51.380787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588806, 31.983168, 51.473454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047634, -0.226808, 0.972774,
		0.972668, 0.232109, 0.006489,
		-0.227262, 0.945877, 0.231666,
		32.520626, 32.266930, 51.542953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104549, 31.676394, 52.048355>,  <32.679710, 31.604816, 51.380787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104549, 31.676394, 52.048355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.825119, 31.960596, 52.014469>,  <32.657463, 32.131119, 51.994137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.825119, 31.960596, 52.014469>,  <33.104549, 31.676394, 52.048355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825119, 31.960596, 52.014469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341669, -0.227202, 0.911944,
		0.628695, 0.666003, 0.401475,
		-0.698573, 0.710506, -0.084712,
		32.615547, 32.173748, 51.989056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116508, 32.098095, 52.695759>,  <33.104549, 31.676394, 52.048355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116508, 32.098095, 52.695759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.756889, 32.164188, 52.533573>,  <32.541119, 32.203846, 52.436260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.756889, 32.164188, 52.533573>,  <33.116508, 32.098095, 52.695759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756889, 32.164188, 52.533573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437390, -0.296823, 0.848873,
		0.019914, 0.940528, 0.339133,
		-0.899051, 0.165237, -0.405466,
		32.487175, 32.213760, 52.411934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740807, 32.438412, 53.252266>,  <33.116508, 32.098095, 52.695759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740807, 32.438412, 53.252266> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.440346, 32.311333, 53.020809>,  <32.260067, 32.235085, 52.881935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.440346, 32.311333, 53.020809>,  <32.740807, 32.438412, 53.252266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440346, 32.311333, 53.020809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571109, -0.126845, 0.811015,
		-0.331057, 0.939669, -0.086160,
		-0.751156, -0.317698, -0.578646,
		32.215000, 32.216022, 52.847214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162647, 32.858490, 53.486179>,  <32.740807, 32.438412, 53.252266>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162647, 32.858490, 53.486179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.029137, 32.534573, 53.293167>,  <31.949030, 32.340221, 53.177361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.029137, 32.534573, 53.293167>,  <32.162647, 32.858490, 53.486179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029137, 32.534573, 53.293167> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748230, -0.083756, 0.658131,
		-0.573362, 0.580712, -0.577953,
		-0.333778, -0.809789, -0.482529,
		31.929003, 32.291637, 53.148407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497160, 33.017849, 53.284218>,  <32.162647, 32.858490, 53.486179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497160, 33.017849, 53.284218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.552105, 32.624107, 53.328365>,  <31.585072, 32.387863, 53.354855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.552105, 32.624107, 53.328365>,  <31.497160, 33.017849, 53.284218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.552105, 32.624107, 53.328365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672165, -0.010792, 0.740323,
		-0.727548, -0.175875, -0.663131,
		0.137360, -0.984354, 0.110366,
		31.593313, 32.328800, 53.361477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340923, 33.640755, 52.857533>,  <31.497160, 33.017849, 53.284218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340923, 33.640755, 52.857533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.438023, 34.027233, 52.892258>,  <31.496283, 34.259121, 52.913094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.438023, 34.027233, 52.892258>,  <31.340923, 33.640755, 52.857533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438023, 34.027233, 52.892258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085310, 0.110401, -0.990219,
		-0.966331, 0.232969, 0.109226,
		0.242749, 0.966197, 0.086810,
		31.510847, 34.317093, 52.918301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.993299, 33.944153, 52.290848>,  <31.340923, 33.640755, 52.857533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.993299, 33.944153, 52.290848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.238798, 34.233425, 52.417545>,  <31.386097, 34.406986, 52.493565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.238798, 34.233425, 52.417545>,  <30.993299, 33.944153, 52.290848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238798, 34.233425, 52.417545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151513, 0.501632, -0.851710,
		-0.774827, 0.474744, 0.417446,
		0.613748, 0.723176, 0.316748,
		31.422922, 34.450378, 52.512569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608059, 34.548244, 52.243126>,  <30.993299, 33.944153, 52.290848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608059, 34.548244, 52.243126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.998766, 34.629089, 52.214630>,  <31.233191, 34.677597, 52.197533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.998766, 34.629089, 52.214630>,  <30.608059, 34.548244, 52.243126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998766, 34.629089, 52.214630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142249, 0.362858, -0.920923,
		-0.160283, 0.909661, 0.383178,
		0.976767, 0.202115, -0.071238,
		31.291796, 34.689724, 52.193260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695135, 35.185677, 52.152992>,  <30.608059, 34.548244, 52.243126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695135, 35.185677, 52.152992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.063835, 35.083801, 52.036022>,  <31.285055, 35.022675, 51.965839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.063835, 35.083801, 52.036022>,  <30.695135, 35.185677, 52.152992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063835, 35.083801, 52.036022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163213, 0.429250, -0.888316,
		0.351770, 0.866532, 0.354091,
		0.921748, -0.254691, -0.292427,
		31.340359, 35.007393, 51.948296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991476, 35.833218, 51.851768>,  <30.695135, 35.185677, 52.152992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991476, 35.833218, 51.851768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.214771, 35.529778, 51.717373>,  <31.348749, 35.347713, 51.636734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.214771, 35.529778, 51.717373>,  <30.991476, 35.833218, 51.851768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214771, 35.529778, 51.717373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077838, 0.355294, -0.931508,
		0.826020, 0.546158, 0.139292,
		0.558240, -0.758602, -0.335992,
		31.382244, 35.302197, 51.616577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544701, 36.124023, 51.465206>,  <30.991476, 35.833218, 51.851768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544701, 36.124023, 51.465206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.507483, 35.749638, 51.329369>,  <31.485151, 35.525005, 51.247868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.507483, 35.749638, 51.329369>,  <31.544701, 36.124023, 51.465206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507483, 35.749638, 51.329369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147975, 0.350281, -0.924882,
		0.984604, -0.035807, -0.171091,
		-0.093047, -0.935960, -0.339590,
		31.479568, 35.468849, 51.227493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882805, 36.154972, 50.855675>,  <31.544701, 36.124023, 51.465206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882805, 36.154972, 50.855675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.669006, 35.817802, 50.831032>,  <31.540728, 35.615501, 50.816246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.669006, 35.817802, 50.831032>,  <31.882805, 36.154972, 50.855675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669006, 35.817802, 50.831032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002288, 0.074341, -0.997230,
		0.845169, -0.532873, -0.041664,
		-0.534494, -0.842924, -0.061612,
		31.508657, 35.564926, 50.812550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.489868, 36.536716, 50.816288>,  <31.882805, 36.154972, 50.855675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.489868, 36.536716, 50.816288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.471436, 36.933697, 50.770817>,  <32.460377, 37.171883, 50.743534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.471436, 36.933697, 50.770817>,  <32.489868, 36.536716, 50.816288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471436, 36.933697, 50.770817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009072, 0.113382, 0.993510,
		0.998897, 0.046810, 0.003779,
		-0.046077, 0.992448, -0.113682,
		32.457611, 37.231430, 50.736713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932999, 36.817883, 51.354172>,  <32.489868, 36.536716, 50.816288>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932999, 36.817883, 51.354172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.708538, 37.130550, 51.245289>,  <32.573860, 37.318153, 51.179958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.708538, 37.130550, 51.245289>,  <32.932999, 36.817883, 51.354172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708538, 37.130550, 51.245289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029786, 0.309585, 0.950405,
		0.827177, 0.541430, -0.150441,
		-0.561152, 0.781672, -0.272209,
		32.540192, 37.365051, 51.163628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227577, 37.426918, 51.691326>,  <32.932999, 36.817883, 51.354172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227577, 37.426918, 51.691326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.847931, 37.519882, 51.606308>,  <32.620144, 37.575661, 51.555298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.847931, 37.519882, 51.606308>,  <33.227577, 37.426918, 51.691326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847931, 37.519882, 51.606308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205832, 0.053047, 0.977149,
		0.238372, 0.971171, -0.002511,
		-0.949111, 0.232408, -0.212543,
		32.563198, 37.589603, 51.542545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080734, 38.157303, 51.889141>,  <33.227577, 37.426918, 51.691326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080734, 38.157303, 51.889141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.721031, 37.983913, 51.865692>,  <32.505211, 37.879879, 51.851624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.721031, 37.983913, 51.865692>,  <33.080734, 38.157303, 51.889141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721031, 37.983913, 51.865692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117325, 0.109918, 0.986992,
		-0.421390, 0.894438, -0.149702,
		-0.899258, -0.433472, -0.058622,
		32.451252, 37.853870, 51.848106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651649, 38.611950, 52.174290>,  <33.080734, 38.157303, 51.889141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651649, 38.611950, 52.174290> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.477180, 38.253952, 52.211681>,  <32.372498, 38.039154, 52.234116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.477180, 38.253952, 52.211681>,  <32.651649, 38.611950, 52.174290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477180, 38.253952, 52.211681> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122715, 0.162071, 0.979119,
		-0.891455, 0.415596, -0.180520,
		-0.436175, -0.894993, 0.093479,
		32.346329, 37.985455, 52.239723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130714, 38.606087, 52.821869>,  <32.651649, 38.611950, 52.174290>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130714, 38.606087, 52.821869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.214348, 38.223503, 52.740414>,  <32.264526, 37.993954, 52.691540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.214348, 38.223503, 52.740414>,  <32.130714, 38.606087, 52.821869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214348, 38.223503, 52.740414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065375, -0.221445, 0.972979,
		-0.975711, -0.190119, -0.108828,
		0.209081, -0.956461, -0.203637,
		32.277073, 37.936565, 52.679321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768778, 38.206551, 53.348663>,  <32.130714, 38.606087, 52.821869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768778, 38.206551, 53.348663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.036106, 37.943119, 53.210320>,  <32.196503, 37.785061, 53.127316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.036106, 37.943119, 53.210320>,  <31.768778, 38.206551, 53.348663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036106, 37.943119, 53.210320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059547, -0.416085, 0.907374,
		-0.741485, -0.627013, -0.238863,
		0.668322, -0.658580, -0.345857,
		32.236603, 37.745544, 53.106564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500692, 37.546597, 53.544163>,  <31.768778, 38.206551, 53.348663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500692, 37.546597, 53.544163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.891384, 37.493694, 53.476627>,  <32.125801, 37.461952, 53.436104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.891384, 37.493694, 53.476627>,  <31.500692, 37.546597, 53.544163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891384, 37.493694, 53.476627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104480, -0.394101, 0.913109,
		-0.187303, -0.909502, -0.371112,
		0.976730, -0.132254, -0.168840,
		32.184402, 37.454018, 53.425976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569584, 36.835224, 53.714867>,  <31.500692, 37.546597, 53.544163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569584, 36.835224, 53.714867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.949554, 36.959557, 53.702068>,  <32.177536, 37.034157, 53.694389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.949554, 36.959557, 53.702068>,  <31.569584, 36.835224, 53.714867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949554, 36.959557, 53.702068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167445, -0.419896, 0.891992,
		0.263821, -0.852685, -0.450918,
		0.949927, 0.310829, -0.032000,
		32.234531, 37.052807, 53.692467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.219990, 34.781818, 38.372681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595688, 34.738106, 38.502838>,  <33.821106, 34.711880, 38.580933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595688, 34.738106, 38.502838>,  <33.219990, 34.781818, 38.372681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595688, 34.738106, 38.502838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215580, 0.549895, 0.806933,
		-0.267115, -0.828054, 0.492926,
		0.939241, -0.109279, 0.325397,
		33.877460, 34.705322, 38.600456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235352, 34.365181, 38.972137>,  <33.219990, 34.781818, 38.372681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235352, 34.365181, 38.972137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544624, 34.618843, 38.969765>,  <33.730186, 34.771042, 38.968342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544624, 34.618843, 38.969765>,  <33.235352, 34.365181, 38.972137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544624, 34.618843, 38.969765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351818, 0.436695, 0.827962,
		0.527651, -0.638076, 0.560753,
		0.773181, 0.634158, -0.005936,
		33.776577, 34.809090, 38.967983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438492, 34.369873, 39.658253>,  <33.235352, 34.365181, 38.972137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438492, 34.369873, 39.658253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612175, 34.694366, 39.501606>,  <33.716385, 34.889061, 39.407616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612175, 34.694366, 39.501606>,  <33.438492, 34.369873, 39.658253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612175, 34.694366, 39.501606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258858, 0.528770, 0.808329,
		0.862818, -0.249610, 0.439590,
		0.434209, 0.811232, -0.391619,
		33.742439, 34.937737, 39.384121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950512, 34.646511, 40.121696>,  <33.438492, 34.369873, 39.658253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950512, 34.646511, 40.121696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849335, 34.960655, 39.895695>,  <33.788628, 35.149139, 39.760094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849335, 34.960655, 39.895695>,  <33.950512, 34.646511, 40.121696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849335, 34.960655, 39.895695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123705, 0.552952, 0.823979,
		0.959540, 0.278315, -0.042713,
		-0.252943, 0.785357, -0.565008,
		33.773453, 35.196262, 39.726192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320248, 35.279739, 40.481419>,  <33.950512, 34.646511, 40.121696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320248, 35.279739, 40.481419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037853, 35.410870, 40.230305>,  <33.868416, 35.489548, 40.079636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037853, 35.410870, 40.230305>,  <34.320248, 35.279739, 40.481419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037853, 35.410870, 40.230305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229344, 0.732827, 0.640598,
		0.670062, 0.596232, -0.442181,
		-0.705987, 0.327829, -0.627782,
		33.826057, 35.509220, 40.041969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430508, 35.995747, 40.446419>,  <34.320248, 35.279739, 40.481419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430508, 35.995747, 40.446419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056320, 35.956547, 40.310600>,  <33.831806, 35.933025, 40.229111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056320, 35.956547, 40.310600>,  <34.430508, 35.995747, 40.446419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056320, 35.956547, 40.310600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300149, 0.727515, 0.616955,
		0.186565, 0.679058, -0.709982,
		-0.935470, -0.097998, -0.339548,
		33.775681, 35.927147, 40.208736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191154, 36.629360, 40.365963>,  <34.430508, 35.995747, 40.446419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191154, 36.629360, 40.365963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858631, 36.411301, 40.409325>,  <33.659119, 36.280464, 40.435341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858631, 36.411301, 40.409325>,  <34.191154, 36.629360, 40.365963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858631, 36.411301, 40.409325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409784, 0.732885, 0.543099,
		-0.375514, 0.407058, -0.832642,
		-0.831304, -0.545145, 0.108403,
		33.609241, 36.247757, 40.441845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661255, 37.118126, 40.287994>,  <34.191154, 36.629360, 40.365963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661255, 37.118126, 40.287994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474487, 36.796894, 40.436077>,  <33.362427, 36.604153, 40.524925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474487, 36.796894, 40.436077>,  <33.661255, 37.118126, 40.287994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474487, 36.796894, 40.436077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376347, 0.559294, 0.738616,
		-0.800221, 0.205546, -0.563380,
		-0.466914, -0.803082, 0.370202,
		33.334412, 36.555969, 40.547138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037384, 37.349483, 40.548691>,  <33.661255, 37.118126, 40.287994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037384, 37.349483, 40.548691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092720, 37.011162, 40.754787>,  <33.125919, 36.808167, 40.878445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092720, 37.011162, 40.754787>,  <33.037384, 37.349483, 40.548691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092720, 37.011162, 40.754787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347332, 0.445768, 0.825016,
		-0.927483, -0.293088, -0.232110,
		0.138335, -0.845807, 0.515241,
		33.134220, 36.757420, 40.909359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532101, 37.264755, 40.908821>,  <33.037384, 37.349483, 40.548691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532101, 37.264755, 40.908821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773678, 37.046051, 41.140789>,  <32.918625, 36.914829, 41.279968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773678, 37.046051, 41.140789>,  <32.532101, 37.264755, 40.908821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773678, 37.046051, 41.140789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413859, 0.406695, 0.814445,
		-0.681156, -0.731883, 0.019339,
		0.603943, -0.546760, 0.579919,
		32.954861, 36.882023, 41.314766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133255, 37.133373, 41.421364>,  <32.532101, 37.264755, 40.908821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133255, 37.133373, 41.421364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479568, 37.015270, 41.582973>,  <32.687355, 36.944408, 41.679939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479568, 37.015270, 41.582973>,  <32.133255, 37.133373, 41.421364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479568, 37.015270, 41.582973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330763, 0.268210, 0.904798,
		-0.375516, -0.916997, 0.134550,
		0.865785, -0.295262, 0.404026,
		32.739304, 36.926693, 41.704182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994223, 36.924191, 42.044090>,  <32.133255, 37.133373, 41.421364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994223, 36.924191, 42.044090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387459, 36.931644, 42.116955>,  <32.623402, 36.936119, 42.160675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387459, 36.931644, 42.116955>,  <31.994223, 36.924191, 42.044090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387459, 36.931644, 42.116955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179876, 0.284549, 0.941635,
		-0.034287, -0.958480, 0.283089,
		0.983092, 0.018636, 0.182164,
		32.682384, 36.937237, 42.171604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.687622, 36.255432, 42.224422>,  <31.994223, 36.924191, 42.044090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.687622, 36.255432, 42.224422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292320, 36.206890, 42.261570>,  <31.055140, 36.177765, 42.283859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292320, 36.206890, 42.261570>,  <31.687622, 36.255432, 42.224422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292320, 36.206890, 42.261570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052459, -0.301372, -0.952062,
		0.143521, -0.945753, 0.291467,
		-0.988256, -0.121351, 0.092867,
		30.995844, 36.170486, 42.289429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560951, 35.678993, 41.845108>,  <31.687622, 36.255432, 42.224422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.560951, 35.678993, 41.845108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214186, 35.876785, 41.870239>,  <31.006126, 35.995461, 41.885319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214186, 35.876785, 41.870239>,  <31.560951, 35.678993, 41.845108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214186, 35.876785, 41.870239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168700, -0.172463, -0.970462,
		-0.469039, -0.851907, 0.232929,
		-0.866916, 0.494480, 0.062825,
		30.954111, 36.025127, 41.889088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145319, 35.321270, 41.525116>,  <31.560951, 35.678993, 41.845108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145319, 35.321270, 41.525116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926126, 35.655502, 41.509514>,  <30.794611, 35.856041, 41.500153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.926126, 35.655502, 41.509514>,  <31.145319, 35.321270, 41.525116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926126, 35.655502, 41.509514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228826, -0.194589, -0.953821,
		-0.804583, -0.513752, 0.297834,
		-0.547983, 0.835580, -0.039004,
		30.761732, 35.906178, 41.497814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485170, 35.141495, 41.148579>,  <31.145319, 35.321270, 41.525116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485170, 35.141495, 41.148579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548340, 35.535675, 41.123478>,  <30.586241, 35.772182, 41.108418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548340, 35.535675, 41.123478>,  <30.485170, 35.141495, 41.148579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548340, 35.535675, 41.123478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103956, -0.046606, -0.993490,
		-0.981964, 0.163420, 0.095084,
		0.157924, 0.985455, -0.062754,
		30.595716, 35.831310, 41.104652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834206, 35.443619, 40.941280>,  <30.485170, 35.141495, 41.148579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834206, 35.443619, 40.941280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121206, 35.698910, 40.829670>,  <30.293406, 35.852085, 40.762703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121206, 35.698910, 40.829670>,  <29.834206, 35.443619, 40.941280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121206, 35.698910, 40.829670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312035, -0.063643, -0.947937,
		-0.622759, 0.767211, 0.153486,
		0.717499, 0.638229, -0.279030,
		30.336456, 35.890377, 40.745960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538136, 35.850956, 40.432243>,  <29.834206, 35.443619, 40.941280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538136, 35.850956, 40.432243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925476, 35.927074, 40.367645>,  <30.157881, 35.972744, 40.328884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925476, 35.927074, 40.367645>,  <29.538136, 35.850956, 40.432243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925476, 35.927074, 40.367645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135640, -0.141930, -0.980540,
		-0.209512, 0.971414, -0.111627,
		0.968353, 0.190293, -0.161499,
		30.215982, 35.984161, 40.319195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575014, 36.222595, 39.937035>,  <29.538136, 35.850956, 40.432243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575014, 36.222595, 39.937035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945112, 36.071068, 39.945183>,  <30.167171, 35.980152, 39.950069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945112, 36.071068, 39.945183>,  <29.575014, 36.222595, 39.937035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945112, 36.071068, 39.945183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039789, -0.150295, -0.987840,
		0.377277, 0.913184, -0.154133,
		0.925245, -0.378823, 0.020368,
		30.222685, 35.957420, 39.951294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823761, 36.357342, 39.303902>,  <29.575014, 36.222595, 39.937035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823761, 36.357342, 39.303902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082582, 36.069080, 39.403481>,  <30.237875, 35.896122, 39.463230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082582, 36.069080, 39.403481>,  <29.823761, 36.357342, 39.303902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082582, 36.069080, 39.403481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053760, -0.368827, -0.927942,
		0.760545, 0.587047, -0.277394,
		0.647055, -0.720655, 0.248950,
		30.276699, 35.852882, 39.478165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355652, 36.388172, 38.774319>,  <29.823761, 36.357342, 39.303902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355652, 36.388172, 38.774319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344154, 36.025143, 38.941883>,  <30.337255, 35.807327, 39.042423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344154, 36.025143, 38.941883>,  <30.355652, 36.388172, 38.774319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344154, 36.025143, 38.941883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251070, -0.412204, -0.875815,
		0.967542, 0.080004, 0.239712,
		-0.028742, -0.907572, 0.418912,
		30.335531, 35.752872, 39.067558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780575, 36.089035, 38.353550>,  <30.355652, 36.388172, 38.774319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780575, 36.089035, 38.353550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617493, 35.803722, 38.581589>,  <30.519644, 35.632534, 38.718410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617493, 35.803722, 38.581589>,  <30.780575, 36.089035, 38.353550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617493, 35.803722, 38.581589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066136, -0.645768, -0.760664,
		0.910715, -0.272423, 0.310456,
		-0.407705, -0.713280, 0.570094,
		30.495180, 35.589737, 38.752617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264542, 35.512817, 38.256668>,  <30.780575, 36.089035, 38.353550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264542, 35.512817, 38.256668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903084, 35.376183, 38.360004>,  <30.686209, 35.294201, 38.422005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903084, 35.376183, 38.360004>,  <31.264542, 35.512817, 38.256668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903084, 35.376183, 38.360004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098522, -0.752828, -0.650802,
		0.416793, -0.562643, 0.713944,
		-0.903646, -0.341589, 0.258341,
		30.631990, 35.273705, 38.437508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226940, 34.790054, 38.278549>,  <31.264542, 35.512817, 38.256668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226940, 34.790054, 38.278549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834328, 34.864689, 38.261650>,  <30.598761, 34.909470, 38.251511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834328, 34.864689, 38.261650>,  <31.226940, 34.790054, 38.278549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834328, 34.864689, 38.261650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098692, -0.683040, -0.723682,
		-0.163883, -0.706147, 0.688839,
		-0.981531, 0.186582, -0.042248,
		30.539869, 34.920662, 38.248974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959044, 34.042011, 38.147835>,  <31.226940, 34.790054, 38.278549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959044, 34.042011, 38.147835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691822, 34.319614, 38.040462>,  <30.531490, 34.486176, 37.976040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691822, 34.319614, 38.040462>,  <30.959044, 34.042011, 38.147835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691822, 34.319614, 38.040462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228454, -0.534607, -0.813636,
		-0.708179, -0.482226, 0.515695,
		-0.668051, 0.694012, -0.268431,
		30.491407, 34.527817, 37.959934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388210, 33.684647, 37.953842>,  <30.959044, 34.042011, 38.147835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388210, 33.684647, 37.953842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381681, 34.031891, 37.755402>,  <30.377764, 34.240238, 37.636337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381681, 34.031891, 37.755402>,  <30.388210, 33.684647, 37.953842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381681, 34.031891, 37.755402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174036, -0.491060, -0.853564,
		-0.984604, 0.072409, 0.159097,
		-0.016321, 0.868111, -0.496101,
		30.376785, 34.292324, 37.606571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499741, 32.919315, 37.984623>,  <30.388210, 33.684647, 37.953842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499741, 32.919315, 37.984623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693773, 32.569618, 37.992607>,  <30.810192, 32.359802, 37.997398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693773, 32.569618, 37.992607>,  <30.499741, 32.919315, 37.984623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693773, 32.569618, 37.992607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183104, -0.079229, 0.979896,
		-0.855084, -0.478983, -0.198510,
		0.485081, -0.874241, 0.019956,
		30.839298, 32.307346, 37.998592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010054, 32.374020, 38.364468>,  <30.499741, 32.919315, 37.984623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010054, 32.374020, 38.364468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396456, 32.271507, 38.378063>,  <30.628298, 32.209999, 38.386219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396456, 32.271507, 38.378063>,  <30.010054, 32.374020, 38.364468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396456, 32.271507, 38.378063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072087, -0.140771, 0.987414,
		-0.248269, -0.956297, -0.154459,
		0.966005, -0.256279, 0.033987,
		30.686256, 32.194622, 38.388260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915686, 31.937023, 38.888889>,  <30.010054, 32.374020, 38.364468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915686, 31.937023, 38.888889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300505, 32.028015, 38.828594>,  <30.531395, 32.082611, 38.792416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300505, 32.028015, 38.828594>,  <29.915686, 31.937023, 38.888889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300505, 32.028015, 38.828594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148511, 0.026973, 0.988543,
		0.228938, -0.973409, -0.007834,
		0.962046, 0.227478, -0.150737,
		30.589119, 32.096260, 38.783375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057570, 31.646164, 39.462498>,  <29.915686, 31.937023, 38.888889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057570, 31.646164, 39.462498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393890, 31.850245, 39.390114>,  <30.595682, 31.972692, 39.346684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.393890, 31.850245, 39.390114>,  <30.057570, 31.646164, 39.462498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393890, 31.850245, 39.390114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086690, 0.203063, 0.975321,
		0.534358, -0.835738, 0.126506,
		0.840801, 0.510204, -0.180958,
		30.646132, 32.003307, 39.335827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530701, 31.451725, 39.993801>,  <30.057570, 31.646164, 39.462498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530701, 31.451725, 39.993801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680197, 31.793037, 39.848347>,  <30.769896, 31.997826, 39.761074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.680197, 31.793037, 39.848347>,  <30.530701, 31.451725, 39.993801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680197, 31.793037, 39.848347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312774, 0.253139, 0.915474,
		0.873207, -0.455885, -0.172276,
		0.373741, 0.853282, -0.363631,
		30.792318, 32.049023, 39.739258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233385, 31.462473, 40.243176>,  <30.530701, 31.451725, 39.993801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233385, 31.462473, 40.243176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082268, 31.825148, 40.168137>,  <30.991596, 32.042751, 40.123116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.082268, 31.825148, 40.168137>,  <31.233385, 31.462473, 40.243176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082268, 31.825148, 40.168137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310214, 0.314853, 0.897014,
		0.872375, 0.280693, -0.400216,
		-0.377795, 0.906686, -0.187595,
		30.968929, 32.097153, 40.111858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710907, 31.914070, 40.663017>,  <31.233385, 31.462473, 40.243176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710907, 31.914070, 40.663017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393705, 32.144966, 40.585106>,  <31.203384, 32.283504, 40.538361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.393705, 32.144966, 40.585106>,  <31.710907, 31.914070, 40.663017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.393705, 32.144966, 40.585106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232281, 0.582050, 0.779271,
		0.563195, 0.572723, -0.595650,
		-0.793005, 0.577240, -0.194775,
		31.155804, 32.318138, 40.526672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926987, 32.599766, 40.858719>,  <31.710907, 31.914070, 40.663017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926987, 32.599766, 40.858719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529579, 32.642544, 40.843315>,  <31.291134, 32.668213, 40.834072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.529579, 32.642544, 40.843315>,  <31.926987, 32.599766, 40.858719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529579, 32.642544, 40.843315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030712, 0.578744, 0.814931,
		0.109443, 0.808466, -0.578277,
		-0.993519, 0.106948, -0.038510,
		31.231524, 32.674629, 40.831760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777184, 33.291878, 40.867867>,  <31.926987, 32.599766, 40.858719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777184, 33.291878, 40.867867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442574, 33.116146, 40.998837>,  <31.241808, 33.010708, 41.077419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442574, 33.116146, 40.998837>,  <31.777184, 33.291878, 40.867867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442574, 33.116146, 40.998837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096410, 0.706274, 0.701343,
		-0.539378, 0.555125, -0.633173,
		-0.836526, -0.439334, 0.327429,
		31.191616, 32.984344, 41.097065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391102, 33.844952, 40.974907>,  <31.777184, 33.291878, 40.867867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391102, 33.844952, 40.974907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201548, 33.552193, 41.170765>,  <31.087816, 33.376537, 41.288280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201548, 33.552193, 41.170765>,  <31.391102, 33.844952, 40.974907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201548, 33.552193, 41.170765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029496, 0.568928, 0.821858,
		-0.880093, 0.375023, -0.291194,
		-0.473884, -0.731901, 0.489648,
		31.059381, 33.332623, 41.317657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809744, 34.160263, 41.320351>,  <31.391102, 33.844952, 40.974907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809744, 34.160263, 41.320351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921896, 33.830685, 41.517326>,  <30.989187, 33.632938, 41.635513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.921896, 33.830685, 41.517326>,  <30.809744, 34.160263, 41.320351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921896, 33.830685, 41.517326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028600, 0.519960, 0.853712,
		-0.959463, -0.225279, 0.169351,
		0.280379, -0.823949, 0.492439,
		31.006010, 33.583500, 41.665058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433489, 34.114445, 41.976398>,  <30.809744, 34.160263, 41.320351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433489, 34.114445, 41.976398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740860, 33.867649, 42.044338>,  <30.925283, 33.719574, 42.085102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740860, 33.867649, 42.044338>,  <30.433489, 34.114445, 41.976398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740860, 33.867649, 42.044338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064311, 0.338523, 0.938758,
		-0.636696, -0.710445, 0.299809,
		0.768428, -0.616985, 0.169847,
		30.971388, 33.682552, 42.095291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284033, 33.825466, 42.658718>,  <30.433489, 34.114445, 41.976398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284033, 33.825466, 42.658718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674131, 33.751801, 42.609772>,  <30.908192, 33.707600, 42.580402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674131, 33.751801, 42.609772>,  <30.284033, 33.825466, 42.658718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674131, 33.751801, 42.609772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171682, 0.281929, 0.943950,
		-0.139342, -0.941594, 0.306569,
		0.975248, -0.184164, -0.122371,
		30.966705, 33.696552, 42.573059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332817, 33.500427, 43.258465>,  <30.284033, 33.825466, 42.658718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332817, 33.500427, 43.258465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714327, 33.564312, 43.156635>,  <30.943232, 33.602642, 43.095539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714327, 33.564312, 43.156635>,  <30.332817, 33.500427, 43.258465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714327, 33.564312, 43.156635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238672, 0.112205, 0.964596,
		0.182628, -0.980765, 0.068898,
		0.953773, 0.159719, -0.254573,
		31.000460, 33.612225, 43.080265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715254, 33.134514, 43.694859>,  <30.332817, 33.500427, 43.258465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715254, 33.134514, 43.694859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003656, 33.367199, 43.544254>,  <31.176697, 33.506809, 43.453892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003656, 33.367199, 43.544254>,  <30.715254, 33.134514, 43.694859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003656, 33.367199, 43.544254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532122, -0.116773, 0.838576,
		0.443844, -0.804969, -0.393736,
		0.721005, 0.581713, -0.376513,
		31.219957, 33.541714, 43.431301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495762, 32.788982, 43.761295>,  <30.715254, 33.134514, 43.694859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495762, 32.788982, 43.761295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512081, 33.186546, 43.720345>,  <31.521873, 33.425083, 43.695774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512081, 33.186546, 43.720345>,  <31.495762, 32.788982, 43.761295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512081, 33.186546, 43.720345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613089, 0.056000, 0.788026,
		0.788959, -0.094915, -0.607070,
		0.040800, 0.993909, -0.102373,
		31.524321, 33.484718, 43.689632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172218, 32.907261, 43.716236>,  <31.495762, 32.788982, 43.761295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172218, 32.907261, 43.716236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002262, 33.254005, 43.820553>,  <31.900288, 33.462051, 43.883144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002262, 33.254005, 43.820553>,  <32.172218, 32.907261, 43.716236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002262, 33.254005, 43.820553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587667, 0.045007, 0.807850,
		0.688560, 0.496506, -0.528551,
		-0.424891, 0.866866, 0.260790,
		31.874794, 33.514065, 43.898788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762466, 33.328979, 43.758892>,  <32.172218, 32.907261, 43.716236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762466, 33.328979, 43.758892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466892, 33.470570, 43.988216>,  <32.289547, 33.555523, 44.125809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466892, 33.470570, 43.988216>,  <32.762466, 33.328979, 43.758892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466892, 33.470570, 43.988216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572942, -0.117660, 0.811106,
		0.354564, 0.927826, -0.115862,
		-0.738933, 0.353971, 0.573308,
		32.245213, 33.576759, 44.160210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174026, 33.718552, 44.191944>,  <32.762466, 33.328979, 43.758892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174026, 33.718552, 44.191944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816174, 33.731823, 44.370171>,  <32.601463, 33.739784, 44.477108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816174, 33.731823, 44.370171>,  <33.174026, 33.718552, 44.191944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816174, 33.731823, 44.370171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436988, -0.142921, 0.888040,
		0.093141, 0.989178, 0.113365,
		-0.894632, 0.033174, 0.445571,
		32.547783, 33.741776, 44.503841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173683, 34.207699, 44.769810>,  <33.174026, 33.718552, 44.191944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173683, 34.207699, 44.769810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872078, 33.953678, 44.836941>,  <32.691113, 33.801266, 44.877220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872078, 33.953678, 44.836941>,  <33.173683, 34.207699, 44.769810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872078, 33.953678, 44.836941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299526, -0.105026, 0.948290,
		-0.584587, 0.765297, 0.269406,
		-0.754018, -0.635051, 0.167830,
		32.645874, 33.763165, 44.887291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902699, 34.456375, 45.334705>,  <33.173683, 34.207699, 44.769810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902699, 34.456375, 45.334705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772285, 34.079208, 45.307556>,  <32.694038, 33.852909, 45.291267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772285, 34.079208, 45.307556>,  <32.902699, 34.456375, 45.334705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772285, 34.079208, 45.307556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199180, -0.138700, 0.970098,
		-0.924137, 0.302765, 0.233032,
		-0.326033, -0.942919, -0.067874,
		32.674477, 33.796333, 45.287193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441055, 34.468571, 45.847012>,  <32.902699, 34.456375, 45.334705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441055, 34.468571, 45.847012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561668, 34.092125, 45.785835>,  <32.634037, 33.866257, 45.749130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561668, 34.092125, 45.785835>,  <32.441055, 34.468571, 45.847012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561668, 34.092125, 45.785835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005053, -0.158822, 0.987294,
		-0.953444, -0.298470, -0.043134,
		0.301528, -0.941111, -0.152936,
		32.652126, 33.809792, 45.739956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946224, 34.009880, 46.266476>,  <32.441055, 34.468571, 45.847012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946224, 34.009880, 46.266476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279221, 33.805756, 46.180183>,  <32.479019, 33.683281, 46.128410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279221, 33.805756, 46.180183>,  <31.946224, 34.009880, 46.266476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279221, 33.805756, 46.180183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087865, -0.506052, 0.858016,
		-0.547032, -0.695333, -0.466121,
		0.832488, -0.510318, -0.215731,
		32.528969, 33.652660, 46.115463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769594, 33.303471, 46.510036>,  <31.946224, 34.009880, 46.266476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769594, 33.303471, 46.510036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166874, 33.336960, 46.477665>,  <32.405243, 33.357052, 46.458244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166874, 33.336960, 46.477665>,  <31.769594, 33.303471, 46.510036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166874, 33.336960, 46.477665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105859, -0.359780, 0.927013,
		0.048494, -0.929273, -0.366195,
		0.993198, 0.083720, -0.080925,
		32.464832, 33.362076, 46.453388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052589, 32.723606, 46.753319>,  <31.769594, 33.303471, 46.510036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052589, 32.723606, 46.753319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351154, 32.988358, 46.780979>,  <32.530293, 33.147209, 46.797573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351154, 32.988358, 46.780979>,  <32.052589, 32.723606, 46.753319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351154, 32.988358, 46.780979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054129, -0.163943, 0.984984,
		0.663280, -0.731460, -0.158196,
		0.746411, 0.661883, 0.069146,
		32.575077, 33.186924, 46.801723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601223, 32.331997, 47.179432>,  <32.052589, 32.723606, 46.753319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601223, 32.331997, 47.179432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670635, 32.723446, 47.223591>,  <32.712284, 32.958313, 47.250088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670635, 32.723446, 47.223591>,  <32.601223, 32.331997, 47.179432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670635, 32.723446, 47.223591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315780, -0.161475, 0.934991,
		0.932828, -0.127391, -0.337050,
		0.173534, 0.978620, 0.110401,
		32.722694, 33.017033, 47.256710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269596, 32.437183, 47.551075>,  <32.601223, 32.331997, 47.179432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269596, 32.437183, 47.551075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088104, 32.791710, 47.588104>,  <32.979210, 33.004425, 47.610321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088104, 32.791710, 47.588104>,  <33.269596, 32.437183, 47.551075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088104, 32.791710, 47.588104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362945, 0.088916, 0.927559,
		0.813879, 0.454462, -0.362028,
		-0.453730, 0.886317, 0.092578,
		32.951984, 33.057606, 47.615879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739662, 32.955196, 47.873756>,  <33.269596, 32.437183, 47.551075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739662, 32.955196, 47.873756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369976, 33.072857, 47.971169>,  <33.148167, 33.143452, 48.029613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369976, 33.072857, 47.971169>,  <33.739662, 32.955196, 47.873756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369976, 33.072857, 47.971169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326840, 0.279491, 0.902807,
		0.197499, 0.913980, -0.354449,
		-0.924213, 0.294152, 0.243526,
		33.092712, 33.161102, 48.044228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401264, 33.212822, 47.812607>,  <33.739662, 32.955196, 47.873756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401264, 33.212822, 47.812607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729156, 33.041279, 47.964466>,  <34.925892, 32.938354, 48.055580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729156, 33.041279, 47.964466>,  <34.401264, 33.212822, 47.812607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729156, 33.041279, 47.964466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295796, -0.250624, -0.921788,
		0.490461, 0.867912, -0.078590,
		0.819728, -0.428854, 0.379646,
		34.975075, 32.912624, 48.078362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860710, 33.374229, 47.397942>,  <34.401264, 33.212822, 47.812607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860710, 33.374229, 47.397942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030415, 33.058338, 47.575176>,  <35.132236, 32.868801, 47.681519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030415, 33.058338, 47.575176>,  <34.860710, 33.374229, 47.397942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030415, 33.058338, 47.575176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213846, -0.388094, -0.896467,
		0.879929, 0.475087, 0.004229,
		0.424259, -0.789731, 0.443091,
		35.157692, 32.821419, 47.708103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631214, 33.281483, 47.161152>,  <34.860710, 33.374229, 47.397942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631214, 33.281483, 47.161152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515926, 32.927986, 47.308628>,  <35.446754, 32.715889, 47.397114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515926, 32.927986, 47.308628>,  <35.631214, 33.281483, 47.161152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515926, 32.927986, 47.308628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132326, -0.418096, -0.898713,
		0.948377, -0.210240, 0.237446,
		-0.288220, -0.883739, 0.368692,
		35.429459, 32.662865, 47.419235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184139, 32.781834, 47.062218>,  <35.631214, 33.281483, 47.161152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184139, 32.781834, 47.062218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859615, 32.557827, 47.129341>,  <35.664902, 32.423424, 47.169617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859615, 32.557827, 47.129341>,  <36.184139, 32.781834, 47.062218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859615, 32.557827, 47.129341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157751, -0.486097, -0.859549,
		0.562936, -0.670886, 0.482717,
		-0.811306, -0.560021, 0.167808,
		35.616222, 32.389820, 47.179684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382027, 32.228924, 46.712372>,  <36.184139, 32.781834, 47.062218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382027, 32.228924, 46.712372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990635, 32.168774, 46.768902>,  <35.755802, 32.132683, 46.802818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990635, 32.168774, 46.768902>,  <36.382027, 32.228924, 46.712372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990635, 32.168774, 46.768902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066762, -0.417324, -0.906302,
		0.195266, -0.896229, 0.398302,
		-0.978475, -0.150379, 0.141323,
		35.697094, 32.123661, 46.811298>
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
