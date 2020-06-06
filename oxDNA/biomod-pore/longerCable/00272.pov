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
	<23.902731, 35.040855, 35.067059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.295290, 34.978905, 35.112446>,  <24.530825, 34.941734, 35.139679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.295290, 34.978905, 35.112446>,  <23.902731, 35.040855, 35.067059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.295290, 34.978905, 35.112446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188675, -0.668572, 0.719314,
		-0.035546, -0.727340, -0.685356,
		0.981396, -0.154878, 0.113466,
		24.589708, 34.932442, 35.146484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.091799, 34.368992, 35.289867>,  <23.902731, 35.040855, 35.067059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.091799, 34.368992, 35.289867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.438877, 34.544159, 35.383957>,  <24.647123, 34.649261, 35.440411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.438877, 34.544159, 35.383957>,  <24.091799, 34.368992, 35.289867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.438877, 34.544159, 35.383957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146290, -0.677194, 0.721115,
		0.475085, -0.591297, -0.651662,
		0.867694, 0.437922, 0.235224,
		24.699186, 34.675537, 35.454525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.593990, 33.870850, 35.330864>,  <24.091799, 34.368992, 35.289867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.593990, 33.870850, 35.330864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.745571, 34.184475, 35.527493>,  <24.836519, 34.372650, 35.645470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.745571, 34.184475, 35.527493>,  <24.593990, 33.870850, 35.330864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.745571, 34.184475, 35.527493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207094, -0.589573, 0.780715,
		0.901946, -0.194052, -0.385795,
		0.378954, 0.784059, 0.491575,
		24.859257, 34.419693, 35.674965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.248363, 33.603764, 35.712337>,  <24.593990, 33.870850, 35.330864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.248363, 33.603764, 35.712337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145393, 33.939919, 35.903114>,  <25.083611, 34.141613, 36.017582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145393, 33.939919, 35.903114>,  <25.248363, 33.603764, 35.712337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.145393, 33.939919, 35.903114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113203, -0.463951, 0.878598,
		0.959644, 0.280164, 0.024298,
		-0.257425, 0.840391, 0.476944,
		25.068167, 34.192036, 36.046196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.765469, 33.756329, 36.245667>,  <25.248363, 33.603764, 35.712337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.765469, 33.756329, 36.245667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.425760, 33.936623, 36.355637>,  <25.221935, 34.044800, 36.421619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.425760, 33.936623, 36.355637>,  <25.765469, 33.756329, 36.245667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.425760, 33.936623, 36.355637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010585, -0.535156, 0.844687,
		0.527853, 0.714457, 0.459263,
		-0.849270, 0.450732, 0.274921,
		25.170979, 34.071842, 36.438114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.971762, 34.043446, 36.938316>,  <25.765469, 33.756329, 36.245667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.971762, 34.043446, 36.938316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.607401, 33.921776, 36.826786>,  <25.388784, 33.848774, 36.759869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.607401, 33.921776, 36.826786>,  <25.971762, 34.043446, 36.938316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.607401, 33.921776, 36.826786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140440, -0.406841, 0.902639,
		-0.387993, 0.861371, 0.327874,
		-0.910900, -0.304170, -0.278823,
		25.334131, 33.830524, 36.743137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.518143, 34.272621, 37.423130>,  <25.971762, 34.043446, 36.938316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.518143, 34.272621, 37.423130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344374, 33.961311, 37.241772>,  <25.240112, 33.774525, 37.132957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.344374, 33.961311, 37.241772>,  <25.518143, 34.272621, 37.423130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.344374, 33.961311, 37.241772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087819, -0.464376, 0.881274,
		-0.896417, 0.422663, 0.133389,
		-0.434424, -0.778275, -0.453392,
		25.214046, 33.727829, 37.105755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.906435, 34.114571, 37.710911>,  <25.518143, 34.272621, 37.423130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.906435, 34.114571, 37.710911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.997917, 33.766144, 37.537045>,  <25.052807, 33.557087, 37.432724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.997917, 33.766144, 37.537045>,  <24.906435, 34.114571, 37.710911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.997917, 33.766144, 37.537045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166658, -0.474939, 0.864094,
		-0.959124, -0.125184, -0.253793,
		0.228706, -0.871069, -0.434662,
		25.066528, 33.504822, 37.406647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.428917, 33.706188, 37.828236>,  <24.906435, 34.114571, 37.710911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.428917, 33.706188, 37.828236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.696978, 33.428886, 37.722183>,  <24.857813, 33.262505, 37.658554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.696978, 33.428886, 37.722183>,  <24.428917, 33.706188, 37.828236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.696978, 33.428886, 37.722183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165012, -0.487425, 0.857431,
		-0.723651, -0.530858, -0.441044,
		0.670150, -0.693258, -0.265128,
		24.898024, 33.220909, 37.642647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.113176, 33.029408, 37.642899>,  <24.428917, 33.706188, 37.828236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.113176, 33.029408, 37.642899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.480516, 32.960003, 37.785183>,  <24.700920, 32.918362, 37.870552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.480516, 32.960003, 37.785183>,  <24.113176, 33.029408, 37.642899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.480516, 32.960003, 37.785183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363165, -0.726680, 0.583136,
		0.157306, -0.664704, -0.730359,
		0.918350, -0.173510, 0.355708,
		24.756021, 32.907951, 37.891895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.177773, 32.387901, 37.698750>,  <24.113176, 33.029408, 37.642899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.177773, 32.387901, 37.698750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.486315, 32.487820, 37.932880>,  <24.671440, 32.547771, 38.073360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.486315, 32.487820, 37.932880>,  <24.177773, 32.387901, 37.698750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.486315, 32.487820, 37.932880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266499, -0.708432, 0.653531,
		0.577915, -0.660095, -0.479884,
		0.771357, 0.249797, 0.585328,
		24.717722, 32.562759, 38.108479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.332430, 31.825773, 37.998154>,  <24.177773, 32.387901, 37.698750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.332430, 31.825773, 37.998154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.463305, 32.093914, 38.264561>,  <24.541828, 32.254799, 38.424404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.463305, 32.093914, 38.264561>,  <24.332430, 31.825773, 37.998154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.463305, 32.093914, 38.264561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115385, -0.671195, 0.732246,
		0.937889, -0.316428, -0.142256,
		0.327185, 0.670351, 0.666017,
		24.561460, 32.295021, 38.464367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.990713, 31.503265, 38.639381>,  <24.332430, 31.825773, 37.998154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.990713, 31.503265, 38.639381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.162722, 31.674057, 38.957569>,  <24.265926, 31.776533, 39.148483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.162722, 31.674057, 38.957569>,  <23.990713, 31.503265, 38.639381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.162722, 31.674057, 38.957569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682555, 0.422956, -0.596010,
		-0.590933, 0.799247, -0.109558,
		0.430021, 0.426981, 0.795468,
		24.291727, 31.802151, 39.196209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.049400, 32.263634, 38.599838>,  <23.990713, 31.503265, 38.639381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.049400, 32.263634, 38.599838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.344604, 32.123852, 38.830742>,  <24.521727, 32.039982, 38.969284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.344604, 32.123852, 38.830742>,  <24.049400, 32.263634, 38.599838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.344604, 32.123852, 38.830742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658336, 0.560637, -0.502275,
		-0.148110, 0.750712, 0.643813,
		0.738009, -0.349453, 0.577257,
		24.566008, 32.019016, 39.003918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.478668, 32.765144, 38.971771>,  <24.049400, 32.263634, 38.599838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.478668, 32.765144, 38.971771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.708382, 32.438469, 38.949070>,  <24.846209, 32.242462, 38.935452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.708382, 32.438469, 38.949070>,  <24.478668, 32.765144, 38.971771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.708382, 32.438469, 38.949070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534833, 0.426761, -0.729266,
		0.619802, 0.388452, 0.681873,
		0.574282, -0.816688, -0.056750,
		24.880667, 32.193462, 38.932045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.224604, 32.780689, 39.204014>,  <24.478668, 32.765144, 38.971771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.224604, 32.780689, 39.204014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170172, 32.516762, 38.908413>,  <25.137512, 32.358406, 38.731052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170172, 32.516762, 38.908413>,  <25.224604, 32.780689, 39.204014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.170172, 32.516762, 38.908413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405232, 0.643616, -0.649265,
		0.904030, -0.387819, 0.179796,
		-0.136078, -0.659815, -0.739004,
		25.129349, 32.318817, 38.686710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.762928, 32.893764, 38.726612>,  <25.224604, 32.780689, 39.204014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.762928, 32.893764, 38.726612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.461773, 32.723644, 38.525703>,  <25.281080, 32.621571, 38.405159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.461773, 32.723644, 38.525703>,  <25.762928, 32.893764, 38.726612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.461773, 32.723644, 38.525703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284034, 0.478465, -0.830901,
		0.593704, -0.768237, -0.239430,
		-0.752888, -0.425303, -0.502272,
		25.235907, 32.596054, 38.375023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.038843, 32.700104, 38.123848>,  <25.762928, 32.893764, 38.726612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.038843, 32.700104, 38.123848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648060, 32.721313, 38.041149>,  <25.413589, 32.734039, 37.991531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648060, 32.721313, 38.041149>,  <26.038843, 32.700104, 38.123848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.648060, 32.721313, 38.041149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204406, 0.511207, -0.834797,
		0.061429, -0.857820, -0.510265,
		-0.976957, 0.053021, -0.206747,
		25.354973, 32.737221, 37.979126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.884716, 32.441734, 37.400604>,  <26.038843, 32.700104, 38.123848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.884716, 32.441734, 37.400604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.571449, 32.679241, 37.474457>,  <25.383490, 32.821747, 37.518768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.571449, 32.679241, 37.474457>,  <25.884716, 32.441734, 37.400604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.571449, 32.679241, 37.474457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059853, 0.367526, -0.928085,
		-0.618925, -0.715794, -0.323373,
		-0.783166, 0.593770, 0.184629,
		25.336500, 32.857372, 37.529846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.563723, 32.475735, 36.851303>,  <25.884716, 32.441734, 37.400604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.563723, 32.475735, 36.851303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.425821, 32.797562, 37.044720>,  <25.343081, 32.990658, 37.160770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.425821, 32.797562, 37.044720>,  <25.563723, 32.475735, 36.851303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.425821, 32.797562, 37.044720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071084, 0.491269, -0.868102,
		-0.935999, -0.333651, -0.112174,
		-0.344751, 0.804569, 0.483545,
		25.322395, 33.038933, 37.189781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.335697, 32.883614, 36.372124>,  <25.563723, 32.475735, 36.851303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.335697, 32.883614, 36.372124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409145, 33.146149, 36.664837>,  <25.453215, 33.303669, 36.840466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.409145, 33.146149, 36.664837>,  <25.335697, 32.883614, 36.372124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.409145, 33.146149, 36.664837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027885, 0.740662, -0.671299,
		-0.982602, 0.143669, 0.117697,
		0.183619, 0.656338, 0.731782,
		25.464231, 33.343052, 36.884373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.616167, 32.783482, 36.416355>,  <25.335697, 32.883614, 36.372124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.616167, 32.783482, 36.416355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.793566, 33.071682, 36.629593>,  <24.900005, 33.244602, 36.757534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.793566, 33.071682, 36.629593>,  <24.616167, 32.783482, 36.416355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.793566, 33.071682, 36.629593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066220, 0.619500, -0.782199,
		-0.893826, 0.311602, 0.322458,
		0.443498, 0.720503, 0.533091,
		24.926615, 33.287834, 36.789520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.180754, 33.358746, 36.377289>,  <24.616167, 32.783482, 36.416355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.180754, 33.358746, 36.377289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.549225, 33.494175, 36.454018>,  <24.770308, 33.575432, 36.500057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.549225, 33.494175, 36.454018>,  <24.180754, 33.358746, 36.377289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.549225, 33.494175, 36.454018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170520, 0.794309, -0.583092,
		-0.349786, 0.504423, 0.789435,
		0.921180, 0.338572, 0.191824,
		24.825579, 33.595745, 36.511566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.088583, 34.008129, 36.677200>,  <24.180754, 33.358746, 36.377289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.088583, 34.008129, 36.677200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.440868, 33.997486, 36.488041>,  <24.652239, 33.991100, 36.374546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.440868, 33.997486, 36.488041>,  <24.088583, 34.008129, 36.677200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.440868, 33.997486, 36.488041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253803, 0.816471, -0.518613,
		0.399910, 0.576773, 0.712324,
		0.880714, -0.026609, -0.472901,
		24.705082, 33.989502, 36.346172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.135872, 34.782066, 36.746197>,  <24.088583, 34.008129, 36.677200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.135872, 34.782066, 36.746197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.456409, 34.559334, 36.658756>,  <24.648731, 34.425694, 36.606293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.456409, 34.559334, 36.658756>,  <24.135872, 34.782066, 36.746197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.456409, 34.559334, 36.658756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134405, 0.523675, -0.841249,
		0.582911, 0.644748, 0.494485,
		0.801343, -0.556834, -0.218598,
		24.696812, 34.392284, 36.593178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.637142, 35.225895, 36.700893>,  <24.135872, 34.782066, 36.746197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.637142, 35.225895, 36.700893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.740366, 34.910858, 36.477074>,  <24.802299, 34.721836, 36.342781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.740366, 34.910858, 36.477074>,  <24.637142, 35.225895, 36.700893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.740366, 34.910858, 36.477074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235919, 0.613007, -0.754033,
		0.936882, 0.062576, 0.344000,
		0.258059, -0.787596, -0.559552,
		24.817783, 34.674580, 36.309208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.287355, 35.365101, 36.379997>,  <24.637142, 35.225895, 36.700893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.287355, 35.365101, 36.379997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143379, 35.072208, 36.148731>,  <25.056993, 34.896473, 36.009972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.143379, 35.072208, 36.148731>,  <25.287355, 35.365101, 36.379997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.143379, 35.072208, 36.148731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207449, 0.541374, -0.814788,
		0.909620, -0.413215, -0.042961,
		-0.359941, -0.732235, -0.578165,
		25.035397, 34.852539, 35.975281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831028, 35.190128, 35.833031>,  <25.287355, 35.365101, 36.379997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.831028, 35.190128, 35.833031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451408, 35.123951, 35.725746>,  <25.223637, 35.084244, 35.661377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.451408, 35.123951, 35.725746>,  <25.831028, 35.190128, 35.833031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.451408, 35.123951, 35.725746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153516, 0.500561, -0.851981,
		0.275213, -0.849744, -0.449658,
		-0.949047, -0.165446, -0.268210,
		25.166695, 35.074318, 35.645283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.708099, 35.146626, 34.998745>,  <25.831028, 35.190128, 35.833031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.708099, 35.146626, 34.998745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340025, 35.206722, 35.143345>,  <25.119181, 35.242783, 35.230106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.340025, 35.206722, 35.143345>,  <25.708099, 35.146626, 34.998745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.340025, 35.206722, 35.143345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243276, 0.504022, -0.828721,
		-0.306719, -0.850522, -0.427242,
		-0.920185, 0.150247, 0.361505,
		25.063969, 35.251797, 35.251797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.276110, 34.584854, 35.174942>,  <25.708099, 35.146626, 34.998745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.276110, 34.584854, 35.174942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532478, 34.578686, 34.867962>,  <26.686300, 34.574986, 34.683773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532478, 34.578686, 34.867962>,  <26.276110, 34.584854, 35.174942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.532478, 34.578686, 34.867962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632996, 0.576170, 0.517053,
		0.434207, -0.817184, 0.379044,
		0.640921, -0.015426, -0.767452,
		26.724754, 34.574059, 34.637726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.917677, 34.749447, 35.508789>,  <26.276110, 34.584854, 35.174942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.917677, 34.749447, 35.508789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982262, 34.845116, 35.125805>,  <27.021013, 34.902515, 34.896015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.982262, 34.845116, 35.125805>,  <26.917677, 34.749447, 35.508789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.982262, 34.845116, 35.125805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614938, 0.734433, 0.287157,
		0.771869, -0.635143, -0.028490,
		0.161462, 0.239167, -0.957460,
		27.030701, 34.916866, 34.838566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557995, 34.864113, 35.483505>,  <26.917677, 34.749447, 35.508789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557995, 34.864113, 35.483505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393772, 35.069145, 35.181854>,  <27.295238, 35.192165, 35.000862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393772, 35.069145, 35.181854>,  <27.557995, 34.864113, 35.483505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393772, 35.069145, 35.181854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406689, 0.843162, 0.351685,
		0.816116, -0.162307, -0.554626,
		-0.410559, 0.512576, -0.754127,
		27.270605, 35.222919, 34.955616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071074, 35.294140, 35.274540>,  <27.557995, 34.864113, 35.483505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.071074, 35.294140, 35.274540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731062, 35.436222, 35.118961>,  <27.527054, 35.521473, 35.025616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731062, 35.436222, 35.118961>,  <28.071074, 35.294140, 35.274540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731062, 35.436222, 35.118961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243477, 0.919752, 0.307855,
		0.467082, 0.166988, -0.868302,
		-0.850031, 0.355206, -0.388942,
		27.476053, 35.542786, 35.002277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205400, 36.004261, 34.918522>,  <28.071074, 35.294140, 35.274540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205400, 36.004261, 34.918522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811058, 36.001343, 34.985500>,  <27.574453, 35.999592, 35.025688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811058, 36.001343, 34.985500>,  <28.205400, 36.004261, 34.918522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.811058, 36.001343, 34.985500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052336, 0.935696, 0.348904,
		-0.159226, 0.352732, -0.922078,
		-0.985854, -0.007296, 0.167448,
		27.515303, 35.999153, 35.035736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758156, 35.698517, 34.353992>,  <28.205400, 36.004261, 34.918522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.758156, 35.698517, 34.353992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409595, 35.869045, 34.451080>,  <27.200459, 35.971363, 34.509335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409595, 35.869045, 34.451080>,  <27.758156, 35.698517, 34.353992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409595, 35.869045, 34.451080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477083, 0.621217, 0.621677,
		0.114252, 0.657526, -0.744718,
		-0.871400, 0.426320, 0.242719,
		27.148176, 35.996941, 34.523895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.908575, 36.440975, 34.299786>,  <27.758156, 35.698517, 34.353992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.908575, 36.440975, 34.299786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581678, 36.383850, 34.523113>,  <27.385540, 36.349575, 34.657108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581678, 36.383850, 34.523113>,  <27.908575, 36.440975, 34.299786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581678, 36.383850, 34.523113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278674, 0.750075, 0.599773,
		-0.504437, 0.645749, -0.573195,
		-0.817242, -0.142813, 0.558319,
		27.336506, 36.341007, 34.690609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592104, 37.064442, 34.451061>,  <27.908575, 36.440975, 34.299786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592104, 37.064442, 34.451061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436262, 36.828766, 34.734207>,  <27.342756, 36.687363, 34.904095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436262, 36.828766, 34.734207>,  <27.592104, 37.064442, 34.451061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436262, 36.828766, 34.734207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147807, 0.718629, 0.679504,
		-0.909044, 0.369365, -0.192896,
		-0.389606, -0.589187, 0.707860,
		27.319380, 36.652008, 34.946564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995113, 37.445873, 34.860714>,  <27.592104, 37.064442, 34.451061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995113, 37.445873, 34.860714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157438, 37.165089, 35.094830>,  <27.254833, 36.996616, 35.235298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157438, 37.165089, 35.094830>,  <26.995113, 37.445873, 34.860714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.157438, 37.165089, 35.094830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099703, 0.670569, 0.735116,
		-0.908503, -0.239963, 0.342112,
		0.405811, -0.701965, 0.585289,
		27.279181, 36.954498, 35.270416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574478, 37.449791, 35.466358>,  <26.995113, 37.445873, 34.860714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574478, 37.449791, 35.466358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.913963, 37.281712, 35.594807>,  <27.117655, 37.180862, 35.671875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.913963, 37.281712, 35.594807>,  <26.574478, 37.449791, 35.466358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.913963, 37.281712, 35.594807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067917, 0.515576, 0.854148,
		-0.524477, -0.746735, 0.409036,
		0.848711, -0.420200, 0.321124,
		27.168577, 37.155651, 35.691143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279921, 37.811687, 35.514374>,  <26.574478, 37.449791, 35.466358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279921, 37.811687, 35.514374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464985, 38.156124, 35.430031>,  <27.576023, 38.362785, 35.379425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.464985, 38.156124, 35.430031>,  <27.279921, 37.811687, 35.514374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464985, 38.156124, 35.430031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838547, -0.347862, 0.419321,
		0.287725, -0.370820, -0.883010,
		0.462659, 0.861095, -0.210861,
		27.603783, 38.414452, 35.366772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714458, 38.077774, 36.182011>,  <27.279921, 37.811687, 35.514374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714458, 38.077774, 36.182011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.943476, 37.849159, 36.417141>,  <28.080887, 37.711990, 36.558220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.943476, 37.849159, 36.417141>,  <27.714458, 38.077774, 36.182011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.943476, 37.849159, 36.417141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287567, -0.811409, -0.508843,
		0.767788, 0.122297, -0.628923,
		0.572544, -0.571541, 0.587822,
		28.115238, 37.677696, 36.593487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122768, 37.760880, 35.770008>,  <27.714458, 38.077774, 36.182011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122768, 37.760880, 35.770008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034704, 37.544239, 36.094524>,  <27.981865, 37.414253, 36.289234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.034704, 37.544239, 36.094524>,  <28.122768, 37.760880, 35.770008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034704, 37.544239, 36.094524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367182, -0.724515, -0.583314,
		0.903718, -0.426316, -0.039356,
		-0.220162, -0.541602, 0.811293,
		27.968657, 37.381760, 36.337914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377943, 37.041473, 35.701550>,  <28.122768, 37.760880, 35.770008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377943, 37.041473, 35.701550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049910, 37.078716, 35.927395>,  <27.853088, 37.101063, 36.062904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049910, 37.078716, 35.927395>,  <28.377943, 37.041473, 35.701550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049910, 37.078716, 35.927395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464346, -0.684907, -0.561502,
		0.334431, -0.722657, 0.604916,
		-0.820085, 0.093107, 0.564617,
		27.803885, 37.106647, 36.096779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192915, 36.398689, 36.089611>,  <28.377943, 37.041473, 35.701550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192915, 36.398689, 36.089611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892181, 36.634895, 35.972282>,  <27.711740, 36.776619, 35.901886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892181, 36.634895, 35.972282>,  <28.192915, 36.398689, 36.089611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892181, 36.634895, 35.972282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379476, -0.751332, -0.539906,
		-0.539204, -0.294611, 0.788963,
		-0.751835, 0.590512, -0.293323,
		27.666632, 36.812050, 35.884285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647015, 35.991089, 36.031864>,  <28.192915, 36.398689, 36.089611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647015, 35.991089, 36.031864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543236, 36.287060, 35.783611>,  <27.480968, 36.464642, 35.634659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543236, 36.287060, 35.783611>,  <27.647015, 35.991089, 36.031864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543236, 36.287060, 35.783611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465889, -0.658813, -0.590689,
		-0.845952, 0.135893, 0.515654,
		-0.259449, 0.739931, -0.620635,
		27.465401, 36.509041, 35.597420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.877575, 35.849659, 36.004898>,  <27.647015, 35.991089, 36.031864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.877575, 35.849659, 36.004898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037432, 36.071911, 35.713264>,  <27.133347, 36.205261, 35.538284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037432, 36.071911, 35.713264>,  <26.877575, 35.849659, 36.004898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037432, 36.071911, 35.713264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401951, -0.608602, -0.684133,
		-0.823845, 0.566466, -0.019890,
		0.399643, 0.555625, -0.729086,
		27.157324, 36.238598, 35.494537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.345760, 36.082645, 35.478729>,  <26.877575, 35.849659, 36.004898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.345760, 36.082645, 35.478729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711958, 36.084038, 35.317802>,  <26.931677, 36.084873, 35.221245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.711958, 36.084038, 35.317802>,  <26.345760, 36.082645, 35.478729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.711958, 36.084038, 35.317802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276895, -0.720023, -0.636315,
		-0.291892, 0.693942, -0.658213,
		0.915493, 0.003479, -0.402318,
		26.986607, 36.085083, 35.197105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.342733, 36.165340, 34.760796>,  <26.345760, 36.082645, 35.478729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.342733, 36.165340, 34.760796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675621, 35.956787, 34.836239>,  <26.875353, 35.831657, 34.881504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.675621, 35.956787, 34.836239>,  <26.342733, 36.165340, 34.760796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.675621, 35.956787, 34.836239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257195, -0.664388, -0.701740,
		0.491185, 0.535491, -0.687013,
		0.832219, -0.521380, 0.188612,
		26.925287, 35.800373, 34.892822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.572163, 35.845665, 34.059841>,  <26.342733, 36.165340, 34.760796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.572163, 35.845665, 34.059841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.800961, 35.661396, 34.331310>,  <26.938240, 35.550835, 34.494190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.800961, 35.661396, 34.331310>,  <26.572163, 35.845665, 34.059841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.800961, 35.661396, 34.331310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068063, -0.851194, -0.520419,
		0.817427, 0.251486, -0.518236,
		0.571997, -0.460677, 0.678672,
		26.972559, 35.523193, 34.534912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196926, 35.609020, 33.814140>,  <26.572163, 35.845665, 34.059841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196926, 35.609020, 33.814140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.068417, 35.382771, 34.117943>,  <26.991312, 35.247021, 34.300224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.068417, 35.382771, 34.117943>,  <27.196926, 35.609020, 33.814140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.068417, 35.382771, 34.117943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064137, -0.787188, -0.613368,
		0.944813, -0.245770, 0.216624,
		-0.321271, -0.565625, 0.759508,
		26.972034, 35.213081, 34.345795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.651270, 35.102062, 33.563587>,  <27.196926, 35.609020, 33.814140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.651270, 35.102062, 33.563587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.506966, 34.873791, 33.858658>,  <27.420383, 34.736828, 34.035702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.506966, 34.873791, 33.858658>,  <27.651270, 35.102062, 33.563587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.506966, 34.873791, 33.858658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032707, -0.798199, -0.601506,
		0.932084, -0.192874, 0.306626,
		-0.360763, -0.570683, 0.737680,
		27.398737, 34.702587, 34.079960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.232214, 34.586632, 33.871346>,  <27.651270, 35.102062, 33.563587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.232214, 34.586632, 33.871346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850992, 34.466904, 33.853062>,  <27.622259, 34.395065, 33.842091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850992, 34.466904, 33.853062>,  <28.232214, 34.586632, 33.871346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.850992, 34.466904, 33.853062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276832, -0.800205, -0.532011,
		0.122666, -0.519691, 0.845503,
		-0.953057, -0.299322, -0.045709,
		27.565075, 34.377106, 33.839348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428902, 33.903397, 33.667347>,  <28.232214, 34.586632, 33.871346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428902, 33.903397, 33.667347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262262, 33.548706, 33.747505>,  <28.162279, 33.335892, 33.795601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.262262, 33.548706, 33.747505>,  <28.428902, 33.903397, 33.667347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.262262, 33.548706, 33.747505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733691, -0.458113, -0.501827,
		0.536790, -0.062029, 0.841433,
		-0.416599, -0.886727, 0.200400,
		28.137283, 33.282688, 33.807625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040419, 33.531059, 33.803265>,  <28.428902, 33.903397, 33.667347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040419, 33.531059, 33.803265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745058, 33.293167, 33.676105>,  <28.567841, 33.150433, 33.599812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.745058, 33.293167, 33.676105>,  <29.040419, 33.531059, 33.803265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745058, 33.293167, 33.676105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588185, -0.337415, -0.734976,
		0.329847, -0.729692, 0.598958,
		-0.738403, -0.594728, -0.317898,
		28.523537, 33.114750, 33.580734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667439, 33.078346, 33.948421>,  <29.040419, 33.531059, 33.803265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667439, 33.078346, 33.948421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907949, 32.833469, 34.153824>,  <30.052256, 32.686543, 34.277065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907949, 32.833469, 34.153824>,  <29.667439, 33.078346, 33.948421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907949, 32.833469, 34.153824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238720, 0.475669, 0.846612,
		-0.762547, -0.631632, 0.139866,
		0.601278, -0.612192, 0.513503,
		30.088333, 32.649811, 34.307877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244791, 32.719887, 34.443161>,  <29.667439, 33.078346, 33.948421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244791, 32.719887, 34.443161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617512, 32.698444, 34.586758>,  <29.841145, 32.685577, 34.672916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617512, 32.698444, 34.586758>,  <29.244791, 32.719887, 34.443161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617512, 32.698444, 34.586758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300946, 0.438849, 0.846666,
		-0.202929, -0.896960, 0.392787,
		0.931800, -0.053605, 0.358991,
		29.897053, 32.682362, 34.694454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254410, 32.369045, 35.153397>,  <29.244791, 32.719887, 34.443161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254410, 32.369045, 35.153397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576218, 32.604183, 35.119495>,  <29.769302, 32.745266, 35.099155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576218, 32.604183, 35.119495>,  <29.254410, 32.369045, 35.153397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.576218, 32.604183, 35.119495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259116, 0.475804, 0.840517,
		0.534420, -0.654253, 0.535115,
		0.804521, 0.587846, -0.084752,
		29.817574, 32.780537, 35.094070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573215, 32.449375, 35.825294>,  <29.254410, 32.369045, 35.153397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573215, 32.449375, 35.825294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715563, 32.766731, 35.627754>,  <29.800972, 32.957146, 35.509232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715563, 32.766731, 35.627754>,  <29.573215, 32.449375, 35.825294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715563, 32.766731, 35.627754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098971, 0.557470, 0.824277,
		0.929280, -0.244458, 0.276909,
		0.355869, 0.793390, -0.493851,
		29.822323, 33.004749, 35.479599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297258, 32.713715, 36.080006>,  <29.573215, 32.449375, 35.825294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297258, 32.713715, 36.080006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018955, 32.960236, 35.932442>,  <29.851973, 33.108147, 35.843903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018955, 32.960236, 35.932442>,  <30.297258, 32.713715, 36.080006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018955, 32.960236, 35.932442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076135, 0.447438, 0.891068,
		0.714230, 0.648055, -0.264387,
		-0.695758, 0.616298, -0.368913,
		29.810228, 33.145126, 35.821770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829834, 33.134163, 36.649300>,  <30.297258, 32.713715, 36.080006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829834, 33.134163, 36.649300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019564, 33.472870, 36.552963>,  <30.133402, 33.676094, 36.495163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019564, 33.472870, 36.552963>,  <29.829834, 33.134163, 36.649300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019564, 33.472870, 36.552963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118556, -0.332522, -0.935614,
		-0.872330, 0.415233, -0.258112,
		0.474326, 0.846765, -0.240840,
		30.161861, 33.726898, 36.480713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539028, 33.615448, 36.209469>,  <29.829834, 33.134163, 36.649300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539028, 33.615448, 36.209469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.936487, 33.570683, 36.214130>,  <30.174963, 33.543823, 36.216927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.936487, 33.570683, 36.214130>,  <29.539028, 33.615448, 36.209469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.936487, 33.570683, 36.214130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046129, -0.499645, -0.865001,
		0.102628, 0.858971, -0.501634,
		0.993650, -0.111913, 0.011654,
		30.234583, 33.537109, 36.217628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782740, 33.729881, 35.499424>,  <29.539028, 33.615448, 36.209469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782740, 33.729881, 35.499424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067152, 33.529510, 35.696812>,  <30.237799, 33.409286, 35.815243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067152, 33.529510, 35.696812>,  <29.782740, 33.729881, 35.499424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067152, 33.529510, 35.696812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140033, -0.586853, -0.797493,
		0.689078, 0.636142, -0.347123,
		0.711029, -0.500926, 0.493468,
		30.280460, 33.379234, 35.844852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349573, 33.778843, 35.011425>,  <29.782740, 33.729881, 35.499424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349573, 33.778843, 35.011425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307524, 33.454937, 35.242329>,  <30.282293, 33.260593, 35.380871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307524, 33.454937, 35.242329>,  <30.349573, 33.778843, 35.011425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307524, 33.454937, 35.242329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063709, -0.584765, -0.808697,
		0.992416, -0.048236, 0.113062,
		-0.105123, -0.809767, 0.577257,
		30.275988, 33.212006, 35.415504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019361, 33.228733, 34.999474>,  <30.349573, 33.778843, 35.011425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019361, 33.228733, 34.999474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658363, 33.065109, 35.053394>,  <30.441765, 32.966934, 35.085747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658363, 33.065109, 35.053394>,  <31.019361, 33.228733, 34.999474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658363, 33.065109, 35.053394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175279, -0.634726, -0.752595,
		0.393417, -0.655587, 0.644538,
		-0.902497, -0.409058, 0.134801,
		30.387615, 32.942390, 35.093834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161594, 32.541035, 35.096375>,  <31.019361, 33.228733, 34.999474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161594, 32.541035, 35.096375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783785, 32.581856, 34.971500>,  <30.557098, 32.606350, 34.896576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783785, 32.581856, 34.971500>,  <31.161594, 32.541035, 35.096375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783785, 32.581856, 34.971500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198589, -0.579618, -0.790320,
		-0.261601, -0.808473, 0.527197,
		-0.944525, 0.102053, -0.312182,
		30.500427, 32.612473, 34.877846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796202, 31.844700, 35.021698>,  <31.161594, 32.541035, 35.096375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796202, 31.844700, 35.021698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619404, 32.118282, 34.789543>,  <30.513325, 32.282433, 34.650249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619404, 32.118282, 34.789543>,  <30.796202, 31.844700, 35.021698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619404, 32.118282, 34.789543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348423, -0.465307, -0.813689,
		-0.826583, -0.561867, -0.032642,
		-0.441997, 0.683955, -0.580383,
		30.486805, 32.323467, 34.615429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430891, 31.451138, 34.524975>,  <30.796202, 31.844700, 35.021698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430891, 31.451138, 34.524975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481937, 31.811947, 34.360020>,  <30.512566, 32.028431, 34.261047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481937, 31.811947, 34.360020>,  <30.430891, 31.451138, 34.524975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481937, 31.811947, 34.360020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173188, -0.429670, -0.886222,
		-0.976586, 0.041675, -0.211053,
		0.127616, 0.902024, -0.412392,
		30.520222, 32.082554, 34.236301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038332, 31.425531, 33.898960>,  <30.430891, 31.451138, 34.524975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038332, 31.425531, 33.898960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281292, 31.741074, 33.861496>,  <30.427069, 31.930399, 33.839016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281292, 31.741074, 33.861496>,  <30.038332, 31.425531, 33.898960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281292, 31.741074, 33.861496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167118, -0.242151, -0.955738,
		-0.776619, 0.564863, -0.278915,
		0.607400, 0.788855, -0.093660,
		30.463512, 31.977730, 33.833397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863037, 31.754663, 33.239651>,  <30.038332, 31.425531, 33.898960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863037, 31.754663, 33.239651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.214563, 31.929066, 33.317196>,  <30.425480, 32.033707, 33.363724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.214563, 31.929066, 33.317196>,  <29.863037, 31.754663, 33.239651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.214563, 31.929066, 33.317196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308835, -0.210027, -0.927637,
		-0.363737, 0.875094, -0.319228,
		0.878816, 0.436004, 0.193865,
		30.478209, 32.059868, 33.375355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959711, 32.099155, 32.660885>,  <29.863037, 31.754663, 33.239651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959711, 32.099155, 32.660885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317148, 32.026031, 32.824871>,  <30.531610, 31.982157, 32.923264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.317148, 32.026031, 32.824871>,  <29.959711, 32.099155, 32.660885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317148, 32.026031, 32.824871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391226, -0.130603, -0.910980,
		0.220078, 0.974435, -0.045186,
		0.893593, -0.182809, 0.409967,
		30.585226, 31.971189, 32.947861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427822, 32.501209, 32.202824>,  <29.959711, 32.099155, 32.660885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427822, 32.501209, 32.202824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648523, 32.223793, 32.388111>,  <30.780943, 32.057343, 32.499283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648523, 32.223793, 32.388111>,  <30.427822, 32.501209, 32.202824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648523, 32.223793, 32.388111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529067, -0.138288, -0.837236,
		0.644716, 0.707019, 0.290629,
		0.551751, -0.693542, 0.463217,
		30.814049, 32.015732, 32.527077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123720, 32.594036, 31.891085>,  <30.427822, 32.501209, 32.202824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123720, 32.594036, 31.891085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121588, 32.227417, 32.051037>,  <31.120308, 32.007446, 32.147007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121588, 32.227417, 32.051037>,  <31.123720, 32.594036, 31.891085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121588, 32.227417, 32.051037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549533, -0.336776, -0.764588,
		0.835455, 0.215673, 0.505471,
		-0.005330, -0.916552, 0.399880,
		31.119989, 31.952452, 32.171001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830252, 32.262341, 31.999264>,  <31.123720, 32.594036, 31.891085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830252, 32.262341, 31.999264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.585314, 31.947945, 31.965208>,  <31.438351, 31.759306, 31.944775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.585314, 31.947945, 31.965208>,  <31.830252, 32.262341, 31.999264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585314, 31.947945, 31.965208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488970, -0.291901, -0.822011,
		0.621242, -0.544986, 0.563071,
		-0.612345, -0.785993, -0.085140,
		31.401609, 31.712147, 31.939667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199791, 31.773184, 31.821522>,  <31.830252, 32.262341, 31.999264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199791, 31.773184, 31.821522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831388, 31.665808, 31.708607>,  <31.610346, 31.601383, 31.640858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.831388, 31.665808, 31.708607>,  <32.199791, 31.773184, 31.821522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.831388, 31.665808, 31.708607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351965, -0.262911, -0.898331,
		0.166930, -0.926724, 0.336624,
		-0.921007, -0.268439, -0.282287,
		31.555086, 31.585276, 31.623920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372871, 31.165630, 31.365583>,  <32.199791, 31.773184, 31.821522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372871, 31.165630, 31.365583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997808, 31.279400, 31.285677>,  <31.772772, 31.347662, 31.237734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997808, 31.279400, 31.285677>,  <32.372871, 31.165630, 31.365583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997808, 31.279400, 31.285677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179396, -0.096226, -0.979060,
		-0.297688, -0.953858, 0.039203,
		-0.937656, 0.284422, -0.199764,
		31.716511, 31.364727, 31.225748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205498, 30.663921, 30.933918>,  <32.372871, 31.165630, 31.365583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205498, 30.663921, 30.933918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937437, 30.947569, 30.846235>,  <31.776602, 31.117758, 30.793627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937437, 30.947569, 30.846235>,  <32.205498, 30.663921, 30.933918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937437, 30.947569, 30.846235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261630, -0.050691, -0.963836,
		-0.694586, -0.703265, -0.151556,
		-0.670150, 0.709118, -0.219204,
		31.736393, 31.160305, 30.780474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092144, 30.480318, 30.289673>,  <32.205498, 30.663921, 30.933918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092144, 30.480318, 30.289673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947044, 30.852734, 30.305584>,  <31.859983, 31.076183, 30.315130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947044, 30.852734, 30.305584>,  <32.092144, 30.480318, 30.289673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947044, 30.852734, 30.305584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333158, 0.169433, -0.927523,
		-0.870298, -0.323207, -0.371644,
		-0.362750, 0.931037, 0.039778,
		31.838219, 31.132044, 30.317518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755205, 30.570284, 29.680408>,  <32.092144, 30.480318, 30.289673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755205, 30.570284, 29.680408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854605, 30.928465, 29.828142>,  <31.914246, 31.143373, 29.916782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.854605, 30.928465, 29.828142>,  <31.755205, 30.570284, 29.680408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854605, 30.928465, 29.828142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368383, 0.265277, -0.891023,
		-0.895847, 0.357477, -0.263948,
		0.248501, 0.895454, 0.369336,
		31.929155, 31.197102, 29.938944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491816, 31.062428, 29.245924>,  <31.755205, 30.570284, 29.680408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491816, 31.062428, 29.245924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793306, 31.237886, 29.441673>,  <31.974201, 31.343163, 29.559122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793306, 31.237886, 29.441673>,  <31.491816, 31.062428, 29.245924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793306, 31.237886, 29.441673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239553, 0.510033, -0.826124,
		-0.611974, 0.739901, 0.279346,
		0.753726, 0.438648, 0.489372,
		32.019424, 31.369480, 29.588486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529642, 31.565735, 28.836903>,  <31.491816, 31.062428, 29.245924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529642, 31.565735, 28.836903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858696, 31.604433, 29.061012>,  <32.056129, 31.627653, 29.195478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858696, 31.604433, 29.061012>,  <31.529642, 31.565735, 28.836903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858696, 31.604433, 29.061012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305082, 0.756434, -0.578560,
		-0.479786, 0.646875, 0.592754,
		0.822636, 0.096746, 0.560276,
		32.105488, 31.633457, 29.229095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620752, 32.221142, 28.932457>,  <31.529642, 31.565735, 28.836903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620752, 32.221142, 28.932457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982243, 32.080708, 29.030453>,  <32.199139, 31.996447, 29.089251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982243, 32.080708, 29.030453>,  <31.620752, 32.221142, 28.932457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982243, 32.080708, 29.030453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411925, 0.557237, -0.720975,
		0.116606, 0.752481, 0.648210,
		0.903726, -0.351084, 0.244988,
		32.253361, 31.975382, 29.103949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060230, 32.727520, 29.265123>,  <31.620752, 32.221142, 28.932457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060230, 32.727520, 29.265123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292751, 32.472115, 29.063375>,  <32.432266, 32.318871, 28.942327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292751, 32.472115, 29.063375>,  <32.060230, 32.727520, 29.265123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292751, 32.472115, 29.063375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238667, 0.726392, -0.644509,
		0.777895, 0.254281, 0.574648,
		0.581306, -0.638510, -0.504369,
		32.467144, 32.280563, 28.912066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692272, 33.035137, 29.281948>,  <32.060230, 32.727520, 29.265123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692272, 33.035137, 29.281948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734337, 32.752514, 29.002029>,  <32.759575, 32.582939, 28.834078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734337, 32.752514, 29.002029>,  <32.692272, 33.035137, 29.281948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734337, 32.752514, 29.002029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499899, 0.645882, -0.577007,
		0.859676, -0.289150, 0.421129,
		0.105158, -0.706561, -0.699796,
		32.765884, 32.540546, 28.792091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396103, 33.060841, 29.151796>,  <32.692272, 33.035137, 29.281948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396103, 33.060841, 29.151796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225872, 32.892879, 28.831156>,  <33.123734, 32.792103, 28.638771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225872, 32.892879, 28.831156>,  <33.396103, 33.060841, 29.151796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225872, 32.892879, 28.831156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375513, 0.724008, -0.578621,
		0.823333, -0.547258, -0.150438,
		-0.425573, -0.419906, -0.801602,
		33.098198, 32.766907, 28.590675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981365, 33.117710, 28.640097>,  <33.396103, 33.060841, 29.151796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981365, 33.117710, 28.640097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647854, 33.056610, 28.427877>,  <33.447746, 33.019951, 28.300547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647854, 33.056610, 28.427877>,  <33.981365, 33.117710, 28.640097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647854, 33.056610, 28.427877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363335, 0.571735, -0.735600,
		0.415692, -0.806094, -0.421203,
		-0.833779, -0.152745, -0.530548,
		33.397720, 33.010788, 28.268713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150494, 32.820911, 27.965425>,  <33.981365, 33.117710, 28.640097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150494, 32.820911, 27.965425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785286, 32.977623, 27.919992>,  <33.566162, 33.071651, 27.892733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.785286, 32.977623, 27.919992>,  <34.150494, 32.820911, 27.965425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785286, 32.977623, 27.919992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306134, 0.474091, -0.825542,
		-0.269583, -0.788509, -0.552792,
		-0.913021, 0.391780, -0.113582,
		33.511379, 33.095158, 27.885918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017143, 32.837257, 27.274717>,  <34.150494, 32.820911, 27.965425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017143, 32.837257, 27.274717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736107, 33.090515, 27.404634>,  <33.567486, 33.242470, 27.482586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736107, 33.090515, 27.404634>,  <34.017143, 32.837257, 27.274717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736107, 33.090515, 27.404634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173414, 0.595018, -0.784781,
		-0.690137, -0.495059, -0.527852,
		-0.702594, 0.633143, 0.324794,
		33.525330, 33.280457, 27.502073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682919, 32.940792, 26.746111>,  <34.017143, 32.837257, 27.274717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682919, 32.940792, 26.746111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535828, 33.251316, 26.950899>,  <33.447571, 33.437630, 27.073772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535828, 33.251316, 26.950899>,  <33.682919, 32.940792, 26.746111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535828, 33.251316, 26.950899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081334, 0.521589, -0.849311,
		-0.926369, -0.353958, -0.128663,
		-0.367730, 0.776311, 0.511973,
		33.425510, 33.484211, 27.104490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171570, 33.086918, 26.308140>,  <33.682919, 32.940792, 26.746111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171570, 33.086918, 26.308140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292091, 33.393063, 26.535627>,  <33.364403, 33.576748, 26.672119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292091, 33.393063, 26.535627>,  <33.171570, 33.086918, 26.308140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292091, 33.393063, 26.535627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128248, 0.558488, -0.819539,
		-0.944865, 0.319865, 0.070118,
		0.301302, 0.765361, 0.568717,
		33.382481, 33.622669, 26.706242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853745, 33.647022, 26.031961>,  <33.171570, 33.086918, 26.308140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853745, 33.647022, 26.031961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145794, 33.812244, 26.249697>,  <33.321026, 33.911377, 26.380339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145794, 33.812244, 26.249697>,  <32.853745, 33.647022, 26.031961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145794, 33.812244, 26.249697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008676, 0.802154, -0.597054,
		-0.683258, 0.431201, 0.589257,
		0.730125, 0.413054, 0.544338,
		33.364830, 33.936161, 26.412998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604183, 34.289276, 26.250626>,  <32.853745, 33.647022, 26.031961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604183, 34.289276, 26.250626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004063, 34.298092, 26.255032>,  <33.243988, 34.303379, 26.257675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004063, 34.298092, 26.255032>,  <32.604183, 34.289276, 26.250626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004063, 34.298092, 26.255032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009988, 0.771289, -0.636406,
		-0.022520, 0.636103, 0.771275,
		0.999696, 0.022036, 0.011016,
		33.303970, 34.304703, 26.258337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847374, 34.910614, 26.291271>,  <32.604183, 34.289276, 26.250626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847374, 34.910614, 26.291271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162361, 34.721371, 26.133251>,  <33.351353, 34.607826, 26.038439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162361, 34.721371, 26.133251>,  <32.847374, 34.910614, 26.291271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162361, 34.721371, 26.133251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146320, 0.766116, -0.625825,
		0.598735, 0.435014, 0.672518,
		0.787469, -0.473106, -0.395049,
		33.398602, 34.579437, 26.014736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303974, 35.477257, 26.082237>,  <32.847374, 34.910614, 26.291271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303974, 35.477257, 26.082237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480370, 35.168232, 25.899513>,  <33.586208, 34.982815, 25.789879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480370, 35.168232, 25.899513>,  <33.303974, 35.477257, 26.082237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480370, 35.168232, 25.899513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137649, 0.561168, -0.816176,
		0.886894, 0.297045, 0.353811,
		0.440988, -0.772564, -0.456808,
		33.612667, 34.936462, 25.762470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933102, 35.759937, 25.842710>,  <33.303974, 35.477257, 26.082237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933102, 35.759937, 25.842710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799915, 35.434864, 25.651430>,  <33.720005, 35.239819, 25.536661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799915, 35.434864, 25.651430>,  <33.933102, 35.759937, 25.842710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799915, 35.434864, 25.651430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043146, 0.493477, -0.868688,
		0.941951, -0.309876, -0.129246,
		-0.332965, -0.812685, -0.478201,
		33.700027, 35.191059, 25.507969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398975, 35.667648, 25.268396>,  <33.933102, 35.759937, 25.842710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398975, 35.667648, 25.268396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063343, 35.486824, 25.147350>,  <33.861961, 35.378330, 25.074722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063343, 35.486824, 25.147350>,  <34.398975, 35.667648, 25.268396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063343, 35.486824, 25.147350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205554, 0.251567, -0.945760,
		0.503673, -0.855775, -0.118161,
		-0.839084, -0.452065, -0.302616,
		33.811619, 35.351204, 25.056566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649048, 35.154800, 24.703176>,  <34.398975, 35.667648, 25.268396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649048, 35.154800, 24.703176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267803, 35.272984, 24.677000>,  <34.039055, 35.343895, 24.661295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267803, 35.272984, 24.677000>,  <34.649048, 35.154800, 24.703176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267803, 35.272984, 24.677000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124225, 0.184808, -0.974892,
		-0.275947, -0.937310, -0.212846,
		-0.953111, 0.295460, -0.065440,
		33.981869, 35.361622, 24.657368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436337, 34.793755, 24.092863>,  <34.649048, 35.154800, 24.703176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436337, 34.793755, 24.092863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162685, 35.081551, 24.140690>,  <33.998493, 35.254227, 24.169386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162685, 35.081551, 24.140690>,  <34.436337, 34.793755, 24.092863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162685, 35.081551, 24.140690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119510, 0.272302, -0.954761,
		-0.719501, -0.638893, -0.272277,
		-0.684131, 0.719491, 0.119568,
		33.957447, 35.297398, 24.176559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988972, 34.830631, 23.544992>,  <34.436337, 34.793755, 24.092863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988972, 34.830631, 23.544992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949005, 35.201038, 23.690598>,  <33.925026, 35.423283, 23.777962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949005, 35.201038, 23.690598>,  <33.988972, 34.830631, 23.544992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949005, 35.201038, 23.690598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351771, 0.375093, -0.857650,
		-0.930739, 0.042360, -0.363223,
		-0.099912, 0.926019, 0.364014,
		33.919033, 35.478844, 23.799803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671207, 35.218525, 23.050730>,  <33.988972, 34.830631, 23.544992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671207, 35.218525, 23.050730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832024, 35.505558, 23.278217>,  <33.928513, 35.677776, 23.414711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832024, 35.505558, 23.278217>,  <33.671207, 35.218525, 23.050730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832024, 35.505558, 23.278217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180711, 0.546726, -0.817578,
		-0.897614, 0.431470, 0.090129,
		0.402036, 0.717582, 0.568720,
		33.952633, 35.720833, 23.448833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495335, 35.830719, 22.813217>,  <33.671207, 35.218525, 23.050730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495335, 35.830719, 22.813217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823452, 35.938080, 23.015236>,  <34.020325, 36.002499, 23.136446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823452, 35.938080, 23.015236>,  <33.495335, 35.830719, 22.813217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823452, 35.938080, 23.015236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147222, 0.754196, -0.639933,
		-0.552663, 0.599289, 0.579150,
		0.820298, 0.268404, 0.505045,
		34.069542, 36.018600, 23.166750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524384, 36.592934, 22.820076>,  <33.495335, 35.830719, 22.813217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524384, 36.592934, 22.820076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901611, 36.538326, 22.941397>,  <34.127949, 36.505562, 23.014189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.901611, 36.538326, 22.941397>,  <33.524384, 36.592934, 22.820076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901611, 36.538326, 22.941397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303557, 0.725992, -0.617081,
		-0.135950, 0.674016, 0.726099,
		0.943065, -0.136520, 0.303301,
		34.184532, 36.497372, 23.032387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707672, 37.142830, 23.165443>,  <33.524384, 36.592934, 22.820076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707672, 37.142830, 23.165443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047783, 36.983353, 23.027996>,  <34.251850, 36.887665, 22.945528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047783, 36.983353, 23.027996>,  <33.707672, 37.142830, 23.165443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047783, 36.983353, 23.027996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251375, 0.881188, -0.400399,
		0.462427, 0.254073, 0.849475,
		0.850278, -0.398692, -0.343618,
		34.302868, 36.863747, 22.924911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277172, 37.499302, 23.446173>,  <33.707672, 37.142830, 23.165443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277172, 37.499302, 23.446173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418011, 37.328293, 23.113127>,  <34.502514, 37.225685, 22.913300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418011, 37.328293, 23.113127>,  <34.277172, 37.499302, 23.446173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418011, 37.328293, 23.113127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323288, 0.890383, -0.320475,
		0.878357, -0.156335, 0.451717,
		0.352099, -0.427526, -0.832615,
		34.523640, 37.200035, 22.863342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923550, 37.782413, 23.467186>,  <34.277172, 37.499302, 23.446173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923550, 37.782413, 23.467186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851395, 37.663849, 23.092037>,  <34.808102, 37.592709, 22.866949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851395, 37.663849, 23.092037>,  <34.923550, 37.782413, 23.467186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851395, 37.663849, 23.092037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430711, 0.833428, -0.346245,
		0.884278, -0.466410, -0.022675,
		-0.180390, -0.296411, -0.937870,
		34.797279, 37.574924, 22.810677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452953, 38.042587, 23.124479>,  <34.923550, 37.782413, 23.467186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452953, 38.042587, 23.124479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218636, 37.920334, 22.824232>,  <35.078045, 37.846981, 22.644083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218636, 37.920334, 22.824232>,  <35.452953, 38.042587, 23.124479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218636, 37.920334, 22.824232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367455, 0.725340, -0.582116,
		0.722348, -0.616832, -0.312622,
		-0.585825, -0.305616, -0.750605,
		35.042896, 37.828644, 22.599047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918640, 37.913460, 22.571297>,  <35.452953, 38.042587, 23.124479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918640, 37.913460, 22.571297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556179, 38.001862, 22.427055>,  <35.338703, 38.054905, 22.340509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556179, 38.001862, 22.427055>,  <35.918640, 37.913460, 22.571297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556179, 38.001862, 22.427055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402682, 0.711549, -0.575800,
		0.129333, -0.666974, -0.733771,
		-0.906157, 0.221007, -0.360605,
		35.284332, 38.068165, 22.318874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068371, 37.987171, 21.892021>,  <35.918640, 37.913460, 22.571297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068371, 37.987171, 21.892021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729153, 38.187901, 21.960144>,  <35.525623, 38.308338, 22.001017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.729153, 38.187901, 21.960144>,  <36.068371, 37.987171, 21.892021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729153, 38.187901, 21.960144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377286, 0.797414, -0.470942,
		-0.372131, -0.335124, -0.865569,
		-0.848041, 0.501819, 0.170305,
		35.474739, 38.338448, 22.011236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915806, 38.197720, 21.234552>,  <36.068371, 37.987171, 21.892021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915806, 38.197720, 21.234552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713818, 38.434887, 21.485455>,  <35.592625, 38.577187, 21.635996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713818, 38.434887, 21.485455>,  <35.915806, 38.197720, 21.234552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713818, 38.434887, 21.485455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383855, 0.805165, -0.452066,
		-0.773082, 0.012493, -0.634183,
		-0.504975, 0.592919, 0.627254,
		35.562325, 38.612762, 21.673632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733768, 38.782257, 20.801605>,  <35.915806, 38.197720, 21.234552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733768, 38.782257, 20.801605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685287, 38.931950, 21.169357>,  <35.656197, 39.021767, 21.390009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685287, 38.931950, 21.169357>,  <35.733768, 38.782257, 20.801605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685287, 38.931950, 21.169357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341623, 0.885353, -0.315347,
		-0.931988, 0.275859, -0.235157,
		-0.121206, 0.374235, 0.919379,
		35.648926, 39.044220, 21.445171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359978, 39.497627, 20.813505>,  <35.733768, 38.782257, 20.801605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359978, 39.497627, 20.813505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579041, 39.488617, 21.148066>,  <35.710476, 39.483212, 21.348803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579041, 39.488617, 21.148066>,  <35.359978, 39.497627, 20.813505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579041, 39.488617, 21.148066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342228, 0.918226, -0.199350,
		-0.763515, 0.395415, 0.510580,
		0.547654, -0.022528, 0.836402,
		35.743336, 39.481857, 21.398987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792736, 39.971691, 21.284954>,  <35.359978, 39.497627, 20.813505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792736, 39.971691, 21.284954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006973, 40.309216, 21.298326>,  <36.135513, 40.511730, 21.306351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006973, 40.309216, 21.298326>,  <35.792736, 39.971691, 21.284954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006973, 40.309216, 21.298326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348887, 0.257154, -0.901193,
		-0.769038, 0.471007, 0.432126,
		0.535591, 0.843815, 0.033433,
		36.167652, 40.562359, 21.308357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331989, 40.602757, 21.206684>,  <35.792736, 39.971691, 21.284954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331989, 40.602757, 21.206684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708279, 40.683041, 21.097313>,  <35.934052, 40.731209, 21.031691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708279, 40.683041, 21.097313>,  <35.331989, 40.602757, 21.206684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708279, 40.683041, 21.097313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324233, 0.295431, -0.898662,
		-0.099590, 0.934043, 0.342994,
		0.940720, 0.200708, -0.273426,
		35.990494, 40.743252, 21.015285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254837, 41.205330, 20.960758>,  <35.331989, 40.602757, 21.206684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254837, 41.205330, 20.960758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585285, 41.055420, 20.792437>,  <35.783554, 40.965473, 20.691444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585285, 41.055420, 20.792437>,  <35.254837, 41.205330, 20.960758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585285, 41.055420, 20.792437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378486, 0.184200, -0.907093,
		0.417469, 0.908633, 0.010323,
		0.826116, -0.374776, -0.420803,
		35.833118, 40.942986, 20.666195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399975, 41.635723, 20.460659>,  <35.254837, 41.205330, 20.960758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399975, 41.635723, 20.460659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546604, 41.276112, 20.364849>,  <35.634583, 41.060345, 20.307364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546604, 41.276112, 20.364849>,  <35.399975, 41.635723, 20.460659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546604, 41.276112, 20.364849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475078, 0.040486, -0.879012,
		0.799954, 0.436014, -0.412268,
		0.366571, -0.899029, -0.239527,
		35.656574, 41.006401, 20.292992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093239, 41.726597, 19.744299>,  <35.399975, 41.635723, 20.460659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093239, 41.726597, 19.744299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241203, 41.512684, 19.440413>,  <35.329983, 41.384335, 19.258081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241203, 41.512684, 19.440413>,  <35.093239, 41.726597, 19.744299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241203, 41.512684, 19.440413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774893, -0.273526, 0.569846,
		-0.512547, -0.799494, 0.313218,
		0.369915, -0.534783, -0.759717,
		35.352177, 41.352249, 19.212498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066189, 40.883297, 19.735487>,  <35.093239, 41.726597, 19.744299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066189, 40.883297, 19.735487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384979, 41.034657, 19.547171>,  <35.576252, 41.125473, 19.434181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384979, 41.034657, 19.547171>,  <35.066189, 40.883297, 19.735487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384979, 41.034657, 19.547171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602040, -0.560601, 0.568572,
		-0.048777, -0.736572, -0.674598,
		0.796975, 0.378402, -0.470790,
		35.624073, 41.148178, 19.405933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725246, 40.351467, 19.580183>,  <35.066189, 40.883297, 19.735487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725246, 40.351467, 19.580183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856934, 40.721367, 19.656563>,  <35.935944, 40.943306, 19.702391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856934, 40.721367, 19.656563>,  <35.725246, 40.351467, 19.580183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856934, 40.721367, 19.656563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579390, -0.357509, 0.732457,
		0.745604, -0.130502, -0.653486,
		0.329214, 0.924747, 0.190949,
		35.955696, 40.998791, 19.713848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219837, 40.152626, 19.964211>,  <35.725246, 40.351467, 19.580183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219837, 40.152626, 19.964211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209824, 40.547638, 20.026390>,  <36.203815, 40.784645, 20.063698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209824, 40.547638, 20.026390>,  <36.219837, 40.152626, 19.964211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209824, 40.547638, 20.026390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504956, -0.121713, 0.854520,
		0.862782, 0.099888, -0.495610,
		-0.025034, 0.987526, 0.155451,
		36.202312, 40.843895, 20.073025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925011, 40.539284, 20.110563>,  <36.219837, 40.152626, 19.964211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925011, 40.539284, 20.110563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602135, 40.689327, 20.292877>,  <36.408409, 40.779354, 20.402266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602135, 40.689327, 20.292877>,  <36.925011, 40.539284, 20.110563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602135, 40.689327, 20.292877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411961, -0.195034, 0.890084,
		0.422775, 0.906230, 0.002898,
		-0.807186, 0.375111, 0.455787,
		36.359978, 40.801861, 20.429613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245243, 40.928925, 20.685675>,  <36.925011, 40.539284, 20.110563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245243, 40.928925, 20.685675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859245, 40.878944, 20.777906>,  <36.627647, 40.848957, 20.833246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859245, 40.878944, 20.777906>,  <37.245243, 40.928925, 20.685675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859245, 40.878944, 20.777906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221981, 0.079051, 0.971841,
		-0.139661, 0.989008, -0.048547,
		-0.964997, -0.124952, 0.230581,
		36.569748, 40.841457, 20.847080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010189, 41.533588, 21.087341>,  <37.245243, 40.928925, 20.685675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010189, 41.533588, 21.087341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765022, 41.226589, 21.162470>,  <36.617924, 41.042389, 21.207546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.765022, 41.226589, 21.162470>,  <37.010189, 41.533588, 21.087341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765022, 41.226589, 21.162470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107072, 0.154837, 0.982121,
		-0.782862, 0.622066, -0.012724,
		-0.612914, -0.767502, 0.187822,
		36.581150, 40.996338, 21.218817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469196, 41.717716, 21.556587>,  <37.010189, 41.533588, 21.087341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469196, 41.717716, 21.556587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472221, 41.318005, 21.571428>,  <36.474037, 41.078178, 21.580332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.472221, 41.318005, 21.571428>,  <36.469196, 41.717716, 21.556587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472221, 41.318005, 21.571428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073475, 0.036446, 0.996631,
		-0.997268, -0.010264, -0.073146,
		0.007563, -0.999283, 0.037101,
		36.474491, 41.018219, 21.582558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893787, 41.494179, 21.990065>,  <36.469196, 41.717716, 21.556587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893787, 41.494179, 21.990065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134933, 41.175186, 21.980402>,  <36.279621, 40.983791, 21.974606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134933, 41.175186, 21.980402>,  <35.893787, 41.494179, 21.990065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134933, 41.175186, 21.980402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090514, -0.098443, 0.991018,
		-0.792693, -0.595263, -0.131531,
		0.602864, -0.797478, -0.024156,
		36.315792, 40.935944, 21.973156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513912, 41.033436, 22.322741>,  <35.893787, 41.494179, 21.990065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513912, 41.033436, 22.322741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889538, 40.897369, 22.342508>,  <36.114914, 40.815731, 22.354370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889538, 40.897369, 22.342508>,  <35.513912, 41.033436, 22.322741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889538, 40.897369, 22.342508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142772, -0.255202, 0.956289,
		-0.312688, -0.905073, -0.288218,
		0.939065, -0.340169, 0.049420,
		36.171257, 40.795319, 22.357334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517803, 40.472343, 22.739639>,  <35.513912, 41.033436, 22.322741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517803, 40.472343, 22.739639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912048, 40.538277, 22.724648>,  <36.148594, 40.577839, 22.715652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912048, 40.538277, 22.724648>,  <35.517803, 40.472343, 22.739639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912048, 40.538277, 22.724648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073418, -0.217708, 0.973249,
		0.152266, -0.961994, -0.226677,
		0.985609, 0.164835, -0.037478,
		36.207729, 40.587727, 22.713404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782421, 39.914494, 23.151653>,  <35.517803, 40.472343, 22.739639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782421, 39.914494, 23.151653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053444, 40.208450, 23.140032>,  <36.216057, 40.384827, 23.133059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053444, 40.208450, 23.140032>,  <35.782421, 39.914494, 23.151653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053444, 40.208450, 23.140032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226946, -0.171340, 0.958717,
		0.699579, -0.656179, -0.282874,
		0.677558, 0.734895, -0.029051,
		36.256710, 40.428921, 23.131317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458591, 39.696968, 23.466284>,  <35.782421, 39.914494, 23.151653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458591, 39.696968, 23.466284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484722, 40.095436, 23.489536>,  <36.500401, 40.334518, 23.503487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484722, 40.095436, 23.489536>,  <36.458591, 39.696968, 23.466284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484722, 40.095436, 23.489536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187123, -0.069450, 0.979878,
		0.980162, -0.053134, -0.190943,
		0.065326, 0.996169, 0.058130,
		36.504318, 40.394287, 23.506975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912777, 39.747990, 23.930920>,  <36.458591, 39.696968, 23.466284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912777, 39.747990, 23.930920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707577, 40.091160, 23.919624>,  <36.584457, 40.297062, 23.912848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707577, 40.091160, 23.919624>,  <36.912777, 39.747990, 23.930920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707577, 40.091160, 23.919624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094542, -0.023774, 0.995237,
		0.853168, 0.513224, 0.093306,
		-0.512997, 0.857925, -0.028238,
		36.553677, 40.348537, 23.911152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266724, 40.175724, 24.335962>,  <36.912777, 39.747990, 23.930920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266724, 40.175724, 24.335962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893311, 40.319054, 24.331514>,  <36.669262, 40.405052, 24.328846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893311, 40.319054, 24.331514>,  <37.266724, 40.175724, 24.335962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893311, 40.319054, 24.331514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032442, -0.053550, 0.998038,
		0.357030, 0.932059, 0.061615,
		-0.933530, 0.358328, -0.011118,
		36.613251, 40.426552, 24.328178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147259, 40.484928, 25.031479>,  <37.266724, 40.175724, 24.335962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147259, 40.484928, 25.031479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776199, 40.487450, 24.882120>,  <36.553562, 40.488960, 24.792505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776199, 40.487450, 24.882120>,  <37.147259, 40.484928, 25.031479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776199, 40.487450, 24.882120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373344, -0.039592, 0.926848,
		-0.008943, 0.999196, 0.039080,
		-0.927650, 0.006301, -0.373398,
		36.497906, 40.489342, 24.770102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698780, 40.965248, 25.445524>,  <37.147259, 40.484928, 25.031479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698780, 40.965248, 25.445524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445759, 40.705959, 25.275963>,  <36.293945, 40.550388, 25.174227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445759, 40.705959, 25.275963>,  <36.698780, 40.965248, 25.445524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445759, 40.705959, 25.275963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423044, -0.169296, 0.890153,
		-0.648778, 0.742397, -0.167136,
		-0.632551, -0.648218, -0.423901,
		36.255993, 40.511494, 25.148792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888477, 41.167732, 25.656950>,  <36.698780, 40.965248, 25.445524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888477, 41.167732, 25.656950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919086, 40.782082, 25.555288>,  <35.937450, 40.550690, 25.494291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919086, 40.782082, 25.555288>,  <35.888477, 41.167732, 25.656950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919086, 40.782082, 25.555288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477662, -0.259198, 0.839438,
		-0.875205, 0.057164, -0.480363,
		0.076523, -0.964131, -0.254156,
		35.942043, 40.492844, 25.479042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304836, 40.914288, 25.877220>,  <35.888477, 41.167732, 25.656950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304836, 40.914288, 25.877220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491581, 40.561623, 25.849749>,  <35.603626, 40.350025, 25.833265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491581, 40.561623, 25.849749>,  <35.304836, 40.914288, 25.877220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491581, 40.561623, 25.849749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626183, -0.384420, 0.678319,
		-0.624447, -0.273677, -0.731551,
		0.466863, -0.881659, -0.068678,
		35.631641, 40.297127, 25.829145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809738, 40.384686, 25.644283>,  <35.304836, 40.914288, 25.877220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809738, 40.384686, 25.644283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117870, 40.229019, 25.846333>,  <35.302750, 40.135620, 25.967562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117870, 40.229019, 25.846333>,  <34.809738, 40.384686, 25.644283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117870, 40.229019, 25.846333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637323, -0.444591, 0.629411,
		-0.020369, -0.806779, -0.590502,
		0.770327, -0.389161, 0.505123,
		35.348969, 40.112270, 25.997869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491802, 39.954372, 26.068882>,  <34.809738, 40.384686, 25.644283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491802, 39.954372, 26.068882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853779, 39.965233, 26.238749>,  <35.070965, 39.971748, 26.340668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853779, 39.965233, 26.238749>,  <34.491802, 39.954372, 26.068882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853779, 39.965233, 26.238749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382202, -0.386878, 0.839194,
		0.187081, -0.921731, -0.339724,
		0.904944, 0.027154, 0.424665,
		35.125263, 39.973377, 26.366148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454853, 39.372231, 26.379021>,  <34.491802, 39.954372, 26.068882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454853, 39.372231, 26.379021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751423, 39.563339, 26.567493>,  <34.929367, 39.678005, 26.680578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751423, 39.563339, 26.567493>,  <34.454853, 39.372231, 26.379021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751423, 39.563339, 26.567493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288159, -0.407446, 0.866575,
		0.606009, -0.778280, -0.164417,
		0.741429, 0.477774, 0.471184,
		34.973850, 39.706673, 26.708849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651691, 38.892345, 26.944998>,  <34.454853, 39.372231, 26.379021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651691, 38.892345, 26.944998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786106, 39.255978, 27.043503>,  <34.866753, 39.474159, 27.102606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786106, 39.255978, 27.043503>,  <34.651691, 38.892345, 26.944998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786106, 39.255978, 27.043503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066224, -0.238016, 0.969001,
		0.939519, -0.341925, -0.019779,
		0.336034, 0.909085, 0.246264,
		34.886917, 39.528702, 27.117382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197208, 38.831219, 27.430525>,  <34.651691, 38.892345, 26.944998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197208, 38.831219, 27.430525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067142, 39.203403, 27.498064>,  <34.989101, 39.426716, 27.538588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067142, 39.203403, 27.498064>,  <35.197208, 38.831219, 27.430525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067142, 39.203403, 27.498064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257060, -0.258797, 0.931098,
		0.910048, 0.259359, 0.323337,
		-0.325167, 0.930461, 0.168846,
		34.969593, 39.482540, 27.548717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363865, 38.990974, 28.171360>,  <35.197208, 38.831219, 27.430525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363865, 38.990974, 28.171360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083401, 39.263145, 28.086136>,  <34.915123, 39.426449, 28.035002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083401, 39.263145, 28.086136>,  <35.363865, 38.990974, 28.171360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083401, 39.263145, 28.086136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443166, -0.181796, 0.877812,
		0.558555, 0.709906, 0.429011,
		-0.701157, 0.680429, -0.213063,
		34.873055, 39.467274, 28.022217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351467, 39.310101, 28.762430>,  <35.363865, 38.990974, 28.171360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351467, 39.310101, 28.762430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008255, 39.412796, 28.584503>,  <34.802326, 39.474415, 28.477747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008255, 39.412796, 28.584503>,  <35.351467, 39.310101, 28.762430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008255, 39.412796, 28.584503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513594, -0.426909, 0.744292,
		0.001192, 0.867083, 0.498161,
		-0.858033, 0.256740, -0.444820,
		34.750847, 39.489819, 28.451057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862373, 39.542423, 29.297565>,  <35.351467, 39.310101, 28.762430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862373, 39.542423, 29.297565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645794, 39.429573, 28.980772>,  <34.515846, 39.361862, 28.790697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645794, 39.429573, 28.980772>,  <34.862373, 39.542423, 29.297565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645794, 39.429573, 28.980772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491868, -0.657674, 0.570553,
		-0.681832, 0.698478, 0.217332,
		-0.541452, -0.282123, -0.791982,
		34.483356, 39.344936, 28.743177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266026, 39.582359, 29.548948>,  <34.862373, 39.542423, 29.297565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266026, 39.582359, 29.548948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234478, 39.329025, 29.241011>,  <34.215549, 39.177025, 29.056248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234478, 39.329025, 29.241011>,  <34.266026, 39.582359, 29.548948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234478, 39.329025, 29.241011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544723, -0.619387, 0.565364,
		-0.834899, 0.463942, -0.296145,
		-0.078868, -0.633339, -0.769845,
		34.210819, 39.139023, 29.010057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527122, 39.486755, 29.473495>,  <34.266026, 39.582359, 29.548948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527122, 39.486755, 29.473495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657612, 39.161015, 29.281492>,  <33.735905, 38.965569, 29.166290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657612, 39.161015, 29.281492>,  <33.527122, 39.486755, 29.473495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657612, 39.161015, 29.281492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694462, -0.550969, 0.462769,
		-0.641328, 0.182385, -0.745274,
		0.326221, -0.814352, -0.480011,
		33.755478, 38.916710, 29.137489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931469, 39.029030, 29.571024>,  <33.527122, 39.486755, 29.473495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931469, 39.029030, 29.571024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221867, 38.776375, 29.462240>,  <33.396107, 38.624783, 29.396969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221867, 38.776375, 29.462240>,  <32.931469, 39.029030, 29.571024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221867, 38.776375, 29.462240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503125, -0.757442, 0.416110,
		-0.468826, -0.165263, -0.867692,
		0.725994, -0.631641, -0.271961,
		33.439663, 38.586884, 29.380651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541897, 38.432861, 29.339989>,  <32.931469, 39.029030, 29.571024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541897, 38.432861, 29.339989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906471, 38.328831, 29.467510>,  <33.125217, 38.266411, 29.544024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906471, 38.328831, 29.467510>,  <32.541897, 38.432861, 29.339989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906471, 38.328831, 29.467510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381269, -0.825136, 0.416875,
		0.154635, -0.501506, -0.851222,
		0.911439, -0.260081, 0.318804,
		33.179905, 38.250805, 29.563152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523899, 37.631897, 29.417171>,  <32.541897, 38.432861, 29.339989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523899, 37.631897, 29.417171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836063, 37.726452, 29.648718>,  <33.023361, 37.783184, 29.787645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836063, 37.726452, 29.648718>,  <32.523899, 37.631897, 29.417171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836063, 37.726452, 29.648718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307418, -0.661105, 0.684423,
		0.544481, -0.712082, -0.443261,
		0.780407, 0.236389, 0.578866,
		33.070187, 37.797367, 29.822378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857746, 37.023331, 29.615734>,  <32.523899, 37.631897, 29.417171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857746, 37.023331, 29.615734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994827, 37.281013, 29.889244>,  <33.077076, 37.435623, 30.053350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994827, 37.281013, 29.889244>,  <32.857746, 37.023331, 29.615734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994827, 37.281013, 29.889244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163197, -0.675959, 0.718642,
		0.925159, -0.357873, -0.126522,
		0.342706, 0.644210, 0.683773,
		33.097641, 37.474277, 30.094376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361172, 36.634354, 30.002439>,  <32.857746, 37.023331, 29.615734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361172, 36.634354, 30.002439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255817, 36.946808, 30.228878>,  <33.192604, 37.134281, 30.364740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255817, 36.946808, 30.228878>,  <33.361172, 36.634354, 30.002439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255817, 36.946808, 30.228878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244913, -0.621731, 0.743954,
		0.933085, 0.057301, 0.355063,
		-0.263383, 0.781132, 0.566094,
		33.176804, 37.181149, 30.398706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830536, 36.577415, 30.655653>,  <33.361172, 36.634354, 30.002439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830536, 36.577415, 30.655653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506683, 36.785080, 30.765181>,  <33.312374, 36.909679, 30.830898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506683, 36.785080, 30.765181>,  <33.830536, 36.577415, 30.655653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506683, 36.785080, 30.765181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269641, -0.743361, 0.612134,
		0.521343, 0.421767, 0.741832,
		-0.809627, 0.519160, 0.273821,
		33.263794, 36.940826, 30.847326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684494, 36.342701, 31.315880>,  <33.830536, 36.577415, 30.655653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684494, 36.342701, 31.315880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348206, 36.528431, 31.204462>,  <33.146431, 36.639870, 31.137611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348206, 36.528431, 31.204462>,  <33.684494, 36.342701, 31.315880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348206, 36.528431, 31.204462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526794, -0.582472, 0.619044,
		0.125195, 0.667179, 0.734301,
		-0.840722, 0.464327, -0.278543,
		33.095989, 36.667728, 31.120899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363422, 36.533318, 31.941353>,  <33.684494, 36.342701, 31.315880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363422, 36.533318, 31.941353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089729, 36.506104, 31.650921>,  <32.925514, 36.489777, 31.476662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089729, 36.506104, 31.650921>,  <33.363422, 36.533318, 31.941353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089729, 36.506104, 31.650921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553654, -0.599555, 0.577928,
		-0.474644, 0.797436, 0.372570,
		-0.684237, -0.068035, -0.726079,
		32.884457, 36.485691, 31.433098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750774, 36.764412, 32.247913>,  <33.363422, 36.533318, 31.941353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750774, 36.764412, 32.247913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639996, 36.539558, 31.936193>,  <32.573528, 36.404648, 31.749161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639996, 36.539558, 31.936193>,  <32.750774, 36.764412, 32.247913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639996, 36.539558, 31.936193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663457, -0.474798, 0.578267,
		-0.695071, 0.677183, -0.241453,
		-0.276951, -0.562130, -0.779300,
		32.556911, 36.370918, 31.702404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065296, 36.689926, 32.365047>,  <32.750774, 36.764412, 32.247913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065296, 36.689926, 32.365047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155334, 36.406391, 32.097649>,  <32.209358, 36.236271, 31.937210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155334, 36.406391, 32.097649>,  <32.065296, 36.689926, 32.365047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155334, 36.406391, 32.097649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698494, -0.595734, 0.396495,
		-0.679294, 0.377691, -0.629213,
		0.225091, -0.708838, -0.668493,
		32.222862, 36.193741, 31.897100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491829, 36.253700, 32.418312>,  <32.065296, 36.689926, 32.365047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491829, 36.253700, 32.418312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741440, 36.030293, 32.199718>,  <31.891207, 35.896248, 32.068562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.741440, 36.030293, 32.199718>,  <31.491829, 36.253700, 32.418312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741440, 36.030293, 32.199718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500564, -0.822754, 0.269278,
		-0.600021, 0.105514, -0.792995,
		0.624028, -0.558518, -0.546486,
		31.928648, 35.862736, 32.035774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057465, 35.821678, 32.024750>,  <31.491829, 36.253700, 32.418312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057465, 35.821678, 32.024750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420736, 35.656361, 32.051262>,  <31.638699, 35.557171, 32.067169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420736, 35.656361, 32.051262>,  <31.057465, 35.821678, 32.024750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420736, 35.656361, 32.051262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415481, -0.870849, 0.262675,
		-0.050840, -0.266096, -0.962605,
		0.908180, -0.413298, 0.066284,
		31.693190, 35.532372, 32.071148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022497, 35.153343, 31.730869>,  <31.057465, 35.821678, 32.024750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022497, 35.153343, 31.730869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352070, 35.130268, 31.956367>,  <31.549814, 35.116421, 32.091667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352070, 35.130268, 31.956367>,  <31.022497, 35.153343, 31.730869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352070, 35.130268, 31.956367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365675, -0.814101, 0.451133,
		0.432918, -0.577850, -0.691861,
		0.823932, -0.057692, 0.563744,
		31.599249, 35.112961, 32.125492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020020, 34.456089, 31.827595>,  <31.022497, 35.153343, 31.730869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020020, 34.456089, 31.827595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272886, 34.604206, 32.099842>,  <31.424606, 34.693077, 32.263191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272886, 34.604206, 32.099842>,  <31.020020, 34.456089, 31.827595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272886, 34.604206, 32.099842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161407, -0.796206, 0.583098,
		0.757832, -0.478473, -0.443569,
		0.632169, 0.370295, 0.680620,
		31.462538, 34.715294, 32.304028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436728, 33.961838, 32.023163>,  <31.020020, 34.456089, 31.827595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436728, 33.961838, 32.023163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488068, 34.221241, 32.323284>,  <31.518871, 34.376884, 32.503357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488068, 34.221241, 32.323284>,  <31.436728, 33.961838, 32.023163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488068, 34.221241, 32.323284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198821, -0.724378, 0.660111,
		0.971595, -0.233902, 0.035963,
		0.128350, 0.648510, 0.750307,
		31.526573, 34.415794, 32.548378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979435, 33.727573, 32.364807>,  <31.436728, 33.961838, 32.023163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979435, 33.727573, 32.364807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723076, 33.922871, 32.601746>,  <31.569262, 34.040051, 32.743908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723076, 33.922871, 32.601746>,  <31.979435, 33.727573, 32.364807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723076, 33.922871, 32.601746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086995, -0.812881, 0.575897,
		0.762683, 0.317559, 0.563446,
		-0.640896, 0.488243, 0.592344,
		31.530807, 34.069344, 32.779449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723011, 33.544056, 32.074352>,  <31.979435, 33.727573, 32.364807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723011, 33.544056, 32.074352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935181, 33.280949, 32.288265>,  <33.062481, 33.123085, 32.416615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935181, 33.280949, 32.288265>,  <32.723011, 33.544056, 32.074352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935181, 33.280949, 32.288265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798952, 0.598788, -0.055945,
		-0.283424, 0.456941, 0.843135,
		0.530422, -0.657768, 0.534784,
		33.094307, 33.083618, 32.448700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002136, 33.851810, 32.657536>,  <32.723011, 33.544056, 32.074352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002136, 33.851810, 32.657536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239513, 33.538975, 32.581463>,  <33.381939, 33.351273, 32.535820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.239513, 33.538975, 32.581463>,  <33.002136, 33.851810, 32.657536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239513, 33.538975, 32.581463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721119, 0.621582, -0.305979,
		0.357517, 0.044435, 0.932849,
		0.593438, -0.782088, -0.190183,
		33.417545, 33.304348, 32.524406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620438, 33.988861, 32.884033>,  <33.002136, 33.851810, 32.657536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620438, 33.988861, 32.884033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709778, 33.675968, 32.651402>,  <33.763382, 33.488232, 32.511822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.709778, 33.675968, 32.651402>,  <33.620438, 33.988861, 32.884033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709778, 33.675968, 32.651402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847853, 0.450268, -0.280008,
		0.480897, -0.430555, 0.763781,
		0.223347, -0.782228, -0.581580,
		33.776783, 33.441299, 32.476929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209892, 33.845463, 33.083202>,  <33.620438, 33.988861, 32.884033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209892, 33.845463, 33.083202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191357, 33.722271, 32.703098>,  <34.180237, 33.648357, 32.475037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191357, 33.722271, 32.703098>,  <34.209892, 33.845463, 33.083202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191357, 33.722271, 32.703098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925547, 0.344627, -0.156827,
		0.375786, -0.886781, 0.269081,
		-0.046339, -0.307981, -0.950263,
		34.177456, 33.629875, 32.418018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832630, 33.495308, 33.014748>,  <34.209892, 33.845463, 33.083202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832630, 33.495308, 33.014748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688725, 33.589962, 32.653732>,  <34.602383, 33.646755, 32.437122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688725, 33.589962, 32.653732>,  <34.832630, 33.495308, 33.014748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688725, 33.589962, 32.653732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885742, 0.390697, -0.250633,
		0.293312, -0.889585, -0.350153,
		-0.359763, 0.236632, -0.902539,
		34.580795, 33.660950, 32.382969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352554, 33.340469, 32.517021>,  <34.832630, 33.495308, 33.014748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352554, 33.340469, 32.517021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105061, 33.569748, 32.302132>,  <34.956562, 33.707314, 32.173199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105061, 33.569748, 32.302132>,  <35.352554, 33.340469, 32.517021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105061, 33.569748, 32.302132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785570, 0.457318, -0.416822,
		0.006762, -0.679931, -0.733245,
		-0.618736, 0.573196, -0.537225,
		34.919441, 33.741707, 32.140965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664948, 33.345020, 31.866596>,  <35.352554, 33.340469, 32.517021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664948, 33.345020, 31.866596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406807, 33.650135, 31.850180>,  <35.251923, 33.833202, 31.840330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406807, 33.650135, 31.850180>,  <35.664948, 33.345020, 31.866596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406807, 33.650135, 31.850180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685575, 0.554659, -0.471531,
		-0.336913, -0.332438, -0.880894,
		-0.645350, 0.762784, -0.041040,
		35.213203, 33.878971, 31.837868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621231, 33.544376, 31.174295>,  <35.664948, 33.345020, 31.866596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621231, 33.544376, 31.174295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507435, 33.898819, 31.320658>,  <35.439156, 34.111485, 31.408474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.507435, 33.898819, 31.320658>,  <35.621231, 33.544376, 31.174295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507435, 33.898819, 31.320658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598898, 0.462304, -0.653909,
		-0.748589, 0.033107, -0.662207,
		-0.284492, 0.886103, 0.365903,
		35.422089, 34.164650, 31.430429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366627, 33.969910, 30.681479>,  <35.621231, 33.544376, 31.174295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366627, 33.969910, 30.681479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451576, 34.246300, 30.957869>,  <35.502548, 34.412132, 31.123703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451576, 34.246300, 30.957869>,  <35.366627, 33.969910, 30.681479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451576, 34.246300, 30.957869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509831, 0.524890, -0.681588,
		-0.833647, 0.497036, -0.240806,
		0.212378, 0.690975, 0.690978,
		35.515289, 34.453590, 31.165161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072781, 34.626888, 30.497122>,  <35.366627, 33.969910, 30.681479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072781, 34.626888, 30.497122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386711, 34.706642, 30.731825>,  <35.575069, 34.754494, 30.872646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.386711, 34.706642, 30.731825>,  <35.072781, 34.626888, 30.497122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386711, 34.706642, 30.731825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339428, 0.653868, -0.676200,
		-0.518488, 0.729864, 0.445498,
		0.784831, 0.199387, 0.586758,
		35.622162, 34.766457, 30.907852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271954, 35.339214, 30.402075>,  <35.072781, 34.626888, 30.497122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271954, 35.339214, 30.402075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590847, 35.224144, 30.614363>,  <35.782185, 35.155102, 30.741735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590847, 35.224144, 30.614363>,  <35.271954, 35.339214, 30.402075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590847, 35.224144, 30.614363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570963, 0.644794, -0.508176,
		-0.196013, 0.708155, 0.678304,
		0.797233, -0.287677, 0.530718,
		35.830017, 35.137840, 30.773579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487518, 35.943241, 30.652943>,  <35.271954, 35.339214, 30.402075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487518, 35.943241, 30.652943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799480, 35.692993, 30.645521>,  <35.986660, 35.542843, 30.641068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799480, 35.692993, 30.645521>,  <35.487518, 35.943241, 30.652943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799480, 35.692993, 30.645521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553791, 0.703574, -0.445309,
		0.291648, 0.337025, 0.895185,
		0.779908, -0.625618, -0.018554,
		36.033455, 35.505306, 30.639956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122063, 36.399155, 30.812136>,  <35.487518, 35.943241, 30.652943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122063, 36.399155, 30.812136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279766, 36.070477, 30.647514>,  <36.374390, 35.873268, 30.548740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.279766, 36.070477, 30.647514>,  <36.122063, 36.399155, 30.812136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279766, 36.070477, 30.647514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598207, 0.569426, -0.563828,
		0.697645, -0.023902, 0.716045,
		0.394258, -0.821695, -0.411555,
		36.398045, 35.823967, 30.524048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791035, 36.525345, 30.830414>,  <36.122063, 36.399155, 30.812136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791035, 36.525345, 30.830414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727581, 36.263039, 30.535170>,  <36.689510, 36.105656, 30.358023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727581, 36.263039, 30.535170>,  <36.791035, 36.525345, 30.830414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727581, 36.263039, 30.535170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748635, 0.407517, -0.522948,
		0.643725, -0.635530, 0.426286,
		-0.158630, -0.655767, -0.738109,
		36.679993, 36.066307, 30.313736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464733, 36.289917, 30.629749>,  <36.791035, 36.525345, 30.830414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464733, 36.289917, 30.629749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208710, 36.250259, 30.324989>,  <37.055096, 36.226463, 30.142134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208710, 36.250259, 30.324989>,  <37.464733, 36.289917, 30.629749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208710, 36.250259, 30.324989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580499, 0.587221, -0.564085,
		0.503330, -0.803332, -0.318303,
		-0.640062, -0.099146, -0.761900,
		37.016693, 36.220516, 30.096420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816109, 36.468506, 30.065001>,  <37.464733, 36.289917, 30.629749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816109, 36.468506, 30.065001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475269, 36.451859, 29.856308>,  <37.270767, 36.441872, 29.731092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475269, 36.451859, 29.856308>,  <37.816109, 36.468506, 30.065001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475269, 36.451859, 29.856308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340054, 0.713749, -0.612312,
		0.397866, -0.699164, -0.594030,
		-0.852095, -0.041616, -0.521731,
		37.219643, 36.439373, 29.699789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014923, 36.676014, 29.354233>,  <37.816109, 36.468506, 30.065001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014923, 36.676014, 29.354233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619781, 36.729309, 29.386208>,  <37.382698, 36.761288, 29.405392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.619781, 36.729309, 29.386208>,  <38.014923, 36.676014, 29.354233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.619781, 36.729309, 29.386208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030254, 0.669549, -0.742152,
		-0.152404, -0.730720, -0.665448,
		-0.987855, 0.133239, 0.079935,
		37.323425, 36.769279, 29.410189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774319, 36.773327, 28.627186>,  <38.014923, 36.676014, 29.354233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774319, 36.773327, 28.627186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467182, 36.900127, 28.849869>,  <37.282898, 36.976208, 28.983479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467182, 36.900127, 28.849869>,  <37.774319, 36.773327, 28.627186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467182, 36.900127, 28.849869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124533, 0.778556, -0.615096,
		-0.628416, -0.541626, -0.558332,
		-0.767845, 0.317005, 0.556707,
		37.236828, 36.995228, 29.016880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207687, 36.761799, 28.218777>,  <37.774319, 36.773327, 28.627186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207687, 36.761799, 28.218777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144669, 37.032837, 28.506123>,  <37.106857, 37.195461, 28.678530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144669, 37.032837, 28.506123>,  <37.207687, 36.761799, 28.218777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144669, 37.032837, 28.506123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249040, 0.676672, -0.692888,
		-0.955593, -0.288063, 0.062141,
		-0.157546, 0.677594, 0.718363,
		37.097404, 37.236115, 28.721632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611042, 37.148952, 27.924490>,  <37.207687, 36.761799, 28.218777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611042, 37.148952, 27.924490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783737, 37.369141, 28.210312>,  <36.887352, 37.501251, 28.381805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783737, 37.369141, 28.210312>,  <36.611042, 37.148952, 27.924490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783737, 37.369141, 28.210312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155746, 0.734798, -0.660163,
		-0.888453, 0.396303, 0.231504,
		0.431733, 0.550468, 0.714557,
		36.913258, 37.534283, 28.424679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243782, 37.884430, 28.093079>,  <36.611042, 37.148952, 27.924490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243782, 37.884430, 28.093079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634109, 37.909176, 28.176943>,  <36.868305, 37.924023, 28.227261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634109, 37.909176, 28.176943>,  <36.243782, 37.884430, 28.093079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634109, 37.909176, 28.176943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091631, 0.755028, -0.649259,
		-0.198466, 0.652768, 0.731099,
		0.975815, 0.061864, 0.209661,
		36.926853, 37.927734, 28.239841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392910, 38.557465, 27.950836>,  <36.243782, 37.884430, 28.093079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392910, 38.557465, 27.950836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747334, 38.372440, 27.963018>,  <36.959988, 38.261425, 27.970327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.747334, 38.372440, 27.963018>,  <36.392910, 38.557465, 27.950836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747334, 38.372440, 27.963018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363416, 0.652346, -0.665111,
		0.287789, 0.600398, 0.746123,
		0.886062, -0.462565, 0.030457,
		37.013153, 38.233669, 27.972155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855247, 39.080379, 27.858749>,  <36.392910, 38.557465, 27.950836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855247, 39.080379, 27.858749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059715, 38.765118, 27.721624>,  <37.182396, 38.575962, 27.639349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059715, 38.765118, 27.721624>,  <36.855247, 39.080379, 27.858749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059715, 38.765118, 27.721624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332757, 0.549236, -0.766559,
		0.792448, 0.277772, 0.543018,
		0.511173, -0.788152, -0.342811,
		37.213066, 38.528671, 27.618782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538963, 39.328148, 27.659262>,  <36.855247, 39.080379, 27.858749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538963, 39.328148, 27.659262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463276, 38.980305, 27.476845>,  <37.417862, 38.771599, 27.367395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463276, 38.980305, 27.476845>,  <37.538963, 39.328148, 27.659262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463276, 38.980305, 27.476845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624054, 0.252076, -0.739605,
		0.758125, -0.424541, 0.494987,
		-0.189218, -0.869611, -0.456041,
		37.406509, 38.719421, 27.340033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173187, 39.212093, 27.326340>,  <37.538963, 39.328148, 27.659262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173187, 39.212093, 27.326340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903412, 38.978569, 27.145544>,  <37.741547, 38.838455, 27.037067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903412, 38.978569, 27.145544>,  <38.173187, 39.212093, 27.326340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903412, 38.978569, 27.145544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487492, 0.107652, -0.866465,
		0.554510, -0.804720, 0.211999,
		-0.674440, -0.583812, -0.451989,
		37.701080, 38.803425, 27.009947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533100, 38.764378, 26.948002>,  <38.173187, 39.212093, 27.326340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533100, 38.764378, 26.948002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178532, 38.728008, 26.766453>,  <37.965790, 38.706188, 26.657524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.178532, 38.728008, 26.766453>,  <38.533100, 38.764378, 26.948002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178532, 38.728008, 26.766453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440867, 0.133001, -0.887664,
		0.141101, -0.986934, -0.077796,
		-0.886412, -0.090952, -0.453873,
		37.912605, 38.700733, 26.630291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676460, 38.289066, 26.463390>,  <38.533100, 38.764378, 26.948002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676460, 38.289066, 26.463390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330925, 38.452274, 26.345207>,  <38.123604, 38.550201, 26.274298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330925, 38.452274, 26.345207>,  <38.676460, 38.289066, 26.463390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330925, 38.452274, 26.345207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405593, 0.215457, -0.888298,
		-0.298786, -0.887184, -0.351612,
		-0.863841, 0.408022, -0.295460,
		38.071774, 38.574680, 26.256569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390312, 37.863945, 25.902018>,  <38.676460, 38.289066, 26.463390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390312, 37.863945, 25.902018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262424, 38.242905, 25.896103>,  <38.185692, 38.470280, 25.892553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262424, 38.242905, 25.896103>,  <38.390312, 37.863945, 25.902018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262424, 38.242905, 25.896103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576683, 0.182184, -0.796395,
		-0.751809, -0.263149, -0.604596,
		-0.319719, 0.947397, -0.014786,
		38.166508, 38.527122, 25.891666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080322, 37.987312, 25.153877>,  <38.390312, 37.863945, 25.902018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080322, 37.987312, 25.153877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188320, 38.324337, 25.340296>,  <38.253117, 38.526550, 25.452147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188320, 38.324337, 25.340296>,  <38.080322, 37.987312, 25.153877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188320, 38.324337, 25.340296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539792, 0.268360, -0.797877,
		-0.797326, 0.466990, -0.382351,
		0.269993, 0.842558, 0.466048,
		38.269318, 38.577103, 25.480110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998077, 38.492092, 24.593979>,  <38.080322, 37.987312, 25.153877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998077, 38.492092, 24.593979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199738, 38.694519, 24.873903>,  <38.320732, 38.815975, 25.041857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.199738, 38.694519, 24.873903>,  <37.998077, 38.492092, 24.593979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.199738, 38.694519, 24.873903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735935, 0.172292, -0.654764,
		-0.451925, 0.845111, -0.285571,
		0.504147, 0.506065, 0.699810,
		38.350983, 38.846340, 25.083847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082935, 39.145630, 24.309809>,  <37.998077, 38.492092, 24.593979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082935, 39.145630, 24.309809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381840, 39.132156, 24.575281>,  <38.561180, 39.124073, 24.734566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381840, 39.132156, 24.575281>,  <38.082935, 39.145630, 24.309809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381840, 39.132156, 24.575281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604306, 0.449903, -0.657572,
		-0.276446, 0.892442, 0.356546,
		0.747256, -0.033680, 0.663682,
		38.606018, 39.122051, 24.774385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253498, 39.845547, 24.414276>,  <38.082935, 39.145630, 24.309809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253498, 39.845547, 24.414276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570328, 39.620239, 24.508387>,  <38.760426, 39.485054, 24.564854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.570328, 39.620239, 24.508387>,  <38.253498, 39.845547, 24.414276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570328, 39.620239, 24.508387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547182, 0.484300, -0.682675,
		0.270583, 0.669467, 0.691809,
		0.792072, -0.563265, 0.235276,
		38.807949, 39.451260, 24.578970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774574, 40.299461, 24.401888>,  <38.253498, 39.845547, 24.414276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774574, 40.299461, 24.401888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930016, 39.934093, 24.353474>,  <39.023281, 39.714870, 24.324425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.930016, 39.934093, 24.353474>,  <38.774574, 40.299461, 24.401888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930016, 39.934093, 24.353474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692405, 0.376158, -0.615696,
		0.607918, 0.155454, 0.778633,
		0.388602, -0.913422, -0.121036,
		39.046597, 39.660069, 24.317163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431705, 40.448772, 24.286444>,  <38.774574, 40.299461, 24.401888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431705, 40.448772, 24.286444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396446, 40.078968, 24.138113>,  <39.375290, 39.857086, 24.049114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396446, 40.078968, 24.138113>,  <39.431705, 40.448772, 24.286444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396446, 40.078968, 24.138113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626376, 0.238018, -0.742294,
		0.774521, -0.297707, 0.558111,
		-0.088146, -0.924510, -0.370827,
		39.370003, 39.801617, 24.026865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064491, 40.209442, 24.133842>,  <39.431705, 40.448772, 24.286444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064491, 40.209442, 24.133842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827599, 39.969898, 23.918205>,  <39.685463, 39.826172, 23.788822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827599, 39.969898, 23.918205>,  <40.064491, 40.209442, 24.133842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827599, 39.969898, 23.918205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690907, -0.033154, -0.722183,
		0.414614, -0.800167, 0.433391,
		-0.592236, -0.598860, -0.539095,
		39.649929, 39.790241, 23.756477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504730, 39.713375, 23.793781>,  <40.064491, 40.209442, 24.133842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504730, 39.713375, 23.793781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180237, 39.655830, 23.567081>,  <39.985542, 39.621304, 23.431061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180237, 39.655830, 23.567081>,  <40.504730, 39.713375, 23.793781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180237, 39.655830, 23.567081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584358, -0.165149, -0.794513,
		0.020707, -0.975719, 0.218044,
		-0.811231, -0.143868, -0.566750,
		39.936867, 39.612671, 23.397057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740982, 39.159084, 23.332386>,  <40.504730, 39.713375, 23.793781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740982, 39.159084, 23.332386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451126, 39.351349, 23.134853>,  <40.277214, 39.466705, 23.016333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451126, 39.351349, 23.134853>,  <40.740982, 39.159084, 23.332386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451126, 39.351349, 23.134853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558854, -0.009417, -0.829212,
		-0.403219, -0.876857, -0.261795,
		-0.724635, 0.480660, -0.493833,
		40.233734, 39.495548, 22.986704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523304, 38.781765, 22.807249>,  <40.740982, 39.159084, 23.332386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523304, 38.781765, 22.807249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424397, 39.154175, 22.699886>,  <40.365051, 39.377621, 22.635469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424397, 39.154175, 22.699886>,  <40.523304, 38.781765, 22.807249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424397, 39.154175, 22.699886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554390, -0.091243, -0.827240,
		-0.794674, -0.353356, -0.493591,
		-0.247273, 0.931028, -0.268406,
		40.350216, 39.433483, 22.619364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448891, 38.499260, 22.012226>,  <40.523304, 38.781765, 22.807249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448891, 38.499260, 22.012226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400532, 38.211700, 21.738419>,  <40.371517, 38.039165, 21.574133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400532, 38.211700, 21.738419>,  <40.448891, 38.499260, 22.012226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400532, 38.211700, 21.738419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295003, -0.632405, 0.716266,
		-0.947817, 0.288527, -0.135624,
		-0.120893, -0.718899, -0.684521,
		40.364265, 37.996029, 21.533062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810246, 38.228756, 22.101538>,  <40.448891, 38.499260, 22.012226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810246, 38.228756, 22.101538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992939, 37.940609, 21.892746>,  <40.102554, 37.767719, 21.767471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992939, 37.940609, 21.892746>,  <39.810246, 38.228756, 22.101538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992939, 37.940609, 21.892746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419271, -0.691815, 0.587882,
		-0.784605, -0.049655, -0.618004,
		0.456735, -0.720366, -0.521982,
		40.129959, 37.724499, 21.736151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383205, 37.609570, 22.047304>,  <39.810246, 38.228756, 22.101538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383205, 37.609570, 22.047304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764618, 37.497883, 22.002026>,  <39.993465, 37.430870, 21.974857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764618, 37.497883, 22.002026>,  <39.383205, 37.609570, 22.047304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764618, 37.497883, 22.002026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094420, -0.633710, 0.767787,
		-0.286116, -0.721421, -0.630627,
		0.953532, -0.279220, -0.113198,
		40.050678, 37.414116, 21.968065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388641, 36.934132, 22.107832>,  <39.383205, 37.609570, 22.047304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388641, 36.934132, 22.107832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781914, 36.997562, 22.144073>,  <40.017876, 37.035622, 22.165819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781914, 36.997562, 22.144073>,  <39.388641, 36.934132, 22.107832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781914, 36.997562, 22.144073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078767, -0.815741, 0.573029,
		0.164781, -0.556254, -0.814511,
		0.983180, 0.158581, 0.090605,
		40.076866, 37.045135, 22.171255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664959, 36.221642, 22.244640>,  <39.388641, 36.934132, 22.107832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664959, 36.221642, 22.244640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968033, 36.460831, 22.349215>,  <40.149876, 36.604343, 22.411959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968033, 36.460831, 22.349215>,  <39.664959, 36.221642, 22.244640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968033, 36.460831, 22.349215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223974, -0.614513, 0.756445,
		0.612989, -0.514589, -0.599535,
		0.757681, 0.597973, 0.261435,
		40.195335, 36.640224, 22.427645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.302246, 35.719898, 22.350548>,  <39.664959, 36.221642, 22.244640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.302246, 35.719898, 22.350548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336933, 36.056709, 22.563515>,  <40.357746, 36.258797, 22.691296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336933, 36.056709, 22.563515>,  <40.302246, 35.719898, 22.350548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336933, 36.056709, 22.563515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089379, -0.525702, 0.845960,
		0.992216, -0.120945, 0.029673,
		0.086716, 0.842027, 0.532419,
		40.362949, 36.309319, 22.723240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653358, 35.433483, 22.895292>,  <40.302246, 35.719898, 22.350548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653358, 35.433483, 22.895292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482292, 35.782787, 22.988686>,  <40.379650, 35.992371, 23.044722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482292, 35.782787, 22.988686>,  <40.653358, 35.433483, 22.895292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482292, 35.782787, 22.988686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271947, -0.370626, 0.888078,
		0.862058, 0.316309, 0.395986,
		-0.427669, 0.873261, 0.233481,
		40.353992, 36.044765, 23.058729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.894058, 35.608940, 23.672598>,  <40.653358, 35.433483, 22.895292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.894058, 35.608940, 23.672598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555222, 35.797386, 23.574224>,  <40.351921, 35.910454, 23.515200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555222, 35.797386, 23.574224>,  <40.894058, 35.608940, 23.672598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555222, 35.797386, 23.574224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384778, -0.224487, 0.895294,
		0.366581, 0.853025, 0.371437,
		-0.847091, 0.471119, -0.245933,
		40.301094, 35.938721, 23.500444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661205, 35.995720, 24.304750>,  <40.894058, 35.608940, 23.672598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661205, 35.995720, 24.304750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322792, 35.975719, 24.092436>,  <40.119743, 35.963718, 23.965046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322792, 35.975719, 24.092436>,  <40.661205, 35.995720, 24.304750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322792, 35.975719, 24.092436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520125, -0.141216, 0.842335,
		-0.117074, 0.988716, 0.093466,
		-0.846028, -0.050001, -0.530788,
		40.068985, 35.960720, 23.933199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221195, 36.274258, 24.763853>,  <40.661205, 35.995720, 24.304750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221195, 36.274258, 24.763853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.982338, 36.081547, 24.507320>,  <39.839024, 35.965919, 24.353401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.982338, 36.081547, 24.507320>,  <40.221195, 36.274258, 24.763853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982338, 36.081547, 24.507320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515209, -0.382442, 0.767006,
		-0.614797, 0.788435, -0.019841,
		-0.597147, -0.481775, -0.641333,
		39.803192, 35.937016, 24.314920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577023, 36.408840, 25.097466>,  <40.221195, 36.274258, 24.763853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577023, 36.408840, 25.097466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517193, 36.106907, 24.842012>,  <39.481297, 35.925747, 24.688742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.517193, 36.106907, 24.842012>,  <39.577023, 36.408840, 25.097466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517193, 36.106907, 24.842012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526856, -0.485719, 0.697495,
		-0.836690, 0.440793, -0.325040,
		-0.149572, -0.754837, -0.638631,
		39.472321, 35.880455, 24.650423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871376, 36.168167, 25.052818>,  <39.577023, 36.408840, 25.097466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871376, 36.168167, 25.052818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035542, 35.830288, 24.915380>,  <39.134041, 35.627560, 24.832918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035542, 35.830288, 24.915380>,  <38.871376, 36.168167, 25.052818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035542, 35.830288, 24.915380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398852, -0.505114, 0.765360,
		-0.820049, -0.177067, -0.544211,
		0.410409, -0.844693, -0.343595,
		39.158665, 35.576881, 24.812302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396774, 35.681931, 25.119530>,  <38.871376, 36.168167, 25.052818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396774, 35.681931, 25.119530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736340, 35.473255, 25.085609>,  <38.940079, 35.348049, 25.065256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736340, 35.473255, 25.085609>,  <38.396774, 35.681931, 25.119530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736340, 35.473255, 25.085609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269477, -0.565241, 0.779669,
		-0.454679, -0.639017, -0.620423,
		0.848911, -0.521689, -0.084803,
		38.991013, 35.316750, 25.060169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197269, 34.953259, 24.943104>,  <38.396774, 35.681931, 25.119530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197269, 34.953259, 24.943104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548313, 35.004635, 25.127842>,  <38.758938, 35.035461, 25.238686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548313, 35.004635, 25.127842>,  <38.197269, 34.953259, 24.943104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548313, 35.004635, 25.127842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335514, -0.523557, 0.783147,
		0.342389, -0.842254, -0.416387,
		0.877611, 0.128437, 0.461848,
		38.811596, 35.043167, 25.266396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341705, 34.353813, 25.257915>,  <38.197269, 34.953259, 24.943104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341705, 34.353813, 25.257915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593864, 34.598759, 25.448751>,  <38.745159, 34.745724, 25.563253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593864, 34.598759, 25.448751>,  <38.341705, 34.353813, 25.257915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593864, 34.598759, 25.448751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205661, -0.460881, 0.863303,
		0.748533, -0.642343, -0.164600,
		0.630398, 0.612359, 0.477089,
		38.782986, 34.782467, 25.591879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616924, 33.951637, 25.772757>,  <38.341705, 34.353813, 25.257915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616924, 33.951637, 25.772757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695480, 34.320724, 25.905432>,  <38.742615, 34.542179, 25.985037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695480, 34.320724, 25.905432>,  <38.616924, 33.951637, 25.772757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695480, 34.320724, 25.905432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234354, -0.284300, 0.929651,
		0.952108, -0.260306, 0.160410,
		0.196389, 0.922721, 0.331688,
		38.754398, 34.597542, 26.004938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999187, 33.966282, 26.472189>,  <38.616924, 33.951637, 25.772757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999187, 33.966282, 26.472189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872440, 34.345669, 26.473021>,  <38.796391, 34.573299, 26.473520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872440, 34.345669, 26.473021>,  <38.999187, 33.966282, 26.472189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872440, 34.345669, 26.473021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310467, -0.105794, 0.944679,
		0.896218, 0.298691, 0.327991,
		-0.316867, 0.948468, 0.002080,
		38.777382, 34.630211, 26.473644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295422, 34.280148, 27.124186>,  <38.999187, 33.966282, 26.472189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295422, 34.280148, 27.124186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003361, 34.529377, 27.012009>,  <38.828125, 34.678917, 26.944702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.003361, 34.529377, 27.012009>,  <39.295422, 34.280148, 27.124186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003361, 34.529377, 27.012009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217204, 0.177494, 0.959854,
		0.647839, 0.761756, 0.005737,
		-0.730156, 0.623076, -0.280443,
		38.784313, 34.716301, 26.927876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327583, 34.748837, 27.591625>,  <39.295422, 34.280148, 27.124186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327583, 34.748837, 27.591625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945972, 34.760540, 27.472303>,  <38.717007, 34.767563, 27.400711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.945972, 34.760540, 27.472303>,  <39.327583, 34.748837, 27.591625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945972, 34.760540, 27.472303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298456, -0.000900, 0.954423,
		0.027658, 0.999571, 0.009592,
		-0.954023, 0.029260, -0.298303,
		38.659767, 34.769318, 27.382812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943703, 35.120533, 28.099356>,  <39.327583, 34.748837, 27.591625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943703, 35.120533, 28.099356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634277, 34.945492, 27.916006>,  <38.448624, 34.840466, 27.805996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.634277, 34.945492, 27.916006>,  <38.943703, 35.120533, 28.099356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634277, 34.945492, 27.916006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451362, -0.127253, 0.883221,
		-0.444829, 0.890119, -0.099079,
		-0.773563, -0.437602, -0.458372,
		38.402210, 34.814213, 27.778494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435867, 35.458164, 28.374817>,  <38.943703, 35.120533, 28.099356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435867, 35.458164, 28.374817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299797, 35.112411, 28.226692>,  <38.218155, 34.904961, 28.137817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.299797, 35.112411, 28.226692>,  <38.435867, 35.458164, 28.374817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299797, 35.112411, 28.226692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448205, -0.197150, 0.871919,
		-0.826676, 0.462580, -0.320354,
		-0.340175, -0.864379, -0.370310,
		38.197746, 34.853096, 28.115599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758354, 35.315010, 28.647715>,  <38.435867, 35.458164, 28.374817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758354, 35.315010, 28.647715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874344, 34.948246, 28.538027>,  <37.943939, 34.728188, 28.472214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874344, 34.948246, 28.538027>,  <37.758354, 35.315010, 28.647715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874344, 34.948246, 28.538027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444558, -0.382792, 0.809838,
		-0.847514, -0.112930, -0.518620,
		0.289979, -0.916906, -0.274218,
		37.961338, 34.673176, 28.455761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194740, 34.909550, 28.831503>,  <37.758354, 35.315010, 28.647715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194740, 34.909550, 28.831503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502449, 34.661198, 28.771196>,  <37.687073, 34.512188, 28.735012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502449, 34.661198, 28.771196>,  <37.194740, 34.909550, 28.831503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502449, 34.661198, 28.771196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247736, -0.507364, 0.825354,
		-0.588940, -0.597570, -0.544115,
		0.769270, -0.620880, -0.150768,
		37.733231, 34.474934, 28.725965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953014, 34.139473, 28.919390>,  <37.194740, 34.909550, 28.831503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953014, 34.139473, 28.919390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348774, 34.118290, 28.973486>,  <37.586227, 34.105579, 29.005943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348774, 34.118290, 28.973486>,  <36.953014, 34.139473, 28.919390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348774, 34.118290, 28.973486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143070, -0.515696, 0.844742,
		0.025013, -0.855134, -0.517804,
		0.989397, -0.052952, 0.135243,
		37.645592, 34.102406, 29.014059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190765, 33.413700, 28.950924>,  <36.953014, 34.139473, 28.919390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190765, 33.413700, 28.950924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500313, 33.597778, 29.124983>,  <37.686043, 33.708225, 29.229418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500313, 33.597778, 29.124983>,  <37.190765, 33.413700, 28.950924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500313, 33.597778, 29.124983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141638, -0.543908, 0.827105,
		0.617306, -0.701704, -0.355733,
		0.773869, 0.460191, 0.435146,
		37.732471, 33.735836, 29.255526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655182, 32.912529, 29.227402>,  <37.190765, 33.413700, 28.950924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655182, 32.912529, 29.227402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642281, 33.254951, 29.433750>,  <37.634541, 33.460407, 29.557560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642281, 33.254951, 29.433750>,  <37.655182, 32.912529, 29.227402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642281, 33.254951, 29.433750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240141, -0.507659, 0.827414,
		0.970202, -0.097195, 0.221948,
		-0.032253, 0.856058, 0.515873,
		37.632607, 33.511768, 29.588512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041969, 32.741623, 29.736816>,  <37.655182, 32.912529, 29.227402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041969, 32.741623, 29.736816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769333, 33.020565, 29.825470>,  <37.605751, 33.187931, 29.878662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769333, 33.020565, 29.825470>,  <38.041969, 32.741623, 29.736816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769333, 33.020565, 29.825470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201189, -0.469817, 0.859532,
		0.703529, 0.541261, 0.460525,
		-0.681594, 0.697358, 0.221633,
		37.564854, 33.229771, 29.891960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028175, 32.838886, 30.482971>,  <38.041969, 32.741623, 29.736816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028175, 32.838886, 30.482971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694469, 33.046173, 30.407644>,  <37.494247, 33.170544, 30.362448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694469, 33.046173, 30.407644>,  <38.028175, 32.838886, 30.482971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694469, 33.046173, 30.407644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472125, -0.494991, 0.729440,
		0.284791, 0.697452, 0.657613,
		-0.834262, 0.518213, -0.188315,
		37.444191, 33.201637, 30.351151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014153, 33.258732, 30.998875>,  <38.028175, 32.838886, 30.482971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014153, 33.258732, 30.998875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634693, 33.222492, 30.877644>,  <37.407017, 33.200748, 30.804905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.634693, 33.222492, 30.877644>,  <38.014153, 33.258732, 30.998875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634693, 33.222492, 30.877644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266217, -0.288842, 0.919619,
		-0.170862, 0.953080, 0.249889,
		-0.948649, -0.090603, -0.303078,
		37.350098, 33.195312, 30.786720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582172, 33.586987, 31.526775>,  <38.014153, 33.258732, 30.998875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582172, 33.586987, 31.526775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347919, 33.324787, 31.336050>,  <37.207367, 33.167469, 31.221615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347919, 33.324787, 31.336050>,  <37.582172, 33.586987, 31.526775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347919, 33.324787, 31.336050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283434, -0.385504, 0.878095,
		-0.759405, 0.649389, 0.039974,
		-0.585636, -0.655500, -0.476813,
		37.172230, 33.128136, 31.193007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975536, 33.496746, 31.992762>,  <37.582172, 33.586987, 31.526775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975536, 33.496746, 31.992762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996857, 33.185402, 31.742540>,  <37.009651, 32.998596, 31.592407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.996857, 33.185402, 31.742540>,  <36.975536, 33.496746, 31.992762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996857, 33.185402, 31.742540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357863, -0.599726, 0.715726,
		-0.932252, 0.185712, -0.310513,
		0.053304, -0.778357, -0.625555,
		37.012848, 32.951897, 31.554874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359615, 33.037460, 32.115665>,  <36.975536, 33.496746, 31.992762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359615, 33.037460, 32.115665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619854, 32.796078, 31.931248>,  <36.775997, 32.651249, 31.820597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619854, 32.796078, 31.931248>,  <36.359615, 33.037460, 32.115665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619854, 32.796078, 31.931248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149542, -0.697012, 0.701293,
		-0.744556, -0.387312, -0.543715,
		0.650595, -0.603460, -0.461046,
		36.815033, 32.615040, 31.792934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023457, 32.419220, 32.060024>,  <36.359615, 33.037460, 32.115665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023457, 32.419220, 32.060024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406986, 32.321548, 32.002007>,  <36.637104, 32.262943, 31.967196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406986, 32.321548, 32.002007>,  <36.023457, 32.419220, 32.060024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406986, 32.321548, 32.002007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125280, -0.821962, 0.555592,
		-0.254886, -0.514542, -0.818706,
		0.958821, -0.244181, -0.145045,
		36.694633, 32.248295, 31.958492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053658, 31.691299, 32.102325>,  <36.023457, 32.419220, 32.060024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053658, 31.691299, 32.102325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423973, 31.832949, 32.155262>,  <36.646164, 31.917938, 32.187023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423973, 31.832949, 32.155262>,  <36.053658, 31.691299, 32.102325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423973, 31.832949, 32.155262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158796, -0.681959, 0.713943,
		0.343075, -0.639945, -0.687583,
		0.925788, 0.354122, 0.132343,
		36.701710, 31.939186, 32.194965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382523, 31.130789, 32.012943>,  <36.053658, 31.691299, 32.102325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382523, 31.130789, 32.012943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633163, 31.351805, 32.232784>,  <36.783546, 31.484415, 32.364689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633163, 31.351805, 32.232784>,  <36.382523, 31.130789, 32.012943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633163, 31.351805, 32.232784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129065, -0.769057, 0.626014,
		0.768577, -0.321327, -0.553207,
		0.626603, 0.552540, 0.549607,
		36.821144, 31.517567, 32.397667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046841, 30.789633, 32.020088>,  <36.382523, 31.130789, 32.012943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046841, 30.789633, 32.020088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039921, 31.036266, 32.334927>,  <37.035767, 31.184246, 32.523830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039921, 31.036266, 32.334927>,  <37.046841, 30.789633, 32.020088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039921, 31.036266, 32.334927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116730, -0.780589, 0.614048,
		0.993013, 0.102504, -0.058466,
		-0.017304, 0.616582, 0.787101,
		37.034729, 31.221241, 32.571056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632626, 30.573896, 32.414112>,  <37.046841, 30.789633, 32.020088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632626, 30.573896, 32.414112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395279, 30.778828, 32.662445>,  <37.252872, 30.901787, 32.811447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395279, 30.778828, 32.662445>,  <37.632626, 30.573896, 32.414112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395279, 30.778828, 32.662445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105282, -0.715267, 0.690875,
		0.798017, 0.475305, 0.370477,
		-0.593367, 0.512326, 0.620837,
		37.217270, 30.932526, 32.848698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030357, 30.763224, 32.962944>,  <37.632626, 30.573896, 32.414112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030357, 30.763224, 32.962944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657215, 30.801733, 33.101807>,  <37.433331, 30.824839, 33.185123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657215, 30.801733, 33.101807>,  <38.030357, 30.763224, 32.962944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657215, 30.801733, 33.101807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238002, -0.558721, 0.794473,
		0.270451, 0.823749, 0.498290,
		-0.932851, 0.096272, 0.347160,
		37.377361, 30.830614, 33.205956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124249, 30.724148, 33.695171>,  <38.030357, 30.763224, 32.962944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124249, 30.724148, 33.695171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732582, 30.658016, 33.648003>,  <37.497581, 30.618338, 33.619701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732582, 30.658016, 33.648003>,  <38.124249, 30.724148, 33.695171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732582, 30.658016, 33.648003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080601, -0.849381, 0.521589,
		-0.186390, 0.501217, 0.845009,
		-0.979164, -0.165328, -0.117917,
		37.438831, 30.608418, 33.612629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876682, 30.461248, 34.281189>,  <38.124249, 30.724148, 33.695171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876682, 30.461248, 34.281189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584656, 30.338205, 34.037098>,  <37.409439, 30.264380, 33.890644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584656, 30.338205, 34.037098>,  <37.876682, 30.461248, 34.281189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584656, 30.338205, 34.037098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104795, -0.932794, 0.344837,
		-0.675289, 0.187807, 0.713241,
		-0.730070, -0.307609, -0.610225,
		37.365635, 30.245922, 33.854031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577320, 30.193914, 34.265919>,  <37.876682, 30.461248, 34.281189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577320, 30.193914, 34.265919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892948, 30.161694, 34.509521>,  <39.082325, 30.142361, 34.655682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.892948, 30.161694, 34.509521>,  <38.577320, 30.193914, 34.265919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892948, 30.161694, 34.509521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497278, 0.665817, -0.556239,
		-0.360677, 0.741753, 0.565432,
		0.789066, -0.080554, 0.609003,
		39.129669, 30.137527, 34.692223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839943, 30.910254, 34.451885>,  <38.577320, 30.193914, 34.265919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839943, 30.910254, 34.451885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138824, 30.653200, 34.519653>,  <39.318153, 30.498968, 34.560314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138824, 30.653200, 34.519653>,  <38.839943, 30.910254, 34.451885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138824, 30.653200, 34.519653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639583, 0.626052, -0.446087,
		0.180603, 0.441679, 0.878807,
		0.747206, -0.642634, 0.169423,
		39.362988, 30.460409, 34.570480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298702, 31.390976, 34.663574>,  <38.839943, 30.910254, 34.451885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298702, 31.390976, 34.663574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499580, 31.061098, 34.559513>,  <39.620106, 30.863171, 34.497078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.499580, 31.061098, 34.559513>,  <39.298702, 31.390976, 34.663574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499580, 31.061098, 34.559513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739747, 0.565501, -0.364668,
		0.447855, -0.009311, 0.894058,
		0.502195, -0.824695, -0.260151,
		39.650238, 30.813690, 34.481468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934055, 31.466589, 34.905243>,  <39.298702, 31.390976, 34.663574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934055, 31.466589, 34.905243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987637, 31.178877, 34.632572>,  <40.019787, 31.006248, 34.468967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.987637, 31.178877, 34.632572>,  <39.934055, 31.466589, 34.905243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987637, 31.178877, 34.632572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886148, 0.394874, -0.242518,
		0.443617, -0.571584, 0.690287,
		0.133957, -0.719282, -0.681681,
		40.027824, 30.963093, 34.428066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634155, 31.337099, 34.862221>,  <39.934055, 31.466589, 34.905243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634155, 31.337099, 34.862221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526707, 31.138569, 34.532005>,  <40.462238, 31.019451, 34.333878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526707, 31.138569, 34.532005>,  <40.634155, 31.337099, 34.862221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526707, 31.138569, 34.532005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884745, 0.211754, -0.415195,
		0.380881, -0.841916, 0.382238,
		-0.268619, -0.496324, -0.825534,
		40.446121, 30.989672, 34.284344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125565, 30.791370, 34.625587>,  <40.634155, 31.337099, 34.862221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125565, 30.791370, 34.625587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929165, 30.898382, 34.293964>,  <40.811325, 30.962589, 34.094990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.929165, 30.898382, 34.293964>,  <41.125565, 30.791370, 34.625587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929165, 30.898382, 34.293964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868853, 0.081206, -0.488364,
		-0.063327, -0.960122, -0.272316,
		-0.491003, 0.267529, -0.829062,
		40.781864, 30.978642, 34.045246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560177, 30.654497, 34.046513>,  <41.125565, 30.791370, 34.625587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560177, 30.654497, 34.046513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308907, 30.906029, 33.863224>,  <41.158142, 31.056948, 33.753250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308907, 30.906029, 33.863224>,  <41.560177, 30.654497, 34.046513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308907, 30.906029, 33.863224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763511, 0.384797, -0.518634,
		-0.149811, -0.675651, -0.721840,
		-0.628178, 0.628830, -0.458220,
		41.120453, 31.094677, 33.725758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576309, 30.624821, 33.226700>,  <41.560177, 30.654497, 34.046513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576309, 30.624821, 33.226700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462448, 30.986940, 33.352814>,  <41.394131, 31.204212, 33.428482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462448, 30.986940, 33.352814>,  <41.576309, 30.624821, 33.226700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462448, 30.986940, 33.352814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825134, 0.398802, -0.400137,
		-0.487981, 0.146253, -0.860514,
		-0.284654, 0.905299, 0.315286,
		41.377052, 31.258530, 33.447399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622982, 31.132204, 32.635151>,  <41.576309, 30.624821, 33.226700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622982, 31.132204, 32.635151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664967, 31.296148, 32.997585>,  <41.690159, 31.394514, 33.215046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664967, 31.296148, 32.997585>,  <41.622982, 31.132204, 32.635151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664967, 31.296148, 32.997585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906204, 0.335854, -0.256898,
		-0.409606, 0.848067, -0.336163,
		0.104965, 0.409860, 0.906089,
		41.696457, 31.419106, 33.269413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.935993, 31.762127, 32.507534>,  <41.622982, 31.132204, 32.635151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.935993, 31.762127, 32.507534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995110, 31.634903, 32.882126>,  <42.030579, 31.558569, 33.106880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.995110, 31.634903, 32.882126>,  <41.935993, 31.762127, 32.507534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995110, 31.634903, 32.882126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966677, 0.246579, -0.068813,
		-0.209030, 0.915443, 0.343906,
		0.147794, -0.318062, 0.936479,
		42.039448, 31.539484, 33.163071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.422459, 32.283978, 32.725834>,  <41.935993, 31.762127, 32.507534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.422459, 32.283978, 32.725834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449951, 31.986927, 32.992302>,  <42.466446, 31.808697, 33.152184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.449951, 31.986927, 32.992302>,  <42.422459, 32.283978, 32.725834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449951, 31.986927, 32.992302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982166, 0.167502, 0.085398,
		-0.175004, 0.648425, 0.740891,
		0.068727, -0.742623, 0.666174,
		42.470570, 31.764141, 33.192154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691025, 32.481236, 33.257496>,  <42.422459, 32.283978, 32.725834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691025, 32.481236, 33.257496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.790749, 32.097965, 33.313690>,  <42.850582, 31.868002, 33.347408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.790749, 32.097965, 33.313690>,  <42.691025, 32.481236, 33.257496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.790749, 32.097965, 33.313690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956939, 0.221472, -0.187666,
		0.148704, 0.181222, 0.972135,
		0.249310, -0.958180, 0.140485,
		42.865543, 31.810511, 33.355835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081100, 32.390629, 33.795227>,  <42.691025, 32.481236, 33.257496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081100, 32.390629, 33.795227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.175777, 32.111298, 33.525021>,  <43.232582, 31.943699, 33.362896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.175777, 32.111298, 33.525021>,  <43.081100, 32.390629, 33.795227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.175777, 32.111298, 33.525021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915528, 0.393055, -0.085537,
		0.325246, -0.598204, 0.732371,
		0.236694, -0.698326, -0.675512,
		43.246784, 31.901800, 33.322369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.821041, 32.284760, 33.846218>,  <43.081100, 32.390629, 33.795227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.821041, 32.284760, 33.846218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741856, 32.079239, 33.512314>,  <43.694344, 31.955927, 33.311974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741856, 32.079239, 33.512314>,  <43.821041, 32.284760, 33.846218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.741856, 32.079239, 33.512314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925565, 0.182387, -0.331758,
		0.322706, -0.838299, 0.439449,
		-0.197963, -0.513799, -0.834758,
		43.682468, 31.925098, 33.261887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.388409, 32.272308, 33.539772>,  <43.821041, 32.284760, 33.846218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.388409, 32.272308, 33.539772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209148, 32.104130, 33.224205>,  <44.101593, 32.003223, 33.034866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209148, 32.104130, 33.224205>,  <44.388409, 32.272308, 33.539772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.209148, 32.104130, 33.224205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715537, 0.360301, -0.598490,
		0.535878, -0.832713, 0.139374,
		-0.448153, -0.420444, -0.788914,
		44.074703, 31.977997, 32.987530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.979004, 32.005783, 33.243141>,  <44.388409, 32.272308, 33.539772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.979004, 32.005783, 33.243141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.671677, 32.055725, 32.992031>,  <44.487282, 32.085690, 32.841366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.671677, 32.055725, 32.992031>,  <44.979004, 32.005783, 33.243141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.671677, 32.055725, 32.992031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625217, 0.356452, -0.694295,
		0.137081, -0.925933, -0.351933,
		-0.768318, 0.124860, -0.627772,
		44.441181, 32.093182, 32.803699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.192650, 31.714844, 32.552753>,  <44.979004, 32.005783, 33.243141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.192650, 31.714844, 32.552753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.909546, 31.989365, 32.485752>,  <44.739681, 32.154079, 32.445549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.909546, 31.989365, 32.485752>,  <45.192650, 31.714844, 32.552753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.909546, 31.989365, 32.485752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617290, 0.485496, -0.619069,
		-0.343546, -0.541554, -0.767265,
		-0.707763, 0.686304, -0.167506,
		44.697216, 32.195255, 32.435501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.262310, 31.849588, 31.871880>,  <45.192650, 31.714844, 32.552753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.262310, 31.849588, 31.871880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.091743, 32.165821, 32.047672>,  <44.989403, 32.355560, 32.153149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.091743, 32.165821, 32.047672>,  <45.262310, 31.849588, 31.871880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.091743, 32.165821, 32.047672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523887, 0.611943, -0.592510,
		-0.737366, -0.022420, -0.675122,
		-0.426420, 0.790584, 0.439480,
		44.963818, 32.402996, 32.179516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230728, 32.249016, 31.343681>,  <45.262310, 31.849588, 31.871880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230728, 32.249016, 31.343681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.182781, 32.499218, 31.652063>,  <45.154015, 32.649342, 31.837093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.182781, 32.499218, 31.652063>,  <45.230728, 32.249016, 31.343681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.182781, 32.499218, 31.652063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649457, 0.636747, -0.415643,
		-0.750891, 0.450879, -0.482566,
		-0.119868, 0.625508, 0.770955,
		45.146820, 32.686871, 31.883350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.022469, 32.967106, 31.213732>,  <45.230728, 32.249016, 31.343681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.022469, 32.967106, 31.213732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.286610, 32.916164, 31.509764>,  <45.445095, 32.885601, 31.687384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.286610, 32.916164, 31.509764>,  <45.022469, 32.967106, 31.213732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.286610, 32.916164, 31.509764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717563, 0.397625, -0.571836,
		-0.221449, 0.908667, 0.353957,
		0.660351, -0.127354, 0.740080,
		45.484715, 32.877956, 31.731787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.323132, 33.666142, 31.435951>,  <45.022469, 32.967106, 31.213732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.323132, 33.666142, 31.435951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.546707, 33.334984, 31.454624>,  <45.680851, 33.136288, 31.465828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.546707, 33.334984, 31.454624>,  <45.323132, 33.666142, 31.435951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.546707, 33.334984, 31.454624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488356, 0.283161, -0.825426,
		0.670149, 0.484157, 0.562577,
		0.558936, -0.827896, 0.046681,
		45.714390, 33.086617, 31.468628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.026325, 33.931740, 31.405180>,  <45.323132, 33.666142, 31.435951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.026325, 33.931740, 31.405180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.906025, 33.572044, 31.278105>,  <45.833843, 33.356228, 31.201860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.906025, 33.572044, 31.278105>,  <46.026325, 33.931740, 31.405180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.906025, 33.572044, 31.278105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208257, 0.263148, -0.942010,
		0.930687, -0.349472, 0.108130,
		-0.300752, -0.899235, -0.317689,
		45.815800, 33.302273, 31.182798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.548058, 33.518955, 31.064091>,  <46.026325, 33.931740, 31.405180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.548058, 33.518955, 31.064091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.178196, 33.423306, 30.945539>,  <45.956280, 33.365913, 30.874409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.178196, 33.423306, 30.945539>,  <46.548058, 33.518955, 31.064091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.178196, 33.423306, 30.945539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261554, 0.166892, -0.950651,
		0.276788, -0.956539, -0.091773,
		-0.924650, -0.239125, -0.296380,
		45.900803, 33.351566, 30.856625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.583076, 33.263462, 31.745836>,  <46.548058, 33.518955, 31.064091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.583076, 33.263462, 31.745836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.308102, 33.524029, 31.874268>,  <46.143116, 33.680367, 31.951326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.308102, 33.524029, 31.874268>,  <46.583076, 33.263462, 31.745836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.308102, 33.524029, 31.874268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713467, -0.688323, -0.131060,
		0.135630, -0.319173, 0.937941,
		-0.687437, 0.651414, 0.321076,
		46.101871, 33.719452, 31.970591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.115128, 32.947247, 32.218864>,  <46.583076, 33.263462, 31.745836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.115128, 32.947247, 32.218864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.892986, 33.258743, 32.102154>,  <45.759701, 33.445641, 32.032127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.892986, 33.258743, 32.102154>,  <46.115128, 32.947247, 32.218864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.892986, 33.258743, 32.102154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830010, -0.540818, 0.136380,
		-0.051593, 0.317918, 0.946713,
		-0.555357, 0.778745, -0.291777,
		45.726379, 33.492367, 32.014622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.700336, 33.155869, 32.901657>,  <46.115128, 32.947247, 32.218864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.700336, 33.155869, 32.901657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.515038, 33.196499, 32.549500>,  <45.403858, 33.220879, 32.338207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.515038, 33.196499, 32.549500>,  <45.700336, 33.155869, 32.901657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.515038, 33.196499, 32.549500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774991, -0.528298, 0.346829,
		-0.429878, 0.842961, 0.323452,
		-0.463243, 0.101578, -0.880391,
		45.376064, 33.226971, 32.285381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.971264, 33.403290, 32.906467>,  <45.700336, 33.155869, 32.901657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.971264, 33.403290, 32.906467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.013481, 33.189137, 32.571270>,  <45.038811, 33.060646, 32.370152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.013481, 33.189137, 32.571270>,  <44.971264, 33.403290, 32.906467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.013481, 33.189137, 32.571270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804897, -0.540852, 0.244174,
		-0.583954, 0.648725, -0.488010,
		0.105539, -0.535384, -0.837989,
		45.045143, 33.028522, 32.319874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.257328, 33.352219, 32.648445>,  <44.971264, 33.403290, 32.906467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.257328, 33.352219, 32.648445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469345, 33.060207, 32.475880>,  <44.596558, 32.885002, 32.372341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469345, 33.060207, 32.475880>,  <44.257328, 33.352219, 32.648445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.469345, 33.060207, 32.475880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742697, -0.645186, 0.179266,
		-0.409209, 0.225388, -0.884165,
		0.530047, -0.730024, -0.431411,
		44.628361, 32.841202, 32.346455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.763844, 33.108864, 32.218758>,  <44.257328, 33.352219, 32.648445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.763844, 33.108864, 32.218758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.045746, 32.838463, 32.304867>,  <44.214890, 32.676224, 32.356533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.045746, 32.838463, 32.304867>,  <43.763844, 33.108864, 32.218758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.045746, 32.838463, 32.304867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709340, -0.676709, 0.197235,
		0.012345, -0.291703, -0.956429,
		0.704758, -0.675999, 0.215271,
		44.257172, 32.635662, 32.369450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.560707, 32.441360, 31.921953>,  <43.763844, 33.108864, 32.218758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.560707, 32.441360, 31.921953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.822712, 32.295670, 32.186771>,  <43.979916, 32.208256, 32.345661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.822712, 32.295670, 32.186771>,  <43.560707, 32.441360, 31.921953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.822712, 32.295670, 32.186771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676404, -0.673167, 0.298871,
		0.336809, -0.643572, -0.687295,
		0.655009, -0.364227, 0.662044,
		44.019215, 32.186401, 32.385384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.575123, 31.738802, 31.864868>,  <43.560707, 32.441360, 31.921953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.575123, 31.738802, 31.864868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723026, 31.798588, 32.231678>,  <43.811768, 31.834459, 32.451763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723026, 31.798588, 32.231678>,  <43.575123, 31.738802, 31.864868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723026, 31.798588, 32.231678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754279, -0.528022, 0.390200,
		0.542532, -0.835974, -0.082502,
		0.369760, 0.149467, 0.917027,
		43.833954, 31.843428, 32.506786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515869, 31.130453, 32.222462>,  <43.575123, 31.738802, 31.864868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.515869, 31.130453, 32.222462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.534855, 31.393707, 32.523022>,  <43.546246, 31.551661, 32.703358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.534855, 31.393707, 32.523022>,  <43.515869, 31.130453, 32.222462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.534855, 31.393707, 32.523022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826272, -0.396822, 0.399759,
		0.561268, -0.639835, 0.524966,
		0.047462, 0.658137, 0.751401,
		43.549095, 31.591148, 32.748444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.168312, 30.707668, 32.771709>,  <43.515869, 31.130453, 32.222462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.168312, 30.707668, 32.771709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213669, 31.084383, 32.898312>,  <43.240883, 31.310411, 32.974274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213669, 31.084383, 32.898312>,  <43.168312, 30.707668, 32.771709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213669, 31.084383, 32.898312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869511, -0.060064, 0.490248,
		0.480721, -0.330798, 0.812084,
		0.113396, 0.941788, 0.316506,
		43.247688, 31.366919, 32.993263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896770, 30.575130, 33.366535>,  <43.168312, 30.707668, 32.771709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896770, 30.575130, 33.366535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.909847, 30.973467, 33.332516>,  <42.917694, 31.212469, 33.312103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.909847, 30.973467, 33.332516>,  <42.896770, 30.575130, 33.366535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.909847, 30.973467, 33.332516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889121, 0.067844, 0.452616,
		0.456504, 0.060824, 0.887640,
		0.032692, 0.995840, -0.085051,
		42.919655, 31.272219, 33.306999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678764, 30.808191, 33.973064>,  <42.896770, 30.575130, 33.366535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678764, 30.808191, 33.973064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613766, 31.127522, 33.741108>,  <42.574768, 31.319118, 33.601933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.613766, 31.127522, 33.741108>,  <42.678764, 30.808191, 33.973064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613766, 31.127522, 33.741108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943214, 0.046892, 0.328860,
		0.289729, 0.600400, 0.745371,
		-0.162496, 0.798324, -0.579891,
		42.565018, 31.367020, 33.567139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475418, 31.446224, 34.378723>,  <42.678764, 30.808191, 33.973064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475418, 31.446224, 34.378723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329971, 31.464424, 34.006550>,  <42.242702, 31.475344, 33.783245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329971, 31.464424, 34.006550>,  <42.475418, 31.446224, 34.378723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329971, 31.464424, 34.006550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930308, -0.069269, 0.360179,
		-0.048063, 0.996560, 0.067514,
		-0.363617, 0.045498, -0.930437,
		42.220886, 31.478073, 33.727417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.870865, 31.937851, 34.472221>,  <42.475418, 31.446224, 34.378723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.870865, 31.937851, 34.472221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819954, 31.736610, 34.130299>,  <41.789406, 31.615866, 33.925144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819954, 31.736610, 34.130299>,  <41.870865, 31.937851, 34.472221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819954, 31.736610, 34.130299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957044, -0.164060, 0.239061,
		-0.260511, 0.848513, -0.460608,
		-0.127279, -0.503100, -0.854804,
		41.781769, 31.585680, 33.873856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.296421, 32.128101, 34.010227>,  <41.870865, 31.937851, 34.472221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.296421, 32.128101, 34.010227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365326, 31.741423, 33.934521>,  <41.406670, 31.509415, 33.889099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365326, 31.741423, 33.934521>,  <41.296421, 32.128101, 34.010227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365326, 31.741423, 33.934521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957865, -0.209212, 0.196787,
		-0.229830, 0.147391, -0.962005,
		0.172259, -0.966699, -0.189263,
		41.417004, 31.451412, 33.877743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809555, 32.418991, 33.637722>,  <41.296421, 32.128101, 34.010227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809555, 32.418991, 33.637722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999622, 32.071373, 33.582619>,  <41.113663, 31.862803, 33.549557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.999622, 32.071373, 33.582619>,  <40.809555, 32.418991, 33.637722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.999622, 32.071373, 33.582619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749658, -0.481811, 0.453731,
		-0.460681, -0.112335, -0.880428,
		0.475170, -0.869045, -0.137749,
		41.142174, 31.810659, 33.541290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335876, 32.020630, 33.282032>,  <40.809555, 32.418991, 33.637722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335876, 32.020630, 33.282032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580215, 31.763248, 33.466568>,  <40.726818, 31.608820, 33.577290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580215, 31.763248, 33.466568>,  <40.335876, 32.020630, 33.282032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580215, 31.763248, 33.466568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782515, -0.579365, 0.228050,
		0.120545, -0.500310, -0.857414,
		0.610851, -0.643449, 0.461339,
		40.763470, 31.570213, 33.604969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126770, 31.350468, 33.021549>,  <40.335876, 32.020630, 33.282032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126770, 31.350468, 33.021549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314728, 31.282011, 33.367939>,  <40.427502, 31.240936, 33.575771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314728, 31.282011, 33.367939>,  <40.126770, 31.350468, 33.021549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314728, 31.282011, 33.367939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742783, -0.606715, 0.283145,
		0.476940, -0.776278, -0.412215,
		0.469896, -0.171143, 0.865972,
		40.455696, 31.230667, 33.627731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837551, 30.613718, 33.197918>,  <40.126770, 31.350468, 33.021549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837551, 30.613718, 33.197918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052490, 30.714298, 33.519920>,  <40.181454, 30.774647, 33.713120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052490, 30.714298, 33.519920>,  <39.837551, 30.613718, 33.197918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052490, 30.714298, 33.519920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550682, -0.618333, 0.560726,
		0.638755, -0.744605, -0.193790,
		0.537346, 0.251450, 0.805005,
		40.213696, 30.789734, 33.761421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070065, 29.931572, 33.550861>,  <39.837551, 30.613718, 33.197918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070065, 29.931572, 33.550861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082283, 30.246908, 33.796654>,  <40.089615, 30.436110, 33.944130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082283, 30.246908, 33.796654>,  <40.070065, 29.931572, 33.550861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082283, 30.246908, 33.796654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452604, -0.537218, 0.711721,
		0.891188, -0.299856, 0.340397,
		0.030546, 0.788342, 0.614479,
		40.091446, 30.483410, 33.980999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395504, 29.697504, 34.106312>,  <40.070065, 29.931572, 33.550861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395504, 29.697504, 34.106312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201298, 30.019154, 34.243519>,  <40.084774, 30.212143, 34.325844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201298, 30.019154, 34.243519>,  <40.395504, 29.697504, 34.106312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201298, 30.019154, 34.243519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474296, -0.571887, 0.669319,
		0.734381, 0.162275, 0.659053,
		-0.485518, 0.804122, 0.343017,
		40.055641, 30.260389, 34.346424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366013, 29.705555, 34.859135>,  <40.395504, 29.697504, 34.106312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366013, 29.705555, 34.859135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065590, 29.956539, 34.776955>,  <39.885338, 30.107130, 34.727646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065590, 29.956539, 34.776955>,  <40.366013, 29.705555, 34.859135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065590, 29.956539, 34.776955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622814, -0.570038, 0.535873,
		0.219127, 0.530425, 0.818921,
		-0.751057, 0.627460, -0.205446,
		39.840271, 30.144777, 34.715321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076065, 29.939829, 35.516651>,  <40.366013, 29.705555, 34.859135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076065, 29.939829, 35.516651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809296, 29.985209, 35.222076>,  <39.649235, 30.012436, 35.045330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809296, 29.985209, 35.222076>,  <40.076065, 29.939829, 35.516651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809296, 29.985209, 35.222076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684022, -0.485188, 0.544708,
		-0.295515, 0.867019, 0.401183,
		-0.666922, 0.113448, -0.736440,
		39.609219, 30.019243, 35.001144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264023, 30.638414, 35.849716>,  <40.076065, 29.939829, 35.516651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264023, 30.638414, 35.849716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373428, 30.499750, 36.208607>,  <40.439072, 30.416552, 36.423943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.373428, 30.499750, 36.208607>,  <40.264023, 30.638414, 35.849716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373428, 30.499750, 36.208607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943318, 0.278986, -0.179775,
		-0.187993, 0.895541, 0.403317,
		0.273515, -0.346659, 0.897227,
		40.455482, 30.395752, 36.477776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454002, 31.179676, 36.260723>,  <40.264023, 30.638414, 35.849716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454002, 31.179676, 36.260723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649868, 30.867386, 36.416000>,  <40.767387, 30.680012, 36.509167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.649868, 30.867386, 36.416000>,  <40.454002, 31.179676, 36.260723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649868, 30.867386, 36.416000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848719, 0.528798, -0.007069,
		-0.199758, 0.332931, 0.921549,
		0.489667, -0.780724, 0.388197,
		40.796768, 30.633169, 36.532459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849350, 31.359735, 36.842995>,  <40.454002, 31.179676, 36.260723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849350, 31.359735, 36.842995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108685, 31.077009, 36.729809>,  <41.264286, 30.907373, 36.661896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.108685, 31.077009, 36.729809>,  <40.849350, 31.359735, 36.842995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108685, 31.077009, 36.729809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746083, 0.515772, 0.421117,
		-0.151707, -0.484142, 0.861738,
		0.648340, -0.706814, -0.282964,
		41.303188, 30.864965, 36.644920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157719, 31.144955, 37.452442>,  <40.849350, 31.359735, 36.842995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.157719, 31.144955, 37.452442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379116, 31.138641, 37.119358>,  <41.511955, 31.134853, 36.919510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379116, 31.138641, 37.119358>,  <41.157719, 31.144955, 37.452442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379116, 31.138641, 37.119358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742491, 0.462290, 0.484763,
		0.377300, -0.886588, 0.267592,
		0.553490, -0.015784, -0.832706,
		41.545162, 31.133905, 36.869545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842484, 30.920158, 37.569706>,  <41.157719, 31.144955, 37.452442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842484, 30.920158, 37.569706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.866241, 31.150324, 37.243423>,  <41.880497, 31.288424, 37.047653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.866241, 31.150324, 37.243423>,  <41.842484, 30.920158, 37.569706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.866241, 31.150324, 37.243423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859519, 0.386070, 0.334927,
		0.507640, -0.721005, -0.471649,
		0.059395, 0.575414, -0.815703,
		41.884060, 31.322948, 36.998714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.526890, 30.745996, 37.263195>,  <41.842484, 30.920158, 37.569706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.526890, 30.745996, 37.263195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408848, 31.122030, 37.194897>,  <42.338020, 31.347651, 37.153919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.408848, 31.122030, 37.194897>,  <42.526890, 30.745996, 37.263195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408848, 31.122030, 37.194897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819167, 0.340922, 0.461235,
		0.491810, -0.003753, -0.870695,
		-0.295108, 0.940084, -0.170743,
		42.320316, 31.404055, 37.143673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003174, 31.171509, 36.868279>,  <42.526890, 30.745996, 37.263195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003174, 31.171509, 36.868279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809830, 31.424894, 37.109966>,  <42.693821, 31.576925, 37.254978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809830, 31.424894, 37.109966>,  <43.003174, 31.171509, 36.868279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809830, 31.424894, 37.109966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875236, 0.363832, 0.318727,
		-0.017933, 0.682898, -0.730294,
		-0.483363, 0.633464, 0.604222,
		42.664822, 31.614933, 37.291233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.393066, 31.724199, 36.781376>,  <43.003174, 31.171509, 36.868279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.393066, 31.724199, 36.781376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197609, 31.815748, 37.118149>,  <43.080334, 31.870678, 37.320213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197609, 31.815748, 37.118149>,  <43.393066, 31.724199, 36.781376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197609, 31.815748, 37.118149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792719, 0.519550, 0.318848,
		-0.364448, 0.823216, -0.435308,
		-0.488645, 0.228873, 0.841928,
		43.051014, 31.884411, 37.370728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235661, 32.409000, 36.657112>,  <43.393066, 31.724199, 36.781376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.235661, 32.409000, 36.657112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315239, 32.261482, 37.020302>,  <43.362988, 32.172970, 37.238216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315239, 32.261482, 37.020302>,  <43.235661, 32.409000, 36.657112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315239, 32.261482, 37.020302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890758, 0.454354, -0.010628,
		-0.408621, 0.810896, 0.418899,
		0.198946, -0.368795, 0.907971,
		43.374924, 32.150845, 37.292694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482281, 33.000313, 37.166431>,  <43.235661, 32.409000, 36.657112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.482281, 33.000313, 37.166431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634949, 32.637138, 37.235683>,  <43.726551, 32.419231, 37.277237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.634949, 32.637138, 37.235683>,  <43.482281, 33.000313, 37.166431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.634949, 32.637138, 37.235683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923970, 0.379778, -0.045267,
		-0.024652, 0.177246, 0.983858,
		0.381671, -0.907939, 0.173132,
		43.749451, 32.364758, 37.287624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.103661, 33.052387, 37.604088>,  <43.482281, 33.000313, 37.166431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.103661, 33.052387, 37.604088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174198, 32.695316, 37.438179>,  <44.216522, 32.481075, 37.338634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174198, 32.695316, 37.438179>,  <44.103661, 33.052387, 37.604088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174198, 32.695316, 37.438179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883968, 0.328987, -0.332217,
		0.433015, -0.308056, 0.847112,
		0.176347, -0.892675, -0.414768,
		44.227104, 32.427513, 37.313747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.818398, 32.846977, 37.714703>,  <44.103661, 33.052387, 37.604088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.818398, 32.846977, 37.714703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675488, 32.692268, 37.374641>,  <44.589741, 32.599442, 37.170605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675488, 32.692268, 37.374641>,  <44.818398, 32.846977, 37.714703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675488, 32.692268, 37.374641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801958, 0.339548, -0.491499,
		0.478766, -0.857388, 0.188862,
		-0.357278, -0.386772, -0.850153,
		44.568306, 32.576237, 37.119595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.357067, 32.423458, 37.440166>,  <44.818398, 32.846977, 37.714703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.357067, 32.423458, 37.440166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.122227, 32.560040, 37.146576>,  <44.981323, 32.641991, 36.970421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.122227, 32.560040, 37.146576>,  <45.357067, 32.423458, 37.440166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.122227, 32.560040, 37.146576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797922, 0.396998, -0.453555,
		0.136518, -0.851938, -0.505534,
		-0.587097, 0.341458, -0.733978,
		44.946098, 32.662476, 36.926384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.579754, 32.362453, 36.703484>,  <45.357067, 32.423458, 37.440166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.579754, 32.362453, 36.703484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372776, 32.698044, 36.770855>,  <45.248589, 32.899399, 36.811279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372776, 32.698044, 36.770855>,  <45.579754, 32.362453, 36.703484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372776, 32.698044, 36.770855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730625, 0.535622, -0.423434,
		-0.445467, -0.096044, -0.890132,
		-0.517443, 0.838978, 0.168429,
		45.217545, 32.949738, 36.821384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.253605, 32.692284, 36.064827>,  <45.579754, 32.362453, 36.703484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.253605, 32.692284, 36.064827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.346367, 32.986416, 36.319546>,  <45.402023, 33.162895, 36.472378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.346367, 32.986416, 36.319546>,  <45.253605, 32.692284, 36.064827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.346367, 32.986416, 36.319546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637212, 0.379795, -0.670609,
		-0.734971, 0.561293, -0.380484,
		0.231902, 0.735327, 0.636801,
		45.415939, 33.207012, 36.510586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119312, 33.409409, 35.826370>,  <45.253605, 32.692284, 36.064827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119312, 33.409409, 35.826370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420353, 33.408276, 36.089756>,  <45.600979, 33.407597, 36.247787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.420353, 33.408276, 36.089756>,  <45.119312, 33.409409, 35.826370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.420353, 33.408276, 36.089756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561990, 0.523888, -0.640085,
		-0.343152, 0.851782, 0.395871,
		0.752605, -0.002829, 0.658466,
		45.646133, 33.407429, 36.287296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.309296, 34.062271, 36.109592>,  <45.119312, 33.409409, 35.826370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.309296, 34.062271, 36.109592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.633415, 33.828388, 36.125267>,  <45.827885, 33.688057, 36.134674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.633415, 33.828388, 36.125267>,  <45.309296, 34.062271, 36.109592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.633415, 33.828388, 36.125267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548760, 0.733609, -0.400849,
		0.205631, 0.346312, 0.915305,
		0.810295, -0.584710, 0.039189,
		45.876503, 33.652977, 36.137024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.009331, 34.418369, 36.294598>,  <45.309296, 34.062271, 36.109592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.009331, 34.418369, 36.294598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.081814, 34.109219, 36.051346>,  <46.125305, 33.923729, 35.905396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.081814, 34.109219, 36.051346>,  <46.009331, 34.418369, 36.294598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.081814, 34.109219, 36.051346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649804, 0.558253, -0.515857,
		0.738186, -0.301688, 0.603379,
		0.181210, -0.772876, -0.608133,
		46.136177, 33.877357, 35.868904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.704071, 34.309032, 36.220543>,  <46.009331, 34.418369, 36.294598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.704071, 34.309032, 36.220543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.505821, 34.213329, 35.886570>,  <46.386871, 34.155907, 35.686188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.505821, 34.213329, 35.886570>,  <46.704071, 34.309032, 36.220543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.505821, 34.213329, 35.886570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706899, 0.447408, -0.547833,
		0.504630, -0.861731, -0.052613,
		-0.495624, -0.239261, -0.834932,
		46.357132, 34.141552, 35.636089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.324409, 34.375698, 35.685646>,  <46.704071, 34.309032, 36.220543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.324409, 34.375698, 35.685646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.177700, 34.407276, 35.314865>,  <47.089676, 34.426224, 35.092396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.177700, 34.407276, 35.314865>,  <47.324409, 34.375698, 35.685646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.177700, 34.407276, 35.314865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930283, -0.038927, 0.364771,
		-0.007288, 0.996119, 0.087715,
		-0.366770, 0.078941, -0.926956,
		47.067669, 34.430958, 35.036777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.897415, 34.790829, 35.372967>,  <47.324409, 34.375698, 35.685646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.897415, 34.790829, 35.372967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.741383, 35.017212, 35.082439>,  <47.647762, 35.153042, 34.908123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.741383, 35.017212, 35.082439>,  <47.897415, 34.790829, 35.372967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.741383, 35.017212, 35.082439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919970, -0.206424, 0.333234,
		0.038668, 0.798174, 0.601185,
		-0.390077, 0.565958, -0.726314,
		47.624359, 35.187000, 34.864544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.911747, 31.706118, 24.821184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.585346, 31.929878, 24.879440>,  <35.389507, 32.064137, 24.914394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.585346, 31.929878, 24.879440>,  <35.911747, 31.706118, 24.821184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585346, 31.929878, 24.879440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032788, -0.296335, 0.954521,
		0.577119, 0.774115, 0.260151,
		-0.816001, 0.559402, 0.145639,
		35.340546, 32.097698, 24.923132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957066, 32.031895, 25.509649>,  <35.911747, 31.706118, 24.821184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957066, 32.031895, 25.509649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.566174, 32.046211, 25.425999>,  <35.331638, 32.054802, 25.375809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.566174, 32.046211, 25.425999>,  <35.957066, 32.031895, 25.509649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566174, 32.046211, 25.425999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207551, -0.365743, 0.907279,
		-0.044017, 0.930028, 0.364844,
		-0.977233, 0.035788, -0.209127,
		35.273003, 32.056946, 25.363260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680275, 32.203781, 26.125349>,  <35.957066, 32.031895, 25.509649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680275, 32.203781, 26.125349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.351871, 32.056034, 25.951220>,  <35.154827, 31.967386, 25.846743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.351871, 32.056034, 25.951220>,  <35.680275, 32.203781, 26.125349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351871, 32.056034, 25.951220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260904, -0.435479, 0.861561,
		-0.507806, 0.820930, 0.261165,
		-0.821013, -0.369367, -0.435323,
		35.105568, 31.945225, 25.820623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010696, 32.383644, 26.516260>,  <35.680275, 32.203781, 26.125349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010696, 32.383644, 26.516260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.937798, 32.046551, 26.313644>,  <34.894058, 31.844294, 26.192076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.937798, 32.046551, 26.313644>,  <35.010696, 32.383644, 26.516260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937798, 32.046551, 26.313644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399869, -0.407116, 0.821195,
		-0.898270, 0.352213, -0.262787,
		-0.182251, -0.842736, -0.506539,
		34.883121, 31.793730, 26.161682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380352, 32.286457, 26.864992>,  <35.010696, 32.383644, 26.516260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380352, 32.286457, 26.864992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.482674, 31.959929, 26.657845>,  <34.544067, 31.764011, 26.533556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.482674, 31.959929, 26.657845>,  <34.380352, 32.286457, 26.864992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482674, 31.959929, 26.657845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159209, -0.563952, 0.810315,
		-0.953529, -0.124830, -0.274226,
		0.255802, -0.816318, -0.517871,
		34.559414, 31.715033, 26.502483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943634, 31.909063, 27.102919>,  <34.380352, 32.286457, 26.864992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943634, 31.909063, 27.102919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.227673, 31.667347, 26.958368>,  <34.398098, 31.522318, 26.871637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.227673, 31.667347, 26.958368>,  <33.943634, 31.909063, 27.102919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227673, 31.667347, 26.958368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191888, -0.659906, 0.726432,
		-0.677456, -0.446490, -0.584552,
		0.710093, -0.604293, -0.361381,
		34.440704, 31.486061, 26.849955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620625, 31.256784, 26.880646>,  <33.943634, 31.909063, 27.102919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620625, 31.256784, 26.880646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.003998, 31.185951, 26.970135>,  <34.234020, 31.143452, 27.023829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.003998, 31.185951, 26.970135>,  <33.620625, 31.256784, 26.880646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003998, 31.185951, 26.970135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285323, -0.597638, 0.749280,
		0.001019, -0.781965, -0.623321,
		0.958431, -0.177084, 0.223721,
		34.291527, 31.132826, 27.037251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642544, 30.614500, 26.972172>,  <33.620625, 31.256784, 26.880646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642544, 30.614500, 26.972172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.988918, 30.694038, 27.155743>,  <34.196743, 30.741760, 27.265884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.988918, 30.694038, 27.155743>,  <33.642544, 30.614500, 26.972172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988918, 30.694038, 27.155743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284698, -0.558451, 0.779153,
		0.411219, -0.805353, -0.426972,
		0.865937, 0.198845, 0.458928,
		34.248699, 30.753693, 27.293421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989609, 29.925991, 27.045498>,  <33.642544, 30.614500, 26.972172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989609, 29.925991, 27.045498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.098351, 30.200647, 27.315199>,  <34.163597, 30.365442, 27.477020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.098351, 30.200647, 27.315199>,  <33.989609, 29.925991, 27.045498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098351, 30.200647, 27.315199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110153, -0.673834, 0.730626,
		0.956014, -0.272895, -0.107548,
		0.271853, 0.686642, 0.674254,
		34.179905, 30.406639, 27.517475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351280, 29.507635, 27.476013>,  <33.989609, 29.925991, 27.045498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351280, 29.507635, 27.476013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.273521, 29.840700, 27.683430>,  <34.226864, 30.040539, 27.807878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.273521, 29.840700, 27.683430>,  <34.351280, 29.507635, 27.476013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273521, 29.840700, 27.683430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023790, -0.532471, 0.846113,
		0.980634, 0.152147, 0.123321,
		-0.194399, 0.832661, 0.518540,
		34.215202, 30.090498, 27.838991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875027, 29.476135, 27.902750>,  <34.351280, 29.507635, 27.476013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875027, 29.476135, 27.902750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.559216, 29.675896, 28.045435>,  <34.369728, 29.795752, 28.131046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.559216, 29.675896, 28.045435>,  <34.875027, 29.476135, 27.902750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559216, 29.675896, 28.045435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068393, -0.506017, 0.859807,
		0.609889, 0.703240, 0.365360,
		-0.789530, 0.499399, 0.356711,
		34.322357, 29.825716, 28.152449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993397, 29.474394, 28.631981>,  <34.875027, 29.476135, 27.902750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993397, 29.474394, 28.631981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.618786, 29.614553, 28.636637>,  <34.394020, 29.698648, 28.639431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.618786, 29.614553, 28.636637>,  <34.993397, 29.474394, 28.631981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618786, 29.614553, 28.636637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100793, -0.300901, 0.948314,
		0.335790, 0.886950, 0.317120,
		-0.936529, 0.350398, 0.011641,
		34.337826, 29.719673, 28.640129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975887, 29.875828, 29.192636>,  <34.993397, 29.474394, 28.631981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975887, 29.875828, 29.192636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.596767, 29.779720, 29.108778>,  <34.369297, 29.722055, 29.058464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.596767, 29.779720, 29.108778>,  <34.975887, 29.875828, 29.192636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596767, 29.779720, 29.108778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097445, -0.407763, 0.907873,
		-0.303619, 0.880909, 0.363063,
		-0.947797, -0.240269, -0.209645,
		34.312428, 29.707640, 29.045885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573009, 30.109123, 29.721653>,  <34.975887, 29.875828, 29.192636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573009, 30.109123, 29.721653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.362629, 29.808235, 29.562889>,  <34.236401, 29.627703, 29.467630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.362629, 29.808235, 29.562889>,  <34.573009, 30.109123, 29.721653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362629, 29.808235, 29.562889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219098, -0.331091, 0.917810,
		-0.821807, 0.569690, 0.009330,
		-0.525956, -0.752218, -0.396911,
		34.204842, 29.582569, 29.443815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957283, 30.116968, 30.123503>,  <34.573009, 30.109123, 29.721653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957283, 30.116968, 30.123503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.028984, 29.756615, 29.965376>,  <34.072002, 29.540401, 29.870501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.028984, 29.756615, 29.965376>,  <33.957283, 30.116968, 30.123503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028984, 29.756615, 29.965376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017431, -0.404668, 0.914297,
		-0.983649, -0.156998, -0.088240,
		0.179251, -0.900886, -0.395315,
		34.082760, 29.486349, 29.846781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834297, 29.697912, 30.637178>,  <33.957283, 30.116968, 30.123503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834297, 29.697912, 30.637178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.949013, 29.426500, 30.366667>,  <34.017841, 29.263653, 30.204361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.949013, 29.426500, 30.366667>,  <33.834297, 29.697912, 30.637178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949013, 29.426500, 30.366667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090969, -0.683452, 0.724306,
		-0.953666, -0.269239, -0.134278,
		0.286784, -0.678531, -0.676277,
		34.035049, 29.222940, 30.163784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473137, 29.029926, 30.803673>,  <33.834297, 29.697912, 30.637178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473137, 29.029926, 30.803673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.815971, 28.932076, 30.622318>,  <34.021671, 28.873365, 30.513506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.815971, 28.932076, 30.622318>,  <33.473137, 29.029926, 30.803673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815971, 28.932076, 30.622318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143554, -0.731806, 0.666223,
		-0.494765, -0.636097, -0.592106,
		0.857088, -0.244625, -0.453386,
		34.073097, 28.858688, 30.486303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507359, 28.389055, 31.055590>,  <33.473137, 29.029926, 30.803673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507359, 28.389055, 31.055590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.868755, 28.454100, 30.896967>,  <34.085594, 28.493126, 30.801794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.868755, 28.454100, 30.896967>,  <33.507359, 28.389055, 31.055590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868755, 28.454100, 30.896967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421343, -0.506551, 0.752247,
		-0.078551, -0.846736, -0.526181,
		0.903493, 0.162613, -0.396557,
		34.139805, 28.502884, 30.778000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999981, 27.684994, 31.154533>,  <33.507359, 28.389055, 31.055590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999981, 27.684994, 31.154533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.218533, 28.013546, 31.089046>,  <34.349663, 28.210678, 31.049755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.218533, 28.013546, 31.089046>,  <33.999981, 27.684994, 31.154533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218533, 28.013546, 31.089046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610539, -0.256798, 0.749198,
		0.573335, -0.509301, -0.641794,
		0.546378, 0.821382, -0.163717,
		34.382446, 28.259960, 31.039932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724045, 27.476595, 31.206350>,  <33.999981, 27.684994, 31.154533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724045, 27.476595, 31.206350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.678215, 27.865782, 31.286554>,  <34.650719, 28.099295, 31.334677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.678215, 27.865782, 31.286554>,  <34.724045, 27.476595, 31.206350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678215, 27.865782, 31.286554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659805, -0.076357, 0.747547,
		0.742651, 0.217948, -0.633221,
		-0.114576, 0.972969, 0.200510,
		34.643841, 28.157673, 31.346706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412689, 27.739202, 31.430523>,  <34.724045, 27.476595, 31.206350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412689, 27.739202, 31.430523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.164822, 27.996904, 31.609833>,  <35.016102, 28.151525, 31.717419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.164822, 27.996904, 31.609833>,  <35.412689, 27.739202, 31.430523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164822, 27.996904, 31.609833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471421, -0.151126, 0.868863,
		0.627514, 0.749733, -0.210066,
		-0.619668, 0.644253, 0.448273,
		34.978920, 28.190180, 31.744314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.836681, 28.174679, 31.816788>,  <35.412689, 27.739202, 31.430523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.836681, 28.174679, 31.816788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.478455, 28.207687, 31.991671>,  <35.263519, 28.227493, 32.096600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.478455, 28.207687, 31.991671>,  <35.836681, 28.174679, 31.816788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478455, 28.207687, 31.991671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441947, 0.051421, 0.895566,
		0.051421, 0.995262, -0.082521,
		-0.895566, 0.082521, 0.437209,
		35.209785, 28.232443, 32.122833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037270, 28.328564, 32.505531>,  <35.836681, 28.174679, 31.816788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037270, 28.328564, 32.505531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.323105, 28.539864, 32.688972>,  <36.494606, 28.666643, 32.799038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.323105, 28.539864, 32.688972>,  <36.037270, 28.328564, 32.505531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323105, 28.539864, 32.688972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306424, 0.352974, -0.884033,
		-0.628865, 0.772246, 0.090362,
		0.714586, 0.528248, 0.458607,
		36.537479, 28.698338, 32.826553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959743, 29.107210, 32.378223>,  <36.037270, 28.328564, 32.505531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959743, 29.107210, 32.378223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.340607, 29.018322, 32.462147>,  <36.569122, 28.964989, 32.512501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.340607, 29.018322, 32.462147>,  <35.959743, 29.107210, 32.378223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340607, 29.018322, 32.462147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280789, 0.365051, -0.887635,
		0.120660, 0.904078, 0.409982,
		0.952155, -0.222220, 0.209808,
		36.626255, 28.951656, 32.525089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375206, 29.697054, 32.187279>,  <35.959743, 29.107210, 32.378223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375206, 29.697054, 32.187279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.620003, 29.381557, 32.164135>,  <36.766880, 29.192259, 32.150249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.620003, 29.381557, 32.164135>,  <36.375206, 29.697054, 32.187279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620003, 29.381557, 32.164135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360033, 0.343001, -0.867598,
		0.704159, 0.510132, 0.493888,
		0.611994, -0.788743, -0.057863,
		36.803600, 29.144934, 32.146774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876743, 29.978966, 31.897799>,  <36.375206, 29.697054, 32.187279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876743, 29.978966, 31.897799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.931095, 29.584677, 31.858028>,  <36.963707, 29.348103, 31.834166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.931095, 29.584677, 31.858028>,  <36.876743, 29.978966, 31.897799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931095, 29.584677, 31.858028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373785, 0.143947, -0.916277,
		0.917508, 0.087341, 0.388009,
		0.135882, -0.985723, -0.099426,
		36.971859, 29.288960, 31.828201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518822, 29.904015, 31.576918>,  <36.876743, 29.978966, 31.897799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518822, 29.904015, 31.576918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.356148, 29.554182, 31.471310>,  <37.258541, 29.344282, 31.407944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.356148, 29.554182, 31.471310>,  <37.518822, 29.904015, 31.576918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356148, 29.554182, 31.471310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415457, 0.080332, -0.906059,
		0.813633, -0.478174, 0.330682,
		-0.406689, -0.874584, -0.264021,
		37.234142, 29.291807, 31.392103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045357, 29.423241, 31.204861>,  <37.518822, 29.904015, 31.576918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045357, 29.423241, 31.204861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.678288, 29.312027, 31.091322>,  <37.458046, 29.245298, 31.023199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.678288, 29.312027, 31.091322>,  <38.045357, 29.423241, 31.204861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678288, 29.312027, 31.091322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292447, 0.010961, -0.956219,
		0.268972, -0.960509, 0.071251,
		-0.917676, -0.278033, -0.283847,
		37.402985, 29.228617, 31.006168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182491, 29.018049, 30.615891>,  <38.045357, 29.423241, 31.204861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182491, 29.018049, 30.615891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.786236, 29.062021, 30.583511>,  <37.548481, 29.088406, 30.564083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.786236, 29.062021, 30.583511>,  <38.182491, 29.018049, 30.615891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786236, 29.062021, 30.583511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067800, -0.118494, -0.990637,
		-0.118494, -0.986851, 0.109931,
		0.990637, -0.109931, 0.080949,
		37.489044, 29.095001, 30.559227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870819, 28.493107, 30.158188>,  <38.182491, 29.018049, 30.615891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870819, 28.493107, 30.158188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.637516, 28.817259, 30.180437>,  <37.497536, 29.011749, 30.193787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.637516, 28.817259, 30.180437>,  <37.870819, 28.493107, 30.158188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637516, 28.817259, 30.180437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048650, 0.103204, -0.993470,
		-0.810829, -0.576743, -0.099620,
		-0.583258, 0.810380, 0.055622,
		37.462540, 29.060373, 30.197124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557125, 28.548187, 29.545973>,  <37.870819, 28.493107, 30.158188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557125, 28.548187, 29.545973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.445660, 28.904400, 29.689806>,  <37.378780, 29.118128, 29.776106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.445660, 28.904400, 29.689806>,  <37.557125, 28.548187, 29.545973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445660, 28.904400, 29.689806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035559, 0.383724, -0.922763,
		-0.959729, -0.244358, -0.138599,
		-0.278668, 0.890531, 0.359582,
		37.362061, 29.171558, 29.797680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026157, 28.766270, 29.152695>,  <37.557125, 28.548187, 29.545973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026157, 28.766270, 29.152695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.155346, 29.112036, 29.306824>,  <37.232861, 29.319496, 29.399302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.155346, 29.112036, 29.306824>,  <37.026157, 28.766270, 29.152695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155346, 29.112036, 29.306824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077237, 0.429858, -0.899587,
		-0.943252, 0.260780, 0.205597,
		0.322971, 0.864416, 0.385323,
		37.252235, 29.371361, 29.422421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547192, 29.428007, 28.975901>,  <37.026157, 28.766270, 29.152695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547192, 29.428007, 28.975901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.894348, 29.601675, 29.072456>,  <37.102642, 29.705875, 29.130390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.894348, 29.601675, 29.072456>,  <36.547192, 29.428007, 28.975901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894348, 29.601675, 29.072456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027020, 0.526461, -0.849770,
		-0.496027, 0.730982, 0.468640,
		0.867887, 0.434171, 0.241388,
		37.154713, 29.731926, 29.144873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466152, 30.134806, 28.896587>,  <36.547192, 29.428007, 28.975901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466152, 30.134806, 28.896587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.858871, 30.063717, 28.869801>,  <37.094505, 30.021065, 28.853729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.858871, 30.063717, 28.869801>,  <36.466152, 30.134806, 28.896587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858871, 30.063717, 28.869801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047849, 0.572697, -0.818369,
		0.183792, 0.800271, 0.570778,
		0.981800, -0.177720, -0.066965,
		37.153412, 30.010401, 28.849710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651840, 30.767519, 28.709507>,  <36.466152, 30.134806, 28.896587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651840, 30.767519, 28.709507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.964977, 30.531332, 28.631010>,  <37.152859, 30.389620, 28.583912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.964977, 30.531332, 28.631010>,  <36.651840, 30.767519, 28.709507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964977, 30.531332, 28.631010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154078, 0.489523, -0.858270,
		0.602843, 0.641652, 0.474197,
		0.782841, -0.590465, -0.196241,
		37.199829, 30.354193, 28.572138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114098, 31.267487, 28.382532>,  <36.651840, 30.767519, 28.709507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114098, 31.267487, 28.382532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.269180, 30.914808, 28.274979>,  <37.362228, 30.703201, 28.210447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.269180, 30.914808, 28.274979>,  <37.114098, 31.267487, 28.382532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269180, 30.914808, 28.274979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247263, 0.380487, -0.891118,
		0.888000, 0.279009, 0.365528,
		0.387708, -0.881694, -0.268884,
		37.385494, 30.650301, 28.194313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910744, 31.315111, 28.177189>,  <37.114098, 31.267487, 28.382532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910744, 31.315111, 28.177189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729729, 31.009228, 27.993698>,  <37.621120, 30.825697, 27.883604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729729, 31.009228, 27.993698>,  <37.910744, 31.315111, 28.177189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729729, 31.009228, 27.993698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242890, 0.389267, -0.888524,
		0.858032, -0.513507, 0.009584,
		-0.452533, -0.764710, -0.458729,
		37.593967, 30.779814, 27.856079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402767, 31.253485, 27.683455>,  <37.910744, 31.315111, 28.177189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402767, 31.253485, 27.683455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.099472, 31.025305, 27.557182>,  <37.917496, 30.888397, 27.481419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.099472, 31.025305, 27.557182>,  <38.402767, 31.253485, 27.683455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099472, 31.025305, 27.557182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270705, 0.165017, -0.948414,
		0.593117, -0.804583, 0.029301,
		-0.758242, -0.570452, -0.315679,
		37.871998, 30.854170, 27.462479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705097, 30.802162, 27.119259>,  <38.402767, 31.253485, 27.683455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705097, 30.802162, 27.119259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.313065, 30.841515, 27.050247>,  <38.077847, 30.865126, 27.008841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.313065, 30.841515, 27.050247>,  <38.705097, 30.802162, 27.119259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313065, 30.841515, 27.050247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188877, 0.193129, -0.962822,
		-0.061402, -0.976229, -0.207864,
		-0.980079, 0.098380, -0.172529,
		38.019039, 30.871029, 26.998489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580906, 30.547663, 26.465822>,  <38.705097, 30.802162, 27.119259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580906, 30.547663, 26.465822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.251911, 30.770750, 26.510494>,  <38.054516, 30.904602, 26.537298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.251911, 30.770750, 26.510494>,  <38.580906, 30.547663, 26.465822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251911, 30.770750, 26.510494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039430, 0.251785, -0.966979,
		-0.567421, -0.790921, -0.229080,
		-0.822483, 0.557717, 0.111682,
		38.005165, 30.938065, 26.543999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.885956, 30.472540, 25.689053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.731403, 30.790869, 25.875547>,  <37.638672, 30.981865, 25.987444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.731403, 30.790869, 25.875547>,  <37.885956, 30.472540, 25.689053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731403, 30.790869, 25.875547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243308, 0.575535, -0.780744,
		-0.889667, -0.188229, -0.416007,
		-0.386385, 0.795820, 0.466237,
		37.615486, 31.029615, 26.015419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338699, 30.841238, 25.310188>,  <37.885956, 30.472540, 25.689053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338699, 30.841238, 25.310188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.457542, 31.157270, 25.524664>,  <37.528847, 31.346889, 25.653349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.457542, 31.157270, 25.524664>,  <37.338699, 30.841238, 25.310188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457542, 31.157270, 25.524664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000382, 0.561448, -0.827512,
		-0.954843, 0.246066, 0.166509,
		0.297109, 0.790081, 0.536188,
		37.546677, 31.394295, 25.685520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728001, 31.422047, 25.173901>,  <37.338699, 30.841238, 25.310188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728001, 31.422047, 25.173901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.093540, 31.542023, 25.283384>,  <37.312862, 31.614008, 25.349073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.093540, 31.542023, 25.283384>,  <36.728001, 31.422047, 25.173901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093540, 31.542023, 25.283384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048529, 0.588560, -0.806996,
		-0.403144, 0.750755, 0.523299,
		0.913849, 0.299940, 0.273708,
		37.367695, 31.632006, 25.365498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650795, 32.109978, 25.053534>,  <36.728001, 31.422047, 25.173901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650795, 32.109978, 25.053534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.047901, 32.074657, 25.086061>,  <37.286167, 32.053467, 25.105577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.047901, 32.074657, 25.086061>,  <36.650795, 32.109978, 25.053534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047901, 32.074657, 25.086061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118067, 0.840608, -0.528619,
		-0.021681, 0.534398, 0.844955,
		0.992769, -0.088300, 0.081320,
		37.345734, 32.048168, 25.110458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890160, 32.686707, 25.442106>,  <36.650795, 32.109978, 25.053534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890160, 32.686707, 25.442106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.184456, 32.531422, 25.220123>,  <37.361034, 32.438251, 25.086933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.184456, 32.531422, 25.220123>,  <36.890160, 32.686707, 25.442106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184456, 32.531422, 25.220123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028804, 0.836608, -0.547044,
		0.676650, 0.386498, 0.626709,
		0.735741, -0.388209, -0.554958,
		37.405178, 32.414959, 25.053637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238552, 33.295712, 25.214348>,  <36.890160, 32.686707, 25.442106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238552, 33.295712, 25.214348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.352039, 33.016422, 24.951445>,  <37.420132, 32.848846, 24.793703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.352039, 33.016422, 24.951445>,  <37.238552, 33.295712, 25.214348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352039, 33.016422, 24.951445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112870, 0.704972, -0.700196,
		0.952243, 0.124472, 0.278819,
		0.283715, -0.698227, -0.657256,
		37.437153, 32.806953, 24.754269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909027, 33.565205, 25.025129>,  <37.238552, 33.295712, 25.214348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909027, 33.565205, 25.025129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.803146, 33.305264, 24.740137>,  <37.739620, 33.149300, 24.569141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.803146, 33.305264, 24.740137>,  <37.909027, 33.565205, 25.025129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803146, 33.305264, 24.740137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375865, 0.610876, -0.696818,
		0.888066, -0.452243, 0.082559,
		-0.264698, -0.649852, -0.712480,
		37.723736, 33.110310, 24.526394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462788, 33.523926, 24.588017>,  <37.909027, 33.565205, 25.025129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462788, 33.523926, 24.588017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.173283, 33.364979, 24.362358>,  <37.999580, 33.269611, 24.226963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.173283, 33.364979, 24.362358>,  <38.462788, 33.523926, 24.588017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173283, 33.364979, 24.362358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428374, 0.382197, -0.818792,
		0.540978, -0.834279, -0.106398,
		-0.723766, -0.397371, -0.564144,
		37.956154, 33.245770, 24.193115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722160, 33.253040, 23.985428>,  <38.462788, 33.523926, 24.588017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722160, 33.253040, 23.985428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.345928, 33.315918, 23.865026>,  <38.120190, 33.353645, 23.792786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.345928, 33.315918, 23.865026>,  <38.722160, 33.253040, 23.985428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345928, 33.315918, 23.865026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338416, 0.360662, -0.869136,
		-0.028066, -0.919354, -0.392428,
		-0.940578, 0.157197, -0.301002,
		38.063755, 33.363075, 23.774725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778481, 33.207100, 23.309885>,  <38.722160, 33.253040, 23.985428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778481, 33.207100, 23.309885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.412197, 33.367786, 23.306068>,  <38.192425, 33.464199, 23.303778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.412197, 33.367786, 23.306068>,  <38.778481, 33.207100, 23.309885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412197, 33.367786, 23.306068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189605, 0.411017, -0.891692,
		-0.354289, -0.818343, -0.452541,
		-0.915712, 0.401721, -0.009543,
		38.137482, 33.488304, 23.303205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512550, 33.044819, 22.675808>,  <38.778481, 33.207100, 23.309885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512550, 33.044819, 22.675808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.306198, 33.358784, 22.813087>,  <38.182388, 33.547161, 22.895454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.306198, 33.358784, 22.813087>,  <38.512550, 33.044819, 22.675808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306198, 33.358784, 22.813087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007481, 0.404735, -0.914403,
		-0.856627, -0.469156, -0.214668,
		-0.515882, 0.784909, 0.343197,
		38.151432, 33.594257, 22.916046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920303, 33.125004, 22.248640>,  <38.512550, 33.044819, 22.675808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920303, 33.125004, 22.248640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.964520, 33.492428, 22.400446>,  <37.991047, 33.712883, 22.491529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.964520, 33.492428, 22.400446>,  <37.920303, 33.125004, 22.248640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964520, 33.492428, 22.400446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162375, 0.393416, -0.904908,
		-0.980518, 0.038404, 0.192639,
		0.110539, 0.918558, 0.379516,
		37.997681, 33.767994, 22.514301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456352, 33.587635, 21.861038>,  <37.920303, 33.125004, 22.248640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456352, 33.587635, 21.861038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.706638, 33.859955, 22.013348>,  <37.856812, 34.023346, 22.104734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.706638, 33.859955, 22.013348>,  <37.456352, 33.587635, 21.861038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706638, 33.859955, 22.013348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091507, 0.548836, -0.830907,
		-0.774662, 0.485071, 0.405715,
		0.625720, 0.680797, 0.380775,
		37.894356, 34.064194, 22.127581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160347, 34.356583, 21.638407>,  <37.456352, 33.587635, 21.861038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160347, 34.356583, 21.638407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.523205, 34.454819, 21.775091>,  <37.740921, 34.513760, 21.857101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.523205, 34.454819, 21.775091>,  <37.160347, 34.356583, 21.638407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523205, 34.454819, 21.775091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127511, 0.613437, -0.779382,
		-0.401026, 0.750588, 0.525164,
		0.907149, 0.245588, 0.341712,
		37.795349, 34.528496, 21.877605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186436, 35.159134, 21.694057>,  <37.160347, 34.356583, 21.638407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186436, 35.159134, 21.694057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.558136, 35.013798, 21.667322>,  <37.781158, 34.926598, 21.651281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.558136, 35.013798, 21.667322>,  <37.186436, 35.159134, 21.694057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558136, 35.013798, 21.667322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215866, 0.680831, -0.699908,
		0.299810, 0.635966, 0.711099,
		0.929255, -0.363342, -0.066837,
		37.836914, 34.904797, 21.647270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570175, 35.752766, 21.642445>,  <37.186436, 35.159134, 21.694057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570175, 35.752766, 21.642445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.821247, 35.465820, 21.521513>,  <37.971889, 35.293652, 21.448954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.821247, 35.465820, 21.521513>,  <37.570175, 35.752766, 21.642445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821247, 35.465820, 21.521513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429035, 0.642835, -0.634581,
		0.649575, 0.268604, 0.711270,
		0.627679, -0.717367, -0.302329,
		38.009552, 35.250610, 21.430815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288300, 35.988411, 21.696146>,  <37.570175, 35.752766, 21.642445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288300, 35.988411, 21.696146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.269333, 35.727364, 21.393663>,  <38.257954, 35.570736, 21.212173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.269333, 35.727364, 21.393663>,  <38.288300, 35.988411, 21.696146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269333, 35.727364, 21.393663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436415, 0.667444, -0.603375,
		0.898496, -0.358626, 0.253166,
		-0.047412, -0.652615, -0.756205,
		38.255108, 35.531578, 21.166801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803474, 36.186047, 21.212084>,  <38.288300, 35.988411, 21.696146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803474, 36.186047, 21.212084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.622101, 35.919971, 20.974792>,  <38.513275, 35.760326, 20.832418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.622101, 35.919971, 20.974792>,  <38.803474, 36.186047, 21.212084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622101, 35.919971, 20.974792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392658, 0.448427, -0.802953,
		0.800136, -0.597022, 0.057860,
		-0.453434, -0.665190, -0.593228,
		38.486069, 35.720413, 20.796824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279636, 35.898605, 20.776340>,  <38.803474, 36.186047, 21.212084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279636, 35.898605, 20.776340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.940834, 35.838070, 20.572508>,  <38.737553, 35.801746, 20.450209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.940834, 35.838070, 20.572508>,  <39.279636, 35.898605, 20.776340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.940834, 35.838070, 20.572508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412023, 0.418791, -0.809229,
		0.335873, -0.895383, -0.292366,
		-0.847010, -0.151337, -0.509580,
		38.686733, 35.792667, 20.419634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490913, 35.697777, 20.125196>,  <39.279636, 35.898605, 20.776340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490913, 35.697777, 20.125196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.110806, 35.818233, 20.093460>,  <38.882740, 35.890507, 20.074419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.110806, 35.818233, 20.093460>,  <39.490913, 35.697777, 20.125196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110806, 35.818233, 20.093460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202316, 0.403302, -0.892421,
		-0.236750, -0.864094, -0.444173,
		-0.950272, 0.301144, -0.079339,
		38.825726, 35.908577, 20.069658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352085, 35.736420, 19.394341>,  <39.490913, 35.697777, 20.125196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352085, 35.736420, 19.394341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.048237, 35.945328, 19.549370>,  <38.865929, 36.070675, 19.642387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.048237, 35.945328, 19.549370>,  <39.352085, 35.736420, 19.394341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048237, 35.945328, 19.549370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033457, 0.563759, -0.825262,
		-0.649510, -0.639850, -0.410766,
		-0.759617, 0.522273, 0.387574,
		38.820351, 36.102009, 19.665642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004208, 36.032085, 18.768730>,  <39.352085, 35.736420, 19.394341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004208, 36.032085, 18.768730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.886890, 36.235535, 19.092529>,  <38.816502, 36.357605, 19.286808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.886890, 36.235535, 19.092529>,  <39.004208, 36.032085, 18.768730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886890, 36.235535, 19.092529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052765, 0.836832, -0.544911,
		-0.954566, -0.202530, -0.218598,
		-0.293290, 0.508619, 0.809498,
		38.798904, 36.388119, 19.335379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377666, 36.359818, 18.704897>,  <39.004208, 36.032085, 18.768730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377666, 36.359818, 18.704897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.622452, 36.572445, 18.939140>,  <38.769321, 36.700020, 19.079687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.622452, 36.572445, 18.939140>,  <38.377666, 36.359818, 18.704897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622452, 36.572445, 18.939140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189222, 0.817351, -0.544181,
		-0.767916, 0.222209, 0.600773,
		0.611964, 0.531565, 0.585610,
		38.806042, 36.731915, 19.114822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028851, 36.994576, 18.657085>,  <38.377666, 36.359818, 18.704897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028851, 36.994576, 18.657085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.402042, 37.074638, 18.776745>,  <38.625957, 37.122677, 18.848541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.402042, 37.074638, 18.776745>,  <38.028851, 36.994576, 18.657085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402042, 37.074638, 18.776745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055537, 0.901219, -0.429791,
		-0.355624, 0.384372, 0.851933,
		0.932977, 0.200158, 0.299148,
		38.681934, 37.134686, 18.866489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457920, 37.191685, 19.119593>,  <38.028851, 36.994576, 18.657085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457920, 37.191685, 19.119593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.069672, 37.271725, 19.066156>,  <36.836723, 37.319748, 19.034094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.069672, 37.271725, 19.066156>,  <37.457920, 37.191685, 19.119593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069672, 37.271725, 19.066156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203326, -0.385351, 0.900091,
		0.128625, 0.900814, 0.414717,
		-0.970626, 0.200097, -0.133593,
		36.778484, 37.331753, 19.026079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075188, 37.344402, 19.709183>,  <37.457920, 37.191685, 19.119593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075188, 37.344402, 19.709183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.763321, 37.232887, 19.484896>,  <36.576202, 37.165977, 19.350323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.763321, 37.232887, 19.484896>,  <37.075188, 37.344402, 19.709183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763321, 37.232887, 19.484896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432910, -0.407016, 0.804318,
		-0.452454, 0.869837, 0.196645,
		-0.779663, -0.278787, -0.560717,
		36.529423, 37.149250, 19.316681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444248, 37.559471, 20.127165>,  <37.075188, 37.344402, 19.709183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444248, 37.559471, 20.127165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.353130, 37.258709, 19.879698>,  <36.298462, 37.078251, 19.731218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.353130, 37.258709, 19.879698>,  <36.444248, 37.559471, 20.127165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353130, 37.258709, 19.879698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483041, -0.464414, 0.742288,
		-0.845448, 0.467929, -0.257412,
		-0.227792, -0.751906, -0.618666,
		36.284794, 37.033138, 19.694098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844700, 37.395969, 20.305489>,  <36.444248, 37.559471, 20.127165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844700, 37.395969, 20.305489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.942791, 37.074039, 20.089296>,  <36.001644, 36.880882, 19.959581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.942791, 37.074039, 20.089296>,  <35.844700, 37.395969, 20.305489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942791, 37.074039, 20.089296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428716, -0.590053, 0.684135,
		-0.869522, 0.063947, -0.489737,
		0.245223, -0.804828, -0.540479,
		36.016357, 36.832592, 19.927153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313610, 36.943352, 20.327597>,  <35.844700, 37.395969, 20.305489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313610, 36.943352, 20.327597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.587494, 36.670460, 20.225046>,  <35.751823, 36.506725, 20.163515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.587494, 36.670460, 20.225046>,  <35.313610, 36.943352, 20.327597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587494, 36.670460, 20.225046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339877, -0.610082, 0.715739,
		-0.644715, -0.402935, -0.649605,
		0.684709, -0.682234, -0.256381,
		35.792908, 36.465790, 20.148134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973110, 36.376549, 20.422995>,  <35.313610, 36.943352, 20.327597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973110, 36.376549, 20.422995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.343864, 36.229153, 20.394453>,  <35.566319, 36.140717, 20.377329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.343864, 36.229153, 20.394453>,  <34.973110, 36.376549, 20.422995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343864, 36.229153, 20.394453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272732, -0.791842, 0.546446,
		-0.257859, -0.487035, -0.834450,
		0.926890, -0.368487, -0.071353,
		35.621933, 36.118607, 20.373047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869965, 35.686317, 20.173477>,  <34.973110, 36.376549, 20.422995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869965, 35.686317, 20.173477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.219692, 35.726791, 20.363352>,  <35.429531, 35.751076, 20.477276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.219692, 35.726791, 20.363352>,  <34.869965, 35.686317, 20.173477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219692, 35.726791, 20.363352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275854, -0.701104, 0.657539,
		0.399333, -0.705844, -0.585079,
		0.874321, 0.101181, 0.474684,
		35.481987, 35.757145, 20.505756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001785, 35.076622, 20.301229>,  <34.869965, 35.686317, 20.173477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001785, 35.076622, 20.301229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.244595, 35.266987, 20.555798>,  <35.390282, 35.381207, 20.708538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.244595, 35.266987, 20.555798>,  <35.001785, 35.076622, 20.301229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244595, 35.266987, 20.555798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182235, -0.696144, 0.694388,
		0.773505, -0.537489, -0.335850,
		0.607026, 0.475909, 0.636420,
		35.426701, 35.409760, 20.746723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403236, 34.586788, 20.619564>,  <35.001785, 35.076622, 20.301229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403236, 34.586788, 20.619564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.436806, 34.894325, 20.873127>,  <35.456947, 35.078846, 21.025265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.436806, 34.894325, 20.873127>,  <35.403236, 34.586788, 20.619564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436806, 34.894325, 20.873127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062754, -0.638966, 0.766671,
		0.994494, -0.024564, -0.101874,
		0.083927, 0.768843, 0.633906,
		35.461983, 35.124977, 21.063299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963531, 34.400471, 21.081415>,  <35.403236, 34.586788, 20.619564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963531, 34.400471, 21.081415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.757713, 34.676838, 21.284538>,  <35.634220, 34.842659, 21.406412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.757713, 34.676838, 21.284538>,  <35.963531, 34.400471, 21.081415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757713, 34.676838, 21.284538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148162, -0.511674, 0.846308,
		0.844564, 0.510705, 0.160914,
		-0.514549, 0.690920, 0.507808,
		35.603348, 34.884113, 21.436880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363121, 34.638824, 21.600639>,  <35.963531, 34.400471, 21.081415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363121, 34.638824, 21.600639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.006065, 34.763275, 21.731110>,  <35.791832, 34.837944, 21.809393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.006065, 34.763275, 21.731110>,  <36.363121, 34.638824, 21.600639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006065, 34.763275, 21.731110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078763, -0.604820, 0.792457,
		0.443831, 0.733072, 0.515383,
		-0.892642, 0.311124, 0.326177,
		35.738274, 34.856613, 21.828962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496666, 34.774471, 22.332916>,  <36.363121, 34.638824, 21.600639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496666, 34.774471, 22.332916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.101540, 34.740341, 22.280865>,  <35.864464, 34.719864, 22.249634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.101540, 34.740341, 22.280865>,  <36.496666, 34.774471, 22.332916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101540, 34.740341, 22.280865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026473, -0.731931, 0.680864,
		-0.153338, 0.676015, 0.720757,
		-0.987819, -0.085321, -0.130129,
		35.805195, 34.714745, 22.241827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153484, 34.779686, 23.051311>,  <36.496666, 34.774471, 22.332916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153484, 34.779686, 23.051311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.898205, 34.605255, 22.797527>,  <35.745037, 34.500599, 22.645256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.898205, 34.605255, 22.797527>,  <36.153484, 34.779686, 23.051311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898205, 34.605255, 22.797527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231156, -0.677550, 0.698207,
		-0.734348, 0.592256, 0.331612,
		-0.638201, -0.436073, -0.634461,
		35.706745, 34.474434, 22.607189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617268, 34.755154, 23.402788>,  <36.153484, 34.779686, 23.051311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617268, 34.755154, 23.402788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.556160, 34.487736, 23.111662>,  <35.519497, 34.327286, 22.936987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.556160, 34.487736, 23.111662>,  <35.617268, 34.755154, 23.402788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556160, 34.487736, 23.111662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158088, -0.710445, 0.685767,
		-0.975536, 0.219820, 0.002843,
		-0.152765, -0.668541, -0.727815,
		35.510330, 34.287174, 22.893318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011444, 34.395275, 23.694368>,  <35.617268, 34.755154, 23.402788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011444, 34.395275, 23.694368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.173882, 34.145859, 23.427151>,  <35.271343, 33.996208, 23.266821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.173882, 34.145859, 23.427151>,  <35.011444, 34.395275, 23.694368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173882, 34.145859, 23.427151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154338, -0.767333, 0.622398,
		-0.900702, -0.149651, -0.407849,
		0.406098, -0.623542, -0.668042,
		35.295712, 33.958797, 23.226738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730427, 33.749989, 23.833706>,  <35.011444, 34.395275, 23.694368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730427, 33.749989, 23.833706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.030052, 33.626122, 23.599440>,  <35.209827, 33.551804, 23.458879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.030052, 33.626122, 23.599440>,  <34.730427, 33.749989, 23.833706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030052, 33.626122, 23.599440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058946, -0.911681, 0.406648,
		-0.659865, -0.270084, -0.701165,
		0.749068, -0.309663, -0.585667,
		35.254772, 33.533222, 23.423740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490650, 33.159058, 23.405251>,  <34.730427, 33.749989, 23.833706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490650, 33.159058, 23.405251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.884449, 33.154968, 23.475300>,  <35.120728, 33.152515, 23.517328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.884449, 33.154968, 23.475300>,  <34.490650, 33.159058, 23.405251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884449, 33.154968, 23.475300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097246, -0.862674, 0.496324,
		0.145999, -0.505657, -0.850291,
		0.984494, -0.010224, 0.175122,
		35.179798, 33.151901, 23.527836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683243, 32.522041, 23.323732>,  <34.490650, 33.159058, 23.405251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683243, 32.522041, 23.323732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.960884, 32.684170, 23.561701>,  <35.127468, 32.781445, 23.704481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.960884, 32.684170, 23.561701>,  <34.683243, 32.522041, 23.323732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960884, 32.684170, 23.561701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115020, -0.753367, 0.647463,
		0.710623, -0.517837, -0.476298,
		0.694108, 0.405318, 0.594921,
		35.169117, 32.805767, 23.740177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937462, 31.936060, 23.742893>,  <34.683243, 32.522041, 23.323732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937462, 31.936060, 23.742893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.039928, 32.261818, 23.951178>,  <35.101406, 32.457272, 24.076149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.039928, 32.261818, 23.951178>,  <34.937462, 31.936060, 23.742893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039928, 32.261818, 23.951178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059316, -0.550914, 0.832452,
		0.964812, -0.182358, -0.189431,
		0.256164, 0.814395, 0.520711,
		35.116779, 32.506138, 24.107391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489262, 31.641655, 24.247389>,  <34.937462, 31.936060, 23.742893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489262, 31.641655, 24.247389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.346355, 31.985369, 24.393810>,  <35.260612, 32.191597, 24.481663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.346355, 31.985369, 24.393810>,  <35.489262, 31.641655, 24.247389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346355, 31.985369, 24.393810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072232, -0.365326, 0.928073,
		0.931207, 0.358006, 0.068449,
		-0.357262, 0.859284, 0.366053,
		35.239178, 32.243153, 24.503626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.478714, 29.859140, 28.962234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.086548, 29.925659, 28.920038>,  <37.851246, 29.965570, 28.894720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.086548, 29.925659, 28.920038>,  <38.478714, 29.859140, 28.962234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086548, 29.925659, 28.920038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158135, -0.345539, 0.924985,
		0.117371, 0.923552, 0.365070,
		-0.980417, 0.166296, -0.105490,
		37.792423, 29.975548, 28.888391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186466, 30.400700, 29.516264>,  <38.478714, 29.859140, 28.962234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186466, 30.400700, 29.516264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.887566, 30.168394, 29.387066>,  <37.708225, 30.029011, 29.309547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.887566, 30.168394, 29.387066>,  <38.186466, 30.400700, 29.516264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887566, 30.168394, 29.387066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238873, -0.218815, 0.946076,
		-0.620122, 0.784114, 0.024782,
		-0.747254, -0.580763, -0.322995,
		37.663391, 29.994165, 29.290167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727577, 30.460869, 30.006914>,  <38.186466, 30.400700, 29.516264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727577, 30.460869, 30.006914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.575230, 30.140392, 29.822292>,  <37.483822, 29.948107, 29.711519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.575230, 30.140392, 29.822292>,  <37.727577, 30.460869, 30.006914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575230, 30.140392, 29.822292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363652, -0.329153, 0.871444,
		-0.850114, 0.499754, -0.165989,
		-0.380872, -0.801189, -0.461555,
		37.460968, 29.900036, 29.683826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062550, 30.411427, 30.243008>,  <37.727577, 30.460869, 30.006914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062550, 30.411427, 30.243008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.175049, 30.047089, 30.122171>,  <37.242546, 29.828485, 30.049669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.175049, 30.047089, 30.122171>,  <37.062550, 30.411427, 30.243008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175049, 30.047089, 30.122171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435088, -0.401613, 0.805857,
		-0.855336, -0.095207, -0.509250,
		0.281245, -0.910847, -0.302091,
		37.259422, 29.773834, 30.031544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391350, 29.960953, 30.165024>,  <37.062550, 30.411427, 30.243008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391350, 29.960953, 30.165024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.702808, 29.715359, 30.216763>,  <36.889683, 29.568003, 30.247807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.702808, 29.715359, 30.216763>,  <36.391350, 29.960953, 30.165024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702808, 29.715359, 30.216763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430302, -0.372483, 0.822251,
		-0.456670, -0.695902, -0.554232,
		0.778648, -0.613985, 0.129346,
		36.936401, 29.531164, 30.255568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193439, 29.318464, 30.509457>,  <36.391350, 29.960953, 30.165024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193439, 29.318464, 30.509457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.584385, 29.234148, 30.516647>,  <36.818954, 29.183558, 30.520962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.584385, 29.234148, 30.516647>,  <36.193439, 29.318464, 30.509457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584385, 29.234148, 30.516647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101176, -0.391102, 0.914769,
		-0.185795, -0.895883, -0.403576,
		0.977366, -0.210792, 0.017977,
		36.877594, 29.170910, 30.522039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310139, 28.609343, 30.665445>,  <36.193439, 29.318464, 30.509457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310139, 28.609343, 30.665445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.636353, 28.819086, 30.763380>,  <36.832081, 28.944933, 30.822140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.636353, 28.819086, 30.763380>,  <36.310139, 28.609343, 30.665445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636353, 28.819086, 30.763380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041382, -0.369151, 0.928448,
		0.577222, -0.767316, -0.279358,
		0.815538, 0.524360, 0.244835,
		36.881016, 28.976395, 30.836830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610992, 28.179417, 31.057938>,  <36.310139, 28.609343, 30.665445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610992, 28.179417, 31.057938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.810810, 28.503727, 31.179983>,  <36.930702, 28.698313, 31.253210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.810810, 28.503727, 31.179983>,  <36.610992, 28.179417, 31.057938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810810, 28.503727, 31.179983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027028, -0.337452, 0.940955,
		0.865865, -0.478298, -0.146660,
		0.499547, 0.810776, 0.305115,
		36.960674, 28.746960, 31.271519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093319, 27.991081, 31.606363>,  <36.610992, 28.179417, 31.057938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093319, 27.991081, 31.606363> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.076744, 28.386576, 31.663895>,  <37.066799, 28.623873, 31.698414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.076744, 28.386576, 31.663895>,  <37.093319, 27.991081, 31.606363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076744, 28.386576, 31.663895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061330, -0.146197, 0.987352,
		0.997257, 0.032093, 0.066698,
		-0.041438, 0.988735, 0.143827,
		37.064312, 28.683197, 31.707043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627857, 28.175890, 32.142052>,  <37.093319, 27.991081, 31.606363>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627857, 28.175890, 32.142052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.367214, 28.479197, 32.150436>,  <37.210827, 28.661180, 32.155468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.367214, 28.479197, 32.150436>,  <37.627857, 28.175890, 32.142052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367214, 28.479197, 32.150436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025204, -0.049266, 0.998468,
		0.758138, 0.650080, 0.051214,
		-0.651607, 0.758267, 0.020966,
		37.171734, 28.706676, 32.156727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841236, 28.566927, 32.710472>,  <37.627857, 28.175890, 32.142052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841236, 28.566927, 32.710472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.461811, 28.674753, 32.644062>,  <37.234158, 28.739449, 32.604218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.461811, 28.674753, 32.644062>,  <37.841236, 28.566927, 32.710472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461811, 28.674753, 32.644062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231544, -0.233069, 0.944492,
		0.215908, 0.934352, 0.283497,
		-0.948562, 0.269566, -0.166022,
		37.177242, 28.755623, 32.594254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622700, 29.104639, 33.295536>,  <37.841236, 28.566927, 32.710472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622700, 29.104639, 33.295536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.287937, 28.947176, 33.143421>,  <37.087078, 28.852699, 33.052151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.287937, 28.947176, 33.143421>,  <37.622700, 29.104639, 33.295536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287937, 28.947176, 33.143421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398558, -0.037917, 0.916359,
		-0.375150, 0.918475, -0.125162,
		-0.836907, -0.393656, -0.380290,
		37.036865, 28.829079, 33.029335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130318, 29.545803, 33.457996>,  <37.622700, 29.104639, 33.295536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130318, 29.545803, 33.457996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.964012, 29.183968, 33.420353>,  <36.864227, 28.966866, 33.397766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.964012, 29.183968, 33.420353>,  <37.130318, 29.545803, 33.457996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964012, 29.183968, 33.420353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423436, 0.100957, 0.900283,
		-0.804884, 0.414159, -0.425010,
		-0.415768, -0.904589, -0.094111,
		36.839283, 28.912592, 33.392120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654881, 29.747805, 33.928219>,  <37.130318, 29.545803, 33.457996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654881, 29.747805, 33.928219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.601395, 29.367189, 33.817444>,  <36.569305, 29.138821, 33.750977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.601395, 29.367189, 33.817444>,  <36.654881, 29.747805, 33.928219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601395, 29.367189, 33.817444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683212, -0.113918, 0.721280,
		-0.717874, 0.285651, -0.634870,
		-0.133711, -0.951539, -0.276939,
		36.561283, 29.081728, 33.734364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350918, 29.930172, 33.174389>,  <36.654881, 29.747805, 33.928219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350918, 29.930172, 33.174389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.661701, 30.032169, 33.404629>,  <36.848171, 30.093369, 33.542774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.661701, 30.032169, 33.404629>,  <36.350918, 29.930172, 33.174389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661701, 30.032169, 33.404629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192657, 0.966740, -0.168217,
		-0.599348, 0.019805, 0.800243,
		0.776959, 0.254993, 0.575598,
		36.894791, 30.108667, 33.577309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118614, 30.366480, 33.655609>,  <36.350918, 29.930172, 33.174389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118614, 30.366480, 33.655609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.505047, 30.465939, 33.627743>,  <36.736908, 30.525614, 33.611023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.505047, 30.465939, 33.627743>,  <36.118614, 30.366480, 33.655609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505047, 30.465939, 33.627743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257437, 0.948464, -0.184776,
		0.020128, 0.196443, 0.980309,
		0.966086, 0.248648, -0.069662,
		36.794872, 30.540533, 33.606846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129414, 31.117353, 33.628162>,  <36.118614, 30.366480, 33.655609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129414, 31.117353, 33.628162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.510708, 31.036638, 33.538162>,  <36.739483, 30.988209, 33.484161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.510708, 31.036638, 33.538162>,  <36.129414, 31.117353, 33.628162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510708, 31.036638, 33.538162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041428, 0.824674, -0.564090,
		0.299380, 0.528388, 0.794467,
		0.953234, -0.201790, -0.225001,
		36.796677, 30.976101, 33.470661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524483, 31.691343, 33.669563>,  <36.129414, 31.117353, 33.628162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524483, 31.691343, 33.669563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.712578, 31.457975, 33.404690>,  <36.825436, 31.317955, 33.245766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.712578, 31.457975, 33.404690>,  <36.524483, 31.691343, 33.669563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712578, 31.457975, 33.404690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068965, 0.772320, -0.631479,
		0.879839, 0.251280, 0.403412,
		0.470241, -0.583422, -0.662188,
		36.853649, 31.282949, 33.206032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066746, 32.083084, 33.598507>,  <36.524483, 31.691343, 33.669563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066746, 32.083084, 33.598507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.048866, 31.813129, 33.303883>,  <37.038139, 31.651155, 33.127106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.048866, 31.813129, 33.303883>,  <37.066746, 32.083084, 33.598507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048866, 31.813129, 33.303883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190653, 0.717988, -0.669435,
		0.980639, -0.170350, 0.096578,
		-0.044697, -0.674888, -0.736565,
		37.035458, 31.610662, 33.082912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584679, 32.356449, 33.048862>,  <37.066746, 32.083084, 33.598507>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584679, 32.356449, 33.048862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.368694, 32.088707, 32.844742>,  <37.239105, 31.928062, 32.722267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.368694, 32.088707, 32.844742>,  <37.584679, 32.356449, 33.048862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368694, 32.088707, 32.844742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077488, 0.564180, -0.822008,
		0.838117, -0.483393, -0.252768,
		-0.539959, -0.669352, -0.510306,
		37.206707, 31.887901, 32.691650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926361, 32.284004, 32.383659>,  <37.584679, 32.356449, 33.048862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926361, 32.284004, 32.383659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.551311, 32.152714, 32.337818>,  <37.326283, 32.073940, 32.310314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.551311, 32.152714, 32.337818>,  <37.926361, 32.284004, 32.383659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551311, 32.152714, 32.337818> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092525, 0.553349, -0.827794,
		0.335117, -0.765555, -0.549202,
		-0.937622, -0.328223, -0.114604,
		37.270023, 32.054245, 32.303436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860058, 31.774734, 31.819742>,  <37.926361, 32.284004, 32.383659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860058, 31.774734, 31.819742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.496441, 31.937260, 31.856716>,  <37.278271, 32.034775, 31.878901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.496441, 31.937260, 31.856716>,  <37.860058, 31.774734, 31.819742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496441, 31.937260, 31.856716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154825, 0.535290, -0.830358,
		-0.386865, -0.740522, -0.549511,
		-0.909046, 0.406314, 0.092433,
		37.223728, 32.059155, 31.884445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520153, 31.842928, 31.102045>,  <37.860058, 31.774734, 31.819742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520153, 31.842928, 31.102045> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.296890, 32.064083, 31.349522>,  <37.162933, 32.196777, 31.498007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.296890, 32.064083, 31.349522>,  <37.520153, 31.842928, 31.102045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296890, 32.064083, 31.349522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161514, 0.658986, -0.734609,
		-0.813866, -0.509952, -0.278515,
		-0.558153, 0.552889, 0.618691,
		37.129444, 32.229950, 31.535130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976082, 31.961102, 30.675323>,  <37.520153, 31.842928, 31.102045>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976082, 31.961102, 30.675323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.970764, 32.258907, 30.942312>,  <36.967575, 32.437592, 31.102507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.970764, 32.258907, 30.942312>,  <36.976082, 31.961102, 30.675323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970764, 32.258907, 30.942312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075282, 0.666383, -0.741800,
		-0.997074, 0.040388, -0.064906,
		-0.013292, 0.744515, 0.667473,
		36.966778, 32.482262, 31.142553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404968, 32.385014, 30.475092>,  <36.976082, 31.961102, 30.675323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404968, 32.385014, 30.475092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.640800, 32.615505, 30.701490>,  <36.782299, 32.753799, 30.837330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.640800, 32.615505, 30.701490>,  <36.404968, 32.385014, 30.475092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640800, 32.615505, 30.701490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014826, 0.708345, -0.705711,
		-0.807572, 0.407683, 0.426171,
		0.589582, 0.576231, 0.565995,
		36.817677, 32.788376, 30.871288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101028, 33.183136, 30.554968>,  <36.404968, 32.385014, 30.475092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101028, 33.183136, 30.554968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.498047, 33.148502, 30.589294>,  <36.736256, 33.127724, 30.609890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.498047, 33.148502, 30.589294>,  <36.101028, 33.183136, 30.554968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498047, 33.148502, 30.589294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121690, 0.661893, -0.739655,
		0.007242, 0.744581, 0.667493,
		0.992542, -0.086584, 0.085814,
		36.795811, 33.122528, 30.615038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292904, 33.765282, 30.112452>,  <36.101028, 33.183136, 30.554968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292904, 33.765282, 30.112452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.649334, 33.598183, 30.183420>,  <36.863190, 33.497925, 30.226002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.649334, 33.598183, 30.183420>,  <36.292904, 33.765282, 30.112452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649334, 33.598183, 30.183420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399949, 0.537948, -0.742060,
		0.214547, 0.732190, 0.646427,
		0.891073, -0.417744, 0.177423,
		36.916656, 33.472858, 30.236647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735504, 34.302399, 30.207376>,  <36.292904, 33.765282, 30.112452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735504, 34.302399, 30.207376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.979267, 33.994942, 30.129604>,  <37.125526, 33.810467, 30.082941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.979267, 33.994942, 30.129604>,  <36.735504, 34.302399, 30.207376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979267, 33.994942, 30.129604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493210, 0.559524, -0.666091,
		0.620776, 0.310028, 0.720084,
		0.609411, -0.768645, -0.194430,
		37.162090, 33.764347, 30.071276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058800, 34.658539, 30.754698>,  <36.735504, 34.302399, 30.207376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058800, 34.658539, 30.754698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.776241, 34.941311, 30.740541>,  <36.606709, 35.110973, 30.732048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.776241, 34.941311, 30.740541>,  <37.058800, 34.658539, 30.754698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776241, 34.941311, 30.740541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471351, -0.432513, 0.768609,
		0.528049, 0.559622, 0.638739,
		-0.706393, 0.706934, -0.035390,
		36.564323, 35.153393, 30.729925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864758, 34.661560, 31.428993>,  <37.058800, 34.658539, 30.754698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864758, 34.661560, 31.428993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.551426, 34.803120, 31.224579>,  <36.363426, 34.888054, 31.101931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.551426, 34.803120, 31.224579>,  <36.864758, 34.661560, 31.428993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551426, 34.803120, 31.224579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616170, -0.333528, 0.713508,
		0.082063, 0.873794, 0.479322,
		-0.783326, 0.353896, -0.511036,
		36.316429, 34.909290, 31.071268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484745, 35.002567, 31.877983>,  <36.864758, 34.661560, 31.428993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484745, 35.002567, 31.877983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.211018, 34.957687, 31.589783>,  <36.046780, 34.930759, 31.416862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.211018, 34.957687, 31.589783>,  <36.484745, 35.002567, 31.877983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211018, 34.957687, 31.589783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684919, -0.240115, 0.687918,
		-0.250187, 0.964239, 0.087468,
		-0.684319, -0.112200, -0.720499,
		36.005722, 34.924026, 31.373632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843315, 35.213741, 32.176556>,  <36.484745, 35.002567, 31.877983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843315, 35.213741, 32.176556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.745144, 34.995884, 31.855774>,  <35.686241, 34.865170, 31.663305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.745144, 34.995884, 31.855774>,  <35.843315, 35.213741, 32.176556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745144, 34.995884, 31.855774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790868, -0.365914, 0.490545,
		-0.560617, 0.754635, -0.340932,
		-0.245431, -0.544640, -0.801955,
		35.671516, 34.832493, 31.615187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184418, 35.082874, 32.305191>,  <35.843315, 35.213741, 32.176556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184418, 35.082874, 32.305191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.267624, 34.805489, 32.029266>,  <35.317547, 34.639057, 31.863712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.267624, 34.805489, 32.029266>,  <35.184418, 35.082874, 32.305191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267624, 34.805489, 32.029266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717074, -0.587753, 0.374636,
		-0.665234, 0.416715, -0.619526,
		0.208012, -0.693467, -0.689808,
		35.330029, 34.597450, 31.822325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516266, 34.931213, 31.936752>,  <35.184418, 35.082874, 32.305191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516266, 34.931213, 31.936752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.743198, 34.607361, 31.876585>,  <34.879360, 34.413048, 31.840485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.743198, 34.607361, 31.876585>,  <34.516266, 34.931213, 31.936752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743198, 34.607361, 31.876585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807820, -0.582638, 0.089211,
		-0.159868, 0.070899, -0.984589,
		0.567334, -0.809633, -0.150419,
		34.913399, 34.364471, 31.831459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145641, 34.553379, 31.473064>,  <34.516266, 34.931213, 31.936752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145641, 34.553379, 31.473064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.383495, 34.305321, 31.677738>,  <34.526207, 34.156487, 31.800543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.383495, 34.305321, 31.677738>,  <34.145641, 34.553379, 31.473064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383495, 34.305321, 31.677738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784343, -0.587300, 0.199711,
		0.176663, -0.520094, -0.835639,
		0.594640, -0.620146, 0.511686,
		34.561886, 34.119278, 31.831244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020054, 33.949188, 31.201366>,  <34.145641, 34.553379, 31.473064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020054, 33.949188, 31.201366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.194553, 33.863125, 31.550856>,  <34.299255, 33.811485, 31.760550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.194553, 33.863125, 31.550856>,  <34.020054, 33.949188, 31.201366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194553, 33.863125, 31.550856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659620, -0.736906, 0.147885,
		0.612034, -0.640840, -0.463399,
		0.436252, -0.215157, 0.873723,
		34.325428, 33.798576, 31.812973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202789, 33.222649, 31.186769>,  <34.020054, 33.949188, 31.201366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202789, 33.222649, 31.186769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.181435, 33.336422, 31.569653>,  <34.168621, 33.404686, 31.799383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.181435, 33.336422, 31.569653>,  <34.202789, 33.222649, 31.186769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181435, 33.336422, 31.569653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639061, -0.746298, 0.186117,
		0.767301, -0.601779, 0.221611,
		-0.053387, 0.284431, 0.957209,
		34.165421, 33.421753, 31.856815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210461, 32.593224, 31.597700>,  <34.202789, 33.222649, 31.186769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210461, 32.593224, 31.597700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.060390, 32.855858, 31.859430>,  <33.970348, 33.013439, 32.016468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.060390, 32.855858, 31.859430>,  <34.210461, 32.593224, 31.597700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060390, 32.855858, 31.859430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706365, -0.659599, 0.256859,
		0.600243, -0.365827, 0.711252,
		-0.375175, 0.656581, 0.654327,
		33.947838, 33.052834, 32.055729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257553, 32.334450, 32.257805>,  <34.210461, 32.593224, 31.597700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257553, 32.334450, 32.257805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.973362, 32.611923, 32.305183>,  <33.802849, 32.778408, 32.333611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.973362, 32.611923, 32.305183>,  <34.257553, 32.334450, 32.257805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973362, 32.611923, 32.305183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590492, -0.679212, 0.435879,
		0.382809, 0.239742, 0.892177,
		-0.710476, 0.693682, 0.118443,
		33.760220, 32.820026, 32.340717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986404, 32.340839, 33.012890>,  <34.257553, 32.334450, 32.257805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986404, 32.340839, 33.012890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.713161, 32.538395, 32.797691>,  <33.549217, 32.656929, 32.668571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.713161, 32.538395, 32.797691>,  <33.986404, 32.340839, 33.012890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713161, 32.538395, 32.797691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672391, -0.712848, 0.199346,
		-0.285056, 0.497919, 0.819036,
		-0.683106, 0.493887, -0.537998,
		33.508228, 32.686562, 32.636292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.070084, 38.051079, 28.810776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703671, 38.087803, 28.654598>,  <37.483822, 38.109837, 28.560892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703671, 38.087803, 28.654598>,  <38.070084, 38.051079, 28.810776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703671, 38.087803, 28.654598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359596, -0.619198, 0.698058,
		-0.177671, 0.779849, 0.600225,
		-0.916037, 0.091814, -0.390444,
		37.428860, 38.115349, 28.537466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580471, 38.168343, 29.352226>,  <38.070084, 38.051079, 28.810776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580471, 38.168343, 29.352226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374458, 37.979393, 29.066120>,  <37.250851, 37.866024, 28.894457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374458, 37.979393, 29.066120>,  <37.580471, 38.168343, 29.352226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374458, 37.979393, 29.066120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345103, -0.649561, 0.677476,
		-0.784631, 0.595762, 0.171527,
		-0.515032, -0.472375, -0.715265,
		37.219948, 37.837681, 28.851540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840897, 38.107212, 29.652349>,  <37.580471, 38.168343, 29.352226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840897, 38.107212, 29.652349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930153, 37.836521, 29.371708>,  <36.983707, 37.674107, 29.203323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930153, 37.836521, 29.371708>,  <36.840897, 38.107212, 29.652349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930153, 37.836521, 29.371708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371897, -0.724411, 0.580449,
		-0.901055, 0.131401, -0.413320,
		0.223142, -0.676729, -0.701602,
		36.997097, 37.633503, 29.161228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298283, 37.629539, 29.736858>,  <36.840897, 38.107212, 29.652349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298283, 37.629539, 29.736858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575516, 37.428288, 29.530365>,  <36.741856, 37.307537, 29.406469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575516, 37.428288, 29.530365>,  <36.298283, 37.629539, 29.736858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575516, 37.428288, 29.530365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249332, -0.839256, 0.483201,
		-0.676364, -0.206186, -0.707121,
		0.693084, -0.503127, -0.516234,
		36.783440, 37.277348, 29.375494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009972, 36.949623, 29.518066>,  <36.298283, 37.629539, 29.736858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009972, 36.949623, 29.518066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407246, 36.911469, 29.491302>,  <36.645611, 36.888577, 29.475245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407246, 36.911469, 29.491302>,  <36.009972, 36.949623, 29.518066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407246, 36.911469, 29.491302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051817, -0.875953, 0.479605,
		-0.104355, -0.472872, -0.874930,
		0.993189, -0.095385, -0.066908,
		36.705204, 36.882854, 29.471230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196205, 36.384968, 28.950552>,  <36.009972, 36.949623, 29.518066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196205, 36.384968, 28.950552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501389, 36.393932, 29.208977>,  <36.684498, 36.399311, 29.364033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501389, 36.393932, 29.208977>,  <36.196205, 36.384968, 28.950552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501389, 36.393932, 29.208977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216186, -0.933014, 0.287661,
		0.609232, -0.359142, -0.707004,
		0.762955, 0.022408, 0.646063,
		36.730274, 36.400654, 29.402796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340374, 35.629677, 29.124012>,  <36.196205, 36.384968, 28.950552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340374, 35.629677, 29.124012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543404, 35.819405, 29.411730>,  <36.665222, 35.933239, 29.584360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543404, 35.819405, 29.411730>,  <36.340374, 35.629677, 29.124012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543404, 35.819405, 29.411730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066077, -0.810945, 0.581380,
		0.859068, -0.342625, -0.380276,
		0.507579, 0.474317, 0.719296,
		36.695679, 35.961700, 29.627520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628651, 35.021889, 29.541082>,  <36.340374, 35.629677, 29.124012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628651, 35.021889, 29.541082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674168, 35.345055, 29.772367>,  <36.701477, 35.538952, 29.911139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674168, 35.345055, 29.772367>,  <36.628651, 35.021889, 29.541082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674168, 35.345055, 29.772367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117356, -0.566990, 0.815322,
		0.986549, -0.160635, 0.030294,
		0.113792, 0.807910, 0.578215,
		36.708305, 35.587429, 29.945831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192825, 34.849564, 30.054811>,  <36.628651, 35.021889, 29.541082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192825, 34.849564, 30.054811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948452, 35.131336, 30.199333>,  <36.801830, 35.300400, 30.286047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948452, 35.131336, 30.199333>,  <37.192825, 34.849564, 30.054811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948452, 35.131336, 30.199333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078724, -0.508169, 0.857652,
		0.787761, 0.495521, 0.365911,
		-0.610929, 0.704431, 0.361307,
		36.765175, 35.342667, 30.307726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935715, 34.575863, 30.209843>,  <37.192825, 34.849564, 30.054811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935715, 34.575863, 30.209843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850090, 34.240097, 30.010019>,  <37.798714, 34.038635, 29.890125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850090, 34.240097, 30.010019>,  <37.935715, 34.575863, 30.209843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850090, 34.240097, 30.010019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360979, 0.407233, -0.838961,
		0.907674, -0.359918, 0.215840,
		-0.214061, -0.839417, -0.499557,
		37.785873, 33.988274, 29.860151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621685, 34.487488, 29.821850>,  <37.935715, 34.575863, 30.209843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621685, 34.487488, 29.821850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322990, 34.271748, 29.666166>,  <38.143772, 34.142303, 29.572756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322990, 34.271748, 29.666166>,  <38.621685, 34.487488, 29.821850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322990, 34.271748, 29.666166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287395, 0.266071, -0.920114,
		0.599824, -0.798939, -0.043677,
		-0.746736, -0.539354, -0.389207,
		38.098969, 34.109943, 29.549404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868076, 34.049641, 29.327768>,  <38.621685, 34.487488, 29.821850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868076, 34.049641, 29.327768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484238, 34.080906, 29.219641>,  <38.253937, 34.099667, 29.154764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484238, 34.080906, 29.219641>,  <38.868076, 34.049641, 29.327768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484238, 34.080906, 29.219641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280946, 0.211985, -0.936019,
		-0.015858, -0.974142, -0.225378,
		-0.959593, 0.078162, -0.270320,
		38.196362, 34.104355, 29.138544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770584, 33.645817, 28.717237>,  <38.868076, 34.049641, 29.327768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770584, 33.645817, 28.717237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456650, 33.893559, 28.725586>,  <38.268291, 34.042206, 28.730595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456650, 33.893559, 28.725586>,  <38.770584, 33.645817, 28.717237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456650, 33.893559, 28.725586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250789, 0.348234, -0.903237,
		-0.566695, -0.703655, -0.428633,
		-0.784832, 0.619357, 0.020873,
		38.221199, 34.079365, 28.731848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212734, 33.441898, 28.108721>,  <38.770584, 33.645817, 28.717237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212734, 33.441898, 28.108721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174274, 33.825859, 28.214056>,  <38.151199, 34.056236, 28.277258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174274, 33.825859, 28.214056>,  <38.212734, 33.441898, 28.108721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174274, 33.825859, 28.214056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107451, 0.273028, -0.955986,
		-0.989550, -0.063624, -0.129394,
		-0.096152, 0.959900, 0.263338,
		38.145428, 34.113831, 28.293058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772408, 33.654858, 27.629097>,  <38.212734, 33.441898, 28.108721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772408, 33.654858, 27.629097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921665, 33.997967, 27.770515>,  <38.011219, 34.203831, 27.855366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921665, 33.997967, 27.770515>,  <37.772408, 33.654858, 27.629097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921665, 33.997967, 27.770515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189749, 0.302455, -0.934085,
		-0.908162, 0.415634, -0.049901,
		0.373145, 0.857770, 0.353545,
		38.033607, 34.255299, 27.876579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550934, 34.081924, 27.169029>,  <37.772408, 33.654858, 27.629097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550934, 34.081924, 27.169029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809654, 34.311378, 27.370062>,  <37.964886, 34.449051, 27.490683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809654, 34.311378, 27.370062>,  <37.550934, 34.081924, 27.169029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809654, 34.311378, 27.370062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172360, 0.531991, -0.829022,
		-0.742927, 0.622837, 0.245221,
		0.646801, 0.573637, 0.502583,
		38.003696, 34.483471, 27.520836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424961, 34.755165, 26.951015>,  <37.550934, 34.081924, 27.169029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424961, 34.755165, 26.951015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803757, 34.755314, 27.079527>,  <38.031033, 34.755402, 27.156633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803757, 34.755314, 27.079527>,  <37.424961, 34.755165, 26.951015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803757, 34.755314, 27.079527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296669, 0.382828, -0.874889,
		-0.123319, 0.923820, 0.362422,
		0.946984, 0.000371, 0.321279,
		38.087852, 34.755424, 27.175911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735325, 35.401981, 26.645409>,  <37.424961, 34.755165, 26.951015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735325, 35.401981, 26.645409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038322, 35.159611, 26.742620>,  <38.220119, 35.014191, 26.800947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038322, 35.159611, 26.742620>,  <37.735325, 35.401981, 26.645409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038322, 35.159611, 26.742620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528433, 0.350475, -0.773256,
		0.383359, 0.714159, 0.585672,
		0.757492, -0.605924, 0.243028,
		38.265572, 34.977833, 26.815529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348125, 35.789719, 26.627762>,  <37.735325, 35.401981, 26.645409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348125, 35.789719, 26.627762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453533, 35.410301, 26.557535>,  <38.516777, 35.182652, 26.515398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453533, 35.410301, 26.557535>,  <38.348125, 35.789719, 26.627762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453533, 35.410301, 26.557535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629344, 0.306980, -0.713926,
		0.731086, 0.077637, 0.677854,
		0.263515, -0.948544, -0.175568,
		38.532589, 35.125736, 26.504866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965248, 35.904743, 26.273615>,  <38.348125, 35.789719, 26.627762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965248, 35.904743, 26.273615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930950, 35.510273, 26.216896>,  <38.910374, 35.273590, 26.182865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930950, 35.510273, 26.216896>,  <38.965248, 35.904743, 26.273615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930950, 35.510273, 26.216896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502085, 0.080158, -0.861095,
		0.860557, -0.145024, 0.488271,
		-0.085741, -0.986176, -0.141795,
		38.905228, 35.214420, 26.174358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612026, 35.712330, 26.095226>,  <38.965248, 35.904743, 26.273615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612026, 35.712330, 26.095226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369999, 35.423378, 25.961319>,  <39.224785, 35.250008, 25.880976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369999, 35.423378, 25.961319>,  <39.612026, 35.712330, 26.095226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369999, 35.423378, 25.961319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413045, 0.074657, -0.907646,
		0.680654, -0.687458, 0.253201,
		-0.605065, -0.722376, -0.334767,
		39.188480, 35.206665, 25.860889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017899, 35.271519, 25.723455>,  <39.612026, 35.712330, 26.095226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017899, 35.271519, 25.723455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651951, 35.182438, 25.588747>,  <39.432381, 35.128990, 25.507923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651951, 35.182438, 25.588747>,  <40.017899, 35.271519, 25.723455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651951, 35.182438, 25.588747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347020, -0.007396, -0.937829,
		0.206369, -0.974858, 0.084050,
		-0.914871, -0.222706, -0.336769,
		39.377491, 35.115627, 25.487717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048016, 34.690636, 25.298347>,  <40.017899, 35.271519, 25.723455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048016, 34.690636, 25.298347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741131, 34.922173, 25.187841>,  <39.556999, 35.061096, 25.121538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741131, 34.922173, 25.187841>,  <40.048016, 34.690636, 25.298347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741131, 34.922173, 25.187841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406479, 0.105620, -0.907535,
		-0.496141, -0.808570, -0.316321,
		-0.767216, 0.578843, -0.276264,
		39.510967, 35.095825, 25.104961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.742001, 34.714226, 24.626303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.072037, 34.898697, 24.756865>,  <33.270058, 35.009380, 24.835201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.072037, 34.898697, 24.756865>,  <32.742001, 34.714226, 24.626303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072037, 34.898697, 24.756865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107288, -0.695087, 0.710875,
		0.554717, -0.551519, -0.622990,
		0.825093, 0.461173, 0.326405,
		33.319565, 35.037048, 24.854786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365170, 34.129417, 24.717922>,  <32.742001, 34.714226, 24.626303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365170, 34.129417, 24.717922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.438259, 34.443260, 24.954905>,  <33.482113, 34.631565, 25.097094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.438259, 34.443260, 24.954905>,  <33.365170, 34.129417, 24.717922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438259, 34.443260, 24.954905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192954, -0.619499, 0.760914,
		0.964044, -0.024720, -0.264591,
		0.182724, 0.784608, 0.592454,
		33.493076, 34.678642, 25.132641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956432, 33.935886, 25.052315>,  <33.365170, 34.129417, 24.717922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956432, 33.935886, 25.052315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.839413, 34.240532, 25.283611>,  <33.769199, 34.423317, 25.422390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.839413, 34.240532, 25.283611>,  <33.956432, 33.935886, 25.052315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839413, 34.240532, 25.283611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128864, -0.567782, 0.813030,
		0.947528, 0.312365, 0.067960,
		-0.292548, 0.761611, 0.578242,
		33.751648, 34.469017, 25.457085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410915, 33.901119, 25.637892>,  <33.956432, 33.935886, 25.052315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410915, 33.901119, 25.637892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.107780, 34.128284, 25.766363>,  <33.925900, 34.264584, 25.843447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.107780, 34.128284, 25.766363>,  <34.410915, 33.901119, 25.637892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107780, 34.128284, 25.766363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019507, -0.511776, 0.858897,
		0.652148, 0.644642, 0.398923,
		-0.757841, 0.567910, 0.321178,
		33.880428, 34.298656, 25.862717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593964, 34.232079, 26.288742>,  <34.410915, 33.901119, 25.637892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593964, 34.232079, 26.288742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.194443, 34.215950, 26.277609>,  <33.954731, 34.206272, 26.270929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.194443, 34.215950, 26.277609>,  <34.593964, 34.232079, 26.288742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194443, 34.215950, 26.277609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008023, -0.425860, 0.904753,
		-0.048333, 0.903890, 0.425025,
		-0.998799, -0.040319, -0.027835,
		33.894802, 34.203854, 26.269258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432434, 34.417789, 26.959984>,  <34.593964, 34.232079, 26.288742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432434, 34.417789, 26.959984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.106785, 34.262043, 26.787659>,  <33.911396, 34.168594, 26.684263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.106785, 34.262043, 26.787659>,  <34.432434, 34.417789, 26.959984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106785, 34.262043, 26.787659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201832, -0.505908, 0.838642,
		-0.544490, 0.769709, 0.333284,
		-0.814122, -0.389365, -0.430814,
		33.862549, 34.145233, 26.658415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873421, 34.603333, 27.384089>,  <34.432434, 34.417789, 26.959984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873421, 34.603333, 27.384089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.700413, 34.311111, 27.172722>,  <33.596607, 34.135780, 27.045902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.700413, 34.311111, 27.172722>,  <33.873421, 34.603333, 27.384089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700413, 34.311111, 27.172722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429698, -0.348216, 0.833129,
		-0.792646, 0.587404, -0.163306,
		-0.432518, -0.730549, -0.528419,
		33.570656, 34.091946, 27.014196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226360, 34.566364, 27.743195>,  <33.873421, 34.603333, 27.384089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226360, 34.566364, 27.743195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.254520, 34.226475, 27.534191>,  <33.271416, 34.022541, 27.408789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.254520, 34.226475, 27.534191>,  <33.226360, 34.566364, 27.743195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254520, 34.226475, 27.534191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532269, -0.475003, 0.700758,
		-0.843643, 0.228784, -0.485720,
		0.070396, -0.849724, -0.522507,
		33.275639, 33.971558, 27.377439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595779, 34.108318, 27.871758>,  <33.226360, 34.566364, 27.743195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595779, 34.108318, 27.871758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.865471, 33.840843, 27.746370>,  <33.027287, 33.680359, 27.671137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.865471, 33.840843, 27.746370>,  <32.595779, 34.108318, 27.871758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865471, 33.840843, 27.746370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301704, -0.636819, 0.709532,
		-0.674084, -0.383812, -0.631110,
		0.674230, -0.668693, -0.313472,
		33.067741, 33.640236, 27.652328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237526, 33.506008, 27.728802>,  <32.595779, 34.108318, 27.871758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237526, 33.506008, 27.728802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.619381, 33.391750, 27.762436>,  <32.848495, 33.323196, 27.782616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.619381, 33.391750, 27.762436>,  <32.237526, 33.506008, 27.728802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619381, 33.391750, 27.762436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265225, -0.687354, 0.676166,
		-0.135349, -0.667796, -0.731935,
		0.954639, -0.285646, 0.084084,
		32.905773, 33.306057, 27.787661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239281, 32.748180, 27.623091>,  <32.237526, 33.506008, 27.728802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239281, 32.748180, 27.623091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.572544, 32.844952, 27.822018>,  <32.772503, 32.903015, 27.941374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.572544, 32.844952, 27.822018>,  <32.239281, 32.748180, 27.623091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572544, 32.844952, 27.822018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193353, -0.715067, 0.671784,
		0.518138, -0.655858, -0.548984,
		0.833155, 0.241930, 0.497315,
		32.822491, 32.917530, 27.971212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529804, 32.215130, 27.582031>,  <32.239281, 32.748180, 27.623091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529804, 32.215130, 27.582031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.703693, 32.399536, 27.891476>,  <32.808029, 32.510181, 28.077143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.703693, 32.399536, 27.891476>,  <32.529804, 32.215130, 27.582031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703693, 32.399536, 27.891476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193057, -0.791354, 0.580076,
		0.879626, -0.401526, -0.255019,
		0.434726, 0.461017, 0.773613,
		32.834110, 32.537842, 28.123560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044998, 31.671698, 27.813877>,  <32.529804, 32.215130, 27.582031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044998, 31.671698, 27.813877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.951588, 31.927940, 28.106476>,  <32.895542, 32.081688, 28.282036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.951588, 31.927940, 28.106476>,  <33.044998, 31.671698, 27.813877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951588, 31.927940, 28.106476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144641, -0.766814, 0.625360,
		0.961533, 0.040232, 0.271727,
		-0.233523, 0.640607, 0.731498,
		32.881531, 32.120121, 28.325926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265965, 31.415285, 28.415918>,  <33.044998, 31.671698, 27.813877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265965, 31.415285, 28.415918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.007317, 31.679363, 28.568771>,  <32.852127, 31.837811, 28.660482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.007317, 31.679363, 28.568771>,  <33.265965, 31.415285, 28.415918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007317, 31.679363, 28.568771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155469, -0.604496, 0.781290,
		0.746803, 0.445787, 0.493518,
		-0.646618, 0.660196, 0.382133,
		32.813332, 31.877422, 28.683411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024944, 31.143919, 28.542639>,  <33.265965, 31.415285, 28.415918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024944, 31.143919, 28.542639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.083912, 30.818480, 28.317667>,  <34.119293, 30.623217, 28.182684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.083912, 30.818480, 28.317667>,  <34.024944, 31.143919, 28.542639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083912, 30.818480, 28.317667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561009, 0.537099, -0.629915,
		0.814578, -0.222669, 0.535612,
		0.147414, -0.813599, -0.562429,
		34.128136, 30.574400, 28.148939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692478, 31.204750, 28.365067>,  <34.024944, 31.143919, 28.542639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692478, 31.204750, 28.365067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.564045, 30.942924, 28.091293>,  <34.486984, 30.785830, 27.927029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.564045, 30.942924, 28.091293>,  <34.692478, 31.204750, 28.365067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564045, 30.942924, 28.091293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546907, 0.461857, -0.698270,
		0.773173, -0.598526, 0.209691,
		-0.321086, -0.654564, -0.684433,
		34.467720, 30.746555, 27.885963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287407, 31.194281, 27.879301>,  <34.692478, 31.204750, 28.365067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287407, 31.194281, 27.879301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.960915, 31.051733, 27.697416>,  <34.765018, 30.966204, 27.588285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.960915, 31.051733, 27.697416>,  <35.287407, 31.194281, 27.879301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960915, 31.051733, 27.697416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374442, 0.273048, -0.886137,
		0.439954, -0.893557, -0.089429,
		-0.816232, -0.356373, -0.454713,
		34.716045, 30.944822, 27.561003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532944, 30.855669, 27.239058>,  <35.287407, 31.194281, 27.879301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532944, 30.855669, 27.239058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.148418, 30.951431, 27.184559>,  <34.917702, 31.008888, 27.151859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.148418, 30.951431, 27.184559>,  <35.532944, 30.855669, 27.239058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148418, 30.951431, 27.184559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195194, 0.243029, -0.950177,
		-0.194365, -0.940012, -0.280358,
		-0.961313, 0.239405, -0.136248,
		34.860023, 31.023252, 27.143684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358974, 30.570709, 26.603237>,  <35.532944, 30.855669, 27.239058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358974, 30.570709, 26.603237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.081890, 30.848646, 26.680540>,  <34.915638, 31.015408, 26.726923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.081890, 30.848646, 26.680540>,  <35.358974, 30.570709, 26.603237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081890, 30.848646, 26.680540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108283, 0.365125, -0.924640,
		-0.713041, -0.619580, -0.328165,
		-0.692710, 0.694841, 0.193259,
		34.874077, 31.057098, 26.738518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823746, 30.449120, 26.087223>,  <35.358974, 30.570709, 26.603237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823746, 30.449120, 26.087223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.776630, 30.833544, 26.187216>,  <34.748360, 31.064198, 26.247211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.776630, 30.833544, 26.187216>,  <34.823746, 30.449120, 26.087223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776630, 30.833544, 26.187216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032894, 0.247818, -0.968248,
		-0.992493, -0.122273, 0.002423,
		-0.117790, 0.961059, 0.249980,
		34.741295, 31.121862, 26.262209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458187, 30.814322, 25.464581>,  <34.823746, 30.449120, 26.087223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458187, 30.814322, 25.464581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.576920, 31.121157, 25.692078>,  <34.648159, 31.305258, 25.828577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.576920, 31.121157, 25.692078>,  <34.458187, 30.814322, 25.464581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576920, 31.121157, 25.692078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065897, 0.610621, -0.789177,
		-0.952655, 0.196770, 0.231798,
		0.296827, 0.767088, 0.568744,
		34.665966, 31.351282, 25.862701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065868, 31.380981, 25.278973>,  <34.458187, 30.814322, 25.464581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065868, 31.380981, 25.278973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.380436, 31.570810, 25.437128>,  <34.569176, 31.684708, 25.532021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.380436, 31.570810, 25.437128>,  <34.065868, 31.380981, 25.278973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380436, 31.570810, 25.437128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038907, 0.676882, -0.735063,
		-0.616472, 0.562681, 0.550774,
		0.786415, 0.474574, 0.395386,
		34.616360, 31.713182, 25.555744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954231, 32.127316, 25.105499>,  <34.065868, 31.380981, 25.278973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954231, 32.127316, 25.105499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.340534, 32.097305, 25.204849>,  <34.572315, 32.079300, 25.264460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.340534, 32.097305, 25.204849>,  <33.954231, 32.127316, 25.105499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340534, 32.097305, 25.204849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235139, 0.657733, -0.715610,
		-0.109675, 0.749506, 0.652849,
		0.965754, -0.075025, 0.248375,
		34.630260, 32.074799, 25.279362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234890, 32.778900, 25.055380>,  <33.954231, 32.127316, 25.105499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234890, 32.778900, 25.055380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.576435, 32.573307, 25.022543>,  <34.781361, 32.449951, 25.002840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.576435, 32.573307, 25.022543>,  <34.234890, 32.778900, 25.055380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576435, 32.573307, 25.022543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329823, 0.656311, -0.678581,
		0.402657, 0.552339, 0.729924,
		0.853864, -0.513981, -0.082095,
		34.832596, 32.419113, 24.997915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767445, 33.249130, 25.078487>,  <34.234890, 32.778900, 25.055380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767445, 33.249130, 25.078487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.923126, 32.939133, 24.879328>,  <35.016533, 32.753132, 24.759832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.923126, 32.939133, 24.879328>,  <34.767445, 33.249130, 25.078487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923126, 32.939133, 24.879328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371024, 0.626624, -0.685335,
		0.843128, 0.081999, 0.531423,
		0.389199, -0.774996, -0.497900,
		35.039886, 32.706635, 24.729958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483051, 33.487232, 24.838764>,  <34.767445, 33.249130, 25.078487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483051, 33.487232, 24.838764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.369984, 33.183571, 24.604233>,  <35.302143, 33.001373, 24.463514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.369984, 33.183571, 24.604233>,  <35.483051, 33.487232, 24.838764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369984, 33.183571, 24.604233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423969, 0.449428, -0.786298,
		0.860436, -0.470846, 0.194820,
		-0.282667, -0.759156, -0.586328,
		35.285183, 32.955826, 24.428335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133484, 33.345261, 24.480131>,  <35.483051, 33.487232, 24.838764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133484, 33.345261, 24.480131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.838581, 33.175934, 24.269512>,  <35.661640, 33.074337, 24.143141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.838581, 33.175934, 24.269512>,  <36.133484, 33.345261, 24.480131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838581, 33.175934, 24.269512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293644, 0.501124, -0.814032,
		0.608464, -0.754767, -0.245150,
		-0.737255, -0.423322, -0.526549,
		35.617405, 33.048939, 24.111547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439468, 33.089432, 23.845276>,  <36.133484, 33.345261, 24.480131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439468, 33.089432, 23.845276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.058125, 33.121632, 23.728914>,  <35.829319, 33.140953, 23.659098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.058125, 33.121632, 23.728914>,  <36.439468, 33.089432, 23.845276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058125, 33.121632, 23.728914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301505, 0.299263, -0.905282,
		0.014179, -0.950768, -0.309577,
		-0.953359, 0.080503, -0.290905,
		35.772118, 33.145782, 23.641644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987720, 32.766083, 23.453930>,  <36.439468, 33.089432, 23.845276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987720, 32.766083, 23.453930> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.302124, 32.896358, 23.664118>,  <37.490765, 32.974522, 23.790230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.302124, 32.896358, 23.664118>,  <36.987720, 32.766083, 23.453930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302124, 32.896358, 23.664118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171027, -0.702250, 0.691082,
		0.594087, -0.633066, -0.496273,
		0.786009, 0.325687, 0.525469,
		37.537926, 32.994064, 23.821758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344913, 32.276035, 23.610060>,  <36.987720, 32.766083, 23.453930>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344913, 32.276035, 23.610060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.477139, 32.511768, 23.904928>,  <37.556473, 32.653206, 24.081850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.477139, 32.511768, 23.904928>,  <37.344913, 32.276035, 23.610060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477139, 32.511768, 23.904928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081469, -0.760346, 0.644388,
		0.940262, -0.273067, -0.203329,
		0.330562, 0.589328, 0.737171,
		37.576305, 32.688568, 24.126080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944405, 31.975456, 23.906673>,  <37.344913, 32.276035, 23.610060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944405, 31.975456, 23.906673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.811977, 32.229549, 24.185778>,  <37.732521, 32.382004, 24.353241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.811977, 32.229549, 24.185778>,  <37.944405, 31.975456, 23.906673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811977, 32.229549, 24.185778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149431, -0.694837, 0.703472,
		0.931698, 0.337167, 0.135118,
		-0.331072, 0.635232, 0.697761,
		37.712654, 32.420120, 24.395105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373623, 31.826666, 24.432308>,  <37.944405, 31.975456, 23.906673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373623, 31.826666, 24.432308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.078808, 32.021492, 24.619728>,  <37.901920, 32.138390, 24.732180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.078808, 32.021492, 24.619728>,  <38.373623, 31.826666, 24.432308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078808, 32.021492, 24.619728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036305, -0.663742, 0.747079,
		0.674875, 0.567636, 0.471521,
		-0.737038, 0.487067, 0.468551,
		37.857697, 32.167614, 24.760294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620983, 31.860111, 25.137300>,  <38.373623, 31.826666, 24.432308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620983, 31.860111, 25.137300> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.228161, 31.935461, 25.140734>,  <37.992466, 31.980671, 25.142794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.228161, 31.935461, 25.140734>,  <38.620983, 31.860111, 25.137300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228161, 31.935461, 25.140734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065165, -0.381737, 0.921971,
		0.176953, 0.904871, 0.387164,
		-0.982060, 0.188374, 0.008584,
		37.933544, 31.991974, 25.143309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400101, 32.259937, 25.814398>,  <38.620983, 31.860111, 25.137300>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400101, 32.259937, 25.814398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.088352, 32.056419, 25.668131>,  <37.901302, 31.934309, 25.580372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.088352, 32.056419, 25.668131>,  <38.400101, 32.259937, 25.814398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088352, 32.056419, 25.668131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294426, -0.217763, 0.930534,
		-0.553079, 0.832891, 0.019915,
		-0.779370, -0.508795, -0.365665,
		37.854542, 31.903780, 25.558432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940392, 32.423222, 26.351593>,  <38.400101, 32.259937, 25.814398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940392, 32.423222, 26.351593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.800777, 32.102516, 26.157539>,  <37.717010, 31.910093, 26.041107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.800777, 32.102516, 26.157539>,  <37.940392, 32.423222, 26.351593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800777, 32.102516, 26.157539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202706, -0.440839, 0.874398,
		-0.914924, 0.403533, -0.008655,
		-0.349033, -0.801762, -0.485133,
		37.696068, 31.861988, 26.011999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413044, 32.127346, 26.721273>,  <37.940392, 32.423222, 26.351593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413044, 32.127346, 26.721273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.478580, 31.781534, 26.531225>,  <37.517902, 31.574045, 26.417196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.478580, 31.781534, 26.531225>,  <37.413044, 32.127346, 26.721273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478580, 31.781534, 26.531225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223508, -0.501635, 0.835707,
		-0.960834, -0.030726, -0.275416,
		0.163836, -0.864534, -0.475120,
		37.527733, 31.522175, 26.388689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876049, 31.608150, 26.776283>,  <37.413044, 32.127346, 26.721273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876049, 31.608150, 26.776283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.211010, 31.397121, 26.719128>,  <37.411987, 31.270504, 26.684834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.211010, 31.397121, 26.719128>,  <36.876049, 31.608150, 26.776283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211010, 31.397121, 26.719128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199532, -0.538452, 0.818692,
		-0.508856, -0.657068, -0.556171,
		0.837408, -0.527570, -0.142889,
		37.462231, 31.238850, 26.676260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737053, 30.942642, 26.882122>,  <36.876049, 31.608150, 26.776283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737053, 30.942642, 26.882122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.136189, 30.928040, 26.903986>,  <37.375671, 30.919279, 26.917105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.136189, 30.928040, 26.903986>,  <36.737053, 30.942642, 26.882122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136189, 30.928040, 26.903986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065714, -0.572025, 0.817600,
		0.001420, -0.819424, -0.573187,
		0.997838, -0.036505, 0.054660,
		37.435539, 30.917088, 26.920383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825237, 30.231323, 27.010120>,  <36.737053, 30.942642, 26.882122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825237, 30.231323, 27.010120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.145973, 30.426235, 27.148458>,  <37.338417, 30.543182, 27.231461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.145973, 30.426235, 27.148458>,  <36.825237, 30.231323, 27.010120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145973, 30.426235, 27.148458> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086144, -0.478468, 0.873869,
		0.591293, -0.730498, -0.341680,
		0.801842, 0.487279, 0.345843,
		37.386524, 30.572418, 27.252211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245918, 29.695972, 27.238062>,  <36.825237, 30.231323, 27.010120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245918, 29.695972, 27.238062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.374420, 30.025824, 27.424301>,  <37.451519, 30.223734, 27.536045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.374420, 30.025824, 27.424301>,  <37.245918, 29.695972, 27.238062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374420, 30.025824, 27.424301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000439, -0.491532, 0.870860,
		0.946993, -0.279970, -0.157544,
		0.321252, 0.824629, 0.465600,
		37.470795, 30.273212, 27.563982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641590, 29.490931, 27.747820>,  <37.245918, 29.695972, 27.238062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641590, 29.490931, 27.747820> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.594181, 29.863129, 27.886461>,  <37.565735, 30.086447, 27.969646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.594181, 29.863129, 27.886461>,  <37.641590, 29.490931, 27.747820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594181, 29.863129, 27.886461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006937, -0.349832, 0.936787,
		0.992928, 0.108622, 0.047916,
		-0.118518, 0.930494, 0.346604,
		37.558624, 30.142277, 27.990442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267872, 29.795166, 28.234303>,  <37.641590, 29.490931, 27.747820>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267872, 29.795166, 28.234303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.917515, 29.943573, 28.357695>,  <37.707302, 30.032618, 28.431730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.917515, 29.943573, 28.357695>,  <38.267872, 29.795166, 28.234303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917515, 29.943573, 28.357695> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140699, -0.415151, 0.898807,
		0.461539, 0.830660, 0.311425,
		-0.875891, 0.371017, 0.308481,
		37.654747, 30.054878, 28.450239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.709862, 34.662598, 24.460894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.433453, 34.951546, 24.471228>,  <39.267609, 35.124916, 24.477428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.433453, 34.951546, 24.471228>,  <39.709862, 34.662598, 24.460894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433453, 34.951546, 24.471228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577477, 0.573208, -0.581337,
		-0.434751, -0.386796, -0.813253,
		-0.691022, 0.722372, 0.025837,
		39.226147, 35.168259, 24.478979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469059, 34.893970, 23.784191>,  <39.709862, 34.662598, 24.460894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469059, 34.893970, 23.784191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.455063, 35.207085, 24.032713>,  <39.446667, 35.394955, 24.181826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.455063, 35.207085, 24.032713>,  <39.469059, 34.893970, 23.784191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455063, 35.207085, 24.032713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215308, 0.612990, -0.760188,
		-0.975919, 0.107173, -0.189989,
		-0.034990, 0.782788, 0.621304,
		39.444565, 35.441921, 24.219105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059456, 35.377457, 23.384787>,  <39.469059, 34.893970, 23.784191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059456, 35.377457, 23.384787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.284176, 35.559216, 23.661308>,  <39.419006, 35.668270, 23.827221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.284176, 35.559216, 23.661308>,  <39.059456, 35.377457, 23.384787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284176, 35.559216, 23.661308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282296, 0.680185, -0.676503,
		-0.777619, 0.575211, 0.253852,
		0.561798, 0.454401, 0.691305,
		39.452717, 35.695538, 23.868700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934738, 36.088608, 23.336409>,  <39.059456, 35.377457, 23.384787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934738, 36.088608, 23.336409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.289021, 36.057064, 23.519409>,  <39.501591, 36.038139, 23.629210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.289021, 36.057064, 23.519409>,  <38.934738, 36.088608, 23.336409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289021, 36.057064, 23.519409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419028, 0.560028, -0.714692,
		-0.199856, 0.824712, 0.529063,
		0.885705, -0.078856, 0.457502,
		39.554733, 36.033405, 23.656660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256664, 36.701096, 23.196407>,  <38.934738, 36.088608, 23.336409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256664, 36.701096, 23.196407> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.565128, 36.471569, 23.306711>,  <39.750206, 36.333855, 23.372894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.565128, 36.471569, 23.306711>,  <39.256664, 36.701096, 23.196407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565128, 36.471569, 23.306711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607561, 0.533906, -0.588060,
		0.190209, 0.621030, 0.760356,
		0.771162, -0.573817, 0.275760,
		39.796478, 36.299423, 23.389439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830326, 37.145950, 23.438150>,  <39.256664, 36.701096, 23.196407>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830326, 37.145950, 23.438150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.002262, 36.802162, 23.327484>,  <40.105423, 36.595890, 23.261084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.002262, 36.802162, 23.327484>,  <39.830326, 37.145950, 23.438150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002262, 36.802162, 23.327484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525238, 0.487254, -0.697645,
		0.734415, 0.154559, 0.660868,
		0.429838, -0.859474, -0.276666,
		40.131214, 36.544319, 23.244484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496868, 37.363625, 23.475542>,  <39.830326, 37.145950, 23.438150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496868, 37.363625, 23.475542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.440502, 37.059559, 23.221836>,  <40.406681, 36.877121, 23.069613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.440502, 37.059559, 23.221836>,  <40.496868, 37.363625, 23.475542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440502, 37.059559, 23.221836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441297, 0.525263, -0.727568,
		0.886227, -0.382428, 0.261438,
		-0.140919, -0.760163, -0.634267,
		40.398228, 36.831509, 23.031555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080532, 37.395397, 23.076038>,  <40.496868, 37.363625, 23.475542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080532, 37.395397, 23.076038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.821136, 37.181656, 22.859179>,  <40.665497, 37.053410, 22.729063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.821136, 37.181656, 22.859179>,  <41.080532, 37.395397, 23.076038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821136, 37.181656, 22.859179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100732, 0.645707, -0.756912,
		0.754526, -0.545464, -0.364910,
		-0.648493, -0.534352, -0.542148,
		40.626587, 37.021351, 22.696533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346802, 37.426643, 22.312765>,  <41.080532, 37.395397, 23.076038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346802, 37.426643, 22.312765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.980694, 37.276531, 22.254173>,  <40.761028, 37.186466, 22.219019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.980694, 37.276531, 22.254173>,  <41.346802, 37.426643, 22.312765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980694, 37.276531, 22.254173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049644, 0.465902, -0.883443,
		0.399778, -0.801314, -0.445055,
		-0.915267, -0.375275, -0.146477,
		40.706116, 37.163948, 22.210230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280354, 36.977173, 21.761881>,  <41.346802, 37.426643, 22.312765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280354, 36.977173, 21.761881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.902920, 37.099464, 21.812756>,  <40.676460, 37.172840, 21.843281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.902920, 37.099464, 21.812756>,  <41.280354, 36.977173, 21.761881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902920, 37.099464, 21.812756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096534, 0.621397, -0.777526,
		-0.316748, -0.721383, -0.615854,
		-0.943584, 0.305731, 0.127189,
		40.619843, 37.191185, 21.850912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915436, 36.890118, 21.104834>,  <41.280354, 36.977173, 21.761881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915436, 36.890118, 21.104834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.661373, 37.135967, 21.291945>,  <40.508938, 37.283478, 21.404211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.661373, 37.135967, 21.291945>,  <40.915436, 36.890118, 21.104834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661373, 37.135967, 21.291945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001451, 0.606573, -0.795026,
		-0.772385, -0.504284, -0.386158,
		-0.635153, 0.614627, 0.467776,
		40.470829, 37.320354, 21.432278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395535, 37.014709, 20.713717>,  <40.915436, 36.890118, 21.104834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395535, 37.014709, 20.713717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.372940, 37.328846, 20.960310>,  <40.359383, 37.517326, 21.108267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.372940, 37.328846, 20.960310>,  <40.395535, 37.014709, 20.713717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372940, 37.328846, 20.960310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129337, 0.606510, -0.784485,
		-0.989990, -0.124048, 0.067313,
		-0.056488, 0.785339, 0.616484,
		40.355995, 37.564449, 21.145254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767029, 37.376156, 20.687849>,  <40.395535, 37.014709, 20.713717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767029, 37.376156, 20.687849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.020016, 37.654984, 20.822954>,  <40.171806, 37.822281, 20.904016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.020016, 37.654984, 20.822954>,  <39.767029, 37.376156, 20.687849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020016, 37.654984, 20.822954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273630, 0.609005, -0.744472,
		-0.724646, 0.378432, 0.575915,
		0.632467, 0.697066, 0.337763,
		40.209755, 37.864105, 20.924282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298862, 37.162354, 20.069998>,  <39.767029, 37.376156, 20.687849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298862, 37.162354, 20.069998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.978851, 37.105709, 19.836796>,  <38.786842, 37.071724, 19.696875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.978851, 37.105709, 19.836796>,  <39.298862, 37.162354, 20.069998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978851, 37.105709, 19.836796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078225, -0.938830, 0.335379,
		-0.594836, 0.313919, 0.740016,
		-0.800032, -0.141608, -0.583007,
		38.738842, 37.063229, 19.661894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610710, 36.986382, 20.448433>,  <39.298862, 37.162354, 20.069998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610710, 36.986382, 20.448433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.610638, 36.813774, 20.087591>,  <38.610592, 36.710209, 19.871086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.610638, 36.813774, 20.087591>,  <38.610710, 36.986382, 20.448433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610638, 36.813774, 20.087591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388365, -0.831265, 0.397707,
		-0.921505, 0.350419, -0.167433,
		-0.000183, -0.431515, -0.902106,
		38.610584, 36.684319, 19.816959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946289, 36.817417, 20.201067>,  <38.610710, 36.986382, 20.448433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946289, 36.817417, 20.201067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.238083, 36.588287, 20.051548>,  <38.413158, 36.450809, 19.961836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.238083, 36.588287, 20.051548>,  <37.946289, 36.817417, 20.201067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238083, 36.588287, 20.051548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264404, -0.740165, 0.618261,
		-0.630824, -0.352180, -0.691397,
		0.729487, -0.572822, -0.373796,
		38.456928, 36.416439, 19.939409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578445, 36.218731, 20.047039>,  <37.946289, 36.817417, 20.201067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578445, 36.218731, 20.047039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.968296, 36.129848, 20.057873>,  <38.202206, 36.076519, 20.064373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.968296, 36.129848, 20.057873>,  <37.578445, 36.218731, 20.047039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968296, 36.129848, 20.057873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196268, -0.790059, 0.580764,
		-0.107653, -0.571341, -0.813622,
		0.974623, -0.222209, 0.027084,
		38.260681, 36.063187, 20.065998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552689, 35.550953, 19.842382>,  <37.578445, 36.218731, 20.047039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552689, 35.550953, 19.842382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.908367, 35.609150, 20.015892>,  <38.121777, 35.644070, 20.119997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.908367, 35.609150, 20.015892>,  <37.552689, 35.550953, 19.842382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908367, 35.609150, 20.015892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188992, -0.746618, 0.637842,
		0.416663, -0.649148, -0.636395,
		0.889198, 0.145491, 0.433772,
		38.175125, 35.652798, 20.146023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918591, 34.929211, 20.008249>,  <37.552689, 35.550953, 19.842382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918591, 34.929211, 20.008249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.096245, 35.175884, 20.268234>,  <38.202835, 35.323887, 20.424225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.096245, 35.175884, 20.268234>,  <37.918591, 34.929211, 20.008249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096245, 35.175884, 20.268234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141173, -0.668209, 0.730456,
		0.884769, -0.416176, -0.209715,
		0.444132, 0.616679, 0.649964,
		38.229485, 35.360889, 20.463223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251171, 34.476807, 20.429007>,  <37.918591, 34.929211, 20.008249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251171, 34.476807, 20.429007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.250462, 34.810127, 20.650131>,  <38.250034, 35.010120, 20.782806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.250462, 34.810127, 20.650131>,  <38.251171, 34.476807, 20.429007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250462, 34.810127, 20.650131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134765, -0.547569, 0.825837,
		0.990876, 0.075968, -0.111327,
		-0.001778, 0.833305, 0.552810,
		38.249928, 35.060120, 20.815975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770882, 34.308178, 20.953489>,  <38.251171, 34.476807, 20.429007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770882, 34.308178, 20.953489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.546528, 34.595913, 21.117424>,  <38.411915, 34.768555, 21.215784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.546528, 34.595913, 21.117424>,  <38.770882, 34.308178, 20.953489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546528, 34.595913, 21.117424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030510, -0.512658, 0.858050,
		0.827331, 0.468764, 0.309490,
		-0.560886, 0.719334, 0.409836,
		38.378262, 34.811714, 21.240376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134296, 34.539055, 21.559988>,  <38.770882, 34.308178, 20.953489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134296, 34.539055, 21.559988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.761307, 34.674850, 21.609360>,  <38.537514, 34.756329, 21.638983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.761307, 34.674850, 21.609360>,  <39.134296, 34.539055, 21.559988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761307, 34.674850, 21.609360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073779, -0.513477, 0.854926,
		0.353621, 0.788090, 0.503852,
		-0.932475, 0.339493, 0.123432,
		38.481564, 34.776699, 21.646389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031651, 34.764816, 22.235826>,  <39.134296, 34.539055, 21.559988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031651, 34.764816, 22.235826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.654140, 34.681328, 22.133280>,  <38.427635, 34.631233, 22.071751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.654140, 34.681328, 22.133280>,  <39.031651, 34.764816, 22.235826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654140, 34.681328, 22.133280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139271, -0.452287, 0.880931,
		-0.299822, 0.867105, 0.397788,
		-0.943774, -0.208723, -0.256369,
		38.371010, 34.618710, 22.056370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677994, 34.887115, 22.755577>,  <39.031651, 34.764816, 22.235826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677994, 34.887115, 22.755577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.435646, 34.634277, 22.562340>,  <38.290237, 34.482574, 22.446398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.435646, 34.634277, 22.562340>,  <38.677994, 34.887115, 22.755577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435646, 34.634277, 22.562340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100354, -0.541659, 0.834586,
		-0.789212, 0.554128, 0.264740,
		-0.605866, -0.632097, -0.483093,
		38.253887, 34.444649, 22.417412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095341, 34.964294, 23.080446>,  <38.677994, 34.887115, 22.755577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095341, 34.964294, 23.080446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.059605, 34.608753, 22.900688>,  <38.038162, 34.395428, 22.792833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.059605, 34.608753, 22.900688>,  <38.095341, 34.964294, 23.080446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059605, 34.608753, 22.900688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406902, -0.379255, 0.831021,
		-0.909092, 0.257106, -0.327792,
		-0.089344, -0.888854, -0.449395,
		38.032803, 34.342098, 22.765869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511929, 34.681610, 23.298441>,  <38.095341, 34.964294, 23.080446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511929, 34.681610, 23.298441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.686268, 34.340866, 23.182253>,  <37.790871, 34.136421, 23.112539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.686268, 34.340866, 23.182253>,  <37.511929, 34.681610, 23.298441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686268, 34.340866, 23.182253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327405, -0.450694, 0.830471,
		-0.838356, -0.266859, -0.475337,
		0.435850, -0.851858, -0.290471,
		37.817024, 34.085308, 23.095112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985195, 34.174004, 23.378036>,  <37.511929, 34.681610, 23.298441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985195, 34.174004, 23.378036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.329540, 33.971695, 23.355701>,  <37.536148, 33.850311, 23.342300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.329540, 33.971695, 23.355701>,  <36.985195, 34.174004, 23.378036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329540, 33.971695, 23.355701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285031, -0.570203, 0.770471,
		-0.421517, -0.647353, -0.635025,
		0.860860, -0.505768, -0.055835,
		37.587799, 33.819965, 23.338951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876934, 33.469677, 23.203760>,  <36.985195, 34.174004, 23.378036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876934, 33.469677, 23.203760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.229485, 33.455322, 23.392179>,  <37.441013, 33.446709, 23.505232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.229485, 33.455322, 23.392179>,  <36.876934, 33.469677, 23.203760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229485, 33.455322, 23.392179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386475, -0.628210, 0.675270,
		0.271686, -0.777216, -0.567558,
		0.881376, -0.035886, 0.471050,
		37.493896, 33.444557, 23.533495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376762, 33.060806, 22.985472>,  <36.876934, 33.469677, 23.203760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376762, 33.060806, 22.985472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.019463, 33.205067, 23.092834>,  <35.805084, 33.291622, 23.157251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.019463, 33.205067, 23.092834>,  <36.376762, 33.060806, 22.985472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019463, 33.205067, 23.092834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058717, 0.685506, -0.725695,
		-0.445716, -0.632464, -0.633503,
		-0.893246, 0.360652, 0.268405,
		35.751488, 33.313263, 23.173355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857407, 33.083984, 22.418261>,  <36.376762, 33.060806, 22.985472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857407, 33.083984, 22.418261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.679462, 33.364429, 22.641167>,  <35.572697, 33.532696, 22.774910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.679462, 33.364429, 22.641167>,  <35.857407, 33.083984, 22.418261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679462, 33.364429, 22.641167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195153, 0.531386, -0.824344,
		-0.874081, -0.475467, -0.099566,
		-0.444857, 0.701113, 0.557264,
		35.546005, 33.574764, 22.808346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263233, 33.336052, 22.085236>,  <35.857407, 33.083984, 22.418261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263233, 33.336052, 22.085236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.373940, 33.627048, 22.336365>,  <35.440365, 33.801647, 22.487043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.373940, 33.627048, 22.336365>,  <35.263233, 33.336052, 22.085236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373940, 33.627048, 22.336365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147733, 0.677791, -0.720260,
		-0.949514, 0.106592, 0.295062,
		0.276765, 0.727488, 0.627824,
		35.456970, 33.845295, 22.524712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838039, 33.920837, 21.825336>,  <35.263233, 33.336052, 22.085236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838039, 33.920837, 21.825336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.120163, 34.078186, 22.061235>,  <35.289436, 34.172596, 22.202774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.120163, 34.078186, 22.061235>,  <34.838039, 33.920837, 21.825336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120163, 34.078186, 22.061235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098928, 0.878393, -0.467588,
		-0.701964, 0.271451, 0.658453,
		0.705308, 0.393369, 0.589746,
		35.331757, 34.196198, 22.238159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562042, 34.577412, 22.017202>,  <34.838039, 33.920837, 21.825336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562042, 34.577412, 22.017202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.955257, 34.621613, 22.075762>,  <35.191185, 34.648132, 22.110897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.955257, 34.621613, 22.075762>,  <34.562042, 34.577412, 22.017202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955257, 34.621613, 22.075762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026500, 0.875342, -0.482777,
		-0.181496, 0.470707, 0.863420,
		0.983034, 0.110503, 0.146398,
		35.250168, 34.654762, 22.119680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571838, 35.191574, 22.262703>,  <34.562042, 34.577412, 22.017202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571838, 35.191574, 22.262703> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.917782, 35.080112, 22.095671>,  <35.125347, 35.013237, 21.995451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.917782, 35.080112, 22.095671>,  <34.571838, 35.191574, 22.262703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917782, 35.080112, 22.095671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008678, 0.839983, -0.542544,
		0.501940, 0.465600, 0.728885,
		0.864859, -0.278650, -0.417580,
		35.177238, 34.996517, 21.970396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975521, 35.778671, 22.181164>,  <34.571838, 35.191574, 22.262703>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975521, 35.778671, 22.181164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.143749, 35.516243, 21.930502>,  <35.244686, 35.358788, 21.780106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.143749, 35.516243, 21.930502>,  <34.975521, 35.778671, 22.181164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143749, 35.516243, 21.930502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157984, 0.733118, -0.661498,
		0.893397, 0.179208, 0.411978,
		0.420574, -0.656066, -0.626654,
		35.269920, 35.319424, 21.742506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420349, 36.277065, 22.542610>,  <34.975521, 35.778671, 22.181164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420349, 36.277065, 22.542610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.091446, 36.467537, 22.667284>,  <34.894104, 36.581821, 22.742088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.091446, 36.467537, 22.667284>,  <35.420349, 36.277065, 22.542610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091446, 36.467537, 22.667284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157933, -0.717072, 0.678870,
		0.546763, 0.508981, 0.664823,
		-0.822258, 0.476178, 0.311684,
		34.844769, 36.610390, 22.760790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441837, 36.298012, 23.273928>,  <35.420349, 36.277065, 22.542610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441837, 36.298012, 23.273928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.052135, 36.326710, 23.188431>,  <34.818314, 36.343929, 23.137133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.052135, 36.326710, 23.188431>,  <35.441837, 36.298012, 23.273928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052135, 36.326710, 23.188431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219196, -0.523404, 0.823409,
		-0.052795, 0.849059, 0.525654,
		-0.974252, 0.071749, -0.213743,
		34.759861, 36.348236, 23.124308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105114, 36.238640, 23.893147>,  <35.441837, 36.298012, 23.273928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105114, 36.238640, 23.893147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.782997, 36.192532, 23.660519>,  <34.589729, 36.164867, 23.520943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.782997, 36.192532, 23.660519>,  <35.105114, 36.238640, 23.893147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782997, 36.192532, 23.660519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477660, -0.454936, 0.751581,
		-0.351212, 0.883032, 0.311295,
		-0.805290, -0.115271, -0.581568,
		34.541409, 36.157951, 23.486048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520439, 36.528152, 24.276077>,  <35.105114, 36.238640, 23.893147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520439, 36.528152, 24.276077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.341839, 36.284256, 24.014130>,  <34.234680, 36.137917, 23.856960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.341839, 36.284256, 24.014130>,  <34.520439, 36.528152, 24.276077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341839, 36.284256, 24.014130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569985, -0.370352, 0.733455,
		-0.689750, 0.700753, -0.182182,
		-0.446499, -0.609742, -0.654869,
		34.207890, 36.101334, 23.817669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730427, 36.633537, 24.265223>,  <34.520439, 36.528152, 24.276077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730427, 36.633537, 24.265223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.789856, 36.265709, 24.119720>,  <33.825516, 36.045013, 24.032419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.789856, 36.265709, 24.119720>,  <33.730427, 36.633537, 24.265223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789856, 36.265709, 24.119720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655973, -0.366909, 0.659604,
		-0.740016, 0.140613, -0.657726,
		0.148576, -0.919569, -0.363757,
		33.834431, 35.989838, 24.010593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033642, 36.223499, 24.271841>,  <33.730427, 36.633537, 24.265223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033642, 36.223499, 24.271841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.312820, 35.937763, 24.251507>,  <33.480328, 35.766319, 24.239305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.312820, 35.937763, 24.251507>,  <33.033642, 36.223499, 24.271841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312820, 35.937763, 24.251507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319264, -0.373904, 0.870785,
		-0.641048, -0.591530, -0.489029,
		0.697945, -0.714344, -0.050836,
		33.522205, 35.723461, 24.236256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701130, 35.611786, 24.582724>,  <33.033642, 36.223499, 24.271841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701130, 35.611786, 24.582724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.091610, 35.531937, 24.616615>,  <33.325897, 35.484028, 24.636950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.091610, 35.531937, 24.616615>,  <32.701130, 35.611786, 24.582724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091610, 35.531937, 24.616615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193951, -0.628895, 0.752910,
		-0.097014, -0.751426, -0.652646,
		0.976202, -0.199625, 0.084728,
		33.384472, 35.472050, 24.642035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.875961, 40.609398, 22.319265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.973194, 40.225426, 22.375048>,  <40.031532, 39.995045, 22.408518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.973194, 40.225426, 22.375048>,  <39.875961, 40.609398, 22.319265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973194, 40.225426, 22.375048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669811, -0.062122, 0.739928,
		-0.701615, -0.273273, -0.658072,
		0.243083, -0.959929, 0.139456,
		40.046120, 39.937447, 22.416885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279533, 40.169132, 22.374268>,  <39.875961, 40.609398, 22.319265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279533, 40.169132, 22.374268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.566456, 39.983585, 22.582228>,  <39.738609, 39.872257, 22.707005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.566456, 39.983585, 22.582228>,  <39.279533, 40.169132, 22.374268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566456, 39.983585, 22.582228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654853, -0.193956, 0.730444,
		-0.237998, -0.864407, -0.442896,
		0.717304, -0.463876, 0.519898,
		39.781647, 39.844425, 22.738199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969227, 39.520954, 22.583845>,  <39.279533, 40.169132, 22.374268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969227, 39.520954, 22.583845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.270859, 39.545013, 22.845455>,  <39.451839, 39.559448, 23.002420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.270859, 39.545013, 22.845455>,  <38.969227, 39.520954, 22.583845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270859, 39.545013, 22.845455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610833, -0.301694, 0.732028,
		0.241347, -0.951505, -0.190759,
		0.754079, 0.060151, 0.654023,
		39.497082, 39.563057, 23.041662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955299, 38.927197, 23.118580>,  <38.969227, 39.520954, 22.583845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955299, 38.927197, 23.118580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.166416, 39.213303, 23.301811>,  <39.293087, 39.384964, 23.411751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.166416, 39.213303, 23.301811>,  <38.955299, 38.927197, 23.118580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166416, 39.213303, 23.301811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445966, -0.225632, 0.866143,
		0.722876, -0.661431, 0.199896,
		0.527792, 0.715261, 0.458080,
		39.324753, 39.427879, 23.439236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306248, 38.577797, 23.602749>,  <38.955299, 38.927197, 23.118580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306248, 38.577797, 23.602749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.309673, 38.950508, 23.747917>,  <39.311729, 39.174137, 23.835018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.309673, 38.950508, 23.747917>,  <39.306248, 38.577797, 23.602749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309673, 38.950508, 23.747917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399352, -0.329547, 0.855521,
		0.916757, -0.152260, 0.369287,
		0.008564, 0.931781, 0.362920,
		39.312244, 39.230042, 23.856792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634991, 38.481190, 24.273134>,  <39.306248, 38.577797, 23.602749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634991, 38.481190, 24.273134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.449711, 38.835644, 24.278999>,  <39.338543, 39.048317, 24.282518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.449711, 38.835644, 24.278999>,  <39.634991, 38.481190, 24.273134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449711, 38.835644, 24.278999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335370, -0.190568, 0.922611,
		0.820351, 0.422433, 0.385454,
		-0.463196, 0.886135, 0.014662,
		39.310753, 39.101482, 24.283398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856407, 38.753887, 24.870306>,  <39.634991, 38.481190, 24.273134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856407, 38.753887, 24.870306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.534672, 38.975224, 24.783720>,  <39.341629, 39.108025, 24.731768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.534672, 38.975224, 24.783720>,  <39.856407, 38.753887, 24.870306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534672, 38.975224, 24.783720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348004, -0.143434, 0.926456,
		0.481597, 0.820513, 0.307934,
		-0.804337, 0.553340, -0.216464,
		39.293369, 39.141224, 24.718781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637325, 39.003540, 25.573000>,  <39.856407, 38.753887, 24.870306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637325, 39.003540, 25.573000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.315094, 39.073498, 25.346561>,  <39.121758, 39.115471, 25.210699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.315094, 39.073498, 25.346561>,  <39.637325, 39.003540, 25.573000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315094, 39.073498, 25.346561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592150, -0.270282, 0.759148,
		-0.020238, 0.946764, 0.321293,
		-0.805574, 0.174890, -0.566096,
		39.073421, 39.125965, 25.176733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112595, 39.539356, 25.907038>,  <39.637325, 39.003540, 25.573000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112595, 39.539356, 25.907038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.876072, 39.325508, 25.665527>,  <38.734158, 39.197201, 25.520622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.876072, 39.325508, 25.665527>,  <39.112595, 39.539356, 25.907038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876072, 39.325508, 25.665527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662019, -0.105757, 0.741988,
		-0.460533, 0.838451, -0.291393,
		-0.591304, -0.534618, -0.603775,
		38.698681, 39.165123, 25.484394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393764, 39.828068, 26.024046>,  <39.112595, 39.539356, 25.907038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393764, 39.828068, 26.024046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.362705, 39.466366, 25.856098>,  <38.344070, 39.249344, 25.755329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.362705, 39.466366, 25.856098>,  <38.393764, 39.828068, 26.024046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362705, 39.466366, 25.856098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746294, -0.226527, 0.625884,
		-0.661072, 0.361946, -0.657251,
		-0.077651, -0.904257, -0.419869,
		38.339409, 39.195087, 25.730137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650085, 39.739220, 25.861242>,  <38.393764, 39.828068, 26.024046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650085, 39.739220, 25.861242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.817863, 39.376118, 25.858450>,  <37.918530, 39.158257, 25.856773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.817863, 39.376118, 25.858450>,  <37.650085, 39.739220, 25.861242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817863, 39.376118, 25.858450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733229, -0.343313, 0.586951,
		-0.535205, -0.241072, -0.809592,
		0.419441, -0.907756, -0.006983,
		37.943695, 39.103790, 25.856356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030983, 39.242687, 25.873371>,  <37.650085, 39.739220, 25.861242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030983, 39.242687, 25.873371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.355415, 39.051750, 26.008593>,  <37.550076, 38.937187, 26.089725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.355415, 39.051750, 26.008593>,  <37.030983, 39.242687, 25.873371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355415, 39.051750, 26.008593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574186, -0.539500, 0.615834,
		-0.111586, -0.693599, -0.711666,
		0.811085, -0.477347, 0.338054,
		37.598740, 38.908546, 26.110008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330200, 39.231064, 25.590178>,  <37.030983, 39.242687, 25.873371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330200, 39.231064, 25.590178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.100029, 39.552879, 25.648958>,  <35.961926, 39.745968, 25.684227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.100029, 39.552879, 25.648958>,  <36.330200, 39.231064, 25.590178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100029, 39.552879, 25.648958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328496, 0.391912, -0.859357,
		-0.748982, -0.446224, -0.489806,
		-0.575427, 0.804543, 0.146952,
		35.927402, 39.794243, 25.693045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899204, 39.284996, 24.988554>,  <36.330200, 39.231064, 25.590178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899204, 39.284996, 24.988554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.915470, 39.642071, 25.168089>,  <35.925232, 39.856316, 25.275810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.915470, 39.642071, 25.168089>,  <35.899204, 39.284996, 24.988554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915470, 39.642071, 25.168089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347029, 0.408625, -0.844154,
		-0.936972, 0.190091, -0.293170,
		0.040669, 0.892688, 0.448837,
		35.927670, 39.909878, 25.302740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596603, 39.688763, 24.478289>,  <35.899204, 39.284996, 24.988554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596603, 39.688763, 24.478289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.777008, 39.949718, 24.721918>,  <35.885250, 40.106293, 24.868095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.777008, 39.949718, 24.721918>,  <35.596603, 39.688763, 24.478289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777008, 39.949718, 24.721918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293104, 0.536311, -0.791492,
		-0.843018, 0.535493, 0.050663,
		0.451010, 0.652393, 0.609076,
		35.912312, 40.145435, 24.904640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285606, 40.363972, 24.307135>,  <35.596603, 39.688763, 24.478289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285606, 40.363972, 24.307135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.658577, 40.429630, 24.435907>,  <35.882359, 40.469025, 24.513170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.658577, 40.429630, 24.435907>,  <35.285606, 40.363972, 24.307135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658577, 40.429630, 24.435907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195218, 0.520888, -0.831003,
		-0.304095, 0.837695, 0.453645,
		0.932425, 0.164144, 0.321932,
		35.938305, 40.478874, 24.532488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493317, 41.074306, 24.123264>,  <35.285606, 40.363972, 24.307135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493317, 41.074306, 24.123264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.835648, 40.882225, 24.200171>,  <36.041046, 40.766975, 24.246315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.835648, 40.882225, 24.200171>,  <35.493317, 41.074306, 24.123264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835648, 40.882225, 24.200171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360435, 0.287022, -0.887528,
		0.371007, 0.828870, 0.418722,
		0.855828, -0.480201, 0.192266,
		36.092396, 40.738163, 24.257851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011711, 41.566681, 23.960869>,  <35.493317, 41.074306, 24.123264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011711, 41.566681, 23.960869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.150448, 41.193489, 23.922384>,  <36.233688, 40.969574, 23.899294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.150448, 41.193489, 23.922384>,  <36.011711, 41.566681, 23.960869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150448, 41.193489, 23.922384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354611, 0.225406, -0.907438,
		0.868304, 0.280619, 0.409024,
		0.346840, -0.932977, -0.096210,
		36.254501, 40.913597, 23.893520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687439, 41.644165, 23.614531>,  <36.011711, 41.566681, 23.960869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687439, 41.644165, 23.614531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.621052, 41.251625, 23.575722>,  <36.581219, 41.016102, 23.552437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.621052, 41.251625, 23.575722>,  <36.687439, 41.644165, 23.614531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621052, 41.251625, 23.575722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325728, 0.038309, -0.944687,
		0.930783, -0.188387, 0.313294,
		-0.165965, -0.981347, -0.097020,
		36.571262, 40.957222, 23.546616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127281, 41.460201, 23.029678>,  <36.687439, 41.644165, 23.614531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127281, 41.460201, 23.029678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.875328, 41.151211, 23.061983>,  <36.724155, 40.965816, 23.081366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.875328, 41.151211, 23.061983>,  <37.127281, 41.460201, 23.029678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875328, 41.151211, 23.061983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046259, -0.141109, -0.988913,
		0.775312, -0.619163, 0.124616,
		-0.629883, -0.772480, 0.080762,
		36.686363, 40.919468, 23.086212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403893, 40.943825, 22.691156>,  <37.127281, 41.460201, 23.029678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403893, 40.943825, 22.691156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.019192, 40.835423, 22.707106>,  <36.788372, 40.770382, 22.716675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.019192, 40.835423, 22.707106>,  <37.403893, 40.943825, 22.691156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019192, 40.835423, 22.707106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007447, -0.171373, -0.985178,
		0.273819, -0.947200, 0.166836,
		-0.961752, -0.271003, 0.039872,
		36.730667, 40.754120, 22.719067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336056, 40.300938, 22.442492>,  <37.403893, 40.943825, 22.691156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336056, 40.300938, 22.442492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.974060, 40.467239, 22.406399>,  <36.756863, 40.567020, 22.384743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.974060, 40.467239, 22.406399>,  <37.336056, 40.300938, 22.442492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974060, 40.467239, 22.406399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078871, -0.044456, -0.995893,
		-0.418063, -0.908388, 0.007441,
		-0.904988, 0.415760, -0.090230,
		36.702564, 40.591969, 22.379330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008400, 39.823414, 22.028868>,  <37.336056, 40.300938, 22.442492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008400, 39.823414, 22.028868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.830292, 40.179775, 21.993032>,  <36.723427, 40.393593, 21.971531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.830292, 40.179775, 21.993032>,  <37.008400, 39.823414, 22.028868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830292, 40.179775, 21.993032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066704, -0.132780, -0.988898,
		-0.892910, -0.434347, 0.118549,
		-0.445267, 0.890905, -0.089588,
		36.696712, 40.447048, 21.966156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441422, 39.714417, 21.554802>,  <37.008400, 39.823414, 22.028868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441422, 39.714417, 21.554802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.507103, 40.108959, 21.559580>,  <36.546513, 40.345684, 21.562447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.507103, 40.108959, 21.559580>,  <36.441422, 39.714417, 21.554802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507103, 40.108959, 21.559580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156297, 0.037972, -0.986980,
		-0.973965, 0.160198, 0.160400,
		0.164203, 0.986354, 0.011945,
		36.556362, 40.404865, 21.563164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247749, 39.881592, 22.367765>,  <36.441422, 39.714417, 21.554802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247749, 39.881592, 22.367765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.924023, 40.058537, 22.213200>,  <35.729786, 40.164703, 22.120461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.924023, 40.058537, 22.213200>,  <36.247749, 39.881592, 22.367765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924023, 40.058537, 22.213200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574957, 0.731170, -0.367172,
		0.120109, -0.519330, -0.846091,
		-0.809320, 0.442365, -0.386412,
		35.681225, 40.191246, 22.097277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402618, 39.263641, 22.557444>,  <36.247749, 39.881592, 22.367765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402618, 39.263641, 22.557444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.207146, 39.340675, 22.217068>,  <36.089863, 39.386894, 22.012842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.207146, 39.340675, 22.217068>,  <36.402618, 39.263641, 22.557444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207146, 39.340675, 22.217068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587815, -0.793414, 0.158012,
		-0.644717, 0.577413, 0.500933,
		-0.488686, 0.192583, -0.850940,
		36.060539, 39.398449, 21.961786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751068, 39.328861, 22.690340>,  <36.402618, 39.263641, 22.557444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751068, 39.328861, 22.690340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.695396, 39.250511, 22.302059>,  <35.661995, 39.203503, 22.069090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.695396, 39.250511, 22.302059>,  <35.751068, 39.328861, 22.690340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695396, 39.250511, 22.302059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617099, -0.749484, 0.239713,
		-0.774479, 0.632382, -0.016561,
		-0.139178, -0.195873, -0.970702,
		35.653645, 39.191750, 22.010849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003811, 39.433109, 22.506483>,  <35.751068, 39.328861, 22.690340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003811, 39.433109, 22.506483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.156986, 39.176659, 22.240458>,  <35.248894, 39.022789, 22.080843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.156986, 39.176659, 22.240458>,  <35.003811, 39.433109, 22.506483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156986, 39.176659, 22.240458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667605, -0.689674, 0.280450,
		-0.638481, 0.336602, -0.692128,
		0.382943, -0.641130, -0.665062,
		35.271870, 38.984318, 22.040939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422550, 38.987400, 22.193731>,  <35.003811, 39.433109, 22.506483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422550, 38.987400, 22.193731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.743572, 38.752720, 22.150486>,  <34.936188, 38.611912, 22.124538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.743572, 38.752720, 22.150486>,  <34.422550, 38.987400, 22.193731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743572, 38.752720, 22.150486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578201, -0.809591, 0.101227,
		-0.146919, -0.018728, -0.988971,
		0.802558, -0.586696, -0.108115,
		34.984341, 38.576710, 22.118052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177319, 38.393753, 21.797113>,  <34.422550, 38.987400, 22.193731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177319, 38.393753, 21.797113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.520264, 38.276890, 21.966618>,  <34.726032, 38.206772, 22.068319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.520264, 38.276890, 21.966618>,  <34.177319, 38.393753, 21.797113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520264, 38.276890, 21.966618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429394, -0.859949, 0.275878,
		0.283810, -0.418487, -0.862740,
		0.857364, -0.292158, 0.423758,
		34.777473, 38.189243, 22.093744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168736, 37.701042, 21.610836>,  <34.177319, 38.393753, 21.797113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168736, 37.701042, 21.610836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.434998, 37.741299, 21.906612>,  <34.594753, 37.765453, 22.084078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.434998, 37.741299, 21.906612>,  <34.168736, 37.701042, 21.610836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434998, 37.741299, 21.906612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279918, -0.884848, 0.372412,
		0.691772, -0.454881, -0.560834,
		0.665656, 0.100637, 0.739442,
		34.634693, 37.771488, 22.128445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686169, 37.156181, 21.546772>,  <34.168736, 37.701042, 21.610836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686169, 37.156181, 21.546772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.682846, 37.267632, 21.930918>,  <34.680855, 37.334499, 22.161406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.682846, 37.267632, 21.930918>,  <34.686169, 37.156181, 21.546772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682846, 37.267632, 21.930918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203817, -0.940708, 0.271157,
		0.978974, -0.193487, 0.064599,
		-0.008304, 0.278622, 0.960365,
		34.680355, 37.351219, 22.219027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114189, 36.642445, 21.885479>,  <34.686169, 37.156181, 21.546772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114189, 36.642445, 21.885479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.924084, 36.825573, 22.186018>,  <34.810020, 36.935448, 22.366343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.924084, 36.825573, 22.186018>,  <35.114189, 36.642445, 21.885479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924084, 36.825573, 22.186018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089354, -0.874658, 0.476433,
		0.875293, 0.159296, 0.456604,
		-0.475266, 0.457818, 0.751348,
		34.781506, 36.962917, 22.411423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539917, 36.131172, 21.850168>,  <35.114189, 36.642445, 21.885479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539917, 36.131172, 21.850168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.525616, 35.800911, 21.624950>,  <35.517033, 35.602753, 21.489820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.525616, 35.800911, 21.624950>,  <35.539917, 36.131172, 21.850168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.525616, 35.800911, 21.624950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340319, 0.519670, -0.783662,
		0.939630, -0.219636, 0.262403,
		-0.035757, -0.825653, -0.563044,
		35.514889, 35.553215, 21.456038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233807, 35.992661, 21.586283>,  <35.539917, 36.131172, 21.850168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233807, 35.992661, 21.586283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.984066, 35.818481, 21.326880>,  <35.834221, 35.713974, 21.171238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.984066, 35.818481, 21.326880>,  <36.233807, 35.992661, 21.586283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984066, 35.818481, 21.326880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444774, 0.484307, -0.753407,
		0.642150, -0.758833, -0.108702,
		-0.624356, -0.435452, -0.648507,
		35.796761, 35.687847, 21.132328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676331, 35.786350, 21.029308>,  <36.233807, 35.992661, 21.586283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676331, 35.786350, 21.029308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.303513, 35.769699, 20.885328>,  <36.079823, 35.759708, 20.798941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.303513, 35.769699, 20.885328>,  <36.676331, 35.786350, 21.029308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303513, 35.769699, 20.885328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265062, 0.598990, -0.755615,
		0.247060, -0.799674, -0.547250,
		-0.932043, -0.041627, -0.359950,
		36.023899, 35.757210, 20.777344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856510, 35.733368, 20.371649>,  <36.676331, 35.786350, 21.029308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856510, 35.733368, 20.371649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.471912, 35.842850, 20.361691>,  <36.241154, 35.908539, 20.355717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.471912, 35.842850, 20.361691>,  <36.856510, 35.733368, 20.371649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471912, 35.842850, 20.361691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182656, 0.568713, -0.801999,
		-0.205350, -0.775663, -0.596807,
		-0.961493, 0.273701, -0.024894,
		36.183464, 35.924961, 20.354221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642807, 35.617050, 19.705038>,  <36.856510, 35.733368, 20.371649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642807, 35.617050, 19.705038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.368526, 35.882591, 19.824446>,  <36.203957, 36.041916, 19.896090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.368526, 35.882591, 19.824446>,  <36.642807, 35.617050, 19.705038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368526, 35.882591, 19.824446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107699, 0.498138, -0.860383,
		-0.719871, -0.557816, -0.413071,
		-0.685702, 0.663852, 0.298519,
		36.162815, 36.081745, 19.914001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302574, 35.779060, 19.130932>,  <36.642807, 35.617050, 19.705038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302574, 35.779060, 19.130932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.194565, 36.083889, 19.366335>,  <36.129757, 36.266785, 19.507576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.194565, 36.083889, 19.366335>,  <36.302574, 35.779060, 19.130932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194565, 36.083889, 19.366335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205283, 0.642723, -0.738083,
		-0.940715, -0.078492, -0.329992,
		-0.270027, 0.762067, 0.588506,
		36.113556, 36.312508, 19.542887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899582, 36.135223, 18.719152>,  <36.302574, 35.779060, 19.130932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899582, 36.135223, 18.719152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.008495, 36.384579, 19.012341>,  <36.073845, 36.534191, 19.188253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.008495, 36.384579, 19.012341>,  <35.899582, 36.135223, 18.719152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008495, 36.384579, 19.012341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305579, 0.666297, -0.680198,
		-0.912405, 0.409188, -0.009073,
		0.272283, 0.623389, 0.732972,
		36.090179, 36.571594, 19.232233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518551, 36.740509, 18.622730>,  <35.899582, 36.135223, 18.719152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518551, 36.740509, 18.622730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.836624, 36.862354, 18.832449>,  <36.027470, 36.935463, 18.958281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.836624, 36.862354, 18.832449>,  <35.518551, 36.740509, 18.622730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836624, 36.862354, 18.832449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135825, 0.753202, -0.643614,
		-0.590955, 0.583006, 0.557562,
		0.795187, 0.304616, 0.524296,
		36.075180, 36.953739, 18.989738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411438, 37.433506, 18.777298>,  <35.518551, 36.740509, 18.622730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411438, 37.433506, 18.777298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.805679, 37.374672, 18.810665>,  <36.042225, 37.339371, 18.830687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.805679, 37.374672, 18.810665>,  <35.411438, 37.433506, 18.777298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805679, 37.374672, 18.810665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168962, 0.837373, -0.519863,
		0.006608, 0.526473, 0.850166,
		0.985600, -0.147081, 0.083420,
		36.101360, 37.330547, 18.835691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.931217, 28.492226, 32.591030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.305573, 28.452078, 32.455948>,  <34.530186, 28.427988, 32.374901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.305573, 28.452078, 32.455948>,  <33.931217, 28.492226, 32.591030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305573, 28.452078, 32.455948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258947, 0.453970, -0.852559,
		0.238878, 0.885346, 0.398873,
		0.935886, -0.100371, -0.337702,
		34.586338, 28.421967, 32.354637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275116, 29.113899, 32.260773>,  <33.931217, 28.492226, 32.591030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275116, 29.113899, 32.260773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.482830, 28.814476, 32.095852>,  <34.607460, 28.634821, 31.996899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.482830, 28.814476, 32.095852>,  <34.275116, 29.113899, 32.260773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482830, 28.814476, 32.095852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197952, 0.363976, -0.910130,
		0.831356, 0.554238, 0.040830,
		0.519290, -0.748560, -0.412306,
		34.638618, 28.589909, 31.972160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787601, 29.420040, 31.732763>,  <34.275116, 29.113899, 32.260773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787601, 29.420040, 31.732763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.720490, 29.042519, 31.618860>,  <34.680222, 28.816006, 31.550518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.720490, 29.042519, 31.618860>,  <34.787601, 29.420040, 31.732763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720490, 29.042519, 31.618860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146414, 0.309502, -0.939559,
		0.974892, -0.115945, -0.190114,
		-0.167778, -0.943803, -0.284755,
		34.670155, 28.759378, 31.533434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986782, 29.484344, 30.928404>,  <34.787601, 29.420040, 31.732763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986782, 29.484344, 30.928404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.856396, 29.106907, 30.951635>,  <34.778164, 28.880444, 30.965574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.856396, 29.106907, 30.951635>,  <34.986782, 29.484344, 30.928404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856396, 29.106907, 30.951635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448542, 0.100288, -0.888117,
		0.832198, -0.315550, -0.455932,
		-0.325970, -0.943594, 0.058078,
		34.758606, 28.823828, 30.969059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228394, 29.083250, 30.328173>,  <34.986782, 29.484344, 30.928404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228394, 29.083250, 30.328173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.908184, 28.888622, 30.468126>,  <34.716061, 28.771845, 30.552099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.908184, 28.888622, 30.468126>,  <35.228394, 29.083250, 30.328173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908184, 28.888622, 30.468126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415865, 0.030611, -0.908911,
		0.431538, -0.873105, -0.226852,
		-0.800519, -0.486570, 0.349884,
		34.668030, 28.742651, 30.573092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135792, 28.649839, 29.794706>,  <35.228394, 29.083250, 30.328173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135792, 28.649839, 29.794706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.800045, 28.701849, 30.005823>,  <34.598598, 28.733055, 30.132492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.800045, 28.701849, 30.005823>,  <35.135792, 28.649839, 29.794706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800045, 28.701849, 30.005823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498392, 0.203471, -0.842736,
		-0.216967, -0.970409, -0.105982,
		-0.839363, 0.130025, 0.527791,
		34.548237, 28.740856, 30.164160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714630, 28.459669, 29.346270>,  <35.135792, 28.649839, 29.794706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714630, 28.459669, 29.346270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.483257, 28.674135, 29.592178>,  <34.344433, 28.802814, 29.739723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.483257, 28.674135, 29.592178>,  <34.714630, 28.459669, 29.346270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483257, 28.674135, 29.592178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470647, 0.396194, -0.788366,
		-0.666264, -0.745356, 0.023175,
		-0.578432, 0.536167, 0.614769,
		34.309727, 28.834986, 29.776609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.983650, 28.434156, 29.153879>,  <34.714630, 28.459669, 29.346270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.983650, 28.434156, 29.153879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.029186, 28.772396, 29.362495>,  <34.056507, 28.975340, 29.487665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.029186, 28.772396, 29.362495>,  <33.983650, 28.434156, 29.153879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029186, 28.772396, 29.362495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297101, 0.529905, -0.794312,
		-0.948036, -0.064525, 0.311553,
		0.113840, 0.845599, 0.521539,
		34.063339, 29.026075, 29.518957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385597, 28.682343, 29.039389>,  <33.983650, 28.434156, 29.153879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385597, 28.682343, 29.039389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.641956, 28.966703, 29.155233>,  <33.795773, 29.137320, 29.224739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.641956, 28.966703, 29.155233>,  <33.385597, 28.682343, 29.039389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641956, 28.966703, 29.155233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267970, 0.560739, -0.783431,
		-0.719338, 0.424490, 0.549874,
		0.640894, 0.710901, 0.289610,
		33.834225, 29.179974, 29.242117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066158, 29.271921, 28.792446>,  <33.385597, 28.682343, 29.039389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066158, 29.271921, 28.792446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.436005, 29.404106, 28.868217>,  <33.657913, 29.483418, 28.913679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.436005, 29.404106, 28.868217>,  <33.066158, 29.271921, 28.792446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436005, 29.404106, 28.868217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086983, 0.667351, -0.739646,
		-0.370840, 0.667410, 0.645787,
		0.924614, 0.330463, 0.189427,
		33.713390, 29.503244, 28.925045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063244, 29.989140, 28.578350>,  <33.066158, 29.271921, 28.792446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063244, 29.989140, 28.578350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.454681, 29.913227, 28.610216>,  <33.689545, 29.867680, 28.629335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.454681, 29.913227, 28.610216>,  <33.063244, 29.989140, 28.578350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454681, 29.913227, 28.610216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180560, 0.605768, -0.774883,
		0.098800, 0.772676, 0.627065,
		0.978589, -0.189781, 0.079665,
		33.748257, 29.856293, 28.634115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346279, 30.645613, 28.648396>,  <33.063244, 29.989140, 28.578350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346279, 30.645613, 28.648396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.638744, 30.400757, 28.527937>,  <33.814224, 30.253843, 28.455662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.638744, 30.400757, 28.527937>,  <33.346279, 30.645613, 28.648396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638744, 30.400757, 28.527937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069310, 0.505798, -0.859863,
		0.678675, 0.607825, 0.412248,
		0.731161, -0.612141, -0.301144,
		33.858093, 30.217115, 28.437593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421955, 31.276005, 29.132019>,  <33.346279, 30.645613, 28.648396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421955, 31.276005, 29.132019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.099483, 31.512665, 29.133841>,  <32.905998, 31.654661, 29.134933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.099483, 31.512665, 29.133841>,  <33.421955, 31.276005, 29.132019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099483, 31.512665, 29.133841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357809, -0.493651, 0.792643,
		0.471215, 0.637385, 0.609670,
		-0.806182, 0.591650, 0.004554,
		32.857628, 31.690159, 29.135206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188831, 31.520123, 29.856796>,  <33.421955, 31.276005, 29.132019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188831, 31.520123, 29.856796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.843430, 31.571539, 29.661720>,  <32.636189, 31.602388, 29.544676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.843430, 31.571539, 29.661720>,  <33.188831, 31.520123, 29.856796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843430, 31.571539, 29.661720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494107, -0.409458, 0.766943,
		-0.101103, 0.903228, 0.417082,
		-0.863502, 0.128543, -0.487689,
		32.584377, 31.610102, 29.515413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817902, 32.033375, 30.373323>,  <33.188831, 31.520123, 29.856796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817902, 32.033375, 30.373323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.584583, 31.845539, 30.108219>,  <32.444592, 31.732838, 29.949158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.584583, 31.845539, 30.108219>,  <32.817902, 32.033375, 30.373323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584583, 31.845539, 30.108219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612957, -0.280904, 0.738496,
		-0.532962, 0.837006, -0.123988,
		-0.583297, -0.469589, -0.662760,
		32.409595, 31.704662, 29.909391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259701, 32.360683, 30.473482>,  <32.817902, 32.033375, 30.373323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259701, 32.360683, 30.473482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.176701, 32.005459, 30.309393>,  <32.126900, 31.792324, 30.210939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.176701, 32.005459, 30.309393>,  <32.259701, 32.360683, 30.473482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176701, 32.005459, 30.309393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658299, -0.183423, 0.730068,
		-0.723592, 0.421541, -0.546551,
		-0.207504, -0.888065, -0.410224,
		32.114449, 31.739040, 30.186325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526859, 32.369396, 30.503714>,  <32.259701, 32.360683, 30.473482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526859, 32.369396, 30.503714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.597118, 31.980690, 30.440691>,  <31.639275, 31.747467, 30.402878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.597118, 31.980690, 30.440691>,  <31.526859, 32.369396, 30.503714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597118, 31.980690, 30.440691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657767, -0.234926, 0.715648,
		-0.732455, -0.022066, -0.680458,
		0.175648, -0.971763, -0.157559,
		31.649813, 31.689161, 30.393423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879866, 32.067692, 30.637318>,  <31.526859, 32.369396, 30.503714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879866, 32.067692, 30.637318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.156389, 31.781256, 30.675896>,  <31.322304, 31.609394, 30.699043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.156389, 31.781256, 30.675896>,  <30.879866, 32.067692, 30.637318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156389, 31.781256, 30.675896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482314, -0.357938, 0.799533,
		-0.538017, -0.599244, -0.592827,
		0.691311, -0.716092, 0.096447,
		31.363783, 31.566429, 30.704830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491354, 31.489656, 30.829906>,  <30.879866, 32.067692, 30.637318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491354, 31.489656, 30.829906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.863493, 31.443747, 30.969210>,  <31.086777, 31.416201, 31.052792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.863493, 31.443747, 30.969210>,  <30.491354, 31.489656, 30.829906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863493, 31.443747, 30.969210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361673, -0.130745, 0.923092,
		-0.060413, -0.984750, -0.163148,
		0.930346, -0.114773, 0.348259,
		31.142597, 31.409313, 31.073687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520697, 30.907068, 31.256237>,  <30.491354, 31.489656, 30.829906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520697, 30.907068, 31.256237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.832861, 31.131937, 31.365725>,  <31.020161, 31.266857, 31.431417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.832861, 31.131937, 31.365725>,  <30.520697, 30.907068, 31.256237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832861, 31.131937, 31.365725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292217, -0.059093, 0.954525,
		0.552781, -0.824907, 0.118160,
		0.780412, 0.562171, 0.273718,
		31.066984, 31.300589, 31.447840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563515, 30.706234, 31.935560>,  <30.520697, 30.907068, 31.256237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563515, 30.706234, 31.935560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.809132, 31.020966, 31.910721>,  <30.956501, 31.209805, 31.895817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.809132, 31.020966, 31.910721>,  <30.563515, 30.706234, 31.935560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809132, 31.020966, 31.910721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172622, 0.210653, 0.962199,
		0.770165, -0.580111, 0.265173,
		0.614042, 0.786827, -0.062098,
		30.993343, 31.257013, 31.892092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970507, 30.712793, 32.559753>,  <30.563515, 30.706234, 31.935560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970507, 30.712793, 32.559753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.053471, 31.088030, 32.448784>,  <31.103249, 31.313171, 32.382202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.053471, 31.088030, 32.448784>,  <30.970507, 30.712793, 32.559753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053471, 31.088030, 32.448784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015317, 0.286672, 0.957906,
		0.978134, -0.194428, 0.073827,
		0.207408, 0.938092, -0.277426,
		31.115694, 31.369457, 32.365555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275639, 30.996014, 33.206097>,  <30.970507, 30.712793, 32.559753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275639, 30.996014, 33.206097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.176600, 31.314636, 32.985481>,  <31.117176, 31.505810, 32.853111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.176600, 31.314636, 32.985481>,  <31.275639, 30.996014, 33.206097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176600, 31.314636, 32.985481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039059, 0.560595, 0.827169,
		0.968075, 0.226347, -0.107689,
		-0.247597, 0.796555, -0.551539,
		31.102320, 31.553602, 32.820019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749872, 31.633627, 33.395634>,  <31.275639, 30.996014, 33.206097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749872, 31.633627, 33.395634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.385532, 31.749390, 33.277924>,  <31.166929, 31.818848, 33.207298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.385532, 31.749390, 33.277924>,  <31.749872, 31.633627, 33.395634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.385532, 31.749390, 33.277924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130388, 0.474695, 0.870439,
		0.391602, 0.831208, -0.394640,
		-0.910850, 0.289409, -0.294271,
		31.112278, 31.836212, 33.189644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707058, 32.448025, 33.566628>,  <31.749872, 31.633627, 33.395634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707058, 32.448025, 33.566628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.323256, 32.357182, 33.499966>,  <31.092974, 32.302677, 33.459969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.323256, 32.357182, 33.499966>,  <31.707058, 32.448025, 33.566628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323256, 32.357182, 33.499966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273270, 0.606892, 0.746328,
		-0.068355, 0.761647, -0.644377,
		-0.959506, -0.227104, -0.166651,
		31.035404, 32.289051, 33.449970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247875, 33.045139, 33.765358>,  <31.707058, 32.448025, 33.566628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247875, 33.045139, 33.765358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.010298, 32.724060, 33.786934>,  <30.867750, 32.531414, 33.799881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.010298, 32.724060, 33.786934>,  <31.247875, 33.045139, 33.765358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010298, 32.724060, 33.786934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482400, 0.409001, 0.774602,
		-0.643832, 0.434049, -0.630145,
		-0.593945, -0.802695, 0.053943,
		30.832113, 32.483253, 33.803116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750071, 33.530540, 34.022991>,  <31.247875, 33.045139, 33.765358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750071, 33.530540, 34.022991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.089745, 33.652386, 33.850433>,  <31.293549, 33.725494, 33.746899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.089745, 33.652386, 33.850433>,  <30.750071, 33.530540, 34.022991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089745, 33.652386, 33.850433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468613, 0.811289, -0.349589,
		0.243493, 0.499020, 0.831679,
		0.849183, 0.304613, -0.431391,
		31.344500, 33.743771, 33.721016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608963, 34.200985, 33.660580>,  <30.750071, 33.530540, 34.022991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608963, 34.200985, 33.660580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.990564, 34.149555, 33.552246>,  <31.219524, 34.118698, 33.487247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.990564, 34.149555, 33.552246>,  <30.608963, 34.200985, 33.660580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990564, 34.149555, 33.552246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040922, 0.839061, -0.542495,
		0.296997, 0.528624, 0.795204,
		0.954001, -0.128578, -0.270831,
		31.276764, 34.110981, 33.470997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.000933, 34.795654, 33.686626>,  <30.608963, 34.200985, 33.660580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.000933, 34.795654, 33.686626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.203465, 34.573589, 33.422680>,  <31.324984, 34.440350, 33.264313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.203465, 34.573589, 33.422680>,  <31.000933, 34.795654, 33.686626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203465, 34.573589, 33.422680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337935, 0.831741, -0.440463,
		0.793365, 0.000030, 0.608746,
		0.506332, -0.555165, -0.659864,
		31.355364, 34.407040, 33.224720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594576, 35.353546, 33.433376>,  <31.000933, 34.795654, 33.686626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594576, 35.353546, 33.433376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.569685, 35.036716, 33.190479>,  <31.554750, 34.846619, 33.044743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.569685, 35.036716, 33.190479>,  <31.594576, 35.353546, 33.433376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569685, 35.036716, 33.190479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339023, 0.555469, -0.759288,
		0.938718, -0.253119, 0.233966,
		-0.062229, -0.792077, -0.607242,
		31.551016, 34.799095, 33.008308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296394, 35.276718, 33.163097>,  <31.594576, 35.353546, 33.433376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296394, 35.276718, 33.163097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.035839, 35.102051, 32.914898>,  <31.879507, 34.997250, 32.765980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.035839, 35.102051, 32.914898>,  <32.296394, 35.276718, 33.163097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035839, 35.102051, 32.914898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395923, 0.502012, -0.768914,
		0.647256, -0.746530, -0.154117,
		-0.651386, -0.436666, -0.620499,
		31.840424, 34.971050, 32.728748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.733685, 34.920151, 32.796909>,  <32.296394, 35.276718, 33.163097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.733685, 34.920151, 32.796909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.386021, 34.986935, 32.610710>,  <32.177422, 35.027004, 32.498989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.386021, 34.986935, 32.610710>,  <32.733685, 34.920151, 32.796909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386021, 34.986935, 32.610710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468863, 0.577547, -0.668287,
		0.157273, -0.799102, -0.580259,
		-0.869156, 0.166959, -0.465502,
		32.125275, 35.037022, 32.471058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896366, 34.980309, 32.139969>,  <32.733685, 34.920151, 32.796909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896366, 34.980309, 32.139969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.537758, 35.157478, 32.136562>,  <32.322594, 35.263779, 32.134518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.537758, 35.157478, 32.136562>,  <32.896366, 34.980309, 32.139969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537758, 35.157478, 32.136562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316771, 0.627505, -0.711262,
		-0.309692, -0.640357, -0.702876,
		-0.896519, 0.442922, -0.008514,
		32.268803, 35.290356, 32.134007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764011, 35.074963, 31.402290>,  <32.896366, 34.980309, 32.139969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764011, 35.074963, 31.402290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.517376, 35.329369, 31.587893>,  <32.369396, 35.482014, 31.699253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.517376, 35.329369, 31.587893>,  <32.764011, 35.074963, 31.402290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517376, 35.329369, 31.587893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241457, 0.713739, -0.657476,
		-0.749344, -0.293356, -0.593655,
		-0.616589, 0.636018, 0.464003,
		32.332397, 35.520172, 31.727093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525227, 35.457035, 30.908218>,  <32.764011, 35.074963, 31.402290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525227, 35.457035, 30.908218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.374142, 35.672428, 31.209513>,  <32.283489, 35.801666, 31.390289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.374142, 35.672428, 31.209513>,  <32.525227, 35.457035, 30.908218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374142, 35.672428, 31.209513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113205, 0.834253, -0.539636,
		-0.918975, -0.118559, -0.376070,
		-0.377716, 0.538485, 0.753236,
		32.260826, 35.833973, 31.435484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995007, 35.911221, 30.626554>,  <32.525227, 35.457035, 30.908218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995007, 35.911221, 30.626554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.160431, 36.073612, 30.952536>,  <32.259686, 36.171047, 31.148125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.160431, 36.073612, 30.952536>,  <31.995007, 35.911221, 30.626554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.160431, 36.073612, 30.952536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234367, 0.817455, -0.526155,
		-0.879795, 0.408595, 0.242920,
		0.413561, 0.405976, 0.814955,
		32.284500, 36.195404, 31.197021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897902, 36.580051, 30.556414>,  <31.995007, 35.911221, 30.626554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897902, 36.580051, 30.556414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.187119, 36.548153, 30.830889>,  <32.360649, 36.529015, 30.995573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.187119, 36.548153, 30.830889>,  <31.897902, 36.580051, 30.556414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187119, 36.548153, 30.830889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432172, 0.827140, -0.359258,
		-0.538924, 0.556309, 0.632520,
		0.723041, -0.079745, 0.686187,
		32.404030, 36.524231, 31.036745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958538, 37.252007, 30.670895>,  <31.897902, 36.580051, 30.556414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958538, 37.252007, 30.670895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.279278, 37.074490, 30.830938>,  <32.471722, 36.967979, 30.926964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.279278, 37.074490, 30.830938>,  <31.958538, 37.252007, 30.670895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279278, 37.074490, 30.830938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569798, 0.769519, -0.288394,
		-0.179905, 0.459230, 0.869909,
		0.801851, -0.443789, 0.400108,
		32.519833, 36.941353, 30.950972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236740, 37.742294, 31.180975>,  <31.958538, 37.252007, 30.670895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236740, 37.742294, 31.180975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.534103, 37.488613, 31.096008>,  <32.712521, 37.336403, 31.045029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.534103, 37.488613, 31.096008>,  <32.236740, 37.742294, 31.180975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534103, 37.488613, 31.096008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501357, 0.738621, -0.450643,
		0.442697, 0.228517, 0.867064,
		0.743412, -0.634207, -0.212417,
		32.757126, 37.298351, 31.032284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909245, 38.082272, 31.257021>,  <32.236740, 37.742294, 31.180975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909245, 38.082272, 31.257021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.016335, 37.805016, 30.989325>,  <33.080589, 37.638664, 30.828707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.016335, 37.805016, 30.989325>,  <32.909245, 38.082272, 31.257021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016335, 37.805016, 30.989325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490460, 0.695911, -0.524554,
		0.829320, -0.187796, 0.526272,
		0.267729, -0.693138, -0.669239,
		33.096653, 37.597073, 30.788553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537510, 38.281498, 31.078386>,  <32.909245, 38.082272, 31.257021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537510, 38.281498, 31.078386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.396126, 38.054672, 30.780796>,  <33.311295, 37.918575, 30.602242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.396126, 38.054672, 30.780796>,  <33.537510, 38.281498, 31.078386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.396126, 38.054672, 30.780796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497804, 0.559325, -0.662832,
		0.791995, -0.604639, 0.084590,
		-0.353460, -0.567069, -0.743975,
		33.290089, 37.884552, 30.557604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056583, 38.279865, 30.553772>,  <33.537510, 38.281498, 31.078386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056583, 38.279865, 30.553772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745770, 38.147671, 30.339485>,  <33.559280, 38.068356, 30.210913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745770, 38.147671, 30.339485>,  <34.056583, 38.279865, 30.553772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745770, 38.147671, 30.339485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370569, 0.447783, -0.813737,
		0.508809, -0.830826, -0.225479,
		-0.777040, -0.330481, -0.535715,
		33.512657, 38.048527, 30.178770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340374, 37.909275, 30.003149>,  <34.056583, 38.279865, 30.553772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340374, 37.909275, 30.003149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.977303, 38.006561, 29.866350>,  <33.759460, 38.064934, 29.784271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.977303, 38.006561, 29.866350>,  <34.340374, 37.909275, 30.003149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977303, 38.006561, 29.866350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419142, 0.484900, -0.767588,
		-0.020852, -0.840071, -0.542076,
		-0.907681, 0.243213, -0.341998,
		33.704998, 38.079525, 29.763750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457340, 37.805496, 29.207455>,  <34.340374, 37.909275, 30.003149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457340, 37.805496, 29.207455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.134480, 38.038280, 29.247112>,  <33.940762, 38.177952, 29.270906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.134480, 38.038280, 29.247112>,  <34.457340, 37.805496, 29.207455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134480, 38.038280, 29.247112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372229, 0.632058, -0.679668,
		-0.458204, -0.511691, -0.726788,
		-0.807152, 0.581958, 0.099145,
		33.892334, 38.212868, 29.276855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206055, 37.849380, 28.539925>,  <34.457340, 37.805496, 29.207455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206055, 37.849380, 28.539925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.108738, 38.177418, 28.747099>,  <34.050346, 38.374241, 28.871403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.108738, 38.177418, 28.747099>,  <34.206055, 37.849380, 28.539925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108738, 38.177418, 28.747099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289901, 0.571053, -0.768020,
		-0.925616, -0.036705, -0.376679,
		-0.243294, 0.820092, 0.517936,
		34.035751, 38.423447, 28.902479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862545, 38.296551, 28.043001>,  <34.206055, 37.849380, 28.539925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862545, 38.296551, 28.043001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.972820, 38.549904, 28.332228>,  <34.038986, 38.701916, 28.505764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.972820, 38.549904, 28.332228>,  <33.862545, 38.296551, 28.043001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972820, 38.549904, 28.332228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319956, 0.648858, -0.690371,
		-0.906434, 0.421679, -0.023768,
		0.275693, 0.633380, 0.723065,
		34.055527, 38.739918, 28.549147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738640, 39.031143, 27.770535>,  <33.862545, 38.296551, 28.043001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738640, 39.031143, 27.770535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.979649, 39.124306, 28.075878>,  <34.124256, 39.180202, 28.259085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.979649, 39.124306, 28.075878>,  <33.738640, 39.031143, 27.770535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.979649, 39.124306, 28.075878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430613, 0.710437, -0.556644,
		-0.671963, 0.664105, 0.327765,
		0.602526, 0.232904, 0.763359,
		34.160408, 39.194176, 28.304886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644264, 39.762428, 27.830872>,  <33.738640, 39.031143, 27.770535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644264, 39.762428, 27.830872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986095, 39.695194, 28.027418>,  <34.191196, 39.654854, 28.145346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986095, 39.695194, 28.027418>,  <33.644264, 39.762428, 27.830872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986095, 39.695194, 28.027418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469832, 0.653330, -0.593648,
		-0.221243, 0.738179, 0.637293,
		0.854581, -0.168081, 0.491365,
		34.242470, 39.644772, 28.174828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979111, 40.369453, 27.728357>,  <33.644264, 39.762428, 27.830872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979111, 40.369453, 27.728357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.241718, 40.083778, 27.825453>,  <34.399284, 39.912373, 27.883711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.241718, 40.083778, 27.825453>,  <33.979111, 40.369453, 27.728357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241718, 40.083778, 27.825453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653172, 0.377292, -0.656518,
		0.377292, 0.589566, 0.714186,
		0.656518, -0.714186, 0.242739,
		34.438675, 39.869522, 27.898275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599422, 40.733868, 27.747698>,  <33.979111, 40.369453, 27.728357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599422, 40.733868, 27.747698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.710777, 40.353367, 27.694611>,  <34.777592, 40.125065, 27.662758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.710777, 40.353367, 27.694611>,  <34.599422, 40.733868, 27.747698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710777, 40.353367, 27.694611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554872, 0.272075, -0.786188,
		0.783974, 0.145227, 0.603568,
		0.278392, -0.951254, -0.132718,
		34.794296, 40.067989, 27.654795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278996, 40.728233, 27.521397>,  <34.599422, 40.733868, 27.747698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278996, 40.728233, 27.521397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.172581, 40.362961, 27.397903>,  <35.108730, 40.143795, 27.323807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.172581, 40.362961, 27.397903>,  <35.278996, 40.728233, 27.521397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172581, 40.362961, 27.397903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604488, 0.091439, -0.791349,
		0.750879, -0.397154, 0.527684,
		-0.266037, -0.913185, -0.308735,
		35.092770, 40.089005, 27.305283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893181, 40.363731, 27.397577>,  <35.278996, 40.728233, 27.521397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893181, 40.363731, 27.397577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.615337, 40.174107, 27.181139>,  <35.448631, 40.060333, 27.051275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.615337, 40.174107, 27.181139>,  <35.893181, 40.363731, 27.397577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615337, 40.174107, 27.181139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539488, 0.154306, -0.827733,
		0.475891, -0.866865, 0.148568,
		-0.694608, -0.474062, -0.541096,
		35.406956, 40.031887, 27.018810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239460, 39.883175, 26.967407>,  <35.893181, 40.363731, 27.397577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239460, 39.883175, 26.967407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.888790, 39.930347, 26.780846>,  <35.678387, 39.958652, 26.668909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.888790, 39.930347, 26.780846>,  <36.239460, 39.883175, 26.967407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888790, 39.930347, 26.780846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454487, -0.114846, -0.883319,
		-0.157739, -0.986358, 0.047083,
		-0.876675, 0.117936, -0.466402,
		35.625786, 39.965725, 26.640924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245045, 39.338985, 26.506559>,  <36.239460, 39.883175, 26.967407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245045, 39.338985, 26.506559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.981937, 39.608952, 26.372797>,  <35.824074, 39.770931, 26.292540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.981937, 39.608952, 26.372797>,  <36.245045, 39.338985, 26.506559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981937, 39.608952, 26.372797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401798, -0.061124, -0.913686,
		-0.637102, -0.735358, -0.230975,
		-0.657768, 0.674917, -0.334407,
		35.784607, 39.811428, 26.272474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701679, 38.664948, 26.183897>,  <36.245045, 39.338985, 26.506559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701679, 38.664948, 26.183897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.081997, 38.660744, 26.307751>,  <37.310188, 38.658222, 26.382063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.081997, 38.660744, 26.307751>,  <36.701679, 38.664948, 26.183897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081997, 38.660744, 26.307751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289186, -0.388656, 0.874825,
		0.111150, -0.921323, -0.372571,
		0.950798, -0.010505, 0.309633,
		37.367237, 38.657593, 26.400640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922550, 37.943424, 26.433872>,  <36.701679, 38.664948, 26.183897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922550, 37.943424, 26.433872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.165611, 38.212116, 26.603354>,  <37.311447, 38.373333, 26.705042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.165611, 38.212116, 26.603354>,  <36.922550, 37.943424, 26.433872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165611, 38.212116, 26.603354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080138, -0.478917, 0.874195,
		0.790147, -0.565165, -0.237185,
		0.607656, 0.671735, 0.423705,
		37.347908, 38.413635, 26.730465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415638, 37.609322, 26.811871>,  <36.922550, 37.943424, 26.433872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415638, 37.609322, 26.811871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.389542, 37.970715, 26.981319>,  <37.373882, 38.187550, 27.082989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.389542, 37.970715, 26.981319>,  <37.415638, 37.609322, 26.811871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389542, 37.970715, 26.981319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007662, -0.424966, 0.905177,
		0.997840, 0.055812, 0.034649,
		-0.065245, 0.903487, 0.423621,
		37.369968, 38.241760, 27.108406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845028, 37.438118, 27.271996>,  <37.415638, 37.609322, 26.811871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845028, 37.438118, 27.271996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.656860, 37.770042, 27.392073>,  <37.543961, 37.969196, 27.464119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.656860, 37.770042, 27.392073>,  <37.845028, 37.438118, 27.271996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656860, 37.770042, 27.392073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162047, -0.415636, 0.894979,
		0.867435, 0.372374, 0.329993,
		-0.470423, 0.829810, 0.300195,
		37.515732, 38.018986, 27.482132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082478, 37.582935, 27.926950>,  <37.845028, 37.438118, 27.271996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082478, 37.582935, 27.926950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.721432, 37.752342, 27.896198>,  <37.504803, 37.853989, 27.877747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.721432, 37.752342, 27.896198>,  <38.082478, 37.582935, 27.926950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721432, 37.752342, 27.896198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312791, -0.522658, 0.793089,
		0.295707, 0.739904, 0.604234,
		-0.902618, 0.423521, -0.076882,
		37.450645, 37.879398, 27.873133>
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
