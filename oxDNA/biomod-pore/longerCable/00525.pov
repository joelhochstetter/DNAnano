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
	<23.957947, 34.893436, 35.044102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.348154, 34.980183, 35.029484>,  <24.582277, 35.032230, 35.020714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.348154, 34.980183, 35.029484>,  <23.957947, 34.893436, 35.044102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.348154, 34.980183, 35.029484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035631, 0.319835, 0.946803,
		0.217019, -0.922320, 0.319732,
		0.975516, 0.216866, -0.036547,
		24.640808, 35.045242, 35.018520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.171246, 34.909081, 35.810764>,  <23.957947, 34.893436, 35.044102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.171246, 34.909081, 35.810764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.520781, 34.988937, 35.633427>,  <24.730501, 35.036850, 35.527023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.520781, 34.988937, 35.633427>,  <24.171246, 34.909081, 35.810764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.520781, 34.988937, 35.633427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407827, 0.195528, 0.891878,
		0.264745, -0.960162, 0.089438,
		0.873835, 0.199645, -0.443345,
		24.782932, 35.048828, 35.500423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.759665, 34.606308, 36.186428>,  <24.171246, 34.909081, 35.810764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.759665, 34.606308, 36.186428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.892012, 34.919926, 35.976360>,  <24.971420, 35.108097, 35.850319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.892012, 34.919926, 35.976360>,  <24.759665, 34.606308, 36.186428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.892012, 34.919926, 35.976360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445942, 0.360552, 0.819230,
		0.831663, -0.505251, -0.230344,
		0.330865, 0.784043, -0.525171,
		24.991272, 35.155140, 35.818810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.375769, 34.715500, 36.389801>,  <24.759665, 34.606308, 36.186428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.375769, 34.715500, 36.389801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.289234, 35.065609, 36.216778>,  <25.237312, 35.275673, 36.112965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.289234, 35.065609, 36.216778>,  <25.375769, 34.715500, 36.389801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.289234, 35.065609, 36.216778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439745, 0.482916, 0.757243,
		0.871678, -0.026393, -0.489368,
		-0.216338, 0.875269, -0.432554,
		25.224333, 35.328190, 36.087013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.028616, 35.052006, 36.285801>,  <25.375769, 34.715500, 36.389801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.028616, 35.052006, 36.285801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749287, 35.335125, 36.328434>,  <25.581690, 35.504997, 36.354015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.749287, 35.335125, 36.328434>,  <26.028616, 35.052006, 36.285801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.749287, 35.335125, 36.328434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555310, 0.441769, 0.704607,
		0.451637, 0.551231, -0.701548,
		-0.698323, 0.707803, 0.106585,
		25.539789, 35.547466, 36.360409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.291956, 35.702740, 36.124470>,  <26.028616, 35.052006, 36.285801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.291956, 35.702740, 36.124470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.010786, 35.742764, 36.406147>,  <25.842085, 35.766777, 36.575153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.010786, 35.742764, 36.406147>,  <26.291956, 35.702740, 36.124470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.010786, 35.742764, 36.406147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665906, 0.440476, 0.602122,
		-0.249933, 0.892171, -0.376250,
		-0.702925, 0.100057, 0.704191,
		25.799908, 35.772781, 36.617405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.974331, 36.380123, 36.454704>,  <26.291956, 35.702740, 36.124470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.974331, 36.380123, 36.454704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906042, 36.144775, 36.770851>,  <25.865068, 36.003567, 36.960537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.906042, 36.144775, 36.770851>,  <25.974331, 36.380123, 36.454704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.906042, 36.144775, 36.770851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590729, 0.580875, 0.560021,
		-0.788602, 0.562500, 0.248398,
		-0.170724, -0.588369, 0.790364,
		25.854824, 35.968266, 37.007961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.724848, 36.794815, 37.031578>,  <25.974331, 36.380123, 36.454704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.724848, 36.794815, 37.031578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923529, 36.475517, 37.167870>,  <26.042738, 36.283939, 37.249645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.923529, 36.475517, 37.167870>,  <25.724848, 36.794815, 37.031578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.923529, 36.475517, 37.167870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580154, 0.597351, 0.553708,
		-0.645528, -0.077353, 0.759810,
		0.496704, -0.798240, 0.340730,
		26.072540, 36.236046, 37.270088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.994778, 36.997040, 37.712040>,  <25.724848, 36.794815, 37.031578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.994778, 36.997040, 37.712040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226957, 36.690750, 37.601227>,  <26.366264, 36.506977, 37.534740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226957, 36.690750, 37.601227>,  <25.994778, 36.997040, 37.712040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.226957, 36.690750, 37.601227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780470, 0.426111, 0.457489,
		-0.232263, -0.481765, 0.844959,
		0.580449, -0.765723, -0.277033,
		26.401093, 36.461033, 37.518116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385635, 36.908356, 38.279240>,  <25.994778, 36.997040, 37.712040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385635, 36.908356, 38.279240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589148, 36.717640, 37.992516>,  <26.711254, 36.603210, 37.820480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589148, 36.717640, 37.992516>,  <26.385635, 36.908356, 38.279240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589148, 36.717640, 37.992516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859918, 0.241794, 0.449529,
		-0.041012, -0.845107, 0.533022,
		0.508781, -0.476791, -0.716807,
		26.741781, 36.574604, 37.777473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.941891, 36.501625, 38.613262>,  <26.385635, 36.908356, 38.279240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.941891, 36.501625, 38.613262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.087740, 36.566803, 38.246548>,  <27.175249, 36.605911, 38.026520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.087740, 36.566803, 38.246548>,  <26.941891, 36.501625, 38.613262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.087740, 36.566803, 38.246548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926316, 0.036770, 0.374949,
		0.094806, -0.985950, -0.137531,
		0.364624, 0.162945, -0.916787,
		27.197126, 36.615685, 37.971512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559984, 36.043976, 38.576958>,  <26.941891, 36.501625, 38.613262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559984, 36.043976, 38.576958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578382, 36.357922, 38.329773>,  <27.589422, 36.546288, 38.181461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578382, 36.357922, 38.329773>,  <27.559984, 36.043976, 38.576958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578382, 36.357922, 38.329773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982322, 0.076836, 0.170706,
		0.181462, -0.614889, -0.767452,
		0.045997, 0.784862, -0.617962,
		27.592182, 36.593380, 38.144386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.981407, 35.856655, 38.028980>,  <27.559984, 36.043976, 38.576958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.981407, 35.856655, 38.028980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982307, 36.236317, 38.154900>,  <27.982847, 36.464115, 38.230450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.982307, 36.236317, 38.154900>,  <27.981407, 35.856655, 38.028980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.982307, 36.236317, 38.154900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994531, 0.030746, -0.099811,
		-0.104415, 0.313300, -0.943896,
		0.002250, 0.949156, 0.314797,
		27.982983, 36.521065, 38.249340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.459827, 36.253513, 37.536465>,  <27.981407, 35.856655, 38.028980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.459827, 36.253513, 37.536465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430231, 36.416580, 37.900517>,  <28.412474, 36.514420, 38.118946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430231, 36.416580, 37.900517>,  <28.459827, 36.253513, 37.536465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430231, 36.416580, 37.900517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981492, 0.191409, -0.005942,
		-0.176629, 0.892845, -0.414282,
		-0.073991, 0.407664, 0.910129,
		28.408033, 36.538879, 38.173553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.685963, 36.901306, 37.208195>,  <28.459827, 36.253513, 37.536465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.685963, 36.901306, 37.208195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864986, 36.836021, 36.856503>,  <28.972401, 36.796852, 36.645485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.864986, 36.836021, 36.856503>,  <28.685963, 36.901306, 37.208195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.864986, 36.836021, 36.856503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893981, 0.057356, 0.444419,
		-0.022106, -0.984922, 0.171580,
		0.447559, -0.163213, -0.879234,
		28.999254, 36.787056, 36.592731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021032, 37.247616, 37.121422>,  <28.685963, 36.901306, 37.208195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021032, 37.247616, 37.121422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899202, 36.951996, 37.361767>,  <27.826105, 36.774624, 37.505974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899202, 36.951996, 37.361767>,  <28.021032, 37.247616, 37.121422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899202, 36.951996, 37.361767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885782, -0.012149, -0.463942,
		0.350177, -0.673539, -0.650938,
		-0.304575, -0.739051, 0.600863,
		27.807829, 36.730282, 37.542027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717916, 36.698456, 36.802422>,  <28.021032, 37.247616, 37.121422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717916, 36.698456, 36.802422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543224, 36.675652, 37.161533>,  <27.438410, 36.661968, 37.377003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543224, 36.675652, 37.161533>,  <27.717916, 36.698456, 36.802422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543224, 36.675652, 37.161533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796603, -0.439166, -0.415400,
		0.417959, -0.896595, 0.146380,
		-0.436731, -0.057014, 0.897784,
		27.412205, 36.658546, 37.430870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475973, 36.042938, 36.855488>,  <27.717916, 36.698456, 36.802422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475973, 36.042938, 36.855488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247700, 36.203953, 37.141785>,  <27.110737, 36.300560, 37.313564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247700, 36.203953, 37.141785>,  <27.475973, 36.042938, 36.855488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.247700, 36.203953, 37.141785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700907, -0.692902, -0.169162,
		0.427845, -0.598206, 0.677568,
		-0.570682, 0.402537, 0.715741,
		27.076494, 36.324715, 37.356506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100618, 35.482441, 37.030151>,  <27.475973, 36.042938, 36.855488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.100618, 35.482441, 37.030151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.884550, 35.774075, 37.198269>,  <26.754910, 35.949055, 37.299141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.884550, 35.774075, 37.198269>,  <27.100618, 35.482441, 37.030151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.884550, 35.774075, 37.198269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827336, -0.551493, -0.106631,
		0.154049, -0.405327, 0.901099,
		-0.540170, 0.729085, 0.420298,
		26.722500, 35.992802, 37.324360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.762037, 35.166679, 37.650726>,  <27.100618, 35.482441, 37.030151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.762037, 35.166679, 37.650726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546299, 35.485355, 37.541622>,  <26.416857, 35.676559, 37.476158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546299, 35.485355, 37.541622>,  <26.762037, 35.166679, 37.650726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.546299, 35.485355, 37.541622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773154, -0.596848, -0.214487,
		-0.333676, 0.095204, 0.937868,
		-0.539345, 0.796686, -0.272762,
		26.384495, 35.724361, 37.459793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.156626, 35.188354, 37.969864>,  <26.762037, 35.166679, 37.650726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.156626, 35.188354, 37.969864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.069014, 35.385025, 37.632751>,  <26.016445, 35.503029, 37.430485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.069014, 35.385025, 37.632751>,  <26.156626, 35.188354, 37.969864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.069014, 35.385025, 37.632751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776694, -0.610660, -0.154403,
		-0.590568, 0.620762, 0.515639,
		-0.219033, 0.491680, -0.842779,
		26.003304, 35.532528, 37.379917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.437738, 35.480133, 37.956211>,  <26.156626, 35.188354, 37.969864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.437738, 35.480133, 37.956211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563917, 35.438732, 37.578899>,  <25.639624, 35.413891, 37.352512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563917, 35.438732, 37.578899>,  <25.437738, 35.480133, 37.956211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.563917, 35.438732, 37.578899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866876, -0.435803, -0.242075,
		-0.386029, 0.894071, -0.227199,
		0.315447, -0.103505, -0.943282,
		25.658550, 35.407681, 37.295914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.985985, 36.000278, 37.555264>,  <25.437738, 35.480133, 37.956211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.985985, 36.000278, 37.555264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.224977, 36.159893, 37.277046>,  <25.368374, 36.255661, 37.110115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.224977, 36.159893, 37.277046>,  <24.985985, 36.000278, 37.555264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.224977, 36.159893, 37.277046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527213, -0.458087, -0.715684,
		-0.604203, 0.794310, -0.063323,
		0.597483, 0.399033, -0.695548,
		25.404222, 36.279602, 37.068382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.653908, 36.324638, 36.978703>,  <24.985985, 36.000278, 37.555264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.653908, 36.324638, 36.978703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.004333, 36.221626, 36.815636>,  <25.214588, 36.159821, 36.717796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.004333, 36.221626, 36.815636>,  <24.653908, 36.324638, 36.978703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.004333, 36.221626, 36.815636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472334, -0.288224, -0.832963,
		0.097012, 0.922283, -0.374142,
		0.876065, -0.257528, -0.407664,
		25.267153, 36.144367, 36.693336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.638050, 36.508541, 36.249893>,  <24.653908, 36.324638, 36.978703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.638050, 36.508541, 36.249893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920675, 36.228642, 36.292088>,  <25.090250, 36.060703, 36.317406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920675, 36.228642, 36.292088>,  <24.638050, 36.508541, 36.249893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.920675, 36.228642, 36.292088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231575, -0.369498, -0.899914,
		0.668688, 0.611416, -0.423116,
		0.706562, -0.699745, 0.105490,
		25.132645, 36.018719, 36.323734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.948534, 36.505241, 35.656036>,  <24.638050, 36.508541, 36.249893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.948534, 36.505241, 35.656036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.062481, 36.142590, 35.780537>,  <25.130850, 35.924999, 35.855236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.062481, 36.142590, 35.780537>,  <24.948534, 36.505241, 35.656036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.062481, 36.142590, 35.780537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211606, -0.376174, -0.902062,
		0.934919, 0.191106, -0.299008,
		0.284868, -0.906626, 0.311253,
		25.147942, 35.870602, 35.873913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.294861, 36.182129, 35.031906>,  <24.948534, 36.505241, 35.656036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.294861, 36.182129, 35.031906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216164, 35.877010, 35.278301>,  <25.168945, 35.693939, 35.426140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216164, 35.877010, 35.278301>,  <25.294861, 36.182129, 35.031906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.216164, 35.877010, 35.278301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002054, -0.627944, -0.778255,
		0.980453, -0.154381, 0.121977,
		-0.196742, -0.762793, 0.615987,
		25.157141, 35.648174, 35.463097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.835245, 35.612679, 34.943569>,  <25.294861, 36.182129, 35.031906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.835245, 35.612679, 34.943569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484922, 35.476673, 35.080597>,  <25.274729, 35.395069, 35.162815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484922, 35.476673, 35.080597>,  <25.835245, 35.612679, 34.943569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.484922, 35.476673, 35.080597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142845, -0.495362, -0.856862,
		0.461040, -0.799379, 0.385272,
		-0.875807, -0.340013, 0.342569,
		25.222179, 35.374668, 35.183369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.315907, 35.173313, 34.552582>,  <25.835245, 35.612679, 34.943569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.315907, 35.173313, 34.552582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515551, 34.995792, 34.254875>,  <26.635338, 34.889282, 34.076252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.515551, 34.995792, 34.254875>,  <26.315907, 35.173313, 34.552582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.515551, 34.995792, 34.254875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004201, 0.860124, -0.510068,
		0.866528, 0.251453, 0.431162,
		0.499111, -0.443799, -0.744265,
		26.665283, 34.862652, 34.031597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.919724, 35.549095, 34.422455>,  <26.315907, 35.173313, 34.552582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.919724, 35.549095, 34.422455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804438, 35.359104, 34.089870>,  <26.735266, 35.245110, 33.890320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.804438, 35.359104, 34.089870>,  <26.919724, 35.549095, 34.422455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.804438, 35.359104, 34.089870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030610, 0.863295, -0.503772,
		0.957077, -0.170645, -0.234274,
		-0.288214, -0.474977, -0.831463,
		26.717974, 35.216610, 33.840431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448383, 35.777874, 33.853691>,  <26.919724, 35.549095, 34.422455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448383, 35.777874, 33.853691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.093689, 35.683319, 33.694786>,  <26.880873, 35.626587, 33.599442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.093689, 35.683319, 33.694786>,  <27.448383, 35.777874, 33.853691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.093689, 35.683319, 33.694786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037483, 0.893305, -0.447886,
		0.460753, -0.382266, -0.800987,
		-0.886736, -0.236388, -0.397265,
		26.827667, 35.612404, 33.575607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452028, 36.100300, 33.209171>,  <27.448383, 35.777874, 33.853691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452028, 36.100300, 33.209171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062799, 36.035938, 33.275185>,  <26.829262, 35.997322, 33.314793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062799, 36.035938, 33.275185>,  <27.452028, 36.100300, 33.209171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062799, 36.035938, 33.275185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219152, 0.867727, -0.446118,
		-0.071423, -0.470274, -0.879626,
		-0.973073, -0.160909, 0.165037,
		26.770878, 35.987667, 33.324696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192240, 36.470188, 32.643162>,  <27.452028, 36.100300, 33.209171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192240, 36.470188, 32.643162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878820, 36.402676, 32.882347>,  <26.690769, 36.362167, 33.025860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.878820, 36.402676, 32.882347>,  <27.192240, 36.470188, 32.643162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.878820, 36.402676, 32.882347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534227, 0.674420, -0.509665,
		-0.317256, -0.718797, -0.618611,
		-0.783550, -0.168784, 0.597965,
		26.643755, 36.352039, 33.061737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.599136, 36.491711, 32.205112>,  <27.192240, 36.470188, 32.643162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.599136, 36.491711, 32.205112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443085, 36.559273, 32.567165>,  <26.349455, 36.599808, 32.784397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443085, 36.559273, 32.567165>,  <26.599136, 36.491711, 32.205112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443085, 36.559273, 32.567165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611512, 0.687395, -0.391842,
		-0.688370, -0.706370, -0.164885,
		-0.390127, 0.168904, 0.905137,
		26.326046, 36.609943, 32.838707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.961187, 36.450245, 32.399384>,  <26.599136, 36.491711, 32.205112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.961187, 36.450245, 32.399384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.829079, 36.436474, 32.776688>,  <25.749813, 36.428211, 33.003071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.829079, 36.436474, 32.776688>,  <25.961187, 36.450245, 32.399384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.829079, 36.436474, 32.776688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589873, 0.787681, -0.177785,
		-0.736865, -0.615120, -0.280460,
		-0.330272, -0.034432, 0.943258,
		25.729998, 36.426144, 33.059666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.234690, 36.432449, 32.365723>,  <25.961187, 36.450245, 32.399384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.234690, 36.432449, 32.365723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340269, 36.592087, 32.716961>,  <25.403616, 36.687870, 32.927704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340269, 36.592087, 32.716961>,  <25.234690, 36.432449, 32.365723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.340269, 36.592087, 32.716961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561786, 0.803636, -0.196382,
		-0.784046, -0.441469, 0.436321,
		0.263947, 0.399092, 0.878099,
		25.419453, 36.711815, 32.980392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.654966, 36.571133, 32.818504>,  <25.234690, 36.432449, 32.365723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.654966, 36.571133, 32.818504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.939806, 36.826191, 32.936028>,  <25.110710, 36.979225, 33.006542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.939806, 36.826191, 32.936028>,  <24.654966, 36.571133, 32.818504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.939806, 36.826191, 32.936028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661493, 0.749581, -0.023546,
		-0.235246, -0.177584, 0.955575,
		0.712100, 0.637646, 0.293806,
		25.153437, 37.017483, 33.024170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.504473, 36.847588, 33.458691>,  <24.654966, 36.571133, 32.818504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.504473, 36.847588, 33.458691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.759760, 37.097893, 33.279316>,  <24.912931, 37.248077, 33.171692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.759760, 37.097893, 33.279316>,  <24.504473, 36.847588, 33.458691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.759760, 37.097893, 33.279316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746331, 0.645813, -0.160984,
		0.188868, 0.437425, 0.879197,
		0.638216, 0.625767, -0.448437,
		24.951225, 37.285622, 33.144783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.527920, 37.561005, 33.873940>,  <24.504473, 36.847588, 33.458691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.527920, 37.561005, 33.873940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.622412, 37.564964, 33.485279>,  <24.679108, 37.567341, 33.252083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.622412, 37.564964, 33.485279>,  <24.527920, 37.561005, 33.873940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.622412, 37.564964, 33.485279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801660, 0.567075, -0.189123,
		0.549123, 0.823607, 0.141900,
		0.236231, 0.009904, -0.971646,
		24.693281, 37.567936, 33.193787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.728291, 38.273388, 33.739433>,  <24.527920, 37.561005, 33.873940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.728291, 38.273388, 33.739433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.602837, 38.072937, 33.416817>,  <24.527565, 37.952667, 33.223248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.602837, 38.072937, 33.416817>,  <24.728291, 38.273388, 33.739433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.602837, 38.072937, 33.416817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430799, 0.832045, -0.349449,
		0.846197, 0.237862, -0.476835,
		-0.313628, -0.501122, -0.806544,
		24.508747, 37.922600, 33.174854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.945421, 38.555309, 32.952244>,  <24.728291, 38.273388, 33.739433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.945421, 38.555309, 32.952244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.574509, 38.406116, 32.965122>,  <24.351961, 38.316601, 32.972851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.574509, 38.406116, 32.965122>,  <24.945421, 38.555309, 32.952244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.574509, 38.406116, 32.965122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366964, 0.888547, -0.275358,
		0.074094, -0.267150, -0.960802,
		-0.927280, -0.372983, 0.032199,
		24.296326, 38.294220, 32.974781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.259960, 38.686527, 32.289654>,  <24.945421, 38.555309, 32.952244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.259960, 38.686527, 32.289654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.869501, 38.680676, 32.376301>,  <24.635225, 38.677162, 32.428291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.869501, 38.680676, 32.376301>,  <25.259960, 38.686527, 32.289654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.869501, 38.680676, 32.376301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120868, -0.792194, -0.598181,
		0.180359, -0.610094, 0.771528,
		-0.976146, -0.014634, 0.216620,
		24.576656, 38.676285, 32.441288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.150843, 37.969452, 32.570301>,  <25.259960, 38.686527, 32.289654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.150843, 37.969452, 32.570301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838837, 38.122116, 32.371944>,  <24.651632, 38.213715, 32.252930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838837, 38.122116, 32.371944>,  <25.150843, 37.969452, 32.570301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.838837, 38.122116, 32.371944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007091, -0.797805, -0.602874,
		-0.625718, -0.466735, 0.625008,
		-0.780017, 0.381661, -0.495892,
		24.604832, 38.236614, 32.223175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863028, 38.135872, 32.797165>,  <25.150843, 37.969452, 32.570301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863028, 38.135872, 32.797165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558474, 37.901833, 32.908844>,  <25.375740, 37.761410, 32.975853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558474, 37.901833, 32.908844>,  <25.863028, 38.135872, 32.797165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.558474, 37.901833, 32.908844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642372, -0.738979, 0.203148,
		0.087460, 0.334023, 0.938499,
		-0.761387, -0.585098, 0.279198,
		25.330057, 37.726303, 32.992603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.173908, 37.768135, 33.265427>,  <25.863028, 38.135872, 32.797165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.173908, 37.768135, 33.265427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.854080, 37.544857, 33.176792>,  <25.662184, 37.410889, 33.123611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.854080, 37.544857, 33.176792>,  <26.173908, 37.768135, 33.265427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.854080, 37.544857, 33.176792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495979, -0.821791, 0.280472,
		-0.338659, 0.114354, 0.933934,
		-0.799572, -0.558196, -0.221590,
		25.614208, 37.377399, 33.110313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.940298, 37.435493, 33.827427>,  <26.173908, 37.768135, 33.265427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.940298, 37.435493, 33.827427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.886246, 37.238445, 33.483551>,  <25.853815, 37.120216, 33.277225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.886246, 37.238445, 33.483551>,  <25.940298, 37.435493, 33.827427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.886246, 37.238445, 33.483551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555412, -0.756174, 0.346004,
		-0.820523, -0.430726, 0.375789,
		-0.135129, -0.492622, -0.859688,
		25.845707, 37.090660, 33.225643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.673580, 36.732315, 34.038479>,  <25.940298, 37.435493, 33.827427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.673580, 36.732315, 34.038479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873547, 36.730335, 33.692055>,  <25.993526, 36.729149, 33.484200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.873547, 36.730335, 33.692055>,  <25.673580, 36.732315, 34.038479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.873547, 36.730335, 33.692055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475713, -0.834059, 0.279361,
		-0.723726, -0.551653, -0.414608,
		0.499918, -0.004946, -0.866059,
		26.023521, 36.728851, 33.432236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.479202, 36.154549, 33.690529>,  <25.673580, 36.732315, 34.038479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.479202, 36.154549, 33.690529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.836544, 36.213219, 33.520634>,  <26.050949, 36.248421, 33.418697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.836544, 36.213219, 33.520634>,  <25.479202, 36.154549, 33.690529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.836544, 36.213219, 33.520634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328584, -0.857994, 0.394815,
		-0.306515, -0.492273, -0.814688,
		0.893354, 0.146677, -0.424741,
		26.104549, 36.257221, 33.393211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.594660, 35.555012, 33.478539>,  <25.479202, 36.154549, 33.690529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.594660, 35.555012, 33.478539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960276, 35.709007, 33.427452>,  <26.179646, 35.801407, 33.396801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960276, 35.709007, 33.427452>,  <25.594660, 35.555012, 33.478539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.960276, 35.709007, 33.427452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405458, -0.876149, 0.260704,
		-0.011528, -0.290078, -0.956934,
		0.914041, 0.384991, -0.127715,
		26.234488, 35.824505, 33.389137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882019, 35.171970, 32.884380>,  <25.594660, 35.555012, 33.478539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882019, 35.171970, 32.884380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152151, 35.299160, 33.150558>,  <26.314230, 35.375473, 33.310265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152151, 35.299160, 33.150558>,  <25.882019, 35.171970, 32.884380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.152151, 35.299160, 33.150558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276408, -0.945641, 0.171355,
		0.683762, 0.068215, -0.726509,
		0.675328, 0.317979, 0.665449,
		26.354750, 35.394554, 33.350193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.374767, 34.602226, 32.783241>,  <25.882019, 35.171970, 32.884380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.374767, 34.602226, 32.783241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462751, 34.807945, 33.114811>,  <26.515543, 34.931377, 33.313751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.462751, 34.807945, 33.114811>,  <26.374767, 34.602226, 32.783241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462751, 34.807945, 33.114811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208419, -0.854892, 0.475102,
		0.952984, 0.068259, -0.295233,
		0.219962, 0.514296, 0.828925,
		26.528740, 34.962234, 33.363487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.761049, 34.118504, 33.132648>,  <26.374767, 34.602226, 32.783241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.761049, 34.118504, 33.132648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649534, 34.377964, 33.415924>,  <26.582624, 34.533642, 33.585888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.649534, 34.377964, 33.415924>,  <26.761049, 34.118504, 33.132648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649534, 34.377964, 33.415924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108631, -0.711389, 0.694353,
		0.954188, 0.270509, 0.127864,
		-0.278790, 0.648653, 0.708184,
		26.565897, 34.572559, 33.628380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.267200, 34.190647, 33.694386>,  <26.761049, 34.118504, 33.132648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.267200, 34.190647, 33.694386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892052, 34.261631, 33.813652>,  <26.666962, 34.304222, 33.885212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.892052, 34.261631, 33.813652>,  <27.267200, 34.190647, 33.694386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892052, 34.261631, 33.813652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071551, -0.741936, 0.666642,
		0.339521, 0.646560, 0.683144,
		-0.937873, 0.177460, 0.298165,
		26.610689, 34.314869, 33.903103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258205, 34.400848, 34.367500>,  <27.267200, 34.190647, 33.694386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258205, 34.400848, 34.367500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.955542, 34.171402, 34.242008>,  <26.773943, 34.033733, 34.166714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.955542, 34.171402, 34.242008>,  <27.258205, 34.400848, 34.367500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.955542, 34.171402, 34.242008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117373, -0.591236, 0.797912,
		-0.643186, 0.566924, 0.514692,
		-0.756660, -0.573617, -0.313733,
		26.728544, 33.999317, 34.147888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690916, 34.398525, 34.991734>,  <27.258205, 34.400848, 34.367500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690916, 34.398525, 34.991734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.735880, 34.096676, 34.733150>,  <26.762857, 33.915565, 34.577999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.735880, 34.096676, 34.733150>,  <26.690916, 34.398525, 34.991734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.735880, 34.096676, 34.733150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290149, -0.597304, 0.747691,
		-0.950357, -0.271616, 0.151811,
		0.112408, -0.754621, -0.646461,
		26.769602, 33.870289, 34.539211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.577484, 33.759663, 35.386028>,  <26.690916, 34.398525, 34.991734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.577484, 33.759663, 35.386028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824003, 33.706112, 35.075607>,  <26.971914, 33.673981, 34.889355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824003, 33.706112, 35.075607>,  <26.577484, 33.759663, 35.386028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824003, 33.706112, 35.075607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534772, -0.652245, 0.537211,
		-0.578095, -0.746092, -0.330383,
		0.616299, -0.133880, -0.776049,
		27.008892, 33.665947, 34.842793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709885, 33.046932, 35.263252>,  <26.577484, 33.759663, 35.386028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709885, 33.046932, 35.263252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059881, 33.217228, 35.171047>,  <27.269880, 33.319405, 35.115723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.059881, 33.217228, 35.171047>,  <26.709885, 33.046932, 35.263252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.059881, 33.217228, 35.171047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476593, -0.673730, 0.564754,
		0.085131, -0.604017, -0.792412,
		0.874993, 0.425736, -0.230515,
		27.322378, 33.344948, 35.101894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187925, 32.472057, 35.040016>,  <26.709885, 33.046932, 35.263252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187925, 32.472057, 35.040016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401848, 32.794640, 35.140903>,  <27.530201, 32.988190, 35.201435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.401848, 32.794640, 35.140903>,  <27.187925, 32.472057, 35.040016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.401848, 32.794640, 35.140903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577315, -0.566699, 0.587844,
		0.617000, -0.168775, -0.768652,
		0.534808, 0.806454, 0.252216,
		27.562290, 33.036575, 35.216568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892138, 32.487957, 34.766899>,  <27.187925, 32.472057, 35.040016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892138, 32.487957, 34.766899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888565, 32.704468, 35.103218>,  <27.886421, 32.834373, 35.305008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888565, 32.704468, 35.103218>,  <27.892138, 32.487957, 34.766899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888565, 32.704468, 35.103218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532430, -0.709153, 0.462191,
		0.846427, 0.451792, -0.281860,
		-0.008933, 0.541282, 0.840794,
		27.885885, 32.866852, 35.355457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679193, 32.546417, 34.984009>,  <27.892138, 32.487957, 34.766899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679193, 32.546417, 34.984009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351866, 32.510345, 35.211067>,  <28.155470, 32.488701, 35.347301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.351866, 32.510345, 35.211067>,  <28.679193, 32.546417, 34.984009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351866, 32.510345, 35.211067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323615, -0.888488, 0.325366,
		0.475004, 0.449952, 0.756250,
		-0.818318, -0.090184, 0.567646,
		28.106371, 32.483292, 35.381363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238880, 32.850410, 35.419781>,  <28.679193, 32.546417, 34.984009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238880, 32.850410, 35.419781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613846, 32.928223, 35.535309>,  <29.838825, 32.974911, 35.604626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.613846, 32.928223, 35.535309>,  <29.238880, 32.850410, 35.419781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613846, 32.928223, 35.535309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321632, -0.165816, -0.932233,
		-0.133460, 0.966779, -0.218006,
		0.937412, 0.194533, 0.288817,
		29.895069, 32.986584, 35.621956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596752, 33.485706, 35.069660>,  <29.238880, 32.850410, 35.419781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596752, 33.485706, 35.069660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816536, 33.160049, 35.144775>,  <29.948406, 32.964653, 35.189842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816536, 33.160049, 35.144775>,  <29.596752, 33.485706, 35.069660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816536, 33.160049, 35.144775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189564, -0.097417, -0.977024,
		0.813732, 0.572432, 0.100806,
		0.549460, -0.814144, 0.187784,
		29.981375, 32.915806, 35.201111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240345, 33.413940, 34.647793>,  <29.596752, 33.485706, 35.069660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240345, 33.413940, 34.647793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175554, 33.026623, 34.723869>,  <30.136681, 32.794231, 34.769516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175554, 33.026623, 34.723869>,  <30.240345, 33.413940, 34.647793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175554, 33.026623, 34.723869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008958, -0.191286, -0.981493,
		0.986754, -0.160683, 0.022310,
		-0.161976, -0.968292, 0.190192,
		30.126961, 32.736134, 34.780926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.751534, 33.032665, 34.394505>,  <30.240345, 33.413940, 34.647793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.751534, 33.032665, 34.394505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402609, 32.837200, 34.401207>,  <30.193254, 32.719921, 34.405228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402609, 32.837200, 34.401207>,  <30.751534, 33.032665, 34.394505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402609, 32.837200, 34.401207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099913, -0.211699, -0.972215,
		0.478632, -0.846400, 0.233491,
		-0.872312, -0.488662, 0.016760,
		30.140915, 32.690601, 34.406235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711708, 32.896454, 33.679710>,  <30.751534, 33.032665, 34.394505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711708, 32.896454, 33.679710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397829, 32.713627, 33.847202>,  <30.209501, 32.603931, 33.947697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397829, 32.713627, 33.847202>,  <30.711708, 32.896454, 33.679710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397829, 32.713627, 33.847202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252239, -0.381611, -0.889240,
		0.566235, -0.803407, 0.184160,
		-0.784700, -0.457066, 0.418732,
		30.162418, 32.576508, 33.972820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696758, 32.262371, 33.211296>,  <30.711708, 32.896454, 33.679710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696758, 32.262371, 33.211296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363169, 32.334133, 33.420029>,  <30.163015, 32.377190, 33.545269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363169, 32.334133, 33.420029>,  <30.696758, 32.262371, 33.211296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363169, 32.334133, 33.420029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551762, -0.259189, -0.792704,
		-0.006962, -0.949018, 0.315145,
		-0.833973, 0.179404, 0.521828,
		30.112976, 32.387955, 33.576576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.318975, 31.618599, 33.165649>,  <30.696758, 32.262371, 33.211296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.318975, 31.618599, 33.165649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079975, 31.937597, 33.199097>,  <29.936575, 32.128998, 33.219166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079975, 31.937597, 33.199097>,  <30.318975, 31.618599, 33.165649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079975, 31.937597, 33.199097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578030, -0.356087, -0.734223,
		-0.555764, -0.487033, 0.673740,
		-0.597501, 0.797496, 0.083619,
		29.900724, 32.176846, 33.224182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626549, 31.420195, 33.356155>,  <30.318975, 31.618599, 33.165649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626549, 31.420195, 33.356155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643419, 31.744871, 33.123131>,  <29.653542, 31.939676, 32.983315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643419, 31.744871, 33.123131>,  <29.626549, 31.420195, 33.356155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643419, 31.744871, 33.123131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618606, -0.436660, -0.653189,
		-0.784569, 0.387924, 0.483701,
		0.042174, 0.811692, -0.582562,
		29.656071, 31.988379, 32.948364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005541, 31.388523, 32.918987>,  <29.626549, 31.420195, 33.356155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005541, 31.388523, 32.918987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.242090, 31.658657, 32.742714>,  <29.384020, 31.820738, 32.636951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.242090, 31.658657, 32.742714>,  <29.005541, 31.388523, 32.918987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242090, 31.658657, 32.742714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546221, -0.066554, -0.834993,
		-0.593228, 0.734503, 0.329523,
		0.591374, 0.675334, -0.440682,
		29.419502, 31.861258, 32.610508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544962, 31.794554, 32.578789>,  <29.005541, 31.388523, 32.918987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544962, 31.794554, 32.578789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.898718, 31.838327, 32.397297>,  <29.110971, 31.864592, 32.288403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.898718, 31.838327, 32.397297>,  <28.544962, 31.794554, 32.578789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.898718, 31.838327, 32.397297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458546, 0.022304, -0.888391,
		-0.087102, 0.993743, 0.069907,
		0.884392, 0.109436, -0.453734,
		29.164036, 31.871159, 32.261177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489323, 32.359940, 32.066082>,  <28.544962, 31.794554, 32.578789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489323, 32.359940, 32.066082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815588, 32.155872, 31.956963>,  <29.011347, 32.033432, 31.891491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815588, 32.155872, 31.956963>,  <28.489323, 32.359940, 32.066082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815588, 32.155872, 31.956963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341036, -0.043112, -0.939061,
		0.467322, 0.858991, -0.209151,
		0.815663, -0.510172, -0.272799,
		29.060287, 32.002819, 31.875122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.797318, 32.801300, 31.466103>,  <28.489323, 32.359940, 32.066082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.797318, 32.801300, 31.466103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926277, 32.422684, 31.461704>,  <29.003653, 32.195515, 31.459066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926277, 32.422684, 31.461704>,  <28.797318, 32.801300, 31.466103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926277, 32.422684, 31.461704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199049, -0.056433, -0.978363,
		0.925440, 0.317611, -0.206602,
		0.322398, -0.946540, -0.010995,
		29.022997, 32.138721, 31.458406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016306, 32.708576, 30.782759>,  <28.797318, 32.801300, 31.466103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016306, 32.708576, 30.782759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998606, 32.320534, 30.878204>,  <28.987986, 32.087708, 30.935472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.998606, 32.320534, 30.878204>,  <29.016306, 32.708576, 30.782759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998606, 32.320534, 30.878204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018451, -0.238014, -0.971087,
		0.998850, -0.047373, -0.007368,
		-0.044250, -0.970106, 0.238614,
		28.985331, 32.029503, 30.949789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.427565, 32.394249, 30.258127>,  <29.016306, 32.708576, 30.782759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.427565, 32.394249, 30.258127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.193485, 32.107914, 30.410507>,  <29.053038, 31.936113, 30.501936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.193485, 32.107914, 30.410507>,  <29.427565, 32.394249, 30.258127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.193485, 32.107914, 30.410507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060527, -0.429923, -0.900834,
		0.808630, -0.550223, 0.208262,
		-0.585196, -0.715836, 0.380952,
		29.017927, 31.893164, 30.524792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743587, 31.728155, 30.007469>,  <29.427565, 32.394249, 30.258127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743587, 31.728155, 30.007469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361422, 31.675711, 30.113291>,  <29.132122, 31.644243, 30.176785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361422, 31.675711, 30.113291>,  <29.743587, 31.728155, 30.007469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.361422, 31.675711, 30.113291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184136, -0.435835, -0.880989,
		0.230812, -0.890425, 0.392262,
		-0.955416, -0.131113, 0.264555,
		29.074797, 31.636377, 30.192657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631039, 31.009769, 29.754238>,  <29.743587, 31.728155, 30.007469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631039, 31.009769, 29.754238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274179, 31.187286, 29.787994>,  <29.060064, 31.293797, 29.808249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274179, 31.187286, 29.787994>,  <29.631039, 31.009769, 29.754238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274179, 31.187286, 29.787994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293168, -0.426649, -0.855584,
		-0.343694, -0.788048, 0.510739,
		-0.892147, 0.443791, 0.084394,
		29.006535, 31.320425, 29.813313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.195738, 30.524422, 29.490705>,  <29.631039, 31.009769, 29.754238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.195738, 30.524422, 29.490705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.952589, 30.841970, 29.484253>,  <28.806700, 31.032499, 29.480381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.952589, 30.841970, 29.484253>,  <29.195738, 30.524422, 29.490705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.952589, 30.841970, 29.484253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437011, -0.351443, -0.827955,
		-0.662959, -0.496241, 0.560562,
		-0.607870, 0.793872, -0.016130,
		28.770227, 31.080132, 29.479414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.544174, 30.259592, 29.315384>,  <29.195738, 30.524422, 29.490705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.544174, 30.259592, 29.315384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547699, 30.650509, 29.230701>,  <28.549814, 30.885059, 29.179892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547699, 30.650509, 29.230701>,  <28.544174, 30.259592, 29.315384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547699, 30.650509, 29.230701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336006, -0.196511, -0.921132,
		-0.941819, 0.079253, 0.326644,
		0.008814, 0.977293, -0.211708,
		28.550343, 30.943697, 29.167189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.900946, 30.393671, 29.069080>,  <28.544174, 30.259592, 29.315384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.900946, 30.393671, 29.069080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148966, 30.674221, 28.928448>,  <28.297779, 30.842550, 28.844069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148966, 30.674221, 28.928448>,  <27.900946, 30.393671, 29.069080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148966, 30.674221, 28.928448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294293, -0.207478, -0.932922,
		-0.727273, 0.681929, 0.077762,
		0.620053, 0.701374, -0.351581,
		28.334982, 30.884634, 28.822973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598795, 30.713699, 28.500826>,  <27.900946, 30.393671, 29.069080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598795, 30.713699, 28.500826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966724, 30.860737, 28.445982>,  <28.187483, 30.948959, 28.413074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966724, 30.860737, 28.445982>,  <27.598795, 30.713699, 28.500826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966724, 30.860737, 28.445982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115243, -0.080907, -0.990037,
		-0.375025, 0.926460, -0.032058,
		0.919824, 0.367594, -0.137111,
		28.242672, 30.971016, 28.404848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503284, 31.233225, 28.038054>,  <27.598795, 30.713699, 28.500826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503284, 31.233225, 28.038054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888107, 31.127846, 28.009649>,  <28.119001, 31.064619, 27.992607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888107, 31.127846, 28.009649>,  <27.503284, 31.233225, 28.038054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888107, 31.127846, 28.009649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058564, 0.054820, -0.996777,
		0.266489, 0.963115, 0.037312,
		0.962057, -0.263445, -0.071012,
		28.176723, 31.048813, 27.988346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771555, 31.760765, 27.597790>,  <27.503284, 31.233225, 28.038054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771555, 31.760765, 27.597790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016764, 31.445532, 27.575430>,  <28.163889, 31.256392, 27.562014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.016764, 31.445532, 27.575430>,  <27.771555, 31.760765, 27.597790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016764, 31.445532, 27.575430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070459, 0.125005, -0.989651,
		0.786917, 0.602741, 0.132158,
		0.613023, -0.788085, -0.055900,
		28.200670, 31.209106, 27.558661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274754, 31.915340, 27.052553>,  <27.771555, 31.760765, 27.597790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274754, 31.915340, 27.052553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291496, 31.517447, 27.089962>,  <28.301542, 31.278709, 27.112408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291496, 31.517447, 27.089962>,  <28.274754, 31.915340, 27.052553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291496, 31.517447, 27.089962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107932, -0.088557, -0.990206,
		0.993277, 0.051544, 0.103657,
		0.041859, -0.994737, 0.093524,
		28.304054, 31.219025, 27.118019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772369, 31.732847, 26.593601>,  <28.274754, 31.915340, 27.052553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772369, 31.732847, 26.593601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528112, 31.425266, 26.669312>,  <28.381557, 31.240717, 26.714737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.528112, 31.425266, 26.669312>,  <28.772369, 31.732847, 26.593601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528112, 31.425266, 26.669312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073507, -0.182939, -0.980372,
		0.788487, -0.612570, 0.055187,
		-0.610643, -0.768955, 0.189274,
		28.344919, 31.194580, 26.726093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063141, 31.236574, 26.249035>,  <28.772369, 31.732847, 26.593601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063141, 31.236574, 26.249035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702469, 31.082951, 26.328506>,  <28.486065, 30.990776, 26.376190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.702469, 31.082951, 26.328506>,  <29.063141, 31.236574, 26.249035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702469, 31.082951, 26.328506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016667, -0.428263, -0.903500,
		0.432084, -0.817979, 0.379755,
		-0.901679, -0.384059, 0.198679,
		28.431965, 30.967733, 26.388111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073685, 30.447475, 26.108189>,  <29.063141, 31.236574, 26.249035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073685, 30.447475, 26.108189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701727, 30.594349, 26.116894>,  <28.478552, 30.682472, 26.122118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.701727, 30.594349, 26.116894>,  <29.073685, 30.447475, 26.108189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701727, 30.594349, 26.116894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196488, -0.445845, -0.873278,
		-0.310949, -0.816332, 0.486736,
		-0.929894, 0.367183, 0.021765,
		28.422758, 30.704504, 26.123423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673544, 29.903698, 25.983274>,  <29.073685, 30.447475, 26.108189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673544, 29.903698, 25.983274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455202, 30.224133, 25.885042>,  <28.324198, 30.416393, 25.826103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455202, 30.224133, 25.885042>,  <28.673544, 29.903698, 25.983274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455202, 30.224133, 25.885042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249238, -0.435068, -0.865214,
		-0.799954, -0.411072, 0.437144,
		-0.545852, 0.801084, -0.245580,
		28.291447, 30.464458, 25.811369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109537, 29.663143, 25.606018>,  <28.673544, 29.903698, 25.983274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109537, 29.663143, 25.606018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074776, 30.044333, 25.489887>,  <28.053919, 30.273046, 25.420208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074776, 30.044333, 25.489887>,  <28.109537, 29.663143, 25.606018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074776, 30.044333, 25.489887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311592, -0.302810, -0.900676,
		-0.946234, 0.012190, 0.323255,
		-0.086905, 0.952973, -0.290328,
		28.048704, 30.330225, 25.402788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444368, 29.792774, 25.199923>,  <28.109537, 29.663143, 25.606018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444368, 29.792774, 25.199923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.707878, 30.080660, 25.112267>,  <27.865984, 30.253391, 25.059673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.707878, 30.080660, 25.112267>,  <27.444368, 29.792774, 25.199923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.707878, 30.080660, 25.112267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124873, -0.182639, -0.975218,
		-0.741903, 0.669815, -0.030445,
		0.658777, 0.719715, -0.219142,
		27.905512, 30.296574, 25.046524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076914, 30.021353, 24.627052>,  <27.444368, 29.792774, 25.199923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076914, 30.021353, 24.627052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441092, 30.185991, 24.643454>,  <27.659597, 30.284775, 24.653294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.441092, 30.185991, 24.643454>,  <27.076914, 30.021353, 24.627052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441092, 30.185991, 24.643454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029898, 0.033386, -0.998995,
		-0.412552, 0.910755, 0.018091,
		0.910443, 0.411596, 0.041004,
		27.714224, 30.309469, 24.655754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045296, 30.538956, 24.091948>,  <27.076914, 30.021353, 24.627052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045296, 30.538956, 24.091948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434580, 30.455072, 24.129654>,  <27.668150, 30.404741, 24.152277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434580, 30.455072, 24.129654>,  <27.045296, 30.538956, 24.091948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434580, 30.455072, 24.129654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092190, -0.019674, -0.995547,
		0.210630, 0.977566, 0.000186,
		0.973209, -0.209710, 0.094266,
		27.726543, 30.392160, 24.157934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411463, 30.893896, 23.445379>,  <27.045296, 30.538956, 24.091948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.411463, 30.893896, 23.445379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.692562, 30.645903, 23.584959>,  <27.861221, 30.497107, 23.668707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.692562, 30.645903, 23.584959>,  <27.411463, 30.893896, 23.445379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692562, 30.645903, 23.584959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261177, -0.231412, -0.937142,
		0.661762, 0.749714, -0.000699,
		0.702750, -0.619982, 0.348948,
		27.903387, 30.459908, 23.689644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033611, 31.064367, 23.110895>,  <27.411463, 30.893896, 23.445379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033611, 31.064367, 23.110895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999828, 30.682892, 23.226370>,  <27.979559, 30.454006, 23.295654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999828, 30.682892, 23.226370>,  <28.033611, 31.064367, 23.110895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999828, 30.682892, 23.226370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318047, -0.300369, -0.899235,
		0.944306, 0.015869, 0.328687,
		-0.084457, -0.953691, 0.288688,
		27.974491, 30.396784, 23.312977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276178, 30.794367, 22.608879>,  <28.033611, 31.064367, 23.110895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276178, 30.794367, 22.608879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124020, 30.466793, 22.780762>,  <28.032724, 30.270248, 22.883890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124020, 30.466793, 22.780762>,  <28.276178, 30.794367, 22.608879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124020, 30.466793, 22.780762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046974, -0.446925, -0.893337,
		0.923630, -0.360006, 0.131539,
		-0.380395, -0.818934, 0.429705,
		28.009901, 30.221113, 22.909674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.700497, 30.197376, 22.395439>,  <28.276178, 30.794367, 22.608879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.700497, 30.197376, 22.395439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359159, 30.031496, 22.521820>,  <28.154358, 29.931967, 22.597649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.359159, 30.031496, 22.521820>,  <28.700497, 30.197376, 22.395439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.359159, 30.031496, 22.521820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103613, -0.459040, -0.882353,
		0.510949, -0.785687, 0.348750,
		-0.853344, -0.414702, 0.315954,
		28.103157, 29.907085, 22.616606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801086, 29.473156, 22.299118>,  <28.700497, 30.197376, 22.395439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.801086, 29.473156, 22.299118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408703, 29.550835, 22.297781>,  <28.173273, 29.597443, 22.296980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408703, 29.550835, 22.297781>,  <28.801086, 29.473156, 22.299118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408703, 29.550835, 22.297781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066025, -0.349595, -0.934572,
		-0.182657, -0.916554, 0.355759,
		-0.980957, 0.194195, -0.003340,
		28.114416, 29.609093, 22.296780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529716, 28.950682, 21.939054>,  <28.801086, 29.473156, 22.299118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529716, 28.950682, 21.939054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204060, 29.182243, 21.920992>,  <28.008665, 29.321180, 21.910154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204060, 29.182243, 21.920992>,  <28.529716, 28.950682, 21.939054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204060, 29.182243, 21.920992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130715, -0.258490, -0.957130,
		-0.565759, -0.773338, 0.286119,
		-0.814144, 0.578905, -0.045156,
		27.959816, 29.355915, 21.907446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985556, 28.522751, 21.590340>,  <28.529716, 28.950682, 21.939054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985556, 28.522751, 21.590340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873577, 28.905409, 21.558197>,  <27.806391, 29.135004, 21.538912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.873577, 28.905409, 21.558197>,  <27.985556, 28.522751, 21.590340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873577, 28.905409, 21.558197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252885, -0.154230, -0.955124,
		-0.926110, -0.247062, 0.285097,
		-0.279945, 0.956647, -0.080356,
		27.789593, 29.192404, 21.534090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.328688, 28.561285, 21.309135>,  <27.985556, 28.522751, 21.590340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.328688, 28.561285, 21.309135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502028, 28.910084, 21.218071>,  <27.606031, 29.119364, 21.163433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502028, 28.910084, 21.218071>,  <27.328688, 28.561285, 21.309135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502028, 28.910084, 21.218071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221663, -0.141724, -0.964769,
		-0.873540, 0.468548, 0.131874,
		0.433351, 0.871996, -0.227661,
		27.632032, 29.171682, 21.149773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.884777, 28.791576, 20.933622>,  <27.328688, 28.561285, 21.309135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.884777, 28.791576, 20.933622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193817, 29.031534, 20.850471>,  <27.379242, 29.175508, 20.800581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193817, 29.031534, 20.850471>,  <26.884777, 28.791576, 20.933622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193817, 29.031534, 20.850471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289536, 0.041526, -0.956266,
		-0.565027, 0.799001, 0.205774,
		0.772602, 0.599894, -0.207876,
		27.425598, 29.211502, 20.788109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604649, 29.351456, 20.587496>,  <26.884777, 28.791576, 20.933622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604649, 29.351456, 20.587496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986881, 29.321474, 20.473478>,  <27.216221, 29.303484, 20.405067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986881, 29.321474, 20.473478>,  <26.604649, 29.351456, 20.587496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986881, 29.321474, 20.473478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264426, 0.209130, -0.941458,
		0.130178, 0.975011, 0.180020,
		0.955580, -0.074955, -0.285042,
		27.273556, 29.298988, 20.387966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.778332, 29.950581, 20.185085>,  <26.604649, 29.351456, 20.587496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.778332, 29.950581, 20.185085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.054413, 29.687351, 20.064713>,  <27.220062, 29.529413, 19.992489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.054413, 29.687351, 20.064713>,  <26.778332, 29.950581, 20.185085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.054413, 29.687351, 20.064713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185930, 0.240627, -0.952643,
		0.699320, 0.713470, 0.043727,
		0.690204, -0.658072, -0.300931,
		27.261475, 29.489929, 19.974434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.199520, 30.312925, 19.684338>,  <26.778332, 29.950581, 20.185085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.199520, 30.312925, 19.684338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314081, 29.937103, 19.609278>,  <27.382818, 29.711611, 19.564241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.314081, 29.937103, 19.609278>,  <27.199520, 30.312925, 19.684338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314081, 29.937103, 19.609278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042838, 0.183103, -0.982160,
		0.957151, 0.289331, 0.012193,
		0.286402, -0.939553, -0.187651,
		27.400002, 29.655237, 19.552982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.710274, 30.403069, 19.174433>,  <27.199520, 30.312925, 19.684338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.710274, 30.403069, 19.174433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582880, 30.024618, 19.151070>,  <27.506445, 29.797548, 19.137053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582880, 30.024618, 19.151070>,  <27.710274, 30.403069, 19.174433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.582880, 30.024618, 19.151070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008983, 0.058600, -0.998241,
		0.947886, -0.318447, -0.010164,
		-0.318483, -0.946128, -0.058407,
		27.487335, 29.740780, 19.133547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139971, 30.077271, 18.648104>,  <27.710274, 30.403069, 19.174433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139971, 30.077271, 18.648104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.815916, 29.846285, 18.688530>,  <27.621483, 29.707693, 18.712786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.815916, 29.846285, 18.688530>,  <28.139971, 30.077271, 18.648104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.815916, 29.846285, 18.688530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020272, -0.144699, -0.989268,
		0.585891, -0.803491, 0.105520,
		-0.810137, -0.577464, 0.101066,
		27.572876, 29.673046, 18.718849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178610, 29.584307, 18.087986>,  <28.139971, 30.077271, 18.648104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178610, 29.584307, 18.087986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.793737, 29.564428, 18.195118>,  <27.562813, 29.552502, 18.259398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.793737, 29.564428, 18.195118>,  <28.178610, 29.584307, 18.087986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793737, 29.564428, 18.195118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270290, 0.051933, -0.961377,
		0.033841, -0.997414, -0.063394,
		-0.962184, -0.049669, 0.267834,
		27.505083, 29.549519, 18.275467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885635, 29.178883, 17.650669>,  <28.178610, 29.584307, 18.087986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885635, 29.178883, 17.650669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548277, 29.353937, 17.775349>,  <27.345861, 29.458969, 17.850157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548277, 29.353937, 17.775349>,  <27.885635, 29.178883, 17.650669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.548277, 29.353937, 17.775349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315552, 0.066080, -0.946605,
		-0.434865, -0.896721, 0.082365,
		-0.843397, 0.437636, 0.311698,
		27.295258, 29.485228, 17.868858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.294788, 28.886292, 17.345778>,  <27.885635, 29.178883, 17.650669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.294788, 28.886292, 17.345778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141327, 29.241932, 17.445627>,  <27.049250, 29.455317, 17.505537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141327, 29.241932, 17.445627>,  <27.294788, 28.886292, 17.345778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141327, 29.241932, 17.445627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437354, 0.063143, -0.897070,
		-0.813347, -0.453338, 0.364626,
		-0.383652, 0.889100, 0.249627,
		27.026232, 29.508661, 17.520515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549541, 28.889984, 17.108257>,  <27.294788, 28.886292, 17.345778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549541, 28.889984, 17.108257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673704, 29.268616, 17.143211>,  <26.748201, 29.495794, 17.164185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673704, 29.268616, 17.143211>,  <26.549541, 28.889984, 17.108257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673704, 29.268616, 17.143211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291981, 0.182421, -0.938866,
		-0.904652, 0.265915, 0.333008,
		0.310406, 0.946579, 0.087385,
		26.766827, 29.552589, 17.169428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.008745, 29.290695, 16.962116>,  <26.549541, 28.889984, 17.108257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.008745, 29.290695, 16.962116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.309212, 29.547674, 16.901438>,  <26.489492, 29.701860, 16.865030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.309212, 29.547674, 16.901438>,  <26.008745, 29.290695, 16.962116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.309212, 29.547674, 16.901438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392488, 0.249904, -0.885156,
		-0.530756, 0.724438, 0.439872,
		0.751167, 0.642446, -0.151695,
		26.534561, 29.740408, 16.855928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.751505, 29.783619, 16.530943>,  <26.008745, 29.290695, 16.962116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.751505, 29.783619, 16.530943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.147736, 29.817656, 16.488012>,  <26.385473, 29.838078, 16.462254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.147736, 29.817656, 16.488012>,  <25.751505, 29.783619, 16.530943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.147736, 29.817656, 16.488012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123982, 0.224046, -0.966660,
		-0.058208, 0.970857, 0.232484,
		0.990576, 0.085091, -0.107328,
		26.444908, 29.843184, 16.455814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.028688, 30.424530, 16.180433>,  <25.751505, 29.783619, 16.530943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.028688, 30.424530, 16.180433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240896, 30.093410, 16.107441>,  <26.368221, 29.894739, 16.063646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.240896, 30.093410, 16.107441>,  <26.028688, 30.424530, 16.180433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240896, 30.093410, 16.107441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113182, 0.144171, -0.983059,
		0.840082, 0.542187, -0.017206,
		0.530521, -0.827797, -0.182481,
		26.400053, 29.845072, 16.052696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.660061, 30.577436, 15.766763>,  <26.028688, 30.424530, 16.180433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.660061, 30.577436, 15.766763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460224, 30.235538, 15.710453>,  <26.340322, 30.030399, 15.676667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460224, 30.235538, 15.710453>,  <26.660061, 30.577436, 15.766763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.460224, 30.235538, 15.710453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206136, 0.275143, -0.939044,
		0.841379, -0.440118, -0.313653,
		-0.499589, -0.854747, -0.140775,
		26.310347, 29.979115, 15.668221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686726, 31.315247, 16.086451>,  <26.660061, 30.577436, 15.766763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686726, 31.315247, 16.086451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956005, 31.599499, 16.004662>,  <27.117573, 31.770050, 15.955588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956005, 31.599499, 16.004662>,  <26.686726, 31.315247, 16.086451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956005, 31.599499, 16.004662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026658, -0.253010, -0.967096,
		-0.738981, 0.656499, -0.151382,
		0.673199, 0.710630, -0.204471,
		27.157965, 31.812687, 15.943320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.506544, 31.677269, 15.495595>,  <26.686726, 31.315247, 16.086451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.506544, 31.677269, 15.495595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901266, 31.736240, 15.522376>,  <27.138100, 31.771624, 15.538445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901266, 31.736240, 15.522376>,  <26.506544, 31.677269, 15.495595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.901266, 31.736240, 15.522376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090211, -0.157198, -0.983438,
		-0.134461, 0.976501, -0.168423,
		0.986804, 0.147428, 0.066954,
		27.197308, 31.780468, 15.542462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.636055, 32.233192, 15.099609>,  <26.506544, 31.677269, 15.495595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.636055, 32.233192, 15.099609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941889, 31.977011, 15.128531>,  <27.125389, 31.823301, 15.145885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941889, 31.977011, 15.128531>,  <26.636055, 32.233192, 15.099609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941889, 31.977011, 15.128531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002766, -0.108922, -0.994047,
		0.644516, 0.760234, -0.081509,
		0.764586, -0.640453, 0.072304,
		27.171265, 31.784874, 15.150223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.371849, 32.498207, 15.144475>,  <26.636055, 32.233192, 15.099609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.371849, 32.498207, 15.144475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556683, 32.622349, 14.812172>,  <27.667583, 32.696835, 14.612790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556683, 32.622349, 14.812172>,  <27.371849, 32.498207, 15.144475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556683, 32.622349, 14.812172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284890, 0.835167, 0.470461,
		0.839840, -0.454061, 0.297484,
		0.462067, 0.310362, -0.830765,
		27.695309, 32.715454, 14.562944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087986, 32.492649, 15.108253>,  <27.371849, 32.498207, 15.144475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087986, 32.492649, 15.108253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969677, 32.806835, 14.890793>,  <27.898691, 32.995346, 14.760316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.969677, 32.806835, 14.890793>,  <28.087986, 32.492649, 15.108253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969677, 32.806835, 14.890793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510156, 0.611042, 0.605284,
		0.807626, -0.098322, -0.581441,
		-0.295772, 0.785469, -0.543652,
		27.880945, 33.042477, 14.727697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416960, 32.153751, 15.660042>,  <28.087986, 32.492649, 15.108253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.416960, 32.153751, 15.660042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029615, 32.082329, 15.590299>,  <27.797209, 32.039474, 15.548453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.029615, 32.082329, 15.590299>,  <28.416960, 32.153751, 15.660042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.029615, 32.082329, 15.590299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244271, 0.535029, 0.808750,
		-0.051118, 0.825750, -0.561715,
		-0.968359, -0.178553, -0.174357,
		27.739107, 32.028763, 15.537992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.956001, 32.790039, 15.805756>,  <28.416960, 32.153751, 15.660042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.956001, 32.790039, 15.805756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675201, 32.505997, 15.827484>,  <27.506721, 32.335571, 15.840521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.675201, 32.505997, 15.827484>,  <27.956001, 32.790039, 15.805756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675201, 32.505997, 15.827484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314309, 0.377358, 0.871097,
		-0.639067, 0.594436, -0.488097,
		-0.702000, -0.710103, 0.054320,
		27.464602, 32.292965, 15.843781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358442, 33.139885, 16.077442>,  <27.956001, 32.790039, 15.805756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358442, 33.139885, 16.077442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324581, 32.748383, 16.152143>,  <27.304264, 32.513481, 16.196964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.324581, 32.748383, 16.152143>,  <27.358442, 33.139885, 16.077442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.324581, 32.748383, 16.152143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224509, 0.201344, 0.953445,
		-0.970788, 0.038782, -0.236783,
		-0.084651, -0.978753, 0.186756,
		27.299185, 32.454758, 16.208170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549294, 33.028111, 16.278669>,  <27.358442, 33.139885, 16.077442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549294, 33.028111, 16.278669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795717, 32.737068, 16.399376>,  <26.943571, 32.562443, 16.471800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795717, 32.737068, 16.399376>,  <26.549294, 33.028111, 16.278669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795717, 32.737068, 16.399376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002801, 0.381074, 0.924540,
		-0.787695, -0.570417, 0.232726,
		0.616059, -0.727603, 0.301768,
		26.980536, 32.518787, 16.489906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.245588, 32.727207, 16.821239>,  <26.549294, 33.028111, 16.278669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.245588, 32.727207, 16.821239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631496, 32.633148, 16.868435>,  <26.863041, 32.576714, 16.896751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631496, 32.633148, 16.868435>,  <26.245588, 32.727207, 16.821239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631496, 32.633148, 16.868435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030607, 0.345118, 0.938060,
		-0.261300, -0.908626, 0.325764,
		0.964773, -0.235145, 0.117989,
		26.920929, 32.562603, 16.903831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199976, 32.287182, 17.392088>,  <26.245588, 32.727207, 16.821239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.199976, 32.287182, 17.392088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.571253, 32.432121, 17.358221>,  <26.794018, 32.519085, 17.337900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.571253, 32.432121, 17.358221>,  <26.199976, 32.287182, 17.392088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.571253, 32.432121, 17.358221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070343, 0.052576, 0.996136,
		0.365397, -0.930560, 0.023312,
		0.928190, 0.362346, -0.084669,
		26.849710, 32.540825, 17.332821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.496298, 32.022903, 18.030260>,  <26.199976, 32.287182, 17.392088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.496298, 32.022903, 18.030260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.755148, 32.297600, 17.897829>,  <26.910458, 32.462418, 17.818371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.755148, 32.297600, 17.897829>,  <26.496298, 32.022903, 18.030260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.755148, 32.297600, 17.897829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229788, 0.238374, 0.943597,
		0.726931, -0.686702, -0.003549,
		0.647124, 0.686745, -0.331077,
		26.949286, 32.503624, 17.798506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105982, 31.941406, 18.328316>,  <26.496298, 32.022903, 18.030260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105982, 31.941406, 18.328316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114857, 32.324139, 18.212395>,  <27.120182, 32.553780, 18.142843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.114857, 32.324139, 18.212395>,  <27.105982, 31.941406, 18.328316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.114857, 32.324139, 18.212395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216795, 0.278370, 0.935687,
		0.975965, -0.083589, -0.201259,
		0.022189, 0.956829, -0.289802,
		27.121513, 32.611187, 18.125454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.801939, 32.167271, 18.450731>,  <27.105982, 31.941406, 18.328316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.801939, 32.167271, 18.450731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580469, 32.500122, 18.463436>,  <27.447586, 32.699833, 18.471058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580469, 32.500122, 18.463436>,  <27.801939, 32.167271, 18.450731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580469, 32.500122, 18.463436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405046, 0.235791, 0.883369,
		0.727585, 0.501966, -0.467601,
		-0.553677, 0.832125, 0.031761,
		27.414366, 32.749760, 18.472965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183788, 32.614552, 18.858423>,  <27.801939, 32.167271, 18.450731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183788, 32.614552, 18.858423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812626, 32.762527, 18.876881>,  <27.589928, 32.851315, 18.887955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812626, 32.762527, 18.876881>,  <28.183788, 32.614552, 18.858423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812626, 32.762527, 18.876881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211179, 0.419576, 0.882814,
		0.307229, 0.828914, -0.467452,
		-0.927908, 0.369942, 0.046143,
		27.534254, 32.873508, 18.890724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.259665, 33.314159, 19.095890>,  <28.183788, 32.614552, 18.858423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.259665, 33.314159, 19.095890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877909, 33.218853, 19.167852>,  <27.648855, 33.161671, 19.211029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.877909, 33.218853, 19.167852>,  <28.259665, 33.314159, 19.095890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877909, 33.218853, 19.167852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087232, 0.353750, 0.931263,
		-0.285532, 0.904483, -0.316831,
		-0.954391, -0.238267, 0.179906,
		27.591591, 33.147373, 19.221825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792322, 34.016880, 19.397419>,  <28.259665, 33.314159, 19.095890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792322, 34.016880, 19.397419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630028, 33.669262, 19.510653>,  <27.532652, 33.460690, 19.578592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630028, 33.669262, 19.510653>,  <27.792322, 34.016880, 19.397419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630028, 33.669262, 19.510653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020707, 0.300903, 0.953430,
		-0.913756, 0.392701, -0.104092,
		-0.405734, -0.869047, 0.283084,
		27.508308, 33.408546, 19.595577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403269, 34.243092, 19.976816>,  <27.792322, 34.016880, 19.397419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403269, 34.243092, 19.976816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388391, 33.845192, 20.014952>,  <27.379465, 33.606453, 20.037834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388391, 33.845192, 20.014952>,  <27.403269, 34.243092, 19.976816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388391, 33.845192, 20.014952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055873, 0.093188, 0.994080,
		-0.997745, 0.042299, 0.052114,
		-0.037192, -0.994750, 0.095341,
		27.377234, 33.546768, 20.043554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.917118, 34.109215, 20.476866>,  <27.403269, 34.243092, 19.976816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.917118, 34.109215, 20.476866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.178686, 33.807823, 20.449575>,  <27.335627, 33.626987, 20.433201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.178686, 33.807823, 20.449575>,  <26.917118, 34.109215, 20.476866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178686, 33.807823, 20.449575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217017, 0.100420, 0.970989,
		-0.724771, -0.649754, 0.229185,
		0.653919, -0.753482, -0.068226,
		27.374863, 33.581779, 20.429108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920889, 33.859463, 21.187202>,  <26.917118, 34.109215, 20.476866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920889, 33.859463, 21.187202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226051, 33.650478, 21.034878>,  <27.409149, 33.525089, 20.943483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.226051, 33.650478, 21.034878>,  <26.920889, 33.859463, 21.187202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.226051, 33.650478, 21.034878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286574, -0.254718, 0.923577,
		-0.579528, -0.813730, -0.044603,
		0.762904, -0.522457, -0.380810,
		27.454922, 33.493740, 20.920635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.944021, 33.296646, 21.486406>,  <26.920889, 33.859463, 21.187202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.944021, 33.296646, 21.486406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326376, 33.326160, 21.372683>,  <27.555790, 33.343868, 21.304449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326376, 33.326160, 21.372683>,  <26.944021, 33.296646, 21.486406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326376, 33.326160, 21.372683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285055, 0.000433, 0.958511,
		0.070853, -0.997273, -0.020620,
		0.955889, 0.073791, -0.284308,
		27.613142, 33.348297, 21.287390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331663, 32.736156, 21.834766>,  <26.944021, 33.296646, 21.486406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331663, 32.736156, 21.834766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586416, 33.031223, 21.745121>,  <27.739267, 33.208263, 21.691334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586416, 33.031223, 21.745121>,  <27.331663, 32.736156, 21.834766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586416, 33.031223, 21.745121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410439, -0.078342, 0.908517,
		0.652627, -0.670603, -0.352662,
		0.636882, 0.737669, -0.224113,
		27.777481, 33.252525, 21.677887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807703, 32.523281, 22.278883>,  <27.331663, 32.736156, 21.834766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807703, 32.523281, 22.278883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946766, 32.881126, 22.166601>,  <28.030203, 33.095833, 22.099232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.946766, 32.881126, 22.166601>,  <27.807703, 32.523281, 22.278883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.946766, 32.881126, 22.166601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419824, 0.119166, 0.899748,
		0.838381, -0.430649, -0.334154,
		0.347656, 0.894618, -0.280704,
		28.051064, 33.149513, 22.082390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422598, 32.463661, 22.549349>,  <27.807703, 32.523281, 22.278883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422598, 32.463661, 22.549349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365610, 32.857391, 22.507784>,  <28.331417, 33.093632, 22.482845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365610, 32.857391, 22.507784>,  <28.422598, 32.463661, 22.549349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365610, 32.857391, 22.507784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158011, 0.126253, 0.979333,
		0.977106, 0.123105, -0.173522,
		-0.142469, 0.984330, -0.103911,
		28.322870, 33.152691, 22.476610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099302, 32.790470, 22.771109>,  <28.422598, 32.463661, 22.549349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099302, 32.790470, 22.771109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789469, 33.041290, 22.804155>,  <28.603569, 33.191784, 22.823984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.789469, 33.041290, 22.804155>,  <29.099302, 32.790470, 22.771109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789469, 33.041290, 22.804155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293868, 0.241146, 0.924927,
		0.560055, 0.740712, -0.371059,
		-0.774584, 0.627052, 0.082617,
		28.557093, 33.229404, 22.828939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349434, 33.277687, 23.148966>,  <29.099302, 32.790470, 22.771109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349434, 33.277687, 23.148966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953453, 33.327271, 23.176176>,  <28.715864, 33.357021, 23.192501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953453, 33.327271, 23.176176>,  <29.349434, 33.277687, 23.148966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953453, 33.327271, 23.176176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094138, 0.218840, 0.971209,
		0.105502, 0.967855, -0.228311,
		-0.989953, 0.123957, 0.068024,
		28.656467, 33.364456, 23.196583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.225334, 33.922779, 23.411680>,  <29.349434, 33.277687, 23.148966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.225334, 33.922779, 23.411680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892942, 33.720909, 23.505297>,  <28.693508, 33.599789, 23.561466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.892942, 33.720909, 23.505297>,  <29.225334, 33.922779, 23.411680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892942, 33.720909, 23.505297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036303, 0.370620, 0.928075,
		-0.555117, 0.779708, -0.289656,
		-0.830980, -0.504674, 0.234043,
		28.643648, 33.569508, 23.575510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838608, 34.422104, 23.819468>,  <29.225334, 33.922779, 23.411680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838608, 34.422104, 23.819468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732113, 34.041805, 23.882956>,  <28.668217, 33.813625, 23.921049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732113, 34.041805, 23.882956>,  <28.838608, 34.422104, 23.819468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732113, 34.041805, 23.882956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025278, 0.157721, 0.987160,
		-0.963577, 0.266829, -0.017958,
		-0.266235, -0.950750, 0.158721,
		28.652243, 33.756580, 23.930573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412096, 34.517662, 24.286797>,  <28.838608, 34.422104, 23.819468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412096, 34.517662, 24.286797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502756, 34.129223, 24.316751>,  <28.557152, 33.896160, 24.334724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502756, 34.129223, 24.316751>,  <28.412096, 34.517662, 24.286797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502756, 34.129223, 24.316751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130297, 0.106430, 0.985746,
		-0.965222, -0.213660, 0.150652,
		0.226648, -0.971094, 0.074889,
		28.570751, 33.837894, 24.339218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976309, 34.257881, 24.826618>,  <28.412096, 34.517662, 24.286797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976309, 34.257881, 24.826618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.293274, 34.014244, 24.813400>,  <28.483454, 33.868061, 24.805470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.293274, 34.014244, 24.813400>,  <27.976309, 34.257881, 24.826618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.293274, 34.014244, 24.813400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071613, 0.039094, 0.996666,
		-0.605767, -0.792137, 0.074597,
		0.792413, -0.609089, -0.033046,
		28.530998, 33.831516, 24.803486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790960, 33.663849, 25.306410>,  <27.976309, 34.257881, 24.826618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790960, 33.663849, 25.306410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.189919, 33.674908, 25.279762>,  <28.429293, 33.681541, 25.263775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.189919, 33.674908, 25.279762>,  <27.790960, 33.663849, 25.306410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.189919, 33.674908, 25.279762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070752, -0.195620, 0.978124,
		0.014008, -0.980290, -0.197066,
		0.997396, 0.027645, -0.066617,
		28.489138, 33.683201, 25.259777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.925392, 33.401096, 25.882414>,  <27.790960, 33.663849, 25.306410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.925392, 33.401096, 25.882414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.305258, 33.467159, 25.775934>,  <28.533176, 33.506798, 25.712048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.305258, 33.467159, 25.775934>,  <27.925392, 33.401096, 25.882414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305258, 33.467159, 25.775934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289540, -0.138312, 0.947120,
		0.119610, -0.976520, -0.179171,
		0.949663, 0.165162, -0.266198,
		28.590157, 33.516708, 25.696075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.277815, 32.818008, 26.040319>,  <27.925392, 33.401096, 25.882414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.277815, 32.818008, 26.040319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532160, 33.126431, 26.026718>,  <28.684767, 33.311485, 26.018559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532160, 33.126431, 26.026718>,  <28.277815, 32.818008, 26.040319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532160, 33.126431, 26.026718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217827, -0.137021, 0.966321,
		0.740428, -0.621852, -0.255083,
		0.635860, 0.771055, -0.034002,
		28.722918, 33.357746, 26.016518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.747461, 32.642929, 26.561769>,  <28.277815, 32.818008, 26.040319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.747461, 32.642929, 26.561769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868238, 33.012341, 26.467182>,  <28.940704, 33.233990, 26.410429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868238, 33.012341, 26.467182>,  <28.747461, 32.642929, 26.561769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868238, 33.012341, 26.467182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438421, 0.085739, 0.894671,
		0.846533, -0.373811, -0.379008,
		0.301942, 0.923533, -0.236468,
		28.958820, 33.289402, 26.396242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567656, 32.701710, 26.777531>,  <28.747461, 32.642929, 26.561769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.567656, 32.701710, 26.777531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378456, 33.054134, 26.777765>,  <29.264936, 33.265591, 26.777906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378456, 33.054134, 26.777765>,  <29.567656, 32.701710, 26.777531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378456, 33.054134, 26.777765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315147, 0.168563, 0.933954,
		0.822772, 0.441945, -0.357394,
		-0.473000, 0.881062, 0.000589,
		29.236557, 33.318455, 26.777943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.064611, 33.164104, 27.074657>,  <29.567656, 32.701710, 26.777531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.064611, 33.164104, 27.074657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701946, 33.328533, 27.112556>,  <29.484346, 33.427193, 27.135296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701946, 33.328533, 27.112556>,  <30.064611, 33.164104, 27.074657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701946, 33.328533, 27.112556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281372, 0.421948, 0.861853,
		0.314307, 0.808071, -0.498230,
		-0.906665, 0.411074, 0.094747,
		29.429947, 33.451855, 27.140980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137356, 33.929375, 27.279406>,  <30.064611, 33.164104, 27.074657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137356, 33.929375, 27.279406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776842, 33.797749, 27.392117>,  <29.560534, 33.718773, 27.459743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.776842, 33.797749, 27.392117>,  <30.137356, 33.929375, 27.279406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.776842, 33.797749, 27.392117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189304, 0.285889, 0.939378,
		-0.389677, 0.899990, -0.195373,
		-0.901286, -0.329069, 0.281776,
		29.506456, 33.699028, 27.476650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914864, 34.529057, 27.550577>,  <30.137356, 33.929375, 27.279406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914864, 34.529057, 27.550577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704185, 34.227047, 27.706800>,  <29.577778, 34.045841, 27.800533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704185, 34.227047, 27.706800>,  <29.914864, 34.529057, 27.550577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704185, 34.227047, 27.706800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124130, 0.386211, 0.914020,
		-0.840943, 0.529889, -0.109694,
		-0.526695, -0.755022, 0.390557,
		29.546177, 34.000542, 27.823967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.432917, 34.818150, 28.031126>,  <29.914864, 34.529057, 27.550577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.432917, 34.818150, 28.031126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497417, 34.436207, 28.130922>,  <29.536118, 34.207043, 28.190800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497417, 34.436207, 28.130922>,  <29.432917, 34.818150, 28.031126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497417, 34.436207, 28.130922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190875, 0.278200, 0.941367,
		-0.968280, -0.104174, 0.227118,
		0.161250, -0.954857, 0.249492,
		29.545792, 34.149750, 28.205770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967100, 34.754208, 28.646841>,  <29.432917, 34.818150, 28.031126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967100, 34.754208, 28.646841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226515, 34.449760, 28.650932>,  <29.382164, 34.267094, 28.653387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.226515, 34.449760, 28.650932>,  <28.967100, 34.754208, 28.646841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.226515, 34.449760, 28.650932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178373, 0.165026, 0.970025,
		-0.739988, -0.627274, 0.242788,
		0.648538, -0.761114, 0.010228,
		29.421076, 34.221428, 28.654001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870852, 34.481300, 29.355814>,  <28.967100, 34.754208, 28.646841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870852, 34.481300, 29.355814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199385, 34.276295, 29.255623>,  <29.396505, 34.153290, 29.195509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199385, 34.276295, 29.255623>,  <28.870852, 34.481300, 29.355814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199385, 34.276295, 29.255623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285193, -0.011352, 0.958403,
		-0.494041, -0.858602, 0.136843,
		0.821333, -0.512517, -0.250476,
		29.445786, 34.122540, 29.180481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.957983, 33.957027, 29.905764>,  <28.870852, 34.481300, 29.355814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.957983, 33.957027, 29.905764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312855, 34.020889, 29.732595>,  <29.525778, 34.059208, 29.628695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312855, 34.020889, 29.732595>,  <28.957983, 33.957027, 29.905764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312855, 34.020889, 29.732595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442724, -0.030163, 0.896151,
		0.130020, -0.986712, -0.097445,
		0.887181, 0.159659, -0.432919,
		29.579010, 34.068787, 29.602720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455601, 33.452507, 30.135258>,  <28.957983, 33.957027, 29.905764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455601, 33.452507, 30.135258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672050, 33.772041, 30.030153>,  <29.801920, 33.963764, 29.967091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672050, 33.772041, 30.030153>,  <29.455601, 33.452507, 30.135258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672050, 33.772041, 30.030153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471156, -0.029181, 0.881567,
		0.696562, -0.600837, -0.392169,
		0.541122, 0.798839, -0.262761,
		29.834387, 34.011692, 29.951324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145367, 33.228207, 30.221554>,  <29.455601, 33.452507, 30.135258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145367, 33.228207, 30.221554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147047, 33.627232, 30.249395>,  <30.148054, 33.866646, 30.266100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.147047, 33.627232, 30.249395>,  <30.145367, 33.228207, 30.221554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147047, 33.627232, 30.249395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511702, -0.061946, 0.856927,
		0.859153, 0.032019, -0.510717,
		0.004199, 0.997566, 0.069606,
		30.148306, 33.926502, 30.270277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904018, 33.384491, 30.462267>,  <30.145367, 33.228207, 30.221554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904018, 33.384491, 30.462267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742899, 33.742878, 30.537100>,  <30.646227, 33.957909, 30.581999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742899, 33.742878, 30.537100>,  <30.904018, 33.384491, 30.462267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742899, 33.742878, 30.537100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486975, 0.036717, 0.872644,
		0.774989, 0.442605, -0.451102,
		-0.402800, 0.895965, 0.187083,
		30.622059, 34.011669, 30.593225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342196, 33.891190, 30.664030>,  <30.904018, 33.384491, 30.462267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342196, 33.891190, 30.664030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.006290, 34.041889, 30.820419>,  <30.804747, 34.132309, 30.914253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.006290, 34.041889, 30.820419>,  <31.342196, 33.891190, 30.664030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006290, 34.041889, 30.820419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462703, 0.119810, 0.878380,
		0.284087, 0.918534, -0.274935,
		-0.839762, 0.376749, 0.390972,
		30.754362, 34.154915, 30.937712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523087, 34.192368, 29.984518>,  <31.342196, 33.891190, 30.664030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523087, 34.192368, 29.984518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844755, 34.418556, 29.911253>,  <32.037758, 34.554268, 29.867294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844755, 34.418556, 29.911253>,  <31.523087, 34.192368, 29.984518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844755, 34.418556, 29.911253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478573, 0.433204, -0.763742,
		-0.352528, 0.701837, 0.618990,
		0.804171, 0.565473, -0.183164,
		32.086006, 34.588200, 29.856304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308598, 34.918732, 29.887709>,  <31.523087, 34.192368, 29.984518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308598, 34.918732, 29.887709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661547, 34.872257, 29.705318>,  <31.873316, 34.844372, 29.595884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661547, 34.872257, 29.705318>,  <31.308598, 34.918732, 29.887709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661547, 34.872257, 29.705318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381763, 0.389733, -0.838072,
		0.275085, 0.913569, 0.299533,
		0.882375, -0.116191, -0.455976,
		31.926260, 34.837399, 29.568525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274885, 35.500301, 29.520788>,  <31.308598, 34.918732, 29.887709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274885, 35.500301, 29.520788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573898, 35.304840, 29.340826>,  <31.753305, 35.187565, 29.232849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573898, 35.304840, 29.340826>,  <31.274885, 35.500301, 29.520788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573898, 35.304840, 29.340826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230904, 0.443916, -0.865807,
		0.622800, 0.751103, 0.219009,
		0.747531, -0.488655, -0.449904,
		31.798159, 35.158245, 29.205854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554552, 35.925591, 29.021410>,  <31.274885, 35.500301, 29.520788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554552, 35.925591, 29.021410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642015, 35.553677, 28.902962>,  <31.694494, 35.330528, 28.831892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642015, 35.553677, 28.902962>,  <31.554552, 35.925591, 29.021410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642015, 35.553677, 28.902962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257481, 0.237734, -0.936582,
		0.941218, 0.281039, -0.187419,
		0.218660, -0.929785, -0.296122,
		31.707613, 35.274742, 28.814125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022533, 36.056507, 28.300674>,  <31.554552, 35.925591, 29.021410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022533, 36.056507, 28.300674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925938, 35.669548, 28.331209>,  <31.867979, 35.437374, 28.349531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925938, 35.669548, 28.331209>,  <32.022533, 36.056507, 28.300674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925938, 35.669548, 28.331209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048046, -0.066651, -0.996619,
		0.969213, -0.244343, -0.030384,
		-0.241492, -0.967396, 0.076339,
		31.853491, 35.379330, 28.354111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501194, 35.742973, 27.879154>,  <32.022533, 36.056507, 28.300674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501194, 35.742973, 27.879154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190487, 35.496456, 27.931026>,  <32.004063, 35.348545, 27.962151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.190487, 35.496456, 27.931026>,  <32.501194, 35.742973, 27.879154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190487, 35.496456, 27.931026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014619, -0.188210, -0.982020,
		0.629624, -0.764692, 0.137185,
		-0.776763, -0.616297, 0.129681,
		31.957458, 35.311565, 27.969931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627132, 35.076263, 27.590826>,  <32.501194, 35.742973, 27.879154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627132, 35.076263, 27.590826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228237, 35.051601, 27.607397>,  <31.988899, 35.036804, 27.617340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228237, 35.051601, 27.607397>,  <32.627132, 35.076263, 27.590826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228237, 35.051601, 27.607397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026469, -0.226172, -0.973728,
		0.069405, -0.972134, 0.223915,
		-0.997237, -0.061655, 0.041429,
		31.929066, 35.033104, 27.619825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431030, 34.443474, 27.228384>,  <32.627132, 35.076263, 27.590826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431030, 34.443474, 27.228384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106075, 34.676468, 27.217503>,  <31.911102, 34.816265, 27.210974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106075, 34.676468, 27.217503>,  <32.431030, 34.443474, 27.228384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106075, 34.676468, 27.217503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112144, -0.201845, -0.972976,
		-0.572236, -0.787381, 0.229299,
		-0.812385, 0.582487, -0.027203,
		31.862360, 34.851215, 27.209341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818674, 34.068733, 27.013300>,  <32.431030, 34.443474, 27.228384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818674, 34.068733, 27.013300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708286, 34.447365, 26.946566>,  <31.642054, 34.674541, 26.906525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708286, 34.447365, 26.946566>,  <31.818674, 34.068733, 27.013300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708286, 34.447365, 26.946566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272891, -0.243599, -0.930694,
		-0.921613, -0.211315, 0.325538,
		-0.275970, 0.946576, -0.166838,
		31.625496, 34.731339, 26.896515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123823, 34.070755, 26.655983>,  <31.818674, 34.068733, 27.013300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123823, 34.070755, 26.655983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267330, 34.438507, 26.591459>,  <31.353434, 34.659161, 26.552746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267330, 34.438507, 26.591459>,  <31.123823, 34.070755, 26.655983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267330, 34.438507, 26.591459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316993, -0.042540, -0.947473,
		-0.877954, 0.391055, 0.276177,
		0.358766, 0.919384, -0.161310,
		31.374960, 34.714321, 26.543066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639072, 34.390560, 26.283237>,  <31.123823, 34.070755, 26.655983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639072, 34.390560, 26.283237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962297, 34.618198, 26.222364>,  <31.156233, 34.754784, 26.185841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962297, 34.618198, 26.222364>,  <30.639072, 34.390560, 26.283237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962297, 34.618198, 26.222364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261862, 0.115595, -0.958158,
		-0.527693, 0.814104, 0.242434,
		0.808064, 0.569098, -0.152184,
		31.204718, 34.788929, 26.176710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477373, 34.995228, 25.975594>,  <30.639072, 34.390560, 26.283237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477373, 34.995228, 25.975594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861641, 34.938324, 25.880198>,  <31.092201, 34.904182, 25.822960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.861641, 34.938324, 25.880198>,  <30.477373, 34.995228, 25.975594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861641, 34.938324, 25.880198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240601, 0.002428, -0.970621,
		0.138661, 0.989826, -0.031896,
		0.960669, -0.142261, -0.238490,
		31.149841, 34.895645, 25.808651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714357, 35.600540, 25.475058>,  <30.477373, 34.995228, 25.975594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714357, 35.600540, 25.475058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953058, 35.282150, 25.434446>,  <31.096279, 35.091114, 25.410080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.953058, 35.282150, 25.434446>,  <30.714357, 35.600540, 25.475058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953058, 35.282150, 25.434446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092454, 0.057479, -0.994056,
		0.797082, 0.602592, -0.039291,
		0.596752, -0.795977, -0.101527,
		31.132084, 35.043358, 25.403988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252182, 35.764320, 24.873381>,  <30.714357, 35.600540, 25.475058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252182, 35.764320, 24.873381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281389, 35.365761, 24.890587>,  <31.298914, 35.126625, 24.900911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281389, 35.365761, 24.890587>,  <31.252182, 35.764320, 24.873381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281389, 35.365761, 24.890587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025097, -0.041282, -0.998832,
		0.997015, 0.074011, 0.021993,
		0.073017, -0.996403, 0.043016,
		31.303295, 35.066841, 24.903492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619509, 35.629505, 24.286768>,  <31.252182, 35.764320, 24.873381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619509, 35.629505, 24.286768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452135, 35.277683, 24.377365>,  <31.351711, 35.066589, 24.431723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452135, 35.277683, 24.377365>,  <31.619509, 35.629505, 24.286768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452135, 35.277683, 24.377365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240657, -0.133090, -0.961442,
		0.875784, -0.456806, -0.155981,
		-0.418433, -0.879554, 0.226492,
		31.326605, 35.013817, 24.445312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868366, 35.000175, 23.894882>,  <31.619509, 35.629505, 24.286768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868366, 35.000175, 23.894882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495998, 34.902306, 24.003347>,  <31.272577, 34.843582, 24.068426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495998, 34.902306, 24.003347>,  <31.868366, 35.000175, 23.894882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495998, 34.902306, 24.003347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215097, -0.232742, -0.948454,
		0.295172, -0.941258, 0.164035,
		-0.930917, -0.244673, 0.271161,
		31.216722, 34.828903, 24.084696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754488, 34.399113, 23.571009>,  <31.868366, 35.000175, 23.894882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754488, 34.399113, 23.571009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378494, 34.497452, 23.665655>,  <31.152897, 34.556454, 23.722443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378494, 34.497452, 23.665655>,  <31.754488, 34.399113, 23.571009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378494, 34.497452, 23.665655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284041, -0.179533, -0.941854,
		-0.189074, -0.952537, 0.238590,
		-0.939985, 0.245849, 0.236614,
		31.096498, 34.571205, 23.736639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353794, 33.876755, 23.257841>,  <31.754488, 34.399113, 23.571009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353794, 33.876755, 23.257841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120996, 34.196171, 23.319321>,  <30.981318, 34.387821, 23.356209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120996, 34.196171, 23.319321>,  <31.353794, 33.876755, 23.257841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120996, 34.196171, 23.319321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396010, -0.113232, -0.911238,
		-0.710254, -0.591200, 0.382128,
		-0.581993, 0.798537, 0.153698,
		30.946398, 34.435730, 23.365431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696819, 33.751991, 22.942263>,  <31.353794, 33.876755, 23.257841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696819, 33.751991, 22.942263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704763, 34.151192, 22.966278>,  <30.709530, 34.390713, 22.980688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704763, 34.151192, 22.966278>,  <30.696819, 33.751991, 22.942263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704763, 34.151192, 22.966278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343100, 0.063208, -0.937170,
		-0.939089, -0.001987, 0.343669,
		0.019860, 0.997999, 0.060039,
		30.710722, 34.450592, 22.984289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018688, 33.990997, 22.865026>,  <30.696819, 33.751991, 22.942263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018688, 33.990997, 22.865026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266470, 34.282982, 22.749483>,  <30.415138, 34.458172, 22.680157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266470, 34.282982, 22.749483>,  <30.018688, 33.990997, 22.865026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266470, 34.282982, 22.749483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406759, -0.016262, -0.913391,
		-0.671435, 0.683298, 0.286844,
		0.619454, 0.729958, -0.288856,
		30.452307, 34.501968, 22.662827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662424, 34.262856, 22.365295>,  <30.018688, 33.990997, 22.865026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662424, 34.262856, 22.365295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023396, 34.425438, 22.308144>,  <30.239979, 34.522987, 22.273853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.023396, 34.425438, 22.308144>,  <29.662424, 34.262856, 22.365295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.023396, 34.425438, 22.308144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138591, -0.040139, -0.989536,
		-0.407941, 0.912787, 0.020109,
		0.902428, 0.406459, -0.142879,
		30.294125, 34.547375, 22.265280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565689, 34.812981, 21.868902>,  <29.662424, 34.262856, 22.365295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565689, 34.812981, 21.868902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934998, 34.659512, 21.876575>,  <30.156582, 34.567429, 21.881180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934998, 34.659512, 21.876575>,  <29.565689, 34.812981, 21.868902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934998, 34.659512, 21.876575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050329, -0.170322, -0.984102,
		0.380840, 0.907627, -0.176563,
		0.923270, -0.383672, 0.019185,
		30.211979, 34.544411, 21.882332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024677, 35.123634, 21.206860>,  <29.565689, 34.812981, 21.868902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024677, 35.123634, 21.206860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154987, 34.764240, 21.324566>,  <30.233173, 34.548603, 21.395189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154987, 34.764240, 21.324566>,  <30.024677, 35.123634, 21.206860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154987, 34.764240, 21.324566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154643, -0.357691, -0.920947,
		0.932714, 0.254517, -0.255472,
		0.325777, -0.898487, 0.294264,
		30.252720, 34.494694, 21.412846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.852121, 34.722767, 20.670071>,  <30.024677, 35.123634, 21.206860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.852121, 34.722767, 20.670071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047728, 34.434940, 20.867287>,  <30.165092, 34.262245, 20.985617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.047728, 34.434940, 20.867287>,  <29.852121, 34.722767, 20.670071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.047728, 34.434940, 20.867287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081816, -0.600583, -0.795366,
		0.868429, 0.348609, -0.352567,
		0.489017, -0.719564, 0.493041,
		30.194433, 34.219070, 21.015200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466572, 34.520943, 20.241238>,  <29.852121, 34.722767, 20.670071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466572, 34.520943, 20.241238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365217, 34.217342, 20.481142>,  <30.304403, 34.035183, 20.625084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365217, 34.217342, 20.481142>,  <30.466572, 34.520943, 20.241238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365217, 34.217342, 20.481142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052248, -0.629827, -0.774976,
		0.965953, -0.165033, 0.199247,
		-0.253388, -0.759001, 0.599760,
		30.289200, 33.989643, 20.661070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881832, 34.045635, 19.951902>,  <30.466572, 34.520943, 20.241238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881832, 34.045635, 19.951902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613379, 33.842014, 20.167475>,  <30.452307, 33.719841, 20.296818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613379, 33.842014, 20.167475>,  <30.881832, 34.045635, 19.951902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613379, 33.842014, 20.167475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070276, -0.767387, -0.637322,
		0.737997, -0.389855, 0.550794,
		-0.671135, -0.509049, 0.538931,
		30.412039, 33.689301, 20.329155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126741, 33.349625, 20.065939>,  <30.881832, 34.045635, 19.951902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126741, 33.349625, 20.065939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727852, 33.351273, 20.095682>,  <30.488518, 33.352261, 20.113527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.727852, 33.351273, 20.095682>,  <31.126741, 33.349625, 20.065939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727852, 33.351273, 20.095682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055361, -0.708803, -0.703231,
		0.049810, -0.705395, 0.707062,
		-0.997223, 0.004115, 0.074357,
		30.428684, 33.352509, 20.117989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.932148, 32.667961, 20.068008>,  <31.126741, 33.349625, 20.065939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.932148, 32.667961, 20.068008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582510, 32.845692, 19.989489>,  <30.372726, 32.952328, 19.942377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.582510, 32.845692, 19.989489>,  <30.932148, 32.667961, 20.068008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582510, 32.845692, 19.989489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190629, -0.685466, -0.702707,
		-0.446783, -0.576814, 0.683864,
		-0.874097, 0.444322, -0.196297,
		30.320282, 32.978989, 19.930599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452623, 32.162834, 20.014311>,  <30.932148, 32.667961, 20.068008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452623, 32.162834, 20.014311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266365, 32.454655, 19.813938>,  <30.154610, 32.629745, 19.693714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.266365, 32.454655, 19.813938>,  <30.452623, 32.162834, 20.014311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.266365, 32.454655, 19.813938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020059, -0.557194, -0.830140,
		-0.884745, -0.396597, 0.244820,
		-0.465643, 0.729551, -0.500930,
		30.126673, 32.673519, 19.663658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025206, 31.787003, 19.694508>,  <30.452623, 32.162834, 20.014311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025206, 31.787003, 19.694508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.032906, 32.134235, 19.496088>,  <30.037525, 32.342575, 19.377035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.032906, 32.134235, 19.496088>,  <30.025206, 31.787003, 19.694508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032906, 32.134235, 19.496088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184543, -0.484533, -0.855086,
		-0.982636, 0.108005, 0.150870,
		0.019252, 0.868080, -0.496051,
		30.038681, 32.394661, 19.347273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393366, 31.867970, 19.353548>,  <30.025206, 31.787003, 19.694508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393366, 31.867970, 19.353548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655178, 32.102131, 19.162178>,  <29.812265, 32.242626, 19.047356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.655178, 32.102131, 19.162178>,  <29.393366, 31.867970, 19.353548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655178, 32.102131, 19.162178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154635, -0.515773, -0.842654,
		-0.740053, 0.625524, -0.247065,
		0.654530, 0.585404, -0.478427,
		29.851538, 32.277752, 19.018650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022381, 32.025475, 18.676456>,  <29.393366, 31.867970, 19.353548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022381, 32.025475, 18.676456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.408619, 32.094219, 18.598389>,  <29.640362, 32.135468, 18.551548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.408619, 32.094219, 18.598389>,  <29.022381, 32.025475, 18.676456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.408619, 32.094219, 18.598389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122901, -0.359822, -0.924891,
		-0.229179, 0.917056, -0.326320,
		0.965594, 0.171861, -0.195171,
		29.698298, 32.145779, 18.539837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011198, 32.254951, 18.009760>,  <29.022381, 32.025475, 18.676456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011198, 32.254951, 18.009760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380587, 32.122223, 18.086800>,  <29.602219, 32.042583, 18.133024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380587, 32.122223, 18.086800>,  <29.011198, 32.254951, 18.009760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380587, 32.122223, 18.086800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032320, -0.432933, -0.900847,
		0.382307, 0.838129, -0.389076,
		0.923470, -0.331825, 0.192601,
		29.657627, 32.022675, 18.144581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.303110, 32.180172, 17.369942>,  <29.011198, 32.254951, 18.009760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.303110, 32.180172, 17.369942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560347, 31.971994, 17.594645>,  <29.714689, 31.847088, 17.729467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560347, 31.971994, 17.594645>,  <29.303110, 32.180172, 17.369942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560347, 31.971994, 17.594645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162129, -0.624408, -0.764087,
		0.748430, 0.582455, -0.317172,
		0.643091, -0.520443, 0.561759,
		29.753273, 31.815861, 17.763172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891655, 31.989965, 16.917082>,  <29.303110, 32.180172, 17.369942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891655, 31.989965, 16.917082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906857, 31.720325, 17.212147>,  <29.915977, 31.558542, 17.389187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906857, 31.720325, 17.212147>,  <29.891655, 31.989965, 16.917082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906857, 31.720325, 17.212147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082790, -0.733535, -0.674591,
		0.995842, 0.086708, 0.027932,
		0.038004, -0.674098, 0.737663,
		29.918257, 31.518097, 17.433445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359957, 31.404930, 16.726549>,  <29.891655, 31.989965, 16.917082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359957, 31.404930, 16.726549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154249, 31.213062, 17.010927>,  <30.030825, 31.097942, 17.181555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154249, 31.213062, 17.010927>,  <30.359957, 31.404930, 16.726549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154249, 31.213062, 17.010927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054777, -0.808904, -0.585383,
		0.855877, -0.339988, 0.389720,
		-0.514270, -0.479668, 0.710946,
		29.999968, 31.069162, 17.224211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640184, 30.713938, 16.715065>,  <30.359957, 31.404930, 16.726549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640184, 30.713938, 16.715065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281031, 30.678312, 16.887516>,  <30.065538, 30.656937, 16.990986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281031, 30.678312, 16.887516>,  <30.640184, 30.713938, 16.715065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281031, 30.678312, 16.887516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142487, -0.867814, -0.476022,
		0.416533, -0.488843, 0.766507,
		-0.897885, -0.089062, 0.431127,
		30.011665, 30.651594, 17.016853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656631, 30.039059, 16.949173>,  <30.640184, 30.713938, 16.715065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656631, 30.039059, 16.949173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283201, 30.178106, 16.914318>,  <30.059143, 30.261536, 16.893404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283201, 30.178106, 16.914318>,  <30.656631, 30.039059, 16.949173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283201, 30.178106, 16.914318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253562, -0.812544, -0.524860,
		-0.253255, -0.467903, 0.846716,
		-0.933578, 0.347619, -0.087138,
		30.003128, 30.282393, 16.888176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149031, 30.245127, 16.328068>,  <30.656631, 30.039059, 16.949173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149031, 30.245127, 16.328068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526041, 30.145761, 16.238680>,  <31.752247, 30.086142, 16.185047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.526041, 30.145761, 16.238680>,  <31.149031, 30.245127, 16.328068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526041, 30.145761, 16.238680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320129, 0.479705, 0.816946,
		-0.095739, -0.841531, 0.531657,
		0.942524, -0.248413, -0.223472,
		31.808798, 30.071238, 16.171638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436247, 29.902521, 16.868511>,  <31.149031, 30.245127, 16.328068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436247, 29.902521, 16.868511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736000, 30.060190, 16.655701>,  <31.915852, 30.154793, 16.528015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736000, 30.060190, 16.655701>,  <31.436247, 29.902521, 16.868511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736000, 30.060190, 16.655701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353621, 0.441063, 0.824873,
		0.559800, -0.806282, 0.191137,
		0.749384, 0.394174, -0.532025,
		31.960815, 30.178442, 16.496094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034046, 29.762362, 17.241966>,  <31.436247, 29.902521, 16.868511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034046, 29.762362, 17.241966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157547, 30.050638, 16.993685>,  <32.231647, 30.223604, 16.844715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157547, 30.050638, 16.993685>,  <32.034046, 29.762362, 17.241966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157547, 30.050638, 16.993685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411136, 0.487349, 0.770362,
		0.857694, -0.493044, -0.145833,
		0.308751, 0.720693, -0.620705,
		32.250172, 30.266846, 16.807474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750412, 29.872299, 17.431627>,  <32.034046, 29.762362, 17.241966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750412, 29.872299, 17.431627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609837, 30.209215, 17.268143>,  <32.525494, 30.411364, 17.170052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609837, 30.209215, 17.268143>,  <32.750412, 29.872299, 17.431627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609837, 30.209215, 17.268143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373277, 0.526421, 0.763902,
		0.858578, 0.115901, -0.499410,
		-0.351436, 0.842288, -0.408710,
		32.504406, 30.461901, 17.145529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254391, 30.311388, 17.621056>,  <32.750412, 29.872299, 17.431627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254391, 30.311388, 17.621056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948841, 30.546331, 17.514091>,  <32.765511, 30.687298, 17.449913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948841, 30.546331, 17.514091>,  <33.254391, 30.311388, 17.621056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948841, 30.546331, 17.514091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097296, 0.514428, 0.851996,
		0.637991, 0.624799, -0.450105,
		-0.763873, 0.587359, -0.267410,
		32.719681, 30.722540, 17.433868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597008, 30.931906, 17.694252>,  <33.254391, 30.311388, 17.621056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597008, 30.931906, 17.694252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198658, 30.951326, 17.724895>,  <32.959648, 30.962978, 17.743282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198658, 30.951326, 17.724895>,  <33.597008, 30.931906, 17.694252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198658, 30.951326, 17.724895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090126, 0.435074, 0.895872,
		0.010165, 0.899085, -0.437657,
		-0.995878, 0.048551, 0.076608,
		32.899895, 30.965891, 17.747877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491432, 31.610949, 18.056541>,  <33.597008, 30.931906, 17.694252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491432, 31.610949, 18.056541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137581, 31.427727, 18.091471>,  <32.925270, 31.317795, 18.112429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137581, 31.427727, 18.091471>,  <33.491432, 31.610949, 18.056541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137581, 31.427727, 18.091471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085771, 0.343914, 0.935075,
		-0.458346, 0.819701, -0.343523,
		-0.884625, -0.458053, 0.087325,
		32.872192, 31.290310, 18.117668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988014, 32.121876, 18.399570>,  <33.491432, 31.610949, 18.056541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988014, 32.121876, 18.399570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819050, 31.762087, 18.444326>,  <32.717670, 31.546213, 18.471180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819050, 31.762087, 18.444326>,  <32.988014, 32.121876, 18.399570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819050, 31.762087, 18.444326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252726, 0.235427, 0.938458,
		-0.870457, 0.368140, -0.326767,
		-0.422414, -0.899470, 0.111891,
		32.692326, 31.492247, 18.477894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299736, 32.273155, 18.772562>,  <32.988014, 32.121876, 18.399570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299736, 32.273155, 18.772562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399258, 31.892710, 18.845758>,  <32.458973, 31.664444, 18.889677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399258, 31.892710, 18.845758>,  <32.299736, 32.273155, 18.772562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399258, 31.892710, 18.845758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138678, 0.152003, 0.978603,
		-0.958574, -0.268861, -0.094078,
		0.248808, -0.951110, 0.182991,
		32.473900, 31.607376, 18.900656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772358, 32.148621, 19.168478>,  <32.299736, 32.273155, 18.772562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772358, 32.148621, 19.168478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070652, 31.894588, 19.249029>,  <32.249630, 31.742170, 19.297359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070652, 31.894588, 19.249029>,  <31.772358, 32.148621, 19.168478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070652, 31.894588, 19.249029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105954, 0.185365, 0.976941,
		-0.657763, -0.749876, 0.070945,
		0.745736, -0.635079, 0.201379,
		32.294373, 31.704065, 19.309443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465149, 31.751516, 19.593199>,  <31.772358, 32.148621, 19.168478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465149, 31.751516, 19.593199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853251, 31.666780, 19.640076>,  <32.086113, 31.615938, 19.668201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853251, 31.666780, 19.640076>,  <31.465149, 31.751516, 19.593199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853251, 31.666780, 19.640076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095547, 0.109704, 0.989361,
		-0.222444, -0.971127, 0.086200,
		0.970252, -0.211841, 0.117191,
		32.144325, 31.603228, 19.675234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538818, 31.173189, 20.059586>,  <31.465149, 31.751516, 19.593199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538818, 31.173189, 20.059586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865271, 31.404221, 20.052246>,  <32.061142, 31.542839, 20.047842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865271, 31.404221, 20.052246>,  <31.538818, 31.173189, 20.059586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865271, 31.404221, 20.052246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055710, 0.110242, 0.992342,
		0.575177, -0.808858, 0.122149,
		0.816130, 0.577577, -0.018347,
		32.110111, 31.577494, 20.046741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799622, 31.063347, 20.691208>,  <31.538818, 31.173189, 20.059586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799622, 31.063347, 20.691208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012016, 31.375999, 20.560299>,  <32.139454, 31.563591, 20.481754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.012016, 31.375999, 20.560299>,  <31.799622, 31.063347, 20.691208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.012016, 31.375999, 20.560299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160412, 0.286514, 0.944551,
		0.832059, -0.554041, 0.026752,
		0.530985, 0.781631, -0.327272,
		32.171310, 31.610489, 20.462118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383675, 30.954346, 21.016737>,  <31.799622, 31.063347, 20.691208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383675, 30.954346, 21.016737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400677, 31.340654, 20.914379>,  <32.410877, 31.572439, 20.852964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.400677, 31.340654, 20.914379>,  <32.383675, 30.954346, 21.016737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400677, 31.340654, 20.914379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270517, 0.235432, 0.933484,
		0.961776, -0.108905, -0.251249,
		0.042509, 0.965770, -0.255894,
		32.413429, 31.630384, 20.837610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020107, 31.262848, 21.350050>,  <32.383675, 30.954346, 21.016737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020107, 31.262848, 21.350050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800285, 31.580709, 21.246891>,  <32.668392, 31.771427, 21.184996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800285, 31.580709, 21.246891>,  <33.020107, 31.262848, 21.350050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800285, 31.580709, 21.246891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064652, 0.348216, 0.935182,
		0.832951, 0.497261, -0.242740,
		-0.549556, 0.794655, -0.257898,
		32.635418, 31.819105, 21.169521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338982, 31.752295, 21.678604>,  <33.020107, 31.262848, 21.350050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338982, 31.752295, 21.678604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979317, 31.917135, 21.619698>,  <32.763519, 32.016041, 21.584354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979317, 31.917135, 21.619698>,  <33.338982, 31.752295, 21.678604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979317, 31.917135, 21.619698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004358, 0.344929, 0.938619,
		0.437602, 0.843325, -0.311942,
		-0.899158, 0.412101, -0.147266,
		32.709568, 32.040764, 21.575518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348598, 32.462700, 21.867359>,  <33.338982, 31.752295, 21.678604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348598, 32.462700, 21.867359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956848, 32.384163, 21.886412>,  <32.721798, 32.337040, 21.897844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.956848, 32.384163, 21.886412>,  <33.348598, 32.462700, 21.867359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956848, 32.384163, 21.886412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032173, 0.384313, 0.922642,
		-0.199460, 0.902083, -0.382704,
		-0.979378, -0.196343, 0.047632,
		32.663036, 32.325260, 21.900702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135048, 33.048595, 22.247355>,  <33.348598, 32.462700, 21.867359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135048, 33.048595, 22.247355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826042, 32.798866, 22.293715>,  <32.640636, 32.649029, 22.321529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826042, 32.798866, 22.293715>,  <33.135048, 33.048595, 22.247355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826042, 32.798866, 22.293715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109702, 0.310995, 0.944059,
		-0.625445, 0.716588, -0.308740,
		-0.772518, -0.624326, 0.115899,
		32.594288, 32.611568, 22.328484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582653, 33.385159, 22.552771>,  <33.135048, 33.048595, 22.247355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582653, 33.385159, 22.552771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514153, 33.001488, 22.642794>,  <32.473053, 32.771286, 22.696808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514153, 33.001488, 22.642794>,  <32.582653, 33.385159, 22.552771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514153, 33.001488, 22.642794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119083, 0.246911, 0.961694,
		-0.978005, 0.137889, -0.156505,
		-0.171249, -0.959178, 0.225060,
		32.462776, 32.713734, 22.710312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997715, 33.409588, 22.919340>,  <32.582653, 33.385159, 22.552771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997715, 33.409588, 22.919340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201069, 33.086739, 23.039402>,  <32.323082, 32.893028, 23.111439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201069, 33.086739, 23.039402>,  <31.997715, 33.409588, 22.919340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201069, 33.086739, 23.039402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013823, 0.340865, 0.940011,
		-0.861019, -0.482037, 0.162134,
		0.508385, -0.807126, 0.300154,
		32.353584, 32.844601, 23.129448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834497, 33.301342, 23.687548>,  <31.997715, 33.409588, 22.919340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834497, 33.301342, 23.687548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160831, 33.076508, 23.633181>,  <32.356632, 32.941608, 23.600559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.160831, 33.076508, 23.633181>,  <31.834497, 33.301342, 23.687548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160831, 33.076508, 23.633181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272537, 0.166420, 0.947644,
		-0.510035, -0.810164, 0.288960,
		0.815836, -0.562084, -0.135920,
		32.405582, 32.907883, 23.592405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841589, 32.897621, 24.279749>,  <31.834497, 33.301342, 23.687548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841589, 32.897621, 24.279749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212357, 32.927498, 24.132647>,  <32.434818, 32.945423, 24.044386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212357, 32.927498, 24.132647>,  <31.841589, 32.897621, 24.279749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212357, 32.927498, 24.132647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344212, 0.221098, 0.912488,
		0.149465, -0.972387, 0.179230,
		0.926918, 0.074692, -0.367754,
		32.490433, 32.949905, 24.022320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231899, 32.746834, 24.790510>,  <31.841589, 32.897621, 24.279749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231899, 32.746834, 24.790510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512062, 32.868340, 24.532158>,  <32.680161, 32.941242, 24.377146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512062, 32.868340, 24.532158>,  <32.231899, 32.746834, 24.790510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512062, 32.868340, 24.532158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459733, 0.500201, 0.733788,
		0.545969, -0.810880, 0.210692,
		0.700403, 0.303764, -0.645882,
		32.722183, 32.959469, 24.338394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848759, 32.582989, 25.137127>,  <32.231899, 32.746834, 24.790510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848759, 32.582989, 25.137127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952377, 32.863361, 24.871317>,  <33.014549, 33.031586, 24.711830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952377, 32.863361, 24.871317>,  <32.848759, 32.582989, 25.137127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952377, 32.863361, 24.871317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489370, 0.497916, 0.715959,
		0.832715, -0.510663, -0.214032,
		0.259043, 0.700930, -0.664525,
		33.030090, 33.073639, 24.671959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513954, 32.704079, 25.180578>,  <32.848759, 32.582989, 25.137127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513954, 32.704079, 25.180578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379856, 33.048820, 25.028355>,  <33.299397, 33.255665, 24.937021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379856, 33.048820, 25.028355>,  <33.513954, 32.704079, 25.180578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379856, 33.048820, 25.028355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355828, 0.489844, 0.795889,
		0.872351, 0.131405, -0.470888,
		-0.335246, 0.861850, -0.380558,
		33.279282, 33.307377, 24.914186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063637, 33.086330, 25.354683>,  <33.513954, 32.704079, 25.180578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063637, 33.086330, 25.354683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784943, 33.347801, 25.236515>,  <33.617725, 33.504684, 25.165613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784943, 33.347801, 25.236515>,  <34.063637, 33.086330, 25.354683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784943, 33.347801, 25.236515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369458, 0.680015, 0.633309,
		0.614868, 0.332102, -0.715294,
		-0.696734, 0.653672, -0.295422,
		33.575924, 33.543903, 25.147888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440807, 33.650753, 25.251875>,  <34.063637, 33.086330, 25.354683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440807, 33.650753, 25.251875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066563, 33.746319, 25.355841>,  <33.842018, 33.803658, 25.418221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066563, 33.746319, 25.355841>,  <34.440807, 33.650753, 25.251875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066563, 33.746319, 25.355841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352417, 0.675679, 0.647503,
		-0.020923, 0.697408, -0.716368,
		-0.935609, 0.238913, 0.259915,
		33.785881, 33.817993, 25.433815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517372, 34.374126, 25.353109>,  <34.440807, 33.650753, 25.251875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517372, 34.374126, 25.353109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203110, 34.247768, 25.565886>,  <34.014553, 34.171955, 25.693550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203110, 34.247768, 25.565886>,  <34.517372, 34.374126, 25.353109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203110, 34.247768, 25.565886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270725, 0.597580, 0.754723,
		-0.556286, 0.736961, -0.383971,
		-0.785655, -0.315891, 0.531939,
		33.967415, 34.153000, 25.725468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301109, 34.938396, 25.755714>,  <34.517372, 34.374126, 25.353109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301109, 34.938396, 25.755714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112671, 34.638165, 25.941057>,  <33.999607, 34.458027, 26.052263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112671, 34.638165, 25.941057>,  <34.301109, 34.938396, 25.755714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112671, 34.638165, 25.941057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301395, 0.356716, 0.884259,
		-0.828991, 0.556228, 0.058171,
		-0.471099, -0.750576, 0.463359,
		33.971340, 34.412991, 26.080065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920517, 35.222065, 26.324669>,  <34.301109, 34.938396, 25.755714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920517, 35.222065, 26.324669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964695, 34.831146, 26.396996>,  <33.991203, 34.596596, 26.440392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.964695, 34.831146, 26.396996>,  <33.920517, 35.222065, 26.324669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964695, 34.831146, 26.396996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195779, 0.199760, 0.960087,
		-0.974408, -0.070639, 0.213397,
		0.110448, -0.977295, 0.180818,
		33.997829, 34.537956, 26.451241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534122, 35.149494, 26.907080>,  <33.920517, 35.222065, 26.324669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534122, 35.149494, 26.907080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792240, 34.844040, 26.898478>,  <33.947109, 34.660767, 26.893316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792240, 34.844040, 26.898478>,  <33.534122, 35.149494, 26.907080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792240, 34.844040, 26.898478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095109, 0.052373, 0.994088,
		-0.757990, -0.643525, 0.106424,
		0.645295, -0.763631, -0.021507,
		33.985828, 34.614952, 26.892025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494827, 34.961266, 27.521822>,  <33.534122, 35.149494, 26.907080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494827, 34.961266, 27.521822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819252, 34.755516, 27.410391>,  <34.013905, 34.632065, 27.343533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819252, 34.755516, 27.410391>,  <33.494827, 34.961266, 27.521822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819252, 34.755516, 27.410391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289942, -0.060118, 0.955154,
		-0.508052, -0.855457, 0.100379,
		0.811058, -0.514372, -0.278576,
		34.062569, 34.601204, 27.326818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553539, 34.284714, 27.902683>,  <33.494827, 34.961266, 27.521822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553539, 34.284714, 27.902683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906612, 34.429863, 27.783226>,  <34.118458, 34.516953, 27.711552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906612, 34.429863, 27.783226>,  <33.553539, 34.284714, 27.902683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906612, 34.429863, 27.783226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334082, -0.037557, 0.941795,
		0.330536, -0.931082, -0.154380,
		0.882687, 0.362873, -0.298643,
		34.171417, 34.538723, 27.693632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985210, 33.833637, 28.219978>,  <33.553539, 34.284714, 27.902683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985210, 33.833637, 28.219978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219353, 34.147110, 28.136841>,  <34.359837, 34.335194, 28.086958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.219353, 34.147110, 28.136841>,  <33.985210, 33.833637, 28.219978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219353, 34.147110, 28.136841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526972, -0.172925, 0.832104,
		0.616165, -0.596604, -0.514202,
		0.585355, 0.783684, -0.207844,
		34.394958, 34.382214, 28.074488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654457, 33.622181, 28.293022>,  <33.985210, 33.833637, 28.219978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654457, 33.622181, 28.293022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686707, 34.015156, 28.360338>,  <34.706055, 34.250938, 28.400728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686707, 34.015156, 28.360338>,  <34.654457, 33.622181, 28.293022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686707, 34.015156, 28.360338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658833, -0.179222, 0.730629,
		0.747957, 0.051969, -0.661710,
		0.080623, 0.982435, 0.168289,
		34.710892, 34.309887, 28.410826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338524, 33.683399, 28.582891>,  <34.654457, 33.622181, 28.293022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338524, 33.683399, 28.582891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164833, 34.036438, 28.654959>,  <35.060619, 34.248260, 28.698200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164833, 34.036438, 28.654959>,  <35.338524, 33.683399, 28.582891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164833, 34.036438, 28.654959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641491, 0.162566, 0.749707,
		0.632402, 0.441124, -0.636771,
		-0.434231, 0.882600, 0.180170,
		35.034565, 34.301216, 28.709009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909344, 34.141426, 28.697556>,  <35.338524, 33.683399, 28.582891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909344, 34.141426, 28.697556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598061, 34.342800, 28.847723>,  <35.411289, 34.463627, 28.937824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598061, 34.342800, 28.847723>,  <35.909344, 34.141426, 28.697556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598061, 34.342800, 28.847723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517187, 0.174661, 0.837861,
		0.356241, 0.846193, -0.396295,
		-0.778210, 0.503439, 0.375418,
		35.364597, 34.493832, 28.960348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117680, 34.755707, 28.976206>,  <35.909344, 34.141426, 28.697556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117680, 34.755707, 28.976206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773815, 34.668720, 29.161116>,  <35.567497, 34.616528, 29.272062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773815, 34.668720, 29.161116>,  <36.117680, 34.755707, 28.976206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773815, 34.668720, 29.161116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457366, 0.075540, 0.886064,
		-0.227606, 0.973141, 0.034522,
		-0.859658, -0.217462, 0.462275,
		35.515919, 34.603481, 29.299799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229301, 35.133198, 29.614721>,  <36.117680, 34.755707, 28.976206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229301, 35.133198, 29.614721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930626, 34.874992, 29.678942>,  <35.751423, 34.720070, 29.717474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930626, 34.874992, 29.678942>,  <36.229301, 35.133198, 29.614721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930626, 34.874992, 29.678942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383820, -0.220983, 0.896576,
		-0.543273, 0.731081, 0.412765,
		-0.746684, -0.645513, 0.160549,
		35.706619, 34.681339, 29.727106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917828, 35.312977, 30.308466>,  <36.229301, 35.133198, 29.614721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917828, 35.312977, 30.308466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858677, 34.935295, 30.190744>,  <35.823189, 34.708687, 30.120111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858677, 34.935295, 30.190744>,  <35.917828, 35.312977, 30.308466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858677, 34.935295, 30.190744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474293, -0.328829, 0.816651,
		-0.867859, -0.018826, 0.496454,
		-0.147874, -0.944202, -0.294306,
		35.814316, 34.652035, 30.102453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838322, 35.003242, 30.916300>,  <35.917828, 35.312977, 30.308466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838322, 35.003242, 30.916300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900471, 34.698780, 30.664427>,  <35.937759, 34.516102, 30.513304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900471, 34.698780, 30.664427>,  <35.838322, 35.003242, 30.916300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900471, 34.698780, 30.664427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521717, -0.478049, 0.706598,
		-0.838851, -0.438301, 0.322834,
		0.155372, -0.761158, -0.629681,
		35.947083, 34.470432, 30.475523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409241, 34.664486, 31.483822>,  <35.838322, 35.003242, 30.916300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409241, 34.664486, 31.483822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149975, 34.377960, 31.587187>,  <34.994415, 34.206043, 31.649206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.149975, 34.377960, 31.587187>,  <35.409241, 34.664486, 31.483822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149975, 34.377960, 31.587187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660907, -0.360592, 0.658160,
		-0.378268, 0.597383, 0.707140,
		-0.648163, -0.716315, 0.258414,
		34.955524, 34.163067, 31.664711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.323257, 34.629311, 32.246632>,  <35.409241, 34.664486, 31.483822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.323257, 34.629311, 32.246632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244118, 34.274284, 32.080215>,  <35.196632, 34.061268, 31.980366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244118, 34.274284, 32.080215>,  <35.323257, 34.629311, 32.246632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244118, 34.274284, 32.080215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501356, -0.456343, 0.735115,
		-0.842316, -0.063139, 0.535273,
		-0.197853, -0.887561, -0.416040,
		35.184761, 34.008015, 31.955404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815662, 34.223473, 32.674091>,  <35.323257, 34.629311, 32.246632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815662, 34.223473, 32.674091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081326, 33.996391, 32.479523>,  <35.240723, 33.860142, 32.362782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081326, 33.996391, 32.479523>,  <34.815662, 34.223473, 32.674091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081326, 33.996391, 32.479523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401451, -0.278054, 0.872653,
		-0.630661, -0.774853, 0.043234,
		0.664157, -0.567705, -0.486424,
		35.280571, 33.826080, 32.333595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610565, 34.961506, 32.992031>,  <34.815662, 34.223473, 32.674091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610565, 34.961506, 32.992031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976208, 34.850231, 33.110027>,  <35.195595, 34.783466, 33.180824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976208, 34.850231, 33.110027>,  <34.610565, 34.961506, 32.992031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976208, 34.850231, 33.110027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368371, 0.873794, -0.317471,
		-0.169442, 0.398867, 0.901218,
		0.914108, -0.278190, 0.294988,
		35.250439, 34.766773, 33.198524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844688, 35.466637, 33.218891>,  <34.610565, 34.961506, 32.992031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844688, 35.466637, 33.218891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137764, 35.234203, 33.077183>,  <35.313610, 35.094742, 32.992157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137764, 35.234203, 33.077183>,  <34.844688, 35.466637, 33.218891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137764, 35.234203, 33.077183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351705, 0.768951, -0.533871,
		0.582640, 0.266564, 0.767773,
		0.732690, -0.581084, -0.354270,
		35.357571, 35.059879, 32.970901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484241, 35.549419, 33.491638>,  <34.844688, 35.466637, 33.218891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484241, 35.549419, 33.491638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541195, 35.442272, 33.110489>,  <35.575367, 35.377983, 32.881798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541195, 35.442272, 33.110489>,  <35.484241, 35.549419, 33.491638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541195, 35.442272, 33.110489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348544, 0.914594, -0.205025,
		0.926415, -0.302927, 0.223587,
		0.142384, -0.267868, -0.952877,
		35.583912, 35.361912, 32.824627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204094, 35.562180, 33.379932>,  <35.484241, 35.549419, 33.491638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204094, 35.562180, 33.379932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019363, 35.617519, 33.029488>,  <35.908524, 35.650723, 32.819221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019363, 35.617519, 33.029488>,  <36.204094, 35.562180, 33.379932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019363, 35.617519, 33.029488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282370, 0.959302, 0.002636,
		0.840821, -0.246170, -0.482100,
		-0.461830, 0.138347, -0.876112,
		35.880814, 35.659023, 32.766655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626915, 35.965744, 32.920990>,  <36.204094, 35.562180, 33.379932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626915, 35.965744, 32.920990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255203, 35.997341, 32.776657>,  <36.032177, 36.016300, 32.690060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255203, 35.997341, 32.776657>,  <36.626915, 35.965744, 32.920990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255203, 35.997341, 32.776657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129279, 0.984637, -0.117378,
		0.346013, -0.155725, -0.925216,
		-0.929280, 0.078997, -0.360829,
		35.976418, 36.021042, 32.668407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638920, 36.286011, 32.307945>,  <36.626915, 35.965744, 32.920990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638920, 36.286011, 32.307945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269882, 36.347702, 32.449383>,  <36.048458, 36.384716, 32.534245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269882, 36.347702, 32.449383>,  <36.638920, 36.286011, 32.307945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269882, 36.347702, 32.449383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027017, 0.940187, -0.339586,
		-0.384818, -0.303748, -0.871580,
		-0.922597, 0.154226, 0.353594,
		35.993103, 36.393970, 32.555462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196003, 36.769047, 31.821726>,  <36.638920, 36.286011, 32.307945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196003, 36.769047, 31.821726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005352, 36.787811, 32.172867>,  <35.890961, 36.799072, 32.383553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005352, 36.787811, 32.172867>,  <36.196003, 36.769047, 31.821726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005352, 36.787811, 32.172867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069066, 0.993490, -0.090594,
		-0.876386, -0.103810, -0.470288,
		-0.476631, 0.046914, 0.877851,
		35.862362, 36.801888, 32.436222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555786, 37.215714, 31.704985>,  <36.196003, 36.769047, 31.821726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555786, 37.215714, 31.704985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746490, 37.224190, 32.056496>,  <35.860912, 37.229275, 32.267403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746490, 37.224190, 32.056496>,  <35.555786, 37.215714, 31.704985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746490, 37.224190, 32.056496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169859, 0.978646, -0.115754,
		-0.862466, 0.204455, 0.462980,
		0.476760, 0.021192, 0.878778,
		35.889519, 37.230549, 32.320129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357990, 37.761639, 32.085430>,  <35.555786, 37.215714, 31.704985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357990, 37.761639, 32.085430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717228, 37.680901, 32.241726>,  <35.932770, 37.632458, 32.335503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717228, 37.680901, 32.241726>,  <35.357990, 37.761639, 32.085430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717228, 37.680901, 32.241726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212008, 0.977112, 0.017461,
		-0.385325, 0.067159, 0.920334,
		0.898096, -0.201846, 0.390744,
		35.986656, 37.620346, 32.358948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559071, 38.422848, 31.759256>,  <35.357990, 37.761639, 32.085430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559071, 38.422848, 31.759256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872768, 38.622791, 31.906284>,  <36.060986, 38.742756, 31.994501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872768, 38.622791, 31.906284>,  <35.559071, 38.422848, 31.759256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872768, 38.622791, 31.906284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617266, 0.688561, 0.380614,
		-0.062841, -0.525382, 0.848543,
		0.784241, 0.499858, 0.367570,
		36.108040, 38.772747, 32.016556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449577, 38.529648, 32.461208>,  <35.559071, 38.422848, 31.759256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449577, 38.529648, 32.461208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698193, 38.820038, 32.343460>,  <35.847363, 38.994270, 32.272812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698193, 38.820038, 32.343460>,  <35.449577, 38.529648, 32.461208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698193, 38.820038, 32.343460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667486, 0.687468, 0.286094,
		0.410068, 0.018671, 0.911864,
		0.621536, 0.725975, -0.294371,
		35.884655, 39.037830, 32.255150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722271, 38.878551, 33.059521>,  <35.449577, 38.529648, 32.461208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722271, 38.878551, 33.059521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717209, 39.123276, 32.743160>,  <35.714172, 39.270111, 32.553345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717209, 39.123276, 32.743160>,  <35.722271, 38.878551, 33.059521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717209, 39.123276, 32.743160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741287, 0.525097, 0.418051,
		0.671069, 0.591577, 0.446882,
		-0.012653, 0.611809, -0.790904,
		35.713413, 39.306820, 32.505890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219059, 39.324295, 33.312508>,  <35.722271, 38.878551, 33.059521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219059, 39.324295, 33.312508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321751, 39.486870, 32.961761>,  <35.383366, 39.584415, 32.751312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321751, 39.486870, 32.961761>,  <35.219059, 39.324295, 33.312508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321751, 39.486870, 32.961761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651662, 0.742813, 0.153511,
		0.713742, 0.532011, 0.455562,
		0.256728, 0.406439, -0.876868,
		35.398769, 39.608803, 32.698700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423771, 39.976723, 33.410744>,  <35.219059, 39.324295, 33.312508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423771, 39.976723, 33.410744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331036, 39.968475, 33.021729>,  <35.275394, 39.963528, 32.788319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331036, 39.968475, 33.021729>,  <35.423771, 39.976723, 33.410744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331036, 39.968475, 33.021729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406757, 0.910229, 0.077666,
		0.883629, 0.413592, -0.219414,
		-0.231839, -0.020620, -0.972536,
		35.261482, 39.962288, 32.729969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607891, 40.604927, 33.128323>,  <35.423771, 39.976723, 33.410744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607891, 40.604927, 33.128323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335716, 40.451439, 32.878597>,  <35.172413, 40.359344, 32.728764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335716, 40.451439, 32.878597>,  <35.607891, 40.604927, 33.128323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335716, 40.451439, 32.878597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470242, 0.882041, -0.029615,
		0.562033, 0.273427, -0.780613,
		-0.680434, -0.383721, -0.624313,
		35.131584, 40.336323, 32.691303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379566, 40.922066, 32.492676>,  <35.607891, 40.604927, 33.128323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379566, 40.922066, 32.492676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053539, 40.728973, 32.620823>,  <34.857922, 40.613117, 32.697712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.053539, 40.728973, 32.620823>,  <35.379566, 40.922066, 32.492676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.053539, 40.728973, 32.620823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511736, 0.859111, -0.007420,
		-0.271647, -0.169990, -0.947265,
		-0.815067, -0.482734, 0.320364,
		34.809021, 40.584152, 32.716930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741646, 41.146900, 32.125732>,  <35.379566, 40.922066, 32.492676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741646, 41.146900, 32.125732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621586, 41.014477, 32.483574>,  <34.549549, 40.935024, 32.698277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621586, 41.014477, 32.483574>,  <34.741646, 41.146900, 32.125732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621586, 41.014477, 32.483574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532868, 0.836057, 0.130612,
		-0.791178, -0.437502, -0.427351,
		-0.300147, -0.331059, 0.894601,
		34.531540, 40.915157, 32.751953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046043, 41.288639, 32.271988>,  <34.741646, 41.146900, 32.125732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046043, 41.288639, 32.271988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199364, 41.245651, 32.638927>,  <34.291355, 41.219860, 32.859093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199364, 41.245651, 32.638927>,  <34.046043, 41.288639, 32.271988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199364, 41.245651, 32.638927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571004, 0.753093, 0.326811,
		-0.725973, -0.649077, 0.227294,
		0.383299, -0.107470, 0.917351,
		34.314354, 41.213409, 32.914131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490681, 41.258945, 32.721203>,  <34.046043, 41.288639, 32.271988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490681, 41.258945, 32.721203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802589, 41.440010, 32.894199>,  <33.989735, 41.548649, 32.997997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802589, 41.440010, 32.894199>,  <33.490681, 41.258945, 32.721203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802589, 41.440010, 32.894199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595578, 0.749289, 0.289573,
		-0.192982, -0.483384, 0.853872,
		0.779772, 0.452665, 0.432492,
		34.036522, 41.575809, 33.023949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683117, 40.636814, 33.001003>,  <33.490681, 41.258945, 32.721203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683117, 40.636814, 33.001003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518841, 40.308640, 33.160110>,  <33.420277, 40.111736, 33.255573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518841, 40.308640, 33.160110>,  <33.683117, 40.636814, 33.001003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518841, 40.308640, 33.160110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684452, -0.565630, -0.459987,
		0.602378, 0.083338, 0.793848,
		-0.410690, -0.820437, 0.397764,
		33.395634, 40.062508, 33.279438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202370, 40.355354, 33.213078>,  <33.683117, 40.636814, 33.001003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202370, 40.355354, 33.213078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925995, 40.068027, 33.180508>,  <33.760170, 39.895634, 33.160965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925995, 40.068027, 33.180508>,  <34.202370, 40.355354, 33.213078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925995, 40.068027, 33.180508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722069, -0.680288, -0.125797,
		0.034971, -0.145711, 0.988709,
		-0.690937, -0.718315, -0.081423,
		33.718716, 39.852531, 33.156082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049122, 39.878059, 32.650417>,  <34.202370, 40.355354, 33.213078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049122, 39.878059, 32.650417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285141, 40.159946, 32.492828>,  <34.426750, 40.329079, 32.398273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285141, 40.159946, 32.492828>,  <34.049122, 39.878059, 32.650417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285141, 40.159946, 32.492828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695002, -0.691679, -0.196350,
		-0.410877, -0.157959, -0.897903,
		0.590045, 0.704720, -0.393976,
		34.462154, 40.371361, 32.374634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284298, 39.714577, 31.983496>,  <34.049122, 39.878059, 32.650417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284298, 39.714577, 31.983496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550968, 39.922741, 32.196934>,  <34.710968, 40.047638, 32.324997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550968, 39.922741, 32.196934>,  <34.284298, 39.714577, 31.983496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550968, 39.922741, 32.196934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716004, -0.646055, -0.264481,
		0.207092, 0.558378, -0.803322,
		0.666671, 0.520410, 0.533594,
		34.750969, 40.078865, 32.357014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830814, 39.830132, 31.562654>,  <34.284298, 39.714577, 31.983496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830814, 39.830132, 31.562654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001961, 39.886234, 31.919811>,  <35.104649, 39.919895, 32.134106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001961, 39.886234, 31.919811>,  <34.830814, 39.830132, 31.562654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001961, 39.886234, 31.919811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762532, -0.586396, -0.273284,
		0.485258, 0.797788, -0.357853,
		0.427866, 0.140262, 0.892893,
		35.130322, 39.928314, 32.187679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519932, 39.874435, 31.442860>,  <34.830814, 39.830132, 31.562654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519932, 39.874435, 31.442860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525085, 39.831654, 31.840532>,  <35.528175, 39.805984, 32.079136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.525085, 39.831654, 31.840532>,  <35.519932, 39.874435, 31.442860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525085, 39.831654, 31.840532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894813, -0.442499, -0.059197,
		0.446255, 0.890369, 0.090002,
		0.012881, -0.106951, 0.994181,
		35.528950, 39.799568, 32.138786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050934, 40.175865, 31.650528>,  <35.519932, 39.874435, 31.442860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050934, 40.175865, 31.650528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962139, 39.890785, 31.916695>,  <35.908863, 39.719738, 32.076393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962139, 39.890785, 31.916695>,  <36.050934, 40.175865, 31.650528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962139, 39.890785, 31.916695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865748, -0.458016, -0.201749,
		0.448558, 0.531299, 0.718691,
		-0.221983, -0.712701, 0.665417,
		35.895546, 39.676975, 32.116322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713039, 40.021435, 32.070454>,  <36.050934, 40.175865, 31.650528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713039, 40.021435, 32.070454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445576, 39.724316, 32.083965>,  <36.285095, 39.546043, 32.092072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445576, 39.724316, 32.083965>,  <36.713039, 40.021435, 32.070454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445576, 39.724316, 32.083965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732300, -0.665731, -0.143316,
		0.128942, -0.071094, 0.989101,
		-0.668664, -0.742797, 0.033778,
		36.244976, 39.501476, 32.094097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019405, 39.561153, 32.521877>,  <36.713039, 40.021435, 32.070454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019405, 39.561153, 32.521877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754635, 39.357826, 32.301529>,  <36.595772, 39.235828, 32.169319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754635, 39.357826, 32.301529>,  <37.019405, 39.561153, 32.521877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754635, 39.357826, 32.301529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673947, -0.725286, -0.140558,
		-0.328094, -0.464300, 0.822667,
		-0.661929, -0.508317, -0.550875,
		36.556057, 39.205330, 32.136265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378681, 38.938351, 32.435490>,  <37.019405, 39.561153, 32.521877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378681, 38.938351, 32.435490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066460, 38.897156, 32.188869>,  <36.879128, 38.872440, 32.040897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066460, 38.897156, 32.188869>,  <37.378681, 38.938351, 32.435490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066460, 38.897156, 32.188869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446428, -0.782235, -0.434523,
		-0.437536, -0.614412, 0.656552,
		-0.780554, -0.102984, -0.616547,
		36.832294, 38.866261, 32.003906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172169, 38.205132, 32.493198>,  <37.378681, 38.938351, 32.435490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172169, 38.205132, 32.493198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091728, 38.397243, 32.151695>,  <37.043465, 38.512508, 31.946795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091728, 38.397243, 32.151695>,  <37.172169, 38.205132, 32.493198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091728, 38.397243, 32.151695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404879, -0.752875, -0.518894,
		-0.891982, -0.450015, -0.043052,
		-0.201097, 0.480275, -0.853754,
		37.031399, 38.541325, 31.895569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886051, 37.764725, 31.941479>,  <37.172169, 38.205132, 32.493198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886051, 37.764725, 31.941479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080315, 38.063511, 31.759850>,  <37.196873, 38.242783, 31.650871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080315, 38.063511, 31.759850>,  <36.886051, 37.764725, 31.941479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080315, 38.063511, 31.759850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364261, -0.645127, -0.671658,
		-0.794640, 0.160793, -0.585399,
		0.485655, 0.746965, -0.454073,
		37.226009, 38.287601, 31.623627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308846, 37.379295, 32.315796>,  <36.886051, 37.764725, 31.941479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308846, 37.379295, 32.315796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388508, 36.994389, 32.241619>,  <37.436306, 36.763447, 32.197113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388508, 36.994389, 32.241619>,  <37.308846, 37.379295, 32.315796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388508, 36.994389, 32.241619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805630, 0.053028, 0.590041,
		-0.557942, -0.266904, 0.785789,
		0.199153, -0.962263, -0.185439,
		37.448254, 36.705711, 32.185986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514828, 36.987064, 32.905457>,  <37.308846, 37.379295, 32.315796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514828, 36.987064, 32.905457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728008, 36.818596, 32.611904>,  <37.855915, 36.717514, 32.435772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728008, 36.818596, 32.611904>,  <37.514828, 36.987064, 32.905457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728008, 36.818596, 32.611904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817133, 0.031006, 0.575615,
		-0.219681, -0.906449, 0.360681,
		0.532948, -0.421176, -0.733878,
		37.887894, 36.692242, 32.391739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862141, 36.297840, 33.055317>,  <37.514828, 36.987064, 32.905457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862141, 36.297840, 33.055317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040550, 36.557224, 32.808556>,  <38.147594, 36.712852, 32.660500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040550, 36.557224, 32.808556>,  <37.862141, 36.297840, 33.055317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040550, 36.557224, 32.808556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765889, 0.080123, 0.637961,
		0.463119, -0.757022, -0.460910,
		0.446021, 0.648458, -0.616901,
		38.174358, 36.751762, 32.623486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628895, 36.126377, 32.807755>,  <37.862141, 36.297840, 33.055317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628895, 36.126377, 32.807755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556221, 36.518909, 32.832973>,  <38.512619, 36.754429, 32.848106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.556221, 36.518909, 32.832973>,  <38.628895, 36.126377, 32.807755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556221, 36.518909, 32.832973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856847, 0.126524, 0.499805,
		0.482498, 0.144828, -0.863841,
		-0.181682, 0.981334, 0.063048,
		38.501717, 36.813309, 32.851887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161201, 36.567638, 32.524349>,  <38.628895, 36.126377, 32.807755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161201, 36.567638, 32.524349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952805, 36.745094, 32.816032>,  <38.827766, 36.851566, 32.991043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.952805, 36.745094, 32.816032>,  <39.161201, 36.567638, 32.524349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952805, 36.745094, 32.816032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821259, 0.027745, 0.569881,
		0.232590, 0.895775, -0.378799,
		-0.520995, 0.443640, 0.729210,
		38.796505, 36.878185, 33.034794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501377, 37.200985, 32.722878>,  <39.161201, 36.567638, 32.524349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501377, 37.200985, 32.722878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302670, 37.003754, 33.008560>,  <39.183445, 36.885414, 33.179970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302670, 37.003754, 33.008560>,  <39.501377, 37.200985, 32.722878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302670, 37.003754, 33.008560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800960, 0.056408, 0.596055,
		-0.334190, 0.868153, 0.366916,
		-0.496770, -0.493081, 0.714206,
		39.153637, 36.855831, 33.222820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265209, 37.588181, 33.446865>,  <39.501377, 37.200985, 32.722878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265209, 37.588181, 33.446865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387341, 37.207344, 33.453671>,  <39.460621, 36.978840, 33.457752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387341, 37.207344, 33.453671>,  <39.265209, 37.588181, 33.446865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387341, 37.207344, 33.453671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721207, 0.242878, 0.648745,
		-0.621800, -0.185810, 0.760815,
		0.305329, -0.952095, 0.017014,
		39.478939, 36.921715, 33.458775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427322, 37.528164, 34.135345>,  <39.265209, 37.588181, 33.446865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427322, 37.528164, 34.135345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630783, 37.247913, 33.935184>,  <39.752857, 37.079765, 33.815086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630783, 37.247913, 33.935184>,  <39.427322, 37.528164, 34.135345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630783, 37.247913, 33.935184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750838, 0.076543, 0.656037,
		-0.421332, -0.709413, 0.564988,
		0.508647, -0.700624, -0.500404,
		39.783379, 37.037727, 33.785065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669937, 36.982143, 34.637543>,  <39.427322, 37.528164, 34.135345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669937, 36.982143, 34.637543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903866, 36.936424, 34.316315>,  <40.044224, 36.908993, 34.123577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903866, 36.936424, 34.316315>,  <39.669937, 36.982143, 34.637543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903866, 36.936424, 34.316315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781408, -0.186293, 0.595564,
		-0.217681, -0.975823, -0.019631,
		0.584822, -0.114303, -0.803068,
		40.079311, 36.902134, 34.075394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977570, 36.406822, 34.851555>,  <39.669937, 36.982143, 34.637543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977570, 36.406822, 34.851555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208397, 36.538631, 34.552650>,  <40.346893, 36.617718, 34.373306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208397, 36.538631, 34.552650>,  <39.977570, 36.406822, 34.851555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208397, 36.538631, 34.552650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816369, -0.206836, 0.539222,
		0.023127, -0.921211, -0.388375,
		0.577067, 0.329528, -0.747265,
		40.381516, 36.637489, 34.328472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423481, 35.939468, 34.731926>,  <39.977570, 36.406822, 34.851555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423481, 35.939468, 34.731926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612381, 36.253719, 34.572041>,  <40.725719, 36.442268, 34.476109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612381, 36.253719, 34.572041>,  <40.423481, 35.939468, 34.731926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612381, 36.253719, 34.572041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819702, -0.224656, 0.526896,
		0.324146, -0.576470, -0.750074,
		0.472248, 0.785628, -0.399712,
		40.754055, 36.489407, 34.452126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108234, 35.774353, 34.310150>,  <40.423481, 35.939468, 34.731926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108234, 35.774353, 34.310150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071636, 36.106426, 34.530125>,  <41.049675, 36.305672, 34.662109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071636, 36.106426, 34.530125>,  <41.108234, 35.774353, 34.310150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071636, 36.106426, 34.530125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776984, -0.285892, 0.560858,
		0.622836, 0.478606, -0.618879,
		-0.091497, 0.830182, 0.549933,
		41.044186, 36.355480, 34.695103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699261, 36.193790, 34.256359>,  <41.108234, 35.774353, 34.310150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699261, 36.193790, 34.256359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507080, 36.217285, 34.606380>,  <41.391769, 36.231384, 34.816391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.507080, 36.217285, 34.606380>,  <41.699261, 36.193790, 34.256359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507080, 36.217285, 34.606380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796054, -0.389512, 0.463226,
		0.368052, 0.919146, 0.140383,
		-0.480454, 0.058739, 0.875051,
		41.362946, 36.234905, 34.868896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109600, 36.589771, 34.860268>,  <41.699261, 36.193790, 34.256359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109600, 36.589771, 34.860268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845943, 36.333569, 35.017895>,  <41.687752, 36.179848, 35.112473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.845943, 36.333569, 35.017895>,  <42.109600, 36.589771, 34.860268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845943, 36.333569, 35.017895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738729, -0.453390, 0.498715,
		-0.140764, 0.619831, 0.772007,
		-0.659139, -0.640505, 0.394066,
		41.648201, 36.141418, 35.136116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982380, 36.632164, 35.636341>,  <42.109600, 36.589771, 34.860268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982380, 36.632164, 35.636341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958973, 36.264431, 35.480698>,  <41.944931, 36.043793, 35.387314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958973, 36.264431, 35.480698>,  <41.982380, 36.632164, 35.636341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958973, 36.264431, 35.480698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739635, -0.301699, 0.601596,
		-0.670460, -0.252594, 0.697625,
		-0.058513, -0.919333, -0.389105,
		41.941418, 35.988632, 35.363968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050613, 36.000706, 36.139263>,  <41.982380, 36.632164, 35.636341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050613, 36.000706, 36.139263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167458, 35.898254, 35.770683>,  <42.237564, 35.836784, 35.549534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167458, 35.898254, 35.770683>,  <42.050613, 36.000706, 36.139263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167458, 35.898254, 35.770683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790534, -0.477588, 0.383361,
		-0.538264, -0.840420, 0.062973,
		0.292109, -0.256132, -0.921449,
		42.255089, 35.821415, 35.494247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165890, 35.244099, 36.136749>,  <42.050613, 36.000706, 36.139263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165890, 35.244099, 36.136749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397163, 35.429546, 35.868195>,  <42.535927, 35.540817, 35.707062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397163, 35.429546, 35.868195>,  <42.165890, 35.244099, 36.136749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397163, 35.429546, 35.868195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803550, -0.466236, 0.370043,
		-0.141464, -0.753444, -0.642114,
		0.578183, 0.463623, -0.671386,
		42.570618, 35.568634, 35.666779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542538, 34.726513, 35.740959>,  <42.165890, 35.244099, 36.136749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542538, 34.726513, 35.740959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731819, 35.076714, 35.780117>,  <42.845387, 35.286835, 35.803612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.731819, 35.076714, 35.780117>,  <42.542538, 34.726513, 35.740959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.731819, 35.076714, 35.780117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748346, -0.458111, 0.479702,
		0.464823, -0.153739, -0.871954,
		0.473200, 0.875499, 0.097890,
		42.873779, 35.339363, 35.809483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.212296, 34.566898, 35.605267>,  <42.542538, 34.726513, 35.740959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.212296, 34.566898, 35.605267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197910, 34.878410, 35.855774>,  <43.189278, 35.065315, 36.006081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197910, 34.878410, 35.855774>,  <43.212296, 34.566898, 35.605267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197910, 34.878410, 35.855774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821286, -0.334015, 0.462518,
		0.569382, 0.530982, -0.627585,
		-0.035966, 0.778776, 0.626270,
		43.187122, 35.112041, 36.043655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.915195, 34.924046, 35.564930>,  <43.212296, 34.566898, 35.605267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.915195, 34.924046, 35.564930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.738628, 34.998047, 35.916142>,  <43.632690, 35.042446, 36.126869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.738628, 34.998047, 35.916142>,  <43.915195, 34.924046, 35.564930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.738628, 34.998047, 35.916142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829243, -0.289721, 0.477932,
		0.342799, 0.939062, -0.025523,
		-0.441413, 0.184999, 0.878026,
		43.606205, 35.053547, 36.179550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.424175, 35.222382, 35.957596>,  <43.915195, 34.924046, 35.564930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.424175, 35.222382, 35.957596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.181343, 35.027702, 36.208855>,  <44.035645, 34.910892, 36.359612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.181343, 35.027702, 36.208855>,  <44.424175, 35.222382, 35.957596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.181343, 35.027702, 36.208855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794588, -0.363010, 0.486676,
		-0.008842, 0.794573, 0.607105,
		-0.607085, -0.486701, 0.628148,
		43.999218, 34.881691, 36.397301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.466473, 35.388039, 36.648071>,  <44.424175, 35.222382, 35.957596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.466473, 35.388039, 36.648071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363304, 35.001598, 36.643700>,  <44.301403, 34.769733, 36.641079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.363304, 35.001598, 36.643700>,  <44.466473, 35.388039, 36.648071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.363304, 35.001598, 36.643700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832768, -0.228025, 0.504482,
		-0.489874, 0.121017, 0.863353,
		-0.257917, -0.966105, -0.010925,
		44.285931, 34.711765, 36.640423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.855194, 35.109451, 37.226231>,  <44.466473, 35.388039, 36.648071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.855194, 35.109451, 37.226231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.691227, 34.830315, 37.461170>,  <44.592846, 34.662830, 37.602135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.691227, 34.830315, 37.461170>,  <44.855194, 35.109451, 37.226231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.691227, 34.830315, 37.461170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748798, -0.110233, -0.653567,
		0.520833, -0.707716, -0.477358,
		-0.409920, -0.697844, 0.587350,
		44.568253, 34.620960, 37.637375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.636066, 34.367119, 36.904533>,  <44.855194, 35.109451, 37.226231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.636066, 34.367119, 36.904533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.390995, 34.534466, 37.172741>,  <44.243954, 34.634872, 37.333664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.390995, 34.534466, 37.172741>,  <44.636066, 34.367119, 36.904533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.390995, 34.534466, 37.172741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773414, -0.142766, -0.617615,
		-0.162673, -0.896980, 0.411052,
		-0.612673, 0.418383, 0.670514,
		44.207191, 34.659977, 37.373898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.231514, 34.490288, 37.352139>,  <44.636066, 34.367119, 36.904533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.231514, 34.490288, 37.352139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.487774, 34.769325, 37.480469>,  <45.641529, 34.936749, 37.557468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.487774, 34.769325, 37.480469>,  <45.231514, 34.490288, 37.352139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.487774, 34.769325, 37.480469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746038, -0.466666, -0.475027,
		-0.181657, 0.543676, -0.819401,
		0.640647, 0.697596, 0.320830,
		45.679970, 34.978603, 37.576717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.553791, 34.765385, 36.696594>,  <45.231514, 34.490288, 37.352139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.553791, 34.765385, 36.696594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.786335, 34.798229, 37.020390>,  <45.925861, 34.817936, 37.214668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.786335, 34.798229, 37.020390>,  <45.553791, 34.765385, 36.696594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.786335, 34.798229, 37.020390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695275, -0.566900, -0.441833,
		0.422621, 0.819684, -0.386665,
		0.581364, 0.082111, 0.809490,
		45.960743, 34.822861, 37.263237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.834839, 34.118198, 36.721874>,  <45.553791, 34.765385, 36.696594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.834839, 34.118198, 36.721874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.885437, 34.416580, 36.460327>,  <45.915794, 34.595612, 36.303398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.885437, 34.416580, 36.460327>,  <45.834839, 34.118198, 36.721874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.885437, 34.416580, 36.460327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961853, -0.253423, -0.103036,
		-0.242566, -0.615892, -0.749560,
		0.126496, 0.745959, -0.653869,
		45.923386, 34.640369, 36.264168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.168312, 34.001675, 36.123821>,  <45.834839, 34.118198, 36.721874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.168312, 34.001675, 36.123821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.240883, 34.386612, 36.042850>,  <46.284424, 34.617577, 35.994267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.240883, 34.386612, 36.042850>,  <46.168312, 34.001675, 36.123821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.240883, 34.386612, 36.042850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857239, -0.255629, -0.446984,
		-0.481899, -0.092434, -0.871338,
		0.181423, 0.962346, -0.202426,
		46.295311, 34.675316, 35.982124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.785206, 33.936047, 35.842129>,  <46.168312, 34.001675, 36.123821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.785206, 33.936047, 35.842129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.729698, 34.327457, 35.781178>,  <46.696392, 34.562305, 35.744606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.729698, 34.327457, 35.781178>,  <46.785206, 33.936047, 35.842129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.729698, 34.327457, 35.781178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869898, 0.046907, -0.490996,
		-0.473307, -0.200692, -0.857732,
		-0.138772, 0.978531, -0.152381,
		46.688068, 34.621017, 35.735462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.001530, 34.097576, 35.165600>,  <46.785206, 33.936047, 35.842129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.001530, 34.097576, 35.165600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.051128, 34.447811, 35.352348>,  <47.080887, 34.657951, 35.464397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.051128, 34.447811, 35.352348>,  <47.001530, 34.097576, 35.165600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.051128, 34.447811, 35.352348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876345, 0.124066, -0.465432,
		-0.465450, 0.466852, -0.751935,
		0.123998, 0.875590, 0.466870,
		47.088329, 34.710487, 35.492409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.684448, 34.361500, 35.060806>,  <47.001530, 34.097576, 35.165600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.684448, 34.361500, 35.060806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.548599, 34.643223, 35.310158>,  <47.467091, 34.812256, 35.459770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.548599, 34.643223, 35.310158>,  <47.684448, 34.361500, 35.060806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.548599, 34.643223, 35.310158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873980, 0.481242, -0.067561,
		-0.347582, 0.521879, -0.778992,
		-0.339625, 0.704307, 0.623384,
		47.446712, 34.854515, 35.497173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.859802, 35.009953, 34.719162>,  <47.684448, 34.361500, 35.060806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.859802, 35.009953, 34.719162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.801266, 35.052803, 35.112530>,  <47.766144, 35.078514, 35.348549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.801266, 35.052803, 35.112530>,  <47.859802, 35.009953, 34.719162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.801266, 35.052803, 35.112530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803020, 0.593423, 0.054852,
		-0.577706, 0.797731, -0.172862,
		-0.146337, 0.107123, 0.983418,
		47.757366, 35.084942, 35.407555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.433758, 29.430721, 23.655474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.072680, 29.260235, 23.679064>,  <30.856033, 29.157942, 23.693218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.072680, 29.260235, 23.679064>,  <31.433758, 29.430721, 23.655474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072680, 29.260235, 23.679064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042367, 0.224438, 0.973567,
		-0.428187, 0.876337, -0.220656,
		-0.902696, -0.426218, 0.058974,
		30.801870, 29.132370, 23.696756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922998, 29.947891, 23.872280>,  <31.433758, 29.430721, 23.655474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922998, 29.947891, 23.872280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.763832, 29.596060, 23.976589>,  <30.668331, 29.384960, 24.039175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.763832, 29.596060, 23.976589>,  <30.922998, 29.947891, 23.872280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763832, 29.596060, 23.976589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240367, 0.374273, 0.895625,
		-0.885373, 0.293704, -0.360351,
		-0.397918, -0.879578, 0.260775,
		30.644457, 29.332186, 24.054821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233656, 30.075855, 24.176620>,  <30.922998, 29.947891, 23.872280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233656, 30.075855, 24.176620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.335644, 29.712170, 24.308268>,  <30.396837, 29.493958, 24.387255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.335644, 29.712170, 24.308268>,  <30.233656, 30.075855, 24.176620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335644, 29.712170, 24.308268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183252, 0.288762, 0.939700,
		-0.949426, -0.299907, -0.092989,
		0.254970, -0.909215, 0.329117,
		30.412134, 29.439405, 24.407003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688850, 29.828396, 24.521168>,  <30.233656, 30.075855, 24.176620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688850, 29.828396, 24.521168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.000351, 29.624670, 24.667673>,  <30.187250, 29.502436, 24.755577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.000351, 29.624670, 24.667673>,  <29.688850, 29.828396, 24.521168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000351, 29.624670, 24.667673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260994, 0.267880, 0.927428,
		-0.570465, -0.817827, 0.075685,
		0.778750, -0.509312, 0.366264,
		30.233976, 29.471876, 24.777552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526588, 29.748571, 25.184031>,  <29.688850, 29.828396, 24.521168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526588, 29.748571, 25.184031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.906837, 29.633024, 25.229408>,  <30.134987, 29.563696, 25.256636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.906837, 29.633024, 25.229408>,  <29.526588, 29.748571, 25.184031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906837, 29.633024, 25.229408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071391, 0.152200, 0.985768,
		-0.302024, -0.945193, 0.124063,
		0.950623, -0.288868, 0.113446,
		30.192024, 29.546364, 25.263443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592258, 29.167515, 25.759968>,  <29.526588, 29.748571, 25.184031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592258, 29.167515, 25.759968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.961399, 29.320765, 25.744167>,  <30.182884, 29.412714, 25.734688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.961399, 29.320765, 25.744167>,  <29.592258, 29.167515, 25.759968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.961399, 29.320765, 25.744167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048060, -0.012793, 0.998763,
		0.382144, -0.923609, -0.030219,
		0.922852, 0.383123, -0.039500,
		30.238255, 29.435701, 25.732317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.894060, 28.898941, 26.346910>,  <29.592258, 29.167515, 25.759968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.894060, 28.898941, 26.346910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.153526, 29.192627, 26.266750>,  <30.309206, 29.368839, 26.218655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.153526, 29.192627, 26.266750>,  <29.894060, 28.898941, 26.346910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153526, 29.192627, 26.266750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207842, 0.082409, 0.974685,
		0.732142, -0.673898, -0.099144,
		0.648667, 0.734214, -0.200399,
		30.348127, 29.412891, 26.206631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274033, 28.744833, 26.847479>,  <29.894060, 28.898941, 26.346910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274033, 28.744833, 26.847479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.407265, 29.104033, 26.732481>,  <30.487204, 29.319553, 26.663483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.407265, 29.104033, 26.732481>,  <30.274033, 28.744833, 26.847479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407265, 29.104033, 26.732481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257416, 0.206719, 0.943930,
		0.907081, -0.388409, -0.162306,
		0.333079, 0.898001, -0.287494,
		30.507189, 29.373432, 26.646233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941240, 28.905127, 27.241621>,  <30.274033, 28.744833, 26.847479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941240, 28.905127, 27.241621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.799801, 29.254145, 27.106783>,  <30.714937, 29.463556, 27.025881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.799801, 29.254145, 27.106783>,  <30.941240, 28.905127, 27.241621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799801, 29.254145, 27.106783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120283, 0.399797, 0.908677,
		0.927631, 0.280762, -0.246321,
		-0.353600, 0.872545, -0.337093,
		30.693722, 29.515909, 27.005655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448227, 29.311777, 27.401911>,  <30.941240, 28.905127, 27.241621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448227, 29.311777, 27.401911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.127213, 29.548279, 27.370028>,  <30.934605, 29.690180, 27.350897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.127213, 29.548279, 27.370028>,  <31.448227, 29.311777, 27.401911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127213, 29.548279, 27.370028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334588, 0.556661, 0.760381,
		0.493950, 0.583564, -0.644567,
		-0.802536, 0.591254, -0.079709,
		30.886452, 29.725655, 27.346115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696163, 29.954222, 27.392908>,  <31.448227, 29.311777, 27.401911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696163, 29.954222, 27.392908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.309658, 30.006998, 27.481384>,  <31.077755, 30.038664, 27.534470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.309658, 30.006998, 27.481384>,  <31.696163, 29.954222, 27.392908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309658, 30.006998, 27.481384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247039, 0.717690, 0.651070,
		-0.072845, 0.683748, -0.726073,
		-0.966264, 0.131941, 0.221192,
		31.019779, 30.046581, 27.547743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518515, 30.705561, 27.440935>,  <31.696163, 29.954222, 27.392908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518515, 30.705561, 27.440935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.234503, 30.507772, 27.641478>,  <31.064095, 30.389099, 27.761803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.234503, 30.507772, 27.641478>,  <31.518515, 30.705561, 27.440935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234503, 30.507772, 27.641478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137536, 0.600886, 0.787414,
		-0.690609, 0.628042, -0.358640,
		-0.710031, -0.494469, 0.501355,
		31.021494, 30.359432, 27.791883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096390, 31.211216, 27.730257>,  <31.518515, 30.705561, 27.440935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096390, 31.211216, 27.730257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.029316, 30.887129, 27.954910>,  <30.989071, 30.692677, 28.089703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.029316, 30.887129, 27.954910>,  <31.096390, 31.211216, 27.730257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029316, 30.887129, 27.954910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048095, 0.575746, 0.816213,
		-0.984667, 0.109854, -0.135511,
		-0.167684, -0.810216, 0.561634,
		30.979012, 30.644064, 28.123400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594656, 31.400896, 28.206120>,  <31.096390, 31.211216, 27.730257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594656, 31.400896, 28.206120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.788858, 31.087627, 28.361517>,  <30.905380, 30.899666, 28.454756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.788858, 31.087627, 28.361517>,  <30.594656, 31.400896, 28.206120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788858, 31.087627, 28.361517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044895, 0.466130, 0.883577,
		-0.873079, -0.411541, 0.261470,
		0.485507, -0.783171, 0.388493,
		30.934511, 30.852676, 28.478065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359293, 31.214584, 28.991968>,  <30.594656, 31.400896, 28.206120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359293, 31.214584, 28.991968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.727135, 31.079241, 28.912125>,  <30.947840, 30.998035, 28.864218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.727135, 31.079241, 28.912125>,  <30.359293, 31.214584, 28.991968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727135, 31.079241, 28.912125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359530, 0.520096, 0.774751,
		-0.158327, -0.784229, 0.599931,
		0.919603, -0.338357, -0.199609,
		31.003016, 30.977734, 28.852242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681549, 31.207912, 29.613134>,  <30.359293, 31.214584, 28.991968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681549, 31.207912, 29.613134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.014107, 31.115728, 29.410879>,  <31.213642, 31.060419, 29.289526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.014107, 31.115728, 29.410879>,  <30.681549, 31.207912, 29.613134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.014107, 31.115728, 29.410879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555393, 0.373922, 0.742779,
		0.017889, -0.898372, 0.438872,
		0.831396, -0.230458, -0.505638,
		31.263525, 31.046591, 29.259188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099663, 30.920763, 30.132826>,  <30.681549, 31.207912, 29.613134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099663, 30.920763, 30.132826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.336269, 31.059916, 29.841871>,  <31.478233, 31.143408, 29.667299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.336269, 31.059916, 29.841871>,  <31.099663, 30.920763, 30.132826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336269, 31.059916, 29.841871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578949, 0.444635, 0.683460,
		0.561184, -0.825395, 0.061601,
		0.591514, 0.347883, -0.727384,
		31.513723, 31.164280, 29.623655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727657, 31.093552, 30.511997>,  <31.099663, 30.920763, 30.132826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727657, 31.093552, 30.511997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.824768, 31.272673, 30.167780>,  <31.883036, 31.380144, 29.961250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.824768, 31.272673, 30.167780>,  <31.727657, 31.093552, 30.511997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824768, 31.272673, 30.167780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651567, 0.581929, 0.486640,
		0.718693, -0.678846, -0.150493,
		0.242778, 0.447801, -0.860542,
		31.897602, 31.407013, 29.909616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472126, 31.023819, 30.378962>,  <31.727657, 31.093552, 30.511997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472126, 31.023819, 30.378962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.364777, 31.348749, 30.171846>,  <32.300369, 31.543707, 30.047577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.364777, 31.348749, 30.171846>,  <32.472126, 31.023819, 30.378962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364777, 31.348749, 30.171846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624117, 0.556058, 0.548887,
		0.733795, -0.175854, -0.656217,
		-0.268370, 0.812327, -0.517786,
		32.284267, 31.592447, 30.016510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070538, 31.314735, 30.252048>,  <32.472126, 31.023819, 30.378962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070538, 31.314735, 30.252048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.824074, 31.619377, 30.171738>,  <32.676197, 31.802162, 30.123550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.824074, 31.619377, 30.171738>,  <33.070538, 31.314735, 30.252048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824074, 31.619377, 30.171738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606341, 0.621368, 0.496239,
		0.502694, 0.184020, -0.844651,
		-0.616157, 0.761603, -0.200779,
		32.639225, 31.847858, 30.111504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516037, 31.946245, 29.949001>,  <33.070538, 31.314735, 30.252048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516037, 31.946245, 29.949001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.172596, 32.107460, 30.075726>,  <32.966534, 32.204189, 30.151760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.172596, 32.107460, 30.075726>,  <33.516037, 31.946245, 29.949001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172596, 32.107460, 30.075726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475690, 0.856748, 0.199256,
		-0.191117, 0.321784, -0.927324,
		-0.858600, 0.403037, 0.316809,
		32.915016, 32.228371, 30.170769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239544, 32.069424, 30.074472>,  <33.516037, 31.946245, 29.949001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239544, 32.069424, 30.074472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.612930, 32.212601, 30.083572>,  <34.836964, 32.298508, 30.089033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.612930, 32.212601, 30.083572>,  <34.239544, 32.069424, 30.074472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612930, 32.212601, 30.083572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095704, -0.187446, -0.977602,
		-0.345659, 0.914736, -0.209231,
		0.933467, 0.357941, 0.022752,
		34.892971, 32.319984, 30.090399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425243, 32.544388, 29.445328>,  <34.239544, 32.069424, 30.074472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425243, 32.544388, 29.445328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.753685, 32.369213, 29.591753>,  <34.950748, 32.264107, 29.679607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.753685, 32.369213, 29.591753>,  <34.425243, 32.544388, 29.445328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753685, 32.369213, 29.591753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272363, -0.262992, -0.925556,
		0.501610, 0.859676, -0.096664,
		0.821100, -0.437940, 0.366064,
		35.000015, 32.237831, 29.701572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970615, 32.556011, 28.847174>,  <34.425243, 32.544388, 29.445328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970615, 32.556011, 28.847174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.170532, 32.320568, 29.101337>,  <35.290482, 32.179302, 29.253836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.170532, 32.320568, 29.101337>,  <34.970615, 32.556011, 28.847174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170532, 32.320568, 29.101337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556351, -0.344090, -0.756357,
		0.663838, 0.731531, 0.155501,
		0.499793, -0.588612, 0.635408,
		35.320469, 32.143986, 29.291960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817337, 32.634754, 28.873295>,  <34.970615, 32.556011, 28.847174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817337, 32.634754, 28.873295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.689842, 32.270679, 28.979105>,  <35.613346, 32.052235, 29.042591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.689842, 32.270679, 28.979105>,  <35.817337, 32.634754, 28.873295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689842, 32.270679, 28.979105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478387, -0.395406, -0.784092,
		0.818262, -0.123374, 0.561450,
		-0.318737, -0.910183, 0.264525,
		35.594219, 31.997625, 29.058462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351738, 32.127193, 28.684101>,  <35.817337, 32.634754, 28.873295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351738, 32.127193, 28.684101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.037056, 31.893259, 28.763165>,  <35.848248, 31.752899, 28.810602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.037056, 31.893259, 28.763165>,  <36.351738, 32.127193, 28.684101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037056, 31.893259, 28.763165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095259, -0.431348, -0.897142,
		0.609941, -0.686953, 0.395053,
		-0.786700, -0.584837, 0.197658,
		35.801044, 31.717808, 28.822462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550087, 31.436981, 28.414639>,  <36.351738, 32.127193, 28.684101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550087, 31.436981, 28.414639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.151245, 31.465397, 28.425533>,  <35.911942, 31.482447, 28.432070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.151245, 31.465397, 28.425533>,  <36.550087, 31.436981, 28.414639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151245, 31.465397, 28.425533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050741, -0.354142, -0.933814,
		-0.056690, -0.932490, 0.356720,
		-0.997102, 0.071038, 0.027239,
		35.852116, 31.486708, 28.433704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332577, 30.719149, 28.338440>,  <36.550087, 31.436981, 28.414639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332577, 30.719149, 28.338440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.043564, 30.977478, 28.239761>,  <35.870155, 31.132475, 28.180553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.043564, 30.977478, 28.239761>,  <36.332577, 30.719149, 28.338440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043564, 30.977478, 28.239761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061752, -0.415705, -0.907400,
		-0.688574, -0.640391, 0.340241,
		-0.722532, 0.645824, -0.246698,
		35.826805, 31.171225, 28.165752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064640, 30.340670, 27.712654>,  <36.332577, 30.719149, 28.338440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064640, 30.340670, 27.712654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.872936, 30.690918, 27.688681>,  <35.757912, 30.901068, 27.674297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.872936, 30.690918, 27.688681>,  <36.064640, 30.340670, 27.712654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872936, 30.690918, 27.688681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244691, -0.198884, -0.948985,
		-0.842873, -0.440147, 0.309575,
		-0.479262, 0.875623, -0.059933,
		35.729156, 30.953606, 27.670700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461918, 30.196480, 27.425783>,  <36.064640, 30.340670, 27.712654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461918, 30.196480, 27.425783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.486156, 30.585400, 27.335489>,  <35.500702, 30.818752, 27.281313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.486156, 30.585400, 27.335489>,  <35.461918, 30.196480, 27.425783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486156, 30.585400, 27.335489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214875, -0.208142, -0.954204,
		-0.974760, 0.106330, 0.196310,
		0.060601, 0.972302, -0.225736,
		35.504337, 30.877090, 27.267769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816841, 30.304974, 27.175049>,  <35.461918, 30.196480, 27.425783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816841, 30.304974, 27.175049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.066864, 30.591394, 27.050741>,  <35.216877, 30.763247, 26.976156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.066864, 30.591394, 27.050741>,  <34.816841, 30.304974, 27.175049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066864, 30.591394, 27.050741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196011, -0.241387, -0.950427,
		-0.755571, 0.654982, -0.010526,
		0.625053, 0.716053, -0.310768,
		35.254379, 30.806210, 26.957510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455341, 30.769014, 26.772245>,  <34.816841, 30.304974, 27.175049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455341, 30.769014, 26.772245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.823708, 30.856022, 26.642874>,  <35.044727, 30.908226, 26.565250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.823708, 30.856022, 26.642874>,  <34.455341, 30.769014, 26.772245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823708, 30.856022, 26.642874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289122, -0.175277, -0.941109,
		-0.261398, 0.960189, -0.098525,
		0.920912, 0.217519, -0.323429,
		35.099979, 30.921278, 26.545845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237053, 31.198898, 26.353882>,  <34.455341, 30.769014, 26.772245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237053, 31.198898, 26.353882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.605431, 31.063675, 26.276333>,  <34.826458, 30.982540, 26.229803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.605431, 31.063675, 26.276333>,  <34.237053, 31.198898, 26.353882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605431, 31.063675, 26.276333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272949, -0.204462, -0.940050,
		0.278153, 0.918647, -0.280570,
		0.920940, -0.338059, -0.193872,
		34.881714, 30.962257, 26.218172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413239, 31.591154, 25.806702>,  <34.237053, 31.198898, 26.353882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413239, 31.591154, 25.806702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.625141, 31.251904, 25.809298>,  <34.752281, 31.048353, 25.810856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.625141, 31.251904, 25.809298>,  <34.413239, 31.591154, 25.806702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625141, 31.251904, 25.809298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290739, -0.188781, -0.937994,
		0.796762, 0.495020, -0.346591,
		0.529756, -0.848125, 0.006492,
		34.784069, 30.997465, 25.811245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821739, 31.503645, 25.226788>,  <34.413239, 31.591154, 25.806702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821739, 31.503645, 25.226788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.749866, 31.135799, 25.366516>,  <34.706741, 30.915092, 25.450354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.749866, 31.135799, 25.366516>,  <34.821739, 31.503645, 25.226788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749866, 31.135799, 25.366516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544002, -0.202972, -0.814165,
		0.819619, -0.336323, -0.463801,
		-0.179684, -0.919614, 0.349320,
		34.695961, 30.859915, 25.471312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966530, 30.994810, 24.604565>,  <34.821739, 31.503645, 25.226788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966530, 30.994810, 24.604565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.770874, 30.769907, 24.871281>,  <34.653481, 30.634964, 25.031311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.770874, 30.769907, 24.871281>,  <34.966530, 30.994810, 24.604565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770874, 30.769907, 24.871281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341828, -0.579752, -0.739622,
		0.802433, -0.589704, 0.091382,
		-0.489137, -0.562260, 0.666790,
		34.624134, 30.601229, 25.071318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096558, 30.304373, 24.464947>,  <34.966530, 30.994810, 24.604565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096558, 30.304373, 24.464947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.742924, 30.303539, 24.651873>,  <34.530743, 30.303040, 24.764029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.742924, 30.303539, 24.651873>,  <35.096558, 30.304373, 24.464947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742924, 30.303539, 24.651873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359084, -0.636946, -0.682172,
		0.299077, -0.770905, 0.562368,
		-0.884088, -0.002084, 0.467316,
		34.477699, 30.302914, 24.792067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844574, 29.685169, 24.265097>,  <35.096558, 30.304373, 24.464947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844574, 29.685169, 24.265097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.524406, 29.885372, 24.397049>,  <34.332306, 30.005495, 24.476219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.524406, 29.885372, 24.397049>,  <34.844574, 29.685169, 24.265097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524406, 29.885372, 24.397049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580357, -0.509289, -0.635461,
		-0.150049, -0.700084, 0.698118,
		-0.800420, 0.500508, 0.329880,
		34.284279, 30.035524, 24.496014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360836, 29.236502, 24.565910>,  <34.844574, 29.685169, 24.265097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360836, 29.236502, 24.565910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.115311, 29.543098, 24.490307>,  <33.967995, 29.727057, 24.444944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.115311, 29.543098, 24.490307>,  <34.360836, 29.236502, 24.565910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115311, 29.543098, 24.490307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567332, -0.594771, -0.569545,
		-0.548964, -0.242369, 0.799935,
		-0.613818, 0.766489, -0.189004,
		33.931168, 29.773045, 24.433605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704281, 29.027681, 24.700132>,  <34.360836, 29.236502, 24.565910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704281, 29.027681, 24.700132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.655575, 29.341021, 24.456316>,  <33.626350, 29.529024, 24.310026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.655575, 29.341021, 24.456316>,  <33.704281, 29.027681, 24.700132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655575, 29.341021, 24.456316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346926, -0.608967, -0.713303,
		-0.929954, 0.124608, 0.345917,
		-0.121769, 0.783347, -0.609541,
		33.619045, 29.576025, 24.273453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.910046, 29.075798, 24.509556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.116371, 29.281742, 24.235664>,  <33.240166, 29.405308, 24.071329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.116371, 29.281742, 24.235664>,  <32.910046, 29.075798, 24.509556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116371, 29.281742, 24.235664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553239, -0.410069, -0.725100,
		-0.654110, 0.752837, 0.073320,
		0.515816, 0.514859, -0.684729,
		33.271114, 29.436199, 24.030245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356697, 29.441418, 24.060032>,  <32.910046, 29.075798, 24.509556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356697, 29.441418, 24.060032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.695843, 29.415539, 23.849531>,  <32.899330, 29.400011, 23.723230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.695843, 29.415539, 23.849531>,  <32.356697, 29.441418, 24.060032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695843, 29.415539, 23.849531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492503, -0.463734, -0.736473,
		-0.196393, 0.883609, -0.425046,
		0.847862, -0.064698, -0.526254,
		32.950203, 29.396130, 23.691654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111206, 29.481968, 23.404810>,  <32.356697, 29.441418, 24.060032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111206, 29.481968, 23.404810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.467060, 29.313154, 23.335024>,  <32.680573, 29.211866, 23.293152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.467060, 29.313154, 23.335024>,  <32.111206, 29.481968, 23.404810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467060, 29.313154, 23.335024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385996, -0.490757, -0.781130,
		0.244043, 0.762263, -0.599498,
		0.889635, -0.422033, -0.174465,
		32.733952, 29.186544, 23.282684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271004, 29.645792, 22.646227>,  <32.111206, 29.481968, 23.404810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271004, 29.645792, 22.646227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.517227, 29.348280, 22.750443>,  <32.664959, 29.169773, 22.812973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.517227, 29.348280, 22.750443>,  <32.271004, 29.645792, 22.646227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517227, 29.348280, 22.750443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322042, -0.539128, -0.778223,
		0.719291, 0.395135, -0.571392,
		0.615556, -0.743781, 0.260540,
		32.701893, 29.125145, 22.828604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622353, 29.519159, 22.025990>,  <32.271004, 29.645792, 22.646227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622353, 29.519159, 22.025990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.676640, 29.190847, 22.247944>,  <32.709213, 28.993860, 22.381117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.676640, 29.190847, 22.247944>,  <32.622353, 29.519159, 22.025990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676640, 29.190847, 22.247944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107324, -0.568953, -0.815337,
		0.984917, 0.051104, -0.165307,
		0.135719, -0.820781, 0.554887,
		32.717354, 28.944613, 22.414410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909718, 29.020811, 21.562008>,  <32.622353, 29.519159, 22.025990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909718, 29.020811, 21.562008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.795567, 28.814392, 21.885057>,  <32.727077, 28.690540, 22.078886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.795567, 28.814392, 21.885057>,  <32.909718, 29.020811, 21.562008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795567, 28.814392, 21.885057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237698, -0.778227, -0.581259,
		0.928472, -0.357848, 0.099425,
		-0.285378, -0.516049, 0.807622,
		32.709953, 28.659578, 22.127344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223625, 28.310194, 21.447767>,  <32.909718, 29.020811, 21.562008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223625, 28.310194, 21.447767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.907063, 28.265524, 21.688168>,  <32.717125, 28.238722, 21.832407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.907063, 28.265524, 21.688168>,  <33.223625, 28.310194, 21.447767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907063, 28.265524, 21.688168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387098, -0.669366, -0.634117,
		0.473104, -0.734492, 0.486512,
		-0.791408, -0.111675, 0.601000,
		32.669640, 28.232021, 21.868467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180347, 27.687809, 21.554531>,  <33.223625, 28.310194, 21.447767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180347, 27.687809, 21.554531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.803093, 27.806015, 21.615410>,  <32.576740, 27.876938, 21.651937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.803093, 27.806015, 21.615410>,  <33.180347, 27.687809, 21.554531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803093, 27.806015, 21.615410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304148, -0.582463, -0.753811,
		-0.134112, -0.757237, 0.639223,
		-0.943137, 0.295513, 0.152197,
		32.520153, 27.894669, 21.661070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752583, 27.091646, 21.300714>,  <33.180347, 27.687809, 21.554531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752583, 27.091646, 21.300714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.489716, 27.393009, 21.309734>,  <32.331997, 27.573826, 21.315145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.489716, 27.393009, 21.309734>,  <32.752583, 27.091646, 21.300714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489716, 27.393009, 21.309734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395364, -0.319084, -0.861320,
		-0.641730, -0.574947, 0.507562,
		-0.657168, 0.753407, 0.022547,
		32.292564, 27.619032, 21.316498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059582, 26.798645, 21.116047>,  <32.752583, 27.091646, 21.300714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059582, 26.798645, 21.116047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.018387, 27.194239, 21.073513>,  <31.993670, 27.431595, 21.047993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.018387, 27.194239, 21.073513>,  <32.059582, 26.798645, 21.116047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018387, 27.194239, 21.073513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315331, -0.133851, -0.939495,
		-0.943377, -0.063226, 0.325642,
		-0.102988, 0.988983, -0.106334,
		31.987490, 27.490934, 21.041613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415028, 27.040930, 21.000023>,  <32.059582, 26.798645, 21.116047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415028, 27.040930, 21.000023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.668978, 27.295094, 20.824209>,  <31.821348, 27.447592, 20.718721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.668978, 27.295094, 20.824209>,  <31.415028, 27.040930, 21.000023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668978, 27.295094, 20.824209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274493, -0.346274, -0.897077,
		-0.722209, 0.690182, -0.045426,
		0.634876, 0.635408, -0.439532,
		31.859440, 27.485716, 20.692350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255911, 26.948921, 20.357073>,  <31.415028, 27.040930, 21.000023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255911, 26.948921, 20.357073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.563013, 27.197914, 20.296316>,  <31.747274, 27.347309, 20.259861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.563013, 27.197914, 20.296316>,  <31.255911, 26.948921, 20.357073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563013, 27.197914, 20.296316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172041, -0.028087, -0.984689,
		-0.617216, 0.782132, 0.085528,
		0.767754, 0.622480, -0.151894,
		31.793339, 27.384659, 20.250748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992584, 27.363819, 19.803474>,  <31.255911, 26.948921, 20.357073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992584, 27.363819, 19.803474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.378725, 27.465963, 19.781977>,  <31.610409, 27.527250, 19.769077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.378725, 27.465963, 19.781977>,  <30.992584, 27.363819, 19.803474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378725, 27.465963, 19.781977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081260, 0.098451, -0.991819,
		-0.247980, 0.961820, 0.115790,
		0.965351, 0.255360, -0.053744,
		31.668331, 27.542572, 19.765854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107140, 28.094296, 19.449533>,  <30.992584, 27.363819, 19.803474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107140, 28.094296, 19.449533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.448336, 27.892372, 19.396505>,  <31.653053, 27.771217, 19.364689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.448336, 27.892372, 19.396505>,  <31.107140, 28.094296, 19.449533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448336, 27.892372, 19.396505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011014, 0.271356, -0.962416,
		0.521811, 0.819471, 0.237024,
		0.852990, -0.504810, -0.132571,
		31.704233, 27.740929, 19.356733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414089, 28.427084, 18.951309>,  <31.107140, 28.094296, 19.449533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414089, 28.427084, 18.951309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.597872, 28.071804, 18.950705>,  <31.708141, 27.858637, 18.950342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.597872, 28.071804, 18.950705>,  <31.414089, 28.427084, 18.951309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597872, 28.071804, 18.950705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140389, -0.070944, -0.987552,
		0.877035, 0.453950, -0.157289,
		0.459458, -0.888198, -0.001509,
		31.735708, 27.805344, 18.950253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975212, 28.428299, 18.397585>,  <31.414089, 28.427084, 18.951309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975212, 28.428299, 18.397585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.920321, 28.036655, 18.457605>,  <31.887386, 27.801670, 18.493618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.920321, 28.036655, 18.457605>,  <31.975212, 28.428299, 18.397585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920321, 28.036655, 18.457605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047043, -0.157756, -0.986357,
		0.989422, -0.128296, 0.067708,
		-0.137227, -0.979108, 0.150052,
		31.879152, 27.742924, 18.502621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382893, 28.075136, 17.872919>,  <31.975212, 28.428299, 18.397585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382893, 28.075136, 17.872919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.146446, 27.780758, 18.004957>,  <32.004578, 27.604132, 18.084179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.146446, 27.780758, 18.004957>,  <32.382893, 28.075136, 17.872919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146446, 27.780758, 18.004957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027068, -0.427119, -0.903790,
		0.806129, -0.525313, 0.272400,
		-0.591120, -0.735945, 0.330094,
		31.969110, 27.559975, 18.103985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629311, 27.457699, 17.604321>,  <32.382893, 28.075136, 17.872919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629311, 27.457699, 17.604321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.239986, 27.394985, 17.671360>,  <32.006393, 27.357357, 17.711584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.239986, 27.394985, 17.671360>,  <32.629311, 27.457699, 17.604321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239986, 27.394985, 17.671360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101569, -0.360589, -0.927178,
		0.205799, -0.919453, 0.335041,
		-0.973309, -0.156782, 0.167597,
		31.947994, 27.347950, 17.721640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512405, 26.862930, 17.233179>,  <32.629311, 27.457699, 17.604321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512405, 26.862930, 17.233179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.158966, 27.042706, 17.285727>,  <31.946903, 27.150572, 17.317255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.158966, 27.042706, 17.285727>,  <32.512405, 26.862930, 17.233179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158966, 27.042706, 17.285727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222604, -0.156371, -0.962287,
		-0.411949, -0.879517, 0.238217,
		-0.883598, 0.449441, 0.131367,
		31.893887, 27.177538, 17.325136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003338, 26.427462, 17.023529>,  <32.512405, 26.862930, 17.233179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003338, 26.427462, 17.023529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.850384, 26.796589, 17.004816>,  <31.758612, 27.018064, 16.993587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.850384, 26.796589, 17.004816>,  <32.003338, 26.427462, 17.023529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850384, 26.796589, 17.004816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235052, -0.146116, -0.960937,
		-0.893606, -0.356452, 0.272783,
		-0.382386, 0.922817, -0.046785,
		31.735668, 27.073435, 16.990780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377434, 26.396925, 16.620964>,  <32.003338, 26.427462, 17.023529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377434, 26.396925, 16.620964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.459440, 26.785900, 16.576550>,  <31.508644, 27.019285, 16.549900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.459440, 26.785900, 16.576550>,  <31.377434, 26.396925, 16.620964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459440, 26.785900, 16.576550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115535, -0.088610, -0.989343,
		-0.971916, 0.215660, 0.094185,
		0.205016, 0.972440, -0.111038,
		31.520945, 27.077633, 16.543238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802361, 26.689484, 16.228880>,  <31.377434, 26.396925, 16.620964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802361, 26.689484, 16.228880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.112526, 26.937853, 16.182947>,  <31.298626, 27.086874, 16.155388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.112526, 26.937853, 16.182947>,  <30.802361, 26.689484, 16.228880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112526, 26.937853, 16.182947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209210, 0.081040, -0.974507,
		-0.595787, 0.779672, 0.192743,
		0.775415, 0.620922, -0.114833,
		31.345150, 27.124130, 16.148497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574005, 27.350327, 15.990678>,  <30.802361, 26.689484, 16.228880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574005, 27.350327, 15.990678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.942953, 27.246651, 15.876094>,  <31.164322, 27.184446, 15.807343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.942953, 27.246651, 15.876094>,  <30.574005, 27.350327, 15.990678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942953, 27.246651, 15.876094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261245, 0.127767, -0.956779,
		0.284585, 0.957339, 0.050136,
		0.922368, -0.259187, -0.286461,
		31.219664, 27.168894, 15.790155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161224, 27.883497, 15.797983>,  <30.574005, 27.350327, 15.990678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161224, 27.883497, 15.797983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.828794, 28.000004, 15.608465>,  <29.629337, 28.069908, 15.494755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.828794, 28.000004, 15.608465>,  <30.161224, 27.883497, 15.797983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828794, 28.000004, 15.608465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378453, 0.328085, 0.865525,
		0.407544, 0.898624, -0.162432,
		-0.831073, 0.291267, -0.473795,
		29.579473, 28.087383, 15.466327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990568, 28.658440, 15.876077>,  <30.161224, 27.883497, 15.797983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.990568, 28.658440, 15.876077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.683807, 28.401756, 15.872775>,  <29.499750, 28.247746, 15.870794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.683807, 28.401756, 15.872775>,  <29.990568, 28.658440, 15.876077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.683807, 28.401756, 15.872775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198692, 0.225188, 0.953841,
		-0.610230, 0.733144, -0.300200,
		-0.766904, -0.641709, -0.008253,
		29.453737, 28.209244, 15.870299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312531, 28.955111, 16.127029>,  <29.990568, 28.658440, 15.876077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312531, 28.955111, 16.127029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.243731, 28.563557, 16.171211>,  <29.202450, 28.328625, 16.197721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.243731, 28.563557, 16.171211>,  <29.312531, 28.955111, 16.127029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243731, 28.563557, 16.171211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310112, 0.160231, 0.937100,
		-0.935012, 0.126928, -0.331123,
		-0.172000, -0.978885, 0.110456,
		29.192131, 28.269892, 16.204348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702696, 28.919289, 16.567814>,  <29.312531, 28.955111, 16.127029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702696, 28.919289, 16.567814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.831240, 28.540892, 16.584908>,  <28.908365, 28.313854, 16.595163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.831240, 28.540892, 16.584908>,  <28.702696, 28.919289, 16.567814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.831240, 28.540892, 16.584908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280067, -0.051840, 0.958580,
		-0.904594, -0.320017, -0.281600,
		0.321360, -0.945993, 0.042732,
		28.927649, 28.257093, 16.597727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285728, 28.550890, 17.009293>,  <28.702696, 28.919289, 16.567814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285728, 28.550890, 17.009293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.629286, 28.346128, 17.015669>,  <28.835421, 28.223270, 17.019495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.629286, 28.346128, 17.015669>,  <28.285728, 28.550890, 17.009293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.629286, 28.346128, 17.015669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150310, -0.222199, 0.963346,
		-0.489601, -0.829807, -0.267789,
		0.858893, -0.511906, 0.015940,
		28.886953, 28.192556, 17.020451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.153660, 27.991589, 17.398249>,  <28.285728, 28.550890, 17.009293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.153660, 27.991589, 17.398249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.553421, 28.001513, 17.407858>,  <28.793278, 28.007467, 17.413624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.553421, 28.001513, 17.407858>,  <28.153660, 27.991589, 17.398249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.553421, 28.001513, 17.407858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019629, -0.164305, 0.986214,
		0.028416, -0.986098, -0.163720,
		0.999403, 0.024811, 0.024025,
		28.853243, 28.008955, 17.415066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368189, 27.403864, 17.831110>,  <28.153660, 27.991589, 17.398249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368189, 27.403864, 17.831110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.694347, 27.635208, 17.841160>,  <28.890041, 27.774015, 17.847189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.694347, 27.635208, 17.841160>,  <28.368189, 27.403864, 17.831110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694347, 27.635208, 17.841160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088921, -0.168011, 0.981766,
		0.572036, -0.798293, -0.188424,
		0.815394, 0.578361, 0.025123,
		28.938965, 27.808716, 17.848698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785339, 27.096603, 18.191412>,  <28.368189, 27.403864, 17.831110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785339, 27.096603, 18.191412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.947380, 27.462311, 18.192520>,  <29.044603, 27.681736, 18.193186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.947380, 27.462311, 18.192520>,  <28.785339, 27.096603, 18.191412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947380, 27.462311, 18.192520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275694, -0.125046, 0.953077,
		0.871715, -0.385327, -0.302714,
		0.405100, 0.914268, 0.002773,
		29.068911, 27.736591, 18.193352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380508, 27.045021, 18.473719>,  <28.785339, 27.096603, 18.191412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.380508, 27.045021, 18.473719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.333834, 27.439301, 18.522352>,  <29.305828, 27.675869, 18.551533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.333834, 27.439301, 18.522352>,  <29.380508, 27.045021, 18.473719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333834, 27.439301, 18.522352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336101, -0.076007, 0.938754,
		0.934570, 0.150405, -0.322425,
		-0.116687, 0.985698, 0.121585,
		29.298828, 27.735010, 18.558828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031847, 27.304142, 18.689636>,  <29.380508, 27.045021, 18.473719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031847, 27.304142, 18.689636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.770580, 27.585716, 18.801245>,  <29.613821, 27.754660, 18.868210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.770580, 27.585716, 18.801245>,  <30.031847, 27.304142, 18.689636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770580, 27.585716, 18.801245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336832, -0.059916, 0.939657,
		0.678174, 0.707733, -0.197972,
		-0.653165, 0.703934, 0.279020,
		29.574631, 27.796896, 18.884951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347631, 27.793100, 19.170822>,  <30.031847, 27.304142, 18.689636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347631, 27.793100, 19.170822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.964296, 27.850557, 19.269575>,  <29.734295, 27.885031, 19.328827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.964296, 27.850557, 19.269575>,  <30.347631, 27.793100, 19.170822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964296, 27.850557, 19.269575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261942, 0.097337, 0.960162,
		0.113888, 0.984831, -0.130908,
		-0.958340, 0.143641, 0.246883,
		29.676794, 27.893650, 19.343639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368580, 28.236799, 19.626429>,  <30.347631, 27.793100, 19.170822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368580, 28.236799, 19.626429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.998169, 28.096676, 19.682655>,  <29.775923, 28.012602, 19.716393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.998169, 28.096676, 19.682655>,  <30.368580, 28.236799, 19.626429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998169, 28.096676, 19.682655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102520, 0.124984, 0.986848,
		-0.363272, 0.928257, -0.079825,
		-0.926025, -0.350311, 0.140568,
		29.720362, 27.991583, 19.724825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893875, 28.752441, 19.927702>,  <30.368580, 28.236799, 19.626429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893875, 28.752441, 19.927702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.785532, 28.380476, 20.027218>,  <29.720526, 28.157297, 20.086927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.785532, 28.380476, 20.027218>,  <29.893875, 28.752441, 19.927702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785532, 28.380476, 20.027218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148357, 0.215037, 0.965272,
		-0.951118, 0.298362, 0.079715,
		-0.270858, -0.929914, 0.248789,
		29.704275, 28.101501, 20.101854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.448023, 28.878048, 20.425508>,  <29.893875, 28.752441, 19.927702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.448023, 28.878048, 20.425508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.569506, 28.501488, 20.484201>,  <29.642395, 28.275553, 20.519417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.569506, 28.501488, 20.484201>,  <29.448023, 28.878048, 20.425508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569506, 28.501488, 20.484201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134471, 0.194820, 0.971578,
		-0.943229, -0.275342, 0.185759,
		0.303705, -0.941399, 0.146735,
		29.660618, 28.219069, 20.528221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.375492, 28.842699, 21.109322>,  <29.448023, 28.878048, 20.425508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.375492, 28.842699, 21.109322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.548874, 28.485197, 21.063154>,  <29.652903, 28.270697, 21.035454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.548874, 28.485197, 21.063154>,  <29.375492, 28.842699, 21.109322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548874, 28.485197, 21.063154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096564, -0.081277, 0.992003,
		-0.895987, -0.441134, 0.051074,
		0.433455, -0.893753, -0.115421,
		29.678911, 28.217072, 21.028528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047274, 28.542444, 21.624237>,  <29.375492, 28.842699, 21.109322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047274, 28.542444, 21.624237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.387131, 28.347652, 21.543283>,  <29.591045, 28.230778, 21.494711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.387131, 28.347652, 21.543283>,  <29.047274, 28.542444, 21.624237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387131, 28.347652, 21.543283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203723, -0.050885, 0.977705,
		-0.486419, -0.871930, 0.055975,
		0.849643, -0.486978, -0.202384,
		29.642023, 28.201559, 21.482569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214993, 28.293917, 22.247599>,  <29.047274, 28.542444, 21.624237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214993, 28.293917, 22.247599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.572161, 28.210606, 22.087940>,  <29.786461, 28.160620, 21.992146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.572161, 28.210606, 22.087940>,  <29.214993, 28.293917, 22.247599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572161, 28.210606, 22.087940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450146, 0.428711, 0.783311,
		0.007971, -0.879106, 0.476559,
		0.892920, -0.208277, -0.399144,
		29.840036, 28.148123, 21.968197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500093, 27.820642, 22.686001>,  <29.214993, 28.293917, 22.247599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500093, 27.820642, 22.686001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.798290, 28.010561, 22.498892>,  <29.977209, 28.124512, 22.386627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.798290, 28.010561, 22.498892>,  <29.500093, 27.820642, 22.686001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798290, 28.010561, 22.498892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306343, 0.379210, 0.873128,
		0.591941, -0.794209, 0.137248,
		0.745493, 0.474795, -0.467771,
		30.021938, 28.153000, 22.358561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.061495, 27.620270, 23.001999>,  <29.500093, 27.820642, 22.686001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.061495, 27.620270, 23.001999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.159531, 27.968203, 22.830734>,  <30.218353, 28.176962, 22.727976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.159531, 27.968203, 22.830734>,  <30.061495, 27.620270, 23.001999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159531, 27.968203, 22.830734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542922, 0.242745, 0.803935,
		0.803222, -0.429494, -0.412757,
		0.245091, 0.869833, -0.428160,
		30.233057, 28.229153, 22.702286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.775497, 27.611511, 23.058464>,  <30.061495, 27.620270, 23.001999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.775497, 27.611511, 23.058464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.621607, 27.979982, 23.035095>,  <30.529272, 28.201065, 23.021074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.621607, 27.979982, 23.035095>,  <30.775497, 27.611511, 23.058464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.621607, 27.979982, 23.035095> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246495, 0.163529, 0.955248,
		0.889509, 0.353109, -0.289980,
		-0.384727, 0.921180, -0.058421,
		30.506189, 28.256336, 23.017569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349211, 28.069775, 23.406357>,  <30.775497, 27.611511, 23.058464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349211, 28.069775, 23.406357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.006779, 28.276510, 23.407084>,  <30.801319, 28.400551, 23.407520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.006779, 28.276510, 23.407084>,  <31.349211, 28.069775, 23.406357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006779, 28.276510, 23.407084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155835, 0.254766, 0.954364,
		0.492789, 0.817295, -0.298642,
		-0.856081, 0.516839, 0.001817,
		30.749954, 28.431562, 23.407629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.448139, 29.877455, 25.780298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.265381, 30.233042, 25.792839>,  <35.155724, 30.446394, 25.800364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.265381, 30.233042, 25.792839>,  <35.448139, 29.877455, 25.780298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265381, 30.233042, 25.792839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723870, 0.351099, 0.593921,
		0.516968, 0.294057, -0.803912,
		-0.456899, 0.888966, 0.031352,
		35.128311, 30.499731, 25.802244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017365, 30.408873, 25.819132>,  <35.448139, 29.877455, 25.780298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017365, 30.408873, 25.819132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.680592, 30.567282, 25.965731>,  <35.478527, 30.662327, 26.053690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.680592, 30.567282, 25.965731>,  <36.017365, 30.408873, 25.819132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680592, 30.567282, 25.965731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530423, 0.482790, 0.696825,
		0.099018, 0.781076, -0.616535,
		-0.841930, 0.396022, 0.366496,
		35.428013, 30.686089, 26.075680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290714, 31.030243, 26.103849>,  <36.017365, 30.408873, 25.819132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290714, 31.030243, 26.103849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.921135, 31.014896, 26.256081>,  <35.699387, 31.005690, 26.347420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.921135, 31.014896, 26.256081>,  <36.290714, 31.030243, 26.103849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.921135, 31.014896, 26.256081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351178, 0.309284, 0.883752,
		-0.151611, 0.950196, -0.272291,
		-0.923952, -0.038364, 0.380579,
		35.643948, 31.003387, 26.370255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150593, 31.710505, 26.608812>,  <36.290714, 31.030243, 26.103849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150593, 31.710505, 26.608812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.882065, 31.433924, 26.715569>,  <35.720947, 31.267975, 26.779623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.882065, 31.433924, 26.715569>,  <36.150593, 31.710505, 26.608812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882065, 31.433924, 26.715569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043266, 0.322920, 0.945437,
		-0.739906, 0.646235, -0.186865,
		-0.671317, -0.691450, 0.266891,
		35.680668, 31.226488, 26.795635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701725, 32.078384, 27.030190>,  <36.150593, 31.710505, 26.608812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701725, 32.078384, 27.030190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.645241, 31.692139, 27.117504>,  <35.611351, 31.460392, 27.169893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.645241, 31.692139, 27.117504>,  <35.701725, 32.078384, 27.030190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645241, 31.692139, 27.117504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163624, 0.240227, 0.956827,
		-0.976365, 0.099393, -0.191919,
		-0.141206, -0.965615, 0.218286,
		35.602879, 31.402454, 27.182991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145664, 32.099400, 27.457546>,  <35.701725, 32.078384, 27.030190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145664, 32.099400, 27.457546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.328056, 31.748766, 27.519098>,  <35.437492, 31.538385, 27.556030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.328056, 31.748766, 27.519098>,  <35.145664, 32.099400, 27.457546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328056, 31.748766, 27.519098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051020, 0.198361, 0.978800,
		-0.888529, -0.438458, 0.135171,
		0.455975, -0.876588, 0.153879,
		35.464848, 31.485790, 27.565262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762356, 31.920248, 28.014492>,  <35.145664, 32.099400, 27.457546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762356, 31.920248, 28.014492> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.083321, 31.682503, 28.035881>,  <35.275902, 31.539856, 28.048716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.083321, 31.682503, 28.035881>,  <34.762356, 31.920248, 28.014492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083321, 31.682503, 28.035881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013829, 0.108102, 0.994044,
		-0.596605, -0.796897, 0.094962,
		0.802415, -0.594365, 0.053474,
		35.324047, 31.504192, 28.051924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570183, 31.428905, 28.500751>,  <34.762356, 31.920248, 28.014492>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570183, 31.428905, 28.500751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.969196, 31.455130, 28.490671>,  <35.208603, 31.470863, 28.484623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.969196, 31.455130, 28.490671>,  <34.570183, 31.428905, 28.500751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969196, 31.455130, 28.490671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020029, 0.078392, 0.996721,
		0.067311, -0.994765, 0.076886,
		0.997531, 0.065550, -0.025201,
		35.268456, 31.474798, 28.483110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730183, 30.984009, 29.010862>,  <34.570183, 31.428905, 28.500751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730183, 30.984009, 29.010862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.063297, 31.198145, 28.954468>,  <35.263165, 31.326628, 28.920631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.063297, 31.198145, 28.954468>,  <34.730183, 30.984009, 29.010862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063297, 31.198145, 28.954468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064089, 0.159732, 0.985078,
		0.549873, -0.829394, 0.098713,
		0.832785, 0.535342, -0.140987,
		35.313133, 31.358747, 28.912172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164795, 30.919161, 29.660582>,  <34.730183, 30.984009, 29.010862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164795, 30.919161, 29.660582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.316772, 31.248535, 29.492012>,  <35.407959, 31.446159, 29.390869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.316772, 31.248535, 29.492012>,  <35.164795, 30.919161, 29.660582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316772, 31.248535, 29.492012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033622, 0.442994, 0.895894,
		0.924400, -0.354555, 0.140626,
		0.379940, 0.823436, -0.421425,
		35.430756, 31.495565, 29.365585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709743, 31.202927, 30.052118>,  <35.164795, 30.919161, 29.660582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709743, 31.202927, 30.052118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.602341, 31.506529, 29.814863>,  <35.537899, 31.688690, 29.672510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.602341, 31.506529, 29.814863>,  <35.709743, 31.202927, 30.052118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602341, 31.506529, 29.814863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014306, 0.612540, 0.790310,
		0.963171, 0.220691, -0.153615,
		-0.268510, 0.759006, -0.593138,
		35.521790, 31.734230, 29.636921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124714, 31.808081, 30.225931>,  <35.709743, 31.202927, 30.052118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124714, 31.808081, 30.225931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.775440, 31.933098, 30.076336>,  <35.565876, 32.008110, 29.986578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.775440, 31.933098, 30.076336>,  <36.124714, 31.808081, 30.225931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775440, 31.933098, 30.076336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089990, 0.650750, 0.753940,
		0.479012, 0.691983, -0.540099,
		-0.873183, 0.312543, -0.373989,
		35.513485, 32.026859, 29.964140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196037, 32.479801, 30.247393>,  <36.124714, 31.808081, 30.225931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196037, 32.479801, 30.247393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.799393, 32.429405, 30.235870>,  <35.561405, 32.399166, 30.228958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.799393, 32.429405, 30.235870>,  <36.196037, 32.479801, 30.247393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799393, 32.429405, 30.235870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110157, 0.707366, 0.698211,
		-0.067593, 0.695528, -0.715312,
		-0.991613, -0.125990, -0.028804,
		35.501907, 32.391609, 30.227228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810047, 33.159771, 30.197176>,  <36.196037, 32.479801, 30.247393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810047, 33.159771, 30.197176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.535690, 32.907936, 30.343147>,  <35.371075, 32.756836, 30.430731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.535690, 32.907936, 30.343147>,  <35.810047, 33.159771, 30.197176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535690, 32.907936, 30.343147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217131, 0.655700, 0.723126,
		-0.694554, 0.416750, -0.586443,
		-0.685893, -0.629585, 0.364930,
		35.329922, 32.719059, 30.452625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316811, 33.535858, 29.742992>,  <35.810047, 33.159771, 30.197176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316811, 33.535858, 29.742992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.460690, 33.876778, 29.894892>,  <35.547016, 34.081329, 29.986031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.460690, 33.876778, 29.894892>,  <35.316811, 33.535858, 29.742992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460690, 33.876778, 29.894892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564732, 0.522838, -0.638527,
		-0.742760, 0.015223, 0.669384,
		0.359700, 0.852296, 0.379747,
		35.568600, 34.132465, 30.008816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707489, 33.889317, 29.969151>,  <35.316811, 33.535858, 29.742992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707489, 33.889317, 29.969151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.002323, 34.152241, 29.906351>,  <35.179222, 34.309994, 29.868671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.002323, 34.152241, 29.906351>,  <34.707489, 33.889317, 29.969151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002323, 34.152241, 29.906351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569426, 0.478961, -0.668094,
		-0.363947, 0.581843, 0.727324,
		0.737087, 0.657308, -0.157000,
		35.223450, 34.349434, 29.859251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416904, 34.640007, 29.959751>,  <34.707489, 33.889317, 29.969151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416904, 34.640007, 29.959751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.757534, 34.615082, 29.751543>,  <34.961910, 34.600128, 29.626619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.757534, 34.615082, 29.751543>,  <34.416904, 34.640007, 29.959751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757534, 34.615082, 29.751543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446292, 0.434753, -0.782185,
		0.275038, 0.898391, 0.342414,
		0.851574, -0.062314, -0.520518,
		35.013004, 34.596386, 29.595388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339340, 35.155521, 29.466297>,  <34.416904, 34.640007, 29.959751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339340, 35.155521, 29.466297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.633450, 34.932911, 29.311560>,  <34.809917, 34.799343, 29.218718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.633450, 34.932911, 29.311560>,  <34.339340, 35.155521, 29.466297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633450, 34.932911, 29.311560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409306, 0.090323, -0.907915,
		0.540221, 0.825905, -0.161377,
		0.735276, -0.556527, -0.386842,
		34.854031, 34.765953, 29.195507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511066, 35.498486, 28.910112>,  <34.339340, 35.155521, 29.466297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511066, 35.498486, 28.910112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.663280, 35.131855, 28.860989>,  <34.754608, 34.911877, 28.831514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.663280, 35.131855, 28.860989>,  <34.511066, 35.498486, 28.910112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663280, 35.131855, 28.860989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208950, 0.044147, -0.976929,
		0.900851, 0.397416, -0.174719,
		0.380534, -0.916576, -0.122810,
		34.777439, 34.856884, 28.824146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887142, 35.557693, 28.431437>,  <34.511066, 35.498486, 28.910112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887142, 35.557693, 28.431437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.815132, 35.164230, 28.429932>,  <34.771927, 34.928154, 28.429028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.815132, 35.164230, 28.429932>,  <34.887142, 35.557693, 28.431437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815132, 35.164230, 28.429932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106715, 0.023333, -0.994016,
		0.977857, -0.178544, -0.109172,
		-0.180023, -0.983655, -0.003763,
		34.761124, 34.869133, 28.428802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222256, 35.300167, 27.824293>,  <34.887142, 35.557693, 28.431437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222256, 35.300167, 27.824293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.952209, 35.015602, 27.902382>,  <34.790180, 34.844864, 27.949234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.952209, 35.015602, 27.902382>,  <35.222256, 35.300167, 27.824293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952209, 35.015602, 27.902382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170116, -0.107366, -0.979558,
		0.717830, -0.694525, -0.048539,
		-0.675115, -0.711413, 0.195220,
		34.749676, 34.802177, 27.960949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376999, 34.835411, 27.281496>,  <35.222256, 35.300167, 27.824293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376999, 34.835411, 27.281496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.014778, 34.728115, 27.412958>,  <34.797443, 34.663738, 27.491837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.014778, 34.728115, 27.412958>,  <35.376999, 34.835411, 27.281496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014778, 34.728115, 27.412958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276312, -0.214908, -0.936732,
		0.321904, -0.939074, 0.120492,
		-0.905555, -0.268244, 0.328657,
		34.743111, 34.647640, 27.511555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230320, 34.161011, 27.041613>,  <35.376999, 34.835411, 27.281496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230320, 34.161011, 27.041613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.862263, 34.300468, 27.112917>,  <34.641426, 34.384144, 27.155699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.862263, 34.300468, 27.112917>,  <35.230320, 34.161011, 27.041613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862263, 34.300468, 27.112917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316218, -0.393121, -0.863401,
		-0.230942, -0.850825, 0.471977,
		-0.920148, 0.348643, 0.178259,
		34.586220, 34.405060, 27.166395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845940, 33.605824, 26.756950>,  <35.230320, 34.161011, 27.041613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845940, 33.605824, 26.756950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.596176, 33.914833, 26.803112>,  <34.446320, 34.100239, 26.830809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.596176, 33.914833, 26.803112>,  <34.845940, 33.605824, 26.756950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596176, 33.914833, 26.803112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431669, -0.218155, -0.875254,
		-0.650982, -0.596331, 0.469694,
		-0.624407, 0.772527, 0.115402,
		34.408855, 34.146591, 26.837732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054798, 33.317181, 26.862110>,  <34.845940, 33.605824, 26.756950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054798, 33.317181, 26.862110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.052364, 33.696709, 26.735804>,  <34.050903, 33.924423, 26.660019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.052364, 33.696709, 26.735804>,  <34.054798, 33.317181, 26.862110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052364, 33.696709, 26.735804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512256, -0.274152, -0.813901,
		-0.858811, 0.156802, 0.487705,
		-0.006084, 0.948817, -0.315767,
		34.050541, 33.981354, 26.641073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325245, 33.350643, 26.645607>,  <34.054798, 33.317181, 26.862110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325245, 33.350643, 26.645607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.504379, 33.667549, 26.479830>,  <33.611858, 33.857693, 26.380363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.504379, 33.667549, 26.479830>,  <33.325245, 33.350643, 26.645607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504379, 33.667549, 26.479830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484602, -0.174465, -0.857160,
		-0.751401, 0.584707, 0.305800,
		0.447836, 0.792263, -0.414443,
		33.638729, 33.905228, 26.355497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821823, 33.789680, 26.370935>,  <33.325245, 33.350643, 26.645607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821823, 33.789680, 26.370935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.152790, 33.904865, 26.178082>,  <33.351372, 33.973976, 26.062370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.152790, 33.904865, 26.178082>,  <32.821823, 33.789680, 26.370935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152790, 33.904865, 26.178082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388858, -0.325630, -0.861832,
		-0.405170, 0.900580, -0.157458,
		0.827422, 0.287960, -0.482133,
		33.401016, 33.991253, 26.033442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564781, 34.134850, 25.866041>,  <32.821823, 33.789680, 26.370935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564781, 34.134850, 25.866041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.929333, 34.041031, 25.730762>,  <33.148064, 33.984741, 25.649595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.929333, 34.041031, 25.730762>,  <32.564781, 34.134850, 25.866041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929333, 34.041031, 25.730762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409007, -0.424646, -0.807706,
		0.045828, 0.874451, -0.482944,
		0.911380, -0.234543, -0.338196,
		33.202747, 33.970669, 25.629303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376392, 34.785618, 25.549368>,  <32.564781, 34.134850, 25.866041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376392, 34.785618, 25.549368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.983383, 34.822914, 25.613817>,  <31.747578, 34.845291, 25.652487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.983383, 34.822914, 25.613817>,  <32.376392, 34.785618, 25.549368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983383, 34.822914, 25.613817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171607, 0.118225, 0.978046,
		0.072147, 0.988599, -0.132160,
		-0.982520, 0.093242, 0.161121,
		31.688627, 34.850887, 25.662153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266571, 35.532570, 25.945772>,  <32.376392, 34.785618, 25.549368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266571, 35.532570, 25.945772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.945841, 35.303005, 26.012358>,  <31.753405, 35.165268, 26.052309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.945841, 35.303005, 26.012358>,  <32.266571, 35.532570, 25.945772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945841, 35.303005, 26.012358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102848, 0.141876, 0.984527,
		-0.588647, 0.806535, -0.054734,
		-0.801821, -0.573910, 0.166465,
		31.705294, 35.130833, 26.062298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872375, 35.915604, 26.400501>,  <32.266571, 35.532570, 25.945772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872375, 35.915604, 26.400501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.711138, 35.550030, 26.419434>,  <31.614395, 35.330685, 26.430794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.711138, 35.550030, 26.419434>,  <31.872375, 35.915604, 26.400501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711138, 35.550030, 26.419434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223215, 0.148346, 0.963415,
		-0.887518, 0.377784, -0.263801,
		-0.403096, -0.913933, 0.047332,
		31.590208, 35.275848, 26.433634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290010, 35.959251, 26.710875>,  <31.872375, 35.915604, 26.400501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290010, 35.959251, 26.710875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.374184, 35.571709, 26.763073>,  <31.424688, 35.339184, 26.794392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.374184, 35.571709, 26.763073>,  <31.290010, 35.959251, 26.710875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374184, 35.571709, 26.763073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224504, 0.082023, 0.971015,
		-0.951481, -0.233630, -0.200252,
		0.210433, -0.968860, 0.130494,
		31.437313, 35.281052, 26.802221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858515, 35.648113, 27.252298>,  <31.290010, 35.959251, 26.710875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858515, 35.648113, 27.252298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.162149, 35.389275, 27.223856>,  <31.344330, 35.233971, 27.206791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.162149, 35.389275, 27.223856>,  <30.858515, 35.648113, 27.252298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162149, 35.389275, 27.223856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037117, -0.152067, 0.987673,
		-0.649930, -0.747091, -0.139450,
		0.759088, -0.647094, -0.071104,
		31.389875, 35.195145, 27.202524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649675, 34.976776, 27.653313>,  <30.858515, 35.648113, 27.252298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649675, 34.976776, 27.653313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.049025, 34.998238, 27.661051>,  <31.288633, 35.011116, 27.665693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.049025, 34.998238, 27.661051>,  <30.649675, 34.976776, 27.653313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049025, 34.998238, 27.661051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011469, -0.143407, 0.989597,
		0.055872, -0.988208, -0.142559,
		0.998372, 0.053656, 0.019346,
		31.348536, 35.014336, 27.666855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888542, 34.529495, 28.091076>,  <30.649675, 34.976776, 27.653313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888542, 34.529495, 28.091076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.214378, 34.759521, 28.060759>,  <31.409880, 34.897537, 28.042568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.214378, 34.759521, 28.060759>,  <30.888542, 34.529495, 28.091076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214378, 34.759521, 28.060759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189507, -0.140360, 0.971795,
		0.548205, -0.805979, -0.223314,
		0.814591, 0.575063, -0.075793,
		31.458755, 34.932041, 28.038021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340408, 34.144802, 28.461308>,  <30.888542, 34.529495, 28.091076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340408, 34.144802, 28.461308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.493940, 34.513226, 28.435001>,  <31.586060, 34.734280, 28.419218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.493940, 34.513226, 28.435001>,  <31.340408, 34.144802, 28.461308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493940, 34.513226, 28.435001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338197, -0.073951, 0.938165,
		0.859241, -0.382338, -0.339884,
		0.383831, 0.921058, -0.065764,
		31.609089, 34.789543, 28.415272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042709, 34.052654, 28.456945>,  <31.340408, 34.144802, 28.461308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042709, 34.052654, 28.456945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.968777, 34.434757, 28.549309>,  <31.924417, 34.664021, 28.604727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.968777, 34.434757, 28.549309>,  <32.042709, 34.052654, 28.456945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968777, 34.434757, 28.549309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569514, -0.087375, 0.817325,
		0.800932, 0.282572, -0.527883,
		-0.184829, 0.955259, 0.230910,
		31.913328, 34.721336, 28.618582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637634, 34.315022, 28.594482>,  <32.042709, 34.052654, 28.456945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637634, 34.315022, 28.594482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.400963, 34.586880, 28.767918>,  <32.258961, 34.749996, 28.871979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.400963, 34.586880, 28.767918>,  <32.637634, 34.315022, 28.594482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400963, 34.586880, 28.767918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493379, -0.120075, 0.861487,
		0.637570, 0.723645, -0.264278,
		-0.591677, 0.679647, 0.433588,
		32.223461, 34.790775, 28.897993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081020, 34.804638, 28.945415>,  <32.637634, 34.315022, 28.594482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081020, 34.804638, 28.945415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.729733, 34.816006, 29.136377>,  <32.518959, 34.822826, 29.250956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.729733, 34.816006, 29.136377>,  <33.081020, 34.804638, 28.945415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729733, 34.816006, 29.136377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469245, -0.141614, 0.871639,
		0.092382, 0.989514, 0.111032,
		-0.878223, 0.028422, 0.477407,
		32.466267, 34.824532, 29.279600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144432, 35.249363, 29.486244>,  <33.081020, 34.804638, 28.945415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144432, 35.249363, 29.486244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.828934, 35.019627, 29.573895>,  <32.639633, 34.881786, 29.626484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.828934, 35.019627, 29.573895>,  <33.144432, 35.249363, 29.486244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828934, 35.019627, 29.573895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341374, -0.112797, 0.933135,
		-0.511220, 0.810808, 0.285032,
		-0.788744, -0.574340, 0.219125,
		32.592312, 34.847324, 29.639631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<31.376444, 35.194920, 21.986834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049183, 34.988319, 22.087908>,  <30.852825, 34.864357, 22.148552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049183, 34.988319, 22.087908>,  <31.376444, 35.194920, 21.986834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049183, 34.988319, 22.087908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224193, 0.118129, 0.967359,
		-0.529493, 0.848098, 0.019149,
		-0.818153, -0.516503, 0.252686,
		30.803738, 34.833370, 22.163713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167526, 35.586361, 22.517645>,  <31.376444, 35.194920, 21.986834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167526, 35.586361, 22.517645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941523, 35.257370, 22.543882>,  <30.805920, 35.059975, 22.559626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941523, 35.257370, 22.543882>,  <31.167526, 35.586361, 22.517645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941523, 35.257370, 22.543882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077777, 0.026054, 0.996630,
		-0.821411, 0.568207, 0.049249,
		-0.565009, -0.822473, 0.065594,
		30.772020, 35.010628, 22.563560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647694, 35.782749, 23.012356>,  <31.167526, 35.586361, 22.517645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647694, 35.782749, 23.012356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661406, 35.382984, 23.011856>,  <30.669634, 35.143124, 23.011557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661406, 35.382984, 23.011856>,  <30.647694, 35.782749, 23.012356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661406, 35.382984, 23.011856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128099, -0.005633, 0.991745,
		-0.991169, -0.033839, -0.128217,
		0.034282, -0.999411, -0.001248,
		30.671690, 35.083160, 23.011482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184128, 35.555923, 23.582453>,  <30.647694, 35.782749, 23.012356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184128, 35.555923, 23.582453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410816, 35.230717, 23.529039>,  <30.546829, 35.035591, 23.496992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410816, 35.230717, 23.529039>,  <30.184128, 35.555923, 23.582453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.410816, 35.230717, 23.529039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091218, -0.099161, 0.990882,
		-0.818844, -0.573735, 0.017965,
		0.566722, -0.813016, -0.133532,
		30.580833, 34.986813, 23.488979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031042, 35.190624, 24.139540>,  <30.184128, 35.555923, 23.582453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031042, 35.190624, 24.139540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357271, 35.001167, 24.006567>,  <30.553009, 34.887493, 23.926785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357271, 35.001167, 24.006567>,  <30.031042, 35.190624, 24.139540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357271, 35.001167, 24.006567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229676, -0.262335, 0.937246,
		-0.531125, -0.840741, -0.105169,
		0.815570, -0.473640, -0.332431,
		30.601942, 34.859074, 23.906837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040852, 34.629284, 24.467348>,  <30.031042, 35.190624, 24.139540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040852, 34.629284, 24.467348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420452, 34.654999, 24.343887>,  <30.648212, 34.670429, 24.269812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420452, 34.654999, 24.343887>,  <30.040852, 34.629284, 24.467348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.420452, 34.654999, 24.343887> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314966, -0.236638, 0.919129,
		-0.013949, -0.969468, -0.244819,
		0.949000, 0.064289, -0.308650,
		30.705153, 34.674286, 24.251291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.488865, 33.992958, 24.762493>,  <30.040852, 34.629284, 24.467348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.488865, 33.992958, 24.762493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729221, 34.299980, 24.673244>,  <30.873434, 34.484196, 24.619696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729221, 34.299980, 24.673244>,  <30.488865, 33.992958, 24.762493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729221, 34.299980, 24.673244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441126, -0.085652, 0.893348,
		0.666588, -0.635229, -0.390058,
		0.600890, 0.767560, -0.223121,
		30.909489, 34.530247, 24.606308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225321, 33.812748, 24.885412>,  <30.488865, 33.992958, 24.762493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225321, 33.812748, 24.885412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239077, 34.212074, 24.904085>,  <31.247330, 34.451672, 24.915289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239077, 34.212074, 24.904085>,  <31.225321, 33.812748, 24.885412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239077, 34.212074, 24.904085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272205, -0.054302, 0.960706,
		0.961625, -0.020332, -0.273614,
		0.034391, 0.998317, 0.046683,
		31.249393, 34.511570, 24.918091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884619, 34.013611, 25.245947>,  <31.225321, 33.812748, 24.885412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884619, 34.013611, 25.245947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631182, 34.319916, 25.290085>,  <31.479120, 34.503696, 25.316568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631182, 34.319916, 25.290085>,  <31.884619, 34.013611, 25.245947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631182, 34.319916, 25.290085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260584, 0.076930, 0.962381,
		0.728462, 0.638511, -0.248287,
		-0.633591, 0.765758, 0.110345,
		31.441105, 34.549644, 25.323189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645016, 34.367897, 24.953608>,  <31.884619, 34.013611, 25.245947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645016, 34.367897, 24.953608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960964, 34.126545, 24.997492>,  <33.150536, 33.981735, 25.023823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960964, 34.126545, 24.997492>,  <32.645016, 34.367897, 24.953608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960964, 34.126545, 24.997492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275714, -0.509181, -0.815302,
		0.547797, 0.613736, -0.568548,
		0.789873, -0.603377, 0.109712,
		33.197926, 33.945534, 25.030405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936249, 34.383301, 24.325558>,  <32.645016, 34.367897, 24.953608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936249, 34.383301, 24.325558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052799, 34.036976, 24.488270>,  <33.122730, 33.829182, 24.585897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052799, 34.036976, 24.488270>,  <32.936249, 34.383301, 24.325558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052799, 34.036976, 24.488270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238765, -0.477596, -0.845514,
		0.926333, 0.149236, -0.345885,
		0.291374, -0.865812, 0.406781,
		33.140213, 33.777233, 24.610304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350574, 34.040787, 23.846674>,  <32.936249, 34.383301, 24.325558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350574, 34.040787, 23.846674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249378, 33.737675, 24.087263>,  <33.188660, 33.555809, 24.231617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249378, 33.737675, 24.087263>,  <33.350574, 34.040787, 23.846674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.249378, 33.737675, 24.087263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278536, -0.538322, -0.795378,
		0.926506, -0.368755, -0.074878,
		-0.252991, -0.757779, 0.601470,
		33.173481, 33.510342, 24.267704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644245, 33.400005, 23.602592>,  <33.350574, 34.040787, 23.846674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644245, 33.400005, 23.602592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318478, 33.307808, 23.815607>,  <33.123016, 33.252487, 23.943417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318478, 33.307808, 23.815607>,  <33.644245, 33.400005, 23.602592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318478, 33.307808, 23.815607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130368, -0.821584, -0.554981,
		0.565445, -0.521412, 0.639063,
		-0.814417, -0.230498, 0.532536,
		33.074154, 33.238659, 23.975368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696438, 32.725300, 23.575615>,  <33.644245, 33.400005, 23.602592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696438, 32.725300, 23.575615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318462, 32.789307, 23.689800>,  <33.091679, 32.827709, 23.758312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318462, 32.789307, 23.689800>,  <33.696438, 32.725300, 23.575615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318462, 32.789307, 23.689800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317759, -0.657213, -0.683447,
		0.078251, -0.736524, 0.671870,
		-0.944937, 0.160013, 0.285465,
		33.034981, 32.837311, 23.775440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395741, 32.073811, 23.559322>,  <33.696438, 32.725300, 23.575615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395741, 32.073811, 23.559322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084343, 32.323807, 23.582424>,  <32.897503, 32.473804, 23.596285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.084343, 32.323807, 23.582424>,  <33.395741, 32.073811, 23.559322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084343, 32.323807, 23.582424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465940, -0.513815, -0.720343,
		-0.420529, -0.587695, 0.691209,
		-0.778496, 0.624987, 0.057757,
		32.850796, 32.511303, 23.599751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831207, 31.709129, 23.445190>,  <33.395741, 32.073811, 23.559322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831207, 31.709129, 23.445190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672710, 32.066711, 23.361441>,  <32.577610, 32.281261, 23.311192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672710, 32.066711, 23.361441>,  <32.831207, 31.709129, 23.445190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672710, 32.066711, 23.361441> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356786, -0.360040, -0.862018,
		-0.845987, -0.266870, 0.461614,
		-0.396246, 0.893953, -0.209374,
		32.553837, 32.334896, 23.298628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184723, 31.530630, 23.135004>,  <32.831207, 31.709129, 23.445190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184723, 31.530630, 23.135004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269436, 31.893860, 22.990477>,  <32.320263, 32.111797, 22.903761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269436, 31.893860, 22.990477>,  <32.184723, 31.530630, 23.135004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269436, 31.893860, 22.990477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324893, -0.283264, -0.902334,
		-0.921734, 0.308486, 0.235037,
		0.211780, 0.908074, -0.361319,
		32.332970, 32.166283, 22.882080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738426, 31.625824, 22.606073>,  <32.184723, 31.530630, 23.135004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738426, 31.625824, 22.606073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979042, 31.930168, 22.508713>,  <32.123413, 32.112774, 22.450296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979042, 31.930168, 22.508713>,  <31.738426, 31.625824, 22.606073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979042, 31.930168, 22.508713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307416, -0.060747, -0.949634,
		-0.737324, 0.646067, 0.197359,
		0.601539, 0.760859, -0.243402,
		32.159504, 32.158424, 22.435692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392719, 32.082123, 22.020060>,  <31.738426, 31.625824, 22.606073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392719, 32.082123, 22.020060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783859, 32.153893, 21.976952>,  <32.018543, 32.196953, 21.951086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.783859, 32.153893, 21.976952>,  <31.392719, 32.082123, 22.020060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783859, 32.153893, 21.976952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076534, -0.172723, -0.981992,
		-0.194805, 0.968491, -0.155165,
		0.977852, 0.179421, -0.107770,
		32.077213, 32.207718, 21.944620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443556, 32.444935, 21.377684>,  <31.392719, 32.082123, 22.020060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443556, 32.444935, 21.377684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819893, 32.320473, 21.431343>,  <32.045696, 32.245796, 21.463539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819893, 32.320473, 21.431343>,  <31.443556, 32.444935, 21.377684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819893, 32.320473, 21.431343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143891, 0.008450, -0.989558,
		0.306775, 0.950321, 0.052722,
		0.940842, -0.311158, 0.134150,
		32.102146, 32.227127, 21.471588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.866011, 32.825420, 20.880754>,  <31.443556, 32.444935, 21.377684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.866011, 32.825420, 20.880754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094204, 32.515915, 20.990908>,  <32.231121, 32.330212, 21.056999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094204, 32.515915, 20.990908>,  <31.866011, 32.825420, 20.880754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094204, 32.515915, 20.990908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329282, -0.091689, -0.939769,
		0.752412, 0.626800, 0.202481,
		0.570482, -0.773767, 0.275382,
		32.265350, 32.283787, 21.073523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404194, 32.880306, 20.446924>,  <31.866011, 32.825420, 20.880754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404194, 32.880306, 20.446924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441326, 32.503811, 20.576817>,  <32.463604, 32.277912, 20.654753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441326, 32.503811, 20.576817>,  <32.404194, 32.880306, 20.446924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441326, 32.503811, 20.576817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318859, -0.280861, -0.905232,
		0.943245, 0.187575, 0.274051,
		0.092829, -0.941240, 0.324731,
		32.469173, 32.221439, 20.674236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852177, 32.633686, 20.030443>,  <32.404194, 32.880306, 20.446924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852177, 32.633686, 20.030443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684601, 32.300579, 20.175209>,  <32.584057, 32.100716, 20.262070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684601, 32.300579, 20.175209>,  <32.852177, 32.633686, 20.030443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684601, 32.300579, 20.175209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194270, -0.471555, -0.860171,
		0.886988, -0.290051, 0.359336,
		-0.418940, -0.832770, 0.361916,
		32.558918, 32.050747, 20.283783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.009661, 29.280529, 23.013554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.327087, 29.491703, 22.892534>,  <27.517544, 29.618408, 22.819923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.327087, 29.491703, 22.892534>,  <27.009661, 29.280529, 23.013554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327087, 29.491703, 22.892534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168856, 0.286619, 0.943047,
		0.584585, -0.799457, 0.138306,
		0.793567, 0.527937, -0.302547,
		27.565157, 29.650084, 22.801771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482243, 29.185394, 23.514202>,  <27.009661, 29.280529, 23.013554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482243, 29.185394, 23.514202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.642517, 29.507116, 23.338682>,  <27.738682, 29.700150, 23.233370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.642517, 29.507116, 23.338682>,  <27.482243, 29.185394, 23.514202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642517, 29.507116, 23.338682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223968, 0.378411, 0.898133,
		0.888419, -0.458147, -0.028515,
		0.400686, 0.804305, -0.438798,
		27.762724, 29.748407, 23.207043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173977, 29.183842, 23.726812>,  <27.482243, 29.185394, 23.514202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173977, 29.183842, 23.726812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.090643, 29.557199, 23.609941>,  <28.040642, 29.781214, 23.539818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.090643, 29.557199, 23.609941>,  <28.173977, 29.183842, 23.726812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090643, 29.557199, 23.609941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390955, 0.353303, 0.849901,
		0.896522, 0.062835, -0.438521,
		-0.208334, 0.933396, -0.292178,
		28.028143, 29.837219, 23.522287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690605, 29.517271, 24.020544>,  <28.173977, 29.183842, 23.726812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690605, 29.517271, 24.020544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.408285, 29.791901, 23.950727>,  <28.238894, 29.956678, 23.908838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.408285, 29.791901, 23.950727>,  <28.690605, 29.517271, 24.020544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408285, 29.791901, 23.950727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206626, 0.435188, 0.876309,
		0.677608, 0.582434, -0.449020,
		-0.705800, 0.686573, -0.174540,
		28.196545, 29.997873, 23.898365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965876, 30.130398, 24.327415>,  <28.690605, 29.517271, 24.020544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965876, 30.130398, 24.327415> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.583054, 30.235357, 24.278111>,  <28.353361, 30.298332, 24.248528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.583054, 30.235357, 24.278111>,  <28.965876, 30.130398, 24.327415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583054, 30.235357, 24.278111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066592, 0.214834, 0.974378,
		0.282157, 0.940740, -0.188135,
		-0.957054, 0.262399, -0.123262,
		28.295937, 30.314077, 24.241131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988148, 30.672499, 24.676966>,  <28.965876, 30.130398, 24.327415>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988148, 30.672499, 24.676966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.608948, 30.552919, 24.633284>,  <28.381428, 30.481171, 24.607075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.608948, 30.552919, 24.633284>,  <28.988148, 30.672499, 24.676966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608948, 30.552919, 24.633284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259628, 0.527904, 0.808648,
		-0.184094, 0.794951, -0.578068,
		-0.947999, -0.298950, -0.109207,
		28.324549, 30.463234, 24.600521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623520, 31.317841, 24.750566>,  <28.988148, 30.672499, 24.676966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623520, 31.317841, 24.750566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.396589, 31.002190, 24.844730>,  <28.260431, 30.812799, 24.901228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.396589, 31.002190, 24.844730>,  <28.623520, 31.317841, 24.750566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396589, 31.002190, 24.844730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096745, 0.347757, 0.932580,
		-0.817790, 0.506303, -0.273636,
		-0.567327, -0.789128, 0.235410,
		28.226391, 30.765451, 24.915354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918043, 31.582657, 25.069851>,  <28.623520, 31.317841, 24.750566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918043, 31.582657, 25.069851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.973011, 31.202984, 25.183105>,  <28.005991, 30.975180, 25.251059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.973011, 31.202984, 25.183105>,  <27.918043, 31.582657, 25.069851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973011, 31.202984, 25.183105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331909, 0.225197, 0.916036,
		-0.933248, -0.219857, -0.284096,
		0.137420, -0.949184, 0.283137,
		28.014236, 30.918228, 25.268047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528917, 31.492868, 25.562445>,  <27.918043, 31.582657, 25.069851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528917, 31.492868, 25.562445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.748362, 31.166416, 25.635056>,  <27.880028, 30.970545, 25.678621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.748362, 31.166416, 25.635056>,  <27.528917, 31.492868, 25.562445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748362, 31.166416, 25.635056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028172, 0.198950, 0.979604,
		-0.835602, -0.542537, 0.086154,
		0.548612, -0.816132, 0.181527,
		27.912945, 30.921576, 25.689514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.202702, 31.149313, 26.158543>,  <27.528917, 31.492868, 25.562445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.202702, 31.149313, 26.158543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.588446, 31.043875, 26.149355>,  <27.819893, 30.980612, 26.143843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.588446, 31.043875, 26.149355>,  <27.202702, 31.149313, 26.158543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.588446, 31.043875, 26.149355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050200, 0.097046, 0.994013,
		-0.259790, -0.959739, 0.106819,
		0.964359, -0.263597, -0.022967,
		27.877754, 30.964796, 26.142466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244244, 30.623194, 26.700230>,  <27.202702, 31.149313, 26.158543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244244, 30.623194, 26.700230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.617062, 30.717487, 26.590160>,  <27.840754, 30.774063, 26.524118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.617062, 30.717487, 26.590160>,  <27.244244, 30.623194, 26.700230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.617062, 30.717487, 26.590160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293372, -0.045248, 0.954927,
		0.212657, -0.970764, -0.111331,
		0.932046, 0.235733, -0.275173,
		27.896675, 30.788208, 26.507608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.740328, 30.099009, 27.060417>,  <27.244244, 30.623194, 26.700230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.740328, 30.099009, 27.060417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.922750, 30.440405, 26.959566>,  <28.032204, 30.645243, 26.899055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.922750, 30.440405, 26.959566>,  <27.740328, 30.099009, 27.060417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.922750, 30.440405, 26.959566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388376, 0.064032, 0.919273,
		0.800734, -0.517161, -0.302273,
		0.456058, 0.853489, -0.252126,
		28.059568, 30.696451, 26.883928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.367523, 29.981112, 27.403814>,  <27.740328, 30.099009, 27.060417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.367523, 29.981112, 27.403814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.373743, 30.371382, 27.316345>,  <28.377476, 30.605543, 27.263865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.373743, 30.371382, 27.316345>,  <28.367523, 29.981112, 27.403814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373743, 30.371382, 27.316345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456317, 0.187671, 0.869801,
		0.889681, -0.113309, -0.442298,
		0.015549, 0.975674, -0.218672,
		28.378408, 30.664083, 27.250744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049124, 30.273485, 27.533875>,  <28.367523, 29.981112, 27.403814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049124, 30.273485, 27.533875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.791250, 30.579071, 27.544724>,  <28.636526, 30.762423, 27.551233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.791250, 30.579071, 27.544724>,  <29.049124, 30.273485, 27.533875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791250, 30.579071, 27.544724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265960, 0.190887, 0.944896,
		0.716691, 0.616374, -0.326246,
		-0.644686, 0.763967, 0.027124,
		28.597845, 30.808262, 27.552860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815386, 30.445421, 27.277649>,  <29.049124, 30.273485, 27.533875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815386, 30.445421, 27.277649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.157316, 30.239786, 27.305904>,  <30.362474, 30.116405, 27.322857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.157316, 30.239786, 27.305904>,  <29.815386, 30.445421, 27.277649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157316, 30.239786, 27.305904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050107, -0.217266, -0.974826,
		0.516491, 0.829766, -0.211483,
		0.854825, -0.514085, 0.070639,
		30.413763, 30.085560, 27.327097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268396, 30.733816, 26.781672>,  <29.815386, 30.445421, 27.277649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268396, 30.733816, 26.781672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.423851, 30.367409, 26.821411>,  <30.517124, 30.147564, 26.845255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.423851, 30.367409, 26.821411>,  <30.268396, 30.733816, 26.781672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423851, 30.367409, 26.821411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037675, -0.123535, -0.991625,
		0.920620, 0.381639, -0.082522,
		0.388637, -0.916019, 0.099350,
		30.540442, 30.092604, 26.851215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756765, 30.678127, 26.322578>,  <30.268396, 30.733816, 26.781672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756765, 30.678127, 26.322578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.703165, 30.289988, 26.403042>,  <30.671005, 30.057104, 26.451321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.703165, 30.289988, 26.403042>,  <30.756765, 30.678127, 26.322578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703165, 30.289988, 26.403042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039218, -0.208024, -0.977337,
		0.990205, -0.123076, 0.065930,
		-0.134002, -0.970350, 0.201160,
		30.662964, 29.998882, 26.463390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132664, 30.337658, 25.859016>,  <30.756765, 30.678127, 26.322578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132664, 30.337658, 25.859016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.892246, 30.039541, 25.974457>,  <30.747995, 29.860672, 26.043720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.892246, 30.039541, 25.974457>,  <31.132664, 30.337658, 25.859016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892246, 30.039541, 25.974457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024586, -0.343690, -0.938761,
		0.798838, -0.571332, 0.188249,
		-0.601044, -0.745290, 0.288599,
		30.711933, 29.815954, 26.061037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482128, 29.797098, 25.566147>,  <31.132664, 30.337658, 25.859016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482128, 29.797098, 25.566147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.101948, 29.690207, 25.629690>,  <30.873840, 29.626072, 25.667816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.101948, 29.690207, 25.629690>,  <31.482128, 29.797098, 25.566147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101948, 29.690207, 25.629690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017949, -0.462970, -0.886192,
		0.310361, -0.845132, 0.435233,
		-0.950449, -0.267228, 0.158857,
		30.816813, 29.610039, 25.677347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400814, 29.041876, 25.557411>,  <31.482128, 29.797098, 25.566147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400814, 29.041876, 25.557411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.041748, 29.184130, 25.453316>,  <30.826309, 29.269482, 25.390858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.041748, 29.184130, 25.453316>,  <31.400814, 29.041876, 25.557411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041748, 29.184130, 25.453316> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078749, -0.451581, -0.888748,
		-0.433578, -0.818295, 0.377365,
		-0.897669, 0.355624, -0.260235,
		30.772449, 29.290821, 25.375244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.076792, 28.601254, 25.137854>,  <31.400814, 29.041876, 25.557411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.076792, 28.601254, 25.137854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.797062, 28.870533, 25.041733>,  <30.629223, 29.032101, 24.984060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.797062, 28.870533, 25.041733>,  <31.076792, 28.601254, 25.137854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797062, 28.870533, 25.041733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078173, -0.262134, -0.961860,
		-0.710515, -0.691439, 0.130691,
		-0.699327, 0.673199, -0.240302,
		30.587263, 29.072493, 24.969643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608688, 28.214146, 24.738245>,  <31.076792, 28.601254, 25.137854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608688, 28.214146, 24.738245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.556082, 28.597137, 24.635530>,  <30.524517, 28.826933, 24.573902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.556082, 28.597137, 24.635530>,  <30.608688, 28.214146, 24.738245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556082, 28.597137, 24.635530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113196, -0.271847, -0.955660,
		-0.984830, -0.096619, 0.144135,
		-0.131518, 0.957478, -0.256786,
		30.516626, 28.884380, 24.558495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043028, 28.161352, 24.306591>,  <30.608688, 28.214146, 24.738245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043028, 28.161352, 24.306591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.230103, 28.510509, 24.250982>,  <30.342348, 28.720003, 24.217617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.230103, 28.510509, 24.250982>,  <30.043028, 28.161352, 24.306591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230103, 28.510509, 24.250982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058188, -0.187347, -0.980569,
		-0.881976, 0.450512, -0.138411,
		0.467689, 0.872892, -0.139021,
		30.370409, 28.772377, 24.209276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596369, 28.634501, 23.841034>,  <30.043028, 28.161352, 24.306591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596369, 28.634501, 23.841034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.969849, 28.773014, 23.804605>,  <30.193937, 28.856123, 23.782749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.969849, 28.773014, 23.804605>,  <29.596369, 28.634501, 23.841034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.969849, 28.773014, 23.804605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010767, -0.227073, -0.973818,
		-0.357897, 0.910233, -0.208289,
		0.933699, 0.346284, -0.091069,
		30.249958, 28.876900, 23.777285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715004, 29.220934, 23.346117>,  <29.596369, 28.634501, 23.841034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715004, 29.220934, 23.346117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.061914, 29.022188, 23.358494>,  <30.270061, 28.902941, 23.365919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.061914, 29.022188, 23.358494>,  <29.715004, 29.220934, 23.346117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061914, 29.022188, 23.358494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006720, -0.073831, -0.997248,
		0.497783, 0.864681, -0.067371,
		0.867275, -0.496866, 0.030942,
		30.322098, 28.873129, 23.367777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155567, 29.525505, 22.881952>,  <29.715004, 29.220934, 23.346117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155567, 29.525505, 22.881952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.255167, 29.139622, 22.916212>,  <30.314926, 28.908091, 22.936768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.255167, 29.139622, 22.916212>,  <30.155567, 29.525505, 22.881952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255167, 29.139622, 22.916212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094268, -0.112154, -0.989209,
		0.963906, 0.238237, -0.118867,
		0.248998, -0.964710, 0.085648,
		30.329866, 28.850208, 22.941906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552399, 29.360224, 22.210619>,  <30.155567, 29.525505, 22.881952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552399, 29.360224, 22.210619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.448471, 29.004061, 22.360107>,  <30.386114, 28.790363, 22.449800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.448471, 29.004061, 22.360107>,  <30.552399, 29.360224, 22.210619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448471, 29.004061, 22.360107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336720, -0.279184, -0.899264,
		0.905049, -0.359485, -0.227281,
		-0.259819, -0.890408, 0.373721,
		30.370525, 28.736938, 22.472223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896744, 28.878563, 21.747187>,  <30.552399, 29.360224, 22.210619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896744, 28.878563, 21.747187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.628391, 28.650515, 21.936874>,  <30.467381, 28.513685, 22.050688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.628391, 28.650515, 21.936874>,  <30.896744, 28.878563, 21.747187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628391, 28.650515, 21.936874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140624, -0.530075, -0.836209,
		0.728111, -0.627682, 0.275444,
		-0.670879, -0.570119, 0.474220,
		30.427128, 28.479479, 22.079140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349426, 28.386759, 21.967363>,  <30.896744, 28.878563, 21.747187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349426, 28.386759, 21.967363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.702662, 28.220112, 21.881029>,  <31.914602, 28.120125, 21.829229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.702662, 28.220112, 21.881029>,  <31.349426, 28.386759, 21.967363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702662, 28.220112, 21.881029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322642, 0.205201, 0.924010,
		-0.340668, -0.885621, 0.315629,
		0.883090, -0.416616, -0.215833,
		31.967588, 28.095127, 21.816278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588129, 28.045715, 22.592569>,  <31.349426, 28.386759, 21.967363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588129, 28.045715, 22.592569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.922733, 28.126245, 22.388720>,  <32.123497, 28.174564, 22.266411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.922733, 28.126245, 22.388720>,  <31.588129, 28.045715, 22.592569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922733, 28.126245, 22.388720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422353, 0.355621, 0.833757,
		0.349068, -0.912694, 0.212464,
		0.836522, 0.201303, -0.509615,
		32.173687, 28.186644, 22.235832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178154, 27.827049, 22.980822>,  <31.588129, 28.045715, 22.592569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178154, 27.827049, 22.980822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.338688, 28.097984, 22.734198>,  <32.435009, 28.260546, 22.586224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.338688, 28.097984, 22.734198>,  <32.178154, 27.827049, 22.980822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338688, 28.097984, 22.734198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525050, 0.381435, 0.760809,
		0.750500, -0.629066, -0.202550,
		0.401339, 0.677336, -0.616558,
		32.459091, 28.301186, 22.549231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852585, 27.850447, 23.217922>,  <32.178154, 27.827049, 22.980822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852585, 27.850447, 23.217922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.825764, 28.169060, 22.977577>,  <32.809669, 28.360228, 22.833370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.825764, 28.169060, 22.977577>,  <32.852585, 27.850447, 23.217922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825764, 28.169060, 22.977577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443706, 0.563200, 0.697087,
		0.893660, -0.219864, -0.391192,
		-0.067055, 0.796533, -0.600864,
		32.805649, 28.408020, 22.797318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511341, 28.188017, 23.180380>,  <32.852585, 27.850447, 23.217922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511341, 28.188017, 23.180380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.252693, 28.472492, 23.070034>,  <33.097504, 28.643177, 23.003826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.252693, 28.472492, 23.070034>,  <33.511341, 28.188017, 23.180380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252693, 28.472492, 23.070034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510415, 0.672133, 0.536389,
		0.566890, 0.206033, -0.797613,
		-0.646616, 0.711187, -0.275863,
		33.058708, 28.685848, 22.987276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900311, 28.768753, 22.878696>,  <33.511341, 28.188017, 23.180380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900311, 28.768753, 22.878696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.547760, 28.916412, 22.996614>,  <33.336231, 29.005009, 23.067366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.547760, 28.916412, 22.996614>,  <33.900311, 28.768753, 22.878696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.547760, 28.916412, 22.996614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469213, 0.756576, 0.455446,
		-0.054908, 0.539741, -0.840038,
		-0.881376, 0.369150, 0.294796,
		33.283348, 29.027157, 23.085052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023857, 29.449881, 22.949879>,  <33.900311, 28.768753, 22.878696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023857, 29.449881, 22.949879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.697670, 29.430525, 23.180588>,  <33.501957, 29.418911, 23.319014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.697670, 29.430525, 23.180588>,  <34.023857, 29.449881, 22.949879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697670, 29.430525, 23.180588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415297, 0.645189, 0.641296,
		-0.403159, 0.762489, -0.506036,
		-0.815470, -0.048389, 0.576773,
		33.453030, 29.416008, 23.353621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875263, 30.166025, 23.162344>,  <34.023857, 29.449881, 22.949879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875263, 30.166025, 23.162344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.685085, 29.934217, 23.427103>,  <33.570980, 29.795132, 23.585958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.685085, 29.934217, 23.427103>,  <33.875263, 30.166025, 23.162344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685085, 29.934217, 23.427103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251323, 0.631548, 0.733474,
		-0.843083, 0.515077, -0.154620,
		-0.475446, -0.579520, 0.661897,
		33.542450, 29.760361, 23.625671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456741, 30.672920, 23.516005>,  <33.875263, 30.166025, 23.162344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456741, 30.672920, 23.516005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.527962, 30.335222, 23.718212>,  <33.570694, 30.132605, 23.839537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.527962, 30.335222, 23.718212>,  <33.456741, 30.672920, 23.516005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527962, 30.335222, 23.718212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344517, 0.534697, 0.771626,
		-0.921740, 0.036770, 0.386061,
		0.178053, -0.844243, 0.505519,
		33.581379, 30.081949, 23.869867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306068, 30.858561, 24.181978>,  <33.456741, 30.672920, 23.516005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306068, 30.858561, 24.181978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.497242, 30.515574, 24.258224>,  <33.611946, 30.309782, 24.303972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.497242, 30.515574, 24.258224>,  <33.306068, 30.858561, 24.181978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497242, 30.515574, 24.258224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276456, 0.352809, 0.893923,
		-0.833760, -0.374536, 0.405669,
		0.477929, -0.857467, 0.190615,
		33.640621, 30.258333, 24.315409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251617, 30.797178, 24.898817>,  <33.306068, 30.858561, 24.181978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251617, 30.797178, 24.898817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.546932, 30.559736, 24.770712>,  <33.724121, 30.417271, 24.693850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.546932, 30.559736, 24.770712>,  <33.251617, 30.797178, 24.898817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546932, 30.559736, 24.770712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539040, 0.233864, 0.809162,
		-0.405425, -0.770026, 0.492636,
		0.738286, -0.593606, -0.320261,
		33.768417, 30.381655, 24.674633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334789, 30.255957, 25.442495>,  <33.251617, 30.797178, 24.898817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334789, 30.255957, 25.442495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.682343, 30.295164, 25.248409>,  <33.890873, 30.318689, 25.131958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.682343, 30.295164, 25.248409>,  <33.334789, 30.255957, 25.442495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682343, 30.295164, 25.248409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473331, 0.122443, 0.872333,
		0.144928, -0.987622, 0.059987,
		0.868881, 0.098031, -0.485218,
		33.943008, 30.324570, 25.102844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849030, 30.046959, 25.925564>,  <33.334789, 30.255957, 25.442495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849030, 30.046959, 25.925564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.092377, 30.205490, 25.650518>,  <34.238384, 30.300610, 25.485491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.092377, 30.205490, 25.650518>,  <33.849030, 30.046959, 25.925564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092377, 30.205490, 25.650518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624894, 0.294918, 0.722863,
		0.489280, -0.869453, -0.068244,
		0.608369, 0.396328, -0.687613,
		34.274887, 30.324389, 25.444235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543907, 29.704342, 25.975813>,  <33.849030, 30.046959, 25.925564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543907, 29.704342, 25.975813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.564369, 30.073496, 25.823147>,  <34.576645, 30.294989, 25.731546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.564369, 30.073496, 25.823147>,  <34.543907, 29.704342, 25.975813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564369, 30.073496, 25.823147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634050, 0.265255, 0.726375,
		0.771599, -0.279150, -0.571586,
		0.051151, 0.922884, -0.381665,
		34.579716, 30.350361, 25.708647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.323284, 32.111286, 19.925215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.960728, 31.949511, 19.974001>,  <32.743195, 31.852444, 20.003273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.960728, 31.949511, 19.974001>,  <33.323284, 32.111286, 19.925215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960728, 31.949511, 19.974001> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130709, -0.543067, -0.829454,
		0.401702, -0.735870, 0.545097,
		-0.906394, -0.404443, 0.121966,
		32.688808, 31.828178, 20.010592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350689, 31.364050, 19.915487>,  <33.323284, 32.111286, 19.925215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350689, 31.364050, 19.915487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.970837, 31.447495, 19.821943>,  <32.742928, 31.497561, 19.765818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.970837, 31.447495, 19.821943>,  <33.350689, 31.364050, 19.915487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970837, 31.447495, 19.821943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115333, -0.461223, -0.879757,
		-0.291388, -0.862412, 0.413930,
		-0.949627, 0.208611, -0.233859,
		32.685947, 31.510078, 19.751785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123764, 30.689711, 19.534639>,  <33.350689, 31.364050, 19.915487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123764, 30.689711, 19.534639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.869080, 30.988615, 19.458536>,  <32.716270, 31.167957, 19.412874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.869080, 30.988615, 19.458536>,  <33.123764, 30.689711, 19.534639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869080, 30.988615, 19.458536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101015, -0.325442, -0.940151,
		-0.764457, -0.579386, 0.282698,
		-0.636712, 0.747261, -0.190260,
		32.678066, 31.212793, 19.401459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645958, 30.382282, 19.302294>,  <33.123764, 30.689711, 19.534639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645958, 30.382282, 19.302294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.602276, 30.751207, 19.154016>,  <32.576069, 30.972563, 19.065050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.602276, 30.751207, 19.154016>,  <32.645958, 30.382282, 19.302294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602276, 30.751207, 19.154016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119499, -0.382402, -0.916236,
		-0.986811, -0.055757, 0.151974,
		-0.109202, 0.922312, -0.370695,
		32.569515, 31.027901, 19.042809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225231, 30.298538, 18.736921>,  <32.645958, 30.382282, 19.302294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225231, 30.298538, 18.736921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.327213, 30.677580, 18.659929>,  <32.388401, 30.905005, 18.613733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.327213, 30.677580, 18.659929>,  <32.225231, 30.298538, 18.736921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327213, 30.677580, 18.659929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185086, -0.147554, -0.971582,
		-0.949075, 0.283332, 0.137768,
		0.254952, 0.947603, -0.192480,
		32.403698, 30.961861, 18.602184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779072, 30.646824, 18.228796>,  <32.225231, 30.298538, 18.736921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779072, 30.646824, 18.228796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.125694, 30.840908, 18.182058>,  <32.333668, 30.957357, 18.154015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.125694, 30.840908, 18.182058>,  <31.779072, 30.646824, 18.228796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125694, 30.840908, 18.182058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138352, 0.008598, -0.990346,
		-0.479520, 0.874356, 0.074580,
		0.866556, 0.485209, -0.116846,
		32.385662, 30.986471, 18.147005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647789, 31.190098, 17.793560>,  <31.779072, 30.646824, 18.228796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647789, 31.190098, 17.793560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.039890, 31.112490, 17.778296>,  <32.275150, 31.065926, 17.769136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.039890, 31.112490, 17.778296>,  <31.647789, 31.190098, 17.793560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039890, 31.112490, 17.778296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028984, 0.049930, -0.998332,
		0.195601, 0.979726, 0.043321,
		0.980255, -0.194019, -0.038163,
		32.333965, 31.054283, 17.766846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857883, 31.600117, 17.192696>,  <31.647789, 31.190098, 17.793560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857883, 31.600117, 17.192696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.131023, 31.316393, 17.262661>,  <32.294907, 31.146158, 17.304640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.131023, 31.316393, 17.262661>,  <31.857883, 31.600117, 17.192696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131023, 31.316393, 17.262661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011967, -0.250252, -0.968107,
		0.730461, 0.658979, -0.179373,
		0.682850, -0.709310, 0.174913,
		32.335880, 31.103600, 17.315134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154797, 31.552681, 16.569933>,  <31.857883, 31.600117, 17.192696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154797, 31.552681, 16.569933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.250320, 31.204809, 16.742735>,  <32.307636, 30.996086, 16.846416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.250320, 31.204809, 16.742735>,  <32.154797, 31.552681, 16.569933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250320, 31.204809, 16.742735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087388, -0.462319, -0.882397,
		0.967126, 0.172974, -0.186407,
		0.238811, -0.869678, 0.432005,
		32.321964, 30.943905, 16.872337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503723, 31.228474, 15.987586>,  <32.154797, 31.552681, 16.569933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503723, 31.228474, 15.987586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.439583, 30.924429, 16.239464>,  <32.401096, 30.742002, 16.390591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.439583, 30.924429, 16.239464>,  <32.503723, 31.228474, 15.987586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439583, 30.924429, 16.239464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349973, -0.552720, -0.756320,
		0.922933, -0.341656, -0.177388,
		-0.160355, -0.760114, 0.629693,
		32.391476, 30.696394, 16.428371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895927, 30.715092, 15.700840>,  <32.503723, 31.228474, 15.987586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895927, 30.715092, 15.700840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.620590, 30.543341, 15.934701>,  <32.455387, 30.440290, 16.075018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.620590, 30.543341, 15.934701>,  <32.895927, 30.715092, 15.700840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620590, 30.543341, 15.934701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191543, -0.669791, -0.717420,
		0.699639, -0.605817, 0.378802,
		-0.688344, -0.429377, 0.584652,
		32.414085, 30.414528, 16.110096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022812, 29.897022, 15.744895>,  <32.895927, 30.715092, 15.700840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022812, 29.897022, 15.744895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.641193, 29.962404, 15.845361>,  <32.412224, 30.001633, 15.905641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.641193, 29.962404, 15.845361>,  <33.022812, 29.897022, 15.744895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641193, 29.962404, 15.845361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299065, -0.572442, -0.763459,
		0.018987, -0.803488, 0.595018,
		-0.954044, 0.163453, 0.251165,
		32.354980, 30.011440, 15.920710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588379, 29.245134, 15.816614>,  <33.022812, 29.897022, 15.744895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588379, 29.245134, 15.816614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.326916, 29.538860, 15.743394>,  <32.170036, 29.715096, 15.699462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.326916, 29.538860, 15.743394>,  <32.588379, 29.245134, 15.816614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326916, 29.538860, 15.743394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540779, -0.622426, -0.565812,
		-0.529420, -0.270860, 0.803959,
		-0.653660, 0.734317, -0.183049,
		32.130817, 29.759155, 15.688478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769817, 28.485010, 15.724869>,  <32.588379, 29.245134, 15.816614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769817, 28.485010, 15.724869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.028355, 28.676167, 15.962813>,  <33.183475, 28.790861, 16.105581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.028355, 28.676167, 15.962813>,  <32.769817, 28.485010, 15.724869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028355, 28.676167, 15.962813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106787, -0.715264, 0.690648,
		0.755539, -0.509918, -0.411271,
		0.646341, 0.477893, 0.594862,
		33.222256, 28.819534, 16.141272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312336, 27.973326, 16.013208>,  <32.769817, 28.485010, 15.724869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312336, 27.973326, 16.013208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.980778, 27.755121, 16.062759>,  <31.781841, 27.624199, 16.092489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.980778, 27.755121, 16.062759>,  <32.312336, 27.973326, 16.013208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980778, 27.755121, 16.062759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102420, 0.069706, 0.992296,
		-0.549944, 0.835199, -0.001907,
		-0.828898, -0.545512, 0.123876,
		31.732109, 27.591467, 16.099922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029396, 28.245455, 16.541904>,  <32.312336, 27.973326, 16.013208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029396, 28.245455, 16.541904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.844341, 27.892105, 16.511921>,  <31.733309, 27.680096, 16.493931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.844341, 27.892105, 16.511921>,  <32.029396, 28.245455, 16.541904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844341, 27.892105, 16.511921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139923, -0.010736, 0.990104,
		-0.875438, 0.468543, -0.118638,
		-0.462633, -0.883375, -0.074959,
		31.705551, 27.627092, 16.489433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298794, 28.272230, 16.907335>,  <32.029396, 28.245455, 16.541904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298794, 28.272230, 16.907335> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.432465, 27.895466, 16.920799>,  <31.512667, 27.669407, 16.928877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.432465, 27.895466, 16.920799>,  <31.298794, 28.272230, 16.907335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432465, 27.895466, 16.920799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018012, 0.029323, 0.999408,
		-0.942338, -0.334587, -0.007167,
		0.334178, -0.941909, 0.033659,
		31.532719, 27.612894, 16.930897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879953, 27.931232, 17.380594>,  <31.298794, 28.272230, 16.907335>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879953, 27.931232, 17.380594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.199291, 27.691317, 17.359055>,  <31.390894, 27.547367, 17.346130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.199291, 27.691317, 17.359055>,  <30.879953, 27.931232, 17.380594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199291, 27.691317, 17.359055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055282, -0.016046, 0.998342,
		-0.599658, -0.799997, 0.020347,
		0.798344, -0.599789, -0.053848,
		31.438795, 27.511379, 17.342899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691479, 27.331907, 17.947659>,  <30.879953, 27.931232, 17.380594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691479, 27.331907, 17.947659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.079826, 27.323214, 17.852213>,  <31.312836, 27.317997, 17.794945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.079826, 27.323214, 17.852213>,  <30.691479, 27.331907, 17.947659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079826, 27.323214, 17.852213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238976, 0.015871, 0.970896,
		-0.017319, -0.999638, 0.020604,
		0.970871, -0.021739, -0.238614,
		31.371088, 27.316692, 17.780628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965986, 26.812166, 18.314493>,  <30.691479, 27.331907, 17.947659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965986, 26.812166, 18.314493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.277523, 27.051804, 18.240198>,  <31.464445, 27.195585, 18.195621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.277523, 27.051804, 18.240198>,  <30.965986, 26.812166, 18.314493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277523, 27.051804, 18.240198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234628, -0.003650, 0.972078,
		0.581686, -0.800672, -0.143407,
		0.778840, 0.599091, -0.185737,
		31.511175, 27.231531, 18.184477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.597210, 26.490891, 18.627960>,  <30.965986, 26.812166, 18.314493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.597210, 26.490891, 18.627960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.672188, 26.881502, 18.585520>,  <31.717175, 27.115870, 18.560055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.672188, 26.881502, 18.585520>,  <31.597210, 26.490891, 18.627960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672188, 26.881502, 18.585520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245299, 0.058057, 0.967708,
		0.951154, -0.207416, -0.228659,
		0.187443, 0.976529, -0.106100,
		31.728420, 27.174461, 18.553690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192642, 26.567831, 19.050377>,  <31.597210, 26.490891, 18.627960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192642, 26.567831, 19.050377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.063175, 26.943558, 19.004906>,  <31.985497, 27.168995, 18.977623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.063175, 26.943558, 19.004906>,  <32.192642, 26.567831, 19.050377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063175, 26.943558, 19.004906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170777, 0.176167, 0.969433,
		0.930632, 0.294358, -0.217433,
		-0.323665, 0.939318, -0.113677,
		31.966076, 27.225353, 18.970802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760616, 27.009251, 19.157972>,  <32.192642, 26.567831, 19.050377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760616, 27.009251, 19.157972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.420513, 27.204403, 19.236994>,  <32.216450, 27.321493, 19.284407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.420513, 27.204403, 19.236994>,  <32.760616, 27.009251, 19.157972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420513, 27.204403, 19.236994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233882, 0.013949, 0.972165,
		0.471544, 0.872799, -0.125966,
		-0.850262, 0.487880, 0.197555,
		32.165436, 27.350767, 19.296261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954132, 27.592390, 19.675871>,  <32.760616, 27.009251, 19.157972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954132, 27.592390, 19.675871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.555618, 27.607462, 19.706863>,  <32.316509, 27.616505, 19.725460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.555618, 27.607462, 19.706863>,  <32.954132, 27.592390, 19.675871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555618, 27.607462, 19.706863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084837, 0.272130, 0.958513,
		0.015030, 0.961523, -0.274315,
		-0.996282, 0.037678, 0.077482,
		32.256733, 27.618765, 19.730108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788574, 28.148651, 20.068209>,  <32.954132, 27.592390, 19.675871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788574, 28.148651, 20.068209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.469929, 27.911728, 20.116512>,  <32.278744, 27.769573, 20.145494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.469929, 27.911728, 20.116512>,  <32.788574, 28.148651, 20.068209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469929, 27.911728, 20.116512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054966, 0.269920, 0.961313,
		-0.601990, 0.759153, -0.247578,
		-0.796610, -0.592309, 0.120761,
		32.230946, 27.734035, 20.152740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195999, 28.571100, 20.180529>,  <32.788574, 28.148651, 20.068209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195999, 28.571100, 20.180529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.119282, 28.226774, 20.369087>,  <32.073254, 28.020178, 20.482222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.119282, 28.226774, 20.369087>,  <32.195999, 28.571100, 20.180529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119282, 28.226774, 20.369087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071406, 0.491278, 0.868071,
		-0.978835, 0.132827, -0.155690,
		-0.191791, -0.860815, 0.471395,
		32.061745, 27.968529, 20.510506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782297, 28.745596, 20.760992>,  <32.195999, 28.571100, 20.180529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782297, 28.745596, 20.760992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.877657, 28.369205, 20.857103>,  <31.934874, 28.143372, 20.914770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.877657, 28.369205, 20.857103>,  <31.782297, 28.745596, 20.760992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877657, 28.369205, 20.857103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073060, 0.229332, 0.970602,
		-0.968415, -0.248947, -0.014074,
		0.238401, -0.940974, 0.240277,
		31.949177, 28.086914, 20.929186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500353, 28.647781, 21.336983>,  <31.782297, 28.745596, 20.760992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500353, 28.647781, 21.336983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.740541, 28.328079, 21.326979>,  <31.884655, 28.136259, 21.320976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.740541, 28.328079, 21.326979>,  <31.500353, 28.647781, 21.336983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740541, 28.328079, 21.326979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154806, 0.085508, 0.984237,
		-0.784518, -0.594879, 0.175074,
		0.600473, -0.799254, -0.025008,
		31.920683, 28.088303, 21.319477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918238, 28.269867, 21.383642>,  <31.500353, 28.647781, 21.336983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918238, 28.269867, 21.383642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.563192, 28.234787, 21.564508>,  <30.350164, 28.213739, 21.673027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.563192, 28.234787, 21.564508>,  <30.918238, 28.269867, 21.383642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563192, 28.234787, 21.564508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381478, -0.410145, -0.828405,
		0.258105, -0.907794, 0.330594,
		-0.887613, -0.087701, 0.452164,
		30.296909, 28.208477, 21.700157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711315, 27.522272, 21.259888>,  <30.918238, 28.269867, 21.383642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711315, 27.522272, 21.259888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.386627, 27.748577, 21.317879>,  <30.191814, 27.884361, 21.352674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.386627, 27.748577, 21.317879>,  <30.711315, 27.522272, 21.259888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386627, 27.748577, 21.317879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327628, -0.235596, -0.914961,
		-0.483497, -0.790192, 0.376599,
		-0.811721, 0.565765, 0.144979,
		30.143110, 27.918306, 21.361372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.342459, 27.116629, 20.932787>,  <30.711315, 27.522272, 21.259888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.342459, 27.116629, 20.932787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.147034, 27.465122, 20.951769>,  <30.029778, 27.674219, 20.963158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.147034, 27.465122, 20.951769>,  <30.342459, 27.116629, 20.932787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147034, 27.465122, 20.951769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379377, -0.163135, -0.910747,
		-0.785734, -0.462962, 0.410229,
		-0.488564, 0.871236, 0.047456,
		30.000463, 27.726494, 20.966005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594173, 26.869286, 20.865389>,  <30.342459, 27.116629, 20.932787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594173, 26.869286, 20.865389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.632992, 27.256165, 20.771482>,  <29.656282, 27.488291, 20.715139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.632992, 27.256165, 20.771482>,  <29.594173, 26.869286, 20.865389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632992, 27.256165, 20.771482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532867, -0.148732, -0.833026,
		-0.840616, 0.205939, 0.500953,
		0.097045, 0.967196, -0.234765,
		29.662106, 27.546324, 20.701054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.930468, 27.128824, 20.528370>,  <29.594173, 26.869286, 20.865389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.930468, 27.128824, 20.528370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.187170, 27.407633, 20.400425>,  <29.341190, 27.574919, 20.323658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.187170, 27.407633, 20.400425>,  <28.930468, 27.128824, 20.528370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187170, 27.407633, 20.400425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413950, -0.036275, -0.909577,
		-0.645598, 0.716131, 0.265252,
		0.641754, 0.697022, -0.319861,
		29.379696, 27.616739, 20.304466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565006, 27.426109, 19.950361>,  <28.930468, 27.128824, 20.528370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.565006, 27.426109, 19.950361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.922867, 27.594236, 19.889782>,  <29.137583, 27.695112, 19.853434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.922867, 27.594236, 19.889782>,  <28.565006, 27.426109, 19.950361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922867, 27.594236, 19.889782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149870, -0.036999, -0.988013,
		-0.420881, 0.906623, 0.029891,
		0.894650, 0.420316, -0.151448,
		29.191261, 27.720331, 19.844347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403770, 27.971298, 19.536867>,  <28.565006, 27.426109, 19.950361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403770, 27.971298, 19.536867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.799225, 27.941128, 19.484854>,  <29.036497, 27.923025, 19.453646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.799225, 27.941128, 19.484854>,  <28.403770, 27.971298, 19.536867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799225, 27.941128, 19.484854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106928, 0.255145, -0.960972,
		0.105658, 0.963956, 0.244181,
		0.988637, -0.075425, -0.130032,
		29.095816, 27.918501, 19.445845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266953, 28.694262, 19.861475>,  <28.403770, 27.971298, 19.536867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266953, 28.694262, 19.861475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.987263, 28.979918, 19.874664>,  <27.819448, 29.151312, 19.882578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.987263, 28.979918, 19.874664>,  <28.266953, 28.694262, 19.861475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987263, 28.979918, 19.874664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187109, 0.138296, 0.972555,
		0.689980, 0.686206, -0.230322,
		-0.699226, 0.714139, 0.032974,
		27.777494, 29.194159, 19.884556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574255, 29.293596, 20.238398>,  <28.266953, 28.694262, 19.861475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574255, 29.293596, 20.238398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.174679, 29.306395, 20.251637>,  <27.934933, 29.314074, 20.259581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.174679, 29.306395, 20.251637>,  <28.574255, 29.293596, 20.238398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174679, 29.306395, 20.251637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042472, 0.363304, 0.930702,
		0.017755, 0.931121, -0.364278,
		-0.998940, 0.031996, 0.033097,
		27.874996, 29.315994, 20.261566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393957, 30.019199, 20.522951>,  <28.574255, 29.293596, 20.238398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.393957, 30.019199, 20.522951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.105518, 29.755966, 20.609617>,  <27.932455, 29.598026, 20.661617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.105518, 29.755966, 20.609617>,  <28.393957, 30.019199, 20.522951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105518, 29.755966, 20.609617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069534, 0.379890, 0.922415,
		-0.689334, 0.650087, -0.319697,
		-0.721099, -0.658082, 0.216667,
		27.889189, 29.558542, 20.674618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865490, 30.400496, 20.885286>,  <28.393957, 30.019199, 20.522951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865490, 30.400496, 20.885286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.809753, 30.019384, 20.993214>,  <27.776312, 29.790718, 21.057970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.809753, 30.019384, 20.993214>,  <27.865490, 30.400496, 20.885286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.809753, 30.019384, 20.993214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228761, 0.296077, 0.927366,
		-0.963458, 0.067497, -0.259214,
		-0.139342, -0.952776, 0.269817,
		27.767950, 29.733551, 21.074160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.311169, 30.451050, 21.390965>,  <27.865490, 30.400496, 20.885286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.311169, 30.451050, 21.390965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.467705, 30.084478, 21.424461>,  <27.561626, 29.864536, 21.444559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.467705, 30.084478, 21.424461>,  <27.311169, 30.451050, 21.390965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467705, 30.084478, 21.424461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019757, 0.082610, 0.996386,
		-0.920034, -0.391580, 0.014223,
		0.391340, -0.916428, 0.083741,
		27.585106, 29.809549, 21.449583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.847433, 30.014008, 21.779633>,  <27.311169, 30.451050, 21.390965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.847433, 30.014008, 21.779633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.215496, 29.863459, 21.822813>,  <27.436335, 29.773130, 21.848721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.215496, 29.863459, 21.822813>,  <26.847433, 30.014008, 21.779633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215496, 29.863459, 21.822813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052075, 0.155614, 0.986444,
		-0.388068, -0.913307, 0.123590,
		0.920159, -0.376371, 0.107949,
		27.491543, 29.750547, 21.855198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.836691, 29.768969, 22.441502>,  <26.847433, 30.014008, 21.779633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.836691, 29.768969, 22.441502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.229586, 29.737593, 22.373320>,  <27.465322, 29.718767, 22.332411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.229586, 29.737593, 22.373320>,  <26.836691, 29.768969, 22.441502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.229586, 29.737593, 22.373320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161750, -0.106498, 0.981068,
		-0.095094, -0.991215, -0.091921,
		0.982239, -0.078426, -0.170456,
		27.524258, 29.714062, 22.322182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.746614, 30.678600, 16.774948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.109970, 30.523846, 16.838383>,  <29.327984, 30.430994, 16.876444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.109970, 30.523846, 16.838383>,  <28.746614, 30.678600, 16.774948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109970, 30.523846, 16.838383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149179, 0.654196, 0.741467,
		-0.390609, -0.649883, 0.651980,
		0.908389, -0.386885, 0.158586,
		29.382486, 30.407780, 16.885958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789104, 30.567207, 17.457682>,  <28.746614, 30.678600, 16.774948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789104, 30.567207, 17.457682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.166889, 30.591946, 17.328585>,  <29.393560, 30.606789, 17.251125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.166889, 30.591946, 17.328585>,  <28.789104, 30.567207, 17.457682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166889, 30.591946, 17.328585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158266, 0.775118, 0.611673,
		0.287993, -0.628783, 0.722283,
		0.944464, 0.061844, -0.322744,
		29.450228, 30.610498, 17.231762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251442, 30.438501, 18.043732>,  <28.789104, 30.567207, 17.457682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251442, 30.438501, 18.043732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.466370, 30.657701, 17.787298>,  <29.595325, 30.789221, 17.633438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.466370, 30.657701, 17.787298>,  <29.251442, 30.438501, 18.043732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466370, 30.657701, 17.787298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270412, 0.608063, 0.746416,
		0.798854, -0.574419, 0.178538,
		0.537318, 0.547998, -0.641084,
		29.627565, 30.822102, 17.594973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701200, 30.751867, 18.474358>,  <29.251442, 30.438501, 18.043732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701200, 30.751867, 18.474358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.797945, 30.981800, 18.161673>,  <29.855991, 31.119761, 17.974062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.797945, 30.981800, 18.161673>,  <29.701200, 30.751867, 18.474358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797945, 30.981800, 18.161673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378388, 0.685972, 0.621502,
		0.893491, -0.446106, -0.051601,
		0.241859, 0.574831, -0.781712,
		29.870502, 31.154249, 17.927158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369152, 30.971708, 18.636383>,  <29.701200, 30.751867, 18.474358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369152, 30.971708, 18.636383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.195881, 31.210060, 18.365892>,  <30.091919, 31.353071, 18.203598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.195881, 31.210060, 18.365892>,  <30.369152, 30.971708, 18.636383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195881, 31.210060, 18.365892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218878, 0.797360, 0.562414,
		0.874328, 0.095615, -0.475825,
		-0.433179, 0.595881, -0.676226,
		30.065928, 31.388824, 18.163025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857416, 31.574911, 18.452620>,  <30.369152, 30.971708, 18.636383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857416, 31.574911, 18.452620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.478235, 31.683739, 18.386450>,  <30.250727, 31.749035, 18.346748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.478235, 31.683739, 18.386450>,  <30.857416, 31.574911, 18.452620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478235, 31.683739, 18.386450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090505, 0.728329, 0.679224,
		0.305281, 0.628899, -0.715045,
		-0.947952, 0.272069, -0.165427,
		30.193850, 31.765360, 18.336823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954344, 32.342003, 18.321688>,  <30.857416, 31.574911, 18.452620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954344, 32.342003, 18.321688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.561493, 32.314838, 18.391901>,  <30.325783, 32.298538, 18.434029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.561493, 32.314838, 18.391901>,  <30.954344, 32.342003, 18.321688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561493, 32.314838, 18.391901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076453, 0.708269, 0.701791,
		-0.171987, 0.702668, -0.690418,
		-0.982128, -0.067914, 0.175534,
		30.266855, 32.294464, 18.444561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.559540, 33.008965, 18.230692>,  <30.954344, 32.342003, 18.321688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.559540, 33.008965, 18.230692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.358242, 32.786922, 18.495602>,  <30.237463, 32.653698, 18.654549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.358242, 32.786922, 18.495602>,  <30.559540, 33.008965, 18.230692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358242, 32.786922, 18.495602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057509, 0.786209, 0.615279,
		-0.862230, 0.271548, -0.427576,
		-0.503242, -0.555102, 0.662276,
		30.207270, 32.620392, 18.694284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.199371, 33.519016, 18.700621>,  <30.559540, 33.008965, 18.230692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.199371, 33.519016, 18.700621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.142195, 33.178108, 18.901899>,  <30.107889, 32.973564, 19.022667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.142195, 33.178108, 18.901899>,  <30.199371, 33.519016, 18.700621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142195, 33.178108, 18.901899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183973, 0.522439, 0.832594,
		-0.972482, 0.026437, -0.231472,
		-0.142942, -0.852267, 0.503198,
		30.099312, 32.922428, 19.052858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666191, 33.728241, 19.083727>,  <30.199371, 33.519016, 18.700621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666191, 33.728241, 19.083727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.806271, 33.401241, 19.266621>,  <29.890318, 33.205044, 19.376358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.806271, 33.401241, 19.266621>,  <29.666191, 33.728241, 19.083727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806271, 33.401241, 19.266621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116946, 0.446169, 0.887275,
		-0.929347, -0.364192, 0.060644,
		0.350197, -0.817495, 0.457236,
		29.911329, 33.155994, 19.403791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.241558, 33.690098, 19.758341>,  <29.666191, 33.728241, 19.083727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.241558, 33.690098, 19.758341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.557957, 33.448891, 19.799709>,  <29.747795, 33.304165, 19.824530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.557957, 33.448891, 19.799709>,  <29.241558, 33.690098, 19.758341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557957, 33.448891, 19.799709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077025, 0.265841, 0.960935,
		-0.606955, -0.752129, 0.256726,
		0.790995, -0.603018, 0.103421,
		29.795256, 33.267986, 19.830736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175776, 33.308006, 20.267870>,  <29.241558, 33.690098, 19.758341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175776, 33.308006, 20.267870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.573860, 33.325493, 20.232893>,  <29.812710, 33.335987, 20.211906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.573860, 33.325493, 20.232893>,  <29.175776, 33.308006, 20.267870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573860, 33.325493, 20.232893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054826, 0.490951, 0.869460,
		0.080943, -0.870089, 0.486202,
		0.995210, 0.043720, -0.087443,
		29.872423, 33.338608, 20.206659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541641, 32.957535, 20.380888>,  <29.175776, 33.308006, 20.267870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541641, 32.957535, 20.380888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.213890, 33.116997, 20.545660>,  <28.017239, 33.212673, 20.644524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.213890, 33.116997, 20.545660>,  <28.541641, 32.957535, 20.380888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.213890, 33.116997, 20.545660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493295, -0.124288, -0.860937,
		-0.292021, -0.908639, 0.298495,
		-0.819380, 0.398658, 0.411932,
		27.968077, 33.236595, 20.669239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.052832, 32.518017, 20.252058>,  <28.541641, 32.957535, 20.380888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.052832, 32.518017, 20.252058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.826262, 32.837067, 20.334965>,  <27.690319, 33.028496, 20.384708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.826262, 32.837067, 20.334965>,  <28.052832, 32.518017, 20.252058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826262, 32.837067, 20.334965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448066, -0.086983, -0.889759,
		-0.691664, -0.596850, 0.406657,
		-0.566425, 0.797624, 0.207266,
		27.656334, 33.076355, 20.397144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369146, 32.273098, 20.185087>,  <28.052832, 32.518017, 20.252058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369146, 32.273098, 20.185087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.411409, 32.666649, 20.127375>,  <27.436768, 32.902779, 20.092747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.411409, 32.666649, 20.127375>,  <27.369146, 32.273098, 20.185087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.411409, 32.666649, 20.127375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282580, -0.109405, -0.952984,
		-0.953407, 0.141461, 0.266465,
		0.105658, 0.983880, -0.144282,
		27.443108, 32.961811, 20.084089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.802414, 32.391499, 19.627243>,  <27.369146, 32.273098, 20.185087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.802414, 32.391499, 19.627243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.031494, 32.718544, 19.651009>,  <27.168941, 32.914772, 19.665268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.031494, 32.718544, 19.651009>,  <26.802414, 32.391499, 19.627243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031494, 32.718544, 19.651009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118653, 0.154390, -0.980859,
		-0.811133, 0.554688, 0.185431,
		0.572700, 0.817609, 0.059416,
		27.203304, 32.963825, 19.668833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296301, 32.946968, 19.418882>,  <26.802414, 32.391499, 19.627243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296301, 32.946968, 19.418882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.684292, 33.015064, 19.349409>,  <26.917086, 33.055920, 19.307726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.684292, 33.015064, 19.349409>,  <26.296301, 32.946968, 19.418882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684292, 33.015064, 19.349409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195379, 0.120193, -0.973335,
		-0.144822, 0.978046, 0.149845,
		0.969976, 0.170237, -0.173683,
		26.975285, 33.066135, 19.297304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.408541, 33.439075, 18.900890>,  <26.296301, 32.946968, 19.418882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.408541, 33.439075, 18.900890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.764973, 33.257553, 18.898472>,  <26.978832, 33.148640, 18.897020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.764973, 33.257553, 18.898472>,  <26.408541, 33.439075, 18.900890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.764973, 33.257553, 18.898472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064814, -0.114057, -0.991358,
		0.449193, 0.883772, -0.131047,
		0.891081, -0.453804, -0.006047,
		27.032297, 33.121410, 18.896658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716305, 33.784790, 18.421185>,  <26.408541, 33.439075, 18.900890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716305, 33.784790, 18.421185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.922503, 33.442223, 18.432602>,  <27.046221, 33.236683, 18.439451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.922503, 33.442223, 18.432602>,  <26.716305, 33.784790, 18.421185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.922503, 33.442223, 18.432602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116540, -0.103068, -0.987823,
		0.848932, 0.505890, -0.152938,
		0.515493, -0.856418, 0.028541,
		27.077150, 33.185299, 18.441164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.179432, 33.844521, 17.772356>,  <26.716305, 33.784790, 18.421185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.179432, 33.844521, 17.772356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.199472, 33.460697, 17.883165>,  <27.211496, 33.230404, 17.949652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.199472, 33.460697, 17.883165>,  <27.179432, 33.844521, 17.772356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.199472, 33.460697, 17.883165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018676, -0.276425, -0.960854,
		0.998570, 0.053315, 0.004071,
		0.050103, -0.959556, 0.277025,
		27.214502, 33.172829, 17.966272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781370, 33.494949, 17.417702>,  <27.179432, 33.844521, 17.772356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.781370, 33.494949, 17.417702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.565601, 33.178406, 17.532780>,  <27.436140, 32.988480, 17.601826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.565601, 33.178406, 17.532780>,  <27.781370, 33.494949, 17.417702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.565601, 33.178406, 17.532780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153763, -0.428496, -0.890364,
		0.827877, -0.436046, 0.352823,
		-0.539423, -0.791363, 0.287694,
		27.403774, 32.940998, 17.619087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110807, 32.815346, 17.368423>,  <27.781370, 33.494949, 17.417702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110807, 32.815346, 17.368423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.723862, 32.715527, 17.350843>,  <27.491693, 32.655636, 17.340296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.723862, 32.715527, 17.350843>,  <28.110807, 32.815346, 17.368423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.723862, 32.715527, 17.350843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163398, -0.481784, -0.860921,
		0.193668, -0.840006, 0.506836,
		-0.967364, -0.249548, -0.043949,
		27.433653, 32.640663, 17.337658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140366, 32.172459, 17.077955>,  <28.110807, 32.815346, 17.368423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140366, 32.172459, 17.077955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.773773, 32.317661, 17.010677>,  <27.553818, 32.404781, 16.970310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.773773, 32.317661, 17.010677>,  <28.140366, 32.172459, 17.077955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773773, 32.317661, 17.010677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030128, -0.481836, -0.875744,
		-0.398941, -0.797536, 0.452530,
		-0.916481, 0.363003, -0.168195,
		27.498829, 32.426563, 16.960218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810368, 31.607605, 16.875860>,  <28.140366, 32.172459, 17.077955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810368, 31.607605, 16.875860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.544769, 31.883154, 16.759542>,  <27.385410, 32.048485, 16.689751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.544769, 31.883154, 16.759542>,  <27.810368, 31.607605, 16.875860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.544769, 31.883154, 16.759542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224175, -0.554410, -0.801483,
		-0.713341, -0.466992, 0.522554,
		-0.663995, 0.688875, -0.290796,
		27.345570, 32.089817, 16.672304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239376, 31.211075, 16.534866>,  <27.810368, 31.607605, 16.875860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.239376, 31.211075, 16.534866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.248711, 31.593307, 16.417345>,  <27.254311, 31.822647, 16.346832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.248711, 31.593307, 16.417345>,  <27.239376, 31.211075, 16.534866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248711, 31.593307, 16.417345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112770, -0.289494, -0.950514,
		-0.993347, 0.055314, 0.101005,
		0.023336, 0.955580, -0.293805,
		27.255711, 31.879982, 16.329203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.581858, 30.507757, 16.728485>,  <27.239376, 31.211075, 16.534866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.581858, 30.507757, 16.728485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.245827, 30.295246, 16.772329>,  <27.044209, 30.167740, 16.798635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.245827, 30.295246, 16.772329>,  <27.581858, 30.507757, 16.728485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.245827, 30.295246, 16.772329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253075, -0.205109, 0.945454,
		-0.479815, 0.821995, 0.306760,
		-0.840077, -0.531277, 0.109612,
		26.993803, 30.135862, 16.805212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122814, 30.810122, 17.221663>,  <27.581858, 30.507757, 16.728485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122814, 30.810122, 17.221663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.015181, 30.424892, 17.217970>,  <26.950602, 30.193754, 17.215754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.015181, 30.424892, 17.217970>,  <27.122814, 30.810122, 17.221663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.015181, 30.424892, 17.217970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122301, -0.043676, 0.991532,
		-0.955321, 0.265674, 0.129537,
		-0.269082, -0.963073, -0.009232,
		26.934456, 30.135971, 17.215200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.698347, 30.695511, 17.826731>,  <27.122814, 30.810122, 17.221663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.698347, 30.695511, 17.826731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.831347, 30.332043, 17.725727>,  <26.911146, 30.113962, 17.665125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.831347, 30.332043, 17.725727>,  <26.698347, 30.695511, 17.826731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831347, 30.332043, 17.725727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038982, -0.254272, 0.966347,
		-0.942297, -0.331154, -0.049124,
		0.332501, -0.908671, -0.252509,
		26.931097, 30.059441, 17.649975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.289635, 30.175236, 18.282455>,  <26.698347, 30.695511, 17.826731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.289635, 30.175236, 18.282455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.605167, 29.955410, 18.172386>,  <26.794487, 29.823515, 18.106344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.605167, 29.955410, 18.172386>,  <26.289635, 30.175236, 18.282455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.605167, 29.955410, 18.172386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118656, -0.303123, 0.945536,
		-0.603045, -0.778520, -0.173904,
		0.788833, -0.549566, -0.275173,
		26.841818, 29.790541, 18.089834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.242773, 29.496630, 18.519352>,  <26.289635, 30.175236, 18.282455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.242773, 29.496630, 18.519352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.636959, 29.508057, 18.452372>,  <26.873470, 29.514914, 18.412184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.636959, 29.508057, 18.452372>,  <26.242773, 29.496630, 18.519352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.636959, 29.508057, 18.452372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167985, -0.310361, 0.935659,
		-0.025241, -0.950189, -0.310650,
		0.985466, 0.028568, -0.167451,
		26.932598, 29.516626, 18.402136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568171, 28.934402, 18.930725>,  <26.242773, 29.496630, 18.519352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.568171, 28.934402, 18.930725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.885485, 29.161381, 18.842453>,  <27.075874, 29.297567, 18.789490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.885485, 29.161381, 18.842453>,  <26.568171, 28.934402, 18.930725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.885485, 29.161381, 18.842453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400847, -0.213945, 0.890814,
		0.458277, -0.795129, -0.397179,
		0.793287, 0.567448, -0.220679,
		27.123470, 29.331615, 18.776249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237606, 28.508841, 18.881264>,  <26.568171, 28.934402, 18.930725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237606, 28.508841, 18.881264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.294310, 28.893744, 18.974188>,  <27.328331, 29.124685, 19.029942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.294310, 28.893744, 18.974188>,  <27.237606, 28.508841, 18.881264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.294310, 28.893744, 18.974188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293633, -0.264993, 0.918454,
		0.945349, -0.061985, -0.320116,
		0.141759, 0.962256, 0.232309,
		27.336838, 29.182421, 19.043880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825033, 28.459669, 19.324951>,  <27.237606, 28.508841, 18.881264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825033, 28.459669, 19.324951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.670641, 28.820459, 19.402367>,  <27.578007, 29.036934, 19.448816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.670641, 28.820459, 19.402367>,  <27.825033, 28.459669, 19.324951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670641, 28.820459, 19.402367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170853, -0.136270, 0.975828,
		0.906548, 0.409715, -0.101508,
		-0.385979, 0.901978, 0.193536,
		27.554848, 29.091053, 19.460428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.443047, 28.575613, 19.100426>,  <27.825033, 28.459669, 19.324951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.443047, 28.575613, 19.100426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.777609, 28.360128, 19.060001>,  <28.978346, 28.230837, 19.035746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.777609, 28.360128, 19.060001>,  <28.443047, 28.575613, 19.100426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777609, 28.360128, 19.060001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073464, 0.292901, -0.953316,
		0.543164, 0.789936, 0.284560,
		0.836406, -0.538712, -0.101062,
		29.028530, 28.198515, 19.029682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061981, 28.934521, 18.720135>,  <28.443047, 28.575613, 19.100426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061981, 28.934521, 18.720135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.114262, 28.544025, 18.650997>,  <29.145630, 28.309729, 18.609514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.114262, 28.544025, 18.650997>,  <29.061981, 28.934521, 18.720135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114262, 28.544025, 18.650997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013279, 0.176047, -0.984292,
		0.991333, 0.126352, 0.035972,
		0.130700, -0.976239, -0.172843,
		29.153471, 28.251154, 18.599144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461685, 28.949284, 18.190655>,  <29.061981, 28.934521, 18.720135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461685, 28.949284, 18.190655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.362251, 28.561844, 18.192554>,  <29.302591, 28.329380, 18.193695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.362251, 28.561844, 18.192554>,  <29.461685, 28.949284, 18.190655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362251, 28.561844, 18.192554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091657, -0.028405, -0.995386,
		0.964264, -0.247002, 0.095840,
		-0.248585, -0.968599, 0.004751,
		29.287676, 28.271265, 18.193979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924944, 28.612738, 17.709454>,  <29.461685, 28.949284, 18.190655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924944, 28.612738, 17.709454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.635689, 28.344460, 17.775469>,  <29.462135, 28.183493, 17.815079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.635689, 28.344460, 17.775469>,  <29.924944, 28.612738, 17.709454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635689, 28.344460, 17.775469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009438, -0.248517, -0.968581,
		0.690640, -0.698859, 0.186042,
		-0.723137, -0.670698, 0.165040,
		29.418747, 28.143250, 17.824980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093658, 27.904144, 17.441935>,  <29.924944, 28.612738, 17.709454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093658, 27.904144, 17.441935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.693771, 27.896915, 17.435827>,  <29.453838, 27.892578, 17.432163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.693771, 27.896915, 17.435827>,  <30.093658, 27.904144, 17.441935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693771, 27.896915, 17.435827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018667, -0.205948, -0.978385,
		0.014540, -0.978396, 0.206227,
		-0.999720, -0.018075, -0.015269,
		29.393856, 27.891493, 17.431246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954470, 27.394081, 16.994335>,  <30.093658, 27.904144, 17.441935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954470, 27.394081, 16.994335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.630201, 27.627266, 17.016138>,  <29.435640, 27.767178, 17.029221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.630201, 27.627266, 17.016138>,  <29.954470, 27.394081, 16.994335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.630201, 27.627266, 17.016138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032824, 0.138199, -0.989861,
		-0.584584, -0.800660, -0.131168,
		-0.810669, 0.582962, 0.054508,
		29.387001, 27.802155, 17.032490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.391642, 27.032425, 16.599533>,  <29.954470, 27.394081, 16.994335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.391642, 27.032425, 16.599533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.287163, 27.418064, 16.618700>,  <29.224476, 27.649446, 16.630199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.287163, 27.418064, 16.618700>,  <29.391642, 27.032425, 16.599533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287163, 27.418064, 16.618700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154575, 0.007224, -0.987955,
		-0.952829, -0.265457, 0.147138,
		-0.261197, 0.964096, 0.047916,
		29.208803, 27.707293, 16.633076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673967, 27.117775, 16.309046>,  <29.391642, 27.032425, 16.599533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673967, 27.117775, 16.309046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.887070, 27.455606, 16.287672>,  <29.014931, 27.658306, 16.274849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.887070, 27.455606, 16.287672>,  <28.673967, 27.117775, 16.309046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887070, 27.455606, 16.287672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095414, -0.002791, -0.995434,
		-0.840873, 0.535421, 0.079097,
		0.532755, 0.844581, -0.053433,
		29.046896, 27.708981, 16.271643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467894, 27.375185, 15.730283>,  <28.673967, 27.117775, 16.309046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467894, 27.375185, 15.730283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.792614, 27.604246, 15.775973>,  <28.987446, 27.741682, 15.803388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.792614, 27.604246, 15.775973>,  <28.467894, 27.375185, 15.730283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792614, 27.604246, 15.775973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075770, 0.090661, -0.992995,
		-0.578997, 0.814770, 0.030209,
		0.811801, 0.572653, 0.114227,
		29.036154, 27.776041, 15.810242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.337593, 32.520168, 31.242027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501469, 32.630486, 30.894213>,  <32.599792, 32.696674, 30.685524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501469, 32.630486, 30.894213>,  <32.337593, 32.520168, 31.242027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501469, 32.630486, 30.894213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581123, -0.655857, -0.481818,
		-0.703173, 0.702703, -0.108427,
		0.409687, 0.275792, -0.869537,
		32.624374, 32.713223, 30.633352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849783, 32.744884, 30.678108>,  <32.337593, 32.520168, 31.242027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849783, 32.744884, 30.678108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.175758, 32.584896, 30.510349>,  <32.371346, 32.488903, 30.409693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.175758, 32.584896, 30.510349>,  <31.849783, 32.744884, 30.678108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175758, 32.584896, 30.510349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566590, -0.397695, -0.721675,
		0.121857, 0.825748, -0.550718,
		0.814940, -0.399972, -0.419399,
		32.420238, 32.464905, 30.384529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759087, 32.803108, 29.998487>,  <31.849783, 32.744884, 30.678108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759087, 32.803108, 29.998487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.029652, 32.510891, 30.035957>,  <32.191990, 32.335560, 30.058439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.029652, 32.510891, 30.035957>,  <31.759087, 32.803108, 29.998487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029652, 32.510891, 30.035957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472374, -0.527885, -0.705833,
		0.565090, 0.433185, -0.702157,
		0.676414, -0.730539, 0.093677,
		32.232574, 32.291729, 30.064060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926950, 32.627373, 29.333637>,  <31.759087, 32.803108, 29.998487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926950, 32.627373, 29.333637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.025776, 32.315453, 29.563723>,  <32.085072, 32.128300, 29.701775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.025776, 32.315453, 29.563723>,  <31.926950, 32.627373, 29.333637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025776, 32.315453, 29.563723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402513, -0.622568, -0.671112,
		0.881444, -0.065725, -0.467693,
		0.247062, -0.779800, 0.575214,
		32.099895, 32.081512, 29.736286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086758, 32.105141, 28.792515>,  <31.926950, 32.627373, 29.333637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086758, 32.105141, 28.792515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.062157, 31.884193, 29.125046>,  <32.047398, 31.751625, 29.324564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.062157, 31.884193, 29.125046>,  <32.086758, 32.105141, 28.792515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062157, 31.884193, 29.125046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383711, -0.755814, -0.530577,
		0.921403, -0.351621, -0.165467,
		-0.061499, -0.552367, 0.831330,
		32.043705, 31.718483, 29.374445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285671, 31.477446, 28.620975>,  <32.086758, 32.105141, 28.792515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285671, 31.477446, 28.620975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.060810, 31.379368, 28.936916>,  <31.925894, 31.320522, 29.126480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.060810, 31.379368, 28.936916>,  <32.285671, 31.477446, 28.620975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060810, 31.379368, 28.936916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509986, -0.649075, -0.564461,
		0.651074, -0.720126, 0.239834,
		-0.562153, -0.245193, 0.789850,
		31.892164, 31.305809, 29.173872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369053, 30.793793, 28.629011>,  <32.285671, 31.477446, 28.620975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369053, 30.793793, 28.629011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.019367, 30.890993, 28.797152>,  <31.809555, 30.949314, 28.898035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.019367, 30.890993, 28.797152>,  <32.369053, 30.793793, 28.629011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019367, 30.890993, 28.797152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466434, -0.660760, -0.588078,
		0.134847, -0.710174, 0.690992,
		-0.874217, 0.243001, 0.420350,
		31.757101, 30.963894, 28.923256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056892, 30.223389, 28.885206>,  <32.369053, 30.793793, 28.629011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056892, 30.223389, 28.885206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.735670, 30.460373, 28.859610>,  <31.542938, 30.602564, 28.844252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.735670, 30.460373, 28.859610>,  <32.056892, 30.223389, 28.885206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735670, 30.460373, 28.859610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535921, -0.764993, -0.357175,
		-0.260565, -0.252537, 0.931843,
		-0.803053, 0.592462, -0.063991,
		31.494755, 30.638111, 28.840412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475000, 29.755899, 28.986025>,  <32.056892, 30.223389, 28.885206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475000, 29.755899, 28.986025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.315039, 30.078650, 28.812115>,  <31.219063, 30.272299, 28.707767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.315039, 30.078650, 28.812115>,  <31.475000, 29.755899, 28.986025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315039, 30.078650, 28.812115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604075, -0.588780, -0.537059,
		-0.689328, 0.047869, 0.722866,
		-0.399901, 0.806875, -0.434779,
		31.195068, 30.320711, 28.681681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716158, 29.614632, 28.917578>,  <31.475000, 29.755899, 28.986025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716158, 29.614632, 28.917578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.799006, 29.908546, 28.659216>,  <30.848715, 30.084896, 28.504200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.799006, 29.908546, 28.659216>,  <30.716158, 29.614632, 28.917578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799006, 29.908546, 28.659216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656045, -0.385454, -0.648869,
		-0.725746, 0.558135, 0.402218,
		0.207120, 0.734787, -0.645903,
		30.861141, 30.128983, 28.465445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105255, 29.741190, 28.501764>,  <30.716158, 29.614632, 28.917578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105255, 29.741190, 28.501764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.379591, 29.938707, 28.287926>,  <30.544191, 30.057219, 28.159622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.379591, 29.938707, 28.287926>,  <30.105255, 29.741190, 28.501764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379591, 29.938707, 28.287926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342372, -0.429293, -0.835756,
		-0.642190, 0.756225, -0.125365,
		0.685838, 0.493793, -0.534598,
		30.585342, 30.086845, 28.127546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744251, 30.015669, 27.927496>,  <30.105255, 29.741190, 28.501764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744251, 30.015669, 27.927496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.129778, 30.022919, 27.821119>,  <30.361094, 30.027267, 27.757294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.129778, 30.022919, 27.821119>,  <29.744251, 30.015669, 27.927496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129778, 30.022919, 27.821119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245656, -0.326891, -0.912576,
		-0.103473, 0.944888, -0.310611,
		0.963819, 0.018124, -0.265942,
		30.418924, 30.028357, 27.741337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419096, 30.747879, 27.920166>,  <29.744251, 30.015669, 27.927496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419096, 30.747879, 27.920166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.035423, 30.860668, 27.928783>,  <28.805220, 30.928341, 27.933954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.035423, 30.860668, 27.928783>,  <29.419096, 30.747879, 27.920166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035423, 30.860668, 27.928783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130394, 0.373387, 0.918466,
		0.250939, 0.883783, -0.394913,
		-0.959180, 0.281973, 0.021543,
		28.747669, 30.945261, 27.935246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402773, 31.418043, 28.132132>,  <29.419096, 30.747879, 27.920166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402773, 31.418043, 28.132132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.040564, 31.267799, 28.211069>,  <28.823238, 31.177654, 28.258432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.040564, 31.267799, 28.211069>,  <29.402773, 31.418043, 28.132132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040564, 31.267799, 28.211069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004522, 0.473626, 0.880715,
		-0.424270, 0.796616, -0.430578,
		-0.905524, -0.375608, 0.197343,
		28.768906, 31.155117, 28.270271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095043, 31.921078, 28.541597>,  <29.402773, 31.418043, 28.132132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095043, 31.921078, 28.541597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.851725, 31.610132, 28.605698>,  <28.705734, 31.423565, 28.644157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.851725, 31.610132, 28.605698>,  <29.095043, 31.921078, 28.541597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.851725, 31.610132, 28.605698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054464, 0.160546, 0.985525,
		-0.791840, 0.608218, -0.055321,
		-0.608296, -0.777365, 0.160252,
		28.669235, 31.376923, 28.653772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556559, 32.204811, 28.850803>,  <29.095043, 31.921078, 28.541597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.556559, 32.204811, 28.850803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.585152, 31.817066, 28.944811>,  <28.602308, 31.584419, 29.001215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.585152, 31.817066, 28.944811>,  <28.556559, 32.204811, 28.850803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585152, 31.817066, 28.944811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012335, 0.234742, 0.971980,
		-0.997366, -0.072381, 0.004824,
		0.071485, -0.969359, 0.235016,
		28.606598, 31.526258, 29.015316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097546, 32.164532, 29.359842>,  <28.556559, 32.204811, 28.850803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097546, 32.164532, 29.359842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.328764, 31.841507, 29.406664>,  <28.467495, 31.647692, 29.434757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.328764, 31.841507, 29.406664>,  <28.097546, 32.164532, 29.359842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328764, 31.841507, 29.406664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077903, 0.197406, 0.977222,
		-0.812278, -0.555759, 0.177021,
		0.578045, -0.807566, 0.117053,
		28.502178, 31.599237, 29.441780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800930, 31.852268, 29.973372>,  <28.097546, 32.164532, 29.359842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800930, 31.852268, 29.973372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.166441, 31.708431, 29.897785>,  <28.385748, 31.622129, 29.852432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.166441, 31.708431, 29.897785>,  <27.800930, 31.852268, 29.973372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166441, 31.708431, 29.897785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194734, -0.020482, 0.980642,
		-0.356502, -0.932884, 0.051309,
		0.913775, -0.359593, -0.188967,
		28.440573, 31.600554, 29.841095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887260, 31.278662, 30.486065>,  <27.800930, 31.852268, 29.973372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887260, 31.278662, 30.486065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.239765, 31.427975, 30.370110>,  <28.451267, 31.517563, 30.300535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.239765, 31.427975, 30.370110>,  <27.887260, 31.278662, 30.486065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239765, 31.427975, 30.370110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289513, 0.058456, 0.955387,
		0.373578, -0.925873, -0.056556,
		0.881262, 0.373285, -0.289890,
		28.504143, 31.539961, 30.283142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.283184, 30.950939, 31.016668>,  <27.887260, 31.278662, 30.486065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.283184, 30.950939, 31.016668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.510122, 31.242302, 30.863024>,  <28.646284, 31.417120, 30.770836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.510122, 31.242302, 30.863024>,  <28.283184, 30.950939, 31.016668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510122, 31.242302, 30.863024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436247, 0.129764, 0.890421,
		0.698433, -0.672744, -0.244145,
		0.567344, 0.728407, -0.384114,
		28.680326, 31.460825, 30.747789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888048, 30.818316, 31.388088>,  <28.283184, 30.950939, 31.016668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888048, 30.818316, 31.388088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.946541, 31.184998, 31.239349>,  <28.981636, 31.405006, 31.150106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.946541, 31.184998, 31.239349>,  <28.888048, 30.818316, 31.388088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946541, 31.184998, 31.239349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590858, 0.220539, 0.776047,
		0.793412, -0.333192, -0.509392,
		0.146231, 0.916704, -0.371848,
		28.990410, 31.460009, 31.127794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586441, 30.970287, 31.376961>,  <28.888048, 30.818316, 31.388088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586441, 30.970287, 31.376961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.429876, 31.337688, 31.399401>,  <29.335938, 31.558130, 31.412865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.429876, 31.337688, 31.399401>,  <29.586441, 30.970287, 31.376961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429876, 31.337688, 31.399401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731519, 0.273582, 0.624527,
		0.558282, 0.285485, -0.778986,
		-0.391410, 0.918505, 0.056102,
		29.312454, 31.613239, 31.416231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136703, 31.477192, 31.472120>,  <29.586441, 30.970287, 31.376961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136703, 31.477192, 31.472120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.796474, 31.643286, 31.601183>,  <29.592337, 31.742941, 31.678621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.796474, 31.643286, 31.601183>,  <30.136703, 31.477192, 31.472120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796474, 31.643286, 31.601183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481261, 0.367391, 0.795872,
		0.211931, 0.832229, -0.512328,
		-0.850573, 0.415233, 0.322658,
		29.541302, 31.767855, 31.697981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250080, 32.184490, 31.654902>,  <30.136703, 31.477192, 31.472120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250080, 32.184490, 31.654902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.915916, 32.083462, 31.850164>,  <29.715418, 32.022842, 31.967323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.915916, 32.083462, 31.850164>,  <30.250080, 32.184490, 31.654902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915916, 32.083462, 31.850164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389161, 0.355375, 0.849860,
		-0.388131, 0.899953, -0.198592,
		-0.835409, -0.252573, 0.488159,
		29.665295, 32.007690, 31.996613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053793, 32.741241, 31.923294>,  <30.250080, 32.184490, 31.654902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053793, 32.741241, 31.923294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.860844, 32.459343, 32.131390>,  <29.745075, 32.290203, 32.256248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.860844, 32.459343, 32.131390>,  <30.053793, 32.741241, 31.923294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860844, 32.459343, 32.131390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499099, 0.266955, 0.824400,
		-0.719874, 0.657319, 0.222966,
		-0.482372, -0.704746, 0.520241,
		29.716133, 32.247921, 32.287460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739172, 33.119259, 32.501419>,  <30.053793, 32.741241, 31.923294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739172, 33.119259, 32.501419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.836967, 32.740177, 32.583477>,  <29.895645, 32.512730, 32.632710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.836967, 32.740177, 32.583477>,  <29.739172, 33.119259, 32.501419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.836967, 32.740177, 32.583477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372568, 0.287134, 0.882467,
		-0.895220, -0.139323, 0.423284,
		0.244487, -0.947704, 0.205141,
		29.910313, 32.455868, 32.645020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240522, 33.516998, 31.935913>,  <29.739172, 33.119259, 32.501419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240522, 33.516998, 31.935913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.358253, 33.895332, 31.881104>,  <30.428892, 34.122334, 31.848217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.358253, 33.895332, 31.881104>,  <30.240522, 33.516998, 31.935913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358253, 33.895332, 31.881104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329714, -0.034080, -0.943466,
		-0.897029, 0.322866, 0.301823,
		0.294327, 0.945831, -0.137024,
		30.446552, 34.179081, 31.839996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699249, 33.912582, 31.579086>,  <30.240522, 33.516998, 31.935913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699249, 33.912582, 31.579086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.042719, 34.108253, 31.517927>,  <30.248800, 34.225658, 31.481232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.042719, 34.108253, 31.517927>,  <29.699249, 33.912582, 31.579086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042719, 34.108253, 31.517927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287231, 0.212235, -0.934053,
		-0.424471, 0.845965, 0.322749,
		0.858675, 0.489182, -0.152900,
		30.300322, 34.255009, 31.472057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623924, 34.601105, 31.272051>,  <29.699249, 33.912582, 31.579086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623924, 34.601105, 31.272051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.990158, 34.466022, 31.184727>,  <30.209898, 34.384972, 31.132332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.990158, 34.466022, 31.184727>,  <29.623924, 34.601105, 31.272051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990158, 34.466022, 31.184727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125768, 0.275166, -0.953135,
		0.381954, 0.900131, 0.209465,
		0.915584, -0.337710, -0.218309,
		30.264833, 34.364708, 31.119234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940298, 35.143894, 30.876339>,  <29.623924, 34.601105, 31.272051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940298, 35.143894, 30.876339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.118282, 34.798321, 30.781998>,  <30.225073, 34.590977, 30.725393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.118282, 34.798321, 30.781998>,  <29.940298, 35.143894, 30.876339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118282, 34.798321, 30.781998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161177, 0.181805, -0.970036,
		0.880926, 0.469643, -0.058350,
		0.444962, -0.863934, -0.235852,
		30.251772, 34.539139, 30.711243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394632, 35.167850, 30.283772>,  <29.940298, 35.143894, 30.876339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394632, 35.167850, 30.283772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.291786, 34.781559, 30.269604>,  <30.230078, 34.549782, 30.261103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.291786, 34.781559, 30.269604>,  <30.394632, 35.167850, 30.283772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291786, 34.781559, 30.269604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124872, 0.069544, -0.989733,
		0.958279, -0.250052, -0.138474,
		-0.257115, -0.965732, -0.035418,
		30.214651, 34.491840, 30.258978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.649380, 34.933449, 29.579454>,  <30.394632, 35.167850, 30.283772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.649380, 34.933449, 29.579454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.392939, 34.653244, 29.704847>,  <30.239075, 34.485123, 29.780083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.392939, 34.653244, 29.704847>,  <30.649380, 34.933449, 29.579454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392939, 34.653244, 29.704847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286764, -0.160225, -0.944507,
		0.711867, -0.695420, -0.098161,
		-0.641102, -0.700513, 0.313481,
		30.200607, 34.443089, 29.798891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730053, 34.340603, 29.056381>,  <30.649380, 34.933449, 29.579454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730053, 34.340603, 29.056381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.371994, 34.282120, 29.224825>,  <30.157158, 34.247032, 29.325891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.371994, 34.282120, 29.224825>,  <30.730053, 34.340603, 29.056381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371994, 34.282120, 29.224825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388264, -0.208386, -0.897678,
		0.218998, -0.967057, 0.129770,
		-0.895148, -0.146205, 0.421110,
		30.103449, 34.238258, 29.351158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550743, 33.612633, 28.741259>,  <30.730053, 34.340603, 29.056381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550743, 33.612633, 28.741259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.206799, 33.751522, 28.890965>,  <30.000433, 33.834858, 28.980787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.206799, 33.751522, 28.890965>,  <30.550743, 33.612633, 28.741259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206799, 33.751522, 28.890965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491176, -0.362712, -0.791951,
		-0.139235, -0.864797, 0.482431,
		-0.859860, 0.347226, 0.374265,
		29.948841, 33.855690, 29.003244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148426, 33.133568, 28.590443>,  <30.550743, 33.612633, 28.741259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148426, 33.133568, 28.590443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.902893, 33.443874, 28.648943>,  <29.755573, 33.630058, 28.684044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.902893, 33.443874, 28.648943>,  <30.148426, 33.133568, 28.590443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902893, 33.443874, 28.648943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548911, -0.286275, -0.785331,
		-0.567369, -0.562340, 0.601553,
		-0.613832, 0.775771, 0.146251,
		29.718742, 33.676605, 28.692818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.445763, 32.927948, 28.575686>,  <30.148426, 33.133568, 28.590443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.445763, 32.927948, 28.575686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.452509, 33.314087, 28.471516>,  <29.456556, 33.545769, 28.409014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.452509, 33.314087, 28.471516>,  <29.445763, 32.927948, 28.575686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452509, 33.314087, 28.471516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598919, -0.198808, -0.775739,
		-0.800632, 0.169056, 0.574812,
		0.016867, 0.965347, -0.260423,
		29.457569, 33.603691, 28.393389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809633, 33.064743, 28.259682>,  <29.445763, 32.927948, 28.575686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809633, 33.064743, 28.259682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.042437, 33.358208, 28.119394>,  <29.182119, 33.534286, 28.035223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.042437, 33.358208, 28.119394>,  <28.809633, 33.064743, 28.259682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.042437, 33.358208, 28.119394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556240, 0.044574, -0.829826,
		-0.593182, 0.678047, 0.434036,
		0.582008, 0.733665, -0.350716,
		29.217039, 33.578308, 28.014179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342592, 33.505680, 27.937792>,  <28.809633, 33.064743, 28.259682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342592, 33.505680, 27.937792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.708466, 33.545559, 27.781118>,  <28.927990, 33.569485, 27.687115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.708466, 33.545559, 27.781118>,  <28.342592, 33.505680, 27.937792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708466, 33.545559, 27.781118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396881, 0.038339, -0.917069,
		-0.076410, 0.994279, 0.074635,
		0.914684, 0.099695, -0.391681,
		28.982870, 33.575466, 27.663614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224346, 33.857796, 27.256710>,  <28.342592, 33.505680, 27.937792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224346, 33.857796, 27.256710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.608541, 33.753193, 27.218590>,  <28.839058, 33.690434, 27.195717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.608541, 33.753193, 27.218590>,  <28.224346, 33.857796, 27.256710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608541, 33.753193, 27.218590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089111, 0.035457, -0.995390,
		0.263678, 0.964551, 0.010753,
		0.960486, -0.261504, -0.095301,
		28.896687, 33.674740, 27.189999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585539, 34.427814, 26.911095>,  <28.224346, 33.857796, 27.256710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585539, 34.427814, 26.911095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.780235, 34.082207, 26.859621>,  <28.897053, 33.874844, 26.828737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.780235, 34.082207, 26.859621>,  <28.585539, 34.427814, 26.911095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.780235, 34.082207, 26.859621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018391, 0.157416, -0.987361,
		0.873354, 0.478221, 0.092511,
		0.486739, -0.864017, -0.128685,
		28.926256, 33.823002, 26.821016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080097, 34.557697, 26.420916>,  <28.585539, 34.427814, 26.911095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080097, 34.557697, 26.420916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.069109, 34.158649, 26.395592>,  <29.062515, 33.919220, 26.380398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.069109, 34.158649, 26.395592>,  <29.080097, 34.557697, 26.420916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069109, 34.158649, 26.395592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090305, 0.065551, -0.993755,
		0.995535, -0.021582, -0.091890,
		-0.027470, -0.997616, -0.063310,
		29.060867, 33.859364, 26.376598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517138, 34.379765, 25.896667>,  <29.080097, 34.557697, 26.420916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517138, 34.379765, 25.896667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.281412, 34.059296, 25.938290>,  <29.139977, 33.867012, 25.963263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.281412, 34.059296, 25.938290>,  <29.517138, 34.379765, 25.896667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.281412, 34.059296, 25.938290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030955, -0.106311, -0.993851,
		0.807313, -0.588909, 0.037850,
		-0.589312, -0.801177, 0.104057,
		29.104618, 33.818943, 25.969507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867361, 33.806366, 25.505974>,  <29.517138, 34.379765, 25.896667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867361, 33.806366, 25.505974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.482662, 33.706638, 25.551376>,  <29.251842, 33.646801, 25.578617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.482662, 33.706638, 25.551376>,  <29.867361, 33.806366, 25.505974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482662, 33.706638, 25.551376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094736, -0.086070, -0.991775,
		0.257037, -0.964589, 0.059158,
		-0.961747, -0.249319, 0.113505,
		29.194138, 33.631844, 25.585428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717499, 33.397320, 24.985176>,  <29.867361, 33.806366, 25.505974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717499, 33.397320, 24.985176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.342012, 33.480755, 25.094942>,  <29.116720, 33.530815, 25.160801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.342012, 33.480755, 25.094942>,  <29.717499, 33.397320, 24.985176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342012, 33.480755, 25.094942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321825, -0.245224, -0.914491,
		-0.123458, -0.946761, 0.297324,
		-0.938716, 0.208588, 0.274416,
		29.060398, 33.543331, 25.177267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388798, 32.821259, 24.792402>,  <29.717499, 33.397320, 24.985176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388798, 32.821259, 24.792402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.132660, 33.128456, 24.797152>,  <28.978977, 33.312775, 24.800001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.132660, 33.128456, 24.797152>,  <29.388798, 32.821259, 24.792402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132660, 33.128456, 24.797152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237733, -0.183474, -0.953845,
		-0.730369, -0.613614, 0.300065,
		-0.640346, 0.767995, 0.011873,
		28.940556, 33.358856, 24.800713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736700, 32.566826, 24.476070>,  <29.388798, 32.821259, 24.792402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736700, 32.566826, 24.476070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.729275, 32.963943, 24.428703>,  <28.724819, 33.202213, 24.400282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.729275, 32.963943, 24.428703>,  <28.736700, 32.566826, 24.476070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729275, 32.963943, 24.428703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460510, -0.113617, -0.880353,
		-0.887460, 0.038193, 0.459299,
		-0.018561, 0.992790, -0.118419,
		28.723707, 33.261780, 24.393177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063082, 32.666222, 24.161764>,  <28.736700, 32.566826, 24.476070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063082, 32.666222, 24.161764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.284348, 32.993149, 24.097271>,  <28.417107, 33.189304, 24.058575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.284348, 32.993149, 24.097271>,  <28.063082, 32.666222, 24.161764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.284348, 32.993149, 24.097271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384773, 0.079002, -0.919624,
		-0.738891, 0.570740, 0.358184,
		0.553164, 0.817322, -0.161231,
		28.450296, 33.238346, 24.048903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608744, 32.913883, 23.760418>,  <28.063082, 32.666222, 24.161764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608744, 32.913883, 23.760418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.935379, 33.138840, 23.708418>,  <28.131359, 33.273815, 23.677217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.935379, 33.138840, 23.708418>,  <27.608744, 32.913883, 23.760418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.935379, 33.138840, 23.708418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260384, 0.157897, -0.952507,
		-0.515157, 0.811654, 0.275375,
		0.816586, 0.562394, -0.130000,
		28.180355, 33.307556, 23.669418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399302, 33.316689, 23.180048>,  <27.608744, 32.913883, 23.760418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399302, 33.316689, 23.180048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.795084, 33.372841, 23.194288>,  <28.032553, 33.406532, 23.202833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.795084, 33.372841, 23.194288>,  <27.399302, 33.316689, 23.180048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.795084, 33.372841, 23.194288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015400, 0.142442, -0.989683,
		-0.144007, 0.979797, 0.138778,
		0.989457, 0.140384, 0.035602,
		28.091921, 33.414955, 23.204969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548857, 34.060375, 22.981131>,  <27.399302, 33.316689, 23.180048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548857, 34.060375, 22.981131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.863144, 33.819893, 22.922895>,  <28.051716, 33.675602, 22.887955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.863144, 33.819893, 22.922895>,  <27.548857, 34.060375, 22.981131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863144, 33.819893, 22.922895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004157, 0.240485, -0.970644,
		0.618573, 0.762045, 0.191452,
		0.785716, -0.601210, -0.145590,
		28.098858, 33.639530, 22.879219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955536, 34.380165, 22.437677>,  <27.548857, 34.060375, 22.981131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955536, 34.380165, 22.437677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.078753, 33.999767, 22.448439>,  <28.152683, 33.771530, 22.454895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.078753, 33.999767, 22.448439>,  <27.955536, 34.380165, 22.437677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078753, 33.999767, 22.448439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015541, -0.023247, -0.999609,
		0.951246, 0.308339, 0.007618,
		0.308042, -0.950992, 0.026905,
		28.171165, 33.714470, 22.456511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.434748, 34.376396, 21.857832>,  <27.955536, 34.380165, 22.437677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.434748, 34.376396, 21.857832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.305061, 34.001331, 21.907913>,  <28.227249, 33.776295, 21.937962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.305061, 34.001331, 21.907913>,  <28.434748, 34.376396, 21.857832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305061, 34.001331, 21.907913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014007, -0.137097, -0.990459,
		0.945879, -0.319371, 0.057583,
		-0.324218, -0.937660, 0.125204,
		28.207796, 33.720032, 21.945475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800579, 34.030697, 21.353682>,  <28.434748, 34.376396, 21.857832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800579, 34.030697, 21.353682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.501656, 33.781212, 21.445345>,  <28.322302, 33.631519, 21.500343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.501656, 33.781212, 21.445345>,  <28.800579, 34.030697, 21.353682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501656, 33.781212, 21.445345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181249, -0.140457, -0.973355,
		0.639283, -0.768929, -0.008083,
		-0.747306, -0.623714, 0.229160,
		28.277464, 33.594097, 21.514093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845713, 33.435509, 20.905569>,  <28.800579, 34.030697, 21.353682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845713, 33.435509, 20.905569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.465347, 33.444881, 21.028996>,  <28.237127, 33.450504, 21.103052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.465347, 33.444881, 21.028996>,  <28.845713, 33.435509, 20.905569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.465347, 33.444881, 21.028996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309256, -0.107666, -0.944864,
		0.011086, -0.993911, 0.109627,
		-0.950914, 0.023428, 0.308567,
		28.180073, 33.451912, 21.121565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465311, 33.064384, 20.969839>,  <28.845713, 33.435509, 20.905569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465311, 33.064384, 20.969839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.795742, 33.213581, 20.800856>,  <29.994001, 33.303101, 20.699465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.795742, 33.213581, 20.800856>,  <29.465311, 33.064384, 20.969839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795742, 33.213581, 20.800856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109914, 0.628601, 0.769922,
		0.552730, -0.682451, 0.478278,
		0.826080, 0.372990, -0.422458,
		30.043566, 33.325478, 20.674118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974176, 32.983215, 21.411211>,  <29.465311, 33.064384, 20.969839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974176, 32.983215, 21.411211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.091076, 33.283562, 21.174301>,  <30.161215, 33.463772, 21.032156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.091076, 33.283562, 21.174301>,  <29.974176, 32.983215, 21.411211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091076, 33.283562, 21.174301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302239, 0.515054, 0.802104,
		0.907327, -0.413421, -0.076418,
		0.292248, 0.750868, -0.592274,
		30.178751, 33.508823, 20.996618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627621, 33.222889, 21.674438>,  <29.974176, 32.983215, 21.411211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627621, 33.222889, 21.674438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.472872, 33.529434, 21.469296>,  <30.380022, 33.713360, 21.346210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.472872, 33.529434, 21.469296>,  <30.627621, 33.222889, 21.674438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472872, 33.529434, 21.469296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088203, 0.584367, 0.806682,
		0.917906, 0.266846, -0.293670,
		-0.386871, 0.766360, -0.512857,
		30.356810, 33.759342, 21.315439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078939, 33.743408, 21.583344>,  <30.627621, 33.222889, 21.674438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078939, 33.743408, 21.583344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.707066, 33.889477, 21.602684>,  <30.483942, 33.977119, 21.614288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.707066, 33.889477, 21.602684>,  <31.078939, 33.743408, 21.583344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707066, 33.889477, 21.602684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228695, 0.469297, 0.852912,
		0.288771, 0.803995, -0.519811,
		-0.929682, 0.365174, 0.048351,
		30.428162, 33.999027, 21.617189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140957, 34.439781, 21.692854>,  <31.078939, 33.743408, 21.583344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140957, 34.439781, 21.692854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.793064, 34.322483, 21.851635>,  <30.584328, 34.252106, 21.946903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.793064, 34.322483, 21.851635>,  <31.140957, 34.439781, 21.692854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.793064, 34.322483, 21.851635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200462, 0.525069, 0.827114,
		-0.450975, 0.798943, -0.397885,
		-0.869734, -0.293247, 0.396951,
		30.532145, 34.234509, 21.970720>
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
